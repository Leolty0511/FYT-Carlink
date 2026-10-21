.class public Landroid/renderscript/Mesh$TriangleMeshBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriangleMeshBuilder"
.end annotation


# static fields
.field public static final COLOR:I = 0x1

.field public static final NORMAL:I = 0x2

.field public static final TEXTURE_0:I = 0x100


# instance fields
.field mA:F

.field mB:F

.field mElement:Landroid/renderscript/Element;

.field mFlags:I

.field mG:F

.field mIndexCount:I

.field mIndexData:[S

.field mMaxIndex:I

.field mNX:F

.field mNY:F

.field mNZ:F

.field mR:F

.field mRS:Landroid/renderscript/RenderScript;

.field mS0:F

.field mT0:F

.field mVtxCount:I

.field mVtxData:[F

.field mVtxSize:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    .line 6
    .line 7
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    .line 8
    .line 9
    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    .line 11
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    .line 12
    .line 13
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    .line 14
    .line 15
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    .line 16
    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    .line 19
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    .line 20
    .line 21
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    .line 22
    .line 23
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    .line 24
    .line 25
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    .line 26
    .line 27
    iput-object p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 31
    .line 32
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    .line 33
    .line 34
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    .line 35
    .line 36
    const/16 p1, 0x80

    .line 37
    .line 38
    new-array v0, p1, [F

    .line 39
    .line 40
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 41
    .line 42
    new-array p1, p1, [S

    .line 43
    .line 44
    iput-object p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 45
    .line 46
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    .line 47
    .line 48
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 49
    .line 50
    const/4 p1, 0x2

    .line 51
    if-lt p2, p1, :cond_0

    .line 52
    .line 53
    const/4 p1, 0x3

    .line 54
    if-gt p2, p1, :cond_0

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p2, "Vertex size out of range."

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method private latch()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 12
    .line 13
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 14
    .line 15
    add-int/lit8 v3, v2, 0x1

    .line 16
    .line 17
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    .line 18
    .line 19
    aput v4, v0, v2

    .line 20
    .line 21
    add-int/lit8 v2, v3, 0x1

    .line 22
    .line 23
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    .line 24
    .line 25
    aput v4, v0, v3

    .line 26
    .line 27
    add-int/lit8 v3, v2, 0x1

    .line 28
    .line 29
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    .line 30
    .line 31
    aput v4, v0, v2

    .line 32
    .line 33
    add-int/lit8 v2, v3, 0x1

    .line 34
    .line 35
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 36
    .line 37
    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    .line 38
    .line 39
    aput v2, v0, v3

    .line 40
    .line 41
    :cond_0
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 42
    .line 43
    and-int/lit16 v0, v0, 0x100

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-direct {p0, v2}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 52
    .line 53
    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 54
    .line 55
    add-int/lit8 v4, v3, 0x1

    .line 56
    .line 57
    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    .line 58
    .line 59
    aput v5, v0, v3

    .line 60
    .line 61
    add-int/lit8 v3, v4, 0x1

    .line 62
    .line 63
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 64
    .line 65
    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    .line 66
    .line 67
    aput v3, v0, v4

    .line 68
    .line 69
    :cond_1
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 70
    .line 71
    and-int/2addr v0, v2

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 78
    .line 79
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 80
    .line 81
    add-int/lit8 v2, v1, 0x1

    .line 82
    .line 83
    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    .line 84
    .line 85
    aput v3, v0, v1

    .line 86
    .line 87
    add-int/lit8 v1, v2, 0x1

    .line 88
    .line 89
    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    .line 90
    .line 91
    aput v3, v0, v2

    .line 92
    .line 93
    add-int/lit8 v2, v1, 0x1

    .line 94
    .line 95
    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    .line 96
    .line 97
    aput v3, v0, v1

    .line 98
    .line 99
    add-int/lit8 v1, v2, 0x1

    .line 100
    .line 101
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    aput v1, v0, v2

    .line 105
    .line 106
    :cond_2
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    .line 107
    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 109
    .line 110
    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    .line 111
    .line 112
    return-void
.end method

.method private makeSpace(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget-object p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    mul-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    array-length v1, p1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 4

    .line 1
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    if-ge p2, v0, :cond_1

    .line 8
    .line 9
    if-ltz p2, :cond_1

    .line 10
    .line 11
    if-ge p3, v0, :cond_1

    .line 12
    .line 13
    if-ltz p3, :cond_1

    .line 14
    .line 15
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x3

    .line 18
    .line 19
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    if-lt v0, v2, :cond_0

    .line 23
    .line 24
    array-length v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    new-array v0, v0, [S

    .line 28
    .line 29
    array-length v2, v1

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 37
    .line 38
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    .line 39
    .line 40
    add-int/lit8 v2, v1, 0x1

    .line 41
    .line 42
    int-to-short p1, p1

    .line 43
    aput-short p1, v0, v1

    .line 44
    .line 45
    add-int/lit8 p1, v2, 0x1

    .line 46
    .line 47
    int-to-short p2, p2

    .line 48
    aput-short p2, v0, v2

    .line 49
    .line 50
    add-int/lit8 p2, p1, 0x1

    .line 51
    .line 52
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    .line 53
    .line 54
    int-to-short p2, p3

    .line 55
    aput-short p2, v0, p1

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p2, "Index provided greater than vertex count."

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 3

    .line 1
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 3
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    .line 4
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v2

    .line 5
    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "add mistmatch with declared components."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVertex(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 3

    .line 7
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 8
    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 9
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    .line 10
    aput p2, v0, v2

    add-int/lit8 p2, p1, 0x1

    .line 11
    aput p3, v0, p1

    add-int/lit8 p1, p2, 0x1

    .line 12
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v0, p2

    .line 13
    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "add mistmatch with declared components."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Z)Landroid/renderscript/Mesh;
    .locals 6

    .line 1
    new-instance v0, Landroid/renderscript/Element$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 9
    .line 10
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    .line 11
    .line 12
    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    .line 13
    .line 14
    invoke-static {v1, v2, v3}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string/jumbo v2, "position"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    and-int/2addr v1, v2

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v3, "color"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 39
    .line 40
    .line 41
    :cond_0
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 42
    .line 43
    and-int/lit16 v1, v1, 0x100

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string/jumbo v3, "texture0"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 57
    .line 58
    .line 59
    :cond_1
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 60
    .line 61
    and-int/lit8 v1, v1, 0x2

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 66
    .line 67
    invoke-static {v1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string/jumbo v3, "normal"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    const/4 v0, 0x5

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move v0, v2

    .line 88
    :goto_0
    new-instance v1, Landroid/renderscript/Mesh$Builder;

    .line 89
    .line 90
    iget-object v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 91
    .line 92
    invoke-direct {v1, v3, v0}, Landroid/renderscript/Mesh$Builder;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    .line 96
    .line 97
    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    .line 98
    .line 99
    invoke-virtual {v1, v0, v3}, Landroid/renderscript/Mesh$Builder;->addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 103
    .line 104
    invoke-static {v0}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    .line 109
    .line 110
    sget-object v4, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    .line 111
    .line 112
    invoke-virtual {v1, v0, v3, v4}, Landroid/renderscript/Mesh$Builder;->addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/renderscript/Mesh$Builder;->create()Landroid/renderscript/Mesh;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    .line 125
    .line 126
    iget-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 127
    .line 128
    invoke-virtual {v3, v1, v4, v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    .line 129
    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v3, v2}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-virtual {v0, v1}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    .line 145
    .line 146
    iget-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 147
    .line 148
    invoke-virtual {v3, v1, v4, v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    .line 149
    .line 150
    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1, v2}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 158
    .line 159
    .line 160
    :cond_5
    return-object v0
.end method

.method public setColor(FFFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    .line 8
    .line 9
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    .line 10
    .line 11
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    .line 12
    .line 13
    iput p4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string p2, "add mistmatch with declared components."

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public setNormal(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    .line 8
    .line 9
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    .line 10
    .line 11
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "add mistmatch with declared components."

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public setTexture(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    .line 8
    .line 9
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string p2, "add mistmatch with declared components."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method
