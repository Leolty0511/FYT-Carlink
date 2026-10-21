.class public Lk0/il;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static K:I = 0x0

.field public static L:I = 0x0

.field public static M:I = 0x8

.field public static N:I = 0x1

.field public static O:I = 0x1

.field public static P:I = 0x1

.field public static Q:I = 0xff

.field public static R:Le/e$a;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:B

.field public G:Ljava/lang/Runnable;

.field public H:Ljava/lang/Runnable;

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:[[I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public k:Lo1/g0;

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:I

.field public v:Z

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;

.field public z:Lo1/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Le/e$a;-><init>(III)V

    sput-object v0, Lk0/il;->R:Le/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/il;->c:I

    const/16 v1, 0x2c

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

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

    iput-object v1, p0, Lk0/il;->d:[[I

    .line 4
    iput v4, p0, Lk0/il;->e:I

    .line 5
    iput v2, p0, Lk0/il;->f:I

    .line 6
    iput v5, p0, Lk0/il;->g:I

    .line 7
    iput v6, p0, Lk0/il;->h:I

    .line 8
    iput v7, p0, Lk0/il;->i:I

    .line 9
    iput v8, p0, Lk0/il;->j:I

    .line 10
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/il;->k:Lo1/g0;

    .line 11
    iput v4, p0, Lk0/il;->l:I

    .line 12
    iput v0, p0, Lk0/il;->m:I

    .line 13
    iput v0, p0, Lk0/il;->n:I

    .line 14
    iput-boolean v0, p0, Lk0/il;->o:Z

    .line 15
    iput v0, p0, Lk0/il;->p:I

    .line 16
    iput-boolean v0, p0, Lk0/il;->q:Z

    .line 17
    iput-boolean v0, p0, Lk0/il;->r:Z

    .line 18
    iput v0, p0, Lk0/il;->s:I

    .line 19
    new-instance v1, Lk0/il$c;

    invoke-direct {v1, p0}, Lk0/il$c;-><init>(Lk0/il;)V

    iput-object v1, p0, Lk0/il;->t:Ljava/lang/Runnable;

    .line 20
    iput v0, p0, Lk0/il;->u:I

    .line 21
    iput-boolean v0, p0, Lk0/il;->v:Z

    .line 22
    new-instance v1, Lk0/il$d;

    invoke-direct {v1, p0}, Lk0/il$d;-><init>(Lk0/il;)V

    iput-object v1, p0, Lk0/il;->w:Ljava/lang/Runnable;

    .line 23
    new-instance v1, Lk0/il$e;

    invoke-direct {v1, p0}, Lk0/il$e;-><init>(Lk0/il;)V

    iput-object v1, p0, Lk0/il;->x:Ljava/lang/Runnable;

    .line 24
    new-instance v1, Lk0/il$f;

    invoke-direct {v1, p0}, Lk0/il$f;-><init>(Lk0/il;)V

    iput-object v1, p0, Lk0/il;->y:Ljava/lang/Runnable;

    .line 25
    new-instance v1, Lk0/il$g;

    invoke-direct {v1, p0}, Lk0/il$g;-><init>(Lk0/il;)V

    iput-object v1, p0, Lk0/il;->z:Lo1/p;

    .line 26
    iput-boolean v0, p0, Lk0/il;->A:Z

    .line 27
    iput-boolean v0, p0, Lk0/il;->B:Z

    .line 28
    iput-boolean v0, p0, Lk0/il;->C:Z

    .line 29
    new-instance v0, Lk0/il$h;

    invoke-direct {v0, p0}, Lk0/il$h;-><init>(Lk0/il;)V

    iput-object v0, p0, Lk0/il;->D:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Lk0/il$i;

    invoke-direct {v0, p0}, Lk0/il$i;-><init>(Lk0/il;)V

    iput-object v0, p0, Lk0/il;->E:Ljava/lang/Runnable;

    .line 31
    iput-byte v7, p0, Lk0/il;->F:B

    .line 32
    new-instance v0, Lk0/il$j;

    invoke-direct {v0, p0}, Lk0/il$j;-><init>(Lk0/il;)V

    iput-object v0, p0, Lk0/il;->G:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Lk0/il$k;

    invoke-direct {v0, p0}, Lk0/il$k;-><init>(Lk0/il;)V

    iput-object v0, p0, Lk0/il;->H:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lk0/il$a;

    invoke-direct {v0, p0}, Lk0/il$a;-><init>(Lk0/il;)V

    iput-object v0, p0, Lk0/il;->I:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lk0/il$b;

    invoke-direct {v0, p0}, Lk0/il$b;-><init>(Lk0/il;)V

    iput-object v0, p0, Lk0/il;->J:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x22
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x23
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x20
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x21
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x52
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x51
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x50
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x9
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0xa
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x37
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x1
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x26
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x1a
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x32
    .end array-data

    :array_13
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x7
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x8
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x4
    .end array-data

    :array_18
    .array-data 4
        0x19
        0x10
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0xc
    .end array-data

    :array_1a
    .array-data 4
        0x1b
        0xb
    .end array-data

    :array_1b
    .array-data 4
        0x1c
        0x1c
    .end array-data

    :array_1c
    .array-data 4
        0x1d
        0x1b
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x22
    .end array-data

    :array_1e
    .array-data 4
        0x1f
        0x23
    .end array-data

    :array_1f
    .array-data 4
        0x20
        0x20
    .end array-data

    :array_20
    .array-data 4
        0x21
        0x21
    .end array-data

    :array_21
    .array-data 4
        0x22
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x23
        0x3a
    .end array-data

    :array_23
    .array-data 4
        0x24
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x31
        0x28
    .end array-data

    :array_25
    .array-data 4
        0x32
        0x29
    .end array-data

    :array_26
    .array-data 4
        0x33
        0x2a
    .end array-data

    :array_27
    .array-data 4
        0x34
        0x2b
    .end array-data

    :array_28
    .array-data 4
        0x35
        0x2c
    .end array-data

    :array_29
    .array-data 4
        0x36
        0x2d
    .end array-data

    :array_2a
    .array-data 4
        0x37
        0x2e
    .end array-data

    :array_2b
    .array-data 4
        0x38
        0x2f
    .end array-data
.end method

.method public static synthetic c3(Lk0/il;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/il;->b3(Z)V

    return-void
.end method

.method public static synthetic d3()I
    .locals 1

    .line 1
    sget v0, Lk0/il;->O:I

    return v0
.end method

.method public static synthetic e3()I
    .locals 1

    .line 1
    sget v0, Lk0/il;->M:I

    return v0
.end method

.method public static synthetic f3()Le/e$a;
    .locals 1

    .line 1
    sget-object v0, Lk0/il;->R:Le/e$a;

    return-object v0
.end method

.method public static synthetic g3(Le/e$a;)Le/e$a;
    .locals 0

    .line 1
    sput-object p0, Lk0/il;->R:Le/e$a;

    return-object p0
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lk0/il;->P:I

    return v0
.end method

.method public static synthetic i3(Lk0/il;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/il;->a3(I)V

    return-void
.end method

.method public static synthetic j3(Lk0/il;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/il;->J:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic k3(Lk0/il;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/il;->I:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public K2()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x8
        0x8
    .end array-data
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->j:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iput v1, v0, Lk0/mt;->l:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/il;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v3, p0, Lk0/il;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const/4 v0, 0x5

    new-array v3, v0, [I

    .line 10
    fill-array-data v3, :array_0

    invoke-static {v3}, Lz/k;->s([I)V

    const/4 v3, 0x6

    new-array v4, v3, [I

    .line 11
    fill-array-data v4, :array_1

    invoke-static {v4}, Lz/k;->s([I)V

    .line 12
    sget-object v4, Ly0/g;->t:Lo1/y;

    iget-object v5, p0, Lk0/il;->t:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v4, Lu0/c;->G:Lo1/y;

    iget-object v5, p0, Lk0/il;->w:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v4, Lu0/c;->a:Lo1/y;

    iget-object v5, p0, Lk0/il;->x:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v4, Lu0/c;->n:Lo1/y;

    iget-object v5, p0, Lk0/il;->y:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v4, Lu0/c;->x:Lo1/y;

    iget-object v5, p0, Lk0/il;->E:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v4, Le/e;->e:Lo1/z;

    iget-object v5, p0, Lk0/il;->z:Lo1/p;

    invoke-virtual {v4, v5}, Lo1/z;->a(Lo1/p;)V

    .line 18
    sget-object v4, Lh0/d;->a:Lo1/y;

    iget-object v5, p0, Lk0/il;->D:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    iget-object v1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {v1}, Lo1/g0;->a()V

    .line 20
    iget-object v1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {v1, v0, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/il;->l3(I)V

    .line 21
    iget-object v0, p0, Lk0/il;->k:Lo1/g0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/il;->m3(I)V

    .line 22
    iget-object v0, p0, Lk0/il;->k:Lo1/g0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/il;->n3(I)V

    .line 23
    iget-object v0, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {v0, v3, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/il;->o3(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x0
        0x61
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0x68
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    if-eqz v2, :cond_0

    goto/16 :goto_c

    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 2
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x12

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v2, v4, :cond_2a

    const/16 v7, 0x13

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x1

    if-eq v2, v7, :cond_27

    const/16 v7, 0x15

    if-eq v2, v7, :cond_26

    const/16 v7, 0xa1

    if-eq v2, v7, :cond_1

    goto/16 :goto_c

    :cond_1
    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v7, 0x10

    const/4 v12, 0x5

    if-eq v2, v7, :cond_20

    const/4 v13, 0x4

    if-eq v2, v4, :cond_1e

    const/16 v14, 0x17

    const/16 v11, 0xe

    const/16 v15, 0x8

    if-eq v2, v14, :cond_e

    const/16 v14, 0x1c

    if-eq v2, v14, :cond_4

    const/16 v5, 0x19

    if-eq v2, v5, :cond_3

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_2

    goto/16 :goto_c

    :cond_2
    const/16 v2, 0x70

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    .line 5
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    .line 6
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    .line 7
    aget-byte v1, v1, v4

    shr-int/2addr v1, v13

    and-int/2addr v1, v10

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_3
    const/16 v2, 0x69

    new-array v5, v10, [I

    add-int/lit8 v8, p2, 0x5

    .line 8
    aget-byte v8, v1, v8

    shl-int/2addr v8, v15

    const v9, 0xff00

    and-int/2addr v8, v9

    add-int/lit8 v11, p2, 0x6

    aget-byte v11, v1, v11

    and-int/2addr v11, v3

    or-int/2addr v8, v11

    const v11, 0xffff

    and-int/2addr v8, v11

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v5, v10, [I

    add-int/lit8 v8, p2, 0x7

    .line 9
    aget-byte v8, v1, v8

    shl-int/2addr v8, v15

    and-int/2addr v8, v9

    add-int/lit8 v12, p2, 0x8

    aget-byte v12, v1, v12

    and-int/2addr v12, v3

    or-int/2addr v8, v12

    and-int/2addr v8, v11

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v5, v10, [I

    add-int/lit8 v8, p2, 0x9

    .line 10
    aget-byte v8, v1, v8

    shl-int/2addr v8, v15

    and-int/2addr v8, v9

    add-int/lit8 v12, p2, 0xa

    aget-byte v12, v1, v12

    and-int/2addr v12, v3

    or-int/2addr v8, v12

    and-int/2addr v8, v11

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v5, v10, [I

    add-int/lit8 v8, p2, 0xb

    .line 11
    aget-byte v8, v1, v8

    shl-int/2addr v8, v15

    and-int/2addr v8, v9

    add-int/lit8 v12, p2, 0xc

    aget-byte v12, v1, v12

    and-int/2addr v12, v3

    or-int/2addr v8, v12

    and-int/2addr v8, v11

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v5, v10, [I

    add-int/lit8 v8, p2, 0xd

    .line 12
    aget-byte v8, v1, v8

    shl-int/2addr v8, v15

    and-int/2addr v8, v9

    add-int/lit8 v12, p2, 0xe

    aget-byte v12, v1, v12

    and-int/2addr v12, v3

    or-int/2addr v8, v12

    and-int/2addr v8, v11

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v5, v10, [I

    add-int/lit8 v8, p2, 0xf

    .line 13
    aget-byte v11, v1, v8

    shr-int/2addr v11, v6

    and-int/2addr v11, v10

    aput v11, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v5, v10, [I

    .line 14
    aget-byte v8, v1, v8

    shr-int/2addr v8, v10

    and-int/2addr v8, v10

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v5, v10, [I

    add-int/lit8 v8, p2, 0x10

    .line 15
    aget-byte v8, v1, v8

    shl-int/lit8 v7, v8, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    add-int/lit8 v8, p2, 0x11

    aget-byte v8, v1, v8

    shl-int/2addr v8, v15

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v4, p2, 0x12

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    or-int/2addr v1, v7

    const v3, 0xffffff

    and-int/2addr v1, v3

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_4
    const/16 v2, 0xa

    new-array v15, v10, [I

    add-int/lit8 v16, p2, 0x4

    .line 16
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v6

    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v15, v10, [I

    .line 17
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v6

    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v15, v10, [I

    .line 18
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v6

    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v15, v10, [I

    .line 19
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v6

    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 20
    aget-byte v15, v1, v16

    shr-int/2addr v15, v10

    and-int/2addr v15, v10

    aput v15, v2, v6

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 21
    aget-byte v7, v1, v16

    shr-int/2addr v7, v6

    and-int/2addr v7, v10

    aput v7, v2, v6

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v7, p2, 0x5

    .line 22
    aget-byte v11, v1, v7

    shr-int/2addr v11, v8

    and-int/2addr v11, v10

    aput v11, v2, v6

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v10, [I

    .line 23
    aget-byte v11, v1, v7

    shr-int/lit8 v9, v11, 0x6

    and-int/2addr v9, v10

    aput v9, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 24
    aget-byte v4, v1, v7

    shr-int/2addr v4, v12

    and-int/2addr v4, v10

    aput v4, v2, v6

    const/16 v4, 0x14

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v4, v10, [I

    .line 25
    aget-byte v9, v1, v7

    shr-int/2addr v9, v13

    and-int/2addr v9, v10

    aput v9, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v4, v10, [I

    .line 26
    aget-byte v9, v1, v7

    shr-int/lit8 v5, v9, 0x3

    and-int/2addr v5, v10

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v4, v10, [I

    .line 27
    aget-byte v5, v1, v7

    const/4 v9, 0x2

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v4, v10, [I

    .line 28
    aget-byte v5, v1, v7

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v4, v10, [I

    .line 29
    aget-byte v5, v1, v7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 30
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, -0x3

    const/4 v5, -0x2

    const/16 v7, 0x1b

    if-eqz v2, :cond_9

    add-int/lit8 v2, p2, 0x6

    .line 31
    aget-byte v9, v1, v2

    and-int/2addr v9, v3

    if-eqz v9, :cond_6

    if-eq v9, v3, :cond_5

    new-array v9, v10, [I

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    aput v2, v9, v6

    invoke-static {v14, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v2, v10, [I

    aput v4, v2, v6

    .line 33
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array v2, v10, [I

    aput v5, v2, v6

    .line 34
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    add-int/lit8 v2, p2, 0x7

    .line 35
    aget-byte v9, v1, v2

    and-int/2addr v9, v3

    if-eqz v9, :cond_8

    if-eq v9, v3, :cond_7

    new-array v4, v10, [I

    .line 36
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    aput v2, v4, v6

    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v2, v10, [I

    aput v4, v2, v6

    .line 37
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v10, [I

    aput v5, v2, v6

    .line 38
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    add-int/lit8 v2, p2, 0x6

    .line 39
    aget-byte v9, v1, v2

    and-int/2addr v9, v3

    if-eqz v9, :cond_b

    if-eq v9, v3, :cond_a

    new-array v9, v10, [I

    .line 40
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    aput v2, v9, v6

    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array v2, v10, [I

    aput v4, v2, v6

    .line 41
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_b
    new-array v2, v10, [I

    aput v5, v2, v6

    .line 42
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v2, p2, 0x7

    .line 43
    aget-byte v7, v1, v2

    and-int/2addr v7, v3

    if-eqz v7, :cond_d

    if-eq v7, v3, :cond_c

    new-array v4, v10, [I

    .line 44
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    aput v2, v4, v6

    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array v2, v10, [I

    aput v4, v2, v6

    .line 45
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    new-array v2, v10, [I

    aput v5, v2, v6

    .line 46
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x15

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 47
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v10, [I

    .line 48
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v10

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 49
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v10, [I

    .line 50
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v8

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_e
    add-int/lit8 v2, p2, 0x4

    .line 51
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x5

    .line 52
    aget-byte v1, v1, v5

    and-int/2addr v2, v3

    .line 53
    iput v2, v0, Lk0/il;->c:I

    move v2, v6

    .line 54
    :goto_3
    iget-object v5, v0, Lk0/il;->d:[[I

    array-length v7, v5

    if-ge v2, v7, :cond_10

    .line 55
    iget v7, v0, Lk0/il;->c:I

    aget-object v13, v5, v2

    aget v13, v13, v6

    if-ne v7, v13, :cond_f

    if-eqz v7, :cond_10

    .line 56
    iput v2, v0, Lk0/il;->b:I

    goto :goto_4

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    :goto_4
    and-int/2addr v1, v3

    if-ne v1, v10, :cond_15

    .line 57
    array-length v1, v5

    if-ge v2, v1, :cond_14

    .line 58
    iget v1, v0, Lk0/il;->c:I

    if-eq v1, v11, :cond_13

    const/16 v3, 0x11

    if-eq v1, v3, :cond_11

    const/16 v3, 0x14

    if-eq v1, v3, :cond_14

    packed-switch v1, :pswitch_data_0

    .line 59
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 60
    iget-object v1, v0, Lk0/il;->d:[[I

    aget-object v1, v1, v2

    aget v1, v1, v10

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 61
    :pswitch_0
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 62
    sget-object v1, La/b;->R:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_5

    .line 63
    :cond_11
    sget v1, Lk0/il;->P:I

    if-nez v1, :cond_12

    .line 64
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 65
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 66
    :cond_12
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 67
    sget-object v1, La/b;->R:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_5

    .line 68
    :cond_13
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 69
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    .line 70
    invoke-static {v10, v10}, Ll0/b0;->l0(II)V

    .line 71
    :cond_14
    :goto_5
    :pswitch_1
    iput-boolean v6, v0, Lk0/il;->o:Z

    goto/16 :goto_c

    :cond_15
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1c

    .line 72
    array-length v1, v5

    if-ge v2, v1, :cond_2b

    iget-boolean v1, v0, Lk0/il;->o:Z

    if-nez v1, :cond_2b

    .line 73
    iget v1, v0, Lk0/il;->c:I

    if-eq v1, v15, :cond_19

    if-eq v1, v11, :cond_18

    const/16 v2, 0x14

    if-eq v1, v2, :cond_16

    goto :goto_6

    .line 74
    :cond_16
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xd

    if-eqz v1, :cond_17

    .line 75
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 76
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    new-array v1, v8, [I

    .line 77
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 78
    iput-boolean v10, v0, Lk0/il;->v:Z

    goto :goto_6

    .line 79
    :cond_17
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 80
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 81
    :cond_18
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 82
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    .line 83
    invoke-static {v9, v10}, Ll0/b0;->l0(II)V

    .line 84
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    .line 85
    invoke-static {v10, v10}, Ll0/b0;->l0(II)V

    new-array v1, v8, [I

    .line 86
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    .line 87
    iput-boolean v10, v0, Lk0/il;->v:Z

    goto :goto_6

    .line 88
    :cond_19
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 89
    sget-object v1, La/b;->R:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_6

    .line 90
    :cond_1a
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-array v1, v8, [I

    .line 91
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 92
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    .line 93
    invoke-static {v9, v10}, Ll0/b0;->l0(II)V

    .line 94
    :cond_1b
    :goto_6
    iput-boolean v10, v0, Lk0/il;->o:Z

    goto/16 :goto_c

    :cond_1c
    if-nez v1, :cond_2b

    .line 95
    array-length v1, v5

    if-ge v2, v1, :cond_1d

    .line 96
    iget v1, v0, Lk0/il;->c:I

    if-eq v1, v11, :cond_1d

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1d

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1d

    packed-switch v1, :pswitch_data_1

    .line 97
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 98
    iget-object v1, v0, Lk0/il;->d:[[I

    iget v2, v0, Lk0/il;->b:I

    aget-object v1, v1, v2

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 99
    :pswitch_2
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 100
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    .line 101
    invoke-static {v12, v10}, Ll0/b0;->l0(II)V

    .line 102
    :cond_1d
    :goto_7
    :pswitch_3
    iput-boolean v6, v0, Lk0/il;->o:Z

    goto/16 :goto_c

    :cond_1e
    add-int/lit8 v2, p2, 0x4

    .line 103
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 104
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1f

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v6

    const/4 v3, 0x2

    .line 105
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 106
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 107
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 108
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1f
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v6

    const/4 v3, 0x2

    .line 109
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 110
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 111
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 112
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 113
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    aput v1, v2, v6

    .line 114
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 115
    :cond_20
    iget v2, v0, Lk0/il;->n:I

    if-ne v2, v10, :cond_22

    add-int/lit8 v2, p2, 0x4

    .line 116
    aget-byte v2, v1, v2

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    and-int/2addr v2, v10

    .line 117
    iget v3, v0, Lk0/il;->m:I

    if-eq v3, v2, :cond_22

    .line 118
    iput v2, v0, Lk0/il;->m:I

    const/4 v3, 0x0

    if-ne v2, v10, :cond_21

    .line 119
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x68

    new-array v7, v10, [I

    aput v10, v7, v6

    invoke-static {v2, v4, v7, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_9

    .line 120
    :cond_21
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x68

    new-array v7, v10, [I

    aput v6, v7, v6

    invoke-static {v2, v4, v7, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 121
    :cond_22
    :goto_9
    sget v2, Lk0/il;->P:I

    if-ne v2, v10, :cond_25

    add-int/lit8 v2, p2, 0x4

    .line 122
    aget-byte v2, v1, v2

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_23

    .line 123
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 124
    iput-boolean v10, v0, Lk0/il;->r:Z

    .line 125
    sget-object v2, La/b;->R:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_a

    :cond_23
    if-nez v2, :cond_25

    .line 126
    iget-boolean v2, v0, Lk0/il;->r:Z

    if-ne v2, v10, :cond_25

    .line 127
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    new-array v2, v8, [I

    .line 128
    fill-array-data v2, :array_3

    invoke-static {v2}, Lz/k;->s([I)V

    .line 129
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    .line 130
    invoke-static {v9, v10}, Ll0/b0;->l0(II)V

    .line 131
    :cond_24
    iput-boolean v6, v0, Lk0/il;->r:Z

    :cond_25
    :goto_a
    const/16 v2, 0x67

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 132
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 133
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_26
    add-int/lit8 v2, p2, 0x3

    .line 134
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    iput v1, v0, Lk0/il;->l:I

    goto/16 :goto_c

    :cond_27
    const/16 v2, 0x63

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 135
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x7

    .line 136
    aget-byte v7, v1, v5

    and-int/2addr v7, v3

    aput v7, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 137
    aget-byte v2, v1, v5

    and-int/2addr v2, v3

    iput v2, v0, Lk0/il;->n:I

    add-int/lit8 v2, p2, 0x4

    .line 138
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    if-ne v4, v10, :cond_28

    const/16 v2, 0x7a

    new-array v4, v10, [I

    aput v6, v4, v6

    .line 139
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 140
    iput v6, v0, Lk0/il;->p:I

    goto :goto_b

    .line 141
    :cond_28
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-nez v2, :cond_29

    const/16 v2, 0x7a

    new-array v4, v10, [I

    aput v10, v4, v6

    .line 142
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 143
    iput v10, v0, Lk0/il;->p:I

    .line 144
    :cond_29
    :goto_b
    iput-boolean v10, v0, Lk0/il;->q:Z

    const/16 v2, 0x76

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x5

    .line 145
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 146
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 147
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x9

    .line 148
    aget-byte v5, v1, v5

    and-int/2addr v3, v5

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 149
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v10, [I

    .line 150
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    .line 151
    :cond_2a
    iput-byte v6, v0, Lk0/il;->F:B

    .line 152
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x3

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_2b
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/il;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v1, p0, Lk0/il;->J:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/il;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/il;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Lk0/il;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/il;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->n:Lo1/y;

    iget-object v1, p0, Lk0/il;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Le/e;->e:Lo1/z;

    iget-object v1, p0, Lk0/il;->z:Lo1/p;

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    .line 9
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/il;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/il;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 12
    iget-object v0, p0, Lk0/il;->I:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x81

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
    .locals 8

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    const/4 v6, 0x7

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_c

    .line 1
    array-length p1, p2

    if-lez p1, :cond_c

    new-array p1, v0, [I

    aput p4, p1, v5

    aput v5, p1, v4

    const/16 p4, 0x70

    aput p4, p1, v3

    aput v3, p1, v1

    .line 2
    aget p4, p2, v5

    aput p4, p1, v2

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_c

    .line 3
    array-length p1, p2

    if-lez p1, :cond_c

    .line 4
    aget p1, p2, v2

    if-ne p1, v2, :cond_2

    new-array p1, v6, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xa

    new-array p1, p1, [I

    aput p4, p1, v5

    aput v5, p1, v4

    const/16 p4, 0x6b

    aput p4, p1, v3

    aput v0, p1, v1

    aput v3, p1, v2

    .line 6
    aget p4, p2, v5

    aput p4, p1, p3

    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v3

    aput p3, p1, v6

    const/16 p3, 0x8

    aget p4, p2, v1

    aput p4, p1, p3

    const/16 p3, 0x9

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    if-eqz p2, :cond_c

    .line 7
    array-length p1, p2

    if-lez p1, :cond_c

    new-array p1, v6, [I

    .line 8
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_c

    .line 9
    array-length p1, p2

    if-lez p1, :cond_c

    .line 10
    aget p1, p2, v5

    const/16 v6, 0x16

    if-ne p1, v6, :cond_5

    .line 11
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/il;->q3(I)V

    goto/16 :goto_0

    .line 12
    :cond_5
    aget p1, p2, v5

    const/16 v6, 0x17

    if-ne p1, v6, :cond_6

    .line 13
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/il;->p3(I)V

    goto :goto_0

    .line 14
    :cond_6
    aget p1, p2, v5

    const/16 v6, 0xa0

    if-ne p1, v6, :cond_7

    .line 15
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/il;->m3(I)V

    goto :goto_0

    .line 16
    :cond_7
    aget p1, p2, v5

    const/16 v6, 0xa1

    if-ne p1, v6, :cond_8

    .line 17
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/il;->n3(I)V

    goto :goto_0

    .line 18
    :cond_8
    aget p1, p2, v5

    const/16 v6, 0xa2

    if-ne p1, v6, :cond_9

    .line 19
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/il;->l3(I)V

    goto :goto_0

    .line 20
    :cond_9
    aget p1, p2, v5

    const/16 v6, 0xa3

    if-ne p1, v6, :cond_a

    .line 21
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/il;->o3(I)V

    goto :goto_0

    .line 22
    :cond_a
    aget p1, p2, v5

    const/16 v6, 0x13

    const/16 v7, 0x6a

    if-ne p1, v6, :cond_b

    new-array p1, v0, [I

    aput p4, p1, v5

    aput v5, p1, v4

    aput v7, p1, v3

    aput v3, p1, v1

    .line 23
    aget p4, p2, v5

    aput p4, p1, v2

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_b
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v5, p1, v4

    aput v7, p1, v3

    aput v3, p1, v1

    .line 24
    aget p4, p2, v5

    aput p4, p1, v2

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_c
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x0
        0x0
        0x80
    .end array-data
.end method

.method public final a3(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-array p1, v1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x0
        0x6a
        0x2
        0x8
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0x6a
        0x2
        0x8
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x0
        0x6a
        0x2
        0x8
        0x1
    .end array-data
.end method

.method public final b3(Z)V
    .locals 3

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundChangeFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lk0/il;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundChangeTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lk0/il;->A:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lk0/il;->A:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    new-array p1, v0, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    .line 6
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x91
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x90
    .end array-data
.end method

.method public final l3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x7d

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/il;->O:I

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    aput v2, v1, v0

    const/16 v0, 0x70

    const/4 v3, 0x2

    aput v0, v1, v3

    const/4 v0, 0x3

    aput v3, v1, v0

    const/4 v0, 0x4

    const/16 v3, 0x9

    aput v3, v1, v0

    const/4 v0, 0x5

    aput p1, v1, v0

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/il;->O:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final m3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x7b

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/il;->M:I

    .line 3
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/il;->M:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final n3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x7c

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/il;->N:I

    .line 3
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/il;->N:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final o3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x7e

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/il;->P:I

    const/4 v1, 0x6

    new-array v3, v1, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    aput v2, v3, v0

    const/16 v0, 0x70

    const/4 v4, 0x2

    aput v0, v3, v4

    const/4 v0, 0x3

    aput v4, v3, v0

    const/4 v0, 0x4

    const/4 v4, 0x5

    aput v4, v3, v0

    aput p1, v3, v4

    .line 3
    invoke-static {v3}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/il;->P:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final p3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x65

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/il;->K:I

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0x6a

    aput v3, v1, v0

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v3, 0x3

    const/16 v4, 0x17

    aput v4, v1, v3

    const/4 v3, 0x4

    aput p1, v1, v3

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/il;->K:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final q3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x66

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/il;->L:I

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    aput v2, v1, v0

    const/16 v0, 0x6a

    const/4 v3, 0x2

    aput v0, v1, v3

    const/4 v0, 0x3

    aput v3, v1, v0

    const/4 v0, 0x4

    const/16 v4, 0x16

    aput v4, v1, v0

    const/4 v0, 0x5

    aput p1, v1, v0

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/il;->L:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/il;->k:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
