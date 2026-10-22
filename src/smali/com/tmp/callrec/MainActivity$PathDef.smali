.class public final Lcom/tmp/callrec/MainActivity$PathDef;
.super Ljava/lang/Object;
.source "PathDef.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;

# instance fields
.field private final a:Lcom/tmp/callrec/MainActivity;

# direct methods
.method public constructor <init>(Lcom/tmp/callrec/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$PathDef;->a:Lcom/tmp/callrec/MainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$PathDef;->a:Lcom/tmp/callrec/MainActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tmp/callrec/MainActivity;->setPath(Ljava/lang/String;)V

    return-void
.end method
