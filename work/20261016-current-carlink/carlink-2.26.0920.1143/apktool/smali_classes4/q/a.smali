.class public interface abstract Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/b;


# static fields
.field public static final a:Lcom/google/android/gles_jni/EGLDisplayImpl;

.field public static final b:Lcom/google/android/gles_jni/EGLContextImpl;

.field public static final c:Lcom/google/android/gles_jni/EGLSurfaceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lq/a;->a:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gles_jni/EGLContextImpl;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lq/a;->b:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lq/a;->c:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 23
    .line 24
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
