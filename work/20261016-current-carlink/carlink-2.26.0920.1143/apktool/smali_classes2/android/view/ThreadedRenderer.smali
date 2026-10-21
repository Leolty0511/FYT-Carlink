.class public final Landroid/view/ThreadedRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$ProcessInitializer;,
        Landroid/view/ThreadedRenderer$DrawCallbacks;,
        Landroid/view/ThreadedRenderer$DumpFlags;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final DEBUG_RENDERER_PROPERTY:Ljava/lang/String; = "debug.hwui.renderer"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field private static final FLAG_DUMP_FRAMESTATS:I = 0x1

.field private static final FLAG_DUMP_RESET:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ThreadedRenderer"

.field public static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field private static final SYNC_CONTEXT_IS_STOPPED:I = 0x4

.field private static final SYNC_INVALIDATE_REQUIRED:I = 0x1

.field private static final SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field private static final SYNC_OK:I

.field private static final VISUALIZERS:[Ljava/lang/String;

.field public static sRendererDisabled:Z

.field private static sSupportsOpenGL:Ljava/lang/Boolean;

.field public static sSystemRendererDisabled:Z

.field public static sTrimForeground:Z


# instance fields
.field private final mAmbientShadowAlpha:I

.field private mEnabled:Z

.field private mHasInsets:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private mIsOpaque:Z

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private mRequested:Z

.field private mRootNode:Landroid/view/RenderNode;

.field private mRootNodeNeedsUpdate:Z

.field private final mSpotShadowAlpha:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    .line 6
    .line 7
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 8
    .line 9
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    .line 10
    .line 11
    const-string/jumbo v0, "visual_bars"

    .line 12
    .line 13
    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    sget-object v3, Lcom/android/internal/R$styleable;->Lighting:[I

    .line 14
    .line 15
    invoke-virtual {p1, v2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x3

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 40
    .line 41
    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/high16 v5, 0x437f0000    # 255.0f

    .line 46
    .line 47
    mul-float/2addr v3, v5

    .line 48
    const/high16 v6, 0x3f000000    # 0.5f

    .line 49
    .line 50
    add-float/2addr v3, v6

    .line 51
    float-to-int v3, v3

    .line 52
    iput v3, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    .line 53
    .line 54
    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    mul-float/2addr v1, v5

    .line 59
    add-float/2addr v1, v6

    .line 60
    float-to-int v1, v1

    .line 61
    iput v1, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    invoke-static {v1, v2}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 75
    .line 76
    invoke-virtual {v3, v0}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 77
    .line 78
    .line 79
    xor-int/lit8 v0, p2, 0x1

    .line 80
    .line 81
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    .line 82
    .line 83
    invoke-static {p2, v1, v2}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 88
    .line 89
    invoke-static {v0, v1, p3}, Landroid/view/ThreadedRenderer;->nSetName(JLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object p2, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    .line 93
    .line 94
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 95
    .line 96
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ThreadedRenderer$ProcessInitializer;->init(Landroid/content/Context;J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public static synthetic access$100(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nGetRenderThreadTid(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200()V
    .locals 0

    invoke-static {}, Landroid/view/ThreadedRenderer;->nRotateProcessStatsBuffer()V

    return-void
.end method

.method public static synthetic access$300(I)V
    .locals 0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetProcessStatsBuffer(I)V

    return-void
.end method

.method public static copySurfaceInto(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)I
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v5, p2

    .line 9
    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/Bitmap;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v5, p2

    .line 24
    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/Bitmap;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/view/ThreadedRenderer;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method

.method public static createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    return-void
.end method

.method public static disable(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static native disableVsync()V
.end method

.method public static enableForegroundTrimming()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    return-void
.end method

.method public static invokeFunctor(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nInvokeFunctor(JZ)V

    return-void
.end method

.method public static isAvailable()Z
    .locals 4

    .line 1
    sget-object v0, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const-string v0, "ro.kernel.qemu"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    sput-object v0, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    const-string v0, "qemu.gles"

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ne v0, v3, :cond_2

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    if-lez v0, :cond_3

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    return v0
.end method

.method private static native nAddFrameMetricsObserver(JLandroid/view/FrameMetricsObserver;)J
.end method

.method private static native nAddRenderNode(JJZ)V
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z
.end method

.method private static native nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/Bitmap;)I
.end method

.method private static native nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;
.end method

.method private static native nCreateProxy(ZJ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(JJ)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDrawRenderNode(JJ)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;I)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nGetRenderThreadTid(J)I
.end method

.method private static native nInitialize(JLandroid/view/Surface;)V
.end method

.method private static native nInvokeFunctor(JZ)V
.end method

.method private static native nLoadSystemProperties(J)Z
.end method

.method private static native nNotifyFramePending(J)V
.end method

.method private static native nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nPauseSurface(JLandroid/view/Surface;)Z
.end method

.method private static native nPushLayerUpdate(JJ)V
.end method

.method private static native nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native nRegisterVectorDrawableAnimator(JJ)V
.end method

.method private static native nRemoveFrameMetricsObserver(JJ)V
.end method

.method private static native nRemoveRenderNode(JJ)V
.end method

.method private static native nRotateProcessStatsBuffer()V
.end method

.method private static native nSerializeDisplayListTree(J)V
.end method

.method private static native nSetContentDrawBounds(JIIII)V
.end method

.method private static native nSetLightCenter(JFFF)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetProcessStatsBuffer(I)V
.end method

.method private static native nSetStopped(JZ)V
.end method

.method private static native nSetWideGamut(JZ)V
.end method

.method private static native nSetup(JFII)V
.end method

.method private static native nStopDrawing(J)V
.end method

.method private static native nSyncAndDrawFrame(J[JI)I
.end method

.method private static native nTrimMemory(I)V
.end method

.method private static native nUpdateSurface(JLandroid/view/Surface;)V
.end method

.method public static overrideProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string p1, "name and value must be non-null"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->setupShadersDiskCache(Ljava/lang/String;)V

    return-void
.end method

.method public static native setupShadersDiskCache(Ljava/lang/String;)V
.end method

.method public static trimMemory(I)V
    .locals 0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nTrimMemory(I)V

    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean p1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    :goto_1
    return-void
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .locals 6

    .line 1
    const-string v0, "Record View#draw()"

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 24
    .line 25
    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 26
    .line 27
    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 28
    .line 29
    invoke-virtual {v0, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iget v4, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 38
    .line 39
    int-to-float v4, v4

    .line 40
    iget v5, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 41
    .line 42
    int-to-float v5, v5

    .line 43
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPreDraw(Landroid/view/DisplayListCanvas;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPostDraw(Landroid/view/DisplayListCanvas;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    iget-object p1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    iget-object p2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method private updateViewTreeDisplayList(Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 6
    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    and-int v2, v0, v1

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v2, v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v3

    .line 17
    :goto_0
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 18
    .line 19
    const v1, 0x7fffffff

    .line 20
    .line 21
    .line 22
    and-int/2addr v0, v1

    .line 23
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    .line 26
    .line 27
    .line 28
    iput-boolean v3, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public addFrameMetricsObserver(Landroid/view/FrameMetricsObserver;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nAddFrameMetricsObserver(JLandroid/view/FrameMetricsObserver;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    new-instance v2, Lcom/android/internal/util/VirtualRefBasePtr;

    .line 8
    .line 9
    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    .line 10
    .line 11
    .line 12
    iput-object v2, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 13
    .line 14
    return-void
.end method

.method public addRenderNode(Landroid/view/RenderNode;Z)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/ThreadedRenderer;->nAddRenderNode(JJZ)V

    return-void
.end method

.method public buildLayer(Landroid/view/RenderNode;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nBuildLayer(JJ)V

    return-void
.end method

.method public copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/ThreadedRenderer;->nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public createTextureLayer()Landroid/view/HardwareLayer;
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nCreateTextureLayer(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {p0, v0, v1}, Landroid/view/HardwareLayer;->adoptTextureLayer(Landroid/view/ThreadedRenderer;J)Landroid/view/HardwareLayer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public destroy()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 9
    .line 10
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 11
    .line 12
    iget-wide v2, v2, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nDestroy(JJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public destroyHardwareResources(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroyHardwareResources(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public detachSurfaceTexture(J)V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nDetachSurfaceTexture(JJ)V

    return-void
.end method

.method public draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3
    .line 4
    iget-object v1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 5
    .line 6
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 7
    .line 8
    iget-object v2, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/view/FrameInfo;->markDrawStart()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 18
    .line 19
    iget-object p3, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    move v2, p1

    .line 28
    :goto_0
    if-ge v2, p3, :cond_0

    .line 29
    .line 30
    iget-object v3, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/view/RenderNode;

    .line 37
    .line 38
    invoke-virtual {p0, v3}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p3, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 47
    .line 48
    .line 49
    const/4 p3, 0x0

    .line 50
    iput-object p3, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 51
    .line 52
    :cond_1
    iget-object p3, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 53
    .line 54
    iget-object p3, p3, Landroid/view/FrameInfo;->mFrameInfo:[J

    .line 55
    .line 56
    iget-wide v1, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 57
    .line 58
    array-length v3, p3

    .line 59
    invoke-static {v1, v2, p3, v3}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(J[JI)I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    and-int/lit8 v1, p3, 0x2

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 71
    .line 72
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 80
    .line 81
    .line 82
    :cond_2
    and-int/lit8 p1, p3, 0x1

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nDrawRenderNode(JJ)V

    return-void
.end method

.method public dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    move v0, p1

    .line 6
    :goto_0
    array-length v1, p3

    .line 7
    if-ge p1, v1, :cond_2

    .line 8
    .line 9
    aget-object v1, p3, p1

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v2, "framestats"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const-string v2, "reset"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    or-int/lit8 v0, v0, 0x2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    or-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-wide v1, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 40
    .line 41
    invoke-static {v1, v2, p2, v0}, Landroid/view/ThreadedRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public fence()V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nFence(J)V

    return-void
.end method

.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method public initialize(Landroid/view/Surface;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 8
    .line 9
    .line 10
    iget-wide v1, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 11
    .line 12
    invoke-static {v1, v2, p1}, Landroid/view/ThreadedRenderer;->nInitialize(JLandroid/view/Surface;)V

    .line 13
    .line 14
    .line 15
    return v0
.end method

.method public initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public invalidateRoot()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    return v0
.end method

.method public isRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return v0
.end method

.method public loadSystemProperties()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return v0
.end method

.method public notifyFramePending()V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nNotifyFramePending(J)V

    return-void
.end method

.method public onLayerDestroyed(Landroid/view/HardwareLayer;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nCancelLayerUpdate(JJ)V

    return-void
.end method

.method public pauseSurface(Landroid/view/Surface;)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nPauseSurface(JLandroid/view/Surface;)Z

    move-result p1

    return p1
.end method

.method public pushLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nPushLayerUpdate(JJ)V

    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 4

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterAnimatingRenderNode(JJ)V

    return-void
.end method

.method public registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 2
    .line 3
    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getAnimatorNativePtr()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterVectorDrawableAnimator(JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public removeFrameMetricsObserver(Landroid/view/FrameMetricsObserver;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 2
    .line 3
    iget-object v2, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRemoveFrameMetricsObserver(JJ)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 14
    .line 15
    return-void
.end method

.method public removeRenderNode(Landroid/view/RenderNode;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRemoveRenderNode(JJ)V

    return-void
.end method

.method public serializeDisplayListTree()V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nSerializeDisplayListTree(J)V

    return-void
.end method

.method public setContentDrawBounds(IIII)V
    .locals 6

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nSetContentDrawBounds(JIIII)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return-void
.end method

.method public setLightCenter(Landroid/view/View$AttachInfo;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 6
    .line 7
    .line 8
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v0, v1

    .line 14
    iget v1, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    iget v1, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 19
    .line 20
    iget p1, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    sub-float/2addr v1, p1

    .line 24
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 25
    .line 26
    iget p1, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    .line 27
    .line 28
    invoke-static {v2, v3, v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetLightCenter(JFFF)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setOpaque(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    .line 11
    .line 12
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetOpaque(JZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return-void
.end method

.method public setStopped(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetStopped(JZ)V

    return-void
.end method

.method public setWideGamut(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetWideGamut(JZ)V

    return-void
.end method

.method public setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    .line 2
    .line 3
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p4, :cond_1

    .line 7
    .line 8
    iget v1, p4, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget v2, p4, Landroid/graphics/Rect;->right:I

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget v2, p4, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 26
    .line 27
    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 28
    .line 29
    iget v2, p4, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 32
    .line 33
    add-int/2addr p1, v1

    .line 34
    iget v1, p4, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    add-int/2addr p1, v1

    .line 37
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 38
    .line 39
    add-int/2addr p2, v2

    .line 40
    iget p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 41
    .line 42
    add-int/2addr p2, p1

    .line 43
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 50
    .line 51
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 52
    .line 53
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 54
    .line 55
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 56
    .line 57
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 58
    .line 59
    :goto_0
    iget-object p1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 60
    .line 61
    iget p2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 62
    .line 63
    neg-int p2, p2

    .line 64
    iget p4, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 65
    .line 66
    neg-int p4, p4

    .line 67
    iget v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 68
    .line 69
    iget v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 70
    .line 71
    invoke-virtual {p1, p2, p4, v0, v1}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 72
    .line 73
    .line 74
    iget-wide p1, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 75
    .line 76
    iget p4, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 77
    .line 78
    iget v0, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    .line 79
    .line 80
    iget v1, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    .line 81
    .line 82
    invoke-static {p1, p2, p4, v0, v1}, Landroid/view/ThreadedRenderer;->nSetup(JFII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public stopDrawing()V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nStopDrawing(J)V

    return-void
.end method

.method public updateSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
