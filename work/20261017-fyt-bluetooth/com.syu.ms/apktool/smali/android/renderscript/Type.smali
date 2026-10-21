.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;,
        Landroid/renderscript/Type$CubemapFace;
    }
.end annotation


# instance fields
.field public mDimFaces:Z

.field public mDimMipmaps:Z

.field public mDimX:I

.field public mDimY:I

.field public mDimYuv:I

.field public mDimZ:I

.field public mElement:Landroid/renderscript/Element;

.field public mElementCount:I


# direct methods
.method public constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public calcElementCount()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-nez v1, :cond_1

    move v1, v5

    :cond_1
    if-nez v2, :cond_2

    move v2, v5

    :cond_2
    if-nez v3, :cond_3

    move v3, v5

    :cond_3
    mul-int v6, v1, v2

    mul-int/2addr v6, v3

    mul-int/2addr v6, v4

    :goto_1
    if-eqz v0, :cond_8

    if-gt v1, v5, :cond_4

    if-gt v2, v5, :cond_4

    if-le v3, v5, :cond_8

    :cond_4
    if-le v1, v5, :cond_5

    shr-int/lit8 v1, v1, 0x1

    :cond_5
    if-le v2, v5, :cond_6

    shr-int/lit8 v2, v2, 0x1

    :cond_6
    if-le v3, v5, :cond_7

    shr-int/lit8 v3, v3, 0x1

    :cond_7
    mul-int v7, v1, v2

    mul-int/2addr v7, v3

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_1

    .line 6
    :cond_8
    iput v6, p0, Landroid/renderscript/Type;->mElementCount:I

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method

.method public updateFromNative()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(I[I)V

    const/4 v1, 0x0

    .line 2
    aget v2, v0, v1

    iput v2, p0, Landroid/renderscript/Type;->mDimX:I

    const/4 v2, 0x1

    .line 3
    aget v3, v0, v2

    iput v3, p0, Landroid/renderscript/Type;->mDimY:I

    const/4 v3, 0x2

    .line 4
    aget v3, v0, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimZ:I

    const/4 v3, 0x3

    .line 5
    aget v3, v0, v3

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    const/4 v3, 0x4

    .line 6
    aget v3, v0, v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroid/renderscript/Type;->mDimFaces:Z

    const/4 v1, 0x5

    .line 7
    aget v0, v0, v1

    if-eqz v0, :cond_2

    .line 8
    new-instance v1, Landroid/renderscript/Element;

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;)V

    iput-object v1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 9
    invoke-virtual {v1}, Landroid/renderscript/Element;->updateFromNative()V

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    return-void
.end method
