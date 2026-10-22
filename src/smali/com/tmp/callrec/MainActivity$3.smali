.class Lcom/tmp/callrec/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 234
    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$3;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 236
    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$3;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object p1, p1, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 237
    :try_start_0
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity$3;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object p1, p1, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    int-to-long p2, p2

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$3;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v0, v0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr p2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 240
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 241
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 242
    return-void
.end method
