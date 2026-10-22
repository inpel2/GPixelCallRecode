.class Lcom/tmp/callrec/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 157
    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$1;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 159
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$1;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object p1, p1, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tmp/callrec/MainActivity$Row;

    .line 160
    iget p2, p1, Lcom/tmp/callrec/MainActivity$Row;->type:I

    if-nez p2, :cond_1

    .line 161
    iget-boolean p2, p1, Lcom/tmp/callrec/MainActivity$Row;->exp:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tmp/callrec/MainActivity$1;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object p2, p2, Lcom/tmp/callrec/MainActivity;->expanded:Ljava/util/Set;

    iget-object p1, p1, Lcom/tmp/callrec/MainActivity$Row;->key:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tmp/callrec/MainActivity$1;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object p2, p2, Lcom/tmp/callrec/MainActivity;->expanded:Ljava/util/Set;

    iget-object p1, p1, Lcom/tmp/callrec/MainActivity$Row;->key:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$1;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-virtual {p1}, Lcom/tmp/callrec/MainActivity;->rebuild()V

    goto :goto_1

    .line 163
    :cond_1
    iget-object p2, p0, Lcom/tmp/callrec/MainActivity$1;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object p1, p1, Lcom/tmp/callrec/MainActivity$Row;->file:Ljava/io/File;

    invoke-virtual {p2, p1}, Lcom/tmp/callrec/MainActivity;->play(Ljava/io/File;)V

    .line 164
    :goto_1
    return-void
.end method
