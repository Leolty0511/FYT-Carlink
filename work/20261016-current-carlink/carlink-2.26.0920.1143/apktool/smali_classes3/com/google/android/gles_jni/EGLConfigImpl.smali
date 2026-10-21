.class public Lcom/google/android/gles_jni/EGLConfigImpl;
.super Ljavax/microedition/khronos/egl/EGLConfig;
.source "SourceFile"


# instance fields
.field private mEGLConfig:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLConfig;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public get()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:J

    return-wide v0
.end method
