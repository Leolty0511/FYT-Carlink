.class public Landroid/renderscript/Short2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:S

.field public y:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Short2;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 9
    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 6
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public static add(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 4
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 5
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    add-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static add(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 9
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 10
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 4
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 5
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    div-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 9
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 10
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    div-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)S
    .locals 2

    .line 2
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, v1

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    mul-int/2addr p1, p0

    add-int/2addr p1, v0

    int-to-short p0, p1

    return p0
.end method

.method public static mod(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 4
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 5
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    rem-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 9
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 10
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    rem-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 4
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 5
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 9
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 10
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    mul-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3

    .line 3
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 4
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 5
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    sub-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2

    .line 8
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 9
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 10
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    sub-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short2;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public add(S)V
    .locals 1

    .line 6
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 7
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public addAt(IS)V
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
    iget-short p1, p0, Landroid/renderscript/Short2;->y:S

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    int-to-short p1, p1

    .line 10
    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

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
    iget-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 22
    .line 23
    add-int/2addr p1, p2

    .line 24
    int-to-short p1, p1

    .line 25
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 26
    .line 27
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Short2;S)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 2
    .line 3
    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    .line 4
    .line 5
    mul-int/2addr v1, p2

    .line 6
    add-int/2addr v1, v0

    .line 7
    int-to-short v0, v1

    .line 8
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 9
    .line 10
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 11
    .line 12
    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    .line 13
    .line 14
    mul-int/2addr p1, p2

    .line 15
    add-int/2addr p1, v0

    .line 16
    int-to-short p1, p1

    .line 17
    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    .line 18
    .line 19
    return-void
.end method

.method public copyTo([SI)V
    .locals 1

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 2
    .line 3
    aput-short v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 8
    .line 9
    aput-short v0, p1, p2

    .line 10
    .line 11
    return-void
.end method

.method public div(Landroid/renderscript/Short2;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    div-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public div(S)V
    .locals 1

    .line 6
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 7
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    div-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short2;)S
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    int-to-short p1, v1

    return p1
.end method

.method public elementSum()S
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public get(I)S
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
    iget-short p1, p0, Landroid/renderscript/Short2;->y:S

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
    iget-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 18
    .line 19
    return p1
.end method

.method public length()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public mod(Landroid/renderscript/Short2;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    rem-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public mod(S)V
    .locals 1

    .line 6
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 7
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    rem-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public mul(Landroid/renderscript/Short2;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public mul(S)V
    .locals 1

    .line 6
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 7
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public negate()V
    .locals 1

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    int-to-short v0, v0

    .line 5
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 6
    .line 7
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 8
    .line 9
    neg-int v0, v0

    .line 10
    int-to-short v0, v0

    .line 11
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 12
    .line 13
    return-void
.end method

.method public set(Landroid/renderscript/Short2;)V
    .locals 1

    .line 1
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    .line 2
    .line 3
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 4
    .line 5
    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    .line 6
    .line 7
    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    .line 8
    .line 9
    return-void
.end method

.method public setAt(IS)V
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
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

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
    iput-short p2, p0, Landroid/renderscript/Short2;->x:S

    .line 18
    .line 19
    return-void
.end method

.method public setValues(SS)V
    .locals 0

    .line 1
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 2
    .line 3
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    .line 4
    .line 5
    return-void
.end method

.method public sub(Landroid/renderscript/Short2;)V
    .locals 2

    .line 1
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 2
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public sub(S)V
    .locals 1

    .line 6
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 7
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method
