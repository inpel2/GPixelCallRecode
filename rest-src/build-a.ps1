$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression.FileSystem
$bt = "C:\Users\user\AppData\Local\Android\Sdk\build-tools\35.0.0"
$aj = "C:\Users\user\AppData\Local\Android\Sdk\platforms\android-36\android.jar"
$javac = "C:\Program Files\Android\Android Studio\jbr\bin\javac.exe"
$ks  = "$env:TEMP\opencode\callrec\debug.keystore"
$app = "$env:TEMP\opencode\autorec"
$adb = "$env:LOCALAPPDATA\Android\Sdk\platform-tools\adb.exe"

Set-Location $app
Remove-Item -Recurse -Force gen, classes, dexout, out -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force gen, classes, dexout, out | Out-Null

# 1) resources
& "$bt\aapt2.exe" compile --dir res -o res.zip
& "$bt\aapt2.exe" link -o out\base.apk -I $aj --min-sdk-version 24 --target-sdk-version 34 --java gen --manifest AndroidManifest.xml res.zip
if ($LASTEXITCODE -ne 0) { throw "aapt2 link failed" }

# 2) java sources
$sources = Get-ChildItem src -Recurse -Filter *.java | ForEach-Object { $_.FullName }
& $javac --release 11 -classpath $aj -d classes @sources
if ($LASTEXITCODE -ne 0) { throw "javac failed" }

# 3) dex
$classFiles = Get-ChildItem classes -Recurse -Filter *.class | ForEach-Object { $_.FullName }
& "C:\Program Files\Android\Android Studio\jbr\bin\java.exe" -Xmx1024M -cp "$bt\lib\d8.jar" com.android.tools.r8.D8 --release --min-api 24 --lib $aj --output dexout @classFiles
if ($LASTEXITCODE -ne 0) { throw "d8 failed" }

# 4) assemble apk (Java: preserve STORED for resources.arsc)
& "$javac" --release 11 -d tools tools\Repk.java
if ($LASTEXITCODE -ne 0) { throw "Repk compile failed" }
& "C:\Program Files\Android\Android Studio\jbr\bin\java.exe" -Xmx1024M -cp tools Repk "$app\out\base.apk" "$app\out\unsigned.apk" "$app\dexout\classes.dex"
if ($LASTEXITCODE -ne 0) { throw "apk assemble failed" }

# 5) align + sign + install + grant
& "$bt\zipalign.exe" -f 4 "$app\out\unsigned.apk" "$app\out\final.apk"
& "$bt\apksigner.bat" sign --ks $ks --ks-pass pass:android --key-pass pass:android "$app\out\final.apk"
if ($LASTEXITCODE -ne 0) { throw "sign failed" }
& $adb install -r "$app\out\final.apk"
& $adb shell pm grant com.inpel.gpixelautorec android.permission.WRITE_SECURE_SETTINGS
Get-Item "$app\out\final.apk" | Select-Object FullName, Length
