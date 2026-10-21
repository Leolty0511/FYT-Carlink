.class public Lcom/google/android/gles_jni/EGLConfigImpl;
.super Ljavax/microedition/khronos/egl/EGLConfig;
.source "SourceFile"


# instance fields
.field private mEGLConfig:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLConfig;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:I

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:I

    return v0
.end method
