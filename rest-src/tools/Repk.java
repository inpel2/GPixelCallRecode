import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Enumeration;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

public class Repk {
    public static void main(String[] a) throws Exception {
        try (ZipFile zin = new ZipFile(a[0]);
             ZipOutputStream zout = new ZipOutputStream(new FileOutputStream(a[1]))) {
            Enumeration<? extends ZipEntry> it = zin.entries();
            while (it.hasMoreElements()) {
                ZipEntry e = it.nextElement();
                ByteArrayOutputStream b = new ByteArrayOutputStream();
                try (InputStream in = zin.getInputStream(e)) {
                    byte[] buf = new byte[8192];
                    int n;
                    while ((n = in.read(buf)) > 0) b.write(buf, 0, n);
                }
                byte[] data = b.toByteArray();
                ZipEntry ne = new ZipEntry(e.getName());
                ne.setMethod(e.getMethod());
                if (e.getMethod() == ZipEntry.STORED) {
                    ne.setSize(data.length);
                    ne.setCompressedSize(data.length);
                    CRC32 c = new CRC32();
                    c.update(data);
                    ne.setCrc(c.getValue());
                }
                zout.putNextEntry(ne);
                zout.write(data);
                zout.closeEntry();
            }
            byte[] dex = Files.readAllBytes(Path.of(a[2]));
            ZipEntry ne = new ZipEntry("classes.dex");
            ne.setMethod(ZipEntry.DEFLATED);
            zout.putNextEntry(ne);
            zout.write(dex);
            zout.closeEntry();
        }
        System.out.println("ok " + a[1]);
    }
}
