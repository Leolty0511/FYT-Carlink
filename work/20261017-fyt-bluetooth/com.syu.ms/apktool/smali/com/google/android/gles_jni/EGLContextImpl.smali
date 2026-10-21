.class public Lcom/google/android/gles_jni/EGLContextImpl;
.super Ljavax/microedition/khronos/egl/EGLContext;
.source "SourceFile"


# instance fields
.field public mEGLContext:I

.field private mGLContext:Lcom/google/android/gles_jni/GLImpl;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLContext;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    .line 3
    new-instance p1, Lcom/google/android/gles_jni/GLImpl;

    invoke-direct {p1}, Lcom/google/android/gles_jni/GLImpl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

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
    check-cast p1, Lcom/google/android/gles_jni/EGLContextImpl;

    .line 3
    iget v2, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    iget p1, p1, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

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

.method public getGL()Lb0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    return v0
.end method
