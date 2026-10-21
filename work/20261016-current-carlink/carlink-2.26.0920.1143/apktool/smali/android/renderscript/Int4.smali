.class public Landroid/renderscript/Int4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/renderscript/Int4;->w:I

    iput p1, p0, Landroid/renderscript/Int4;->z:I

    iput p1, p0, Landroid/renderscript/Int4;->y:I

    iput p1, p0, Landroid/renderscript/Int4;->x:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    .line 6
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    .line 7
    iput p3, p0, Landroid/renderscript/Int4;->z:I

    .line 8
    iput p4, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int4;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 11
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 12
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 13
    iget p1, p1, Landroid/renderscript/Int4;->w:I

    iput p1, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public static add(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 15
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 16
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 17
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 18
    iget p0, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static add(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 6
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 7
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 8
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 9
    iget p0, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 15
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 16
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 17
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 18
    iget p0, p0, Landroid/renderscript/Int4;->w:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 6
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 7
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 8
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 9
    iget p0, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)I
    .locals 3

    .line 2
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    iget v2, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget v0, p1, Landroid/renderscript/Int4;->z:I

    iget v2, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    iget p0, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr p1, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static mod(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 15
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 16
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 17
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 18
    iget p0, p0, Landroid/renderscript/Int4;->w:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 6
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 7
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 8
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 9
    iget p0, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 15
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 16
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 17
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 18
    iget p0, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 6
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 7
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 8
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 9
    iget p0, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 15
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 16
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 17
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 18
    iget p0, p0, Landroid/renderscript/Int4;->w:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 6
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 7
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 8
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 9
    iget p0, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 10
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 11
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 12
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 13
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public add(Landroid/renderscript/Int4;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 2
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 3
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 4
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public addAt(II)V
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
    iget p1, p0, Landroid/renderscript/Int4;->w:I

    .line 13
    .line 14
    add-int/2addr p1, p2

    .line 15
    iput p1, p0, Landroid/renderscript/Int4;->w:I

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
    iget p1, p0, Landroid/renderscript/Int4;->z:I

    .line 27
    .line 28
    add-int/2addr p1, p2

    .line 29
    iput p1, p0, Landroid/renderscript/Int4;->z:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget p1, p0, Landroid/renderscript/Int4;->y:I

    .line 33
    .line 34
    add-int/2addr p1, p2

    .line 35
    iput p1, p0, Landroid/renderscript/Int4;->y:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget p1, p0, Landroid/renderscript/Int4;->x:I

    .line 39
    .line 40
    add-int/2addr p1, p2

    .line 41
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    .line 42
    .line 43
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Int4;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    .line 2
    .line 3
    iget v1, p1, Landroid/renderscript/Int4;->x:I

    .line 4
    .line 5
    mul-int/2addr v1, p2

    .line 6
    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Landroid/renderscript/Int4;->x:I

    .line 8
    .line 9
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    .line 10
    .line 11
    iget v1, p1, Landroid/renderscript/Int4;->y:I

    .line 12
    .line 13
    mul-int/2addr v1, p2

    .line 14
    add-int/2addr v1, v0

    .line 15
    iput v1, p0, Landroid/renderscript/Int4;->y:I

    .line 16
    .line 17
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    .line 18
    .line 19
    iget v1, p1, Landroid/renderscript/Int4;->z:I

    .line 20
    .line 21
    mul-int/2addr v1, p2

    .line 22
    add-int/2addr v1, v0

    .line 23
    iput v1, p0, Landroid/renderscript/Int4;->z:I

    .line 24
    .line 25
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    .line 26
    .line 27
    iget p1, p1, Landroid/renderscript/Int4;->w:I

    .line 28
    .line 29
    mul-int/2addr p1, p2

    .line 30
    add-int/2addr p1, v0

    .line 31
    iput p1, p0, Landroid/renderscript/Int4;->w:I

    .line 32
    .line 33
    return-void
.end method

.method public copyTo([II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    .line 2
    .line 3
    aput v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    .line 8
    .line 9
    aput v1, p1, v0

    .line 10
    .line 11
    add-int/lit8 v0, p2, 0x2

    .line 12
    .line 13
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    .line 14
    .line 15
    aput v1, p1, v0

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x3

    .line 18
    .line 19
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    .line 20
    .line 21
    aput v0, p1, p2

    .line 22
    .line 23
    return-void
.end method

.method public div(I)V
    .locals 1

    .line 10
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 11
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 12
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 13
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public div(Landroid/renderscript/Int4;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 2
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 3
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 4
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int4;)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1
.end method

.method public elementSum()I
    .locals 2

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
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
    iget p1, p0, Landroid/renderscript/Int4;->w:I

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
    iget p1, p0, Landroid/renderscript/Int4;->z:I

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    iget p1, p0, Landroid/renderscript/Int4;->y:I

    .line 27
    .line 28
    return p1

    .line 29
    :cond_3
    iget p1, p0, Landroid/renderscript/Int4;->x:I

    .line 30
    .line 31
    return p1
.end method

.method public length()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public mod(I)V
    .locals 1

    .line 10
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 11
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 12
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 13
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public mod(Landroid/renderscript/Int4;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 2
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 3
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 4
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public mul(I)V
    .locals 1

    .line 10
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 11
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 12
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 13
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public mul(Landroid/renderscript/Int4;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 2
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 3
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 4
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public negate()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    .line 7
    .line 8
    neg-int v0, v0

    .line 9
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 10
    .line 11
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    .line 12
    .line 13
    neg-int v0, v0

    .line 14
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 15
    .line 16
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    .line 17
    .line 18
    neg-int v0, v0

    .line 19
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 20
    .line 21
    return-void
.end method

.method public set(Landroid/renderscript/Int4;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    .line 2
    .line 3
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 4
    .line 5
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    .line 6
    .line 7
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 8
    .line 9
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    .line 10
    .line 11
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 12
    .line 13
    iget p1, p1, Landroid/renderscript/Int4;->w:I

    .line 14
    .line 15
    iput p1, p0, Landroid/renderscript/Int4;->w:I

    .line 16
    .line 17
    return-void
.end method

.method public setAt(II)V
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
    iput p2, p0, Landroid/renderscript/Int4;->w:I

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
    iput p2, p0, Landroid/renderscript/Int4;->z:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iput p2, p0, Landroid/renderscript/Int4;->x:I

    .line 30
    .line 31
    return-void
.end method

.method public setValues(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    .line 2
    .line 3
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    .line 4
    .line 5
    iput p3, p0, Landroid/renderscript/Int4;->z:I

    .line 6
    .line 7
    iput p4, p0, Landroid/renderscript/Int4;->w:I

    .line 8
    .line 9
    return-void
.end method

.method public sub(I)V
    .locals 1

    .line 10
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 11
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 12
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 13
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public sub(Landroid/renderscript/Int4;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 2
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 3
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 4
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget p1, p1, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method
