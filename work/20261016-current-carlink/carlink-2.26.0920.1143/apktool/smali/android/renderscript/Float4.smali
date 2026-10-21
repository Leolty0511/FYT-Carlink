.class public Landroid/renderscript/Float4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Landroid/renderscript/Float4;->x:F

    .line 9
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    .line 10
    iput p3, p0, Landroid/renderscript/Float4;->z:F

    .line 11
    iput p4, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float4;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 4
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 5
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 6
    iget p1, p1, Landroid/renderscript/Float4;->w:F

    iput p1, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public static add(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 15
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 16
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 17
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 18
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static add(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    .line 1
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 2
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 3
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 4
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 5
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    .line 9
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 10
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 11
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 12
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 13
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    .line 14
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 15
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 16
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 17
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 18
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)F
    .locals 3

    .line 2
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    iget v2, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p1, Landroid/renderscript/Float4;->z:F

    iget v2, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    iget p0, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr p1, p0

    add-float/2addr p1, v0

    return p1
.end method

.method public static mul(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 15
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 16
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 17
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 18
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    .line 9
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 10
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 11
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 12
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 13
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    .line 9
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 10
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 11
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 12
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 13
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    .line 14
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 15
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 16
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 17
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 18
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method


# virtual methods
.method public add(F)V
    .locals 1

    .line 10
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 11
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 12
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 13
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public add(Landroid/renderscript/Float4;)V
    .locals 2

    .line 6
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 7
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 8
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 9
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public addAt(IF)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget p1, p0, Landroid/renderscript/Float4;->w:F

    .line 13
    .line 14
    add-float/2addr p1, p2

    .line 15
    iput p1, p0, Landroid/renderscript/Float4;->w:F

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 19
    .line 20
    const-string p2, "Index: i"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    iget p1, p0, Landroid/renderscript/Float4;->z:F

    .line 27
    .line 28
    add-float/2addr p1, p2

    .line 29
    iput p1, p0, Landroid/renderscript/Float4;->z:F

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget p1, p0, Landroid/renderscript/Float4;->y:F

    .line 33
    .line 34
    add-float/2addr p1, p2

    .line 35
    iput p1, p0, Landroid/renderscript/Float4;->y:F

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget p1, p0, Landroid/renderscript/Float4;->x:F

    .line 39
    .line 40
    add-float/2addr p1, p2

    .line 41
    iput p1, p0, Landroid/renderscript/Float4;->x:F

    .line 42
    .line 43
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Float4;F)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    .line 2
    .line 3
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    .line 4
    .line 5
    mul-float/2addr v1, p2

    .line 6
    add-float/2addr v1, v0

    .line 7
    iput v1, p0, Landroid/renderscript/Float4;->x:F

    .line 8
    .line 9
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    .line 10
    .line 11
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    .line 12
    .line 13
    mul-float/2addr v1, p2

    .line 14
    add-float/2addr v1, v0

    .line 15
    iput v1, p0, Landroid/renderscript/Float4;->y:F

    .line 16
    .line 17
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    .line 18
    .line 19
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    .line 20
    .line 21
    mul-float/2addr v1, p2

    .line 22
    add-float/2addr v1, v0

    .line 23
    iput v1, p0, Landroid/renderscript/Float4;->z:F

    .line 24
    .line 25
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    .line 26
    .line 27
    iget p1, p1, Landroid/renderscript/Float4;->w:F

    .line 28
    .line 29
    mul-float/2addr p1, p2

    .line 30
    add-float/2addr p1, v0

    .line 31
    iput p1, p0, Landroid/renderscript/Float4;->w:F

    .line 32
    .line 33
    return-void
.end method

.method public copyTo([FI)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    .line 2
    .line 3
    aput v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    .line 8
    .line 9
    aput v1, p1, v0

    .line 10
    .line 11
    add-int/lit8 v0, p2, 0x2

    .line 12
    .line 13
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    .line 14
    .line 15
    aput v1, p1, v0

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x3

    .line 18
    .line 19
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    .line 20
    .line 21
    aput v0, p1, p2

    .line 22
    .line 23
    return-void
.end method

.method public div(F)V
    .locals 1

    .line 5
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 6
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 7
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 8
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public div(Landroid/renderscript/Float4;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 2
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 3
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 4
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float4;)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method

.method public elementSum()F
    .locals 2

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, v1

    return v0
.end method

.method public get(I)F
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget p1, p0, Landroid/renderscript/Float4;->w:F

    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 16
    .line 17
    const-string v0, "Index: i"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    iget p1, p0, Landroid/renderscript/Float4;->z:F

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    iget p1, p0, Landroid/renderscript/Float4;->y:F

    .line 27
    .line 28
    return p1

    .line 29
    :cond_3
    iget p1, p0, Landroid/renderscript/Float4;->x:F

    .line 30
    .line 31
    return p1
.end method

.method public length()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public mul(F)V
    .locals 1

    .line 5
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 6
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 7
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 8
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public mul(Landroid/renderscript/Float4;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 2
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 3
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 4
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public negate()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    .line 2
    .line 3
    neg-float v0, v0

    .line 4
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    .line 7
    .line 8
    neg-float v0, v0

    .line 9
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 10
    .line 11
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    .line 12
    .line 13
    neg-float v0, v0

    .line 14
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 15
    .line 16
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    .line 17
    .line 18
    neg-float v0, v0

    .line 19
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 20
    .line 21
    return-void
.end method

.method public set(Landroid/renderscript/Float4;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    .line 2
    .line 3
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 4
    .line 5
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    .line 6
    .line 7
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 8
    .line 9
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    .line 10
    .line 11
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 12
    .line 13
    iget p1, p1, Landroid/renderscript/Float4;->w:F

    .line 14
    .line 15
    iput p1, p0, Landroid/renderscript/Float4;->w:F

    .line 16
    .line 17
    return-void
.end method

.method public setAt(IF)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iput p2, p0, Landroid/renderscript/Float4;->w:F

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 16
    .line 17
    const-string p2, "Index: i"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    iput p2, p0, Landroid/renderscript/Float4;->z:F

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iput p2, p0, Landroid/renderscript/Float4;->x:F

    .line 30
    .line 31
    return-void
.end method

.method public setValues(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/renderscript/Float4;->x:F

    .line 2
    .line 3
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    .line 4
    .line 5
    iput p3, p0, Landroid/renderscript/Float4;->z:F

    .line 6
    .line 7
    iput p4, p0, Landroid/renderscript/Float4;->w:F

    .line 8
    .line 9
    return-void
.end method

.method public sub(F)V
    .locals 1

    .line 5
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 6
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 7
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 8
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public sub(Landroid/renderscript/Float4;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 2
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 3
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 4
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method
