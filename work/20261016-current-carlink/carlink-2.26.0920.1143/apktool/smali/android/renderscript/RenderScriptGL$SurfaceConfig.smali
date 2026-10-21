.class public Landroid/renderscript/RenderScriptGL$SurfaceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScriptGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceConfig"
.end annotation


# instance fields
.field mAlphaMin:I

.field mAlphaPref:I

.field mColorMin:I

.field mColorPref:I

.field mDepthMin:I

.field mDepthPref:I

.field mSamplesMin:I

.field mSamplesPref:I

.field mSamplesQ:F

.field mStencilMin:I

.field mStencilPref:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 3
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 4
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 5
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    const/16 v1, 0x8

    .line 6
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 7
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 8
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 9
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 11
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 15
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 16
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 17
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    const/16 v1, 0x8

    .line 18
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 19
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 20
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 21
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 23
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 25
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 26
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 27
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 28
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 29
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 30
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 31
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 32
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 33
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 34
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 35
    iget p1, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    return-void
.end method

.method private validateRange(IIII)V
    .locals 0

    .line 1
    if-lt p1, p3, :cond_1

    .line 2
    .line 3
    if-gt p1, p4, :cond_1

    .line 4
    .line 5
    if-lt p2, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 9
    .line 10
    const-string/jumbo p2, "preferred must be >= Minimum."

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 18
    .line 19
    const-string p2, "Minimum value provided out of range."

    .line 20
    .line 21
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method


# virtual methods
.method public setAlpha(II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 8
    .line 9
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 10
    .line 11
    return-void
.end method

.method public setColor(II)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 8
    .line 9
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 10
    .line 11
    return-void
.end method

.method public setDepth(II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x18

    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 8
    .line 9
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 10
    .line 11
    return-void
.end method

.method public setSamples(IIF)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x20

    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpg-float v0, p3, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float v0, p3, v0

    .line 15
    .line 16
    if-gtz v0, :cond_0

    .line 17
    .line 18
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 19
    .line 20
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 21
    .line 22
    iput p3, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 26
    .line 27
    const-string p2, "Quality out of 0-1 range."

    .line 28
    .line 29
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method
