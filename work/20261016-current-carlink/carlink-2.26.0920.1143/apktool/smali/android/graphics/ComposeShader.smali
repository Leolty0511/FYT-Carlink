.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "SourceFile"


# instance fields
.field private mNativeInstanceShaderA:J

.field private mNativeInstanceShaderB:J

.field private mPorterDuffMode:I

.field mShaderA:Landroid/graphics/Shader;

.field mShaderB:Landroid/graphics/Shader;


# direct methods
.method private constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 5
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 6
    iput p3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Shader parameters must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 2
    iget p3, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .locals 0

    .line 1
    iget p3, p3, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    return-void
.end method

.method private static native nativeCreate(JJJI)J
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/ComposeShader;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public createNativeInstance(J)J
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderA:J

    .line 8
    .line 9
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderB:J

    .line 16
    .line 17
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    iget v7, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    .line 30
    .line 31
    move-wide v1, p1

    .line 32
    invoke-static/range {v1 .. v7}, Landroid/graphics/ComposeShader;->nativeCreate(JJJI)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    return-wide p1
.end method

.method public verifyNativeInstance()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderA:J

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderB:J

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method
