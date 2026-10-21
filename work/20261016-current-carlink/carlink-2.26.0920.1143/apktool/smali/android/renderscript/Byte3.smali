.class public Landroid/renderscript/Byte3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:B

.field public y:B

.field public z:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBB)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    .line 4
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    .line 5
    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte3;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 8
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 9
    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public static add(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2

    .line 11
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 12
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 13
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 14
    iget-byte p0, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3

    .line 4
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 5
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 6
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 7
    iget-byte p0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2

    .line 11
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 12
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 13
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 14
    iget-byte p0, p0, Landroid/renderscript/Byte3;->z:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3

    .line 4
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 5
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 6
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 7
    iget-byte p0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)B
    .locals 3

    .line 2
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    iget-byte p0, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr p1, p0

    int-to-byte p0, p1

    add-int/2addr v0, p0

    int-to-byte p0, v0

    return p0
.end method

.method public static mul(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2

    .line 11
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 12
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 13
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 14
    iget-byte p0, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3

    .line 4
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 5
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 6
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 7
    iget-byte p0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2

    .line 11
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 12
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 13
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 14
    iget-byte p0, p0, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3

    .line 4
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 5
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 6
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 7
    iget-byte p0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 1

    .line 8
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 9
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public add(Landroid/renderscript/Byte3;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 3
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public addAt(IB)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    .line 10
    .line 11
    add-int/2addr p1, p2

    .line 12
    int-to-byte p1, p1

    .line 13
    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 17
    .line 18
    const-string p2, "Index: i"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    iget-byte p1, p0, Landroid/renderscript/Byte3;->y:B

    .line 25
    .line 26
    add-int/2addr p1, p2

    .line 27
    int-to-byte p1, p1

    .line 28
    iput-byte p1, p0, Landroid/renderscript/Byte3;->y:B

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    .line 32
    .line 33
    add-int/2addr p1, p2

    .line 34
    int-to-byte p1, p1

    .line 35
    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    .line 36
    .line 37
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Byte3;B)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 2
    .line 3
    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    .line 4
    .line 5
    mul-int/2addr v1, p2

    .line 6
    add-int/2addr v1, v0

    .line 7
    int-to-byte v0, v1

    .line 8
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 9
    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 11
    .line 12
    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    .line 13
    .line 14
    mul-int/2addr v1, p2

    .line 15
    add-int/2addr v1, v0

    .line 16
    int-to-byte v0, v1

    .line 17
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 18
    .line 19
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 20
    .line 21
    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    .line 22
    .line 23
    mul-int/2addr p1, p2

    .line 24
    add-int/2addr p1, v0

    .line 25
    int-to-byte p1, p1

    .line 26
    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    .line 27
    .line 28
    return-void
.end method

.method public copyTo([BI)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 2
    .line 3
    aput-byte v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    .line 8
    .line 9
    aput-byte v1, p1, v0

    .line 10
    .line 11
    add-int/lit8 p2, p2, 0x2

    .line 12
    .line 13
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 14
    .line 15
    aput-byte v0, p1, p2

    .line 16
    .line 17
    return-void
.end method

.method public div(B)V
    .locals 1

    .line 8
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 9
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public div(Landroid/renderscript/Byte3;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 3
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte3;)B
    .locals 3

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, p1

    int-to-byte p1, v1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    return p1
.end method

.method public elementSum()B
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public get(I)B
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    const-string v0, "Index: i"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    iget-byte p1, p0, Landroid/renderscript/Byte3;->y:B

    .line 21
    .line 22
    return p1

    .line 23
    :cond_2
    iget-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    .line 24
    .line 25
    return p1
.end method

.method public length()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public mul(B)V
    .locals 1

    .line 8
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 9
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public mul(Landroid/renderscript/Byte3;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 3
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public negate()V
    .locals 1

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    int-to-byte v0, v0

    .line 5
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 6
    .line 7
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 8
    .line 9
    neg-int v0, v0

    .line 10
    int-to-byte v0, v0

    .line 11
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 12
    .line 13
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 14
    .line 15
    neg-int v0, v0

    .line 16
    int-to-byte v0, v0

    .line 17
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 18
    .line 19
    return-void
.end method

.method public set(Landroid/renderscript/Byte3;)V
    .locals 1

    .line 1
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    .line 2
    .line 3
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 4
    .line 5
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    .line 6
    .line 7
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 8
    .line 9
    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    .line 10
    .line 11
    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    .line 12
    .line 13
    return-void
.end method

.method public setAt(IB)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iput-byte p2, p0, Landroid/renderscript/Byte3;->z:B

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
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    iput-byte p2, p0, Landroid/renderscript/Byte3;->x:B

    .line 24
    .line 25
    return-void
.end method

.method public setValues(BBB)V
    .locals 0

    .line 1
    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    .line 2
    .line 3
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    .line 4
    .line 5
    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    .line 6
    .line 7
    return-void
.end method

.method public sub(B)V
    .locals 1

    .line 8
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 9
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public sub(Landroid/renderscript/Byte3;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 3
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method
