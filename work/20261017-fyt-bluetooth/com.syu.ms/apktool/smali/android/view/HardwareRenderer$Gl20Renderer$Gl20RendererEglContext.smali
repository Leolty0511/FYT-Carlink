.class Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
.super Landroid/opengl/ManagedEGLContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer$Gl20Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gl20RendererEglContext"
.end annotation


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/ManagedEGLContext;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onTerminate(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext$1;

    invoke-direct {v1, p0, p1}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext$1;-><init>(Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 5
    :cond_1
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v1}, Lcom/google/android/gles_jni/EGLImpl;->getInitCount(Ljavax/microedition/khronos/egl/EGLDisplay;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->access$500(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 7
    invoke-static {}, Landroid/view/GLES20Canvas;->terminateCaches()V

    .line 8
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, p1}, La0/a;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 9
    sget-object p1, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 11
    sget-object p1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {}, Landroid/view/HardwareRenderer$Gl20Renderer;->access$600()Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-interface {p1, v2, v3}, La0/a;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 12
    sget-object p1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, La0/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, La0/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v2, v3, v3, v4}, La0/a;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 13
    sget-object p1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    invoke-interface {p1}, La0/a;->eglReleaseThread()Z

    .line 14
    sget-object p1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {p1, v2}, La0/a;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 15
    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:La0/a;

    .line 16
    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 17
    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 18
    invoke-static {v1}, Landroid/view/HardwareRenderer$Gl20Renderer;->access$602(Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 19
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
