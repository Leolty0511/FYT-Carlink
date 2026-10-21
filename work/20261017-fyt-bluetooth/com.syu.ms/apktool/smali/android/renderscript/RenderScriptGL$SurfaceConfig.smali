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
.field public mAlphaMin:I

.field public mAlphaPref:I

.field public mColorMin:I

.field public mColorPref:I

.field public mDepthMin:I

.field public mDepthPref:I

.field public mSamplesMin:I

.field public mSamplesPref:I

.field public mSamplesQ:F

.field public mStencilMin:I

.field public mStencilPref:I


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

    if-lt p1, p3, :cond_1

    if-gt p1, p4, :cond_1

    if-lt p2, p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "preferred must be >= Minimum."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Minimum value provided out of range."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public setAlpha(II)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 2
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 3
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    return-void
.end method

.method public setColor(II)V
    .locals 2

    const/4 v0, 0x5

    const/16 v1, 0x8

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 2
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 3
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    return-void
.end method

.method public setDepth(II)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x18

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 2
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 3
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    return-void
.end method

.method public setSamples(IIF)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    .line 2
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 3
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 4
    iput p3, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Quality out of 0-1 range."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
