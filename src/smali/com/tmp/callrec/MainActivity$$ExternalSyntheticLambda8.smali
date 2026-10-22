.class public final synthetic Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/tmp/callrec/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tmp/callrec/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda8;->f$0:Lcom/tmp/callrec/MainActivity;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda8;->f$0:Lcom/tmp/callrec/MainActivity;

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {v0, p1, p2}, Lcom/tmp/callrec/MainActivity;->lambda$rebuild$0$com-tmp-callrec-MainActivity(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
