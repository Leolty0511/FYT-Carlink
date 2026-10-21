.class public Landroid/renderscript/Long4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public w:J

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
    iput-wide p1, p0, Landroid/renderscript/Long4;->w:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->z:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    .line 6
    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    .line 7
    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    .line 8
    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long4;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 11
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 12
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 13
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public static add(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 3

    .line 14
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 15
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 16
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 17
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 18
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static add(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 5

    .line 5
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 6
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 8
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide p0, p1, Landroid/renderscript/Long4;->w:J

    add-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static div(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 3

    .line 14
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 15
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 16
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 17
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 18
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static div(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 5

    .line 5
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 6
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 8
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide p0, p1, Landroid/renderscript/Long4;->w:J

    div-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)J
    .locals 6

    .line 2
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    iget-wide p0, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static mod(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 3

    .line 14
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 15
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 16
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 17
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 18
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 5

    .line 5
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 6
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 8
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide p0, p1, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 3

    .line 14
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 15
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 16
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 17
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 18
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 5

    .line 5
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 6
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 8
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide p0, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 3

    .line 14
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 15
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 16
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 17
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 18
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 5

    .line 5
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 6
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 8
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 9
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide p0, p1, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 2

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 11
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 12
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 13
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public add(Landroid/renderscript/Long4;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 4
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public addAt(IJ)V
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
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 13
    .line 14
    add-long/2addr v0, p2

    .line 15
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

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
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 27
    .line 28
    add-long/2addr v0, p2

    .line 29
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 33
    .line 34
    add-long/2addr v0, p2

    .line 35
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 39
    .line 40
    add-long/2addr v0, p2

    .line 41
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 42
    .line 43
    return-void
.end method

.method public addMultiple(Landroid/renderscript/Long4;J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 2
    .line 3
    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    .line 4
    .line 5
    mul-long/2addr v2, p2

    .line 6
    add-long/2addr v2, v0

    .line 7
    iput-wide v2, p0, Landroid/renderscript/Long4;->x:J

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 10
    .line 11
    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    .line 12
    .line 13
    mul-long/2addr v2, p2

    .line 14
    add-long/2addr v2, v0

    .line 15
    iput-wide v2, p0, Landroid/renderscript/Long4;->y:J

    .line 16
    .line 17
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 18
    .line 19
    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    .line 20
    .line 21
    mul-long/2addr v2, p2

    .line 22
    add-long/2addr v2, v0

    .line 23
    iput-wide v2, p0, Landroid/renderscript/Long4;->z:J

    .line 24
    .line 25
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 26
    .line 27
    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    .line 28
    .line 29
    mul-long/2addr v2, p2

    .line 30
    add-long/2addr v2, v0

    .line 31
    iput-wide v2, p0, Landroid/renderscript/Long4;->w:J

    .line 32
    .line 33
    return-void
.end method

.method public copyTo([JI)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 2
    .line 3
    aput-wide v0, p1, p2

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    .line 8
    .line 9
    aput-wide v1, p1, v0

    .line 10
    .line 11
    add-int/lit8 v0, p2, 0x2

    .line 12
    .line 13
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    .line 14
    .line 15
    aput-wide v1, p1, v0

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x3

    .line 18
    .line 19
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 20
    .line 21
    aput-wide v0, p1, p2

    .line 22
    .line 23
    return-void
.end method

.method public div(J)V
    .locals 2

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 11
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 12
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 13
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public div(Landroid/renderscript/Long4;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 4
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long4;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public elementSum()J
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public get(I)J
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
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

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
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 24
    .line 25
    return-wide v0

    .line 26
    :cond_2
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 27
    .line 28
    return-wide v0

    .line 29
    :cond_3
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 30
    .line 31
    return-wide v0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public mod(J)V
    .locals 2

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 11
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 12
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 13
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public mod(Landroid/renderscript/Long4;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 4
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public mul(J)V
    .locals 2

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 11
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 12
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 13
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public mul(Landroid/renderscript/Long4;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 4
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public negate()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 2
    .line 3
    neg-long v0, v0

    .line 4
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 5
    .line 6
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 7
    .line 8
    neg-long v0, v0

    .line 9
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 10
    .line 11
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 12
    .line 13
    neg-long v0, v0

    .line 14
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 15
    .line 16
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 17
    .line 18
    neg-long v0, v0

    .line 19
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 20
    .line 21
    return-void
.end method

.method public set(Landroid/renderscript/Long4;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 4
    .line 5
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 8
    .line 9
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    .line 10
    .line 11
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 12
    .line 13
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    .line 14
    .line 15
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 16
    .line 17
    return-void
.end method

.method public setAt(IJ)V
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
    iput-wide p2, p0, Landroid/renderscript/Long4;->w:J

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
    iput-wide p2, p0, Landroid/renderscript/Long4;->z:J

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iput-wide p2, p0, Landroid/renderscript/Long4;->y:J

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iput-wide p2, p0, Landroid/renderscript/Long4;->x:J

    .line 30
    .line 31
    return-void
.end method

.method public setValues(JJJJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    .line 2
    .line 3
    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    .line 4
    .line 5
    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    .line 6
    .line 7
    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    .line 8
    .line 9
    return-void
.end method

.method public sub(J)V
    .locals 2

    .line 10
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 11
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 12
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 13
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public sub(Landroid/renderscript/Long4;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 2
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 3
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 4
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method
