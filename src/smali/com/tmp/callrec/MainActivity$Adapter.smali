.class Lcom/tmp/callrec/MainActivity$Adapter;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmp/callrec/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tmp/callrec/MainActivity;


# direct methods
.method constructor <init>(Lcom/tmp/callrec/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 633
    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$Adapter;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$Adapter;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v0, v0, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$Adapter;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v0, v0, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 636
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$Adapter;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v0, v0, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tmp/callrec/MainActivity$Row;

    iget p1, p1, Lcom/tmp/callrec/MainActivity$Row;->type:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 641
    iget-object p2, p0, Lcom/tmp/callrec/MainActivity$Adapter;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object p2, p2, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tmp/callrec/MainActivity$Row;

    .line 642
    iget p2, p1, Lcom/tmp/callrec/MainActivity$Row;->type:I

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/tmp/callrec/MainActivity$Adapter;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-virtual {p2, p1}, Lcom/tmp/callrec/MainActivity;->groupView(Lcom/tmp/callrec/MainActivity$Row;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-eq p2, p3, :hdr

    .line 643
    iget-object p2, p0, Lcom/tmp/callrec/MainActivity$Adapter;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-virtual {p2, p1}, Lcom/tmp/callrec/MainActivity;->fileView(Lcom/tmp/callrec/MainActivity$Row;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :hdr
    iget-object p2, p0, Lcom/tmp/callrec/MainActivity$Adapter;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-virtual {p2, p1}, Lcom/tmp/callrec/MainActivity;->dayView(Lcom/tmp/callrec/MainActivity$Row;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 637
    const/4 v0, 0x3

    return v0
.end method
