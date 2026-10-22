.class Lcom/tmp/callrec/MainActivity$MenuBtn;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tmp/callrec/MainActivity;

.field final synthetic val$anchor:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tmp/callrec/MainActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p2, p0, Lcom/tmp/callrec/MainActivity$MenuBtn;->val$anchor:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$MenuBtn;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$MenuBtn;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v1, p0, Lcom/tmp/callrec/MainActivity$MenuBtn;->val$anchor:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, v0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v5

    const-string v7, "\uac1c\ubc1c\uc790 \uc815\ubcf4"

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v5, 0x1

    move v6, v5

    const-string v7, "\uc74c\uc6d0 \ub2e4\uc6b4\ub85c\ub4dc"

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v5, 0x2

    move v6, v5

    const-string v7, "\uc74c\uc6d0 \uacf5\uc720"

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v5, 0x3

    move v6, v5

    const-string v7, "\uc57d \uc7ac\uc2dc\uc791"

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance v4, Lcom/tmp/callrec/MainActivity$MenuPick;

    invoke-direct {v4, v0}, Lcom/tmp/callrec/MainActivity$MenuPick;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
