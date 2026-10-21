.class public Lf1/n;
.super Lf1/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/n$d;,
        Lf1/n$e;
    }
.end annotation


# static fields
.field public static p0:Ljava/lang/String; = "timing_start"

.field public static q0:Ljava/lang/String; = "value_926"

.field public static r0:Ljava/lang/String; = "value_8002_"

.field public static s0:I

.field public static t0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lf1/n$e;",
            "Ljava/util/LinkedList<",
            "Lf1/n$d;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final P:Z

.field public Q:Z

.field public R:Z

.field public S:Lf1/q$c;

.field public T:I

.field public U:I

.field public V:Lq1/b;

.field public W:Lo1/l0;

.field public X:Lo1/l0;

.field public final Y:Ljava/lang/Object;

.field public Z:I

.field public a0:Landroid/content/SharedPreferences;

.field public b0:Ljava/lang/Runnable;

.field public c0:Z

.field public d0:I

.field public e0:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lf1/n$d;",
            ">;"
        }
    .end annotation
.end field

.field public f0:Lf1/n$e;

.field public g0:Ljava/lang/Runnable;

.field public final h0:Ljava/lang/Runnable;

.field public i0:[I

.field public final j0:Lf1/n$d;

.field public k0:Lf1/n$d;

.field public l0:Lf1/n$d;

.field public m0:[I

.field public n0:I

.field public o0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lf1/n;->d0([I)V

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    const/4 v2, -0x1

    const/16 v3, 0xb2

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Lf1/n;->e0([IIII)V

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    invoke-static {v1}, Lf1/n;->d0([I)V

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_3

    invoke-static {v1}, Lf1/n;->d0([I)V

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_4

    const/16 v3, 0x47

    const/16 v4, 0x50

    invoke-static {v1, v2, v3, v0, v4}, Lf1/n;->f0([IIIII)V

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_5

    const/16 v3, 0xc

    invoke-static {v1, v2, v2, v3}, Lf1/n;->e0([IIII)V

    new-array v1, v0, [I

    .line 7
    fill-array-data v1, :array_6

    const/16 v4, 0x72

    const/16 v5, 0x13

    invoke-static {v1, v2, v4, v5}, Lf1/n;->e0([IIII)V

    new-array v9, v0, [I

    .line 8
    fill-array-data v9, :array_7

    const/16 v6, 0x420

    const/16 v7, 0x20d

    const/16 v8, 0x80

    const/4 v10, -0x1

    const/16 v11, 0x28

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static/range {v6 .. v14}, Lf1/n;->c0(III[IIIIII)V

    new-array v1, v0, [I

    .line 9
    fill-array-data v1, :array_8

    invoke-static {v1}, Lf1/n;->d0([I)V

    new-array v1, v0, [I

    .line 10
    fill-array-data v1, :array_9

    const/16 v4, 0xf

    invoke-static {v1, v2, v2, v4}, Lf1/n;->e0([IIII)V

    new-array v1, v0, [I

    .line 11
    fill-array-data v1, :array_a

    const/16 v4, 0xb

    invoke-static {v1, v2, v2, v4}, Lf1/n;->e0([IIII)V

    new-array v1, v0, [I

    .line 12
    fill-array-data v1, :array_b

    const/16 v4, 0xe

    invoke-static {v1, v2, v2, v4}, Lf1/n;->e0([IIII)V

    new-array v1, v0, [I

    .line 13
    fill-array-data v1, :array_c

    invoke-static {v1, v2, v2, v4}, Lf1/n;->e0([IIII)V

    new-array v1, v0, [I

    .line 14
    fill-array-data v1, :array_d

    const/16 v4, 0x1a

    invoke-static {v1, v2, v2, v4}, Lf1/n;->e0([IIII)V

    new-array v1, v0, [I

    .line 15
    fill-array-data v1, :array_e

    invoke-static {v1, v2, v2, v0}, Lf1/n;->e0([IIII)V

    new-array v1, v0, [I

    .line 16
    fill-array-data v1, :array_f

    invoke-static {v1, v2, v2, v3}, Lf1/n;->e0([IIII)V

    new-array v1, v0, [I

    .line 17
    fill-array-data v1, :array_10

    invoke-static {v1, v2, v2, v3}, Lf1/n;->e0([IIII)V

    new-array v4, v0, [I

    .line 18
    fill-array-data v4, :array_11

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x19

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lf1/n;->g0([IIIIII)V

    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_12

    const/16 v1, 0x16

    invoke-static {v0, v2, v2, v1}, Lf1/n;->e0([IIII)V

    return-void

    :array_0
    .array-data 4
        0x7d
        0x2
        0x82
        0x320
        0x421
        0x2b
        0x1
        0x2
        0x1e0
        0x20e
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x46
        0xb9
        0x320
        0x421
        0x2c
        0x1
        0x1
        0x1e0
        0x20e
    .end array-data

    :array_2
    .array-data 4
        0xa8
        0x14
        0x44
        0x320
        0x420
        0x20
        0x2
        0xb
        0x1e0
        0x20d
    .end array-data

    :array_3
    .array-data 4
        0xea
        0x14
        0x2
        0x320
        0x420
        0x19
        0x2
        0x12
        0x1e0
        0x20d
    .end array-data

    :array_4
    .array-data 4
        0xea
        0x14
        0x2
        0x320
        0x420
        0xf
        0x2
        0x1c
        0x1e0
        0x20d
    .end array-data

    :array_5
    .array-data 4
        0x7b
        0x5
        0x80
        0x320
        0x420
        0x13
        0x5
        0x15
        0x1e0
        0x20d
    .end array-data

    :array_6
    .array-data 4
        0x20
        0x5
        0x8
        0x500
        0x52e
        0x14
        0x2
        0x1
        0x21c
        0x233
    .end array-data

    :array_7
    .array-data 4
        0xaa
        0x50
        0x6
        0x320
        0x420
        0xb
        0x2
        0x20
        0x1e0
        0x20d
    .end array-data

    :array_8
    .array-data 4
        0x1a
        0x3
        0x1f
        0x320
        0x35c
        0x1a
        0x3
        0x2
        0x1e0
        0x201
    .end array-data

    :array_9
    .array-data 4
        0x8d
        0x3
        0x2a
        0x320
        0x3da
        0x42
        0x3
        0x4c
        0x1e0
        0x272
    .end array-data

    :array_a
    .array-data 4
        0x144
        0xa
        0x26
        0x320
        0x49a
        0x10
        0x4
        0x16
        0x1e0
        0x20c
    .end array-data

    :array_b
    .array-data 4
        0x8f
        0x5
        0x26
        0x320
        0x3da
        0x46
        0x4
        0x44
        0x1e0
        0x26e
    .end array-data

    :array_c
    .array-data 4
        0x8d
        0x5
        0x26
        0x320
        0x3d8
        0x46
        0x4
        0x44
        0x1e0
        0x26e
    .end array-data

    :array_d
    .array-data 4
        0xb2
        0x8
        0x2
        0x500
        0x5bc
        0xb
        0x2
        0x3
        0x300
        0x310
    .end array-data

    :array_e
    .array-data 4
        0x76
        0x2
        0x88
        0x320
        0x420
        0x28
        0x1
        0x4
        0x1e0
        0x20d
    .end array-data

    :array_f
    .array-data 4
        0x22
        0x54
        0x64
        0x320
        0x3fa
        0x20
        0x3
        0x1f
        0x1e0
        0x222
    .end array-data

    :array_10
    .array-data 4
        0x22
        0x54
        0x64
        0x320
        0x3fa
        0x20
        0x3
        0x1f
        0x1e0
        0x224
    .end array-data

    :array_11
    .array-data 4
        0x14
        0xa
        0x28
        0x780
        0x7c6
        0xc
        0x2
        0x2b
        0x438
        0x471
    .end array-data

    :array_12
    .array-data 4
        0x20
        0xc
        0xa
        0x2d0
        0x306
        0x3
        0x4
        0x9
        0x780
        0x790
    .end array-data
.end method

.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 8

    const/16 v1, 0xf

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/q;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf1/n;->P:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lf1/n;->Q:Z

    .line 4
    iput-boolean p1, p0, Lf1/n;->R:Z

    .line 5
    new-instance p2, Lf1/q$c;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Lf1/q$c;-><init>(II)V

    iput-object p2, p0, Lf1/n;->S:Lf1/q$c;

    .line 6
    iput p3, p0, Lf1/n;->T:I

    iput p3, p0, Lf1/n;->U:I

    .line 7
    new-instance p2, Lq1/b;

    const/4 p4, 0x3

    invoke-direct {p2, p3, p4}, Lq1/b;-><init>(II)V

    iput-object p2, p0, Lf1/n;->V:Lq1/b;

    .line 8
    new-instance p2, Lo1/l0;

    invoke-direct {p2}, Lo1/l0;-><init>()V

    iput-object p2, p0, Lf1/n;->W:Lo1/l0;

    .line 9
    new-instance p2, Lo1/l0;

    invoke-direct {p2}, Lo1/l0;-><init>()V

    iput-object p2, p0, Lf1/n;->X:Lo1/l0;

    .line 10
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf1/n;->Y:Ljava/lang/Object;

    .line 11
    iput p3, p0, Lf1/n;->Z:I

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lf1/n;->a0:Landroid/content/SharedPreferences;

    .line 13
    iput-boolean p1, p0, Lf1/n;->c0:Z

    .line 14
    iput p1, p0, Lf1/n;->d0:I

    .line 15
    iput-object p2, p0, Lf1/n;->e0:Ljava/util/LinkedList;

    .line 16
    iput-object p2, p0, Lf1/n;->f0:Lf1/n$e;

    .line 17
    new-instance p4, Lf1/n$a;

    invoke-direct {p4, p0}, Lf1/n$a;-><init>(Lf1/n;)V

    iput-object p4, p0, Lf1/n;->g0:Ljava/lang/Runnable;

    .line 18
    new-instance p4, Lf1/n$b;

    invoke-direct {p4, p0}, Lf1/n$b;-><init>(Lf1/n;)V

    iput-object p4, p0, Lf1/n;->h0:Ljava/lang/Runnable;

    const/16 p4, 0xa

    new-array v0, p4, [I

    .line 19
    fill-array-data v0, :array_0

    iput-object v0, p0, Lf1/n;->i0:[I

    .line 20
    new-instance v0, Lf1/n$d;

    new-array v2, p4, [I

    fill-array-data v2, :array_1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lf1/n$d;-><init>([IIIIII)V

    iput-object v0, p0, Lf1/n;->j0:Lf1/n$d;

    .line 21
    iput-object p2, p0, Lf1/n;->k0:Lf1/n$d;

    .line 22
    iput-object p2, p0, Lf1/n;->l0:Lf1/n$d;

    .line 23
    iput-object p2, p0, Lf1/n;->m0:[I

    .line 24
    iput p1, p0, Lf1/n;->n0:I

    .line 25
    iput p3, p0, Lf1/n;->o0:I

    .line 26
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p2

    const-string p4, "Chip8918P"

    invoke-virtual {p2, p4, p1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->a0:Landroid/content/SharedPreferences;

    .line 27
    sget-object p2, Lf1/n;->q0:Ljava/lang/String;

    const-string p4, "sys.c926.mode"

    invoke-static {p4, p3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p4

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lf1/n;->Z:I

    .line 28
    iget-object p1, p0, Lf1/n;->a0:Landroid/content/SharedPreferences;

    sget-object p2, Lf1/n;->p0:Ljava/lang/String;

    const-string p4, "sys.chip8918p.timing_index"

    invoke-static {p4, p3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lf1/n;->n0:I

    return-void

    :array_0
    .array-data 4
        0x1a
        0x3
        0x1f
        0x320
        0x35c
        0x1a
        0x3
        0x2
        0x1e0
        0x201
    .end array-data

    :array_1
    .array-data 4
        0x1a
        0x3
        0x1f
        0x320
        0x35c
        0x1a
        0x3
        0x2
        0x1e0
        0x201
    .end array-data
.end method

.method public static synthetic X(Lf1/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf1/n;->c0:Z

    return p0
.end method

.method public static synthetic Y(Lf1/n;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf1/n;->c0:Z

    return p1
.end method

.method public static synthetic Z(Lf1/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lf1/n;->d0:I

    return p0
.end method

.method public static synthetic a0(Lf1/n;)I
    .locals 2

    .line 1
    iget v0, p0, Lf1/n;->d0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lf1/n;->d0:I

    return v0
.end method

.method public static synthetic b0(Lf1/n;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/n;->n0(Z)V

    return-void
.end method

.method public static c0(III[IIIIII)V
    .locals 8

    .line 1
    new-instance v7, Lf1/n$d;

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lf1/n$d;-><init>([IIIIII)V

    .line 2
    new-instance v0, Lf1/n$e;

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct {v0, p0, p1, p2}, Lf1/n$e;-><init>(III)V

    invoke-virtual {v7, v0}, Lf1/n$d;->b(Lf1/n$e;)V

    .line 3
    invoke-static {v7}, Lf1/n;->o0(Lf1/n$d;)V

    return-void
.end method

.method public static d0([I)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, v0, v0, v0}, Lf1/n;->e0([IIII)V

    return-void
.end method

.method public static e0([IIII)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lf1/n;->f0([IIIII)V

    return-void
.end method

.method public static f0([IIIII)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lf1/n;->g0([IIIIII)V

    return-void
.end method

.method public static g0([IIIIII)V
    .locals 8

    .line 1
    new-instance v7, Lf1/n$d;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lf1/n$d;-><init>([IIIIII)V

    .line 2
    invoke-static {v7}, Lf1/n;->o0(Lf1/n$d;)V

    return-void
.end method

.method public static declared-synchronized o0(Lf1/n$d;)V
    .locals 3

    const-class v0, Lf1/n;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf1/n;->t0:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lf1/n;->t0:Ljava/util/HashMap;

    .line 3
    :cond_0
    sget-object v1, Lf1/n;->t0:Ljava/util/HashMap;

    iget-object v2, p0, Lf1/n$d;->g:Lf1/n$e;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 6
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v2, Lf1/n;->t0:Ljava/util/HashMap;

    iget-object p0, p0, Lf1/n$d;->g:Lf1/n$e;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "Chip8918P"

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==== timingMap size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lf1/n;->t0:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final A0(I)Z
    .locals 7

    const/16 v0, 0x2c

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lf1/q;->W(III)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 2
    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lf1/q;->W(III)I

    move-result v5

    if-lez v5, :cond_1

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 3
    :goto_1
    invoke-virtual {p0, v0, v2}, Lf1/q;->B(II)I

    move-result v5

    if-eq v5, p1, :cond_2

    const-wide/16 v5, 0x14

    .line 4
    invoke-static {v5, v6}, Lo1/s0;->C(J)V

    .line 5
    invoke-virtual {p0, v0, v2, p1}, Lf1/q;->W(III)I

    :cond_2
    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {p0, v0, v2}, Lf1/q;->B(II)I

    move-result v2

    if-ne v2, p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v4

    .line 7
    :goto_2
    invoke-virtual {p0, v0, v1, v1}, Lf1/q;->W(III)I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    return v1
.end method

.method public C(ILy/b;)Z
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0xae

    if-ne p1, v1, :cond_1

    .line 1
    iget-object v1, p0, Lf1/n;->a0:Landroid/content/SharedPreferences;

    sget-object v2, Lf1/n;->r0:Ljava/lang/String;

    sget v3, Lf1/n;->s0:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 2
    iget v4, p0, Lf1/q;->i:I

    aput v4, v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x4

    aput v5, v3, v4

    const/4 v6, 0x2

    aput v1, v3, v6

    invoke-static {p2, p1, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v1, v2, [I

    .line 3
    iget v3, p0, Lf1/q;->i:I

    aput v3, v1, v0

    aput v0, v1, v4

    iget v3, p0, Lf1/n;->Z:I

    aput v3, v1, v6

    invoke-static {p2, p1, v1}, Lo1/x;->v(Ly/b;I[I)V

    new-array v1, v5, [I

    .line 4
    iget v3, p0, Lf1/q;->i:I

    aput v3, v1, v0

    const/16 v3, 0x1f4

    aput v3, v1, v4

    iget v3, p0, Lf1/n;->n0:I

    aput v3, v1, v6

    iget-object v3, p0, Lf1/n;->e0:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    aput v0, v1, v2

    invoke-static {p2, p1, v1}, Lo1/x;->v(Ly/b;I[I)V

    return v4

    :cond_1
    return v0
.end method

.method public D()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lf1/q;->D()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> RESET  Waiting onUEvent START 1 chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8918P"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lf1/n;->T:I

    .line 5
    iput v0, p0, Lf1/n;->U:I

    .line 6
    iget v0, p0, Lf1/q;->h:I

    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============================>> RESET Waiting onUEvent END 1 chipid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public M()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> setup()  chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8918P"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lf1/n;->h0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lf1/n;->D()V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public U(Ly/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/n;->S:Lf1/q$c;

    const/16 v1, 0xad

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    invoke-static {p1, v1, v0}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, v0, Lf1/q$c;->a:I

    invoke-virtual {p0, v0, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    invoke-static {p1, v1, v0}, Lo1/x;->v(Ly/b;I[I)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==============================>> 02 update "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf1/n;->S:Lf1/q$c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " chipid : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf1/q;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chip8918P"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/n;->h0()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf1/n;->U:I

    .line 3
    iput v0, p0, Lf1/n;->T:I

    .line 4
    iget-object v1, p0, Lf1/n;->S:Lf1/q$c;

    iput v0, v1, Lf1/q$c;->a:I

    .line 5
    iput v0, v1, Lf1/q$c;->b:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lf1/n;->R:Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 03 update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/n;->S:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8918P"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lf1/n;->S:Lf1/q$c;

    iget v0, v0, Lf1/q$c;->a:I

    invoke-virtual {p0, v0, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    const/16 v1, 0xad

    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    .line 9
    invoke-super {p0}, Lf1/q;->a()V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lf1/q;->b()V

    return-void
.end method

.method public declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lf1/q;->c(I)V

    const-string v0, "Chip8918P"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============================>> 04 openVideo channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " loaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf1/q;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " chipid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lf1/q;->i:I

    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lf1/q;->i:I

    .line 5
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lf1/n;->h0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    iget-boolean p1, p0, Lf1/q;->r:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lf1/n;->Y:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget v0, p0, Lf1/n;->T:I

    if-lez v0, :cond_1

    iget v0, p0, Lf1/n;->U:I

    if-gtz v0, :cond_2

    .line 10
    :cond_1
    invoke-virtual {p0}, Lf1/n;->k0()V

    .line 11
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lf1/n;->D()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lf1/n;->h0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lf1/q;->d()V

    return-void
.end method

.method public h(IIII)V
    .locals 8

    const/4 p3, 0x3

    const/16 p4, 0xae

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    const/16 v4, 0x1f4

    if-eq p1, v4, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget p1, p0, Lf1/n;->n0:I

    if-eq p1, p2, :cond_6

    .line 2
    iget-object p1, p0, Lf1/n;->e0:Ljava/util/LinkedList;

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    :goto_0
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v5, -0x1

    .line 3
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lf1/n;->n0:I

    const/4 v5, 0x0

    .line 4
    iput-object v5, p0, Lf1/n;->l0:Lf1/n$d;

    .line 5
    iput-object v5, p0, Lf1/n;->k0:Lf1/n$d;

    .line 6
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7
    iget-object v5, p0, Lf1/n;->a0:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v6, Lf1/n;->p0:Ljava/lang/String;

    iget v7, p0, Lf1/n;->n0:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-array v2, v2, [I

    .line 8
    iget v5, p0, Lf1/q;->i:I

    aput v5, v2, v3

    aput v4, v2, v1

    aput p2, v2, v0

    aput p1, v2, p3

    invoke-static {p4, v2}, Lu0/d;->I3(I[I)V

    .line 9
    iget p1, p0, Lf1/n;->o0:I

    if-eq p1, p2, :cond_6

    .line 10
    iget-boolean p1, p0, Lf1/q;->r:Z

    if-eqz p1, :cond_6

    .line 11
    iget-object p1, p0, Lf1/n;->Y:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    iget p2, p0, Lf1/n;->T:I

    if-lez p2, :cond_2

    iget p2, p0, Lf1/n;->U:I

    if-gtz p2, :cond_3

    .line 13
    :cond_2
    invoke-virtual {p0}, Lf1/n;->k0()V

    .line 14
    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 15
    :cond_4
    iget-object p1, p0, Lf1/n;->a0:Landroid/content/SharedPreferences;

    sget-object v4, Lf1/n;->r0:Ljava/lang/String;

    sget v5, Lf1/n;->s0:I

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_6

    .line 16
    iget-object v4, p0, Lf1/n;->a0:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lf1/n;->r0:Ljava/lang/String;

    invoke-interface {v4, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-array p3, p3, [I

    .line 17
    iget v4, p0, Lf1/q;->i:I

    aput v4, p3, v3

    aput v2, p3, v1

    aput p2, p3, v0

    invoke-static {p4, p3}, Lu0/d;->I3(I[I)V

    .line 18
    iget-object p2, p0, Lf1/n;->Y:Ljava/lang/Object;

    monitor-enter p2

    const/16 p3, 0x80

    .line 19
    :try_start_1
    invoke-virtual {p0, p3}, Lf1/n;->z0(I)Z

    move-result p3

    const-string p4, "Chip8918P"

    const-string v2, "001 write 0x80 0x02 %02x"

    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    .line 21
    invoke-virtual {p0, v0, p1}, Lf1/q;->V(II)I

    move-result p1

    .line 22
    :cond_5
    monitor-exit p2

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method public h0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf1/n;->c0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf1/n;->c0:Z

    .line 3
    iget-object v0, p0, Lf1/n;->b0:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf1/n;->b0:Ljava/lang/Runnable;

    :cond_0
    const-string v0, "Chip8918P"

    const-string v1, "----- Polling task cancelled"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public i0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, 0x80

    .line 2
    invoke-virtual {p0, v0}, Lf1/n;->z0(I)Z

    const/16 v0, 0x20

    .line 3
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public j0()V
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x80

    .line 1
    invoke-virtual {v0, v1}, Lf1/n;->z0(I)Z

    const/16 v1, 0x38

    const/16 v2, 0x16

    .line 2
    invoke-virtual {v0, v1, v2}, Lf1/q;->V(II)I

    const/16 v1, 0x33

    const/16 v2, 0x9

    .line 3
    invoke-virtual {v0, v1, v2}, Lf1/q;->V(II)I

    const-wide/16 v1, 0xa

    .line 4
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    const/16 v1, 0x30

    .line 5
    invoke-virtual {v0, v1}, Lf1/q;->A(I)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0x31

    .line 6
    invoke-virtual {v0, v2}, Lf1/q;->A(I)I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0x32

    .line 7
    invoke-virtual {v0, v2}, Lf1/q;->A(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Reset READ fm_value : %d "

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Chip8918P"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x4e

    .line 9
    invoke-virtual {v0, v1}, Lf1/q;->A(I)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    const/16 v5, 0x4f

    .line 10
    invoke-virtual {v0, v5}, Lf1/q;->A(I)I

    move-result v5

    or-int/2addr v1, v5

    const/16 v5, 0x4c

    .line 11
    invoke-virtual {v0, v5}, Lf1/q;->A(I)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x8

    const/16 v6, 0x4d

    .line 12
    invoke-virtual {v0, v6}, Lf1/q;->A(I)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x52

    .line 13
    invoke-virtual {v0, v6}, Lf1/q;->A(I)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xfff

    const/16 v7, 0x53

    .line 14
    invoke-virtual {v0, v7}, Lf1/q;->A(I)I

    move-result v7

    or-int/2addr v6, v7

    const/16 v7, 0x50

    .line 15
    invoke-virtual {v0, v7}, Lf1/q;->A(I)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xfff

    const/16 v8, 0x51

    .line 16
    invoke-virtual {v0, v8}, Lf1/q;->A(I)I

    move-result v8

    or-int/2addr v7, v8

    const/16 v8, 0x44

    .line 17
    invoke-virtual {v0, v8}, Lf1/q;->A(I)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x8

    const/16 v9, 0x45

    .line 18
    invoke-virtual {v0, v9}, Lf1/q;->A(I)I

    move-result v9

    or-int/2addr v8, v9

    const/16 v9, 0x48

    .line 19
    invoke-virtual {v0, v9}, Lf1/q;->A(I)I

    move-result v9

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x8

    const/16 v10, 0x49

    .line 20
    invoke-virtual {v0, v10}, Lf1/q;->A(I)I

    move-result v10

    or-int/2addr v9, v10

    const/16 v10, 0x4a

    .line 21
    invoke-virtual {v0, v10}, Lf1/q;->A(I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v10, v10, 0x8

    const/16 v11, 0x4b

    .line 22
    invoke-virtual {v0, v11}, Lf1/q;->A(I)I

    move-result v11

    or-int/2addr v10, v11

    const/16 v11, 0x43

    .line 23
    invoke-virtual {v0, v11}, Lf1/q;->A(I)I

    move-result v11

    const/16 v12, 0x46

    .line 24
    invoke-virtual {v0, v12}, Lf1/q;->A(I)I

    move-result v12

    const/16 v13, 0x47

    .line 25
    invoke-virtual {v0, v13}, Lf1/q;->A(I)I

    move-result v13

    const/16 v14, 0x42

    .line 26
    invoke-virtual {v0, v14}, Lf1/q;->A(I)I

    move-result v14

    const/4 v15, 0x3

    new-array v2, v15, [Ljava/lang/Object;

    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x2

    aput-object v6, v2, v14

    const-string v6, "00 hactive : %d,  vactive : %d sync_polarity : %d "

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v15, [Ljava/lang/Object;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v14

    const-string v6, "00 htotal : %d,  vtotal : %d,  hsa : %d"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v14, [Ljava/lang/Object;

    .line 29
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v7

    const-string v6, "00 hfp : %d,  vfp : %d "

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v14, [Ljava/lang/Object;

    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v7

    const-string v6, "00 hsa : %d,  vsa : %d "

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v14, [Ljava/lang/Object;

    .line 31
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v7

    const-string v6, "00 hbp : %d,  vbp : %d "

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget v2, v0, Lf1/n;->n0:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lf1/n;->o0:I

    .line 33
    iget-object v2, v0, Lf1/n;->k0:Lf1/n$d;

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {v2, v1, v5, v8}, Lf1/n$d;->a(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    iget-object v2, v0, Lf1/n;->k0:Lf1/n$d;

    iput-object v2, v0, Lf1/n;->l0:Lf1/n$d;

    .line 36
    iput-object v6, v0, Lf1/n;->k0:Lf1/n$d;

    goto :goto_0

    .line 37
    :cond_0
    iput-object v6, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v7

    :goto_1
    if-eqz v2, :cond_5

    .line 38
    iget-object v2, v0, Lf1/n;->f0:Lf1/n$e;

    if-nez v2, :cond_2

    .line 39
    new-instance v2, Lf1/n$e;

    invoke-direct {v2, v1, v5, v8}, Lf1/n$e;-><init>(III)V

    iput-object v2, v0, Lf1/n;->f0:Lf1/n$e;

    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {v2, v1}, Lf1/n$e;->b(I)V

    .line 41
    iget-object v1, v0, Lf1/n;->f0:Lf1/n$e;

    invoke-virtual {v1, v5}, Lf1/n$e;->c(I)V

    .line 42
    iget-object v1, v0, Lf1/n;->f0:Lf1/n$e;

    invoke-virtual {v1, v8}, Lf1/n$e;->a(I)V

    .line 43
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Indexs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lf1/n;->t0:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v1, Lf1/n;->t0:Ljava/util/HashMap;

    iget-object v2, v0, Lf1/n;->f0:Lf1/n$e;

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    iput-object v1, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    if-nez v1, :cond_3

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lf1/n;->f0:Lf1/n$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "to mTimings is NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 46
    :cond_3
    iget v2, v0, Lf1/n;->o0:I

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v2, v1, :cond_4

    .line 47
    iput v4, v0, Lf1/n;->o0:I

    .line 48
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lf1/n;->f0:Lf1/n$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "to mTimings size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public k()I
    .locals 10

    .line 1
    iget-object v0, p0, Lf1/n;->V:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lf1/n;->W:Lo1/l0;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lo1/l0;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    iget-object v0, p0, Lf1/n;->W:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 4
    iget-object v0, p0, Lf1/n;->V:Lq1/b;

    invoke-virtual {p0}, Lf1/n;->i0()I

    move-result v3

    invoke-virtual {v0, v3}, Lq1/b;->g(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 5
    iget-boolean v3, p0, Lf1/n;->Q:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lf1/q;->i:I

    if-lez v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    .line 6
    :goto_2
    iget-object v4, p0, Lf1/n;->V:Lq1/b;

    invoke-virtual {v4}, Lq1/b;->e()Z

    move-result v4

    const/16 v5, 0xad

    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lf1/n;->T:I

    .line 8
    iput v0, p0, Lf1/n;->U:I

    .line 9
    iget-object v4, p0, Lf1/n;->S:Lf1/q$c;

    iput v0, v4, Lf1/q$c;->a:I

    .line 10
    iput v0, v4, Lf1/q$c;->b:I

    .line 11
    iput v0, p0, Lf1/q;->k:I

    .line 12
    invoke-virtual {p0, v0, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    .line 13
    :cond_5
    :goto_3
    iget-object v0, p0, Lf1/n;->X:Lo1/l0;

    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Lo1/l0;->c(I)Z

    move-result v0

    const-string v4, " chipid : "

    const-string v6, "Chip8918P"

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lf1/n;->X:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  CHECK SIGNAL : imagType :  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/q;->i:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " last  imagFormat :  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/q;->k:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  isHasSignal  : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lf1/n;->Q:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mSignalMarker: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lf1/n;->V:Lq1/b;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/q;->h:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v3, :cond_9

    .line 16
    iget-object v0, p0, Lf1/n;->S:Lf1/q$c;

    iget v7, v0, Lf1/q$c;->a:I

    iget v8, p0, Lf1/n;->T:I

    if-ne v7, v8, :cond_8

    iget v7, v0, Lf1/q$c;->b:I

    iget v9, p0, Lf1/n;->U:I

    if-eq v7, v9, :cond_7

    goto :goto_4

    .line 17
    :cond_7
    iget-boolean v0, p0, Lf1/n;->R:Z

    if-eqz v0, :cond_9

    .line 18
    iput-boolean v1, p0, Lf1/n;->R:Z

    .line 19
    new-instance v0, Lf1/q$c;

    invoke-direct {v0, v8, v9}, Lf1/q$c;-><init>(II)V

    .line 20
    iget-object v0, p0, Lf1/n;->a0:Landroid/content/SharedPreferences;

    sget-object v7, Lf1/n;->r0:Ljava/lang/String;

    sget v8, Lf1/n;->s0:I

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v7, 0xae

    const/4 v8, 0x3

    new-array v8, v8, [I

    .line 21
    iget v9, p0, Lf1/q;->i:I

    aput v9, v8, v1

    const/4 v1, 0x4

    aput v1, v8, v2

    const/4 v1, 0x2

    aput v0, v8, v1

    invoke-static {v7, v8}, Lu0/d;->I3(I[I)V

    .line 22
    iget-object v0, p0, Lf1/n;->S:Lf1/q$c;

    iget v1, v0, Lf1/q$c;->a:I

    iget v0, v0, Lf1/q$c;->b:I

    invoke-virtual {p0, v1, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 01 update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/n;->S:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 24
    :cond_8
    :goto_4
    iput v8, v0, Lf1/q$c;->a:I

    .line 25
    iget v1, p0, Lf1/n;->U:I

    iput v1, v0, Lf1/q$c;->b:I

    .line 26
    iput-boolean v2, p0, Lf1/n;->R:Z

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 00 SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/n;->S:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " videoWidth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/n;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/n;->U:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    return v3
.end method

.method public final k0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    const-string v1, "sys.c8918.w"

    .line 2
    invoke-static {v1, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lf1/n;->T:I

    const/16 v0, 0x1e0

    const-string v1, "sys.c8918.h"

    .line 3
    invoke-static {v1, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lf1/n;->U:I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf1/n;->q0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lf1/n;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lf1/n;->r0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 7
    :goto_1
    invoke-virtual {p0, v1}, Lf1/n;->p0(Z)V

    return-void
.end method

.method public l0(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public m0()Z
    .locals 5

    const-string v0, "Chip8918P"

    const-string v1, "----- init_LT8918L_State"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    const-string v2, "sys.c8918.w"

    .line 3
    invoke-static {v2, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lf1/n;->T:I

    const/16 v0, 0x1e0

    const-string v2, "sys.c8918.h"

    .line 4
    invoke-static {v2, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lf1/n;->U:I

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 5
    :cond_1
    iget v2, p0, Lf1/n;->Z:I

    if-lez v2, :cond_2

    invoke-virtual {p0, v2}, Lf1/n;->A0(I)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const-wide/16 v3, 0x32

    .line 6
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    .line 7
    :goto_1
    invoke-virtual {p0}, Lf1/n;->q0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0}, Lf1/n;->s0()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p0}, Lf1/n;->r0()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {p0}, Lf1/n;->t0()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    return v1
.end method

.method public final n0(Z)V
    .locals 2

    const-string v0, "Chip8918P"

    if-eqz p1, :cond_2

    const-string p1, "----- vdLT8918L_TX_DPHY_Logic_Reset"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/n;->u0()Z

    move-result p1

    const-string v1, "----- vdLT8918L_TxPll_Output_Config"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lf1/n;->w0()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lf1/n;->v0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lf1/n;->x0()Z

    goto :goto_2

    :cond_2
    const-string p1, "----- Polling failed after max attempts"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/n;->Y:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Lf1/n;->l0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lf1/n;->m0()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lf1/q;->H(Z)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p0(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf1/n;->c0:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf1/n;->d0:I

    .line 3
    new-instance v0, Lf1/n$c;

    invoke-direct {v0, p0, p1}, Lf1/n$c;-><init>(Lf1/n;Z)V

    iput-object v0, p0, Lf1/n;->b0:Ljava/lang/Runnable;

    .line 4
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public q([I)Z
    .locals 14

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    const-string v0, "Chip8918P"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushParams =============>> i2cInvalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->v:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lf1/q;->v:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    .line 5
    :try_start_0
    array-length v3, p1

    div-int/2addr v3, v1

    const-string v4, "Chip8918P"

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flushParams  START  data  length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v3, :cond_3

    mul-int/lit8 v6, v5, 0x2

    .line 7
    aget v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    .line 8
    aget v6, p1, v6

    .line 9
    invoke-virtual {p0, v7, v6}, Lf1/q;->V(II)I

    move-result v8

    if-ltz v8, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    const-string v10, "Chip8918P"

    .line 10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ %02X,  %02X]"

    new-array v13, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v13, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v4

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  result : "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ret : "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_0

    :cond_3
    :goto_2
    const-string v1, "Chip8918P"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushParams  END  data  length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "flushParams  data is NULL  or  data  size < 2 !!!! "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q0()Z
    .locals 2

    const/16 v0, 0x60

    .line 1
    invoke-virtual {p0, v0}, Lf1/n;->z0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xee

    .line 2
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lf1/n;->j0()V

    :cond_1
    return v1
.end method

.method public r0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/n;->a0:Landroid/content/SharedPreferences;

    sget-object v1, Lf1/n;->r0:Ljava/lang/String;

    sget v2, Lf1/n;->s0:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x80

    .line 2
    invoke-virtual {p0, v1}, Lf1/n;->z0(I)Z

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "002 write 0x80 0x02 %02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Chip8918P"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    return v2
.end method

.method public s0()Z
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 2
    iget-object v1, v0, Lf1/n;->k0:Lf1/n$d;

    if-nez v1, :cond_2

    .line 3
    iget-object v1, v0, Lf1/n;->l0:Lf1/n$d;

    if-nez v1, :cond_0

    iget-object v1, v0, Lf1/n;->j0:Lf1/n$d;

    :cond_0
    iput-object v1, v0, Lf1/n;->k0:Lf1/n$d;

    goto :goto_0

    .line 4
    :cond_1
    iget v2, v0, Lf1/n;->o0:I

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 5
    iget-object v1, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    iget v2, v0, Lf1/n;->o0:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n$d;

    iput-object v1, v0, Lf1/n;->k0:Lf1/n$d;

    .line 6
    :cond_2
    :goto_0
    iget-object v1, v0, Lf1/n;->k0:Lf1/n$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 7
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------------------>> targetTimingIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lf1/n;->o0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Chip8918P"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------------------>> target timing: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lf1/n;->m0:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x50

    const/16 v6, 0x13

    const/16 v7, 0xa2

    const/4 v8, 0x4

    const/16 v9, 0x48

    const/16 v10, 0xb0

    const/16 v11, 0x18

    const/16 v12, 0xc

    const/16 v13, 0x70

    const/16 v14, 0x38

    const/4 v15, 0x3

    const/16 v4, 0x80

    if-eqz v1, :cond_17

    .line 9
    iget-object v1, v0, Lf1/n;->k0:Lf1/n$d;

    iget-object v1, v1, Lf1/n$d;->a:[I

    iput-object v1, v0, Lf1/n;->m0:[I

    .line 10
    invoke-virtual {v0, v13}, Lf1/n;->z0(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v0, v3, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v0, v15, v9}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {v0, v8, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {v0, v12, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_7

    move v1, v3

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    .line 15
    invoke-virtual {v0, v6, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_8

    move v1, v3

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_9

    .line 16
    invoke-virtual {v0, v11, v5}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    move v1, v3

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    if-eqz v1, :cond_a

    .line 17
    invoke-virtual {v0, v14, v10}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_a

    move v1, v3

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    if-eqz v1, :cond_b

    const/16 v1, 0xff

    .line 18
    invoke-virtual {v0, v1, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_b

    move v1, v3

    goto :goto_9

    :cond_b
    move v1, v2

    :goto_9
    const/4 v4, 0x2

    if-eqz v1, :cond_c

    .line 19
    invoke-virtual {v0, v4, v2}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_c

    move v1, v3

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    if-eqz v1, :cond_d

    const/16 v1, 0x10

    .line 20
    invoke-virtual {v0, v15, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_d

    move v1, v3

    goto :goto_b

    :cond_d
    move v1, v2

    :goto_b
    if-eqz v1, :cond_e

    .line 21
    iget-object v1, v0, Lf1/n;->m0:[I

    aget v5, v1, v3

    aget v1, v1, v4

    add-int/2addr v5, v1

    div-int/lit16 v5, v5, 0x100

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v5}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_e

    move v1, v3

    goto :goto_c

    :cond_e
    move v1, v2

    :goto_c
    if-eqz v1, :cond_f

    const/16 v1, 0x17

    .line 22
    iget-object v5, v0, Lf1/n;->m0:[I

    aget v6, v5, v3

    aget v4, v5, v4

    add-int/2addr v6, v4

    rem-int/lit16 v6, v6, 0x100

    invoke-virtual {v0, v1, v6}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_f

    move v1, v3

    goto :goto_d

    :cond_f
    move v1, v2

    :goto_d
    const/4 v4, 0x7

    const/4 v5, 0x6

    if-eqz v1, :cond_10

    .line 23
    iget-object v1, v0, Lf1/n;->m0:[I

    aget v6, v1, v5

    aget v1, v1, v4

    add-int/2addr v6, v1

    div-int/lit16 v6, v6, 0x100

    invoke-virtual {v0, v11, v6}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_10

    move v1, v3

    goto :goto_e

    :cond_10
    move v1, v2

    :goto_e
    if-eqz v1, :cond_11

    const/16 v1, 0x19

    .line 24
    iget-object v6, v0, Lf1/n;->m0:[I

    aget v5, v6, v5

    aget v4, v6, v4

    add-int/2addr v5, v4

    rem-int/lit16 v5, v5, 0x100

    invoke-virtual {v0, v1, v5}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_11

    move v1, v3

    goto :goto_f

    :cond_11
    move v1, v2

    :goto_f
    if-eqz v1, :cond_12

    const/16 v1, 0x1a

    .line 25
    iget-object v4, v0, Lf1/n;->m0:[I

    aget v4, v4, v15

    div-int/lit16 v4, v4, 0x100

    invoke-virtual {v0, v1, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_12

    move v1, v3

    goto :goto_10

    :cond_12
    move v1, v2

    :goto_10
    if-eqz v1, :cond_13

    const/16 v1, 0x1b

    .line 26
    iget-object v4, v0, Lf1/n;->m0:[I

    aget v4, v4, v15

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {v0, v1, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_13

    move v1, v3

    goto :goto_11

    :cond_13
    move v1, v2

    :goto_11
    const/16 v4, 0x8

    if-eqz v1, :cond_14

    const/16 v1, 0x1c

    .line 27
    iget-object v5, v0, Lf1/n;->m0:[I

    aget v5, v5, v4

    div-int/lit16 v5, v5, 0x100

    invoke-virtual {v0, v1, v5}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_14

    move v1, v3

    goto :goto_12

    :cond_14
    move v1, v2

    :goto_12
    if-eqz v1, :cond_15

    const/16 v1, 0x1d

    .line 28
    iget-object v5, v0, Lf1/n;->m0:[I

    aget v4, v5, v4

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {v0, v1, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_15

    move v1, v3

    goto :goto_13

    :cond_15
    move v1, v2

    :goto_13
    if-eqz v1, :cond_16

    .line 29
    invoke-virtual {v0, v13}, Lf1/n;->z0(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v3

    goto :goto_14

    :cond_16
    move v1, v2

    :goto_14
    if-eqz v1, :cond_22

    .line 30
    invoke-virtual {v0, v14, v10}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_22

    :goto_15
    move v2, v3

    goto/16 :goto_1f

    .line 31
    :cond_17
    iget v1, v0, Lf1/n;->o0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    .line 32
    invoke-virtual {v0, v13}, Lf1/n;->z0(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 33
    invoke-virtual {v0, v3, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_18

    move v1, v3

    goto :goto_16

    :cond_18
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_19

    .line 34
    invoke-virtual {v0, v15, v9}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_19

    move v1, v3

    goto :goto_17

    :cond_19
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_1a

    .line 35
    invoke-virtual {v0, v8, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1a

    move v1, v3

    goto :goto_18

    :cond_1a
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_1b

    .line 36
    invoke-virtual {v0, v12, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1b

    move v1, v3

    goto :goto_19

    :cond_1b
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_1c

    .line 37
    invoke-virtual {v0, v6, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1c

    move v1, v3

    goto :goto_1a

    :cond_1c
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_1d

    .line 38
    invoke-virtual {v0, v11, v5}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1d

    move v1, v3

    goto :goto_1b

    :cond_1d
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_1e

    .line 39
    invoke-virtual {v0, v14, v10}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1e

    move v1, v3

    goto :goto_1c

    :cond_1e
    const/4 v1, 0x0

    :goto_1c
    if-eqz v1, :cond_1f

    .line 40
    invoke-virtual {v0, v4}, Lf1/n;->z0(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v3

    goto :goto_1d

    :cond_1f
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_20

    const/16 v1, 0x33

    .line 41
    invoke-virtual {v0, v1, v12}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_20

    move v1, v3

    goto :goto_1e

    :cond_20
    const/4 v1, 0x0

    :goto_1e
    if-eqz v1, :cond_21

    const/16 v1, 0x16

    .line 42
    invoke-virtual {v0, v14, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_21

    goto :goto_15

    :cond_21
    const/4 v2, 0x0

    :cond_22
    :goto_1f
    return v2
.end method

.method public t0()Z
    .locals 6

    const/16 v0, 0x60

    .line 1
    invoke-virtual {p0, v0}, Lf1/n;->z0(I)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v2, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-wide/16 v4, 0x5

    .line 3
    invoke-static {v4, v5}, Lo1/s0;->C(J)V

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    .line 4
    invoke-virtual {p0, v2, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    return v1
.end method

.method public u0()Z
    .locals 6

    const/16 v0, 0x60

    .line 1
    invoke-virtual {p0, v0}, Lf1/n;->z0(I)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v2, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-wide/16 v4, 0x5

    .line 3
    invoke-static {v4, v5}, Lo1/s0;->C(J)V

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    .line 4
    invoke-virtual {p0, v2, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    return v1
.end method

.method public v0()Z
    .locals 7

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p0, v0}, Lf1/n;->z0(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    const/16 v3, 0x9

    .line 2
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-wide/16 v3, 0xa

    .line 3
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    const/16 v3, 0x30

    .line 4
    invoke-virtual {p0, v3}, Lf1/q;->A(I)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const/16 v6, 0x31

    .line 5
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v6

    add-int/2addr v4, v6

    shl-int/2addr v4, v5

    const/16 v6, 0x32

    .line 6
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 7
    div-int/lit16 v4, v4, 0x3e8

    .line 8
    div-int/lit8 v6, v4, 0xa

    .line 9
    div-int/lit8 v6, v4, 0xc

    .line 10
    div-int/lit8 v6, v4, 0x6

    .line 11
    div-int/lit8 v4, v4, 0x4

    if-eqz v0, :cond_1

    const/16 v0, 0x83

    .line 12
    invoke-virtual {p0, v0}, Lf1/n;->z0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x40

    .line 13
    invoke-virtual {p0, v0, v2}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    const/16 v0, 0x46

    .line 14
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    const/16 v0, 0x47

    .line 15
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    if-eqz v0, :cond_5

    const/16 v0, 0x48

    const/16 v4, 0xa

    .line 16
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    if-eqz v0, :cond_6

    const/16 v0, 0x4a

    .line 17
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    return v1
.end method

.method public w0()Z
    .locals 12

    const/16 v0, 0x70

    .line 1
    invoke-virtual {p0, v0}, Lf1/n;->z0(I)Z

    move-result v0

    const/16 v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/16 v4, 0x2c

    const/16 v5, 0x31

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v5, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 4
    :goto_1
    new-instance v4, Lf1/q$c;

    iget v6, p0, Lf1/n;->T:I

    iget v7, p0, Lf1/n;->U:I

    invoke-direct {v4, v6, v7}, Lf1/q$c;-><init>(II)V

    .line 5
    iget-object v4, p0, Lf1/n;->k0:Lf1/n$d;

    const/16 v6, 0xa

    if-eqz v4, :cond_2

    iget v4, v4, Lf1/n$d;->d:I

    if-ltz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    const/16 v7, 0x33

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0, v7, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-eqz v0, :cond_4

    const/16 v0, 0x34

    const/4 v4, 0x2

    .line 7
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    if-eqz v0, :cond_5

    const/16 v0, 0x24

    const/16 v4, 0x64

    .line 8
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    const/16 v4, 0x23

    if-eqz v0, :cond_6

    const/16 v0, 0x2f

    .line 9
    invoke-virtual {p0, v4, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    if-eqz v0, :cond_7

    const/16 v0, 0xaf

    .line 10
    invoke-virtual {p0, v4, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    if-eqz v0, :cond_8

    const/16 v0, 0x9f

    .line 11
    invoke-virtual {p0, v4, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v3

    :goto_8
    const/16 v4, 0x80

    if-eqz v0, :cond_9

    .line 12
    invoke-virtual {p0, v4}, Lf1/n;->z0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v3

    .line 13
    :goto_9
    iget-object v8, p0, Lf1/n;->k0:Lf1/n$d;

    if-eqz v8, :cond_a

    iget v8, v8, Lf1/n$d;->f:I

    if-ltz v8, :cond_a

    goto :goto_a

    :cond_a
    move v8, v3

    :goto_a
    if-eqz v0, :cond_b

    shl-int/lit8 v0, v8, 0x5

    or-int/lit8 v0, v0, 0xc

    .line 14
    invoke-virtual {p0, v7, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_b

    move v0, v2

    goto :goto_b

    :cond_b
    move v0, v3

    :goto_b
    const-wide/16 v9, 0xa

    .line 15
    invoke-static {v9, v10}, Lo1/s0;->C(J)V

    .line 16
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    .line 17
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    const/16 v11, 0x32

    .line 18
    invoke-virtual {p0, v11}, Lf1/q;->A(I)I

    if-eqz v0, :cond_c

    .line 19
    invoke-virtual {p0, v4}, Lf1/n;->z0(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_c

    :cond_c
    move v0, v3

    :goto_c
    if-eqz v0, :cond_d

    shl-int/lit8 v0, v8, 0x5

    or-int/lit8 v0, v0, 0x9

    .line 20
    invoke-virtual {p0, v7, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_d

    move v0, v2

    goto :goto_d

    :cond_d
    move v0, v3

    :goto_d
    if-eqz v0, :cond_e

    const/16 v0, 0x6a

    .line 21
    invoke-virtual {p0, v0, v6}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_e

    move v0, v2

    goto :goto_e

    :cond_e
    move v0, v3

    :goto_e
    if-eqz v0, :cond_f

    const/16 v0, 0xbe

    const/16 v4, 0x40

    .line 22
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_f

    goto :goto_f

    :cond_f
    move v2, v3

    .line 23
    :goto_f
    invoke-static {v9, v10}, Lo1/s0;->C(J)V

    .line 24
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    .line 25
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    .line 26
    invoke-virtual {p0, v11}, Lf1/q;->A(I)I

    return v2
.end method

.method public x0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/n;->k0:Lf1/n$d;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf1/n;->l0:Lf1/n$d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf1/n;->j0:Lf1/n$d;

    :goto_0
    iput-object v0, p0, Lf1/n;->k0:Lf1/n$d;

    .line 3
    :cond_1
    iget-object v0, p0, Lf1/n;->k0:Lf1/n$d;

    iget-object v0, v0, Lf1/n$d;->a:[I

    iput-object v0, p0, Lf1/n;->m0:[I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xx------------------>> target timing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/n;->m0:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8918P"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x83

    .line 5
    invoke-virtual {p0, v0}, Lf1/n;->z0(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    .line 6
    iget-object v3, p0, Lf1/n;->k0:Lf1/n$d;

    iget v3, v3, Lf1/n$d;->b:I

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    const/16 v3, 0x58

    if-eqz v0, :cond_5

    const/16 v0, 0x13

    .line 7
    iget-object v4, p0, Lf1/n;->k0:Lf1/n$d;

    iget v4, v4, Lf1/n$d;->c:I

    if-ltz v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    if-eqz v0, :cond_6

    const/16 v0, 0x14

    .line 8
    iget-object v4, p0, Lf1/n;->m0:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    if-eqz v0, :cond_7

    const/16 v0, 0x15

    .line 9
    iget-object v4, p0, Lf1/n;->m0:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v1

    :goto_6
    const/16 v4, 0x8

    if-eqz v0, :cond_8

    const/16 v0, 0x16

    .line 10
    iget-object v5, p0, Lf1/n;->m0:[I

    aget v5, v5, v4

    div-int/lit16 v5, v5, 0x100

    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    if-eqz v0, :cond_9

    const/16 v0, 0x17

    .line 11
    iget-object v5, p0, Lf1/n;->m0:[I

    aget v4, v5, v4

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_9

    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v1

    :goto_8
    if-eqz v0, :cond_a

    const/16 v0, 0x18

    .line 12
    iget-object v4, p0, Lf1/n;->m0:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_9

    :cond_a
    move v0, v1

    :goto_9
    if-eqz v0, :cond_b

    const/16 v0, 0x19

    .line 13
    invoke-virtual {p0, v0, v2}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_b

    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v1

    :goto_a
    if-eqz v0, :cond_c

    const/16 v0, 0x1a

    .line 14
    invoke-virtual {p0, v0, v2}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_c

    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v1

    :goto_b
    if-eqz v0, :cond_d

    const/16 v0, 0x1b

    .line 15
    invoke-virtual {p0, v0, v2}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_d

    move v0, v2

    goto :goto_c

    :cond_d
    move v0, v1

    :goto_c
    const/4 v4, 0x3

    if-eqz v0, :cond_e

    const/16 v0, 0x1c

    .line 16
    iget-object v5, p0, Lf1/n;->m0:[I

    aget v5, v5, v4

    div-int/lit16 v5, v5, 0x100

    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_e

    move v0, v2

    goto :goto_d

    :cond_e
    move v0, v1

    :goto_d
    if-eqz v0, :cond_f

    const/16 v0, 0x1d

    .line 17
    iget-object v5, p0, Lf1/n;->m0:[I

    aget v4, v5, v4

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_f

    move v0, v2

    goto :goto_e

    :cond_f
    move v0, v1

    :goto_e
    if-eqz v0, :cond_10

    const/16 v0, 0x10

    .line 18
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_10

    move v0, v2

    goto :goto_f

    :cond_10
    move v0, v1

    :goto_f
    if-eqz v0, :cond_11

    const/16 v0, 0x1f

    const/4 v3, 0x4

    .line 19
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_11

    move v0, v2

    goto :goto_10

    :cond_11
    move v0, v1

    :goto_10
    if-eqz v0, :cond_12

    const/16 v0, 0x11

    const/16 v3, 0x2c

    .line 20
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_12

    move v1, v2

    :cond_12
    return v1
.end method

.method public y0()Z
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, 0x80

    .line 1
    invoke-virtual {v0, v1}, Lf1/n;->z0(I)Z

    const/16 v2, 0x38

    const/16 v3, 0x16

    .line 2
    invoke-virtual {v0, v2, v3}, Lf1/q;->V(II)I

    const/16 v2, 0x33

    const/16 v3, 0x9

    .line 3
    invoke-virtual {v0, v2, v3}, Lf1/q;->V(II)I

    const-wide/16 v4, 0xa

    .line 4
    invoke-static {v4, v5}, Lo1/s0;->C(J)V

    const/16 v2, 0x30

    .line 5
    invoke-virtual {v0, v2}, Lf1/q;->A(I)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    const/16 v5, 0x31

    .line 6
    invoke-virtual {v0, v5}, Lf1/q;->A(I)I

    move-result v5

    add-int/2addr v2, v5

    shl-int/2addr v2, v4

    const/16 v5, 0x32

    .line 7
    invoke-virtual {v0, v5}, Lf1/q;->A(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====================>>>  vdLT8918L_Video_check() fm_value == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Chip8918P"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x4e

    .line 9
    invoke-virtual {v0, v2}, Lf1/q;->A(I)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    shl-int/2addr v2, v4

    const/16 v6, 0x4f

    .line 10
    invoke-virtual {v0, v6}, Lf1/q;->A(I)I

    move-result v6

    or-int/2addr v2, v6

    const/16 v6, 0x4c

    .line 11
    invoke-virtual {v0, v6}, Lf1/q;->A(I)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v6, v4

    const/16 v7, 0x4d

    .line 12
    invoke-virtual {v0, v7}, Lf1/q;->A(I)I

    move-result v7

    or-int/2addr v6, v7

    const/16 v7, 0x52

    .line 13
    invoke-virtual {v0, v7}, Lf1/q;->A(I)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v4

    and-int/lit16 v7, v7, 0xfff

    const/16 v8, 0x53

    .line 14
    invoke-virtual {v0, v8}, Lf1/q;->A(I)I

    move-result v8

    or-int/2addr v7, v8

    const/16 v8, 0x50

    .line 15
    invoke-virtual {v0, v8}, Lf1/q;->A(I)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    shl-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xfff

    const/16 v9, 0x51

    .line 16
    invoke-virtual {v0, v9}, Lf1/q;->A(I)I

    move-result v9

    or-int/2addr v8, v9

    const/16 v9, 0x44

    .line 17
    invoke-virtual {v0, v9}, Lf1/q;->A(I)I

    move-result v9

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v4

    const/16 v10, 0x45

    .line 18
    invoke-virtual {v0, v10}, Lf1/q;->A(I)I

    move-result v10

    or-int/2addr v9, v10

    const/16 v10, 0x48

    .line 19
    invoke-virtual {v0, v10}, Lf1/q;->A(I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    shl-int/2addr v10, v4

    const/16 v11, 0x49

    .line 20
    invoke-virtual {v0, v11}, Lf1/q;->A(I)I

    move-result v11

    or-int/2addr v10, v11

    const/16 v11, 0x4a

    .line 21
    invoke-virtual {v0, v11}, Lf1/q;->A(I)I

    move-result v11

    and-int/lit8 v11, v11, 0xf

    shl-int/2addr v11, v4

    const/16 v12, 0x4b

    .line 22
    invoke-virtual {v0, v12}, Lf1/q;->A(I)I

    move-result v12

    or-int/2addr v11, v12

    const/16 v12, 0x43

    .line 23
    invoke-virtual {v0, v12}, Lf1/q;->A(I)I

    move-result v12

    const/16 v13, 0x46

    .line 24
    invoke-virtual {v0, v13}, Lf1/q;->A(I)I

    move-result v13

    const/16 v14, 0x47

    .line 25
    invoke-virtual {v0, v14}, Lf1/q;->A(I)I

    move-result v14

    const/16 v15, 0x42

    .line 26
    invoke-virtual {v0, v15}, Lf1/q;->A(I)I

    move-result v15

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    .line 27
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v4, 0x0

    aput-object v16, v3, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v1, 0x1

    aput-object v16, v3, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v1, 0x2

    aput-object v16, v3, v1

    const-string v4, "hactive : %d,  vactive : %d sync_polarity : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x0

    aput-object v4, v3, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x1

    aput-object v4, v3, v18

    const-string v4, "htotal : %d,  vtotal : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 29
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v18

    const-string v4, "hsa : %d,  vsa : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 30
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v18

    const-string v4, "hbp : %d,  vbp : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v18

    const-string v4, "hfp : %d,  vfp : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xd

    new-array v3, v3, [I

    .line 32
    iget v4, v0, Lf1/q;->i:I

    aput v4, v3, v16

    const/16 v4, 0xff

    aput v4, v3, v18

    aput v7, v3, v1

    const/4 v4, 0x3

    aput v8, v3, v4

    const/4 v4, 0x4

    aput v15, v3, v4

    const/16 v19, 0x5

    aput v2, v3, v19

    const/16 v19, 0x6

    aput v6, v3, v19

    const/16 v19, 0x7

    aput v9, v3, v19

    const/16 v17, 0x8

    aput v12, v3, v17

    const/16 v12, 0x9

    aput v10, v3, v12

    const/16 v10, 0xa

    aput v13, v3, v10

    const/16 v10, 0xb

    aput v11, v3, v10

    const/16 v10, 0xc

    aput v14, v3, v10

    const/16 v10, 0xae

    invoke-static {v10, v3}, Lu0/d;->I3(I[I)V

    const-string v3, " ==> "

    const/4 v10, -0x1

    const/16 v11, 0x64

    if-le v7, v11, :cond_b

    const/16 v12, 0xbb8

    if-gt v7, v12, :cond_b

    if-le v8, v11, :cond_b

    const/16 v11, 0x7d0

    if-le v8, v11, :cond_0

    goto/16 :goto_2

    .line 33
    :cond_0
    iget-object v11, v0, Lf1/n;->k0:Lf1/n$d;

    if-eqz v11, :cond_1

    .line 34
    iget-object v11, v11, Lf1/n$d;->a:[I

    iput-object v11, v0, Lf1/n;->m0:[I

    .line 35
    :cond_1
    iget-object v11, v0, Lf1/n;->m0:[I

    if-eqz v11, :cond_2

    .line 36
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current targetTiming hsa: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lf1/n;->m0:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " hbp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lf1/n;->m0:[I

    aget v12, v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " hfp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lf1/n;->m0:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mTimings: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    if-nez v12, :cond_3

    const-string v12, " is Null !!"

    goto :goto_0

    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " size is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v11, v0, Lf1/n;->m0:[I

    if-eqz v11, :cond_6

    aget v4, v11, v4

    if-ne v2, v4, :cond_6

    const/16 v2, 0x9

    aget v2, v11, v2

    if-ne v6, v2, :cond_6

    const/4 v2, 0x1

    aget v4, v11, v2

    if-eq v9, v4, :cond_6

    .line 39
    iget-object v2, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 40
    iget v2, v0, Lf1/n;->o0:I

    .line 41
    iget v4, v0, Lf1/n;->n0:I

    if-gez v4, :cond_4

    iget-object v4, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 42
    iget v4, v0, Lf1/n;->o0:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v0, Lf1/n;->o0:I

    .line 43
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "01 targetTimingIndex: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lf1/n;->o0:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_5
    iget-object v2, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    if-eqz v2, :cond_6

    iget v3, v0, Lf1/n;->o0:I

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    const/4 v2, 0x0

    .line 45
    iput-boolean v2, v0, Lf1/n;->Q:Z

    .line 46
    iput v7, v0, Lf1/n;->T:I

    .line 47
    iput v8, v0, Lf1/n;->U:I

    .line 48
    iput v10, v0, Lf1/q;->k:I

    return v2

    :cond_6
    const/16 v2, 0xe

    .line 49
    rem-int/lit8 v3, v7, 0x4

    sub-int/2addr v7, v3

    .line 50
    rem-int/lit8 v3, v8, 0x4

    sub-int/2addr v8, v3

    .line 51
    iput v7, v0, Lf1/n;->T:I

    .line 52
    iput v8, v0, Lf1/n;->U:I

    .line 53
    iget v3, v0, Lf1/q;->k:I

    if-eq v3, v2, :cond_7

    .line 54
    iput v2, v0, Lf1/q;->k:I

    :cond_7
    const/16 v2, 0x80

    .line 55
    invoke-virtual {v0, v2}, Lf1/n;->z0(I)Z

    and-int/lit8 v2, v15, 0x1

    if-nez v2, :cond_8

    const/4 v2, 0x3

    .line 56
    invoke-virtual {v0, v2}, Lf1/q;->A(I)I

    move-result v3

    or-int/lit8 v3, v3, 0x40

    invoke-virtual {v0, v2, v3}, Lf1/q;->V(II)I

    goto :goto_1

    :cond_8
    const/4 v2, 0x3

    :goto_1
    and-int/2addr v1, v15

    if-nez v1, :cond_9

    .line 57
    invoke-virtual {v0, v2}, Lf1/q;->A(I)I

    move-result v1

    const/16 v3, 0x80

    or-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lf1/q;->V(II)I

    .line 58
    :cond_9
    iget-object v1, v0, Lf1/n;->k0:Lf1/n$d;

    if-eqz v1, :cond_a

    iget v1, v1, Lf1/n$d;->e:I

    if-ltz v1, :cond_a

    .line 59
    invoke-virtual {v0, v2, v1}, Lf1/q;->V(II)I

    :cond_a
    const/4 v1, 0x1

    .line 60
    iput-boolean v1, v0, Lf1/n;->Q:Z

    return v1

    .line 61
    :cond_b
    :goto_2
    iget-object v1, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 62
    iget v1, v0, Lf1/n;->o0:I

    .line 63
    iget v2, v0, Lf1/n;->n0:I

    if-gez v2, :cond_c

    iget-object v2, v0, Lf1/n;->e0:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_c

    .line 64
    iget v2, v0, Lf1/n;->o0:I

    add-int/2addr v2, v4

    iput v2, v0, Lf1/n;->o0:I

    .line 65
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00 targetTimingIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lf1/n;->o0:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v1, 0x0

    .line 66
    iput-boolean v1, v0, Lf1/n;->Q:Z

    .line 67
    iput v7, v0, Lf1/n;->T:I

    .line 68
    iput v8, v0, Lf1/n;->U:I

    .line 69
    iput v10, v0, Lf1/q;->k:I

    return v1
.end method

.method public z0(I)Z
    .locals 1

    const/16 v0, 0xff

    .line 1
    invoke-virtual {p0, v0, p1}, Lf1/q;->V(II)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
