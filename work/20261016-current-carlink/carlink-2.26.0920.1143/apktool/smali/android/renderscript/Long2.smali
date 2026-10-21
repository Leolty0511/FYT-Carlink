.class public Landroid/renderscript/Long2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:J

.field public y:J


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
    iput-wide p1, p0, Landroid/renderscript/Long2;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    .line 6
    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long2;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 9
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public static add(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 3

    .line 8
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static add(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 5

    .line 3
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 4
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide p0, p1, Landroid/renderscript/Long2;->y:J

    add-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static div(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 3

    .line 8
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static div(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 5

    .line 3
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 4
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide p0, p1, Landroid/renderscript/Long2;->y:J

    div-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)J
    .locals 4

    .line 2
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    iget-wide p0, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static mod(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 3

    .line 8
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 5

    .line 3
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 4
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide p0, p1, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 3

    .line 8
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 5

    .line 3
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 4
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide p0, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 3

    .line 8
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 10
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 5

    .line 3
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 4
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 5
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide p0, p1, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 2

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public add(Landroid/renderscript/Long2;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public addAt(IJ)V
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
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

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
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 21
    .line 22
    add-long/2addr v0, p2

    .line 23
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 24
    .line 25
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Long2;J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 2
    .line 3
    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    .line 4
    .line 5
    mul-long/2addr v2, p2

    .line 6
    add-long/2addr v2, v0

    .line 7
    iput-wide v2, p0, Landroid/renderscript/Long2;->x:J

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 10
    .line 11
    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    .line 12
    .line 13
    mul-long/2addr v2, p2

    .line 14
    add-long/2addr v2, v0

    .line 15
    iput-wide v2, p0, Landroid/renderscript/Long2;->y:J

    .line 16
    .line 17
    return-void
.end method

.method public copyTo([JI)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 2
    .line 3
    aput-wide v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 8
    .line 9
    aput-wide v0, p1, p2

    .line 10
    .line 11
    return-void
.end method

.method public div(J)V
    .locals 2

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public div(Landroid/renderscript/Long2;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long2;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public elementSum()J
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public get(I)J
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
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

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
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 18
    .line 19
    return-wide v0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method public mod(J)V
    .locals 2

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public mod(Landroid/renderscript/Long2;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public mul(J)V
    .locals 2

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public mul(Landroid/renderscript/Long2;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public negate()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 2
    .line 3
    neg-long v0, v0

    .line 4
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 5
    .line 6
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 7
    .line 8
    neg-long v0, v0

    .line 9
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 10
    .line 11
    return-void
.end method

.method public set(Landroid/renderscript/Long2;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 4
    .line 5
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 8
    .line 9
    return-void
.end method

.method public setAt(IJ)V
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
    iput-wide p2, p0, Landroid/renderscript/Long2;->y:J

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
    iput-wide p2, p0, Landroid/renderscript/Long2;->x:J

    .line 18
    .line 19
    return-void
.end method

.method public setValues(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    .line 2
    .line 3
    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    .line 4
    .line 5
    return-void
.end method

.method public sub(J)V
    .locals 2

    .line 6
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 7
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public sub(Landroid/renderscript/Long2;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method
