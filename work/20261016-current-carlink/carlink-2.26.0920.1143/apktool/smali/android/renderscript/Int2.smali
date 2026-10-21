.class public Landroid/renderscript/Int2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:I

.field public y:I


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
    iput p1, p0, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 6
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int2;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 9
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public static add(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 9
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 10
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static add(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 4
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 5
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 9
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 10
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 4
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 5
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)I
    .locals 2

    .line 2
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p1, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static mod(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 9
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 10
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 4
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 5
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 9
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 10
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 4
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 5
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 9
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 10
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 4
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 5
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 6
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 7
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public add(Landroid/renderscript/Int2;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 2
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public addAt(II)V
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
    iget p1, p0, Landroid/renderscript/Int2;->y:I

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    iput p1, p0, Landroid/renderscript/Int2;->y:I

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
    iget p1, p0, Landroid/renderscript/Int2;->x:I

    .line 21
    .line 22
    add-int/2addr p1, p2

    .line 23
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 24
    .line 25
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Int2;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    .line 2
    .line 3
    iget v1, p1, Landroid/renderscript/Int2;->x:I

    .line 4
    .line 5
    mul-int/2addr v1, p2

    .line 6
    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Landroid/renderscript/Int2;->x:I

    .line 8
    .line 9
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    .line 10
    .line 11
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    .line 12
    .line 13
    mul-int/2addr p1, p2

    .line 14
    add-int/2addr p1, v0

    .line 15
    iput p1, p0, Landroid/renderscript/Int2;->y:I

    .line 16
    .line 17
    return-void
.end method

.method public copyTo([II)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    .line 2
    .line 3
    aput v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    .line 8
    .line 9
    aput v0, p1, p2

    .line 10
    .line 11
    return-void
.end method

.method public div(I)V
    .locals 1

    .line 6
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 7
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public div(Landroid/renderscript/Int2;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 2
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int2;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1
.end method

.method public elementSum()I
    .locals 2

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
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
    iget p1, p0, Landroid/renderscript/Int2;->y:I

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
    iget p1, p0, Landroid/renderscript/Int2;->x:I

    .line 18
    .line 19
    return p1
.end method

.method public length()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public mod(I)V
    .locals 1

    .line 6
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 7
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public mod(Landroid/renderscript/Int2;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 2
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public mul(I)V
    .locals 1

    .line 6
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 7
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public mul(Landroid/renderscript/Int2;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 2
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public negate()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    .line 7
    .line 8
    neg-int v0, v0

    .line 9
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 10
    .line 11
    return-void
.end method

.method public set(Landroid/renderscript/Int2;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    .line 2
    .line 3
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 4
    .line 5
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    .line 6
    .line 7
    iput p1, p0, Landroid/renderscript/Int2;->y:I

    .line 8
    .line 9
    return-void
.end method

.method public setAt(II)V
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
    iput p2, p0, Landroid/renderscript/Int2;->y:I

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
    iput p2, p0, Landroid/renderscript/Int2;->x:I

    .line 18
    .line 19
    return-void
.end method

.method public setValues(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 2
    .line 3
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    .line 4
    .line 5
    return-void
.end method

.method public sub(I)V
    .locals 1

    .line 6
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 7
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public sub(Landroid/renderscript/Int2;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 2
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method
