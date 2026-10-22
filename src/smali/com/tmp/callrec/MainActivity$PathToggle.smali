.class public final Lcom/tmp/callrec/MainActivity$PathToggle;
.super Ljava/lang/Object;
.source "PathToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# instance fields
.field private final a:Lcom/tmp/callrec/MainActivity;

# direct methods
.method public constructor <init>(Lcom/tmp/callrec/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$PathToggle;->a:Lcom/tmp/callrec/MainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$PathToggle;->a:Lcom/tmp/callrec/MainActivity;

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->startPickPath()V

    return-void
.end method
