.class public Landroid/renderscript/Short3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:S

.field public y:S

.field public z:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Short3;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 10
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 11
    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    iput-short p1, p0, Landroid/renderscript/Short3;->y:S

    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    return-void
.end method

.method public constructor <init>(SSS)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 6
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    .line 7
    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public static add(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    .line 4
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 5
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 6
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 7
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    add-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static add(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    .line 11
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 12
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 13
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 14
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    .line 4
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 5
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 6
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 7
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    div-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    .line 11
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 12
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 13
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 14
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    div-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)S
    .locals 3

    .line 2
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    iget-short v2, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr p1, p0

    add-int/2addr p1, v1

    int-to-short p0, p1

    return p0
.end method

.method public static mod(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    .line 4
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 5
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 6
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 7
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    rem-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    .line 11
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 12
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 13
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 14
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    rem-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    .line 4
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 5
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 6
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 7
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    .line 11
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 12
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 13
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 14
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    .line 4
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 5
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 6
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 7
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    sub-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    .line 11
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 12
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 13
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 14
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    sub-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short3;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 3
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public add(S)V
    .locals 1

    .line 8
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 9
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 10
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public addAt(IS)V
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
    iget-short p1, p0, Landroid/renderscript/Short3;->z:S

    .line 10
    .line 11
    add-int/2addr p1, p2

    .line 12
    int-to-short p1, p1

    .line 13
    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

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
    iget-short p1, p0, Landroid/renderscript/Short3;->y:S

    .line 25
    .line 26
    add-int/2addr p1, p2

    .line 27
    int-to-short p1, p1

    .line 28
    iput-short p1, p0, Landroid/renderscript/Short3;->y:S

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 32
    .line 33
    add-int/2addr p1, p2

    .line 34
    int-to-short p1, p1

    .line 35
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 36
    .line 37
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Short3;S)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 2
    .line 3
    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    .line 4
    .line 5
    mul-int/2addr v1, p2

    .line 6
    add-int/2addr v1, v0

    .line 7
    int-to-short v0, v1

    .line 8
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 9
    .line 10
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 11
    .line 12
    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    .line 13
    .line 14
    mul-int/2addr v1, p2

    .line 15
    add-int/2addr v1, v0

    .line 16
    int-to-short v0, v1

    .line 17
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 18
    .line 19
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 20
    .line 21
    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    .line 22
    .line 23
    mul-int/2addr p1, p2

    .line 24
    add-int/2addr p1, v0

    .line 25
    int-to-short p1, p1

    .line 26
    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    .line 27
    .line 28
    return-void
.end method

.method public copyTo([SI)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 2
    .line 3
    aput-short v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    .line 8
    .line 9
    aput-short v1, p1, v0

    .line 10
    .line 11
    add-int/lit8 p2, p2, 0x2

    .line 12
    .line 13
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 14
    .line 15
    aput-short v0, p1, p2

    .line 16
    .line 17
    return-void
.end method

.method public div(Landroid/renderscript/Short3;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 3
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    div-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public div(S)V
    .locals 1

    .line 8
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 9
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 10
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    div-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short3;)S
    .locals 3

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    int-to-short p1, v0

    return p1
.end method

.method public elementSum()S
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public get(I)S
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
    iget-short p1, p0, Landroid/renderscript/Short3;->z:S

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
    iget-short p1, p0, Landroid/renderscript/Short3;->y:S

    .line 21
    .line 22
    return p1

    .line 23
    :cond_2
    iget-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 24
    .line 25
    return p1
.end method

.method public length()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public mod(Landroid/renderscript/Short3;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 3
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public mod(S)V
    .locals 1

    .line 8
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 9
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 10
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public mul(Landroid/renderscript/Short3;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 3
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public mul(S)V
    .locals 1

    .line 8
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 9
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 10
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public negate()V
    .locals 1

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    int-to-short v0, v0

    .line 5
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 6
    .line 7
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 8
    .line 9
    neg-int v0, v0

    .line 10
    int-to-short v0, v0

    .line 11
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 12
    .line 13
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 14
    .line 15
    neg-int v0, v0

    .line 16
    int-to-short v0, v0

    .line 17
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 18
    .line 19
    return-void
.end method

.method public set(Landroid/renderscript/Short3;)V
    .locals 1

    .line 1
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    .line 2
    .line 3
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 4
    .line 5
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    .line 6
    .line 7
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 8
    .line 9
    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    .line 10
    .line 11
    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    .line 12
    .line 13
    return-void
.end method

.method public setAt(IS)V
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
    iput-short p2, p0, Landroid/renderscript/Short3;->z:S

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
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    iput-short p2, p0, Landroid/renderscript/Short3;->x:S

    .line 24
    .line 25
    return-void
.end method

.method public setValues(SSS)V
    .locals 0

    .line 1
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 2
    .line 3
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    .line 4
    .line 5
    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    .line 6
    .line 7
    return-void
.end method

.method public sub(Landroid/renderscript/Short3;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 3
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public sub(S)V
    .locals 1

    .line 8
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 9
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 10
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method
