.class Lcom/tmp/callrec/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tmp/callrec/MainActivity;->startTick()V
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

    .line 488
    iput-object p1, p0, Lcom/tmp/callrec/MainActivity$4;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$4;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v0, v0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$4;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v0, v0, Lcom/tmp/callrec/MainActivity;->playingFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$4;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v0, v0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 493
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity$4;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v1, v1, Lcom/tmp/callrec/MainActivity;->sb:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 494
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity$4;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v1, v1, Lcom/tmp/callrec/MainActivity;->pTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tmp/callrec/MainActivity$4;->this$0:Lcom/tmp/callrec/MainActivity;

    invoke-virtual {v3, v0}, Lcom/tmp/callrec/MainActivity;->fmtMs(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tmp/callrec/MainActivity$4;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v3, p0, Lcom/tmp/callrec/MainActivity$4;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v3, v3, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tmp/callrec/MainActivity;->fmtMs(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 496
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity$4;->this$0:Lcom/tmp/callrec/MainActivity;

    iget-object v0, v0, Lcom/tmp/callrec/MainActivity;->ui:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 498
    :cond_0
    return-void
.end method
