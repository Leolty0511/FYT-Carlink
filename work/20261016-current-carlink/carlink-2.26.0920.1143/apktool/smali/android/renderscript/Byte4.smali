.class public Landroid/renderscript/Byte4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public w:B

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

.method public constructor <init>(BBBB)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    .line 4
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    .line 5
    iput-byte p3, p0, Landroid/renderscript/Byte4;->z:B

    .line 6
    iput-byte p4, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte4;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 9
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 10
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 11
    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public static add(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 15
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 16
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 17
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 18
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 6
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 7
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 8
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 9
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 15
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 16
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 17
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 18
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 6
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 7
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 8
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 9
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)B
    .locals 3

    .line 2
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr p1, p0

    add-int/2addr p1, v0

    int-to-byte p0, p1

    return p0
.end method

.method public static mul(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 15
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 16
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 17
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 18
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 6
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 7
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 8
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 9
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 15
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 16
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 17
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 18
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 6
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 7
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 8
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 9
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 1

    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 11
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 12
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 13
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public add(Landroid/renderscript/Byte4;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 3
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 4
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public addAt(IB)V
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
    iget-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    .line 13
    .line 14
    add-int/2addr p1, p2

    .line 15
    int-to-byte p1, p1

    .line 16
    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 20
    .line 21
    const-string p2, "Index: i"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-byte p1, p0, Landroid/renderscript/Byte4;->z:B

    .line 28
    .line 29
    add-int/2addr p1, p2

    .line 30
    int-to-byte p1, p1

    .line 31
    iput-byte p1, p0, Landroid/renderscript/Byte4;->z:B

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-byte p1, p0, Landroid/renderscript/Byte4;->y:B

    .line 35
    .line 36
    add-int/2addr p1, p2

    .line 37
    int-to-byte p1, p1

    .line 38
    iput-byte p1, p0, Landroid/renderscript/Byte4;->y:B

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    .line 42
    .line 43
    add-int/2addr p1, p2

    .line 44
    int-to-byte p1, p1

    .line 45
    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    .line 46
    .line 47
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Byte4;B)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 2
    .line 3
    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    .line 4
    .line 5
    mul-int/2addr v1, p2

    .line 6
    add-int/2addr v1, v0

    .line 7
    int-to-byte v0, v1

    .line 8
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 9
    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 11
    .line 12
    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    .line 13
    .line 14
    mul-int/2addr v1, p2

    .line 15
    add-int/2addr v1, v0

    .line 16
    int-to-byte v0, v1

    .line 17
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 18
    .line 19
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 20
    .line 21
    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    .line 22
    .line 23
    mul-int/2addr v1, p2

    .line 24
    add-int/2addr v1, v0

    .line 25
    int-to-byte v0, v1

    .line 26
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 27
    .line 28
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    .line 29
    .line 30
    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    .line 31
    .line 32
    mul-int/2addr p1, p2

    .line 33
    add-int/2addr p1, v0

    .line 34
    int-to-byte p1, p1

    .line 35
    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    .line 36
    .line 37
    return-void
.end method

.method public copyTo([BI)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 2
    .line 3
    aput-byte v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    .line 8
    .line 9
    aput-byte v1, p1, v0

    .line 10
    .line 11
    add-int/lit8 v0, p2, 0x2

    .line 12
    .line 13
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    .line 14
    .line 15
    aput-byte v1, p1, v0

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x3

    .line 18
    .line 19
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    .line 20
    .line 21
    aput-byte v0, p1, p2

    .line 22
    .line 23
    return-void
.end method

.method public div(B)V
    .locals 1

    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 11
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 12
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 13
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public div(Landroid/renderscript/Byte4;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 3
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 4
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte4;)B
    .locals 3

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    int-to-byte p1, v1

    return p1
.end method

.method public elementSum()B
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public get(I)B
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
    iget-byte p1, p0, Landroid/renderscript/Byte4;->w:B

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
    iget-byte p1, p0, Landroid/renderscript/Byte4;->z:B

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    iget-byte p1, p0, Landroid/renderscript/Byte4;->y:B

    .line 27
    .line 28
    return p1

    .line 29
    :cond_3
    iget-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    .line 30
    .line 31
    return p1
.end method

.method public length()B
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public mul(B)V
    .locals 1

    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 11
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 12
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 13
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public mul(Landroid/renderscript/Byte4;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 3
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 4
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public negate()V
    .locals 1

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    int-to-byte v0, v0

    .line 5
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 6
    .line 7
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 8
    .line 9
    neg-int v0, v0

    .line 10
    int-to-byte v0, v0

    .line 11
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 12
    .line 13
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 14
    .line 15
    neg-int v0, v0

    .line 16
    int-to-byte v0, v0

    .line 17
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 18
    .line 19
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    .line 20
    .line 21
    neg-int v0, v0

    .line 22
    int-to-byte v0, v0

    .line 23
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    .line 24
    .line 25
    return-void
.end method

.method public set(Landroid/renderscript/Byte4;)V
    .locals 1

    .line 1
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    .line 2
    .line 3
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 4
    .line 5
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    .line 6
    .line 7
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 8
    .line 9
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    .line 10
    .line 11
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 12
    .line 13
    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    .line 14
    .line 15
    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    .line 16
    .line 17
    return-void
.end method

.method public setAt(IB)V
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
    iput-byte p2, p0, Landroid/renderscript/Byte4;->w:B

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
    iput-byte p2, p0, Landroid/renderscript/Byte4;->z:B

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iput-byte p2, p0, Landroid/renderscript/Byte4;->x:B

    .line 30
    .line 31
    return-void
.end method

.method public setValues(BBBB)V
    .locals 0

    .line 1
    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    .line 2
    .line 3
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    .line 4
    .line 5
    iput-byte p3, p0, Landroid/renderscript/Byte4;->z:B

    .line 6
    .line 7
    iput-byte p4, p0, Landroid/renderscript/Byte4;->w:B

    .line 8
    .line 9
    return-void
.end method

.method public sub(B)V
    .locals 1

    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 11
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 12
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 13
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public sub(Landroid/renderscript/Byte4;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 3
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 4
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method
