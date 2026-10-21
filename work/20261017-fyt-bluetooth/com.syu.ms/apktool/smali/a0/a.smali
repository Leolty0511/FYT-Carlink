.class public interface abstract La0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/b;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public static final c:Ljavax/microedition/khronos/egl/EGLContext;

.field public static final d:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(I)V

    sput-object v0, La0/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 2
    new-instance v0, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(I)V

    sput-object v0, La0/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(I)V

    sput-object v0, La0/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method


# virtual methods
.method public abstract eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public abstract eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
.end method

.method public abstract eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
.end method

.method public abstract eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
.end method

.method public abstract eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
.end method

.method public abstract eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
.end method

.method public abstract eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public abstract eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public abstract eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public abstract eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public abstract eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
.end method

.method public abstract eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
.end method

.method public abstract eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
.end method

.method public abstract eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
.end method

.method public abstract eglGetError()I
.end method

.method public abstract eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
.end method

.method public abstract eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public abstract eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
.end method

.method public abstract eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
.end method

.method public abstract eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
.end method

.method public abstract eglReleaseThread()Z
.end method

.method public abstract eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public abstract eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
.end method

.method public abstract eglWaitGL()Z
.end method

.method public abstract eglWaitNative(ILjava/lang/Object;)Z
.end method
