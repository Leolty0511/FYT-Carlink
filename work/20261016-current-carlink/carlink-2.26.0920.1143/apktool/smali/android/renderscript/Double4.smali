.class public Landroid/renderscript/Double4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    .line 9
    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    .line 10
    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    .line 11
    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double4;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 4
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 5
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 6
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public static add(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    .line 14
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 15
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 16
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 17
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 18
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static add(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    .line 1
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 2
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 3
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 4
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p1, Landroid/renderscript/Double4;->w:D

    add-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    .line 9
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 11
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 12
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 13
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    .line 14
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 15
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 16
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 17
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 18
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p1, Landroid/renderscript/Double4;->w:D

    div-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)D
    .locals 6

    .line 2
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, p0

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public static mul(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    .line 14
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 15
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 16
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 17
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 18
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    .line 9
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 11
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 12
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 13
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    .line 9
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 11
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 12
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 13
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    .line 14
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 15
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 16
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 17
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 18
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p1, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 2

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 11
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 12
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 13
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public add(Landroid/renderscript/Double4;)V
    .locals 4

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 8
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 9
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public addAt(ID)V
    .locals 2

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
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 13
    .line 14
    add-double/2addr v0, p2

    .line 15
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

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
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 27
    .line 28
    add-double/2addr v0, p2

    .line 29
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 33
    .line 34
    add-double/2addr v0, p2

    .line 35
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 39
    .line 40
    add-double/2addr v0, p2

    .line 41
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 42
    .line 43
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Double4;D)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 2
    .line 3
    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    .line 4
    .line 5
    mul-double/2addr v2, p2

    .line 6
    add-double/2addr v2, v0

    .line 7
    iput-wide v2, p0, Landroid/renderscript/Double4;->x:D

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 10
    .line 11
    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    .line 12
    .line 13
    mul-double/2addr v2, p2

    .line 14
    add-double/2addr v2, v0

    .line 15
    iput-wide v2, p0, Landroid/renderscript/Double4;->y:D

    .line 16
    .line 17
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 18
    .line 19
    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    .line 20
    .line 21
    mul-double/2addr v2, p2

    .line 22
    add-double/2addr v2, v0

    .line 23
    iput-wide v2, p0, Landroid/renderscript/Double4;->z:D

    .line 24
    .line 25
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 26
    .line 27
    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    .line 28
    .line 29
    mul-double/2addr v2, p2

    .line 30
    add-double/2addr v2, v0

    .line 31
    iput-wide v2, p0, Landroid/renderscript/Double4;->w:D

    .line 32
    .line 33
    return-void
.end method

.method public copyTo([DI)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 2
    .line 3
    aput-wide v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    .line 8
    .line 9
    aput-wide v1, p1, v0

    .line 10
    .line 11
    add-int/lit8 v0, p2, 0x2

    .line 12
    .line 13
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    .line 14
    .line 15
    aput-wide v1, p1, v0

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x3

    .line 18
    .line 19
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 20
    .line 21
    aput-wide v0, p1, p2

    .line 22
    .line 23
    return-void
.end method

.method public div(D)V
    .locals 2

    .line 5
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 8
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public div(Landroid/renderscript/Double4;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 4
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double4;)D
    .locals 6

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public elementSum()D
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(I)D
    .locals 2

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
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 13
    .line 14
    return-wide v0

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
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 24
    .line 25
    return-wide v0

    .line 26
    :cond_2
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 27
    .line 28
    return-wide v0

    .line 29
    :cond_3
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 30
    .line 31
    return-wide v0
.end method

.method public length()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public mul(D)V
    .locals 2

    .line 5
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 8
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public mul(Landroid/renderscript/Double4;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 4
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public negate()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 2
    .line 3
    neg-double v0, v0

    .line 4
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 5
    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 7
    .line 8
    neg-double v0, v0

    .line 9
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 10
    .line 11
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 12
    .line 13
    neg-double v0, v0

    .line 14
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 15
    .line 16
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 17
    .line 18
    neg-double v0, v0

    .line 19
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 20
    .line 21
    return-void
.end method

.method public set(Landroid/renderscript/Double4;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 4
    .line 5
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 8
    .line 9
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    .line 10
    .line 11
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 12
    .line 13
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    .line 14
    .line 15
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 16
    .line 17
    return-void
.end method

.method public setAt(ID)V
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
    iput-wide p2, p0, Landroid/renderscript/Double4;->w:D

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
    iput-wide p2, p0, Landroid/renderscript/Double4;->z:D

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iput-wide p2, p0, Landroid/renderscript/Double4;->y:D

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iput-wide p2, p0, Landroid/renderscript/Double4;->x:D

    .line 30
    .line 31
    return-void
.end method

.method public setValues(DDDD)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    .line 2
    .line 3
    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    .line 4
    .line 5
    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    .line 6
    .line 7
    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    .line 8
    .line 9
    return-void
.end method

.method public sub(D)V
    .locals 2

    .line 5
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 8
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public sub(Landroid/renderscript/Double4;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 4
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method
