.class abstract Landroid/view/HardwareRenderer$GlRenderer;
.super Landroid/view/HardwareRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GlRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;,
        Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;
    }
.end annotation


# static fields
.field public static final FUNCTOR_PROCESS_DELAY:I = 0x4

.field private static final OVERDRAW:[Ljava/lang/String;

.field private static final OVERDRAW_TYPE_COUNT:I = 0x1

.field private static final PROFILE_DRAW_COLORS:[I

.field private static final PROFILE_DRAW_CURRENT_FRAME_COLOR:I = -0x30a055b3

.field private static final PROFILE_DRAW_DP_PER_MS:I = 0x7

.field private static final PROFILE_DRAW_MARGIN:I = 0x0

.field private static final PROFILE_DRAW_THRESHOLD_COLOR:I = -0xa055b3

.field private static final PROFILE_DRAW_THRESHOLD_STROKE_WIDTH:I = 0x2

.field private static final PROFILE_DRAW_WIDTH:I = 0x3

.field public static final SURFACE_STATE_ERROR:I = 0x0

.field public static final SURFACE_STATE_SUCCESS:I = 0x1

.field public static final SURFACE_STATE_UPDATED:I = 0x2

.field private static final VISUALIZERS:[Ljava/lang/String;

.field public static sDirtyRegions:Z

.field public static final sDirtyRegionsRequested:Z

.field public static sEgl:La0/a;

.field public static sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field public static final sEglContextStorage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/opengl/ManagedEGLContext;",
            ">;"
        }
    .end annotation
.end field

.field public static sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public static final sEglLock:[Ljava/lang/Object;


# instance fields
.field public mCanvas:Landroid/view/HardwareCanvas;

.field public mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

.field public mDebugDirtyRegions:Z

.field public mDebugOverdraw:I

.field public mDebugOverdrawLayer:Landroid/view/HardwareLayer;

.field public mDebugOverdrawPaint:Landroid/graphics/Paint;

.field public mDebugPaint:Landroid/graphics/Paint;

.field private mDestroyed:Z

.field public mDirtyRegionsEnabled:Z

.field private mDrawDelta:J

.field public mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field public mEglThread:Ljava/lang/Thread;

.field public mFrameCount:J

.field private final mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

.field public mGl:Lb0/f;

.field public final mGlVersion:I

.field public mHeight:I

.field public mName:Ljava/lang/String;

.field public mProfileCurrentFrame:I

.field public mProfileData:[F

.field public mProfileEnabled:Z

.field public mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mProfilePaint:Landroid/graphics/Paint;

.field public mProfileShapes:[[F

.field public mProfileVisualizerType:I

.field private final mRedrawClip:Landroid/graphics/Rect;

.field private final mSurfaceSize:[I

.field public final mTranslucent:Z

.field public mUpdateDirtyRegions:Z

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/HardwareRenderer$GlRenderer;->PROFILE_DRAW_COLORS:[I

    const-string/jumbo v0, "visual_bars"

    const-string/jumbo v1, "visual_lines"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/HardwareRenderer$GlRenderer;->VISUALIZERS:[Ljava/lang/String;

    const-string/jumbo v0, "show"

    const-string v1, "count"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/HardwareRenderer$GlRenderer;->OVERDRAW:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    sput-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    const-string v0, "debug.hwui.render_dirty_regions"

    const-string/jumbo v1, "true"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    .line 8
    sput-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegionsRequested:Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x30c19934
        -0x3023c6ee
        -0x30196800
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/HardwareRenderer;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 3
    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    const/4 v1, -0x3

    .line 4
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 5
    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurfaceSize:[I

    .line 8
    new-instance v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-direct {v0, p0}, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;-><init>(Landroid/view/HardwareRenderer$GlRenderer;)V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    const-wide v0, 0x7fffffffffffffffL

    .line 9
    iput-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 10
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    .line 11
    iput-boolean p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mTranslucent:Z

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->loadSystemProperties(Landroid/view/Surface;)Z

    return-void
.end method

.method public static synthetic access$100(Landroid/view/HardwareRenderer$GlRenderer;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/view/HardwareRenderer$GlRenderer;Landroid/view/View$AttachInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/HardwareRenderer$GlRenderer;->handleFunctorStatus(Landroid/view/View$AttachInfo;I)V

    return-void
.end method

.method public static synthetic access$300(IF)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400()[I
    .locals 1

    .line 1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->PROFILE_DRAW_COLORS:[I

    return-object v0
.end method

.method private beginFrame(Landroid/view/HardwareCanvas;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 1
    invoke-static {v0}, Landroid/view/HardwareRenderer;->beginFrame([I)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurfaceSize:[I

    .line 3
    invoke-static {p3}, Landroid/view/HardwareRenderer;->beginFrame([I)V

    const/4 v1, 0x1

    .line 4
    aget v2, p3, v1

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    aget v2, p3, v4

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    if-eq v2, v3, :cond_2

    .line 5
    :cond_1
    aget p2, p3, v4

    iput p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    .line 6
    aget p3, p3, v1

    iput p3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->setViewport(II)V

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p2

    :goto_2
    return-object v0
.end method

.method private buildDisplayList(Landroid/view/View;Landroid/view/HardwareCanvas;)Landroid/view/DisplayList;
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    return-object p1

    .line 3
    :cond_0
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 4
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->startBuildDisplayListProfiling()J

    move-result-wide v0

    .line 6
    invoke-virtual {p2}, Landroid/view/HardwareCanvas;->clearLayerUpdates()V

    const-wide/16 v2, 0x8

    const-string p2, "getDisplayList"

    .line 7
    invoke-static {v2, v3, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object p1

    .line 9
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 10
    invoke-direct {p0, v0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->endBuildDisplayListProfiling(J)V

    return-object p1
.end method

.method private checkEglErrorsForced()V
    .locals 3

    .line 1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {v0}, La0/a;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EGL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HardwareRenderer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->fallback(Z)V

    :cond_1
    return-void
.end method

.method private checkRenderContextUnsafe()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, La0/a;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {v2}, La0/a;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, La0/a;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglMakeCurrent failed "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {v3}, La0/a;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HardwareRenderer"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->fallback(Z)V

    return v2

    .line 5
    :cond_2
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->enableDirtyRegions()V

    .line 7
    iput-boolean v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 13

    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v0, v0, [I

    .line 1
    sget-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->getConfig(Z)[I

    move-result-object v8

    const-string v1, "debug.hwui.print_config"

    const-string v2, ""

    .line 2
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "all"

    .line 3
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v8

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, La0/a;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 5
    aget v11, v0, v10

    new-array v12, v11, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 6
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget v5, v0, v10

    move-object v4, v12

    invoke-interface/range {v1 .. v6}, La0/a;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move v1, v10

    :goto_0
    if-ge v1, v11, :cond_0

    .line 7
    aget-object v2, v12, v1

    .line 8
    invoke-static {v2}, Landroid/view/HardwareRenderer$GlRenderer;->printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v3, v8

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, La0/a;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    aget v0, v0, v10

    if-lez v0, :cond_2

    const-string v0, "choice"

    .line 11
    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    aget-object v0, v7, v10

    invoke-static {v0}, Landroid/view/HardwareRenderer$GlRenderer;->printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 13
    :cond_1
    aget-object v0, v7, v10

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {v2}, La0/a;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createSurface(Landroid/view/Surface;)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, La0/a;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p1, :cond_2

    .line 2
    sget-object v0, La0/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, p1, p1, v2}, La0/a;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->enableDirtyRegions()V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {v1}, La0/a;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    sget-object p1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {p1}, La0/a;->eglGetError()I

    move-result p1

    const/16 v0, 0x300b

    if-ne p1, v0, :cond_3

    const-string p1, "HardwareRenderer"

    const-string v0, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createWindowSurface failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x7fff0000

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {p0, v0, v2, v1}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v0

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    if-eq v0, v2, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/view/HardwareLayer;->resize(II)Z

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0, p3, p2}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/view/HardwareCanvas;

    move-result-object p2

    .line 9
    invoke-virtual {p0, p2}, Landroid/view/HardwareRenderer$GlRenderer;->countOverdraw(Landroid/view/HardwareCanvas;)V

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p2, p4, v2, v1}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    .line 12
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13
    iget-object p4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {p4, p3}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 14
    invoke-virtual {p0, p2}, Landroid/view/HardwareRenderer$GlRenderer;->getOverdraw(Landroid/view/HardwareCanvas;)F

    move-result p2

    .line 15
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 16
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p3, p2, p1}, Landroid/view/HardwareRenderer$GlRenderer;->drawOverdrawCounter(Landroid/view/HardwareCanvas;FF)V

    :cond_4
    return-void
.end method

.method private static dpToPx(IF)I
    .locals 0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private drawDisplayList(Landroid/view/View$AttachInfo;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;I)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x8

    const-string v4, "drawDisplayList"

    .line 3
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-virtual {p2, p3, v4, v5}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr p2, p4

    .line 5
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 6
    iget-boolean p3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz p3, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p3

    sub-long/2addr p3, v0

    long-to-float p3, p3

    const p4, 0x358637bd    # 1.0E-6f

    mul-float/2addr p3, p4

    .line 8
    iget-object p4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/2addr v0, v5

    aput p3, p4, v0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/view/HardwareRenderer$GlRenderer;->handleFunctorStatus(Landroid/view/View$AttachInfo;I)V

    return p2

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private drawOverdrawCounter(Landroid/view/HardwareCanvas;FF)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%.2fx"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p3}, Landroid/view/HardwareRenderer$GlRenderer;->setupPaint(F)Landroid/graphics/Paint;

    move-result-object v1

    const v2, 0x3e8f5c29    # 0.28f

    mul-float/2addr p2, v2

    const/high16 v3, 0x40600000    # 3.5f

    div-float/2addr p2, v3

    sub-float/2addr v2, p2

    const p2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v2, p2, v3}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p3, p2

    .line 4
    iget p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    int-to-float p2, p2

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr p2, v2

    invoke-virtual {p1, v0, p3, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private enableDirtyRegions()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/HardwareRenderer;->preserveBackBuffer()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    if-nez v0, :cond_1

    const-string v0, "HardwareRenderer"

    const-string v1, "Backbuffer cannot be preserved"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegionsRequested:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Landroid/view/HardwareRenderer;->isBackBufferPreserved()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private endBuildDisplayListProfiling(J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    long-to-float p1, v0

    const p2, 0x358637bd    # 1.0E-6f

    mul-float/2addr p1, p2

    .line 3
    iget-object p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    aput p1, p2, v0

    :cond_0
    return-void
.end method

.method private fallback(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    const-string p1, "HardwareRenderer"

    const-string v0, "Mountain View, we\'ve had a problem here. Switching back to software rendering."

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private handleFunctorStatus(Landroid/view/View$AttachInfo;I)V
    .locals 3

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 4
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    .line 5
    iget-object p2, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    :cond_2
    iget-object p2, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    iput-object p1, p2, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    .line 8
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private loadEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    const-string v1, "eglConfig not initialized"

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    .line 4
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private prepareFrame(Landroid/graphics/Rect;)I
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "prepareFrame"

    .line 1
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->onPreDraw(Landroid/graphics/Rect;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private static printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EGL configuration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HardwareRenderer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v4, 0x3024

    invoke-interface {v1, v3, p0, v4, v0}, La0/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  RED_SIZE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3023

    invoke-interface {v1, v4, p0, v5, v0}, La0/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  GREEN_SIZE = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3022

    invoke-interface {v1, v4, p0, v5, v0}, La0/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  BLUE_SIZE = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3021

    invoke-interface {v1, v4, p0, v5, v0}, La0/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ALPHA_SIZE = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3025

    invoke-interface {v1, v4, p0, v5, v0}, La0/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  DEPTH_SIZE = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3026

    invoke-interface {v1, v4, p0, v5, v0}, La0/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  STENCIL_SIZE = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3032

    invoke-interface {v1, v4, p0, v5, v0}, La0/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  SAMPLE_BUFFERS = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3031

    invoke-interface {v1, v4, p0, v5, v0}, La0/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  SAMPLES = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3033

    invoke-interface {v1, v4, p0, v5, v0}, La0/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  SURFACE_TYPE = 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3027

    invoke-interface {v1, v4, p0, v5, v0}, La0/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  CONFIG_CAVEAT = 0x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static search([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private setupPaint(F)Landroid/graphics/Paint;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, p1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 5
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private startBuildDisplayListProfiling()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 3
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private swapBuffers(I)V
    .locals 4

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x0

    .line 1
    iget-boolean p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3
    :cond_0
    sget-object p1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, v2, v3}, La0/a;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 4
    iget-boolean p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-float p1, v2

    const v0, 0x358637bd    # 1.0E-6f

    mul-float/2addr p1, v0

    .line 6
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v1, v1, 0x2

    aput p1, v0, v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrors()V

    :cond_2
    return-void
.end method


# virtual methods
.method public attachFunctor(Landroid/view/View$AttachInfo;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Landroid/view/HardwareCanvas;->attachFunctor(I)V

    .line 3
    iget-object p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    iput-object p1, p2, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    .line 4
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public canDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Lb0/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkEglErrors()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrorsForced()V

    :cond_0
    return-void
.end method

.method public checkRenderContext()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware acceleration can only be used with a single UI thread.\nOriginal thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract countOverdraw(Landroid/view/HardwareCanvas;)V
.end method

.method public abstract createCanvas()Landroid/view/HardwareCanvas;
.end method

.method public createContext(La0/a;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3098

    aput v2, v0, v1

    .line 1
    iget v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 2
    sget-object v2, La0/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, p3, v2, v0}, La0/a;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not create an EGL context. eglCreateContext failed with error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {p3}, La0/a;->eglGetError()I

    move-result p3

    invoke-static {p3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createEglSurface(Landroid/view/Surface;)Lb0/f;
    .locals 2

    .line 1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->destroySurface()V

    .line 6
    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createSurface(Landroid/view/Surface;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initCaches()V

    .line 8
    iget-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Lb0/f;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "HardwareRenderer cannot be used from multiple threads"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglConfig not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglDisplay not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "egl not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;
.end method

.method public destroy(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz p1, :cond_0

    .line 2
    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->destroySurface()V

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    .line 7
    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Lb0/f;

    return-void

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    return-void
.end method

.method public destroySurface()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, La0/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 2
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    const/16 v3, 0x3059

    invoke-interface {v2, v3}, La0/a;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, La0/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v1, v1, v3}, La0/a;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 4
    :cond_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, La0/a;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method

.method public detachFunctor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/HardwareCanvas;->detachFunctor(I)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/HardwareRenderer$GlRenderer;->canDraw()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/HardwareRenderer$GlRenderer;->hasDirtyRegions()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p4

    :goto_0
    const/4 v5, 0x1

    .line 3
    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v3, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 5
    iget v5, v2, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/view/View;->mPrivateFlags:I

    .line 6
    invoke-direct/range {p0 .. p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v5

    if-eqz v5, :cond_7

    .line 7
    iget-object v6, v1, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 8
    iput-object v6, v3, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 9
    iget-boolean v7, v1, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v7, :cond_1

    .line 10
    iget-object v7, v1, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    :cond_1
    invoke-direct {v1, v6, v0, v5}, Landroid/view/HardwareRenderer$GlRenderer;->beginFrame(Landroid/view/HardwareCanvas;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 12
    invoke-direct {v1, v2, v6}, Landroid/view/HardwareRenderer$GlRenderer;->buildDisplayList(Landroid/view/View;Landroid/view/HardwareCanvas;)Landroid/view/DisplayList;

    move-result-object v7

    .line 13
    invoke-direct/range {p0 .. p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 14
    :cond_2
    invoke-static {}, Landroid/view/HardwareRenderer;->getSystemTime()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    .line 15
    :try_start_0
    invoke-direct {v1, v5}, Landroid/view/HardwareRenderer$GlRenderer;->prepareFrame(Landroid/graphics/Rect;)I

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-interface {v4, v6}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/HardwareCanvas;)V

    if-eqz v7, :cond_3

    .line 18
    invoke-direct {v1, v3, v6, v7, v15}, Landroid/view/HardwareRenderer$GlRenderer;->drawDisplayList(Landroid/view/View$AttachInfo;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;I)I

    move-result v0

    or-int/2addr v15, v0

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :goto_1
    invoke-interface {v4, v6}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 21
    invoke-virtual {v6, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 22
    iput-boolean v14, v2, Landroid/view/View;->mRecreateDisplayList:Z

    .line 23
    invoke-static {}, Landroid/view/HardwareRenderer;->getSystemTime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    iput-wide v10, v1, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    cmp-long v0, v10, v12

    if-lez v0, :cond_4

    .line 24
    :goto_2
    iget-wide v8, v1, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v1, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 25
    invoke-direct {v1, v3, v5, v6, v7}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 26
    invoke-direct {v1, v5, v6}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    .line 27
    invoke-virtual {v1, v3}, Landroid/view/HardwareRenderer$GlRenderer;->drawProfileData(Landroid/view/View$AttachInfo;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v10, v14

    goto :goto_3

    :catchall_0
    move-exception v0

    move v10, v14

    goto :goto_5

    :catch_2
    move-exception v0

    move v10, v14

    move v15, v10

    :goto_3
    :try_start_3
    const-string v11, "HardwareRenderer"

    const-string v12, "An error has occurred while drawing:"

    .line 28
    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    invoke-interface {v4, v6}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 30
    invoke-virtual {v6, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 31
    iput-boolean v14, v2, Landroid/view/View;->mRecreateDisplayList:Z

    .line 32
    invoke-static {}, Landroid/view/HardwareRenderer;->getSystemTime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    iput-wide v10, v1, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v8, 0x0

    cmp-long v0, v10, v8

    if-lez v0, :cond_4

    goto :goto_2

    .line 33
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/HardwareRenderer$GlRenderer;->onPostDraw()V

    .line 34
    invoke-direct {v1, v15}, Landroid/view/HardwareRenderer$GlRenderer;->swapBuffers(I)V

    .line 35
    iget-boolean v0, v1, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v0, :cond_5

    .line 36
    iget-object v0, v1, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 37
    :cond_5
    iput-boolean v14, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 38
    :goto_5
    invoke-interface {v4, v6}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 39
    invoke-virtual {v6, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 40
    iput-boolean v14, v2, Landroid/view/View;->mRecreateDisplayList:Z

    .line 41
    invoke-static {}, Landroid/view/HardwareRenderer;->getSystemTime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    iput-wide v10, v1, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v8, 0x0

    cmp-long v2, v10, v8

    if-lez v2, :cond_6

    .line 42
    iget-wide v8, v1, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v1, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 43
    invoke-direct {v1, v3, v5, v6, v7}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 44
    invoke-direct {v1, v5, v6}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    .line 45
    invoke-virtual {v1, v3}, Landroid/view/HardwareRenderer$GlRenderer;->drawProfileData(Landroid/view/View$AttachInfo;)V

    :cond_6
    throw v0

    :cond_7
    :goto_6
    return-void
.end method

.method public abstract drawProfileData(Landroid/view/View$AttachInfo;)V
.end method

.method public dumpGfxInfo(Ljava/io/PrintWriter;)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->hasDirtyRegions()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Enable"

    goto :goto_0

    :cond_0
    const-string v2, "Disabled"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\n\tDirty Regions: %s\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2
    iget-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v1, :cond_3

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "\n\tDraw\tProcess\tExecute\n"

    .line 3
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 4
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move v1, v3

    .line 5
    :goto_1
    :try_start_0
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 6
    aget v4, v2, v1

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "\t%3.2f\t%3.2f\t%3.2f\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 7
    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v3

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v6, v1, 0x1

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v0

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v7, v1, 0x2

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v5, v8

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 8
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v2, v7

    aput v4, v2, v6

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 9
    :cond_2
    :goto_2
    array-length p1, v2

    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public getCanvas()Landroid/view/HardwareCanvas;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    return-object v0
.end method

.method public abstract getConfig(Z)[I
.end method

.method public getFrameCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    return v0
.end method

.method public abstract getOverdraw(Landroid/view/HardwareCanvas;)F
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    return v0
.end method

.method public hasDirtyRegions()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    return v0
.end method

.method public abstract initAtlas()V
.end method

.method public abstract initCaches()V
.end method

.method public initialize(Landroid/view/Surface;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initializeEgl()Z

    move-result v0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createEglSurface(Landroid/view/Surface;)Lb0/f;

    move-result-object p1

    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Lb0/f;

    .line 4
    iput-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    if-eqz p1, :cond_3

    .line 5
    sget-object p1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {p1}, La0/a;->eglGetError()I

    move-result p1

    const/16 v2, 0x3000

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->createCanvas()Landroid/view/HardwareCanvas;

    move-result-object p1

    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 10
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/view/HardwareCanvas;->setName(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initAtlas()V

    .line 13
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz p1, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public initializeEgl()Z
    .locals 4

    .line 1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    if-nez v1, :cond_2

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()La0/b;

    move-result-object v1

    check-cast v1, La0/a;

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    .line 4
    sget-object v2, La0/a;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, La0/a;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 5
    sget-object v2, La0/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 6
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, La0/a;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrorsForced()V

    .line 8
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->loadEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglInitialize failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {v3}, La0/a;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglGetDisplay failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {v3}, La0/a;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/ManagedEGLContext;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Landroid/opengl/ManagedEGLContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    .line 15
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_4

    .line 16
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/HardwareRenderer$GlRenderer;->createContext(La0/a;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 17
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public invalidate(Landroid/view/Surface;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, La0/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, La0/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, La0/a;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 3
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, La0/a;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createSurface(Landroid/view/Surface;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    .line 9
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public loadSystemProperties(Landroid/view/Surface;)Z
    .locals 8

    const-string p1, "debug.hwui.profile"

    .line 1
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->VISUALIZERS:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3
    :goto_0
    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    const/4 v5, 0x0

    if-eq v0, v4, :cond_2

    .line 4
    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    .line 5
    iput-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    .line 6
    iput-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_1

    .line 7
    new-instance v4, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;

    invoke-direct {v4, p0, v0}, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;-><init>(Landroid/view/HardwareRenderer$GlRenderer;I)V

    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    goto :goto_1

    .line 8
    :cond_1
    iput-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-nez v3, :cond_3

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 10
    :cond_3
    iget-boolean p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    const-string v4, "HardwareRenderer"

    if-eq v3, p1, :cond_6

    .line 11
    iput-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v3, :cond_5

    const-string p1, "Profiling hardware renderer"

    .line 12
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x80

    const-string v0, "debug.hwui.profile.maxframes"

    .line 13
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    .line 14
    new-array p1, p1, [F

    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    move p1, v1

    .line 15
    :goto_3
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v3, v0

    if-ge p1, v3, :cond_4

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v6, p1, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    .line 16
    aput v7, v0, v6

    aput v7, v0, v3

    aput v7, v0, p1

    add-int/lit8 p1, p1, 0x3

    goto :goto_3

    .line 17
    :cond_4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_4

    .line 18
    :cond_5
    iput-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    .line 19
    iput-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    :goto_4
    const/4 p1, -0x3

    .line 21
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    move v0, v2

    :cond_6
    const-string p1, "debug.hwui.show_dirty_regions"

    .line 22
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 23
    iget-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eq p1, v1, :cond_8

    .line 24
    iput-boolean p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eqz p1, :cond_7

    const-string p1, "Debugging dirty regions"

    .line 25
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v2

    :cond_8
    const-string p1, "debug.hwui.overdraw"

    .line 26
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->OVERDRAW:[Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/view/HardwareRenderer$GlRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 28
    iget v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    if-eq p1, v1, :cond_a

    .line 29
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    if-eq p1, v2, :cond_9

    .line 30
    iget-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    if-eqz p1, :cond_9

    .line 31
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->destroy()V

    .line 32
    iput-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    .line 33
    iput-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    :cond_9
    move v0, v2

    .line 34
    :cond_a
    invoke-static {}, Landroid/view/HardwareRenderer;->access$000()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move v2, v0

    :goto_5
    return v2
.end method

.method public onPostDraw()V
    .locals 0

    return-void
.end method

.method public onPreDraw(Landroid/graphics/Rect;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mName:Ljava/lang/String;

    return-void
.end method

.method public setup(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 3
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    .line 4
    iput p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    :cond_0
    return-void
.end method

.method public updateSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createEglSurface(Landroid/view/Surface;)Lb0/f;

    :cond_0
    return-void
.end method

.method public validate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContext()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
