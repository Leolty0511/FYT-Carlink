.class public Landroid/renderscript/Float2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 7
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float2;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 4
    iget p1, p1, Landroid/renderscript/Float2;->y:F

    iput p1, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public static add(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 9
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 10
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static add(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3

    .line 1
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 2
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 3
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 9
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 10
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 4
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 5
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)F
    .locals 2

    .line 2
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    iget p0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p1, p0

    add-float/2addr p1, v0

    return p1
.end method

.method public static mul(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 9
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 10
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 4
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 5
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 9
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 10
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 4
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 5
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method


# virtual methods
.method public add(F)V
    .locals 1

    .line 6
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 7
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public add(Landroid/renderscript/Float2;)V
    .locals 2

    .line 4
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 5
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public addAt(IF)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget p1, p0, Landroid/renderscript/Float2;->y:F

    .line 7
    .line 8
    add-float/2addr p1, p2

    .line 9
    iput p1, p0, Landroid/renderscript/Float2;->y:F

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    const-string p2, "Index: i"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    iget p1, p0, Landroid/renderscript/Float2;->x:F

    .line 21
    .line 22
    add-float/2addr p1, p2

    .line 23
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 24
    .line 25
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Float2;F)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    .line 2
    .line 3
    iget v1, p1, Landroid/renderscript/Float2;->x:F

    .line 4
    .line 5
    mul-float/2addr v1, p2

    .line 6
    add-float/2addr v1, v0

    .line 7
    iput v1, p0, Landroid/renderscript/Float2;->x:F

    .line 8
    .line 9
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    .line 10
    .line 11
    iget p1, p1, Landroid/renderscript/Float2;->y:F

    .line 12
    .line 13
    mul-float/2addr p1, p2

    .line 14
    add-float/2addr p1, v0

    .line 15
    iput p1, p0, Landroid/renderscript/Float2;->y:F

    .line 16
    .line 17
    return-void
.end method

.method public copyTo([FI)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    .line 2
    .line 3
    aput v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    .line 8
    .line 9
    aput v0, p1, p2

    .line 10
    .line 11
    return-void
.end method

.method public div(F)V
    .locals 1

    .line 6
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 7
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public div(Landroid/renderscript/Float2;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 2
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float2;)F
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method

.method public elementSum()F
    .locals 2

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, v1

    return v0
.end method

.method public get(I)F
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget p1, p0, Landroid/renderscript/Float2;->y:F

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    const-string v0, "Index: i"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    iget p1, p0, Landroid/renderscript/Float2;->x:F

    .line 18
    .line 19
    return p1
.end method

.method public length()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public mul(F)V
    .locals 1

    .line 6
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 7
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public mul(Landroid/renderscript/Float2;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 2
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public negate()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    .line 2
    .line 3
    neg-float v0, v0

    .line 4
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    .line 7
    .line 8
    neg-float v0, v0

    .line 9
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 10
    .line 11
    return-void
.end method

.method public set(Landroid/renderscript/Float2;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    .line 2
    .line 3
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 4
    .line 5
    iget p1, p1, Landroid/renderscript/Float2;->y:F

    .line 6
    .line 7
    iput p1, p0, Landroid/renderscript/Float2;->y:F

    .line 8
    .line 9
    return-void
.end method

.method public setAt(IF)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    const-string p2, "Index: i"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    iput p2, p0, Landroid/renderscript/Float2;->x:F

    .line 18
    .line 19
    return-void
.end method

.method public setValues(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 2
    .line 3
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 4
    .line 5
    return-void
.end method

.method public sub(F)V
    .locals 1

    .line 6
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 7
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public sub(Landroid/renderscript/Float2;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 2
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method
