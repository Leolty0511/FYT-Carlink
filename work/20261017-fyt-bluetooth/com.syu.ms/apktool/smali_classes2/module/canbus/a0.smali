.class public Lmodule/canbus/a0;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/a0$d;
    }
.end annotation


# static fields
.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static final w:[I

.field public static final x:[I

.field public static final y:[I

.field public static final z:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/a0$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:I

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/a0;->w:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/a0;->x:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/a0;->y:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/a0;->z:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
        0x12
        0x14
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xe
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/a0;->c:I

    const/16 v1, 0x18

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

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/a0;->d:[[I

    .line 4
    new-instance v1, Lmodule/canbus/a0$a;

    invoke-direct {v1, p0}, Lmodule/canbus/a0$a;-><init>(Lmodule/canbus/a0;)V

    iput-object v1, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lmodule/canbus/a0$b;

    invoke-direct {v1, p0}, Lmodule/canbus/a0$b;-><init>(Lmodule/canbus/a0;)V

    iput-object v1, p0, Lmodule/canbus/a0;->f:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 6
    iput v1, p0, Lmodule/canbus/a0;->g:I

    .line 7
    new-instance v1, Lmodule/canbus/a0$c;

    invoke-direct {v1, p0}, Lmodule/canbus/a0$c;-><init>(Lmodule/canbus/a0;)V

    iput-object v1, p0, Lmodule/canbus/a0;->h:Ljava/lang/Runnable;

    .line 8
    iput v0, p0, Lmodule/canbus/a0;->i:I

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
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x81
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x82
        0x36
    .end array-data

    :array_a
    .array-data 4
        0x83
        0x12
    .end array-data

    :array_b
    .array-data 4
        0x84
        0x44
    .end array-data

    :array_c
    .array-data 4
        0x85
        0x43
    .end array-data

    :array_d
    .array-data 4
        0x86
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x87
        0x26
    .end array-data

    :array_f
    .array-data 4
        0x88
        0x5
    .end array-data

    :array_10
    .array-data 4
        0x89
        0x10
    .end array-data

    :array_11
    .array-data 4
        0x8a
        0x19
    .end array-data

    :array_12
    .array-data 4
        0x8b
        0x2
    .end array-data

    :array_13
    .array-data 4
        0x8c
        0xc
    .end array-data

    :array_14
    .array-data 4
        0x8d
        0x3
    .end array-data

    :array_15
    .array-data 4
        0x8e
        0x4
    .end array-data

    :array_16
    .array-data 4
        0x91
        0x23
    .end array-data

    :array_17
    .array-data 4
        0x92
        0x22
    .end array-data
.end method

.method public static synthetic A3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/a0;->m:I

    return p0
.end method

.method public static synthetic B3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->p:I

    return v0
.end method

.method public static C3(IIIIIII)V
    .locals 7

    .line 1
    sget-object v0, Lmodule/canbus/a0;->z:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lmodule/canbus/a0$d;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lmodule/canbus/a0$d;->a(IIIIII)V

    :cond_0
    return-void
.end method

.method public static synthetic a3(Lmodule/canbus/a0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/a0;->j:I

    return p0
.end method

.method public static synthetic access$1700()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->t:I

    return v0
.end method

.method public static synthetic b3(Lmodule/canbus/a0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/a0;->j:I

    return p1
.end method

.method public static synthetic c3(Lmodule/canbus/a0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/a0;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/a0;->j:I

    return v0
.end method

.method public static synthetic d3(Lmodule/canbus/a0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/a0;->D3()V

    return-void
.end method

.method public static synthetic e3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->n:I

    return v0
.end method

.method public static synthetic f3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/a0;->n:I

    return p0
.end method

.method public static synthetic g3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->q:I

    return v0
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->o:I

    return v0
.end method

.method public static synthetic i3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/a0;->o:I

    return p0
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->r:I

    return v0
.end method

.method public static synthetic k3(Lmodule/canbus/a0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/a0;->E3()V

    return-void
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->s:I

    return v0
.end method

.method public static synthetic m3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/a0;->s:I

    return p0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->u:I

    return v0
.end method

.method public static synthetic o3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/a0;->t:I

    return p0
.end method

.method public static synthetic p3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->v:I

    return v0
.end method

.method public static synthetic q3(Lmodule/canbus/a0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/a0;->g:I

    return p0
.end method

.method public static synthetic r3(Lmodule/canbus/a0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/a0;->i:I

    return p0
.end method

.method public static synthetic s3(Lmodule/canbus/a0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/a0;->i:I

    return p1
.end method

.method public static synthetic t3(Lmodule/canbus/a0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/a0;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/a0;->i:I

    return v0
.end method

.method public static synthetic u3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->l:I

    return v0
.end method

.method public static synthetic v3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/a0;->l:I

    return p0
.end method

.method public static synthetic w3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/a0;->w:[I

    return-object v0
.end method

.method public static synthetic x3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->k:I

    return v0
.end method

.method public static synthetic y3(Lmodule/canbus/a0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/a0;->F3()V

    return-void
.end method

.method public static synthetic z3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a0;->m:I

    return v0
.end method


# virtual methods
.method public final D3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/a0;->F3()V

    .line 2
    invoke-virtual {p0}, Lmodule/canbus/a0;->E3()V

    return-void
.end method

.method public final declared-synchronized E3()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_1
    sget v2, Lmodule/canbus/a0;->l:I

    sget v3, Lmodule/canbus/a0;->v:I

    sget v4, Lmodule/canbus/a0;->u:I

    sget v5, Lmodule/canbus/a0;->r:I

    sget v6, Lmodule/canbus/a0;->q:I

    sget v7, Lmodule/canbus/a0;->p:I

    invoke-static/range {v1 .. v7}, Lmodule/canbus/a0;->C3(IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized F3()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/a0;->k:I

    sget v1, Lmodule/canbus/a0;->l:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3
    sput v0, Lmodule/canbus/a0;->k:I

    .line 4
    iput v2, p0, Lmodule/canbus/a0;->j:I

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 5
    sput v0, Lmodule/canbus/a0;->k:I

    .line 6
    iput v2, p0, Lmodule/canbus/a0;->j:I

    goto :goto_0

    .line 7
    :cond_2
    sput v1, Lmodule/canbus/a0;->k:I

    :goto_0
    const/4 v1, 0x1

    .line 8
    sget v2, Lmodule/canbus/a0;->k:I

    sget v3, Lmodule/canbus/a0;->v:I

    sget v4, Lmodule/canbus/a0;->u:I

    sget v5, Lmodule/canbus/a0;->r:I

    sget v6, Lmodule/canbus/a0;->q:I

    sget v7, Lmodule/canbus/a0;->p:I

    invoke-static/range {v1 .. v7}, Lmodule/canbus/a0;->C3(IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
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

.method public P2([I)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/a0;->x:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/a0;->p:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/a0;->q:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/a0;->r:I

    :cond_0
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
    sget-object p1, Lmodule/canbus/a0;->y:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/a0;->u:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/a0;->v:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    sget v0, Lk0/nt;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->b:I

    .line 11
    iput v1, v0, Lk0/mt;->c:I

    .line 12
    iput v1, v0, Lk0/mt;->d:I

    .line 13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lmodule/canbus/a0;->init()V

    .line 15
    iget-object v0, p0, Lmodule/canbus/a0;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public U2([BII)V
    .locals 4

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_c

    if-eq p3, v0, :cond_7

    const/4 v3, 0x4

    if-eq p3, v3, :cond_6

    const/4 v3, 0x5

    if-eq p3, v3, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_10

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/2addr p2, v0

    .line 4
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 5
    iput p2, p0, Lmodule/canbus/a0;->c:I

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    and-int/lit16 p1, p1, 0xff

    .line 6
    invoke-static {p1}, Ll0/b0;->r0(I)V

    goto/16 :goto_6

    :cond_1
    const/16 v0, 0xf

    if-ne p2, v0, :cond_2

    and-int/lit16 p1, p1, 0xff

    .line 7
    invoke-static {p1}, Ll0/b0;->s0(I)V

    goto/16 :goto_6

    :cond_2
    or-int/lit16 p2, p3, 0x80

    and-int/lit16 p2, p2, 0xff

    .line 8
    iput p2, p0, Lmodule/canbus/a0;->c:I

    move p2, v1

    .line 9
    :goto_0
    iget-object p3, p0, Lmodule/canbus/a0;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_4

    .line 10
    iget v0, p0, Lmodule/canbus/a0;->c:I

    aget-object v3, p3, p2

    aget v3, v3, v1

    if-ne v0, v3, :cond_3

    if-eqz v0, :cond_4

    .line 11
    iput p2, p0, Lmodule/canbus/a0;->b:I

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_5

    .line 12
    array-length p1, p3

    if-ge p2, p1, :cond_10

    .line 13
    aget-object p1, p3, p2

    aget p1, p1, v2

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 14
    :cond_5
    array-length p1, p3

    if-gt p2, p1, :cond_10

    .line 15
    iget p1, p0, Lmodule/canbus/a0;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 16
    :cond_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_10

    add-int/lit8 p3, p2, 0x2

    .line 17
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->Y0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 18
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->Y0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 19
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->Y0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 20
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->Y0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 21
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->Y0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 22
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->Y0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 23
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->Y0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 24
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ll0/c0;->Y0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    .line 25
    :cond_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_10

    add-int/lit8 p3, p2, 0x2

    .line 26
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x6

    .line 27
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p3, 0xff

    const/16 p3, 0x52

    if-ge p1, p3, :cond_8

    move v1, v2

    goto :goto_2

    :cond_8
    if-lt p1, p3, :cond_9

    goto :goto_2

    :cond_9
    move v1, p1

    :goto_2
    if-eqz v1, :cond_a

    const/4 p1, 0x2

    if-lt p2, p1, :cond_b

    .line 28
    div-int/lit8 p1, p2, 0x2

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0xa

    rem-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p1, p2

    rsub-int p1, p1, 0x190

    rsub-int p2, p1, 0x3e8

    goto :goto_3

    :cond_a
    add-int/lit8 p2, p2, -0x52

    const/16 p1, 0xa0

    if-gt p2, p1, :cond_b

    .line 29
    div-int/lit8 p1, p2, 0x2

    mul-int/lit8 p1, p1, 0xa

    rem-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p1, p2

    add-int/lit16 p2, p1, 0x3e8

    .line 30
    :cond_b
    :goto_3
    invoke-static {p2}, Lu0/d;->A3(I)V

    goto :goto_6

    .line 31
    :cond_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_10

    add-int/lit8 p3, p2, 0x2

    .line 32
    aget-byte p3, p1, p3

    add-int/2addr p2, v0

    .line 33
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 34
    iput p2, p0, Lmodule/canbus/a0;->c:I

    move p2, v1

    .line 35
    :goto_4
    iget-object p3, p0, Lmodule/canbus/a0;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_e

    .line 36
    iget v0, p0, Lmodule/canbus/a0;->c:I

    aget-object v3, p3, p2

    aget v3, v3, v1

    if-ne v0, v3, :cond_d

    if-eqz v0, :cond_e

    .line 37
    iput p2, p0, Lmodule/canbus/a0;->b:I

    goto :goto_5

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_f

    .line 38
    array-length p1, p3

    if-ge p2, p1, :cond_10

    .line 39
    aget-object p1, p3, p2

    aget p1, p1, v2

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 40
    :cond_f
    array-length p1, p3

    if-gt p2, p1, :cond_10

    .line 41
    iget p1, p0, Lmodule/canbus/a0;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    :cond_10
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/a0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/a0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/a0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lmodule/canbus/a0;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

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
    sget-object v0, Lmodule/canbus/a0;->w:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/a0;->l:I

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/a0;->z:Lo1/f;

    new-instance v1, Lmodule/canbus/a0$d;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/a0$d;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
