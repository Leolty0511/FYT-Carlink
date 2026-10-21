.class public Lk0/v3;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static s:I = 0xa

.field public static t:I = 0xa

.field public static u:I = 0xa

.field public static v:I = 0x7

.field public static w:I = 0x7


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Lo1/g0;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:B

.field public r:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/v3;->c:I

    const/16 v1, 0x2f

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v6, 0x5

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v7, 0x6

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v8, 0x7

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v9, 0x8

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v9, 0x9

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v9, 0xa

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v9, 0xb

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v9, 0xc

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v9, 0xd

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v9, 0xe

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v9, 0xf

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v9, 0x10

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v9, 0x11

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v9, 0x12

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v9, 0x13

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v9, 0x14

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v9, 0x15

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v9, 0x16

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v9, 0x17

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v9, 0x18

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v9, 0x19

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v9, 0x1a

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v9, 0x1b

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v9, 0x1c

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v9, 0x1d

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v9, 0x1e

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v9, 0x1f

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v9, 0x20

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v10, 0x21

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v10, 0x22

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v10, 0x23

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v10, 0x24

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v10, 0x25

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v10, 0x26

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v10, 0x27

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v10, 0x28

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v10, 0x29

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v10, 0x2a

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v10, 0x2b

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v10, 0x2c

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v10, 0x2d

    aput-object v3, v1, v10

    new-array v2, v2, [I

    fill-array-data v2, :array_2e

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/v3;->d:[[I

    .line 4
    new-instance v1, Lk0/v3$a;

    invoke-direct {v1, p0}, Lk0/v3$a;-><init>(Lk0/v3;)V

    iput-object v1, p0, Lk0/v3;->e:Ljava/lang/Runnable;

    .line 5
    iput v0, p0, Lk0/v3;->f:I

    .line 6
    new-instance v1, Lk0/v3$b;

    invoke-direct {v1, p0}, Lk0/v3$b;-><init>(Lk0/v3;)V

    iput-object v1, p0, Lk0/v3;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/v3$c;

    invoke-direct {v1, p0}, Lk0/v3$c;-><init>(Lk0/v3;)V

    iput-object v1, p0, Lk0/v3;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/v3;->i:Lo1/g0;

    .line 9
    iput v4, p0, Lk0/v3;->j:I

    .line 10
    iput v5, p0, Lk0/v3;->k:I

    .line 11
    iput v6, p0, Lk0/v3;->l:I

    .line 12
    iput v7, p0, Lk0/v3;->m:I

    .line 13
    iput v8, p0, Lk0/v3;->n:I

    .line 14
    new-instance v1, Lk0/v3$d;

    invoke-direct {v1, p0}, Lk0/v3$d;-><init>(Lk0/v3;)V

    iput-object v1, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/v3$e;

    invoke-direct {v1, p0}, Lk0/v3$e;-><init>(Lk0/v3;)V

    iput-object v1, p0, Lk0/v3;->p:Ljava/lang/Runnable;

    .line 16
    iput-byte v0, p0, Lk0/v3;->q:B

    .line 17
    new-instance v0, Lk0/v3$f;

    invoke-direct {v0, p0}, Lk0/v3$f;-><init>(Lk0/v3;)V

    iput-object v0, p0, Lk0/v3;->r:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x10
        0x1d
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x12
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x13
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_5
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x16
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x17
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x18
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x7
    .end array-data

    :array_a
    .array-data 4
        0x1a
        0x8
    .end array-data

    :array_b
    .array-data 4
        0x1b
        0x15
    .end array-data

    :array_c
    .array-data 4
        0x1c
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x1d
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x1e
        0x26
    .end array-data

    :array_f
    .array-data 4
        0x1f
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x20
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x21
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x22
        0x10
    .end array-data

    :array_13
    .array-data 4
        0x23
        0x40
    .end array-data

    :array_14
    .array-data 4
        0x24
        0x5
    .end array-data

    :array_15
    .array-data 4
        0x25
        0x1d
    .end array-data

    :array_16
    .array-data 4
        0x26
        0x13
    .end array-data

    :array_17
    .array-data 4
        0x27
        0x14
    .end array-data

    :array_18
    .array-data 4
        0x28
        0xd
    .end array-data

    :array_19
    .array-data 4
        0x29
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x2a
        0x4a
    .end array-data

    :array_1b
    .array-data 4
        0x2b
        0x4b
    .end array-data

    :array_1c
    .array-data 4
        0x2c
        0x37
    .end array-data

    :array_1d
    .array-data 4
        0x2d
        0x9
    .end array-data

    :array_1e
    .array-data 4
        0x2e
        0x6
    .end array-data

    :array_1f
    .array-data 4
        0x2f
        0x22
    .end array-data

    :array_20
    .array-data 4
        0x31
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x32
        0x3a
    .end array-data

    :array_22
    .array-data 4
        0x33
        0x12
    .end array-data

    :array_23
    .array-data 4
        0x34
        0x23
    .end array-data

    :array_24
    .array-data 4
        0x35
        0x12
    .end array-data

    :array_25
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_26
    .array-data 4
        0x37
        0x16
    .end array-data

    :array_27
    .array-data 4
        0x38
        0x42
    .end array-data

    :array_28
    .array-data 4
        0x39
        0x41
    .end array-data

    :array_29
    .array-data 4
        0x3a
        0x4e
    .end array-data

    :array_2a
    .array-data 4
        0x3b
        0x40
    .end array-data

    :array_2b
    .array-data 4
        0x3c
        0x10
    .end array-data

    :array_2c
    .array-data 4
        0x30
        0xd
    .end array-data

    :array_2d
    .array-data 4
        0x84
        0x7
    .end array-data

    :array_2e
    .array-data 4
        0x85
        0x8
    .end array-data
.end method

.method public static synthetic c3(Lk0/v3;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/v3;->i:Lo1/g0;

    return-object p0
.end method

.method public static synthetic d3(Lk0/v3;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/v3;->b3(III)V

    return-void
.end method

.method public static synthetic e3(Lk0/v3;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/v3;->a3(II)V

    return-void
.end method

.method public static synthetic f3(Lk0/v3;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/v3;->r:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    .line 2
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/v3;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/v3;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    :cond_0
    sget v0, Lk0/nt;->c:I

    const/4 v2, 0x2

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 11
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    iput v4, v0, Lk0/mt;->e:I

    .line 13
    iput v1, v0, Lk0/mt;->f:I

    .line 14
    iput v1, v0, Lk0/mt;->g:I

    .line 15
    iput v4, v0, Lk0/mt;->b:I

    .line 16
    iput v4, v0, Lk0/mt;->c:I

    .line 17
    iput v4, v0, Lk0/mt;->d:I

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 19
    iput v4, v0, Lk0/mt;->e:I

    .line 20
    iput v4, v0, Lk0/mt;->f:I

    .line 21
    iput v1, v0, Lk0/mt;->g:I

    .line 22
    iput v4, v0, Lk0/mt;->b:I

    .line 23
    iput v4, v0, Lk0/mt;->c:I

    .line 24
    iput v4, v0, Lk0/mt;->d:I

    .line 25
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/v3;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 28
    iput v4, v0, Lk0/mt;->e:I

    .line 29
    iput v1, v0, Lk0/mt;->f:I

    .line 30
    iput v1, v0, Lk0/mt;->g:I

    .line 31
    iput v1, v0, Lk0/mt;->b:I

    .line 32
    iput v4, v0, Lk0/mt;->c:I

    .line 33
    iput v4, v0, Lk0/mt;->d:I

    .line 34
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/v3;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 12

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/4 v1, -0x1

    const/16 v2, 0x7f

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v0, v8, :cond_20

    const/16 v9, 0x1e

    const/16 v10, 0x8

    const/4 v11, 0x5

    if-eq v0, v5, :cond_10

    if-eq v0, v4, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    if-eq v0, v11, :cond_2

    const v1, 0x30089

    if-eq v0, v10, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_e

    .line 2
    :cond_0
    sget v0, Lk0/nt;->a:I

    if-ne v0, v1, :cond_26

    .line 3
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 4
    :cond_1
    sget p3, Lk0/nt;->a:I

    if-ne p3, v1, :cond_26

    add-int/2addr p2, v5

    .line 5
    aget-byte p1, p1, p2

    invoke-static {p1}, Ll0/f0;->f(B)V

    goto/16 :goto_e

    :cond_2
    add-int/2addr p2, v5

    .line 6
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 7
    invoke-static {p2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 8
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 9
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 10
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 11
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 12
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 13
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 14
    invoke-static {v11, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/2addr p1, v11

    and-int/2addr p1, v8

    aput p1, p2, v7

    .line 15
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 16
    :cond_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_26

    add-int/lit8 p3, p2, 0x2

    .line 17
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 18
    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0xc0

    shr-int/2addr p2, v3

    and-int/2addr p2, v6

    .line 19
    invoke-static {p2, v8}, Ll0/e0;->n(II)I

    move-result p2

    invoke-static {p2}, Lu0/d;->R2(I)V

    and-int/lit8 p2, p1, 0xc

    shr-int/2addr p2, v5

    and-int/2addr p2, v6

    .line 20
    invoke-static {p2, v5}, Ll0/e0;->n(II)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 21
    invoke-static {p2, v5}, Ll0/e0;->n(II)I

    move-result p2

    invoke-static {p2}, Lu0/d;->T2(I)V

    and-int/2addr p1, v4

    and-int/2addr p1, v6

    .line 22
    invoke-static {p1, v8}, Ll0/e0;->n(II)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    and-int/lit16 p1, p3, 0xc0

    shr-int/2addr p1, v3

    and-int/2addr p1, v6

    .line 23
    invoke-static {p1, v8}, Ll0/e0;->n(II)I

    move-result p1

    invoke-static {p1}, Lu0/d;->D2(I)V

    and-int/lit8 p1, p3, 0xc

    shr-int/2addr p1, v5

    and-int/2addr p1, v6

    .line 24
    invoke-static {p1, v5}, Ll0/e0;->n(II)I

    move-result p2

    invoke-static {p2}, Lu0/d;->E2(I)V

    .line 25
    invoke-static {p1, v5}, Ll0/e0;->n(II)I

    move-result p1

    invoke-static {p1}, Lu0/d;->F2(I)V

    and-int/lit8 p1, p3, 0x3

    and-int/2addr p1, v6

    .line 26
    invoke-static {p1, v8}, Ll0/e0;->n(II)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 27
    aget-byte v0, p1, p3

    and-int/2addr v0, v6

    add-int/lit8 v2, p2, 0x3

    .line 28
    aget-byte v3, p1, v2

    and-int/2addr v3, v6

    const-string v4, "persist.fyt.reversetemp"

    .line 29
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 30
    aget-byte v0, p1, v2

    and-int/2addr v0, v6

    .line 31
    aget-byte p3, p1, p3

    and-int/lit16 v3, p3, 0xff

    :cond_6
    const/16 p3, 0x32

    if-lt v0, p3, :cond_7

    const/16 p3, 0x64

    if-gt v0, p3, :cond_7

    move p3, v8

    goto :goto_1

    :cond_7
    move p3, v7

    :goto_1
    const/16 v2, 0x25

    new-array v4, v8, [I

    aput p3, v4, v7

    .line 32
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/4 p3, -0x3

    const/4 v2, -0x2

    const/16 v4, 0x1b

    if-eqz v0, :cond_a

    if-eq v0, v9, :cond_9

    if-eq v0, v6, :cond_8

    new-array v5, v8, [I

    mul-int/2addr v0, v11

    add-int/lit16 v0, v0, 0xaa

    aput v0, v5, v7

    .line 33
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v0, v8, [I

    aput v1, v0, v7

    .line 34
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v0, v8, [I

    aput p3, v0, v7

    .line 35
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v0, v8, [I

    aput v2, v0, v7

    .line 36
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v0, 0x1c

    if-eqz v3, :cond_d

    if-eq v3, v9, :cond_c

    if-eq v3, v6, :cond_b

    new-array p3, v8, [I

    mul-int/2addr v3, v11

    add-int/lit16 v3, v3, 0xaa

    aput v3, p3, v7

    .line 37
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array p3, v8, [I

    aput v1, p3, v7

    .line 38
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v1, v8, [I

    aput p3, v1, v7

    .line 39
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array p3, v8, [I

    aput v2, p3, v7

    .line 40
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 p3, p2, 0x4

    .line 41
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    if-le p3, v10, :cond_e

    goto :goto_4

    :cond_e
    move v10, p3

    :goto_4
    const/16 p3, 0x15

    new-array v0, v8, [I

    aput v10, v0, v7

    .line 42
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v11

    .line 43
    aget-byte p1, p1, p2

    new-array p2, v8, [I

    and-int/lit16 p3, p1, 0x80

    if-nez p3, :cond_f

    move p3, v7

    goto :goto_5

    :cond_f
    move p3, v8

    :goto_5
    aput p3, p2, v7

    const/16 p3, 0xc

    .line 44
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array p3, v8, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v8

    aput v0, p3, v7

    .line 45
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array p3, v8, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v8

    aput v0, p3, v7

    .line 46
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v8, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v8

    aput v0, p3, v7

    .line 47
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v8, [I

    shr-int/lit8 v0, p1, 0x3

    and-int/2addr v0, v8

    aput v0, p3, v7

    .line 48
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array p3, v8, [I

    shr-int/lit8 v0, p1, 0x2

    and-int/2addr v0, v8

    aput v0, p3, v7

    .line 49
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xe

    new-array p3, v8, [I

    shr-int/lit8 v0, p1, 0x1

    and-int/2addr v0, v8

    aput v0, p3, v7

    .line 50
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array p3, v8, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v8

    aput p1, p3, v7

    .line 51
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 52
    :cond_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_26

    add-int/lit8 p3, p2, 0x2

    .line 53
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    .line 54
    iput p3, p0, Lk0/v3;->c:I

    move v0, v7

    .line 55
    :goto_6
    iget-object v1, p0, Lk0/v3;->d:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 56
    iget v2, p0, Lk0/v3;->c:I

    aget-object v5, v1, v0

    aget v5, v5, v7

    if-ne v2, v5, :cond_11

    if-eqz v2, :cond_12

    .line 57
    iput v0, p0, Lk0/v3;->b:I

    goto :goto_7

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 58
    :cond_12
    :goto_7
    aget-byte v2, p1, p2

    if-ne v2, v11, :cond_15

    if-eqz p3, :cond_14

    .line 59
    iget p1, p0, Lk0/v3;->b:I

    array-length p2, v1

    if-ge p1, p2, :cond_13

    if-eq p1, v6, :cond_13

    .line 60
    iget-byte p2, p0, Lk0/v3;->q:B

    if-nez p2, :cond_13

    .line 61
    aget-object p1, v1, p1

    aget p1, p1, v8

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 62
    iget-object p1, p0, Lk0/v3;->d:[[I

    iget p2, p0, Lk0/v3;->b:I

    aget-object p1, p1, p2

    aget p1, p1, v8

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    .line 63
    iget-byte p1, p0, Lk0/v3;->q:B

    add-int/2addr p1, v8

    int-to-byte p1, p1

    iput-byte p1, p0, Lk0/v3;->q:B

    .line 64
    iget-object p1, p0, Lk0/v3;->r:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 65
    :cond_13
    iput v6, p0, Lk0/v3;->b:I

    goto/16 :goto_e

    .line 66
    :cond_14
    iget-object p1, p0, Lk0/v3;->r:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 67
    iput-byte v7, p0, Lk0/v3;->q:B

    goto/16 :goto_e

    .line 68
    :cond_15
    aget-byte p3, p1, p2

    if-ne p3, v3, :cond_26

    add-int/2addr p2, v4

    .line 69
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    .line 70
    iget p2, p0, Lk0/v3;->c:I

    const/16 p3, 0x19

    if-eq p2, p3, :cond_1e

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_1c

    const/16 p3, 0x26

    if-eq p2, p3, :cond_1a

    const/16 p3, 0x27

    if-eq p2, p3, :cond_18

    const/16 p3, 0x84

    if-eq p2, p3, :cond_1e

    const/16 p3, 0x85

    if-eq p2, p3, :cond_1c

    and-int/2addr p1, v6

    if-ne p1, v8, :cond_16

    .line 71
    array-length p1, v1

    if-ge v0, p1, :cond_26

    .line 72
    aget-object p1, v1, v0

    aget p1, p1, v8

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_16
    if-nez p1, :cond_26

    .line 73
    iget p1, p0, Lk0/v3;->b:I

    array-length p2, v1

    if-ge p1, p2, :cond_17

    if-eq p1, v6, :cond_17

    .line 74
    aget-object p1, v1, p1

    aget p1, p1, v8

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    .line 75
    :cond_17
    iput v6, p0, Lk0/v3;->b:I

    goto/16 :goto_e

    :cond_18
    move p2, v7

    :goto_8
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_19

    .line 76
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 77
    :cond_19
    invoke-static {v9, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_1a
    move p2, v7

    :goto_9
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_1b

    const/16 p3, 0x1f

    .line 78
    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_1b
    const/16 p1, 0x1f

    .line 79
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_1c
    move p2, v7

    :goto_a
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_1d

    .line 80
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 81
    :cond_1d
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_1e
    move p2, v7

    :goto_b
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_1f

    const/4 p3, 0x7

    .line 82
    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_1f
    const/4 p1, 0x7

    .line 83
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_e

    .line 84
    :cond_20
    aget-byte p3, p1, p2

    if-lt p3, v3, :cond_24

    add-int/lit8 p3, p2, 0x2

    .line 85
    aget-byte v0, p1, p3

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_22

    .line 86
    aget-byte p2, p1, p3

    and-int/lit16 p2, p2, 0x80

    .line 87
    aget-byte p1, p1, p3

    and-int/2addr p1, v2

    if-eqz p2, :cond_21

    mul-int/lit8 p1, p1, 0xa

    rsub-int p1, p1, 0x3e8

    goto :goto_c

    :cond_21
    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x3e8

    .line 88
    :goto_c
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_e

    :cond_22
    add-int/2addr p2, v4

    .line 89
    aget-byte p3, p1, p2

    and-int/2addr p3, v6

    if-eq p3, v6, :cond_23

    .line 90
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x3e8

    const/high16 p2, 0x10000000

    or-int/2addr p1, p2

    and-int/2addr p1, v1

    .line 91
    invoke-static {p1}, Lu0/d;->B3(I)V

    goto :goto_e

    .line 92
    :cond_23
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto :goto_e

    :cond_24
    add-int/2addr p2, v5

    .line 93
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0x80

    .line 94
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    if-eqz p3, :cond_25

    mul-int/lit8 p1, p1, 0xa

    rsub-int p1, p1, 0x3e8

    goto :goto_d

    :cond_25
    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x3e8

    .line 95
    :goto_d
    invoke-static {p1}, Lu0/d;->A3(I)V

    :cond_26
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/v3;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/v3;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/v3;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v1, p0, Lk0/v3;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    if-ltz p2, :cond_0

    const/16 p3, 0x67

    if-ge p2, p3, :cond_0

    .line 1
    sget-object p3, Lk0/nt;->g:[I

    aget p3, p3, p2

    invoke-static {p1, p2, p3}, Ly/e;->a(Ly/b;II)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    aget p1, p2, p4

    aget p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lk0/v3;->a3(II)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    aget p1, p2, p4

    aget p3, p2, p3

    aget p2, p2, v0

    invoke-virtual {p0, p1, p3, p2}, Lk0/v3;->b3(III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3(II)V
    .locals 6

    .line 1
    sput p1, Lk0/v3;->v:I

    .line 2
    sput p2, Lk0/v3;->w:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x6

    aput v3, v0, v1

    const/4 v4, 0x2

    const/4 v5, 0x7

    aput v5, v0, v4

    const/4 v4, 0x3

    aput p1, v0, v4

    const/4 p1, 0x4

    aput p2, v0, p1

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 4
    sget p2, Lk0/v3;->w:I

    aput p2, p1, v2

    const/16 p2, 0x66

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    .line 5
    iget-object p1, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {p1, v5, v5}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/v3;->w:I

    if-eq p1, p2, :cond_0

    .line 6
    iget-object p1, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {p1, v5, p2}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p1, 0x65

    new-array p2, v1, [I

    .line 7
    sget v0, Lk0/v3;->v:I

    aput v0, p2, v2

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 8
    iget-object p1, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {p1, v3, v5}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/v3;->v:I

    if-eq p1, p2, :cond_1

    .line 9
    iget-object p1, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {p1, v3, p2}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method

.method public final b3(III)V
    .locals 5

    .line 1
    sput p1, Lk0/v3;->s:I

    .line 2
    sput p2, Lk0/v3;->t:I

    .line 3
    sput p3, Lk0/v3;->u:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x7

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v4, 0x8

    aput v4, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    const/4 p2, 0x5

    aput p3, v0, p2

    .line 4
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p3, v3, [I

    .line 5
    sget v0, Lk0/v3;->s:I

    aput v0, p3, v2

    const/16 v0, 0x62

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    .line 6
    iget-object p3, p0, Lk0/v3;->i:Lo1/g0;

    const/16 v0, 0xa

    invoke-virtual {p3, v1, v0}, Lo1/g0;->b(II)I

    move-result p3

    sget v4, Lk0/v3;->s:I

    if-eq p3, v4, :cond_0

    .line 7
    iget-object p3, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {p3, v1, v4}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p3, 0x63

    new-array v1, v3, [I

    .line 8
    sget v4, Lk0/v3;->t:I

    aput v4, v1, v2

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    .line 9
    iget-object p3, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {p3, p1, v0}, Lo1/g0;->b(II)I

    move-result p3

    sget v1, Lk0/v3;->t:I

    if-eq p3, v1, :cond_1

    .line 10
    iget-object p3, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {p3, p1, v1}, Lo1/g0;->g(II)V

    :cond_1
    const/16 p1, 0x64

    new-array p3, v3, [I

    .line 11
    sget v1, Lk0/v3;->u:I

    aput v1, p3, v2

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 12
    iget-object p1, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {p1, p2, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/v3;->u:I

    if-eq p1, p3, :cond_2

    .line 13
    iget-object p1, p0, Lk0/v3;->i:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
