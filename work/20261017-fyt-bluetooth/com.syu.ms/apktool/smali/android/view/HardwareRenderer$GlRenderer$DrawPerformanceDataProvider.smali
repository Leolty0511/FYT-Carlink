.class Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;
.super Landroid/view/HardwareRenderer$GraphDataProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer$GlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawPerformanceDataProvider"
.end annotation


# instance fields
.field private final mGraphType:I

.field private mHorizontalMargin:I

.field private mHorizontalUnit:I

.field private mThresholdStroke:I

.field private mVerticalUnit:I

.field public final synthetic this$0:Landroid/view/HardwareRenderer$GlRenderer;


# direct methods
.method public constructor <init>(Landroid/view/HardwareRenderer$GlRenderer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GraphDataProvider;-><init>(Landroid/view/HardwareRenderer;)V

    .line 2
    iput p2, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    return-void
.end method


# virtual methods
.method public getCurrentFrame()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getData()[F
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    return-object v0
.end method

.method public getElementCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getGraphType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    return v0
.end method

.method public getHorizontaUnitMargin()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalMargin:I

    return v0
.end method

.method public getHorizontalUnitSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalUnit:I

    return v0
.end method

.method public getThreshold()F
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    return v0
.end method

.method public getVerticalUnitSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mVerticalUnit:I

    return v0
.end method

.method public prepare(Landroid/util/DisplayMetrics;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x7

    .line 2
    invoke-static {v0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->access$300(IF)I

    move-result v0

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mVerticalUnit:I

    const/4 v0, 0x3

    .line 3
    invoke-static {v0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->access$300(IF)I

    move-result v0

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalUnit:I

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->access$300(IF)I

    move-result v0

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalMargin:I

    const/4 v0, 0x2

    .line 5
    invoke-static {v0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->access$300(IF)I

    move-result p1

    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    return-void
.end method

.method public setupCurrentFramePaint(Landroid/graphics/Paint;)V
    .locals 2

    const v0, -0x30a055b3    # -3.75248E9f

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setupGraphPaint(Landroid/graphics/Paint;I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->access$400()[I

    move-result-object v0

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget p2, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget p2, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setupThresholdPaint(Landroid/graphics/Paint;)V
    .locals 1

    const v0, -0xa055b3

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
