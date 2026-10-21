.class Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertexFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
    .locals 3

    .line 1
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    aput-object p1, v0, v1

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Complex elements not allowed."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Max input count exceeded."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create()Landroid/renderscript/ProgramVertexFixedFunction;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 3
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 4
    :goto_0
    iget v5, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    if-ge v3, v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 5
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    .line 6
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v3

    iget-object v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 7
    :goto_1
    iget v5, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    if-ge v3, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 8
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    .line 9
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v3

    iget-object v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 10
    :goto_2
    iget v5, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 11
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    .line 12
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    aget-object v6, v6, v3

    iget-object v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 13
    :cond_2
    :goto_3
    iget v3, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v4, 0x1

    .line 14
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v5, v0, v4

    add-int/lit8 v4, v3, 0x1

    .line 15
    iget-object v5, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/renderscript/Program$TextureType;->mID:I

    aput v5, v0, v3

    .line 16
    iget-object v3, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 17
    :cond_3
    iget-object v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v0

    .line 18
    new-instance v1, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/ProgramVertexFixedFunction;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 19
    invoke-virtual {p0, v1}, Landroid/renderscript/Program$BaseProgramBuilder;->initProgram(Landroid/renderscript/Program;)V

    return-object v1
.end method
