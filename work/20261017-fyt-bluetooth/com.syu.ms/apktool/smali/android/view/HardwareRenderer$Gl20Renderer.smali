.class Landroid/view/HardwareRenderer$Gl20Renderer;
.super Landroid/view/HardwareRenderer$GlRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gl20Renderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    }
.end annotation


# static fields
.field private static sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static final sPbufferLock:[Ljava/lang/Object;


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGlCanvas:Landroid/view/GLES20Canvas;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbufferLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/view/HardwareRenderer$GlRenderer;-><init>(IZ)V

    return-void
.end method

.method public static synthetic access$500(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method public static synthetic access$600()Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method public static synthetic access$602(Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 1
    sput-object p0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyHardwareLayer(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyResources(Landroid/view/View;)V

    return-void
.end method

.method public static create(Z)Landroid/view/HardwareRenderer;
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/GLES20Canvas;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/HardwareRenderer$Gl20Renderer;

    invoke-direct {v0, p0}, Landroid/view/HardwareRenderer$Gl20Renderer;-><init>(Z)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static destroyHardwareLayer(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyHardwareLayer(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyResources(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawCurrentFrame(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz p2, :cond_2

    .line 1
    iget-object v2, v0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    iget-object v3, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/view/HardwareRenderer$GraphDataProvider;->setupCurrentFramePaint(Landroid/graphics/Paint;)V

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v4, v0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    iget-object v1, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    aget-object v3, v1, v2

    aget v5, v3, p2

    aget-object v3, v1, v2

    add-int/lit8 v6, p2, 0x1

    aget v6, v3, v6

    aget-object v1, v1, v2

    aget v7, v1, p2

    iget v1, v0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    int-to-float v8, v1

    iget-object v9, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/view/GLES20Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v10, v0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    iget-object v1, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    aget-object v3, v1, v2

    aget v11, v3, p2

    aget-object v3, v1, v2

    add-int/lit8 v4, p2, 0x1

    aget v12, v3, v4

    aget-object v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget v13, v2, v3

    const/4 v2, 0x0

    aget-object v1, v1, v2

    add-int/lit8 v2, p2, 0x3

    aget v14, v1, v2

    iget-object v15, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawGraph(II)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v1}, Landroid/view/HardwareRenderer$GraphDataProvider;->setupGraphPaint(Landroid/graphics/Paint;I)V

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    aget-object v3, v3, v1

    mul-int/lit8 v4, p2, 0x4

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    aget-object v3, v3, v1

    mul-int/lit8 v4, p2, 0x4

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/GLES20Canvas;->drawRects([FILandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawThreshold(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer$GraphDataProvider;->getThreshold()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer$GraphDataProvider;->setupThresholdPaint(Landroid/graphics/Paint;)V

    .line 3
    iget v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    int-to-float v1, v1

    int-to-float p2, p2

    mul-float/2addr v0, p2

    sub-float/2addr v1, v0

    float-to-int p2, v1

    .line 4
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    const/4 v1, 0x0

    int-to-float v4, p2

    int-to-float v3, p1

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static endTrimMemory()V
    .locals 4

    .line 1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_0

    .line 2
    sget-object v2, La0/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, La0/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, La0/a;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_0
    return-void
.end method

.method private initProfileDrawData(Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$GraphDataProvider;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/HardwareRenderer$GraphDataProvider;->getElementCount()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/view/HardwareRenderer$GraphDataProvider;->getFrameCount()I

    move-result v1

    .line 4
    new-array v2, v0, [[F

    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    mul-int/lit8 v4, v1, 0x4

    new-array v4, v4, [F

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 8
    invoke-virtual {p2}, Landroid/view/HardwareRenderer$GraphDataProvider;->getGraphType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 12
    :cond_3
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 13
    iget-object p1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, p1}, Landroid/view/HardwareRenderer$GraphDataProvider;->prepare(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static startTrimMemory(I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/opengl/ManagedEGLContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-static {v0}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    const/16 v0, 0x50

    if-lt p0, v0, :cond_2

    const/4 p0, 0x2

    .line 4
    invoke-static {p0}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    if-lt p0, v0, :cond_3

    const/4 p0, 0x1

    .line 5
    invoke-static {p0}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 8

    .line 1
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbufferLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3057

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v5, v4, v5

    const/4 v6, 0x2

    const/16 v7, 0x3056

    aput v7, v4, v6

    const/4 v6, 0x3

    aput v5, v4, v6

    const/4 v5, 0x4

    const/16 v6, 0x3038

    aput v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, La0/a;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    sput-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v2, p0}, La0/a;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public canDraw()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/HardwareRenderer$GlRenderer;->canDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancelLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0, p1}, Landroid/view/GLES20Canvas;->cancelLayerUpdate(Landroid/view/HardwareLayer;)V

    return-void
.end method

.method public countOverdraw(Landroid/view/HardwareCanvas;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/view/GLES20Canvas;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/GLES20Canvas;->setCountOverdrawEnabled(Z)V

    return-void
.end method

.method public createCanvas()Landroid/view/HardwareCanvas;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/GLES20Canvas;

    iget-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mTranslucent:Z

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;-><init>(Z)V

    iput-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    return-object v0
.end method

.method public createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/GLES20DisplayList;

    invoke-direct {v0, p1}, Landroid/view/GLES20DisplayList;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
    .locals 1

    .line 2
    new-instance v0, Landroid/view/GLES20RenderLayer;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/GLES20RenderLayer;-><init>(IIZ)V

    return-object v0
.end method

.method public createHardwareLayer(Z)Landroid/view/HardwareLayer;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/GLES20TextureLayer;

    invoke-direct {v0, p1}, Landroid/view/GLES20TextureLayer;-><init>(Z)V

    return-object v0
.end method

.method public createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;
    .locals 1

    .line 1
    new-instance p1, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p1, v0}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object p1
.end method

.method public createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/GLES20TextureLayer;

    invoke-virtual {p1}, Landroid/view/GLES20TextureLayer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz p1, :cond_0

    .line 3
    iput-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz p1, :cond_1

    .line 5
    iput-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    :cond_1
    throw v1
.end method

.method public destroyHardwareResources(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/view/HardwareRenderer$Gl20Renderer$2;

    invoke-direct {v0, p0, p1}, Landroid/view/HardwareRenderer$Gl20Renderer$2;-><init>(Landroid/view/HardwareRenderer$Gl20Renderer;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$Gl20Renderer;->safelyRun(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public destroyLayers(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/view/HardwareRenderer$Gl20Renderer$1;

    invoke-direct {v0, p0, p1}, Landroid/view/HardwareRenderer$Gl20Renderer$1;-><init>(Landroid/view/HardwareRenderer$Gl20Renderer;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$Gl20Renderer;->safelyRun(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public drawProfileData(Landroid/view/View$AttachInfo;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    if-eqz v1, :cond_b

    move-object/from16 v2, p1

    .line 2
    invoke-direct {v0, v2, v1}, Landroid/view/HardwareRenderer$Gl20Renderer;->initProfileDrawData(Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$GraphDataProvider;)V

    .line 3
    invoke-virtual {v1}, Landroid/view/HardwareRenderer$GraphDataProvider;->getVerticalUnitSize()I

    move-result v2

    .line 4
    invoke-virtual {v1}, Landroid/view/HardwareRenderer$GraphDataProvider;->getHorizontaUnitMargin()I

    move-result v3

    .line 5
    invoke-virtual {v1}, Landroid/view/HardwareRenderer$GraphDataProvider;->getHorizontalUnitSize()I

    move-result v4

    .line 6
    invoke-virtual {v1}, Landroid/view/HardwareRenderer$GraphDataProvider;->getData()[F

    move-result-object v5

    .line 7
    invoke-virtual {v1}, Landroid/view/HardwareRenderer$GraphDataProvider;->getElementCount()I

    move-result v6

    .line 8
    invoke-virtual {v1}, Landroid/view/HardwareRenderer$GraphDataProvider;->getGraphType()I

    move-result v7

    .line 9
    invoke-virtual {v1}, Landroid/view/HardwareRenderer$GraphDataProvider;->getFrameCount()I

    move-result v8

    mul-int/2addr v8, v6

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    sub-int/2addr v8, v6

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v11, v8, :cond_a

    .line 10
    aget v15, v5, v11

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_1

    goto/16 :goto_6

    :cond_1
    mul-int/lit8 v15, v12, 0x4

    .line 11
    invoke-virtual {v1}, Landroid/view/HardwareRenderer$GraphDataProvider;->getCurrentFrame()I

    move-result v16

    mul-int v10, v16, v6

    if-ne v11, v10, :cond_2

    move v14, v15

    :cond_2
    add-int/2addr v13, v3

    add-int v10, v13, v4

    .line 12
    iget v9, v0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    move-object/from16 v17, v1

    int-to-float v1, v9

    .line 13
    aget v18, v5, v11

    move/from16 v19, v8

    int-to-float v8, v2

    mul-float v18, v18, v8

    sub-float v1, v1, v18

    float-to-int v1, v1

    if-eqz v7, :cond_8

    move/from16 v18, v1

    const/4 v1, 0x1

    if-eq v7, v1, :cond_3

    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v18, v4

    move/from16 v22, v7

    move/from16 v20, v14

    move v3, v1

    goto/16 :goto_5

    :cond_3
    move/from16 v1, v18

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_6

    move/from16 v20, v14

    .line 14
    iget-object v14, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    aget-object v14, v14, v9

    move/from16 v21, v2

    add-int v2, v13, v10

    int-to-float v2, v2

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v2, v2, v18

    .line 15
    aput v2, v14, v15

    add-int/lit8 v2, v15, 0x1

    move/from16 v22, v7

    if-nez v15, :cond_4

    int-to-float v7, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v15, -0x1

    .line 16
    aget v7, v14, v7

    :goto_2
    aput v7, v14, v2

    add-int/lit8 v2, v15, 0x2

    .line 17
    aget v7, v14, v15

    move/from16 v23, v3

    int-to-float v3, v4

    add-float/2addr v7, v3

    aput v7, v14, v2

    add-int/lit8 v2, v15, 0x3

    int-to-float v3, v1

    .line 18
    aput v3, v14, v2

    add-int/lit8 v2, v6, -0x1

    if-ge v9, v2, :cond_5

    add-int v1, v11, v9

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 19
    aget v1, v5, v1

    mul-float/2addr v1, v8

    sub-float/2addr v3, v1

    float-to-int v1, v3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v20

    move/from16 v2, v21

    move/from16 v7, v22

    move/from16 v3, v23

    goto :goto_1

    :cond_6
    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v22, v7

    move/from16 v20, v14

    :cond_7
    move/from16 v18, v4

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    move/from16 v18, v1

    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v22, v7

    move/from16 v20, v14

    move v1, v9

    move/from16 v9, v18

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_7

    .line 20
    iget-object v3, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    aget-object v3, v3, v2

    int-to-float v7, v13

    .line 21
    aput v7, v3, v15

    add-int/lit8 v7, v15, 0x1

    int-to-float v14, v9

    .line 22
    aput v14, v3, v7

    add-int/lit8 v7, v15, 0x2

    move/from16 v18, v4

    int-to-float v4, v10

    .line 23
    aput v4, v3, v7

    add-int/lit8 v4, v15, 0x3

    int-to-float v1, v1

    .line 24
    aput v1, v3, v4

    add-int/lit8 v1, v6, -0x1

    if-ge v2, v1, :cond_9

    add-int v1, v11, v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 25
    aget v1, v5, v1

    mul-float/2addr v1, v8

    sub-float/2addr v14, v1

    float-to-int v1, v14

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    move v1, v9

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v18

    move/from16 v24, v9

    move v9, v1

    move/from16 v1, v24

    goto :goto_3

    :goto_5
    add-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v6

    move v9, v3

    move v13, v10

    move-object/from16 v1, v17

    move/from16 v4, v18

    move/from16 v8, v19

    move/from16 v14, v20

    move/from16 v2, v21

    move/from16 v7, v22

    move/from16 v3, v23

    goto/16 :goto_0

    :cond_a
    :goto_6
    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v22, v7

    add-int v13, v13, v23

    move/from16 v1, v22

    .line 26
    invoke-direct {v0, v1, v12}, Landroid/view/HardwareRenderer$Gl20Renderer;->drawGraph(II)V

    .line 27
    invoke-direct {v0, v1, v14}, Landroid/view/HardwareRenderer$Gl20Renderer;->drawCurrentFrame(II)V

    move/from16 v1, v21

    .line 28
    invoke-direct {v0, v13, v1}, Landroid/view/HardwareRenderer$Gl20Renderer;->drawThreshold(II)V

    :cond_b
    return-void
.end method

.method public flushLayerUpdates()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0}, Landroid/view/GLES20Canvas;->flushLayerUpdates()V

    return-void
.end method

.method public getConfig(Z)[I
    .locals 7

    .line 1
    invoke-static {}, Landroid/view/GLES20Canvas;->getStencilSize()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x400

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/16 v2, 0x13

    new-array v2, v2, [I

    const/16 v3, 0x3040

    aput v3, v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x4

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v5, 0x3024

    aput v5, v2, v3

    const/4 v3, 0x3

    const/16 v5, 0x8

    aput v5, v2, v3

    const/16 v3, 0x3023

    aput v3, v2, v4

    const/4 v3, 0x5

    aput v5, v2, v3

    const/4 v3, 0x6

    const/16 v6, 0x3022

    aput v6, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x3021

    aput v3, v2, v5

    const/16 v3, 0x9

    aput v5, v2, v3

    const/16 v3, 0xa

    const/16 v5, 0x3025

    aput v5, v2, v3

    const/16 v3, 0xb

    aput v1, v2, v3

    const/16 v1, 0xc

    const/16 v3, 0x3027

    aput v3, v2, v1

    const/16 v1, 0xd

    const/16 v3, 0x3038

    aput v3, v2, v1

    const/16 v1, 0xe

    const/16 v5, 0x3026

    aput v5, v2, v1

    const/16 v1, 0xf

    aput v0, v2, v1

    const/16 v0, 0x10

    const/16 v1, 0x3033

    aput v1, v2, v0

    const/16 v0, 0x11

    or-int/2addr p1, v4

    aput p1, v2, v0

    const/16 p1, 0x12

    aput v3, v2, p1

    return-object v2
.end method

.method public getOverdraw(Landroid/view/HardwareCanvas;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/view/GLES20Canvas;

    invoke-virtual {p1}, Landroid/view/GLES20Canvas;->getOverdraw()F

    move-result p1

    return p1
.end method

.method public initAtlas()V
    .locals 4

    const-string v0, "assetatlas"

    .line 1
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/view/IAssetAtlas$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAssetAtlas;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/IAssetAtlas;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Landroid/view/IAssetAtlas;->getBuffer()Landroid/view/GraphicBuffer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v1}, Landroid/view/IAssetAtlas;->getMap()[I

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v2, v3}, Landroid/view/GLES20Canvas;->initAtlas(Landroid/view/GraphicBuffer;[I)V

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 8
    invoke-virtual {v2}, Landroid/view/GraphicBuffer;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire atlas"

    .line 9
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public initCaches()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/GLES20Canvas;->initCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->initAtlas()V

    :cond_0
    return-void
.end method

.method public onPostDraw()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0}, Landroid/view/GLES20Canvas;->onPostDraw()V

    return-void
.end method

.method public onPreDraw(Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0, p1}, Landroid/view/GLES20Canvas;->onPreDraw(Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method public pushLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0, p1}, Landroid/view/GLES20Canvas;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    return-void
.end method

.method public safelyRun(Ljava/lang/Runnable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContext()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 2
    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    if-nez v3, :cond_2

    return v1

    .line 3
    :cond_2
    invoke-virtual {v3}, Landroid/opengl/ManagedEGLContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-static {v1}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 4
    :cond_3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 5
    sget-object p1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, La0/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, La0/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v0, v1, v1, v3}, La0/a;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_4
    return v2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_5

    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, La0/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, La0/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, La0/a;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_5
    throw p1
.end method

.method public setSurfaceTexture(Landroid/view/HardwareLayer;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/GLES20TextureLayer;

    invoke-virtual {p1, p2}, Landroid/view/GLES20TextureLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
