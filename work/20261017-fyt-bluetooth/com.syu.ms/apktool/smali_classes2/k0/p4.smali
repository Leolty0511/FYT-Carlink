.class public Lk0/p4;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0x7

.field public static B:I = 0x7

.field public static C:I = 0x0

.field public static D:I = 0xa

.field public static x:I = 0xa

.field public static y:I = 0xa

.field public static z:I = 0xa


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Lo1/g0;

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/p4;->c:I

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

    const/16 v10, 0x9

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v11, 0xa

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v11, 0xb

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v11, 0xc

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v11, 0xd

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v11, 0xe

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v11, 0xf

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v11, 0x10

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v11, 0x11

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v11, 0x12

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v11, 0x13

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v11, 0x14

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v11, 0x15

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v11, 0x16

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v11, 0x17

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v11, 0x18

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v11, 0x19

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v11, 0x1a

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v11, 0x1b

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v11, 0x1c

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v11, 0x1d

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v11, 0x1e

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v11, 0x1f

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v11, 0x20

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v12, 0x21

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v12, 0x22

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v12, 0x23

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v12, 0x24

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v12, 0x25

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v12, 0x26

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v12, 0x27

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v12, 0x28

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v12, 0x29

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v12, 0x2a

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v12, 0x2b

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v12, 0x2c

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v12, 0x2d

    aput-object v3, v1, v12

    new-array v2, v2, [I

    fill-array-data v2, :array_2e

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/p4;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/p4;->e:Z

    .line 5
    iput-byte v0, p0, Lk0/p4;->f:B

    .line 6
    new-instance v1, Lk0/p4$a;

    invoke-direct {v1, p0}, Lk0/p4$a;-><init>(Lk0/p4;)V

    iput-object v1, p0, Lk0/p4;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/p4$b;

    invoke-direct {v1, p0}, Lk0/p4$b;-><init>(Lk0/p4;)V

    iput-object v1, p0, Lk0/p4;->h:Ljava/lang/Runnable;

    .line 8
    iput v0, p0, Lk0/p4;->i:I

    .line 9
    new-instance v0, Lk0/p4$c;

    invoke-direct {v0, p0}, Lk0/p4$c;-><init>(Lk0/p4;)V

    iput-object v0, p0, Lk0/p4;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/p4$d;

    invoke-direct {v0, p0}, Lk0/p4$d;-><init>(Lk0/p4;)V

    iput-object v0, p0, Lk0/p4;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/p4;->l:Lo1/g0;

    .line 12
    iput v4, p0, Lk0/p4;->m:I

    .line 13
    iput v5, p0, Lk0/p4;->n:I

    .line 14
    iput v6, p0, Lk0/p4;->o:I

    .line 15
    iput v7, p0, Lk0/p4;->p:I

    .line 16
    iput v8, p0, Lk0/p4;->q:I

    .line 17
    iput v9, p0, Lk0/p4;->r:I

    .line 18
    iput v10, p0, Lk0/p4;->s:I

    .line 19
    new-instance v0, Lk0/p4$e;

    invoke-direct {v0, p0}, Lk0/p4$e;-><init>(Lk0/p4;)V

    iput-object v0, p0, Lk0/p4;->t:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lk0/p4$f;

    invoke-direct {v0, p0}, Lk0/p4$f;-><init>(Lk0/p4;)V

    iput-object v0, p0, Lk0/p4;->u:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lk0/p4$g;

    invoke-direct {v0, p0}, Lk0/p4$g;-><init>(Lk0/p4;)V

    iput-object v0, p0, Lk0/p4;->v:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lk0/p4$h;

    invoke-direct {v0, p0}, Lk0/p4$h;-><init>(Lk0/p4;)V

    iput-object v0, p0, Lk0/p4;->w:Ljava/lang/Runnable;

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

.method public static synthetic e3(Lk0/p4;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/p4;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lk0/p4;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/p4;->l:Lo1/g0;

    return-object p0
.end method

.method public static synthetic g3(Lk0/p4;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/p4;->d3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/p4;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/p4;->b3(III)V

    return-void
.end method

.method public static synthetic i3(Lk0/p4;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/p4;->a3(II)V

    return-void
.end method

.method public static synthetic j3(Lk0/p4;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/p4;->c3(I)V

    return-void
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
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 2
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public S2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/p4;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/p4;->u:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v3, p0, Lk0/p4;->u:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v3, p0, Lk0/p4;->t:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v1, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lk0/p4;->v:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v1, p0, Lk0/p4;->w:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/p4;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget v1, Lk0/nt;->c:I

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v4, v0, Lk0/mt;->e:I

    .line 12
    iput v2, v0, Lk0/mt;->f:I

    .line 13
    iput v2, v0, Lk0/mt;->g:I

    .line 14
    iput v4, v0, Lk0/mt;->b:I

    .line 15
    iput v4, v0, Lk0/mt;->c:I

    .line 16
    iput v4, v0, Lk0/mt;->d:I

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 18
    iput v4, v1, Lk0/mt;->e:I

    .line 19
    iput v2, v1, Lk0/mt;->f:I

    .line 20
    iput v2, v1, Lk0/mt;->g:I

    .line 21
    iput v2, v1, Lk0/mt;->b:I

    .line 22
    iput v4, v1, Lk0/mt;->c:I

    .line 23
    iput v4, v1, Lk0/mt;->d:I

    .line 24
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Lk0/p4;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 15

    move-object v0, p0

    add-int/lit8 v1, p2, 0x1

    .line 1
    aget-byte v1, p1, v1

    const/16 v2, 0x7d

    const/16 v3, 0x64

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v1, v2, :cond_19

    const/16 v2, 0x27

    const/16 v11, 0x1e

    const/4 v12, 0x6

    const/4 v13, 0x5

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const/16 v1, 0x50

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x2

    .line 2
    aget-byte v3, p1, v3

    and-int/2addr v3, v8

    aput v3, v2, v9

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_1
    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 4
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 5
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 6
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 7
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 8
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 9
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 10
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 11
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 12
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 13
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    add-int/lit8 v1, p2, 0x2

    .line 14
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 15
    aget-byte v2, p1, v2

    and-int/lit16 v3, v2, 0xc0

    shr-int/2addr v3, v12

    and-int/2addr v3, v8

    .line 16
    invoke-static {v3, v10}, Ll0/e0;->n(II)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    and-int/lit8 v3, v2, 0xc

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    .line 17
    invoke-static {v3, v7}, Ll0/e0;->n(II)I

    move-result v4

    invoke-static {v4}, Lu0/d;->S2(I)V

    .line 18
    invoke-static {v3, v7}, Ll0/e0;->n(II)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    and-int/2addr v2, v6

    and-int/2addr v2, v8

    .line 19
    invoke-static {v2, v10}, Ll0/e0;->n(II)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    and-int/lit16 v2, v1, 0xc0

    shr-int/2addr v2, v12

    and-int/2addr v2, v8

    .line 20
    invoke-static {v2, v10}, Ll0/e0;->n(II)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    and-int/lit8 v2, v1, 0xc

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    .line 21
    invoke-static {v2, v7}, Ll0/e0;->n(II)I

    move-result v3

    invoke-static {v3}, Lu0/d;->E2(I)V

    .line 22
    invoke-static {v2, v7}, Ll0/e0;->n(II)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    and-int/2addr v1, v6

    and-int/2addr v1, v8

    .line 23
    invoke-static {v1, v10}, Ll0/e0;->n(II)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    :pswitch_3
    add-int/lit8 v1, p2, 0x2

    .line 24
    aget-byte v4, p1, v1

    const/16 v5, 0x7f

    and-int/2addr v4, v5

    add-int/lit8 v6, p2, 0x3

    .line 25
    aget-byte v7, p1, v6

    and-int/2addr v7, v5

    add-int/lit8 v12, p2, 0x4

    .line 26
    aget-byte v12, p1, v12

    and-int/2addr v12, v8

    add-int/lit8 v13, p2, 0x5

    .line 27
    aget-byte v13, p1, v13

    and-int/2addr v13, v8

    const-string v14, "persist.fyt.reversetemp"

    .line 28
    invoke-static {v14, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 29
    aget-byte v4, p1, v6

    and-int/2addr v4, v5

    .line 30
    aget-byte v1, p1, v1

    and-int/lit8 v7, v1, 0x7f

    :cond_1
    const/16 v1, 0x32

    if-lt v4, v1, :cond_2

    if-gt v4, v3, :cond_2

    move v1, v10

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    const/16 v3, 0x25

    new-array v6, v10, [I

    aput v1, v6, v9

    .line 31
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/4 v1, -0x2

    const/16 v3, 0x28

    const/16 v6, 0x1b

    if-eqz v4, :cond_5

    if-eq v4, v11, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v2, :cond_5

    if-eq v4, v3, :cond_4

    new-array v14, v10, [I

    aput v4, v14, v9

    .line 32
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_3
    new-array v4, v10, [I

    const/4 v14, -0x1

    aput v14, v4, v9

    .line 33
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    new-array v4, v10, [I

    const/4 v14, -0x3

    aput v14, v4, v9

    .line 34
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v4, v10, [I

    aput v1, v4, v9

    .line 35
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v4, 0x1c

    if-eqz v7, :cond_8

    if-eq v7, v11, :cond_7

    if-eq v7, v5, :cond_6

    if-eq v7, v2, :cond_8

    if-eq v7, v3, :cond_7

    new-array v1, v10, [I

    aput v7, v1, v9

    .line 36
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    new-array v1, v10, [I

    const/4 v2, -0x1

    aput v2, v1, v9

    .line 37
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v1, v10, [I

    const/4 v2, -0x3

    aput v2, v1, v9

    .line 38
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v2, v10, [I

    aput v1, v2, v9

    .line 39
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v1, 0x15

    new-array v2, v10, [I

    and-int/lit16 v3, v12, 0xff

    aput v3, v2, v9

    .line 40
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v13, 0x7

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_9

    move v2, v10

    goto :goto_4

    :cond_9
    move v2, v9

    :goto_4
    aput v2, v1, v9

    const/16 v2, 0xc

    .line 41
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v10, [I

    shr-int/lit8 v3, v13, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 42
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v10, [I

    shr-int/lit8 v3, v13, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 43
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v10, [I

    shr-int/lit8 v3, v13, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 44
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v2, v10, [I

    shr-int/lit8 v3, v13, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 45
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v10, [I

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 46
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x3e

    new-array v2, v10, [I

    shr-int/lit8 v3, v13, 0x1

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v10, [I

    shr-int/lit8 v3, v13, 0x0

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 48
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 49
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    add-int/lit8 v1, p2, 0x2

    .line 50
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    .line 51
    iput v1, v0, Lk0/p4;->c:I

    move v3, v9

    .line 52
    :goto_5
    iget-object v5, v0, Lk0/p4;->d:[[I

    array-length v7, v5

    if-ge v3, v7, :cond_b

    .line 53
    iget v7, v0, Lk0/p4;->c:I

    aget-object v14, v5, v3

    aget v14, v14, v9

    if-ne v7, v14, :cond_a

    if-eqz v7, :cond_b

    .line 54
    iput v3, v0, Lk0/p4;->b:I

    goto :goto_6

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 55
    :cond_b
    :goto_6
    aget-byte v7, p1, p2

    if-ne v7, v13, :cond_e

    if-eqz v1, :cond_c

    .line 56
    array-length v1, v5

    if-ge v3, v1, :cond_1e

    .line 57
    aget-object v1, v5, v3

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 58
    :cond_c
    iget v1, v0, Lk0/p4;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_d

    if-eq v1, v8, :cond_d

    .line 59
    aget-object v1, v5, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 60
    :cond_d
    iput v8, v0, Lk0/p4;->b:I

    goto/16 :goto_b

    .line 61
    :cond_e
    aget-byte v1, p1, p2

    if-ne v1, v12, :cond_1e

    add-int/lit8 v1, p2, 0x3

    .line 62
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    .line 63
    iget v6, v0, Lk0/p4;->c:I

    const/16 v7, 0x19

    if-eq v6, v7, :cond_17

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_15

    const/16 v7, 0x26

    if-eq v6, v7, :cond_13

    if-eq v6, v2, :cond_11

    const/16 v2, 0x84

    if-eq v6, v2, :cond_17

    const/16 v2, 0x85

    if-eq v6, v2, :cond_15

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_f

    .line 64
    array-length v1, v5

    if-ge v3, v1, :cond_1e

    .line 65
    aget-object v1, v5, v3

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_f
    if-nez v1, :cond_1e

    .line 66
    iget v1, v0, Lk0/p4;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_10

    if-eq v1, v8, :cond_10

    .line 67
    aget-object v1, v5, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 68
    :cond_10
    iput v8, v0, Lk0/p4;->b:I

    goto/16 :goto_b

    :cond_11
    move v2, v9

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_12

    .line 69
    invoke-static {v11, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 70
    :cond_12
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_13
    move v2, v9

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    const/16 v3, 0x1f

    .line 71
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    const/16 v1, 0x1f

    .line 72
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_15
    move v2, v9

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_16

    .line 73
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 74
    :cond_16
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_17
    move v2, v9

    :goto_a
    and-int/lit16 v3, v1, 0xff

    const/4 v4, 0x7

    if-ge v2, v3, :cond_18

    .line 75
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 76
    :cond_18
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 77
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    add-int/lit8 v1, p2, 0x2

    .line 78
    aget-byte v1, p1, v1

    invoke-static {v1}, Ll0/f0;->c(B)V

    goto/16 :goto_b

    :cond_19
    add-int/lit8 v1, p2, 0x2

    .line 79
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    if-eq v1, v10, :cond_1c

    const v2, 0xff00

    if-eq v1, v6, :cond_1b

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_b

    :pswitch_6
    const/16 v1, 0x408

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 80
    aget-byte v5, p1, v5

    shl-int/lit8 v4, v5, 0x8

    and-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/2addr v4, v8

    or-int/2addr v2, v4

    aput v2, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :pswitch_7
    add-int/lit8 v1, p2, 0x4

    .line 81
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    if-eqz v1, :cond_1a

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x258

    .line 82
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_b

    .line 83
    :cond_1a
    invoke-static {v9}, Lu0/d;->A3(I)V

    goto :goto_b

    :pswitch_8
    add-int/lit8 v1, p2, 0x3

    .line 84
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    .line 85
    aget-byte v2, p1, v2

    const/16 v3, 0x21c

    .line 86
    invoke-static {v1, v2, v10, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_b

    :cond_1b
    add-int/lit8 v1, p2, 0x4

    .line 87
    aget-byte v1, p1, v1

    shl-int/2addr v1, v4

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    or-int/2addr v1, v2

    div-int/2addr v1, v3

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 89
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v7, [I

    aput v10, v4, v9

    aput v1, v4, v10

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_b

    :cond_1c
    const-string v1, "persist.fyt.leftrightlighttype"

    .line 90
    invoke-static {v1, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1d

    add-int/lit8 v1, p2, 0x3

    .line 91
    aget-byte v2, p1, v1

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    invoke-static {v2, v1, v9}, Ll0/c0;->b(III)V

    goto :goto_b

    :cond_1d
    add-int/lit8 v1, p2, 0x3

    .line 92
    aget-byte v2, p1, v1

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    invoke-static {v2, v1, v9}, Ll0/c0;->a(III)V

    :cond_1e
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/p4;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/p4;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/p4;->u:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/p4;->t:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/p4;->v:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, p0, Lk0/p4;->w:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Lk0/p4;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/p4;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/p4;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x71

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/4 p3, 0x1

    const/4 p4, 0x2

    const/4 v0, 0x0

    if-eq p1, p4, :cond_3

    const/4 p4, 0x3

    if-eq p1, p4, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    const/16 p3, 0x8

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/p4;->d3(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 2
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/p4;->c3(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 3
    aget p1, p2, v0

    aget p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lk0/p4;->a3(II)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 4
    aget p1, p2, v0

    aget p3, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p3, p2}, Lk0/p4;->b3(III)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a3(II)V
    .locals 6

    .line 1
    sput p1, Lk0/p4;->A:I

    .line 2
    sput p2, Lk0/p4;->B:I

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
    sget p2, Lk0/p4;->B:I

    aput p2, p1, v2

    const/16 p2, 0x66

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    .line 5
    iget-object p1, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p1, v5, v5}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/p4;->B:I

    if-eq p1, p2, :cond_0

    .line 6
    iget-object p1, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p1, v5, p2}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p1, 0x65

    new-array p2, v1, [I

    .line 7
    sget v0, Lk0/p4;->A:I

    aput v0, p2, v2

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 8
    iget-object p1, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p1, v3, v5}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/p4;->A:I

    if-eq p1, p2, :cond_1

    .line 9
    iget-object p1, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p1, v3, p2}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method

.method public final b3(III)V
    .locals 5

    .line 1
    sput p1, Lk0/p4;->x:I

    .line 2
    sput p2, Lk0/p4;->y:I

    .line 3
    sput p3, Lk0/p4;->z:I

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
    sget v0, Lk0/p4;->x:I

    aput v0, p3, v2

    const/16 v0, 0x62

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    .line 6
    iget-object p3, p0, Lk0/p4;->l:Lo1/g0;

    const/16 v0, 0xa

    invoke-virtual {p3, v1, v0}, Lo1/g0;->b(II)I

    move-result p3

    sget v4, Lk0/p4;->x:I

    if-eq p3, v4, :cond_0

    .line 7
    iget-object p3, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p3, v1, v4}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p3, 0x63

    new-array v1, v3, [I

    .line 8
    sget v4, Lk0/p4;->y:I

    aput v4, v1, v2

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    .line 9
    iget-object p3, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p3, p1, v0}, Lo1/g0;->b(II)I

    move-result p3

    sget v1, Lk0/p4;->y:I

    if-eq p3, v1, :cond_1

    .line 10
    iget-object p3, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p3, p1, v1}, Lo1/g0;->g(II)V

    :cond_1
    const/16 p1, 0x64

    new-array p3, v3, [I

    .line 11
    sget v1, Lk0/p4;->z:I

    aput v1, p3, v2

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 12
    iget-object p1, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p1, p2, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/p4;->z:I

    if-eq p1, p3, :cond_2

    .line 13
    iget-object p1, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final c3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/p4;->D:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x5

    aput v3, v0, v1

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v3, 0x3

    aput p1, v0, v3

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 3
    sget v0, Lk0/p4;->D:I

    aput v0, p1, v2

    const/16 v0, 0x70

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/p4;->l:Lo1/g0;

    const/16 v0, 0x9

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/p4;->D:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final d3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/p4;->C:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/4 v4, 0x3

    aput v4, v0, v1

    aput v3, v0, v4

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/p4;->C:I

    aput v0, p1, v2

    const/16 v0, 0x6f

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/p4;->l:Lo1/g0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/p4;->C:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/p4;->l:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
