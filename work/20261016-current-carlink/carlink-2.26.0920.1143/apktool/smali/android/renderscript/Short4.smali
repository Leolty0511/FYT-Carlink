.class public Landroid/renderscript/Short4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public w:S

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

.method public constructor <init>(Landroid/renderscript/Short4;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 11
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 12
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 13
    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    iput-short p1, p0, Landroid/renderscript/Short4;->z:S

    iput-short p1, p0, Landroid/renderscript/Short4;->y:S

    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    return-void
.end method

.method public constructor <init>(SSSS)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    .line 6
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    .line 7
    iput-short p3, p0, Landroid/renderscript/Short4;->z:S

    .line 8
    iput-short p4, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public static add(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 6
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 7
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 8
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 9
    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    add-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static add(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 15
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 16
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 17
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 18
    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 6
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 7
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 8
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 9
    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    div-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 15
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 16
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 17
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 18
    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    div-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)S
    .locals 3

    .line 2
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    iget-short v2, p0, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    iget-short v2, p0, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    mul-int/2addr p1, p0

    add-int/2addr p1, v0

    int-to-short p0, p1

    return p0
.end method

.method public static mod(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 6
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 7
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 8
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 9
    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    rem-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 15
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 16
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 17
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 18
    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    rem-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 6
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 7
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 8
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 9
    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 15
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 16
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 17
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 18
    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    mul-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .locals 3

    .line 5
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 6
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 7
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 8
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 9
    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    sub-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .locals 2

    .line 14
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 15
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 16
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 17
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 18
    iget-short p0, p0, Landroid/renderscript/Short4;->w:S

    sub-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short4;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 3
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 4
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public add(S)V
    .locals 1

    .line 10
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 11
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 12
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 13
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public addAt(IS)V
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
    iget-short p1, p0, Landroid/renderscript/Short4;->w:S

    .line 13
    .line 14
    add-int/2addr p1, p2

    .line 15
    int-to-short p1, p1

    .line 16
    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

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
    iget-short p1, p0, Landroid/renderscript/Short4;->z:S

    .line 28
    .line 29
    add-int/2addr p1, p2

    .line 30
    int-to-short p1, p1

    .line 31
    iput-short p1, p0, Landroid/renderscript/Short4;->z:S

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-short p1, p0, Landroid/renderscript/Short4;->y:S

    .line 35
    .line 36
    add-int/2addr p1, p2

    .line 37
    int-to-short p1, p1

    .line 38
    iput-short p1, p0, Landroid/renderscript/Short4;->y:S

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-short p1, p0, Landroid/renderscript/Short4;->x:S

    .line 42
    .line 43
    add-int/2addr p1, p2

    .line 44
    int-to-short p1, p1

    .line 45
    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    .line 46
    .line 47
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Short4;S)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 2
    .line 3
    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    .line 4
    .line 5
    mul-int/2addr v1, p2

    .line 6
    add-int/2addr v1, v0

    .line 7
    int-to-short v0, v1

    .line 8
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 9
    .line 10
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 11
    .line 12
    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    .line 13
    .line 14
    mul-int/2addr v1, p2

    .line 15
    add-int/2addr v1, v0

    .line 16
    int-to-short v0, v1

    .line 17
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 18
    .line 19
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 20
    .line 21
    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    .line 22
    .line 23
    mul-int/2addr v1, p2

    .line 24
    add-int/2addr v1, v0

    .line 25
    int-to-short v0, v1

    .line 26
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 27
    .line 28
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 29
    .line 30
    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    .line 31
    .line 32
    mul-int/2addr p1, p2

    .line 33
    add-int/2addr p1, v0

    .line 34
    int-to-short p1, p1

    .line 35
    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    .line 36
    .line 37
    return-void
.end method

.method public copyTo([SI)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 2
    .line 3
    aput-short v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    .line 8
    .line 9
    aput-short v1, p1, v0

    .line 10
    .line 11
    add-int/lit8 v0, p2, 0x2

    .line 12
    .line 13
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    .line 14
    .line 15
    aput-short v1, p1, v0

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x3

    .line 18
    .line 19
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 20
    .line 21
    aput-short v0, p1, p2

    .line 22
    .line 23
    return-void
.end method

.method public div(Landroid/renderscript/Short4;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 3
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 4
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    div-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public div(S)V
    .locals 1

    .line 10
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 11
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 12
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 13
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    div-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short4;)S
    .locals 3

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    int-to-short p1, v1

    return p1
.end method

.method public elementSum()S
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public get(I)S
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
    iget-short p1, p0, Landroid/renderscript/Short4;->w:S

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
    iget-short p1, p0, Landroid/renderscript/Short4;->z:S

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    iget-short p1, p0, Landroid/renderscript/Short4;->y:S

    .line 27
    .line 28
    return p1

    .line 29
    :cond_3
    iget-short p1, p0, Landroid/renderscript/Short4;->x:S

    .line 30
    .line 31
    return p1
.end method

.method public length()S
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public mod(Landroid/renderscript/Short4;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 3
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 4
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    rem-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public mod(S)V
    .locals 1

    .line 10
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 11
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 12
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 13
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    rem-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public mul(Landroid/renderscript/Short4;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 3
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 4
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public mul(S)V
    .locals 1

    .line 10
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 11
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 12
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 13
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public negate()V
    .locals 1

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    int-to-short v0, v0

    .line 5
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 6
    .line 7
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 8
    .line 9
    neg-int v0, v0

    .line 10
    int-to-short v0, v0

    .line 11
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 12
    .line 13
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 14
    .line 15
    neg-int v0, v0

    .line 16
    int-to-short v0, v0

    .line 17
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 18
    .line 19
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 20
    .line 21
    neg-int v0, v0

    .line 22
    int-to-short v0, v0

    .line 23
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 24
    .line 25
    return-void
.end method

.method public set(Landroid/renderscript/Short4;)V
    .locals 1

    .line 1
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    .line 2
    .line 3
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 4
    .line 5
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    .line 6
    .line 7
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 8
    .line 9
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    .line 10
    .line 11
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 12
    .line 13
    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    .line 14
    .line 15
    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    .line 16
    .line 17
    return-void
.end method

.method public setAt(IS)V
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
    iput-short p2, p0, Landroid/renderscript/Short4;->w:S

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
    iput-short p2, p0, Landroid/renderscript/Short4;->z:S

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iput-short p2, p0, Landroid/renderscript/Short4;->x:S

    .line 30
    .line 31
    return-void
.end method

.method public setValues(SSSS)V
    .locals 0

    .line 1
    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    .line 2
    .line 3
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    .line 4
    .line 5
    iput-short p3, p0, Landroid/renderscript/Short4;->z:S

    .line 6
    .line 7
    iput-short p4, p0, Landroid/renderscript/Short4;->w:S

    .line 8
    .line 9
    return-void
.end method

.method public sub(Landroid/renderscript/Short4;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 3
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 4
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public sub(S)V
    .locals 1

    .line 10
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 11
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 12
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 13
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method
