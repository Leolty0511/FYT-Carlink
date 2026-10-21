.class public Landroid/renderscript/Byte2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:B

.field public y:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BB)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    .line 4
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte2;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 7
    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public static add(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 9
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 10
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 4
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 5
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 9
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 10
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 4
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 5
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)B
    .locals 2

    .line 2
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p1, p0

    add-int/2addr p1, v0

    int-to-byte p0, p1

    return p0
.end method

.method public static mul(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 9
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 10
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 4
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 5
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 9
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 10
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 4
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 5
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 1

    .line 6
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 7
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public add(Landroid/renderscript/Byte2;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public addAt(IB)V
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
    iget-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    int-to-byte p1, p1

    .line 10
    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 14
    .line 15
    const-string p2, "Index: i"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    iget-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    .line 22
    .line 23
    add-int/2addr p1, p2

    .line 24
    int-to-byte p1, p1

    .line 25
    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    .line 26
    .line 27
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Byte2;B)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 2
    .line 3
    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    .line 4
    .line 5
    mul-int/2addr v1, p2

    .line 6
    add-int/2addr v1, v0

    .line 7
    int-to-byte v0, v1

    .line 8
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 9
    .line 10
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 11
    .line 12
    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    .line 13
    .line 14
    mul-int/2addr p1, p2

    .line 15
    add-int/2addr p1, v0

    .line 16
    int-to-byte p1, p1

    .line 17
    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    .line 18
    .line 19
    return-void
.end method

.method public copyTo([BI)V
    .locals 1

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 2
    .line 3
    aput-byte v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 8
    .line 9
    aput-byte v0, p1, p2

    .line 10
    .line 11
    return-void
.end method

.method public div(B)V
    .locals 1

    .line 6
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 7
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public div(Landroid/renderscript/Byte2;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte2;)B
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    int-to-byte p1, v1

    return p1
.end method

.method public elementSum()B
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public get(I)B
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
    iget-byte p1, p0, Landroid/renderscript/Byte2;->y:B

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
    iget-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    .line 18
    .line 19
    return p1
.end method

.method public length()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public mul(B)V
    .locals 1

    .line 6
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 7
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public mul(Landroid/renderscript/Byte2;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public negate()V
    .locals 1

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    int-to-byte v0, v0

    .line 5
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 6
    .line 7
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 8
    .line 9
    neg-int v0, v0

    .line 10
    int-to-byte v0, v0

    .line 11
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 12
    .line 13
    return-void
.end method

.method public set(Landroid/renderscript/Byte2;)V
    .locals 1

    .line 1
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    .line 2
    .line 3
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 4
    .line 5
    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    .line 6
    .line 7
    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    .line 8
    .line 9
    return-void
.end method

.method public setAt(IB)V
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
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

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
    iput-byte p2, p0, Landroid/renderscript/Byte2;->x:B

    .line 18
    .line 19
    return-void
.end method

.method public setValues(BB)V
    .locals 0

    .line 1
    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    .line 2
    .line 3
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    .line 4
    .line 5
    return-void
.end method

.method public sub(B)V
    .locals 1

    .line 6
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 7
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public sub(Landroid/renderscript/Byte2;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 2
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method
