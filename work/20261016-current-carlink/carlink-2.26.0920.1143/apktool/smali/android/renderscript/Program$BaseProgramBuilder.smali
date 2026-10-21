.class public Landroid/renderscript/Program$BaseProgramBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseProgramBuilder"
.end annotation


# instance fields
.field mConstantCount:I

.field mConstants:[Landroid/renderscript/Type;

.field mInputCount:I

.field mInputs:[Landroid/renderscript/Element;

.field mOutputCount:I

.field mOutputs:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextureNames:[Ljava/lang/String;

.field mTextureTypes:[Landroid/renderscript/Program$TextureType;

.field mTextures:[Landroid/renderscript/Type;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 5
    .line 6
    const/16 p1, 0x8

    .line 7
    .line 8
    new-array v0, p1, [Landroid/renderscript/Element;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    .line 11
    .line 12
    new-array v0, p1, [Landroid/renderscript/Element;

    .line 13
    .line 14
    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    .line 15
    .line 16
    new-array v0, p1, [Landroid/renderscript/Type;

    .line 17
    .line 18
    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    .line 22
    .line 23
    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    .line 24
    .line 25
    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 26
    .line 27
    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 28
    .line 29
    new-array v0, p1, [Landroid/renderscript/Program$TextureType;

    .line 30
    .line 31
    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    .line 32
    .line 33
    new-array p1, p1, [Ljava/lang/String;

    .line 34
    .line 35
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/renderscript/Element;->isComplex()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    .line 18
    .line 19
    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 20
    .line 21
    aput-object p1, v0, v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 29
    .line 30
    const-string v0, "Complex elements not allowed."

    .line 31
    .line 32
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "Max input count exceeded."

    .line 39
    .line 40
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    return-object p0
.end method

.method public addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2

    .line 2
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aput-object p1, v1, v0

    .line 4
    iget-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max texture count exceeded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentConstantIndex()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentTextureIndex()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public initProgram(Landroid/renderscript/Program;)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    .line 2
    .line 3
    new-array v1, v0, [Landroid/renderscript/Element;

    .line 4
    .line 5
    iput-object v1, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    .line 6
    .line 7
    iget-object v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    .line 14
    .line 15
    new-array v1, v0, [Landroid/renderscript/Element;

    .line 16
    .line 17
    iput-object v1, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    .line 18
    .line 19
    iget-object v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    .line 20
    .line 21
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 25
    .line 26
    new-array v1, v0, [Landroid/renderscript/Type;

    .line 27
    .line 28
    iput-object v1, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    .line 29
    .line 30
    iget-object v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    .line 31
    .line 32
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 36
    .line 37
    iput v0, p1, Landroid/renderscript/Program;->mTextureCount:I

    .line 38
    .line 39
    new-array v1, v0, [Landroid/renderscript/Program$TextureType;

    .line 40
    .line 41
    iput-object v1, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    .line 42
    .line 43
    iget-object v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    .line 44
    .line 45
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 49
    .line 50
    new-array v1, v0, [Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 5

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    const/16 p2, 0x400

    :try_start_0
    new-array p2, p2, [B

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    array-length v2, p2

    sub-int/2addr v2, v1

    if-nez v2, :cond_0

    .line 4
    array-length v2, p2

    mul-int/lit8 v2, v2, 0x2

    new-array v3, v2, [B

    .line 5
    array-length v4, p2

    invoke-static {p2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int/2addr v2, v1

    move-object p2, v3

    .line 6
    :cond_0
    invoke-virtual {p1, p2, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8
    :try_start_2
    new-instance p1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p1, p2, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "RenderScript shader creation"

    const-string p2, "Could not decode shader string"

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0

    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 10
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 11
    :catch_1
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p1}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p1
.end method

.method public setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    return-object p0
.end method
