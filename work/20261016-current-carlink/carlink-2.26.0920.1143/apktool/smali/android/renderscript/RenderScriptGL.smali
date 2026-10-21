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
.field mHeight:I

.field mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 17

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 9
    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput v1, v15, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 25
    .line 26
    iput v1, v15, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->nDeviceCreate()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 41
    .line 42
    move/from16 v16, v3

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    iget-object v14, v15, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 46
    .line 47
    iget v5, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 48
    .line 49
    iget v6, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 50
    .line 51
    iget v7, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 52
    .line 53
    iget v8, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 54
    .line 55
    iget v9, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 56
    .line 57
    iget v10, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 58
    .line 59
    iget v11, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 60
    .line 61
    iget v12, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 62
    .line 63
    iget v13, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 64
    .line 65
    iget v3, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 66
    .line 67
    move-object v15, v14

    .line 68
    move v14, v3

    .line 69
    iget v15, v15, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 70
    .line 71
    move-object/from16 v3, p0

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-virtual/range {v0 .. v16}, Landroid/renderscript/RenderScript;->nContextCreateGL(JIIIIIIIIIIIIFI)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    move-object/from16 v2, p0

    .line 79
    .line 80
    iput-wide v0, v2, Landroid/renderscript/RenderScript;->mContext:J

    .line 81
    .line 82
    const-wide/16 v3, 0x0

    .line 83
    .line 84
    cmp-long v0, v0, v3

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    new-instance v0, Landroid/renderscript/RenderScript$MessageThread;

    .line 89
    .line 90
    invoke-direct {v0, v2}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, v2, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/renderscript/RSDriverException;

    .line 100
    .line 101
    const-string v1, "Failed to create RS context."

    .line 102
    .line 103
    invoke-direct {v0, v1}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method


# virtual methods
.method public bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    long-to-int p1, v0

    .line 9
    int-to-long v0, p1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->nContextBindProgramFragment(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    long-to-int p1, v0

    .line 9
    int-to-long v0, p1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->nContextBindProgramRaster(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    long-to-int p1, v0

    .line 9
    int-to-long v0, p1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->nContextBindProgramStore(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    long-to-int p1, v0

    .line 9
    int-to-long v0, p1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->nContextBindProgramVertex(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bindRootScript(Landroid/renderscript/Script;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    long-to-int p1, v0

    .line 9
    int-to-long v0, p1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->nContextBindRootScript(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    return v0
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextPause()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public resume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextResume()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 13
    .line 14
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 15
    .line 16
    invoke-virtual {p0, p2, p3, p1}, Landroid/renderscript/RenderScript;->nContextSetSurface(IILandroid/view/Surface;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/view/Surface;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 14
    .line 15
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 16
    .line 17
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScript;->nContextSetSurface(IILandroid/view/Surface;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
