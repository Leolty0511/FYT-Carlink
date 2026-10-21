.class public abstract Landroid/view/HardwareRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$Gl20Renderer;,
        Landroid/view/HardwareRenderer$GlRenderer;,
        Landroid/view/HardwareRenderer$GraphDataProvider;,
        Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field public static final LOG_TAG:Ljava/lang/String; = "HardwareRenderer"

.field public static final OVERDRAW_PROPERTY_COUNT:Ljava/lang/String; = "count"

.field public static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field public static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field private static final PROFILE_FRAME_DATA_COUNT:I = 0x3

.field public static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field private static final PROFILE_MAX_FRAMES:I = 0x80

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field public static final PROFILE_PROPERTY_VISUALIZE_LINES:Ljava/lang/String; = "visual_lines"

.field public static final RENDER_DIRTY_REGIONS:Z = true

.field public static final RENDER_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.render_dirty_regions"

.field public static sRendererDisabled:Z = false

.field public static sSystemRendererDisabled:Z = false


# instance fields
.field private mEnabled:Z

.field private mRequested:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/HardwareRenderer;->nLoadProperties()Z

    move-result v0

    return v0
.end method

.method public static beginFrame([I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/HardwareRenderer;->nBeginFrame([I)V

    return-void
.end method

.method public static createGlRenderer(IZ)Landroid/view/HardwareRenderer;
    .locals 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->create(Z)Landroid/view/HardwareRenderer;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown GL version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static disable(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz p0, :cond_0

    .line 2
    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    :cond_0
    return-void
.end method

.method public static endTrimMemory()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/HardwareRenderer$Gl20Renderer;->endTrimMemory()V

    return-void
.end method

.method public static getSystemTime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/HardwareRenderer;->nGetSystemTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/GLES20Canvas;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static isBackBufferPreserved()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/HardwareRenderer;->nIsBackBufferPreserved()Z

    move-result v0

    return v0
.end method

.method private static native nBeginFrame([I)V
.end method

.method private static native nGetSystemTime()J
.end method

.method private static native nIsBackBufferPreserved()Z
.end method

.method private static native nLoadProperties()Z
.end method

.method private static native nPreserveBackBuffer()Z
.end method

.method private static native nSetupShadersDiskCache(Ljava/lang/String;)V
.end method

.method public static preserveBackBuffer()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/HardwareRenderer;->nPreserveBackBuffer()Z

    move-result v0

    return v0
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/view/HardwareRenderer;->nSetupShadersDiskCache(Ljava/lang/String;)V

    return-void
.end method

.method public static startTrimMemory(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->startTrimMemory(I)V

    return-void
.end method

.method public static trimMemory(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    .line 2
    invoke-static {}, Landroid/view/HardwareRenderer;->endTrimMemory()V

    return-void
.end method


# virtual methods
.method public abstract attachFunctor(Landroid/view/View$AttachInfo;I)Z
.end method

.method public abstract cancelLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method public abstract createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;
.end method

.method public abstract createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
.end method

.method public abstract createHardwareLayer(Z)Landroid/view/HardwareLayer;
.end method

.method public abstract createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;
.end method

.method public abstract destroy(Z)V
.end method

.method public abstract destroyHardwareResources(Landroid/view/View;)V
.end method

.method public abstract destroyLayers(Landroid/view/View;)V
.end method

.method public abstract detachFunctor(I)V
.end method

.method public abstract draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)V
.end method

.method public abstract dumpGfxInfo(Ljava/io/PrintWriter;)V
.end method

.method public abstract flushLayerUpdates()V
.end method

.method public abstract getCanvas()Landroid/view/HardwareCanvas;
.end method

.method public abstract getFrameCount()J
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract initialize(Landroid/view/Surface;)Z
.end method

.method public initializeIfNeeded(IILandroid/view/Surface;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/Surface;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/view/HardwareRenderer;->setup(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract invalidate(Landroid/view/Surface;)V
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    return v0
.end method

.method public isRequested()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    return v0
.end method

.method public abstract loadSystemProperties(Landroid/view/Surface;)Z
.end method

.method public abstract pushLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method public abstract safelyRun(Ljava/lang/Runnable;)Z
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    return-void
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public setRequested(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    return-void
.end method

.method public abstract setSurfaceTexture(Landroid/view/HardwareLayer;Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract setup(II)V
.end method

.method public abstract updateSurface(Landroid/view/Surface;)V
.end method

.method public abstract validate()Z
.end method
