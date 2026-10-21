.class public abstract Ljavax/microedition/khronos/egl/EGLContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EGL_INSTANCE:Lq/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gles_jni/EGLImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/EGLImpl;-><init>()V

    sput-object v0, Ljavax/microedition/khronos/egl/EGLContext;->EGL_INSTANCE:Lq/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEGL()Lq/b;
    .locals 1

    sget-object v0, Ljavax/microedition/khronos/egl/EGLContext;->EGL_INSTANCE:Lq/b;

    return-object v0
.end method


# virtual methods
.method public abstract getGL()Lr/f;
.end method
