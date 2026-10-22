.class Lcom/tmp/callrec/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tmp/callrec/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tmp/callrec/MainActivity;

.field final synthetic val$doing:[Z

.field final synthetic val$list:Landroid/widget/ListView;

.field final synthetic val$py:[F


# direct methods
.method constructor <init>(Lcom/tmp/callrec/MainActivity;[F[ZLandroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/tmp/callrec/MainActivity;[F[ZLandroid/widget/ListView;)V"
        }
    .end annotation

    .line 169
    iput-object p2, p0, Lcom/tmp/callrec/MainActivity$2;->val$py:[F

    iput-object p3, p0, Lcom/tmp/callrec/MainActivity$2;->val$doing:[Z

    iput-object p4, p0, Lcom/tmp/callrec/MainActivity$2;->val$list:Landroid/widget/ListView;

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$2;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    # ---- ACTION_DOWN ----
    :pswitch_2
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$2;->val$py:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    aput p2, p1, v4

    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$2;->val$doing:[Z

    aput-boolean v4, p1, v4

    goto :goto_0

    # ---- ACTION_UP ----
    :pswitch_1
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$2;->val$doing:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$2;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-virtual {p1}, Lcom/tmp/callrec/MainActivity;->refresh()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$2;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object p2, p1, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$2;->val$doing:[Z

    aput-boolean v4, p1, v4

    goto :goto_0

    # ---- ACTION_MOVE ----
    :pswitch_0
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$2;->val$list:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    if-gtz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$2;->val$py:[F

    aget v0, v0, v4

    sub-float p1, p1, v0

    cmpg-float p2, p1, v4

    if-lez p2, :cond_up

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$2;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v1, v0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-virtual {v0, v2}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v2

    cmpg-float v3, p1, v2

    if-lez v3, :cond_set

    iget-object v3, p0, Lcom/tmp/callrec/MainActivity$2;->val$doing:[Z

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    :cond_set
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    div-float v3, p1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v5, 0x44340000    # 720.0f

    mul-float v3, v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setRotation(F)V

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v3, v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    :cond_up
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$2;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v1, v0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRotation(F)V

    :cond_3
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
