.class Lcom/tmp/callrec/MainActivity$RecDl;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tmp/callrec/MainActivity;

.field final synthetic val$names:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tmp/callrec/MainActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/tmp/callrec/MainActivity$RecDl;->val$names:[Ljava/lang/String;

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$RecDl;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$RecDl;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v1, p0, Lcom/tmp/callrec/MainActivity$RecDl;->val$names:[Ljava/lang/String;

    aget-object v2, v1, p2

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->curDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_display_name"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mime_type"

    const-string v6, "audio/wav"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "relative_path"

    const-string v6, "Download"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :fail

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    if-eqz v7, :fail

    const/16 v4, 0x2000

    new-array v4, v4, [B

    :loop
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :done

    const/4 p2, 0x0

    invoke-virtual {v7, v4, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :loop

    :done
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_0

    const-string v3, "\ub2e4\uc6b4\ub85c\ub4dc \uc644\ub8cc"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :endall

    :fail
    const-string v3, "\ub2e4\uc6b4\ub85c\ub4dc \uc2e4\ud328"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :endall

    :catchd
    move-exception v3

    const-string v3, "\ub2e4\uc6b4\ub85c\ub4dc \uc2e4\ud328"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :endall
    return-void

    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catchd
.end method
