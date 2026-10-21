.class public Landroid/opengl/EGLDisplay;
.super Landroid/opengl/EGLObjectHandle;
.source "SourceFile"


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/EGLObjectHandle;-><init>(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Landroid/opengl/EGLDisplay;

    .line 3
    invoke-virtual {p0}, Landroid/opengl/EGLObjectHandle;->getHandle()I

    move-result v1

    invoke-virtual {p1}, Landroid/opengl/EGLObjectHandle;->getHandle()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method
