.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field private mLocalMatrix:Landroid/graphics/Matrix;

.field public native_instance:I

.field public native_shader:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(II)V
.end method

.method private static native nativeSetLocalMatrix(III)V
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Shader;

    invoke-direct {v0}, Landroid/graphics/Shader;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method

.method public copyLocalMatrix(Landroid/graphics/Shader;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget v0, p0, Landroid/graphics/Shader;->native_instance:I

    iget v1, p0, Landroid/graphics/Shader;->native_shader:I

    invoke-static {v0, v1}, Landroid/graphics/Shader;->nativeDestructor(II)V

    return-void

    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/graphics/Shader;->native_instance:I

    iget v2, p0, Landroid/graphics/Shader;->native_shader:I

    invoke-static {v1, v2}, Landroid/graphics/Shader;->nativeDestructor(II)V

    throw v0
.end method

.method public getLocalMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3
    iget-object p1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLocalMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 2
    iget v0, p0, Landroid/graphics/Shader;->native_instance:I

    iget v1, p0, Landroid/graphics/Shader;->native_shader:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    :goto_0
    invoke-static {v0, v1, p1}, Landroid/graphics/Shader;->nativeSetLocalMatrix(III)V

    return-void
.end method
