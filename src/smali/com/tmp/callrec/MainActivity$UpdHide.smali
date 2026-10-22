.class Lcom/tmp/callrec/MainActivity$UpdHide;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tmp/callrec/MainActivity;


# direct methods
.method constructor <init>(Lcom/tmp/callrec/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$UpdHide;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$UpdHide;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v0, v0, Lcom/tmp/callrec/MainActivity;->updBox:Landroid/widget/FrameLayout;

    if-eqz v0, :ret

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/tmp/callrec/MainActivity$UpdGone;

    iget-object v2, p0, Lcom/tmp/callrec/MainActivity$UpdHide;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {v1, v2}, Lcom/tmp/callrec/MainActivity$UpdGone;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :ret
    return-void
.end method
