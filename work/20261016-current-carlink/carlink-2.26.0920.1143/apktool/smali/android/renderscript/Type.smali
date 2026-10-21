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


# static fields
.field static final mMaxArrays:I = 0x4


# instance fields
.field mArrays:[I

.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mElementCount:I


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public static createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p2, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v2

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move v4, p2

    .line 15
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    new-instance v2, Landroid/renderscript/Type;

    .line 20
    .line 21
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 25
    .line 26
    iput p2, v2, Landroid/renderscript/Type;->mDimX:I

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    .line 33
    .line 34
    const-string p1, "Dimension must be >= 1."

    .line 35
    .line 36
    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public static createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p2, v0, :cond_0

    .line 3
    .line 4
    if-lt p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    move-object v1, p0

    .line 15
    move v4, p2

    .line 16
    move v5, p3

    .line 17
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    new-instance v2, Landroid/renderscript/Type;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 27
    .line 28
    iput p2, v2, Landroid/renderscript/Type;->mDimX:I

    .line 29
    .line 30
    iput p3, v2, Landroid/renderscript/Type;->mDimY:I

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    .line 37
    .line 38
    const-string p1, "Dimension must be >= 1."

    .line 39
    .line 40
    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public static createXYZ(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;III)Landroid/renderscript/Type;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p2, v0, :cond_0

    .line 3
    .line 4
    if-lt p3, v0, :cond_0

    .line 5
    .line 6
    if-lt p4, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    move-object v1, p0

    .line 16
    move v4, p2

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    new-instance v2, Landroid/renderscript/Type;

    .line 24
    .line 25
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 29
    .line 30
    iput p2, v2, Landroid/renderscript/Type;->mDimX:I

    .line 31
    .line 32
    iput p3, v2, Landroid/renderscript/Type;->mDimY:I

    .line 33
    .line 34
    iput p4, v2, Landroid/renderscript/Type;->mDimZ:I

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    .line 41
    .line 42
    const-string p1, "Dimension must be >= 1."

    .line 43
    .line 44
    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method


# virtual methods
.method public calcElementCount()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x1

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    const/4 v4, 0x6

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v4, v5

    .line 27
    :goto_0
    if-nez v1, :cond_1

    .line 28
    .line 29
    move v1, v5

    .line 30
    :cond_1
    if-nez v2, :cond_2

    .line 31
    .line 32
    move v2, v5

    .line 33
    :cond_2
    if-nez v3, :cond_3

    .line 34
    .line 35
    move v3, v5

    .line 36
    :cond_3
    mul-int v6, v1, v2

    .line 37
    .line 38
    mul-int/2addr v6, v3

    .line 39
    mul-int/2addr v6, v4

    .line 40
    :goto_1
    if-eqz v0, :cond_8

    .line 41
    .line 42
    if-gt v1, v5, :cond_4

    .line 43
    .line 44
    if-gt v2, v5, :cond_4

    .line 45
    .line 46
    if-le v3, v5, :cond_8

    .line 47
    .line 48
    :cond_4
    if-le v1, v5, :cond_5

    .line 49
    .line 50
    shr-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    :cond_5
    if-le v2, v5, :cond_6

    .line 53
    .line 54
    shr-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    :cond_6
    if-le v3, v5, :cond_7

    .line 57
    .line 58
    shr-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    :cond_7
    mul-int v7, v1, v2

    .line 61
    .line 62
    mul-int/2addr v7, v3

    .line 63
    mul-int/2addr v7, v4

    .line 64
    add-int/2addr v6, v7

    .line 65
    goto :goto_1

    .line 66
    :cond_8
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    .line 67
    .line 68
    if-eqz v0, :cond_9

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_2
    iget-object v1, p0, Landroid/renderscript/Type;->mArrays:[I

    .line 72
    .line 73
    array-length v2, v1

    .line 74
    if-ge v0, v2, :cond_9

    .line 75
    .line 76
    aget v1, v1, v0

    .line 77
    .line 78
    mul-int/2addr v6, v1

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_9
    iput v6, p0, Landroid/renderscript/Type;->mElementCount:I

    .line 83
    .line 84
    return-void
.end method

.method public getArray(I)I
    .locals 2

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-ge p1, v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    if-lt p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    aget p1, v0, p1

    .line 15
    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_2
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Array dimension out of range."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public getArrayCount()I
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method

.method public updateFromNative()V
    .locals 7

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(J[J)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget-wide v2, v0, v1

    .line 15
    .line 16
    long-to-int v2, v2

    .line 17
    iput v2, p0, Landroid/renderscript/Type;->mDimX:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    aget-wide v3, v0, v2

    .line 21
    .line 22
    long-to-int v3, v3

    .line 23
    iput v3, p0, Landroid/renderscript/Type;->mDimY:I

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    aget-wide v3, v0, v3

    .line 27
    .line 28
    long-to-int v3, v3

    .line 29
    iput v3, p0, Landroid/renderscript/Type;->mDimZ:I

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    aget-wide v3, v0, v3

    .line 33
    .line 34
    const-wide/16 v5, 0x1

    .line 35
    .line 36
    cmp-long v3, v3, v5

    .line 37
    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    move v3, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v3, v1

    .line 43
    :goto_0
    iput-boolean v3, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    aget-wide v3, v0, v3

    .line 47
    .line 48
    cmp-long v3, v3, v5

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    move v1, v2

    .line 53
    :cond_1
    iput-boolean v1, p0, Landroid/renderscript/Type;->mDimFaces:Z

    .line 54
    .line 55
    const/4 v1, 0x5

    .line 56
    aget-wide v1, v0, v1

    .line 57
    .line 58
    const-wide/16 v3, 0x0

    .line 59
    .line 60
    cmp-long v0, v1, v3

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Landroid/renderscript/Element;

    .line 65
    .line 66
    iget-object v3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/renderscript/Element;->updateFromNative()V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 77
    .line 78
    .line 79
    return-void
.end method
