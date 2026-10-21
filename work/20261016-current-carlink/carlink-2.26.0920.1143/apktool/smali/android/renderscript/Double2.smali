.class public Landroid/renderscript/Double2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    .line 7
    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double2;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 4
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public static add(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 3

    .line 8
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static add(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 5

    .line 1
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 2
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 3
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p1, Landroid/renderscript/Double2;->y:D

    add-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 3

    .line 8
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 5

    .line 3
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 4
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p1, Landroid/renderscript/Double2;->y:D

    div-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Ljava/lang/Double;
    .locals 4

    .line 2
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, p0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static mul(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 3

    .line 8
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 5

    .line 3
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 4
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 3

    .line 8
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 5

    .line 3
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 4
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p1, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 2

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public add(Landroid/renderscript/Double2;)V
    .locals 4

    .line 4
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 5
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public addAt(ID)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 7
    .line 8
    add-double/2addr v0, p2

    .line 9
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

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
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 21
    .line 22
    add-double/2addr v0, p2

    .line 23
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 24
    .line 25
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Double2;D)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 2
    .line 3
    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    .line 4
    .line 5
    mul-double/2addr v2, p2

    .line 6
    add-double/2addr v2, v0

    .line 7
    iput-wide v2, p0, Landroid/renderscript/Double2;->x:D

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 10
    .line 11
    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    .line 12
    .line 13
    mul-double/2addr v2, p2

    .line 14
    add-double/2addr v2, v0

    .line 15
    iput-wide v2, p0, Landroid/renderscript/Double2;->y:D

    .line 16
    .line 17
    return-void
.end method

.method public copyTo([DI)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 2
    .line 3
    aput-wide v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 8
    .line 9
    aput-wide v0, p1, p2

    .line 10
    .line 11
    return-void
.end method

.method public div(D)V
    .locals 2

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public div(Landroid/renderscript/Double2;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double2;)D
    .locals 6

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public elementSum()D
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(I)D
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 7
    .line 8
    return-wide v0

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
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 18
    .line 19
    return-wide v0
.end method

.method public length()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public mul(D)V
    .locals 2

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public mul(Landroid/renderscript/Double2;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public negate()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 2
    .line 3
    neg-double v0, v0

    .line 4
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 5
    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 7
    .line 8
    neg-double v0, v0

    .line 9
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 10
    .line 11
    return-void
.end method

.method public set(Landroid/renderscript/Double2;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 4
    .line 5
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 8
    .line 9
    return-void
.end method

.method public setAt(ID)V
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
    iput-wide p2, p0, Landroid/renderscript/Double2;->y:D

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
    iput-wide p2, p0, Landroid/renderscript/Double2;->x:D

    .line 18
    .line 19
    return-void
.end method

.method public setValues(DD)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    .line 2
    .line 3
    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    .line 4
    .line 5
    return-void
.end method

.method public sub(D)V
    .locals 2

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public sub(Landroid/renderscript/Double2;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method
