.class Lcom/tmp/callrec/MainActivity$GitOpen;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tmp/callrec/MainActivity;


# direct methods
.method constructor <init>(Lcom/tmp/callrec/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$GitOpen;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$GitOpen;->this$0:Lcom/tmp/callrec/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://github.com/inpel2/GPixelCallRecode"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/tmp/callrec/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
