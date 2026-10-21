.class public Lk0/gc;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static C:I = 0x0

.field public static D:I = 0x0

.field public static E:I = 0xa

.field public static F:I = 0xa

.field public static G:I = 0xa

.field public static H:I = 0x7

.field public static I:I = 0x7

.field public static J:I = 0x1

.field public static K:I = 0xa


# instance fields
.field public final A:I

.field public final B:I

.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:F

.field public o:I

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Lo1/g0;

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gc;->c:I

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

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v11, 0x9

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v12, 0xa

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v12, 0xb

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v12, 0xc

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v12, 0xd

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v12, 0xe

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v12, 0xf

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v12, 0x10

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v12, 0x11

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v12, 0x12

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v12, 0x13

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v12, 0x14

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v12, 0x15

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v12, 0x16

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v12, 0x17

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v12, 0x18

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v12, 0x19

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v12, 0x1a

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v12, 0x1b

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v12, 0x1c

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v12, 0x1d

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v12, 0x1e

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v12, 0x1f

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v12, 0x20

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v13, 0x21

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v13, 0x22

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v13, 0x23

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v13, 0x24

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v13, 0x25

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v13, 0x26

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v13, 0x27

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v13, 0x28

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v13, 0x29

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v13, 0x2a

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v13, 0x2b

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v13, 0x2c

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v13, 0x2d

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    const/16 v13, 0x2e

    aput-object v3, v1, v13

    iput-object v1, p0, Lk0/gc;->d:[[I

    .line 4
    new-instance v1, Lk0/gc$a;

    invoke-direct {v1, p0}, Lk0/gc$a;-><init>(Lk0/gc;)V

    iput-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    .line 5
    iput v0, p0, Lk0/gc;->f:I

    .line 6
    iput v0, p0, Lk0/gc;->g:I

    .line 7
    iput v0, p0, Lk0/gc;->h:I

    .line 8
    new-instance v1, Lk0/gc$b;

    invoke-direct {v1, p0}, Lk0/gc$b;-><init>(Lk0/gc;)V

    iput-object v1, p0, Lk0/gc;->i:Ljava/lang/Runnable;

    .line 9
    iput v0, p0, Lk0/gc;->j:I

    .line 10
    new-instance v0, Lk0/gc$c;

    invoke-direct {v0, p0}, Lk0/gc$c;-><init>(Lk0/gc;)V

    iput-object v0, p0, Lk0/gc;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/gc$d;

    invoke-direct {v0, p0}, Lk0/gc$d;-><init>(Lk0/gc;)V

    iput-object v0, p0, Lk0/gc;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/gc$e;

    invoke-direct {v0, p0}, Lk0/gc$e;-><init>(Lk0/gc;)V

    iput-object v0, p0, Lk0/gc;->m:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lk0/gc;->n:F

    const/16 v0, 0xff

    .line 14
    iput v0, p0, Lk0/gc;->o:I

    .line 15
    iput v0, p0, Lk0/gc;->p:I

    .line 16
    new-instance v0, Lk0/gc$f;

    invoke-direct {v0, p0}, Lk0/gc$f;-><init>(Lk0/gc;)V

    iput-object v0, p0, Lk0/gc;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/gc$g;

    invoke-direct {v0, p0}, Lk0/gc$g;-><init>(Lk0/gc;)V

    iput-object v0, p0, Lk0/gc;->r:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/gc;->s:Lo1/g0;

    .line 19
    iput v4, p0, Lk0/gc;->t:I

    .line 20
    iput v2, p0, Lk0/gc;->u:I

    .line 21
    iput v5, p0, Lk0/gc;->v:I

    .line 22
    iput v6, p0, Lk0/gc;->w:I

    .line 23
    iput v7, p0, Lk0/gc;->x:I

    .line 24
    iput v8, p0, Lk0/gc;->y:I

    .line 25
    iput v9, p0, Lk0/gc;->z:I

    .line 26
    iput v10, p0, Lk0/gc;->A:I

    .line 27
    iput v11, p0, Lk0/gc;->B:I

    return-void

    :array_0
    .array-data 4
        0x10
        0xc
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
        0x18
    .end array-data

    :array_d
    .array-data 4
        0x1d
        0x36
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
        0x4
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
        0x3
    .end array-data

    :array_1e
    .array-data 4
        0x2e
        0x12
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
        0x37
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

.method public static synthetic g3(Lk0/gc;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/gc;->s:Lo1/g0;

    return-object p0
.end method

.method public static synthetic h3(Lk0/gc;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gc;->f3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/gc;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/gc;->b3(III)V

    return-void
.end method

.method public static synthetic j3(Lk0/gc;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/gc;->a3(II)V

    return-void
.end method

.method public static synthetic k3(Lk0/gc;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gc;->c3(I)V

    return-void
.end method

.method public static synthetic l3(Lk0/gc;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gc;->d3(I)V

    return-void
.end method

.method public static synthetic m3(Lk0/gc;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gc;->e3(I)V

    return-void
.end method

.method public static synthetic n3(Lk0/gc;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/gc;->n:F

    return p0
.end method

.method public static synthetic o3(Lk0/gc;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/gc;->n:F

    return p1
.end method

.method public static synthetic p3(Lk0/gc;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/gc;->p:I

    return p0
.end method

.method public static synthetic q3(Lk0/gc;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/gc;->p:I

    return p1
.end method

.method public static synthetic r3(Lk0/gc;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/gc;->o:I

    return p0
.end method

.method public static synthetic s3(Lk0/gc;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/gc;->o:I

    return p1
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

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/gc;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gc;->k:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/gc;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/gc;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    iget-object v0, p0, Lk0/gc;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    iput v2, v0, Lk0/mt;->e:I

    .line 15
    iput v2, v0, Lk0/mt;->f:I

    .line 16
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lk0/mt;->o:I

    .line 18
    iput v1, v0, Lk0/mt;->b:I

    .line 19
    iput v1, v0, Lk0/mt;->c:I

    .line 20
    iput v1, v0, Lk0/mt;->d:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, 0x40

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_30

    const/16 v3, 0x42

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x52

    const/4 v8, 0x3

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x60

    if-eq v2, v3, :cond_2b

    const/16 v3, 0x7d

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-eq v2, v3, :cond_25

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_24

    const/16 v12, 0x27

    const/16 v13, 0x1e

    const/4 v14, -0x1

    const/4 v15, 0x6

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    const/16 v2, 0x50

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 4
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 5
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 6
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 7
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 8
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 9
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 10
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 11
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 12
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    .line 13
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_35

    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 15
    aget-byte v1, v1, v3

    and-int/lit16 v3, v1, 0xc0

    shr-int/2addr v3, v15

    and-int/2addr v3, v5

    .line 16
    invoke-static {v3, v7}, Ll0/e0;->n(II)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    and-int/lit8 v3, v1, 0xc

    shr-int/2addr v3, v4

    and-int/2addr v3, v5

    .line 17
    invoke-static {v3, v4}, Ll0/e0;->n(II)I

    move-result v6

    invoke-static {v6}, Lu0/d;->S2(I)V

    .line 18
    invoke-static {v3, v4}, Ll0/e0;->n(II)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    and-int/2addr v1, v8

    and-int/2addr v1, v5

    .line 19
    invoke-static {v1, v7}, Ll0/e0;->n(II)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    and-int/lit16 v1, v2, 0xc0

    shr-int/2addr v1, v15

    and-int/2addr v1, v5

    .line 20
    invoke-static {v1, v7}, Ll0/e0;->n(II)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    and-int/lit8 v1, v2, 0xc

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    .line 21
    invoke-static {v1, v4}, Ll0/e0;->n(II)I

    move-result v3

    invoke-static {v3}, Lu0/d;->E2(I)V

    .line 22
    invoke-static {v1, v4}, Ll0/e0;->n(II)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    and-int/lit8 v1, v2, 0x3

    and-int/2addr v1, v5

    .line 23
    invoke-static {v1, v7}, Ll0/e0;->n(II)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_12

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v8, p2, 0x3

    .line 25
    aget-byte v10, v1, v8

    and-int/2addr v10, v3

    add-int/lit8 v11, p2, 0x4

    .line 26
    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    add-int/lit8 v15, p2, 0x5

    .line 27
    aget-byte v15, v1, v15

    and-int/2addr v15, v5

    const-string v9, "persist.fyt.reversetemp"

    .line 28
    invoke-static {v9, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 29
    aget-byte v4, v1, v8

    and-int/2addr v4, v3

    .line 30
    aget-byte v2, v1, v2

    and-int/lit8 v10, v2, 0x7f

    :cond_1
    const/16 v2, 0x32

    if-lt v4, v2, :cond_2

    const/16 v2, 0x64

    if-gt v4, v2, :cond_2

    move v2, v7

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    const/16 v8, 0x25

    new-array v9, v7, [I

    aput v2, v9, v6

    .line 31
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    if-eqz v4, :cond_5

    if-eq v4, v13, :cond_4

    if-eq v4, v3, :cond_3

    if-eq v4, v12, :cond_5

    const/16 v8, 0x28

    if-eq v4, v8, :cond_4

    new-array v8, v7, [I

    aput v4, v8, v6

    .line 32
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_3
    new-array v4, v7, [I

    aput v14, v4, v6

    .line 33
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    new-array v4, v7, [I

    const/4 v8, -0x3

    aput v8, v4, v6

    .line 34
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v4, v7, [I

    const/4 v8, -0x2

    aput v8, v4, v6

    .line 35
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x1c

    if-eqz v10, :cond_8

    if-eq v10, v13, :cond_7

    if-eq v10, v3, :cond_6

    if-eq v10, v12, :cond_8

    const/16 v3, 0x28

    if-eq v10, v3, :cond_7

    new-array v3, v7, [I

    aput v10, v3, v6

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    new-array v3, v7, [I

    aput v14, v3, v6

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v3, v7, [I

    const/4 v4, -0x3

    aput v4, v3, v6

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v3, v7, [I

    const/4 v4, -0x2

    aput v4, v3, v6

    .line 39
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x15

    new-array v3, v7, [I

    and-int/lit16 v4, v11, 0xff

    aput v4, v3, v6

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v15, 0x7

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_9

    move v3, v7

    goto :goto_4

    :cond_9
    move v3, v6

    :goto_4
    aput v3, v2, v6

    const/16 v3, 0xc

    .line 41
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    shr-int/lit8 v4, v15, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v4, v15, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 43
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    shr-int/lit8 v4, v15, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    shr-int/lit8 v4, v15, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v7, [I

    const/16 v4, 0x8

    add-int/lit8 v4, p2, 0x8

    .line 46
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v7, [I

    shr-int/lit8 v3, v15, 0x2

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x3e

    new-array v2, v7, [I

    shr-int/lit8 v3, v15, 0x1

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 48
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v7, [I

    shr-int/lit8 v3, v15, 0x0

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 49
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    .line 50
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_35

    add-int/lit8 v2, p2, 0x2

    .line 51
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    .line 52
    iput v2, v0, Lk0/gc;->c:I

    move v3, v6

    .line 53
    :goto_5
    iget-object v4, v0, Lk0/gc;->d:[[I

    array-length v9, v4

    if-ge v3, v9, :cond_b

    .line 54
    iget v9, v0, Lk0/gc;->c:I

    aget-object v10, v4, v3

    aget v10, v10, v6

    if-ne v9, v10, :cond_a

    if-eqz v9, :cond_b

    .line 55
    iput v3, v0, Lk0/gc;->b:I

    goto :goto_6

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 56
    :cond_b
    :goto_6
    aget-byte v9, v1, p2

    if-ne v9, v11, :cond_e

    if-eqz v2, :cond_c

    .line 57
    array-length v1, v4

    if-ge v3, v1, :cond_35

    .line 58
    aget-object v1, v4, v3

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    .line 59
    :cond_c
    iget v1, v0, Lk0/gc;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_d

    if-eq v1, v5, :cond_d

    .line 60
    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 61
    :cond_d
    iput v5, v0, Lk0/gc;->b:I

    goto/16 :goto_12

    .line 62
    :cond_e
    aget-byte v2, v1, p2

    if-ne v2, v15, :cond_35

    add-int/lit8 v2, p2, 0x3

    .line 63
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    .line 64
    iget v2, v0, Lk0/gc;->c:I

    const/16 v8, 0x19

    if-eq v2, v8, :cond_19

    const/16 v8, 0x1a

    if-eq v2, v8, :cond_17

    const/16 v8, 0x24

    if-eq v2, v8, :cond_15

    const/16 v8, 0x26

    if-eq v2, v8, :cond_13

    if-eq v2, v12, :cond_11

    const/16 v8, 0x84

    if-eq v2, v8, :cond_19

    const/16 v8, 0x85

    if-eq v2, v8, :cond_17

    and-int/2addr v1, v5

    if-ne v1, v7, :cond_f

    .line 65
    array-length v1, v4

    if-ge v3, v1, :cond_35

    .line 66
    aget-object v1, v4, v3

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_f
    if-nez v1, :cond_35

    .line 67
    iget v1, v0, Lk0/gc;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_10

    if-eq v1, v5, :cond_10

    .line 68
    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 69
    :cond_10
    iput v5, v0, Lk0/gc;->b:I

    goto/16 :goto_12

    :cond_11
    move v2, v6

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_12

    .line 70
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 71
    :cond_12
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_13
    move v2, v6

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    const/16 v3, 0x1f

    .line 72
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    const/16 v1, 0x1f

    .line 73
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_15
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_35

    .line 74
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_16

    .line 75
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    .line 76
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_16
    const/16 v1, 0x37

    .line 77
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 78
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_17
    move v2, v6

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_18

    const/16 v3, 0x8

    .line 79
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    const/16 v3, 0x8

    .line 80
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_19
    move v2, v6

    :goto_a
    and-int/lit16 v3, v1, 0xff

    const/4 v4, 0x7

    if-ge v2, v3, :cond_1a

    .line 81
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 82
    :cond_1a
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    .line 83
    :pswitch_5
    aget-byte v2, v1, p2

    const/high16 v9, 0x10000000

    if-lt v2, v15, :cond_20

    add-int/lit8 v2, p2, 0x2

    .line 84
    aget-byte v4, v1, v2

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_1e

    .line 85
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0x80

    .line 86
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.fyt.temperature"

    .line 87
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_1c

    if-eqz v4, :cond_1b

    mul-int/lit8 v1, v1, 0x9

    .line 88
    div-int/2addr v1, v11

    rsub-int v1, v1, 0x528

    goto :goto_b

    :cond_1b
    mul-int/lit8 v1, v1, 0x9

    .line 89
    div-int/2addr v1, v11

    add-int/lit16 v1, v1, 0x528

    .line 90
    :goto_b
    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    or-int/2addr v1, v9

    and-int/2addr v1, v14

    goto :goto_c

    :cond_1c
    if-eqz v4, :cond_1d

    mul-int/lit8 v1, v1, 0xa

    rsub-int v1, v1, 0x3e8

    goto :goto_c

    :cond_1d
    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x3e8

    .line 91
    :goto_c
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_12

    :cond_1e
    add-int/lit8 v2, p2, 0x3

    .line 92
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_1f

    .line 93
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x3e8

    or-int/2addr v1, v9

    and-int/2addr v1, v14

    .line 94
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_12

    .line 95
    :cond_1f
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_12

    :cond_20
    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0x80

    .line 97
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.fyt.temperature"

    .line 98
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_22

    if-eqz v4, :cond_21

    mul-int/lit8 v1, v1, 0x9

    .line 99
    div-int/2addr v1, v11

    rsub-int v1, v1, 0x528

    goto :goto_d

    :cond_21
    mul-int/lit8 v1, v1, 0x9

    .line 100
    div-int/2addr v1, v11

    add-int/lit16 v1, v1, 0x528

    .line 101
    :goto_d
    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    or-int/2addr v1, v9

    and-int/2addr v1, v14

    goto :goto_e

    :cond_22
    if-eqz v4, :cond_23

    mul-int/lit8 v1, v1, 0xa

    rsub-int v1, v1, 0x3e8

    goto :goto_e

    :cond_23
    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x3e8

    .line 102
    :goto_e
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_12

    .line 103
    :cond_24
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_25
    add-int/lit8 v2, p2, 0x2

    .line 104
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    if-eq v2, v7, :cond_29

    if-eq v2, v8, :cond_28

    if-eq v2, v11, :cond_26

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_12

    :pswitch_6
    const/16 v2, 0x408

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 105
    aget-byte v4, v1, v4

    const/16 v7, 0x8

    shl-int/2addr v4, v7

    const v7, 0xff00

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x3

    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :pswitch_7
    add-int/lit8 v2, p2, 0x4

    .line 106
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x258

    .line 107
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_12

    :pswitch_8
    add-int/lit8 v2, p2, 0x3

    .line 108
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 109
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 110
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_12

    :cond_26
    add-int/lit8 v2, p2, 0x3

    .line 111
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    const-string v2, "persist.syu.reversefrontdoor"

    .line 112
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_27

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 113
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 114
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_27
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 115
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 116
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_f
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 117
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 118
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 119
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 120
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_28
    add-int/lit8 v2, p2, 0x4

    .line 121
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 122
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 123
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v4, [I

    aput v7, v4, v6

    aput v1, v4, v7

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_29
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 124
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2a

    add-int/lit8 v2, p2, 0x3

    .line 125
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_12

    :cond_2a
    add-int/lit8 v2, p2, 0x3

    .line 126
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_12

    :cond_2b
    add-int/lit8 v2, p2, 0x2

    .line 127
    aget-byte v2, v1, v2

    add-int/2addr v2, v7

    const/16 v3, 0x68

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 128
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 129
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_2c
    add-int/lit8 v2, p2, 0x2

    .line 130
    aget-byte v2, v1, v2

    if-eq v2, v7, :cond_2d

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_12

    :pswitch_9
    const/16 v2, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 131
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :pswitch_a
    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 132
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :pswitch_b
    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 133
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :pswitch_c
    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 134
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :pswitch_d
    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 135
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_2d
    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 136
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_2e
    add-int/lit8 v2, p2, 0x2

    .line 137
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    if-eqz v1, :cond_2f

    .line 138
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_12

    :cond_2f
    if-nez v1, :cond_35

    .line 139
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_12

    :cond_30
    add-int/lit8 v2, p2, 0x2

    .line 140
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-eqz v3, :cond_31

    .line 141
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_10

    :cond_31
    if-nez v3, :cond_32

    .line 142
    invoke-static {v6}, Lk0/qt;->a(I)V

    .line 143
    :cond_32
    :goto_10
    aget-byte v3, v1, v2

    if-ne v3, v7, :cond_33

    const/16 v3, 0x3f5

    new-array v7, v7, [I

    aput v4, v7, v6

    .line 144
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    .line 145
    :cond_33
    aget-byte v3, v1, v2

    if-ne v3, v4, :cond_34

    const/16 v3, 0x3f5

    new-array v4, v7, [I

    aput v7, v4, v6

    .line 146
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 147
    :cond_34
    :goto_11
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    iput v1, v0, Lk0/gc;->h:I

    :cond_35
    :goto_12
    return-void

    nop

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

    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/gc;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/gc;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/gc;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gc;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/gc;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/gc;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/gc;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x72

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
    .locals 6

    const/4 p3, 0x0

    if-eqz p1, :cond_a

    const/4 p4, 0x6

    const/16 v0, 0xe3

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq p1, v5, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v2, :cond_5

    const/16 p4, 0x8

    if-eq p1, p4, :cond_4

    const/16 p4, 0x3ed

    if-eq p1, p4, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_b

    .line 1
    array-length p1, p2

    if-lez p1, :cond_b

    .line 2
    aget p1, p2, p3

    const/16 p4, 0x9

    if-ne p1, p4, :cond_1

    new-array p1, v4, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 4
    :cond_1
    aget p1, p2, p3

    const/16 p4, 0xa

    if-ne p1, p4, :cond_2

    new-array p1, v4, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_2
    aget p1, p2, p3

    const/16 p4, -0x7c

    if-lt p1, v2, :cond_3

    new-array p1, v4, [I

    aput v0, p1, p3

    aput v2, p1, v5

    aput p4, p1, v3

    .line 7
    aget p2, p2, p3

    add-int/2addr p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array p1, v4, [I

    aput v0, p1, p3

    aput v2, p1, v5

    aput p4, p1, v3

    .line 8
    aget p2, p2, p3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_b

    .line 9
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/gc;->d3(I)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_b

    .line 10
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/gc;->c3(I)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_b

    new-array p1, v2, [I

    aput v0, p1, p3

    aput p4, p1, v5

    const/16 p4, -0x76

    aput p4, p1, v3

    .line 11
    aget p3, p2, p3

    aput p3, p1, v1

    aget p2, p2, v5

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_b

    .line 12
    aget p1, p2, p3

    aget p2, p2, v5

    invoke-virtual {p0, p1, p2}, Lk0/gc;->a3(II)V

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_b

    .line 13
    aget p1, p2, p3

    aget p3, p2, v5

    aget p2, p2, v3

    invoke-virtual {p0, p1, p3, p2}, Lk0/gc;->b3(III)V

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_b

    new-array p1, v2, [I

    aput v0, p1, p3

    aput p4, p1, v5

    const/16 p4, -0x7d

    aput p4, p1, v3

    .line 14
    aget p3, p2, p3

    aput p3, p1, v1

    aget p2, p2, v5

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_b

    .line 15
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/gc;->e3(I)V

    :cond_b
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x5
        -0x7c
        0x5
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x5
        -0x7c
        0xa
    .end array-data
.end method

.method public final a3(II)V
    .locals 6

    .line 1
    sput p1, Lk0/gc;->H:I

    .line 2
    sput p2, Lk0/gc;->I:I

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
    sget p2, Lk0/gc;->I:I

    aput p2, p1, v2

    const/16 p2, 0x66

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    .line 5
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, v5, v5}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/gc;->I:I

    if-eq p1, p2, :cond_0

    .line 6
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, v5, p2}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p1, 0x65

    new-array p2, v1, [I

    .line 7
    sget v0, Lk0/gc;->H:I

    aput v0, p2, v2

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 8
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, v3, v5}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/gc;->H:I

    if-eq p1, p2, :cond_1

    .line 9
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, v3, p2}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method

.method public final b3(III)V
    .locals 5

    .line 1
    sput p1, Lk0/gc;->E:I

    .line 2
    sput p2, Lk0/gc;->F:I

    .line 3
    sput p3, Lk0/gc;->G:I

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
    sget v0, Lk0/gc;->E:I

    aput v0, p3, v2

    const/16 v0, 0x62

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    .line 6
    iget-object p3, p0, Lk0/gc;->s:Lo1/g0;

    const/16 v0, 0xa

    invoke-virtual {p3, v1, v0}, Lo1/g0;->b(II)I

    move-result p3

    sget v4, Lk0/gc;->E:I

    if-eq p3, v4, :cond_0

    .line 7
    iget-object p3, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p3, v1, v4}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p3, 0x63

    new-array v1, v3, [I

    .line 8
    sget v4, Lk0/gc;->F:I

    aput v4, v1, v2

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    .line 9
    iget-object p3, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p3, p1, v0}, Lo1/g0;->b(II)I

    move-result p3

    sget v1, Lk0/gc;->F:I

    if-eq p3, v1, :cond_1

    .line 10
    iget-object p3, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p3, p1, v1}, Lo1/g0;->g(II)V

    :cond_1
    const/16 p1, 0x64

    new-array p3, v3, [I

    .line 11
    sget v1, Lk0/gc;->G:I

    aput v1, p3, v2

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 12
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, p2, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/gc;->G:I

    if-eq p1, p3, :cond_2

    .line 13
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final c3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/gc;->K:I

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
    sget v0, Lk0/gc;->K:I

    aput v0, p1, v2

    const/16 v0, 0x70

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    const/16 v0, 0x9

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gc;->K:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final d3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/gc;->J:I

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
    sget v0, Lk0/gc;->J:I

    aput v0, p1, v2

    const/16 v0, 0x6f

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gc;->J:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final e3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/gc;->D:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x69

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gc;->D:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final f3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/gc;->C:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x22f

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gc;->C:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/gc;->s:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
