.class Lcom/tmp/callrec/MainActivity$InqClose;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tmp/callrec/MainActivity;


# direct methods
.method constructor <init>(Lcom/tmp/callrec/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$InqClose;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$InqClose;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v1, v0, Lcom/tmp/callrec/MainActivity;->inqBox:Landroid/widget/FrameLayout;

    if-eqz v1, :fin

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :fin
    return-void
.end method
