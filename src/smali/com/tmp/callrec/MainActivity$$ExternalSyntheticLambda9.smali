.class public final synthetic Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tmp/callrec/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tmp/callrec/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda9;->f$0:Lcom/tmp/callrec/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda9;->f$0:Lcom/tmp/callrec/MainActivity;

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->lambda$refresh$0$com-tmp-callrec-MainActivity()V

    return-void
.end method
