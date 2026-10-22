.class public Lcom/tmp/callrec/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmp/callrec/MainActivity$Adapter;,
        Lcom/tmp/callrec/MainActivity$Row;
    }
.end annotation


# static fields
.field static final ACCENT:I = -0x7e366b

.field static final AV_COLORS:[I

.field static final BG:I = -0xefefec

.field static final CARD:I = -0xe5e5e0

.field static final HEAD:I = -0xe8c4da

.field static final NUMPAT:Ljava/util/regex/Pattern;

.field static final SPEEDS:[F

.field static final SUB:I = -0x655f5a

.field static final TMPAT:Ljava/util/regex/Pattern;

.field static final TXT:I = -0x131211

.field static final WARN:I = -0xc4ca4


# instance fields
.field ad:Lcom/tmp/callrec/MainActivity$Adapter;

.field btnB10:Landroid/widget/TextView;

.field btnF10:Landroid/widget/TextView;

.field btnNext:Landroid/widget/TextView;

.field btnPlay:Landroid/widget/TextView;

.field btnPrev:Landroid/widget/TextView;

.field btnSpeed:Landroid/widget/TextView;

.field dens:F

.field dir:Ljava/io/File;

.field expanded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field flatFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field lastAvatarColor:I

.field lv:Landroid/widget/ListView;

.field mp:Landroid/media/MediaPlayer;

.field pTime:Landroid/widget/TextView;

.field pTitle:Landroid/widget/TextView;

.field playerBox:Landroid/widget/LinearLayout;

.field playingFile:Ljava/io/File;

.field rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tmp/callrec/MainActivity$Row;",
            ">;"
        }
    .end annotation
.end field

.field sb:Landroid/widget/SeekBar;

.field speedIdx:I

.field spin:Landroid/widget/TextView;

.field tick:Ljava/lang/Runnable;

.field ui:Landroid/os/Handler;

.field pathBtn:Landroid/widget/TextView;

.field pathInput:Landroid/widget/EditText;

.field updBox:Landroid/widget/FrameLayout;

.field devBox:Landroid/widget/FrameLayout;

.field lockBox:Landroid/widget/FrameLayout;

.field passInput:Landroid/widget/EditText;

.field subjInput:Landroid/widget/EditText;

.field bodyInput:Landroid/widget/EditText;

.field inqBox:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "^call_(\\d{7,15})_"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tmp/callrec/MainActivity;->NUMPAT:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "(20\\d{6})_(\\d{6})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tmp/callrec/MainActivity;->TMPAT:Ljava/util/regex/Pattern;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tmp/callrec/MainActivity;->SPEEDS:[F

    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tmp/callrec/MainActivity;->AV_COLORS:[I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        -0xe1934b
        -0x4ac4c5
        -0xe16364
        -0x85b241
        -0x3d95e4
        -0x4ac47c
        -0xb4a43c
        -0xd174c3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/tmp/callrec/MainActivity;->lastAvatarColor:I

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Recordings"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->dir:Ljava/io/File;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->flatFiles:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->expanded:Ljava/util/Set;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/tmp/callrec/MainActivity;->speedIdx:I

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->ui:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method addGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 397
    move-object/from16 v0, p0

    new-instance v1, Lcom/tmp/callrec/MainActivity$Row;

    invoke-direct {v1}, Lcom/tmp/callrec/MainActivity$Row;-><init>()V

    .line 398
    const/4 v2, 0x0

    iput v2, v1, Lcom/tmp/callrec/MainActivity$Row;->type:I

    .line 399
    const-string v3, "~etc"

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 400
    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 401
    :goto_0
    iput-object v3, v1, Lcom/tmp/callrec/MainActivity$Row;->key:Ljava/lang/String;

    .line 402
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v1, Lcom/tmp/callrec/MainActivity$Row;->count:I

    .line 403
    iget-object v6, v0, Lcom/tmp/callrec/MainActivity;->expanded:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/tmp/callrec/MainActivity$Row;->exp:Z

    .line 404
    const-string v6, ""

    if-eqz v5, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/tmp/callrec/MainActivity;->contactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 405
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v5, :cond_2

    const-string v5, "\uae30\ud0c0 \ub179\uc74c"

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/tmp/callrec/MainActivity;->fmtNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v7

    :goto_2
    iput-object v5, v1, Lcom/tmp/callrec/MainActivity$Row;->name:Ljava/lang/String;

    .line 406
    move-object/from16 v5, p2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 407
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/tmp/callrec/MainActivity;->fmtDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 408
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x2c

    sub-long/2addr v10, v12

    const-wide/32 v14, 0x17700

    div-long/2addr v10, v14

    move-wide/from16 v16, v12

    const-wide/16 v12, 0x1

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 409
    iget-boolean v8, v1, Lcom/tmp/callrec/MainActivity$Row;->exp:Z

    move-wide/from16 v18, v14

    const-string v14, " \u00b7 "

    if-eqz v8, :cond_5

    .line 410
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lcom/tmp/callrec/MainActivity;->fmtNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\uac1c \ub179\uc74c  \u00b7  \ud0ed\ud558\uc5ec \uc811\uae30"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tmp/callrec/MainActivity$Row;->sub:Ljava/lang/String;

    goto :goto_6

    .line 413
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ucd5c\uadfc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 414
    const-wide/16 v6, 0x3c

    cmp-long v8, v10, v6

    const-string v9, "\ucd08"

    if-ltz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    div-long v14, v10, v6

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "\ubd84 "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    rem-long/2addr v10, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_5

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    :goto_5
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  \u00b7  \ud0ed\ud558\uc5ec \uc5f4\uae30"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tmp/callrec/MainActivity$Row;->sub:Ljava/lang/String;

    .line 417
    :goto_6
    iget-object v4, v1, Lcom/tmp/callrec/MainActivity$Row;->name:Ljava/lang/String;

    .line 418
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_9

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "\uae30"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_7

    .line 419
    :cond_8
    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_9
    :goto_7
    const-string v2, "#"

    :goto_8
    iput-object v2, v1, Lcom/tmp/callrec/MainActivity$Row;->letter:Ljava/lang/String;

    .line 420
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Lcom/tmp/callrec/MainActivity;->AV_COLORS:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 421
    sget-object v3, Lcom/tmp/callrec/MainActivity;->AV_COLORS:[I

    aget v3, v3, v2

    iget v4, v0, Lcom/tmp/callrec/MainActivity;->lastAvatarColor:I

    if-ne v3, v4, :cond_a

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/tmp/callrec/MainActivity;->AV_COLORS:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 422
    :cond_a
    sget-object v3, Lcom/tmp/callrec/MainActivity;->AV_COLORS:[I

    aget v2, v3, v2

    iput v2, v1, Lcom/tmp/callrec/MainActivity$Row;->color:I

    .line 423
    iget v2, v1, Lcom/tmp/callrec/MainActivity$Row;->color:I

    iput v2, v0, Lcom/tmp/callrec/MainActivity;->lastAvatarColor:I

    .line 424
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->flatFiles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 426
    :cond_b
    iget-boolean v1, v1, Lcom/tmp/callrec/MainActivity$Row;->exp:Z

    if-nez v1, :cond_c

    return-void

    .line 427
    :cond_c
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 428
    new-instance v3, Lcom/tmp/callrec/MainActivity$Row;

    invoke-direct {v3}, Lcom/tmp/callrec/MainActivity$Row;-><init>()V

    .line 429
    iput v7, v3, Lcom/tmp/callrec/MainActivity$Row;->type:I

    .line 430
    iput-object v2, v3, Lcom/tmp/callrec/MainActivity$Row;->file:Ljava/io/File;

    .line 431
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long v4, v4, v16

    div-long v4, v4, v18

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tmp/callrec/MainActivity$Row;->dur:J

    .line 432
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tmp/callrec/MainActivity;->fmtDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tmp/callrec/MainActivity$Row;->ts:Ljava/lang/String;

    .line 433
    invoke-virtual {v0, v2}, Lcom/tmp/callrec/MainActivity;->isSilent(Ljava/io/File;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/tmp/callrec/MainActivity$Row;->silent:Z

    .line 434
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    goto :goto_a

    .line 436
    :cond_d
    return-void
.end method

.method applySpeed()V
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    sget-object v2, Lcom/tmp/callrec/MainActivity;->SPEEDS:[F

    iget v3, p0, Lcom/tmp/callrec/MainActivity;->speedIdx:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 551
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->btnSpeed:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->btnSpeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ubc30\uc18d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tmp/callrec/MainActivity;->SPEEDS:[F

    iget v3, p0, Lcom/tmp/callrec/MainActivity;->speedIdx:I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/tmp/callrec/MainActivity;->trimSpeed(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :cond_1
    return-void
.end method

.method contactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 303
    const-string v0, "data1"

    const-string v1, "display_name"

    const-string v2, ""

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 309
    if-eqz v3, :cond_4

    .line 310
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 311
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 312
    move-object v4, v2

    .line 313
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 315
    if-nez v5, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    const-string v6, "[^0-9]"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 318
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 319
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_2

    move-object v4, v5

    .line 321
    :cond_2
    goto :goto_0

    .line 322
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    return-object v4

    .line 325
    :catchall_0
    move-exception v0

    :cond_4
    nop

    .line 326
    return-object v2
.end method

.method contactOf(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 479
    sget-object v0, Lcom/tmp/callrec/MainActivity;->NUMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 480
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\uae30\ud0c0"

    return-object p1

    .line 481
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->contactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->fmtNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method cycleSpeed()V
    .locals 4

    .line 537
    iget v0, p0, Lcom/tmp/callrec/MainActivity;->speedIdx:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/tmp/callrec/MainActivity;->SPEEDS:[F

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/tmp/callrec/MainActivity;->speedIdx:I

    .line 538
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->applySpeed()V

    .line 539
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->btnSpeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ubc30\uc18d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tmp/callrec/MainActivity;->SPEEDS:[F

    iget v3, p0, Lcom/tmp/callrec/MainActivity;->speedIdx:I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/tmp/callrec/MainActivity;->trimSpeed(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    return-void
.end method

.method dp(F)F
    .locals 1

    .line 100
    iget v0, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    mul-float/2addr p1, v0

    return p1
.end method

.method fileView(Lcom/tmp/callrec/MainActivity$Row;)Landroid/view/View;
    .locals 11

    .line 599
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 600
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 601
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 602
    const v2, -0xe5e5e0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 603
    const/high16 v2, 0x41e00000    # 28.0f

    invoke-virtual {p0, v2}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {p0, v3}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {p0, v5}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v3}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 605
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 606
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 607
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 608
    iget-object v5, p1, Lcom/tmp/callrec/MainActivity$Row;->ts:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "\ub179\uc74c"

    goto :goto_0

    :cond_0
    iget-object v5, p1, Lcom/tmp/callrec/MainActivity$Row;->ts:Ljava/lang/String;

    .line 609
    :goto_0
    iget-boolean v6, p1, Lcom/tmp/callrec/MainActivity$Row;->silent:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   \u00b7 \ubb34\uc74c\ub179\uc74c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 610
    :cond_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-boolean v5, p1, Lcom/tmp/callrec/MainActivity$Row;->silent:Z

    if-eqz v5, :cond_2

    const v5, -0xc4ca4

    goto :goto_1

    :cond_2
    const v5, -0x131211

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    const/high16 v5, 0x41780000    # 15.5f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 613
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 614
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 615
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 616
    iget-wide v5, p1, Lcom/tmp/callrec/MainActivity$Row;->dur:J

    const-wide/16 v7, 0x3c

    cmp-long v5, v5, v7

    const-string v6, "\ucd08"

    if-ltz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, p1, Lcom/tmp/callrec/MainActivity$Row;->dur:J

    div-long/2addr v9, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\ubd84 "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v9, p1, Lcom/tmp/callrec/MainActivity$Row;->dur:J

    rem-long/2addr v9, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p1, Lcom/tmp/callrec/MainActivity$Row;->dur:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    const v5, -0x655f5a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 618
    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 619
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0, v6}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v1, v6, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 620
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 621
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 624
    iget-object v4, p0, Lcom/tmp/callrec/MainActivity;->playingFile:Ljava/io/File;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tmp/callrec/MainActivity;->playingFile:Ljava/io/File;

    iget-object p1, p1, Lcom/tmp/callrec/MainActivity$Row;->file:Ljava/io/File;

    invoke-virtual {v4, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v1

    .line 625
    :goto_3
    if-eqz v3, :cond_5

    const-string p1, "\u25a0"

    goto :goto_4

    :cond_5
    const-string p1, "\u25b6"

    :goto_4
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    if-eqz v3, :cond_6

    const v5, -0x7e366b

    :cond_6
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    const/high16 p1, 0x41a00000    # 20.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 628
    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2, v3, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 629
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 630
    return-object v0
.end method

.method fmtDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 282
    sget-object v0, Lcom/tmp/callrec/MainActivity;->TMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 285
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 286
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 287
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 288
    const/16 v2, 0xc

    if-ge v4, v2, :cond_0

    const-string v3, "\uc624\uc804"

    goto :goto_0

    :cond_0
    const-string v3, "\uc624\ud6c4"

    .line 289
    :goto_0
    rem-int/2addr v4, v2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    .line 290
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\uc6d4 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uc77c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method fmtMs(I)Ljava/lang/String;
    .locals 2

    .line 271
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%02d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method fmtNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const-string v0, "010"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 298
    :cond_0
    return-object p1
.end method

.method groupView(Lcom/tmp/callrec/MainActivity$Row;)Landroid/view/View;
    .locals 9

    .line 555
    iget v0, p1, Lcom/tmp/callrec/MainActivity$Row;->color:I

    .line 556
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x5c

    div-int/lit16 v1, v1, 0xff

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    const/high16 v3, -0x1000000

    or-int/2addr v1, v3

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v3, v3, 0x5c

    div-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x5c

    div-int/lit16 v0, v0, 0xff

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 560
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 561
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 562
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 563
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 564
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, v4}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v0}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v4}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v5, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 566
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 567
    iget-object v2, p1, Lcom/tmp/callrec/MainActivity$Row;->letter:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "#"

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/tmp/callrec/MainActivity$Row;->letter:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    const v2, -0x131211

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 570
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 571
    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 572
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 573
    iget v7, p1, Lcom/tmp/callrec/MainActivity$Row;->color:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 574
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 575
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 576
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 577
    const/high16 v7, 0x42300000    # 44.0f

    invoke-virtual {p0, v7}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p0, v7}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 578
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {p0, v7}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 579
    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 582
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 583
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 584
    iget-object v7, p1, Lcom/tmp/callrec/MainActivity$Row;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 587
    invoke-virtual {v6, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 588
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 589
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 590
    iget-object p1, p1, Lcom/tmp/callrec/MainActivity$Row;->sub:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    const p1, -0x655f5a

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 592
    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 593
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 594
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    return-object v1
.end method

.method isSilent(Ljava/io/File;)Z
    .locals 8

    .line 331
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 332
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x2c

    sub-long/2addr v2, v4

    const-wide/32 v6, 0x2dc6c0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    .line 333
    new-array v2, p1, [B

    .line 334
    nop

    .line 335
    invoke-virtual {v1, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move v3, v0

    .line 336
    :goto_0
    if-ge v3, p1, :cond_1

    .line 337
    sub-int v4, p1, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 338
    if-gtz v4, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    add-int/2addr v3, v4

    .line 340
    goto :goto_0

    .line 341
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 342
    nop

    .line 343
    move p1, v0

    move v1, p1

    :goto_2
    add-int/lit8 v4, p1, 0x1

    if-ge v4, v3, :cond_3

    .line 344
    aget-byte v5, v2, p1

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    if-le v4, v1, :cond_2

    move v1, v4

    .line 343
    :cond_2
    add-int/lit8 p1, p1, 0x4

    goto :goto_2

    .line 347
    :cond_3
    const/16 p1, 0x3c

    if-ge v1, p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    .line 348
    :catchall_0
    move-exception p1

    return v0
.end method

.method synthetic lambda$onCreate$0$com-tmp-callrec-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->refresh()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-tmp-callrec-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 250
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->nav(I)V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-tmp-callrec-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 251
    const/16 p1, -0xa

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->seek(I)V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-tmp-callrec-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->toggle()V

    return-void
.end method

.method synthetic lambda$onCreate$4$com-tmp-callrec-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 253
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->seek(I)V

    return-void
.end method

.method synthetic lambda$onCreate$5$com-tmp-callrec-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 254
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->nav(I)V

    return-void
.end method

.method synthetic lambda$onCreate$6$com-tmp-callrec-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->cycleSpeed()V

    return-void
.end method

.method synthetic lambda$play$0$com-tmp-callrec-MainActivity(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 463
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->nav(I)V

    .line 464
    return-void
.end method

.method synthetic lambda$rebuild$0$com-tmp-callrec-MainActivity(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 372
    invoke-virtual {p0, p2}, Lcom/tmp/callrec/MainActivity;->tsOf(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->tsOf(Ljava/io/File;)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method synthetic lambda$refresh$0$com-tmp-callrec-MainActivity()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 358
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    return-void
.end method

.method nav(I)V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->flatFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->playingFile:Ljava/io/File;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->flatFiles:Ljava/util/List;

    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->playingFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 530
    :goto_0
    add-int/2addr v0, p1

    .line 531
    if-gez v0, :cond_2

    iget-object p1, p0, Lcom/tmp/callrec/MainActivity;->flatFiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 532
    :cond_2
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity;->flatFiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_3

    const/4 v0, 0x0

    .line 533
    :cond_3
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity;->flatFiles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->play(Ljava/io/File;)V

    .line 534
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 116
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lcom/tmp/callrec/MainActivity;->dens:F

    .line 119
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    const v3, -0xefefec

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 124
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 125
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 126
    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 127
    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v0, v7}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v0, v8}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v9

    float-to-int v9, v9

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v0, v10}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0, v10}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v4, v7, v9, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 128
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v14, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    invoke-virtual {v14, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v15, Landroid/widget/ImageView;

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "glogo"

    const-string v12, "drawable"

    invoke-virtual {v7, v11, v12, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :nologo

    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :nologo
    const/high16 v7, 0x41a80000    # 21.0f

    invoke-virtual {v0, v7}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "Pixel Call Recode"

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, -0x131211

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41a80000    # 21.0f

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v7, 0x0

    invoke-virtual {v15, v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v11, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "V1"

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, -0x655f5a

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v11, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-virtual {v0, v12}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v12

    float-to-int v12, v12

    const/4 v9, 0x0

    invoke-virtual {v11, v9, v9, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v14, v15, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v9, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v7, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v14, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, -0x2

    const/high16 v14, 0x3f800000    # 1.0f

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "Powered by \uc778\ud50c"

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, -0x655f5a

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v0, v7}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    const/4 v11, 0x0

    invoke-virtual {v12, v11, v11, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v15, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u22ee"

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, -0x131211

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Landroid/view/View;->setClickable(Z)V

    new-instance v9, Lcom/tmp/callrec/MainActivity$MenuBtn;

    invoke-direct {v9, v0, v15}, Lcom/tmp/callrec/MainActivity$MenuBtn;-><init>(Lcom/tmp/callrec/MainActivity;Landroid/widget/TextView;)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v0, v7}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    const/4 v11, 0x0

    invoke-virtual {v15, v7, v11, v7, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v0, v7}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v9, v11, v11, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v15, -0x7e366b

    .line 140
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/tmp/callrec/MainActivity;->addPathRow(Landroid/widget/LinearLayout;)V

    .line 142
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 143
    const-string v7, "  \uc774\ub984\uc744 \ud0ed\ud558\uba74 \ud1b5\ud654 \ubaa9\ub85d\uc774 \uc5f4\ub9bd\ub2c8\ub2e4 \u00b7 \ub179\uc74c \ud0ed = \uc7ac\uc0dd"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v7, -0x655f5a

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    const/high16 v12, 0x41b00000    # 22.0f

    invoke-virtual {v0, v12}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v12

    float-to-int v12, v12

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v0, v8}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v12, v5, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 147
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 151
    invoke-virtual {v4, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 153
    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4, v5, v3, v5, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 154
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 155
    new-instance v3, Lcom/tmp/callrec/MainActivity$Adapter;

    invoke-direct {v3, v0}, Lcom/tmp/callrec/MainActivity$Adapter;-><init>(Lcom/tmp/callrec/MainActivity;)V

    iput-object v3, v0, Lcom/tmp/callrec/MainActivity;->ad:Lcom/tmp/callrec/MainActivity$Adapter;

    .line 156
    iget-object v3, v0, Lcom/tmp/callrec/MainActivity;->ad:Lcom/tmp/callrec/MainActivity$Adapter;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    new-instance v3, Lcom/tmp/callrec/MainActivity$1;

    invoke-direct {v3, v0}, Lcom/tmp/callrec/MainActivity$1;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    new-array v3, v2, [F

    const/4 v8, 0x0

    aput v8, v3, v5

    new-array v8, v2, [Z

    aput-boolean v5, v8, v5

    .line 169
    new-instance v12, Lcom/tmp/callrec/MainActivity$2;

    invoke-direct {v12, v0, v3, v8, v4}, Lcom/tmp/callrec/MainActivity$2;-><init>(Lcom/tmp/callrec/MainActivity;[F[ZLandroid/widget/ListView;)V

    invoke-virtual {v4, v12}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 194
    iput-object v4, v0, Lcom/tmp/callrec/MainActivity;->lv:Landroid/widget/ListView;

    .line 195
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v8, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    new-instance v4, Lcom/tmp/callrec/SpinnerView;

    invoke-direct {v4, v0}, Lcom/tmp/callrec/SpinnerView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    .line 198
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    const-string v8, "\u21bb"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 201
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    invoke-virtual {v4, v11, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 202
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 203
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v13, v13, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    .line 212
    iget-object v3, v0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    iget-object v3, v0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    const v4, -0xf2f2f0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 214
    iget-object v3, v0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v4}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v9

    float-to-int v9, v9

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v0, v8}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v4}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v10}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v3, v9, v8, v4, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 215
    iget-object v3, v0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 220
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/tmp/callrec/MainActivity;->pTitle:Landroid/widget/TextView;

    .line 221
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->pTitle:Landroid/widget/TextView;

    const v6, -0x131211

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->pTitle:Landroid/widget/TextView;

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 223
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->pTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v11, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 224
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->pTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 225
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->pTitle:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/tmp/callrec/MainActivity;->pTime:Landroid/widget/TextView;

    .line 227
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->pTime:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->pTime:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->pTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/tmp/callrec/MainActivity;->sb:Landroid/widget/SeekBar;

    .line 233
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->sb:Landroid/widget/SeekBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 234
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->sb:Landroid/widget/SeekBar;

    new-instance v3, Lcom/tmp/callrec/MainActivity$3;

    invoke-direct {v3, v0}, Lcom/tmp/callrec/MainActivity$3;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 244
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/tmp/callrec/MainActivity;->sb:Landroid/widget/SeekBar;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v4, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 249
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 250
    new-instance v3, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tmp/callrec/MainActivity;)V

    const-string v4, "\u23ee \uc774\uc804"

    invoke-virtual {v0, v4, v6, v7, v3}, Lcom/tmp/callrec/MainActivity;->tbtn(Ljava/lang/String;FILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/tmp/callrec/MainActivity;->btnPrev:Landroid/widget/TextView;

    .line 251
    new-instance v3, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tmp/callrec/MainActivity;)V

    const-string v4, "\u00ab 10\ucd08"

    const v8, -0x131211

    invoke-virtual {v0, v4, v10, v8, v3}, Lcom/tmp/callrec/MainActivity;->tbtn(Ljava/lang/String;FILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/tmp/callrec/MainActivity;->btnB10:Landroid/widget/TextView;

    .line 252
    new-instance v3, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tmp/callrec/MainActivity;)V

    const-string v4, "\u25b6"

    const/high16 v8, 0x41900000    # 18.0f

    const v9, -0x7e366b

    invoke-virtual {v0, v4, v8, v9, v3}, Lcom/tmp/callrec/MainActivity;->tbtn(Ljava/lang/String;FILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/tmp/callrec/MainActivity;->btnPlay:Landroid/widget/TextView;

    .line 253
    new-instance v3, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/tmp/callrec/MainActivity;)V

    const-string v4, "10\ucd08 \u00bb"

    const v8, -0x131211

    invoke-virtual {v0, v4, v10, v8, v3}, Lcom/tmp/callrec/MainActivity;->tbtn(Ljava/lang/String;FILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/tmp/callrec/MainActivity;->btnF10:Landroid/widget/TextView;

    .line 254
    new-instance v3, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/tmp/callrec/MainActivity;)V

    const-string v4, "\ub2e4\uc74c \u23ed"

    invoke-virtual {v0, v4, v6, v7, v3}, Lcom/tmp/callrec/MainActivity;->tbtn(Ljava/lang/String;FILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/tmp/callrec/MainActivity;->btnNext:Landroid/widget/TextView;

    .line 255
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 256
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->btnPrev:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->btnB10:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->btnPlay:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->btnF10:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->btnNext:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v4, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/tmp/callrec/MainActivity;)V

    const-string v5, "\ubc30\uc18d 1.0x"

    const v9, -0x7e366b

    invoke-virtual {v0, v5, v6, v9, v4}, Lcom/tmp/callrec/MainActivity;->tbtn(Ljava/lang/String;FILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Lcom/tmp/callrec/MainActivity;->btnSpeed:Landroid/widget/TextView;

    .line 262
    iget-object v4, v0, Lcom/tmp/callrec/MainActivity;->btnSpeed:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v3, v0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v2, v0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    invoke-virtual {v0, v1}, Lcom/tmp/callrec/MainActivity;->setContentView(Landroid/view/View;)V

    .line 267
    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->applySavedPath()V

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->updatePathLabel()V

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->rebuild()V

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->lockChk()V

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity;->permChk()V

    .line 268
    return-void
.end method

.method play(Ljava/io/File;)V
    .locals 4

    .line 450
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->stopPlay()V

    .line 452
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    .line 453
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 454
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 455
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 453
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 456
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 458
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->applySpeed()V

    .line 459
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 460
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->btnPlay:Landroid/widget/TextView;

    const-string v2, "\u275a\u275a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iput-object p1, p0, Lcom/tmp/callrec/MainActivity;->playingFile:Ljava/io/File;

    .line 462
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 465
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 466
    sget-object v1, Lcom/tmp/callrec/MainActivity;->TMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 467
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->pTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tmp/callrec/MainActivity;->fmtDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   \u00b7   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 468
    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->contactOf(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 467
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity;->sb:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 470
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->startTick()V

    .line 471
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity;->ad:Lcom/tmp/callrec/MainActivity$Adapter;

    invoke-virtual {p1}, Lcom/tmp/callrec/MainActivity$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    goto :goto_0

    .line 472
    :catchall_0
    move-exception p1

    .line 473
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->stopPlay()V

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uc7ac\uc0dd \uc2e4\ud328 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 476
    :goto_0
    return-void
.end method

.method rebuild()V
    .locals 8

    .line 366
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 367
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->flatFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 368
    const/4 v0, -0x1

    iput v0, p0, Lcom/tmp/callrec/MainActivity;->lastAvatarColor:I

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 371
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".wav"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 372
    :cond_1
    new-instance v1, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/tmp/callrec/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 373
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 374
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 376
    sget-object v5, Lcom/tmp/callrec/MainActivity;->NUMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 377
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 378
    invoke-virtual {p0, v4}, Lcom/tmp/callrec/MainActivity;->keyOf(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    goto :goto_2

    :cond_3
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :goto_2
    goto :goto_1

    .line 383
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v4, v1}, Lcom/tmp/callrec/MainActivity;->addGroup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 384
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "~etc"

    invoke-virtual {p0, v0, v3}, Lcom/tmp/callrec/MainActivity;->addGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 385
    :cond_6
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 386
    new-instance v0, Lcom/tmp/callrec/MainActivity$Row;

    invoke-direct {v0}, Lcom/tmp/callrec/MainActivity$Row;-><init>()V

    .line 387
    iput v2, v0, Lcom/tmp/callrec/MainActivity$Row;->type:I

    .line 388
    const-string v1, "\ub179\uc74c \ud30c\uc77c \uc5c6\uc74c"

    iput-object v1, v0, Lcom/tmp/callrec/MainActivity$Row;->name:Ljava/lang/String;

    .line 389
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tmp/callrec/MainActivity$Row;->sub:Ljava/lang/String;

    .line 390
    const-string v1, "?"

    iput-object v1, v0, Lcom/tmp/callrec/MainActivity$Row;->letter:Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->rows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_7
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->ad:Lcom/tmp/callrec/MainActivity$Adapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->ad:Lcom/tmp/callrec/MainActivity$Adapter;

    invoke-virtual {v0}, Lcom/tmp/callrec/MainActivity$Adapter;->notifyDataSetChanged()V

    .line 394
    :cond_8
    return-void
.end method

.method refresh()V
    .locals 4

    .line 352
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->stopPlay()V

    .line 353
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->rebuild()V

    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->updOverlay()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->spin:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/tmp/callrec/MainActivity$UpdHide;

    invoke-direct {v1, p0}, Lcom/tmp/callrec/MainActivity$UpdHide;-><init>(Lcom/tmp/callrec/MainActivity;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method seek(I)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 520
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr v0, p1

    .line 521
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 522
    :cond_1
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-le v0, p1, :cond_2

    iget-object p1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 523
    :cond_2
    iget-object p1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 524
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 525
    return-void
.end method

.method startTick()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->tick:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 488
    :cond_0
    new-instance v0, Lcom/tmp/callrec/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/tmp/callrec/MainActivity$4;-><init>(Lcom/tmp/callrec/MainActivity;)V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->tick:Ljava/lang/Runnable;

    .line 500
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 501
    return-void
.end method

.method stopPlay()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 441
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 442
    :goto_1
    iput-object v1, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    .line 444
    :cond_0
    iput-object v1, p0, Lcom/tmp/callrec/MainActivity;->playingFile:Ljava/io/File;

    .line 445
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->playerBox:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->tick:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    :cond_2
    return-void
.end method

.method tbtn(Ljava/lang/String;FILandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .locals 2

    .line 103
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 107
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 108
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result p2

    float-to-int p2, p2

    const/high16 p3, 0x41000000    # 8.0f

    invoke-virtual {p0, p3}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, p1}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p3}, Lcom/tmp/callrec/MainActivity;->dp(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {v0, p2, v1, p1, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object v0
.end method

.method toggle()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 508
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->btnPlay:Landroid/widget/TextView;

    const-string v1, "\u25b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 511
    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->btnPlay:Landroid/widget/TextView;

    const-string v1, "\u275a\u275a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->startTick()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 515
    return-void
.end method

.method trimSpeed(F)Ljava/lang/String;
    .locals 3

    .line 543
    float-to-long v0, p1

    long-to-float v2, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method tsOf(Ljava/io/File;)J
    .locals 2

    .line 276
    sget-object v0, Lcom/tmp/callrec/MainActivity;->TMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public defDir()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Recordings"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public curDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->dir:Ljava/io/File;

    if-eqz v0, :dfl

    return-object v0

    :dfl
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->defDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public recNames()[Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->curDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :none

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :loop
    if-ge v4, v3, :make

    aget-object v5, v1, v4

    const-string v0, ".wav"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :skip

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :skip
    add-int/lit8 v4, v4, 0x1

    goto :loop

    :make
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :none
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/String;

    return-object v1
.end method

.method public updOverlay()Landroid/widget/FrameLayout;
    .locals 8

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->updBox:Landroid/widget/FrameLayout;

    if-eqz v0, :build

    return-object v0

    :build
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->updBox:Landroid/widget/FrameLayout;

    const v2, -0xd0e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Lcom/tmp/callrec/SpinnerView;

    invoke-direct {v3, p0}, Lcom/tmp/callrec/SpinnerView;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v5, 0x42e00000    # 112.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\uc5c5\ub370\uc774\ud2b8 \uc911\u2026"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0xc3c3c0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v7, 0x41c00000    # 24.0f

    mul-float v4, v4, v7

    float-to-int v4, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/16 v4, 0x11

    invoke-direct {v3, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public lockChk()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "n92uYgH1+xwqjo5qLENfMnIKvlwLD/goOhc5QSI5I4U="

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :done

    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->showLock()V

    :done
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catchd
    return-void

    :catchd
    return-void
.end method

.method public showLock()V
    .locals 9

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->lockBox:Landroid/widget/FrameLayout;

    if-eqz v0, :build

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :build
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->lockBox:Landroid/widget/FrameLayout;

    const v2, -0xe3e3e0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v3, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v3, v8, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "developer auth"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\uc571 \ubcc0\uc870\uc2dc\uc5d0\ub9cc \uc0ac\uc6a9\ub429\ub2c8\ub2e4. PIN\uc744 \uc785\ub825\ud558\uc138\uc694."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v5, -0x393b37

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v6, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v8, v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # EditText passcode
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v4, "PIN"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    iget v4, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v5, 0x42480000    # 50.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setWidth(I)V

    iget v4, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v5, 0x42400000    # 48.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHeight(I)V

    iput-object v3, p0, Lcom/tmp/callrec/MainActivity;->passInput:Landroid/widget/EditText;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41c00000    # 24.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # 확인 button
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\ud655\uc778"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/tmp/callrec/MainActivity$LockTry;

    invoke-direct {v5, p0}, Lcom/tmp/callrec/MainActivity$LockTry;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public aboutView()Landroid/widget/FrameLayout;
    .locals 10

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->devBox:Landroid/widget/FrameLayout;

    if-eqz v0, :build

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-object v0

    :build
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->devBox:Landroid/widget/FrameLayout;

    const v2, -0xececea

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v3, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "About"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/tmp/callrec/SpinnerView;

    invoke-direct {v4, p0}, Lcom/tmp/callrec/SpinnerView;-><init>(Landroid/content/Context;)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x43200000    # 160.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/tmp/callrec/SpinnerView;->setSize(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v6, "profile"

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :noimg

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :noimg
    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x42d00000    # 104.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41e00000    # 28.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "Powered by \uc778\ud50c"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v5, -0x393b37

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "GitHub: GPixelCallRecode"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v5, -0xb25c01

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v5, Lcom/tmp/callrec/MainActivity$GitOpen;

    invoke-direct {v5, p0}, Lcom/tmp/callrec/MainActivity$GitOpen;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\ubb38\uc758\ud558\uae30"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/tmp/callrec/MainActivity$InqBtn;

    invoke-direct {v5, p0}, Lcom/tmp/callrec/MainActivity$InqBtn;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41800000    # 16.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public inqView()V
    .locals 10

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->inqBox:Landroid/widget/FrameLayout;

    if-eqz v0, :build

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :build
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->inqBox:Landroid/widget/FrameLayout;

    const v2, -0xececea

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v3, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\ubb38\uc758\ud558\uae30"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v4, "\uc81c\ubaa9"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    iput-object v3, p0, Lcom/tmp/callrec/MainActivity;->subjInput:Landroid/widget/EditText;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41800000    # 16.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v4, "\ub0b4\uc6a9"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v5, 0x20001

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x43820000    # 260.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHeight(I)V

    iput-object v3, p0, Lcom/tmp/callrec/MainActivity;->bodyInput:Landroid/widget/EditText;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\ubcf4\ub0b4\uae30"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/tmp/callrec/MainActivity$InqSend;

    invoke-direct {v5, p0}, Lcom/tmp/callrec/MainActivity$InqSend;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\ucde8\uc18c"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/tmp/callrec/MainActivity$InqClose;

    invoke-direct {v5, p0}, Lcom/tmp/callrec/MainActivity$InqClose;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public permChk()V
    .locals 5

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :done

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\ud30c\uc77c \uc811\uadfc \uad8c\ud55c"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\ub179\uc74c \ud30c\uc77c\uc744 \ubd88\ub7ec\uc624\ub824\uba74 '\ubaa8\ub4e0 \ud30c\uc77c \uad00\ub9ac \ud5c8\uc6a9' \uad8c\ud55c\uc774 \ud544\uc694\ud569\ub2c8\ub2e4.\n\ud5c8\uc6a9 \ud654\uba74\uc5d0\uc11c \uc2a4\uc704\uce58\ub97c \ucf1c \uc8fc\uc138\uc694."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\uc9c0\uae04 \ud5c8\uc6a9"

    new-instance v2, Lcom/tmp/callrec/MainActivity$PermGo;

    invoke-direct {v2, p0}, Lcom/tmp/callrec/MainActivity$PermGo;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\ub098\uc911\uc5d0"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :done
    return-void
.end method

.method public devView()Landroid/widget/FrameLayout;
    .locals 9

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->devBox:Landroid/widget/FrameLayout;

    if-eqz v0, :build

    return-object v0

    :build
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tmp/callrec/MainActivity;->devBox:Landroid/widget/FrameLayout;

    const v2, -0xececea

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v3, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    # title
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\uac1c\ubc1c\uc790 \uc815\ubcf4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # Powered by 인플
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "Powered by \uc778\ud50c"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v5, -0x393b37

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v6, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v7, 0x41c00000    # 24.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # GitHub 준비 중
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "GitHub: \uc900\ube44 \uc911"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v5, -0x393b37

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v6, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v7, 0x41000000    # 8.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # spacer (weight 1)
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # 확인 button
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\ud655\uc778"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/tmp/callrec/MainActivity$DevClose;

    invoke-direct {v5, p0}, Lcom/tmp/callrec/MainActivity$DevClose;-><init>(Lcom/tmp/callrec/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/tmp/callrec/MainActivity;->dens:F

    const/high16 v6, 0x41c00000    # 24.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # column into devBox
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public applySavedPath()V
    .locals 5

    const-string v0, "cfg"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rec_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ret

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_ret

    iput-object v2, p0, Lcom/tmp/callrec/MainActivity;->dir:Ljava/io/File;

    :cond_ret
    return-void
.end method

.method public addPathRow(Landroid/widget/LinearLayout;)V
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tmp/callrec/MainActivity$PathToggle;

    invoke-direct {v1, p0}, Lcom/tmp/callrec/MainActivity$PathToggle;-><init>(Lcom/tmp/callrec/MainActivity;)V

    const-string v2, "\ud83d\udcc1 \uacbd\ub85c"

    const/high16 v3, 0x41500000    # 13.0f

    const v4, -0x7e366b

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/tmp/callrec/MainActivity;->tbtn(Ljava/lang/String;FILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/tmp/callrec/MainActivity;->pathBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public updatePathLabel()V
    .locals 4

    iget-object v0, p0, Lcom/tmp/callrec/MainActivity;->pathBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_ret

    iget-object v1, p0, Lcom/tmp/callrec/MainActivity;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83d\udcc1 \uacbd\ub85c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ret
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_default

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_bad

    iput-object v1, p0, Lcom/tmp/callrec/MainActivity;->dir:Ljava/io/File;

    goto/16 :goto_save

    :cond_bad
    const-string v0, "\uc798\ubabb\ub41c \uacbd\ub85c"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_default
    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->defDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/tmp/callrec/MainActivity;->dir:Ljava/io/File;

    const-string p1, ""

    :goto_save
    const-string v1, "cfg"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rec_path"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->updatePathLabel()V

    invoke-virtual {p0}, Lcom/tmp/callrec/MainActivity;->refresh()V

    return-void
.end method

.method public showPathDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\ub179\uc74c \uacbd\ub85c \uc9c0\uc815"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tmp/callrec/MainActivity;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/tmp/callrec/MainActivity;->pathInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/tmp/callrec/MainActivity$PathOk;

    invoke-direct {v1, p0}, Lcom/tmp/callrec/MainActivity$PathOk;-><init>(Lcom/tmp/callrec/MainActivity;)V

    const-string v2, "\uc9c0\uc815"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/tmp/callrec/MainActivity$PathDef;

    invoke-direct {v1, p0}, Lcom/tmp/callrec/MainActivity$PathDef;-><init>(Lcom/tmp/callrec/MainActivity;)V

    const-string v2, "\uae30\ubcf8\uac12 (Recordings)"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public keyOf(Ljava/io/File;)Ljava/lang/String;
    .locals 14

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    sget-object v0, Lcom/tmp/callrec/MainActivity;->TMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_nomatch

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v0, 0x1

    invoke-virtual {v5, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x4

    const/4 v11, 0x6

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const/4 v0, 0x2

    invoke-virtual {v5, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x6

    const/16 v11, 0x8

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v0, 0x5

    invoke-virtual {v5, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v0, 0xb

    invoke-virtual {v5, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x2

    const/4 v11, 0x4

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v0, 0xc

    invoke-virtual {v5, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x4

    const/4 v11, 0x6

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v0, 0xd

    invoke-virtual {v5, v0, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    const-wide/32 v10, 0x493e0

    move-wide v6, v12

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    neg-long v10, v10

    add-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    sget-object v1, Landroid/provider/CallLog$Calls;->NUMBER:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v9, v2

    sget-object v1, Landroid/provider/CallLog$Calls;->DATE:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v9, v2

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v11, v2

    const/4 v2, 0x1

    aput-object v6, v11, v2

    const-string v10, "DATE>=? AND DATE<=?"

    const-string v12, "date DESC"

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_etc

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_etc

    sget-object v1, Landroid/provider/CallLog$Calls;->NUMBER:Ljava/lang/String;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_etc

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_etc

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_nomatch
    return-object v3

    :cond_etc
    if-eqz v7, :cond_ret

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_ret
    return-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-object v3
.end method

.method public startPickPath()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tmp/callrec/MainActivity;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/storage/emulated/0/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_sd

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_docid

    :cond_sd
    const-string v4, "/sdcard/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_root

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_docid

    :cond_root
    const-string v2, ""

    :goto_docid
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "primary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "com.android.externalstorage.documents"

    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x1bcd

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1bcd

    if-ne p1, v0, :cond_ret

    const/4 v0, -0x1

    if-ne p2, v0, :cond_ret

    if-eqz p3, :cond_ret

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_ret

    :try_start_0
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    array-length v3, v0

    const/4 v2, 0x2

    if-ge v3, v2, :cond_have

    const-string v2, ""

    goto :goto_join

    :cond_have
    const/4 v2, 0x1

    aget-object v2, v0, v2

    :goto_join
    const-string v3, "primary"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_vol

    const-string v4, "/storage/emulated/0"

    goto :goto_sub

    :cond_vol
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/storage/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_sub
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_use

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_use
    invoke-virtual {p0, v4}, Lcom/tmp/callrec/MainActivity;->setPath(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_ret
    return-void

    :catch_0
    move-exception v0

    return-void
.end method
