.class public final Lcom/tmp/callrec/MainActivity$PathOk;
.super Ljava/lang/Object;
.source "PathOk.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;

# instance fields
.field private final a:Lcom/tmp/callrec/MainActivity;

# direct methods
.method public constructor <init>(Lcom/tmp/callrec/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$PathOk;->a:Lcom/tmp/callrec/MainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$PathOk;->a:Lcom/tmp/callrec/MainActivity;

    iget-object v1, v0, Lcom/tmp/callrec/MainActivity;->pathInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tmp/callrec/MainActivity;->setPath(Ljava/lang/String;)V

    return-void
.end method
