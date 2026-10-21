.class public abstract Ljavax/microedition/khronos/egl/EGLContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EGL_INSTANCE:La0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gles_jni/EGLImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/EGLImpl;-><init>()V

    sput-object v0, Ljavax/microedition/khronos/egl/EGLContext;->EGL_INSTANCE:La0/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEGL()La0/b;
    .locals 1

    .line 1
    sget-object v0, Ljavax/microedition/khronos/egl/EGLContext;->EGL_INSTANCE:La0/b;

    return-object v0
.end method


# virtual methods
.method public abstract getGL()Lb0/f;
.end method
