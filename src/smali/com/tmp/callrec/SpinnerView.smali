.class public Lcom/tmp/callrec/SpinnerView;
.super Landroid/widget/TextView;
.source "SpinnerView.java"

# instance fields
.field private mDensity:F

.field private mPath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private mStart:F

.field private mSweep:F

.field private mTrack:Landroid/graphics/Paint;

.field private mT:F

.field private sz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/tmp/callrec/SpinnerView;->mDensity:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v3, -0x94b439

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object v1, p0, Lcom/tmp/callrec/SpinnerView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v3, -0x1b2817

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v1, p0, Lcom/tmp/callrec/SpinnerView;->mTrack:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/tmp/callrec/SpinnerView;->mPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/tmp/callrec/SpinnerView;->tick()V

    return-void
.end method

.method private tick()V
    .locals 3

    iget v0, p0, Lcom/tmp/callrec/SpinnerView;->mStart:F

    const/high16 v1, 0x40a00000    # 5.0f

    add-float v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_rot

    sub-float v0, v0, v1

    :cond_rot
    iput v0, p0, Lcom/tmp/callrec/SpinnerView;->mStart:F

    iget v0, p0, Lcom/tmp/callrec/SpinnerView;->mT:F

    const v1, 0x3ca3d70a    # 0.02f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_t

    sub-float v0, v0, v1

    :cond_t
    iput v0, p0, Lcom/tmp/callrec/SpinnerView;->mT:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_flip

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v0, v2, v0

    :cond_flip
    const/high16 v2, 0x43820000    # 260.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x41200000    # 10.0f

    add-float v0, v0, v2

    iput v0, p0, Lcom/tmp/callrec/SpinnerView;->mSweep:F

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    int-to-float v0, v9

    mul-float v0, v0, v11

    int-to-float v1, v10

    mul-float v1, v1, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v11

    iget v10, p0, Lcom/tmp/callrec/SpinnerView;->mDensity:F

    const/high16 v12, 0x41400000    # 12.0f

    mul-float v12, v12, v10

    sub-float v3, v9, v12

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float v2, v9, v10

    iget-object v9, p0, Lcom/tmp/callrec/SpinnerView;->mTrack:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/tmp/callrec/SpinnerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    const v5, 0x3c8efa35    # pi/180

    iget v12, p0, Lcom/tmp/callrec/SpinnerView;->mSweep:F

    const/high16 v13, 0x40800000    # 4.0f

    div-float v12, v12, v13

    float-to-int v7, v12

    if-gtz v7, :have_steps

    const/4 v7, 0x1

    :have_steps
    const/4 v8, 0x0

    :pt_loop
    if-gt v8, v7, :post_pts

    int-to-float v9, v8

    const/high16 v12, 0x40800000    # 4.0f

    mul-float v9, v9, v12

    iget v12, p0, Lcom/tmp/callrec/SpinnerView;->mStart:F

    add-float/2addr v9, v12

    mul-float v9, v9, v5

    # envelope: wave amplitude fades near both ends of the arc
    const/high16 v11, 0x40c00000    # 6.0f

    int-to-float v12, v8

    div-float v12, v12, v11

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v12

    sub-int v13, v7, v8

    int-to-float v13, v13

    div-float v13, v13, v11

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    mul-float v12, v12, v13

    mul-float v12, v12, v2

    # rr (v10) = baseR + ampNow * sin(5*radF)
    const/high16 v13, 0x40a00000    # 5.0f

    mul-float v10, v9, v13

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v12

    add-float/2addr v10, v3

    # y (v13) = cy + rr * sin(radF)
    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v10

    add-float v13, v11, v1

    # x (v12) = cx + rr * cos(radF)
    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v10

    add-float v12, v11, v0

    if-nez v8, :pt_line

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    goto :pt_next

    :pt_line
    invoke-virtual {v4, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :pt_next
    add-int/lit8 v8, v8, 0x1

    goto :pt_loop

    :post_pts
    iget-object v9, p0, Lcom/tmp/callrec/SpinnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/tmp/callrec/SpinnerView;->tick()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lcom/tmp/callrec/SpinnerView;->sz:I

    if-gtz v1, :fix

    const/high16 v1, 0x42e00000    # 112.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    :fix
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/tmp/callrec/SpinnerView;->sz:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    return-void
.end method
