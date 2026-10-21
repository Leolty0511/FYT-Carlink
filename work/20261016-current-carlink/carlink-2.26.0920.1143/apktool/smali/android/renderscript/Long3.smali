.class public Landroid/renderscript/Long3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroid/renderscript/Long3;->z:J

    iput-wide p1, p0, Landroid/renderscript/Long3;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    .line 6
    iput-wide p3, p0, Landroid/renderscript/Long3;->y:J

    .line 7
    iput-wide p5, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long3;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 10
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 11
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public static add(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 3

    .line 11
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 12
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 13
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 14
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    return-object v0
.end method

.method public static add(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 5

    .line 4
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 6
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->y:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    iget-wide p0, p1, Landroid/renderscript/Long3;->z:J

    add-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    return-object v0
.end method

.method public static div(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 3

    .line 11
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 12
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 13
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 14
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    return-object v0
.end method

.method public static div(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 5

    .line 4
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->x:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 6
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->y:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    iget-wide p0, p1, Landroid/renderscript/Long3;->z:J

    div-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)J
    .locals 6

    .line 2
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    iget-wide p0, p0, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v0, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 3

    .line 11
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 12
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 13
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 14
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 5

    .line 4
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 6
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    iget-wide p0, p1, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 3

    .line 11
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 12
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 13
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 14
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 5

    .line 4
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 6
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    iget-wide p0, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 3

    .line 11
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 12
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 13
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 14
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 5

    .line 4
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 6
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    iget-wide p0, p1, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 2

    .line 8
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 9
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public add(Landroid/renderscript/Long3;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public addAt(IJ)V
    .locals 2

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
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 10
    .line 11
    add-long/2addr v0, p2

    .line 12
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

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
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 24
    .line 25
    add-long/2addr v0, p2

    .line 26
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 30
    .line 31
    add-long/2addr v0, p2

    .line 32
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 33
    .line 34
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Long3;J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 2
    .line 3
    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    .line 4
    .line 5
    mul-long/2addr v2, p2

    .line 6
    add-long/2addr v2, v0

    .line 7
    iput-wide v2, p0, Landroid/renderscript/Long3;->x:J

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 10
    .line 11
    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    .line 12
    .line 13
    mul-long/2addr v2, p2

    .line 14
    add-long/2addr v2, v0

    .line 15
    iput-wide v2, p0, Landroid/renderscript/Long3;->y:J

    .line 16
    .line 17
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 18
    .line 19
    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    .line 20
    .line 21
    mul-long/2addr v2, p2

    .line 22
    add-long/2addr v2, v0

    .line 23
    iput-wide v2, p0, Landroid/renderscript/Long3;->z:J

    .line 24
    .line 25
    return-void
.end method

.method public copyTo([JI)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 2
    .line 3
    aput-wide v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    .line 8
    .line 9
    aput-wide v1, p1, v0

    .line 10
    .line 11
    add-int/lit8 p2, p2, 0x2

    .line 12
    .line 13
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 14
    .line 15
    aput-wide v0, p1, p2

    .line 16
    .line 17
    return-void
.end method

.method public div(J)V
    .locals 2

    .line 8
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 9
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public div(Landroid/renderscript/Long3;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long3;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()J
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public get(I)J
    .locals 2

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
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 10
    .line 11
    return-wide v0

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
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_2
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 24
    .line 25
    return-wide v0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method public mod(J)V
    .locals 2

    .line 8
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 9
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public mod(Landroid/renderscript/Long3;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public mul(J)V
    .locals 2

    .line 8
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 9
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public mul(Landroid/renderscript/Long3;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public negate()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 2
    .line 3
    neg-long v0, v0

    .line 4
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 5
    .line 6
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 7
    .line 8
    neg-long v0, v0

    .line 9
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 10
    .line 11
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 12
    .line 13
    neg-long v0, v0

    .line 14
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 15
    .line 16
    return-void
.end method

.method public set(Landroid/renderscript/Long3;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 4
    .line 5
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 8
    .line 9
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    .line 10
    .line 11
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 12
    .line 13
    return-void
.end method

.method public setAt(IJ)V
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
    iput-wide p2, p0, Landroid/renderscript/Long3;->z:J

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
    iput-wide p2, p0, Landroid/renderscript/Long3;->y:J

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    iput-wide p2, p0, Landroid/renderscript/Long3;->x:J

    .line 24
    .line 25
    return-void
.end method

.method public setValues(JJJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    .line 2
    .line 3
    iput-wide p3, p0, Landroid/renderscript/Long3;->y:J

    .line 4
    .line 5
    iput-wide p5, p0, Landroid/renderscript/Long3;->z:J

    .line 6
    .line 7
    return-void
.end method

.method public sub(J)V
    .locals 2

    .line 8
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 9
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method

.method public sub(Landroid/renderscript/Long3;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method
