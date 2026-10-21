.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "SourceFile"


# static fields
.field private static final TYPE_PORTERDUFFMODE:I = 0x2

.field private static final TYPE_XFERMODE:I = 0x1


# instance fields
.field private mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

.field private final mShaderA:Landroid/graphics/Shader;

.field private final mShaderB:Landroid/graphics/Shader;

.field private mType:I

.field private mXferMode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Landroid/graphics/ComposeShader;->mType:I

    .line 13
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 14
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 15
    iput-object p3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    .line 16
    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    iget v1, p2, Landroid/graphics/Shader;->native_instance:I

    iget v2, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/ComposeShader;->nativeCreate2(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    .line 17
    iget p1, p1, Landroid/graphics/Shader;->native_shader:I

    iget p2, p2, Landroid/graphics/Shader;->native_shader:I

    iget p3, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/ComposeShader;->nativePostCreate2(IIII)I

    move-result p1

    iput p1, p0, Landroid/graphics/Shader;->native_shader:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/graphics/ComposeShader;->mType:I

    .line 3
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 4
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 5
    iput-object p3, p0, Landroid/graphics/ComposeShader;->mXferMode:Landroid/graphics/Xfermode;

    .line 6
    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    iget v1, p2, Landroid/graphics/Shader;->native_instance:I

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    iget v3, p3, Landroid/graphics/Xfermode;->native_instance:I

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v0, v1, v3}, Landroid/graphics/ComposeShader;->nativeCreate1(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    .line 7
    instance-of v1, p3, Landroid/graphics/PorterDuffXfermode;

    if-eqz v1, :cond_2

    .line 8
    check-cast p3, Landroid/graphics/PorterDuffXfermode;

    iget-object p3, p3, Landroid/graphics/PorterDuffXfermode;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 9
    iget p1, p1, Landroid/graphics/Shader;->native_shader:I

    iget p2, p2, Landroid/graphics/Shader;->native_shader:I

    if-eqz p3, :cond_1

    iget v2, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    :cond_1
    invoke-static {v0, p1, p2, v2}, Landroid/graphics/ComposeShader;->nativePostCreate2(IIII)I

    move-result p1

    iput p1, p0, Landroid/graphics/Shader;->native_shader:I

    goto :goto_1

    .line 10
    :cond_2
    iget p1, p1, Landroid/graphics/Shader;->native_shader:I

    iget p2, p2, Landroid/graphics/Shader;->native_shader:I

    if-eqz p3, :cond_3

    iget v2, p3, Landroid/graphics/Xfermode;->native_instance:I

    :cond_3
    invoke-static {v0, p1, p2, v2}, Landroid/graphics/ComposeShader;->nativePostCreate1(IIII)I

    move-result p1

    iput p1, p0, Landroid/graphics/Shader;->native_shader:I

    :goto_1
    return-void
.end method

.method private static native nativeCreate1(III)I
.end method

.method private static native nativeCreate2(III)I
.end method

.method private static native nativePostCreate1(IIII)I
.end method

.method private static native nativePostCreate2(IIII)I
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 4

    .line 1
    iget v0, p0, Landroid/graphics/ComposeShader;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v1}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v2}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ComposeShader should be created with either Xfermode or PorterDuffMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v1}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v2}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/ComposeShader;->mXferMode:Landroid/graphics/Xfermode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method
