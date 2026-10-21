.class public Lcom/google/android/gles_jni/EGLSurfaceImpl;
.super Ljavax/microedition/khronos/egl/EGLSurface;
.source "SourceFile"


# instance fields
.field public mEGLSurface:I

.field private mNativePixelRef:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    .line 3
    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mNativePixelRef:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    .line 5
    iput p1, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mNativePixelRef:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 3
    iget v2, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    iget p1, p1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    return v0
.end method
