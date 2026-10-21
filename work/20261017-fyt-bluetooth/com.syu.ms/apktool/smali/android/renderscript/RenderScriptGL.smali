.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    }
.end annotation


# instance fields
.field public mHeight:I

.field public mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 18

    move-object/from16 v15, p0

    .line 1
    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v0, 0x0

    .line 4
    iput v0, v15, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 5
    iput v0, v15, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->nDeviceCreate()I

    move-result v0

    iput v0, v15, Landroid/renderscript/RenderScript;->mDev:I

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v14, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 8
    iget v1, v15, Landroid/renderscript/RenderScript;->mDev:I

    iget-object v0, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v4, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    iget v5, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    iget v6, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    iget v7, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    iget v8, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    iget v9, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    iget v10, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    iget v11, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    iget v12, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    iget v13, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    iget v2, v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v17, v2

    move/from16 v2, v16

    move/from16 v16, v14

    move/from16 v14, v17

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v15}, Landroid/renderscript/RenderScript;->nContextCreateGL(IIIIIIIIIIIIIFI)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v0, v1}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, v1, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 11
    :cond_0
    new-instance v0, Landroid/renderscript/RSDriverException;

    const-string v2, "Failed to create RS context."

    invoke-direct {v0, v2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nContextBindProgramFragment(I)V

    return-void
.end method

.method public bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nContextBindProgramRaster(I)V

    return-void
.end method

.method public bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nContextBindProgramStore(I)V

    return-void
.end method

.method public bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nContextBindProgramVertex(I)V

    return-void
.end method

.method public bindRootScript(Landroid/renderscript/Script;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nContextBindRootScript(I)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    return v0
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextPause()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextResume()V

    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 4
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 5
    invoke-virtual {p0, p2, p3, p1}, Landroid/renderscript/RenderScript;->nContextSetSurface(IILandroid/view/Surface;)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 3
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 4
    invoke-virtual {p0, p2, p3, p1}, Landroid/renderscript/RenderScript;->nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V

    return-void
.end method
