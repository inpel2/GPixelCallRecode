.class Lcom/tmp/callrec/MainActivity$MenuPick;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/tmp/callrec/MainActivity;


# direct methods
.method constructor <init>(Lcom/tmp/callrec/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$MenuPick;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$MenuPick;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v2, :cond_item1

    # 개발자 정보 (전체 화면)
    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->aboutView()Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :cond_ret

    :cond_item1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_item2

    # 음원 다운로드
    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->recNames()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :has_dl

    const-string v3, "\ub179\uc74c \ud30c\uc77c\uc774 \uc5c6\uc2b5\ub2c8\ub2e4"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :cond_ret

    :has_dl
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\uc74c\uc6d0 \ub2e4\uc6b4\ub85c\ub4dc"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/tmp/callrec/MainActivity$RecDl;

    invoke-direct {v4, v0, v2}, Lcom/tmp/callrec/MainActivity$RecDl;-><init>(Lcom/tmp/callrec/MainActivity;[Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :cond_ret

    :cond_item2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_item3

    # 음원 공유
    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->recNames()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :has_sh

    const-string v3, "\ub179\uc74c \ud30c\uc77c\uc774 \uc5c6\uc2b5\ub2c8\ub2e4"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :cond_ret

    :has_sh
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\uc74c\uc6d0 \uacf5\uc720"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/tmp/callrec/MainActivity$RecShare;

    invoke-direct {v4, v0, v2}, Lcom/tmp/callrec/MainActivity$RecShare;-><init>(Lcom/tmp/callrec/MainActivity;[Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :cond_ret

    :cond_item3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_item4

    # 앱 재시작
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tmp/callrec/MainActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/tmp/callrec/MainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->finish()V

    :cond_item4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_ret

    # 경로 설정
    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->startPickPath()V

    :cond_ret
    const/4 v0, 0x1

    return v0
.end method
