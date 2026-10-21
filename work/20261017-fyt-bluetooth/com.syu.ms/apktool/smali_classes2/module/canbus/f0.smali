.class public Lmodule/canbus/f0;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/f0$i;
    }
.end annotation


# static fields
.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static final J:[I

.field public static final K:[I

.field public static final L:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/f0$i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:Z

.field public final b:[I

.field public c:Lo1/g0;

.field public final d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:[[I

.field public m:I

.field public n:Lo1/o;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:B

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:I

.field public y:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/f0;->J:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/f0;->K:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/f0;->L:Lo1/f;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0xe
        0x10
        0x12
        0x14
        0x16
        0x19
        0x1a
        0x1c
        0x1e
        0x20
        0x22
        0x24
        0x26
        0x28
        0x2a
        0x2c
        0x2e
        0x31
        0x30
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x5
        0x7
        0x9
        0xb
        0xd
        0xf
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1b
        0x1d
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lmodule/canbus/f0;->b:[I

    .line 3
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lmodule/canbus/f0;->c:Lo1/g0;

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lmodule/canbus/f0;->d:I

    const/16 v2, 0xff

    .line 5
    iput v2, p0, Lmodule/canbus/f0;->i:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lmodule/canbus/f0;->j:I

    .line 7
    iput v2, p0, Lmodule/canbus/f0;->k:I

    const/16 v3, 0x10

    new-array v3, v3, [[I

    new-array v4, v1, [I

    .line 8
    fill-array-data v4, :array_0

    aput-object v4, v3, v2

    new-array v4, v1, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_2

    aput-object v4, v3, v1

    new-array v4, v1, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x3

    aput-object v4, v3, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_5

    const/4 v5, 0x5

    aput-object v4, v3, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_6

    aput-object v4, v3, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x7

    aput-object v0, v3, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v3, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v3, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    const/16 v4, 0xa

    aput-object v0, v3, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    const/16 v4, 0xb

    aput-object v0, v3, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/16 v4, 0xc

    aput-object v0, v3, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    const/16 v4, 0xd

    aput-object v0, v3, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    const/16 v4, 0xe

    aput-object v0, v3, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_f

    const/16 v1, 0xf

    aput-object v0, v3, v1

    iput-object v3, p0, Lmodule/canbus/f0;->l:[[I

    .line 9
    iput v2, p0, Lmodule/canbus/f0;->m:I

    .line 10
    new-instance v0, Lmodule/canbus/f0$b;

    invoke-direct {v0, p0}, Lmodule/canbus/f0$b;-><init>(Lmodule/canbus/f0;)V

    iput-object v0, p0, Lmodule/canbus/f0;->o:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lmodule/canbus/f0$c;

    invoke-direct {v0, p0}, Lmodule/canbus/f0$c;-><init>(Lmodule/canbus/f0;)V

    iput-object v0, p0, Lmodule/canbus/f0;->p:Ljava/lang/Runnable;

    .line 12
    iput v2, p0, Lmodule/canbus/f0;->q:I

    .line 13
    new-instance v0, Lmodule/canbus/f0$d;

    invoke-direct {v0, p0}, Lmodule/canbus/f0$d;-><init>(Lmodule/canbus/f0;)V

    iput-object v0, p0, Lmodule/canbus/f0;->r:Ljava/lang/Runnable;

    .line 14
    iput v2, p0, Lmodule/canbus/f0;->s:I

    .line 15
    new-instance v0, Lmodule/canbus/f0$e;

    invoke-direct {v0, p0}, Lmodule/canbus/f0$e;-><init>(Lmodule/canbus/f0;)V

    iput-object v0, p0, Lmodule/canbus/f0;->t:Ljava/lang/Runnable;

    .line 16
    iput-byte v5, p0, Lmodule/canbus/f0;->u:B

    .line 17
    new-instance v0, Lmodule/canbus/f0$f;

    invoke-direct {v0, p0}, Lmodule/canbus/f0$f;-><init>(Lmodule/canbus/f0;)V

    iput-object v0, p0, Lmodule/canbus/f0;->v:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lmodule/canbus/f0$g;

    invoke-direct {v0, p0}, Lmodule/canbus/f0$g;-><init>(Lmodule/canbus/f0;)V

    iput-object v0, p0, Lmodule/canbus/f0;->w:Ljava/lang/Runnable;

    const/16 v0, 0xc8

    .line 19
    iput v0, p0, Lmodule/canbus/f0;->x:I

    .line 20
    new-instance v0, Lmodule/canbus/f0$h;

    invoke-direct {v0, p0}, Lmodule/canbus/f0$h;-><init>(Lmodule/canbus/f0;)V

    iput-object v0, p0, Lmodule/canbus/f0;->y:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lmodule/canbus/f0;->z:I

    .line 22
    iput v2, p0, Lmodule/canbus/f0;->A:I

    .line 23
    iput-boolean v2, p0, Lmodule/canbus/f0;->B:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x20
        0x3e
    .end array-data

    :array_9
    .array-data 4
        0x81
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xa0
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xa4
        0x36
    .end array-data

    :array_c
    .array-data 4
        0xaf
        0x9
    .end array-data

    :array_d
    .array-data 4
        0xb0
        0x12
    .end array-data

    :array_e
    .array-data 4
        0xb9
        0x19
    .end array-data

    :array_f
    .array-data 4
        0xc2
        0x26
    .end array-data
.end method

.method public static synthetic a3(Lmodule/canbus/f0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/f0;->y3()V

    return-void
.end method

.method public static synthetic b3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/f0;->D:I

    return v0
.end method

.method public static synthetic c3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/f0;->F:I

    return v0
.end method

.method public static synthetic d3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/f0;->F:I

    return p0
.end method

.method public static synthetic e3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/f0;->H:I

    return v0
.end method

.method public static synthetic f3(Lmodule/canbus/f0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/f0;->C3()V

    return-void
.end method

.method public static synthetic g3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/f0;->G:I

    return v0
.end method

.method public static synthetic h3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/f0;->G:I

    return p0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/f0;->I:I

    return v0
.end method

.method public static synthetic j3(Lmodule/canbus/f0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/f0;->A3()V

    return-void
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/f0;->E:I

    return v0
.end method

.method public static synthetic l3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/f0;->E:I

    return p0
.end method

.method public static synthetic m3(Lmodule/canbus/f0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/f0;->r:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic n3(Lmodule/canbus/f0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/f0;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic o3(Lmodule/canbus/f0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/f0;->w:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic p3(Lmodule/canbus/f0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/f0;->x:I

    return p0
.end method

.method public static synthetic q3(Lmodule/canbus/f0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/f0;->A:I

    return p0
.end method

.method public static synthetic r3(Lmodule/canbus/f0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/f0;->A:I

    return p1
.end method

.method public static synthetic s3(Lmodule/canbus/f0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/f0;->A:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/f0;->A:I

    return v0
.end method

.method public static synthetic t3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/f0;->J:[I

    return-object v0
.end method

.method public static synthetic u3(Lmodule/canbus/f0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/f0;->D3()V

    return-void
.end method

.method public static v3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/f0;->L:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/f0$i;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/f0$i;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized A3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/f0;->I:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/f0;->v3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final B3(I)V
    .locals 4

    .line 1
    sput p1, Lmodule/canbus/f0;->C:I

    .line 2
    iget-object v0, p0, Lmodule/canbus/f0;->c:Lo1/g0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    sget v3, Lmodule/canbus/f0;->C:I

    if-eq v0, v3, :cond_0

    .line 3
    iget-object v0, p0, Lmodule/canbus/f0;->c:Lo1/g0;

    invoke-virtual {v0, v1, v3}, Lo1/g0;->g(II)V

    :cond_0
    const/16 v0, 0x65

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v2

    .line 4
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    return-void
.end method

.method public final declared-synchronized C3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/f0;->H:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/f0;->v3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized D3()V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/f0;->D:I

    .line 4
    sget v1, Lmodule/canbus/f0;->E:I

    const/4 v2, 0x4

    const/4 v3, 0x7

    const/4 v4, 0x3

    const/16 v5, 0xf0

    const/16 v6, 0xe3

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v1, :cond_1

    .line 5
    iput-boolean v10, p0, Lmodule/canbus/f0;->B:Z

    new-array v0, v7, [I

    aput v6, v0, v9

    aput v8, v0, v10

    aput v5, v0, v8

    aput v3, v0, v4

    aput v10, v0, v2

    .line 6
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v11, p0, Lmodule/canbus/f0;->B:Z

    if-eqz v11, :cond_2

    .line 8
    iput-boolean v9, p0, Lmodule/canbus/f0;->B:Z

    new-array v7, v7, [I

    aput v6, v7, v9

    aput v8, v7, v10

    aput v5, v7, v8

    aput v3, v7, v4

    aput v9, v7, v2

    .line 9
    invoke-static {v7}, Lz/k;->s([I)V

    :cond_2
    if-ge v0, v1, :cond_3

    move v9, v10

    goto :goto_0

    :cond_3
    if-le v0, v1, :cond_4

    const/4 v9, -0x1

    .line 10
    :cond_4
    :goto_0
    invoke-static {v10, v9}, Lmodule/canbus/f0;->v3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

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

    if-ne v0, v1, :cond_0

    const/16 v0, 0x24

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/f0;->K:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/f0;->H:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/f0;->I:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 8

    .line 1
    iget-object v0, p0, Lmodule/canbus/f0;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lmodule/canbus/f0;->c:Lo1/g0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/f0;->B3(I)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f0;->v:Ljava/lang/Runnable;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f0;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v2, v0, Lk0/mt;->e:I

    .line 7
    iput v4, v0, Lk0/mt;->f:I

    .line 8
    iput v4, v0, Lk0/mt;->g:I

    .line 9
    iput v4, v0, Lk0/mt;->i:I

    .line 10
    iput v2, v0, Lk0/mt;->o:I

    .line 11
    sget v3, Lk0/nt;->c:I

    const/16 v5, 0xa

    const/16 v6, 0xd

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2

    if-eq v3, v5, :cond_2

    if-eq v3, v6, :cond_2

    .line 12
    iput v2, v0, Lk0/mt;->b:I

    .line 13
    iput v2, v0, Lk0/mt;->c:I

    .line 14
    iput v4, v0, Lk0/mt;->j:I

    .line 15
    iput v2, v0, Lk0/mt;->l:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 16
    iput v2, v0, Lk0/mt;->j:I

    :cond_0
    if-ne v3, v1, :cond_1

    .line 17
    iput v4, v0, Lk0/mt;->b:I

    .line 18
    :cond_1
    sget-object v0, Lo1/u;->b:Lo1/o;

    iput-object v0, p0, Lmodule/canbus/f0;->n:Lo1/o;

    .line 19
    new-instance v0, Lmodule/canbus/f0$a;

    invoke-direct {v0, p0}, Lmodule/canbus/f0$a;-><init>(Lmodule/canbus/f0;)V

    sput-object v0, Lo1/u;->b:Lo1/o;

    goto :goto_0

    .line 20
    :cond_2
    iput v2, v0, Lk0/mt;->j:I

    .line 21
    iput v2, v0, Lk0/mt;->b:I

    .line 22
    iput v2, v0, Lk0/mt;->c:I

    if-ne v3, v6, :cond_3

    .line 23
    iput v4, v0, Lk0/mt;->l:I

    .line 24
    iput v2, v0, Lk0/mt;->j:I

    .line 25
    :cond_3
    :goto_0
    sget v0, Lk0/nt;->c:I

    if-ne v0, v5, :cond_4

    .line 26
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 27
    :cond_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    sget v0, Lk0/nt;->c:I

    if-ne v0, v1, :cond_5

    .line 29
    invoke-virtual {p0}, Lmodule/canbus/f0;->init()V

    .line 30
    iget-object v0, p0, Lmodule/canbus/f0;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {p0}, Lmodule/canbus/f0;->w3()V

    .line 32
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/f0;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_5
    return-void
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_3f

    const/16 v3, -0xb

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x13

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x1a

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x31

    const/4 v12, -0x1

    if-eq v2, v3, :cond_37

    const/16 v3, 0x5e

    const/4 v9, 0x6

    if-eq v2, v3, :cond_36

    const/16 v3, 0x21

    if-eq v2, v3, :cond_30

    const/16 v3, 0x22

    const/16 v14, 0x1f

    const/4 v15, 0x7

    if-eq v2, v3, :cond_25

    const/4 v3, -0x2

    const/16 v13, 0xa

    const/16 v5, 0x36

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    add-int/lit8 v2, p2, 0x3

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v5, p2, 0x4

    .line 3
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    const/16 v14, 0x28

    if-ne v2, v8, :cond_0

    new-array v2, v8, [I

    aput v3, v2, v7

    .line 4
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    if-ne v2, v6, :cond_1

    new-array v2, v8, [I

    const/4 v15, -0x3

    aput v15, v2, v7

    .line 5
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    new-array v2, v8, [I

    aput v12, v2, v7

    .line 6
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v15, v8, [I

    aput v2, v15, v7

    .line 7
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    :goto_0
    if-ne v5, v8, :cond_3

    const/16 v2, 0x29

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 8
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_4

    const/16 v2, 0x29

    new-array v3, v8, [I

    const/4 v5, -0x3

    aput v5, v3, v7

    .line 9
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    const/16 v2, 0x29

    new-array v3, v8, [I

    aput v12, v3, v7

    .line 10
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    const/16 v2, 0x29

    new-array v3, v8, [I

    aput v5, v3, v7

    .line 11
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x2c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 12
    aget-byte v12, v1, v5

    and-int/lit8 v12, v12, 0xf

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 13
    aget-byte v2, v1, v5

    shr-int/2addr v2, v10

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v8, :cond_8

    if-eq v2, v4, :cond_7

    if-eq v2, v11, :cond_6

    move v2, v7

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_6
    move v2, v8

    goto :goto_2

    :cond_7
    move v2, v7

    move v3, v8

    goto :goto_3

    :cond_8
    move v3, v7

    move v2, v8

    :goto_3
    const/16 v5, 0x17

    new-array v10, v8, [I

    aput v2, v10, v7

    .line 14
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 15
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 16
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    if-nez v3, :cond_9

    .line 17
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_15

    .line 18
    :cond_9
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x50

    div-int/2addr v1, v4

    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x3e8

    .line 19
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_15

    .line 20
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v2, p2, 0x2

    .line 21
    aget-byte v3, v1, v2

    .line 22
    aget-byte v4, v1, v2

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v3, v6

    const/16 v5, 0x3e

    .line 24
    invoke-static {v3, v7, v5}, Lo1/o0;->a(III)I

    move-result v3

    sput v3, Lmodule/canbus/f0;->D:I

    and-int/lit16 v3, v4, 0xff

    .line 25
    invoke-static {v3, v7, v14}, Lo1/o0;->a(III)I

    move-result v3

    sput v3, Lmodule/canbus/f0;->G:I

    and-int/2addr v2, v6

    .line 26
    invoke-static {v2, v7, v14}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/f0;->F:I

    :cond_a
    const/16 v2, 0x7f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 27
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 28
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 29
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 30
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 31
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 32
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 34
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 35
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 36
    aget-byte v5, v1, v5

    add-int/lit8 v9, p2, 0x6

    .line 37
    aget-byte v9, v1, v9

    add-int/lit8 v11, p2, 0x7

    .line 38
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x8

    .line 39
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x9

    .line 40
    aget-byte v1, v1, v13

    const/16 v13, 0x75

    new-array v14, v8, [I

    and-int/2addr v3, v6

    aput v3, v14, v7

    .line 41
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x76

    new-array v13, v8, [I

    and-int/2addr v4, v6

    aput v4, v13, v7

    .line 42
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x77

    new-array v4, v8, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v6

    const/16 v10, 0x8

    shl-int/2addr v2, v10

    and-int/2addr v5, v6

    .line 43
    invoke-static {v5}, Lk0/qt;->c(I)I

    move-result v5

    or-int/2addr v2, v5

    aput v2, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    and-int/lit16 v4, v9, 0xff

    .line 44
    invoke-static {v4}, Lk0/qt;->c(I)I

    move-result v4

    shl-int/2addr v4, v10

    and-int/lit16 v5, v11, 0xff

    invoke-static {v5}, Lk0/qt;->c(I)I

    move-result v5

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    and-int/lit16 v4, v12, 0xff

    aput v4, v3, v7

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    and-int/2addr v1, v6

    aput v1, v3, v7

    .line 46
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0xff

    .line 48
    invoke-virtual {v0, v3}, Lmodule/canbus/f0;->B3(I)V

    move v3, v7

    :goto_4
    if-ge v3, v9, :cond_40

    add-int/lit8 v5, p2, 0x4

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    .line 49
    aget-byte v5, v1, v5

    add-int/lit8 v10, p2, 0x3

    add-int/2addr v10, v6

    aget-byte v6, v1, v10

    invoke-static {v5, v6}, Lo1/p0;->c(BB)I

    move-result v5

    .line 50
    iget-object v6, v0, Lmodule/canbus/f0;->b:[I

    aput v5, v6, v3

    .line 51
    sget-object v6, Lk0/nt;->f:[Lo1/x;

    add-int/lit8 v10, v3, 0x6b

    new-array v12, v11, [I

    aput v2, v12, v7

    aput v3, v12, v8

    aput v5, v12, v4

    const/4 v5, 0x0

    invoke-static {v6, v10, v12, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 52
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 53
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 54
    aget-byte v5, v1, v5

    add-int/lit8 v9, p2, 0x5

    .line 55
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x6

    .line 56
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x7

    .line 57
    aget-byte v1, v1, v11

    and-int/2addr v2, v6

    .line 58
    invoke-virtual {v0, v2}, Lmodule/canbus/f0;->B3(I)V

    .line 59
    sget-object v11, Lk0/nt;->f:[Lo1/x;

    const/16 v12, 0x66

    new-array v4, v4, [I

    aput v2, v4, v7

    and-int/lit16 v2, v5, 0xff

    const/16 v5, 0x8

    shl-int/2addr v2, v5

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    aput v2, v4, v8

    const/4 v2, 0x0

    invoke-static {v11, v12, v4, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    and-int/lit16 v4, v9, 0xff

    aput v4, v3, v7

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    and-int/lit16 v4, v10, 0xff

    aput v4, v3, v7

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    and-int/2addr v1, v6

    aput v1, v3, v7

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    .line 63
    :pswitch_5
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_b

    goto/16 :goto_15

    :cond_b
    if-eq v2, v9, :cond_d

    .line 64
    iget v2, v0, Lmodule/canbus/f0;->z:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v6, v1, v3

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    if-eq v2, v6, :cond_c

    .line 65
    aget-byte v2, v1, v3

    shr-int/2addr v2, v15

    and-int/2addr v2, v8

    iput v2, v0, Lmodule/canbus/f0;->z:I

    .line 66
    :cond_c
    iget v2, v0, Lmodule/canbus/f0;->z:I

    if-nez v2, :cond_d

    goto/16 :goto_15

    .line 67
    :cond_d
    iget v2, v0, Lmodule/canbus/f0;->m:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v6, v1, v3

    and-int/lit8 v6, v6, 0xf

    if-eq v2, v6, :cond_10

    .line 68
    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lmodule/canbus/f0;->m:I

    if-nez v1, :cond_e

    .line 69
    invoke-static {}, Lo1/u;->Y()Z

    move-result v1

    if-nez v1, :cond_40

    .line 70
    invoke-static {}, Lo1/u;->x()I

    goto/16 :goto_15

    :cond_e
    if-ne v1, v8, :cond_f

    .line 71
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/f0;->y3()V

    goto/16 :goto_15

    :cond_f
    if-ne v1, v4, :cond_40

    .line 72
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 73
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 74
    :cond_10
    aget-byte v2, v1, v3

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_11

    sget v2, Lu0/b;->D:I

    const/16 v6, 0xb

    if-eq v2, v6, :cond_11

    .line 75
    invoke-static {}, Lo1/u;->Y()Z

    move-result v1

    if-nez v1, :cond_40

    .line 76
    invoke-static {}, Lo1/u;->x()I

    goto/16 :goto_15

    .line 77
    :cond_11
    aget-byte v2, v1, v3

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v8, :cond_12

    sget v2, Lu0/b;->D:I

    const/16 v6, 0xd

    if-eq v2, v6, :cond_13

    .line 78
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/f0;->y3()V

    goto/16 :goto_15

    :cond_12
    const/16 v6, 0xd

    .line 79
    :cond_13
    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v4, :cond_40

    sget v1, Lu0/b;->D:I

    if-eq v1, v6, :cond_14

    const/16 v2, 0xb

    if-ne v1, v2, :cond_40

    .line 80
    :cond_14
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 81
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 82
    aget-byte v2, v1, v2

    add-int/lit8 v14, p2, 0x3

    .line 83
    aget-byte v15, v1, v14

    add-int/lit8 v16, p2, 0x4

    .line 84
    aget-byte v17, v1, v16

    add-int/lit8 v18, p2, 0x5

    .line 85
    aget-byte v18, v1, v18

    add-int/lit8 v9, p2, 0x6

    .line 86
    aget-byte v9, v1, v9

    new-array v12, v8, [I

    shr-int/lit8 v19, v2, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v12, v7

    .line 87
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xc

    new-array v13, v8, [I

    shr-int/lit8 v19, v2, 0x5

    and-int/lit8 v19, v19, 0x1

    aput v19, v13, v7

    .line 88
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    new-array v12, v8, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v8

    aput v13, v12, v7

    const/16 v13, 0xd

    .line 89
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xe

    new-array v13, v8, [I

    shr-int/lit8 v19, v2, 0x2

    and-int/lit8 v19, v19, 0x1

    aput v19, v13, v7

    .line 90
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x23

    new-array v13, v8, [I

    shr-int/lit8 v19, v2, 0x1

    and-int/lit8 v19, v19, 0x1

    aput v19, v13, v7

    .line 91
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x4c

    new-array v13, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v13, v7

    .line 92
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v12, v9, 0x5

    and-int/2addr v12, v8

    aput v12, v2, v7

    .line 93
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v5, v8, [I

    shr-int/lit8 v12, v9, 0x4

    and-int/2addr v12, v8

    aput v12, v5, v7

    .line 94
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v5, v8, [I

    shr-int/lit8 v12, v9, 0x3

    and-int/2addr v12, v8

    aput v12, v5, v7

    .line 95
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v5, v9, 0x2

    and-int/2addr v5, v8

    aput v5, v2, v7

    const/16 v5, 0xb

    .line 96
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v5, v8, [I

    shr-int/lit8 v12, v9, 0x1

    and-int/2addr v12, v8

    aput v12, v5, v7

    .line 97
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v5, v8, [I

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v5, v7

    .line 98
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v18, 0x4

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v8, :cond_18

    if-eq v2, v4, :cond_17

    if-eq v2, v11, :cond_16

    if-eq v2, v10, :cond_15

    move v4, v7

    move v5, v4

    :goto_5
    move v9, v5

    goto :goto_6

    :cond_15
    move v5, v7

    move v4, v8

    move v9, v4

    goto :goto_6

    :cond_16
    move v4, v7

    move v5, v8

    goto :goto_5

    :cond_17
    move v4, v7

    move v5, v4

    move v9, v8

    goto :goto_6

    :cond_18
    move v4, v7

    move v9, v4

    move v5, v8

    :goto_6
    const/16 v10, 0x12

    new-array v11, v8, [I

    aput v4, v11, v7

    .line 99
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x16

    new-array v11, v8, [I

    aput v4, v11, v7

    .line 100
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v10, v8, [I

    aput v5, v10, v7

    .line 101
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v5, v8, [I

    aput v9, v5, v7

    .line 102
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x4d

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 103
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v8, [I

    and-int/lit8 v5, v18, 0xf

    aput v5, v4, v7

    .line 104
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 105
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 106
    aget-byte v15, v1, v16

    .line 107
    aget-byte v17, v1, v14

    :cond_19
    move/from16 v1, v17

    and-int/lit16 v2, v15, 0xff

    if-ne v2, v8, :cond_1a

    const/16 v2, 0x1b

    new-array v4, v8, [I

    aput v3, v4, v7

    .line 108
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1a
    if-ne v2, v6, :cond_1b

    const/16 v2, 0x1b

    new-array v4, v8, [I

    const/4 v5, -0x3

    aput v5, v4, v7

    .line 109
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1b
    if-nez v2, :cond_1c

    const/16 v2, 0x1b

    new-array v4, v8, [I

    const/4 v5, -0x1

    aput v5, v4, v7

    .line 110
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1c
    const/16 v4, 0x1b

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 111
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_7
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_1d

    const/16 v1, 0x1c

    new-array v2, v8, [I

    aput v3, v2, v7

    .line 112
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_1d
    if-ne v1, v6, :cond_1e

    const/16 v1, 0x1c

    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 113
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_1e
    if-nez v1, :cond_1f

    const/16 v1, 0x1c

    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v7

    .line 114
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_1f
    const/16 v2, 0x1c

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 115
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_7
    add-int/lit8 v2, p2, 0x6

    .line 116
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    .line 117
    iput v1, v0, Lmodule/canbus/f0;->f:I

    move v1, v7

    .line 118
    :goto_8
    iget-object v2, v0, Lmodule/canbus/f0;->l:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_21

    .line 119
    iget v3, v0, Lmodule/canbus/f0;->f:I

    aget-object v4, v2, v1

    aget v4, v4, v7

    if-ne v3, v4, :cond_20

    if-eqz v3, :cond_21

    .line 120
    iput v1, v0, Lmodule/canbus/f0;->e:I

    goto :goto_9

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 121
    :cond_21
    :goto_9
    iget v3, v0, Lmodule/canbus/f0;->f:I

    const/16 v4, 0x20

    if-eq v3, v4, :cond_24

    if-eqz v3, :cond_22

    .line 122
    array-length v3, v2

    if-ge v1, v3, :cond_40

    .line 123
    aget-object v1, v2, v1

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 124
    :cond_22
    iget v1, v0, Lmodule/canbus/f0;->e:I

    array-length v3, v2

    if-ge v1, v3, :cond_23

    if-eq v1, v6, :cond_23

    .line 125
    aget-object v1, v2, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 126
    :cond_23
    iput v6, v0, Lmodule/canbus/f0;->e:I

    goto/16 :goto_15

    .line 127
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/f0;->x3()V

    goto/16 :goto_15

    .line 128
    :cond_25
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    add-int/lit8 v2, p2, 0x2

    .line 129
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 130
    aget-byte v1, v1, v3

    if-eq v2, v8, :cond_2b

    if-eq v2, v4, :cond_26

    goto/16 :goto_15

    .line 131
    :cond_26
    iget v2, v0, Lmodule/canbus/f0;->k:I

    if-eq v1, v2, :cond_40

    if-le v1, v2, :cond_28

    move v2, v7

    .line 132
    :goto_a
    iget v3, v0, Lmodule/canbus/f0;->k:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_27

    .line 133
    invoke-static {v14, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 134
    :cond_27
    invoke-static {v14, v8}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_28
    if-ge v1, v2, :cond_2a

    move v2, v7

    .line 135
    :goto_b
    iget v3, v0, Lmodule/canbus/f0;->k:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_29

    const/16 v3, 0x1e

    .line 136
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_29
    const/16 v2, 0x1e

    .line 137
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 138
    :cond_2a
    :goto_c
    iput v1, v0, Lmodule/canbus/f0;->k:I

    goto/16 :goto_15

    .line 139
    :cond_2b
    iget v2, v0, Lmodule/canbus/f0;->j:I

    if-eq v1, v2, :cond_40

    if-le v1, v2, :cond_2d

    move v2, v7

    .line 140
    :goto_d
    iget v3, v0, Lmodule/canbus/f0;->j:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_2c

    .line 141
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 142
    :cond_2c
    invoke-static {v15, v8}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_2d
    if-ge v1, v2, :cond_2f

    move v2, v7

    .line 143
    :goto_e
    iget v3, v0, Lmodule/canbus/f0;->j:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2e

    const/16 v3, 0x8

    .line 144
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2e
    const/16 v3, 0x8

    .line 145
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    .line 146
    :cond_2f
    :goto_f
    iput v1, v0, Lmodule/canbus/f0;->j:I

    goto/16 :goto_15

    .line 147
    :cond_30
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    add-int/lit8 v2, p2, 0x2

    .line 148
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 149
    aget-byte v1, v1, v3

    and-int/lit16 v3, v2, 0xff

    or-int/lit16 v3, v3, 0x80

    .line 150
    iput v3, v0, Lmodule/canbus/f0;->g:I

    move v3, v7

    .line 151
    :goto_10
    iget-object v4, v0, Lmodule/canbus/f0;->l:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_32

    .line 152
    iget v5, v0, Lmodule/canbus/f0;->g:I

    aget-object v9, v4, v3

    aget v9, v9, v7

    if-ne v5, v9, :cond_31

    if-eqz v5, :cond_32

    .line 153
    iput v3, v0, Lmodule/canbus/f0;->h:I

    goto :goto_11

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_32
    :goto_11
    const/16 v5, 0x42

    if-eq v2, v5, :cond_35

    and-int/2addr v1, v6

    if-eqz v1, :cond_33

    .line 154
    array-length v1, v4

    if-ge v3, v1, :cond_40

    .line 155
    aget-object v1, v4, v3

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 156
    :cond_33
    iget v1, v0, Lmodule/canbus/f0;->h:I

    array-length v2, v4

    if-ge v1, v2, :cond_34

    if-eq v1, v6, :cond_34

    .line 157
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 158
    :cond_34
    iput v6, v0, Lmodule/canbus/f0;->h:I

    goto/16 :goto_15

    .line 159
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/f0;->z3()V

    goto/16 :goto_15

    :cond_36
    const/16 v2, 0x8d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 160
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 161
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 162
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 163
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 164
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_37
    const/16 v2, 0xd

    add-int/lit8 v2, p2, 0xd

    .line 165
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    if-nez v1, :cond_38

    .line 166
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_15

    :cond_38
    const-string v2, "persist.fyt.temperature"

    .line 167
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_39

    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    const/4 v2, -0x1

    and-int/2addr v1, v2

    goto :goto_12

    :cond_39
    mul-int/2addr v1, v9

    add-int/lit16 v1, v1, 0x258

    .line 168
    :goto_12
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_15

    :cond_3a
    add-int/lit8 v2, p2, 0x3

    .line 169
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 170
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3b

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 171
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 172
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_3b
    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 173
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 174
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_13
    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 175
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 176
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 177
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    aput v2, v3, v7

    .line 178
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xa

    .line 179
    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_3d

    .line 180
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string v2, "com.syu.fourcamera2"

    .line 181
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 182
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v3, 0x266

    invoke-virtual {v2, v3}, Lc/e;->c(I)Z

    goto :goto_14

    .line 183
    :cond_3c
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v3, 0x24e

    invoke-virtual {v2, v3}, Lc/e;->c(I)Z

    :cond_3d
    :goto_14
    add-int/lit8 v2, p2, 0x9

    .line 184
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_15

    :cond_3e
    const/16 v3, 0x8

    const/16 v2, 0x85

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 185
    aget-byte v5, v1, v5

    shl-int/2addr v5, v3

    const v3, 0xff00

    and-int/2addr v5, v3

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 186
    aget-byte v5, v1, v5

    const/16 v9, 0x8

    shl-int/2addr v5, v9

    and-int/2addr v5, v3

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 187
    aget-byte v5, v1, v5

    const/16 v9, 0x8

    shl-int/2addr v5, v9

    and-int/2addr v5, v3

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 188
    aget-byte v5, v1, v5

    const/16 v9, 0x8

    shl-int/2addr v5, v9

    and-int/2addr v5, v3

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0xa

    .line 189
    aget-byte v5, v1, v5

    const/16 v9, 0x8

    shl-int/2addr v5, v9

    and-int/2addr v5, v3

    add-int/lit8 v9, p2, 0xb

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0xc

    .line 190
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0xd

    .line 191
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x10

    .line 192
    aget-byte v5, v1, v5

    const/16 v8, 0x8

    shl-int/2addr v5, v8

    and-int/2addr v3, v5

    add-int/lit8 v5, p2, 0x11

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    .line 193
    :cond_3f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_40
    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch -0x7f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/f0;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/f0;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/f0;->n:Lo1/o;

    sput-object v0, Lo1/u;->b:Lo1/o;

    .line 4
    iget-object v0, p0, Lmodule/canbus/f0;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/f0;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/f0;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x92

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
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x9

    const/4 v6, 0x6

    const/16 v8, 0xe3

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v1, :cond_6

    if-eq v1, v11, :cond_5

    if-eq v1, v12, :cond_4

    if-eq v1, v10, :cond_3

    if-eq v1, v9, :cond_2

    const/16 v14, 0x24

    if-eq v1, v14, :cond_1

    const/16 v14, 0x405

    if-eq v1, v14, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    aget v1, v2, v11

    mul-int/lit16 v1, v1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v14

    div-int/2addr v1, v14

    .line 2
    aget v14, v2, v12

    mul-int/lit16 v14, v14, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v15

    div-int/2addr v14, v15

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v15

    sget-object v5, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touch_state = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v13

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "__touch_x = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "__touch_y =="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "__ObjApp.getHeight()"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/f;->i()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v5, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2, v12}, Lk0/lt;->T2([II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5
    aget v2, v2, v13

    if-nez v2, :cond_9

    new-array v2, v3, [I

    aput v8, v2, v13

    aput v6, v2, v11

    const/16 v3, 0x2c

    aput v3, v2, v12

    aput v11, v2, v10

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v9

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x5

    aput v1, v2, v3

    shr-int/lit8 v1, v14, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v6

    and-int/lit16 v1, v14, 0xff

    const/4 v3, 0x7

    aput v1, v2, v3

    const/16 v1, 0x8

    aput v13, v2, v1

    .line 6
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x7

    new-array v1, v3, [I

    aput v8, v1, v13

    aput v9, v1, v11

    const/16 v3, 0x5f

    aput v3, v1, v12

    .line 7
    aget v3, v2, v13

    aput v3, v1, v10

    aget v3, v2, v11

    aput v3, v1, v9

    aget v3, v2, v12

    const/4 v4, 0x5

    aput v3, v1, v4

    aget v2, v2, v10

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x5

    .line 8
    invoke-static {v2, v11}, Lk0/qt;->l0([II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9
    iput v13, v0, Lmodule/canbus/f0;->q:I

    new-array v1, v4, [I

    aput v8, v1, v13

    aput v12, v1, v11

    const/16 v3, 0xf0

    aput v3, v1, v12

    .line 10
    aget v3, v2, v13

    aput v3, v1, v10

    aget v2, v2, v11

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 11
    :cond_3
    invoke-static {v2, v11}, Lk0/qt;->l0([II)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v8, v1, v13

    aput v12, v1, v11

    const/16 v3, 0xf3

    aput v3, v1, v12

    aput v11, v1, v10

    .line 12
    aget v2, v2, v13

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 13
    :cond_4
    invoke-static {v2, v12}, Lk0/qt;->l0([II)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v8, v1, v13

    aput v12, v1, v11

    const/16 v3, 0xf1

    aput v3, v1, v12

    .line 14
    aget v3, v2, v13

    aput v3, v1, v10

    aget v2, v2, v11

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-static {v2, v12}, Lk0/qt;->l0([II)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v8, v1, v13

    aput v12, v1, v11

    const/16 v3, 0xf2

    aput v3, v1, v12

    .line 16
    aget v3, v2, v13

    aput v3, v1, v10

    aget v2, v2, v11

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 17
    :cond_6
    invoke-static {v2, v11}, Lk0/qt;->l0([II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    iput v6, v0, Lmodule/canbus/f0;->s:I

    .line 19
    sget v1, Lk0/nt;->c:I

    if-eq v1, v6, :cond_8

    const/4 v4, 0x7

    if-eq v1, v4, :cond_8

    const/16 v4, 0x8

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_8

    const/16 v3, 0xa

    if-eq v1, v3, :cond_8

    if-eq v1, v9, :cond_8

    if-ne v1, v10, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v8, v1, v13

    aput v12, v1, v11

    const/16 v3, 0xe0

    aput v3, v1, v12

    .line 20
    aget v2, v2, v13

    aput v2, v1, v10

    aput v13, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v8, v1, v13

    aput v12, v1, v11

    const/16 v3, 0xe1

    aput v3, v1, v12

    .line 21
    aget v2, v2, v13

    aput v2, v1, v10

    aput v13, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lmodule/canbus/f0;->J:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/f0;->E:I

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/f0;->L:Lo1/f;

    new-instance v1, Lmodule/canbus/f0$i;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/f0$i;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/f0$i;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/f0$i;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/f0$i;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/f0$i;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final w3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/f0;->Z2(I)V

    .line 2
    invoke-virtual {p0}, Lmodule/canbus/f0;->C3()V

    .line 3
    invoke-virtual {p0}, Lmodule/canbus/f0;->A3()V

    return-void
.end method

.method public final x3()V
    .locals 3

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Lmodule/canbus/f0;->s:I

    .line 2
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.wc.crown.wc_420_crown_AirControlAct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lmodule/canbus/f0;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final y3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.wc.crown.Wc_420_crown_CarCD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final z3()V
    .locals 3

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Lmodule/canbus/f0;->q:I

    .line 2
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.wc.crown.wc_420_crown_AmpSetAct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lmodule/canbus/f0;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
