.class public Lk0/tr;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0x0

.field public static B:I = 0x0

.field public static C:I = 0x0

.field public static D:I = 0x7

.field public static E:I = 0x7

.field public static F:I = 0x7

.field public static G:I = 0x7

.field public static H:I = 0x7

.field public static I:I = 0xa

.field public static J:I

.field public static z:I


# instance fields
.field public b:[[I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:Lo1/g0;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:I

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:I

.field public x:Ljava/lang/Runnable;

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lk0/tr;->b:[[I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lk0/tr;->d:I

    const/16 v2, 0x13

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v8, 0x6

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v9, 0x7

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v10, 0x8

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v11, 0x9

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v12, 0xa

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v12, 0xb

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v12, 0xc

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v12, 0xd

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v12, 0xe

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v12, 0xf

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v12, 0x10

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v12, 0x11

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v12, 0x12

    aput-object v4, v2, v12

    iput-object v2, p0, Lk0/tr;->e:[[I

    .line 5
    iput v1, p0, Lk0/tr;->f:I

    .line 6
    new-instance v2, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0x20

    invoke-direct {v2, v4, v12}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lk0/tr;->g:Lo1/g0;

    .line 7
    iput v10, p0, Lk0/tr;->h:I

    .line 8
    iput v11, p0, Lk0/tr;->i:I

    .line 9
    iput v5, p0, Lk0/tr;->j:I

    .line 10
    iput v3, p0, Lk0/tr;->k:I

    .line 11
    iput v6, p0, Lk0/tr;->l:I

    .line 12
    iput v7, p0, Lk0/tr;->m:I

    .line 13
    iput v0, p0, Lk0/tr;->n:I

    .line 14
    iput v8, p0, Lk0/tr;->o:I

    .line 15
    iput v9, p0, Lk0/tr;->p:I

    .line 16
    new-instance v0, Lk0/tr$a;

    invoke-direct {v0, p0}, Lk0/tr$a;-><init>(Lk0/tr;)V

    iput-object v0, p0, Lk0/tr;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/tr$b;

    invoke-direct {v0, p0}, Lk0/tr$b;-><init>(Lk0/tr;)V

    iput-object v0, p0, Lk0/tr;->r:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lk0/tr$c;

    invoke-direct {v0, p0}, Lk0/tr$c;-><init>(Lk0/tr;)V

    iput-object v0, p0, Lk0/tr;->s:Ljava/lang/Runnable;

    .line 19
    iput v1, p0, Lk0/tr;->t:I

    .line 20
    new-instance v0, Lk0/tr$d;

    invoke-direct {v0, p0}, Lk0/tr$d;-><init>(Lk0/tr;)V

    iput-object v0, p0, Lk0/tr;->u:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lk0/tr$e;

    invoke-direct {v0, p0}, Lk0/tr$e;-><init>(Lk0/tr;)V

    iput-object v0, p0, Lk0/tr;->v:Ljava/lang/Runnable;

    .line 22
    iput v1, p0, Lk0/tr;->w:I

    .line 23
    new-instance v0, Lk0/tr$f;

    invoke-direct {v0, p0}, Lk0/tr$f;-><init>(Lk0/tr;)V

    iput-object v0, p0, Lk0/tr;->x:Ljava/lang/Runnable;

    .line 24
    iput v1, p0, Lk0/tr;->y:I

    return-void

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xb1
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0xb2
        0x36
    .end array-data

    :array_d
    .array-data 4
        0xb3
        0x4a
    .end array-data

    :array_e
    .array-data 4
        0xb4
        0x4b
    .end array-data

    :array_f
    .array-data 4
        0xb5
        0x10
    .end array-data

    :array_10
    .array-data 4
        0xb6
        0xc
    .end array-data

    :array_11
    .array-data 4
        0xb7
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0xb8
        0x40
    .end array-data
.end method

.method public static synthetic i3(Lk0/tr;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/tr;->a3()V

    return-void
.end method

.method public static synthetic j3(Lk0/tr;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/tr;->g:Lo1/g0;

    return-object p0
.end method

.method public static synthetic k3(Lk0/tr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tr;->e3(I)V

    return-void
.end method

.method public static synthetic l3(Lk0/tr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tr;->c3(I)V

    return-void
.end method

.method public static synthetic m3(Lk0/tr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tr;->h3(I)V

    return-void
.end method

.method public static synthetic n3(Lk0/tr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tr;->b3(I)V

    return-void
.end method

.method public static synthetic o3(Lk0/tr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tr;->d3(I)V

    return-void
.end method

.method public static synthetic p3(Lk0/tr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tr;->f3(I)V

    return-void
.end method

.method public static synthetic q3(Lk0/tr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tr;->g3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/tr;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/tr;->u:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->l:I

    .line 12
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 13
    :sswitch_0
    iput v2, v0, Lk0/mt;->l:I

    .line 14
    :goto_0
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/tr;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget-object v0, p0, Lk0/tr;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/tr;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    iget-object v0, p0, Lk0/tr;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8901c8 -> :sswitch_0
        0x8a01c8 -> :sswitch_0
        0xf901c7 -> :sswitch_0
        0xfa01c7 -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_3c

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x29

    const/16 v9, 0x28

    const/16 v10, 0xa

    const/16 v11, 0xf

    const/4 v12, 0x6

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v2, v9, :cond_20

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x61

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x62

    const v9, 0xff00

    if-eq v2, v3, :cond_18

    const/16 v3, 0x66

    if-eq v2, v3, :cond_17

    const/16 v3, 0x68

    if-eq v2, v3, :cond_16

    const/16 v3, 0x70

    if-eq v2, v3, :cond_15

    const/16 v3, 0x72

    if-eq v2, v3, :cond_14

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_17

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    shr-int/lit8 v2, v1, 0x2

    and-int/2addr v2, v8

    .line 3
    sput v2, Lk0/tr;->z:I

    if-ne v2, v8, :cond_40

    .line 4
    sget v2, Lk0/tr;->A:I

    shr-int/2addr v1, v13

    and-int/2addr v1, v8

    if-eq v2, v1, :cond_40

    .line 5
    sput v1, Lk0/tr;->A:I

    .line 6
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget v1, Lk0/tr;->A:I

    if-ne v1, v8, :cond_0

    .line 8
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2, v8}, Lu0/i;->g4(IZ)V

    goto/16 :goto_17

    .line 9
    :cond_0
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2, v7}, Lu0/i;->g4(IZ)V

    goto/16 :goto_17

    .line 10
    :cond_1
    sget v1, Lk0/tr;->A:I

    if-ne v1, v8, :cond_2

    .line 11
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_17

    .line 12
    :cond_2
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_17

    .line 13
    :pswitch_1
    sget v2, Lk0/nt;->a:I

    const v3, 0x1001c8    # 1.470007E-39f

    if-eq v2, v3, :cond_40

    const v3, 0x1101c8

    if-eq v2, v3, :cond_40

    const v3, 0x8801c8

    if-eq v2, v3, :cond_40

    const/16 v2, 0xb0

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x2

    .line 14
    aget-byte v10, v1, v9

    shr-int/2addr v10, v5

    and-int/2addr v10, v11

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v8, [I

    .line 15
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v11

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 16
    aget-byte v10, v1, v9

    shr-int/2addr v10, v5

    and-int/2addr v10, v11

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v8, [I

    .line 17
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v11

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x4

    .line 18
    aget-byte v10, v1, v9

    shr-int/lit8 v5, v10, 0x4

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v8, [I

    .line 19
    aget-byte v5, v1, v9

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 20
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    .line 21
    :pswitch_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_3
    const/16 v2, 0x78

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x2

    .line 22
    aget-byte v9, v1, v6

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    .line 23
    aget-byte v9, v1, v6

    shr-int/2addr v9, v5

    and-int/lit8 v9, v9, 0x7

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    .line 24
    aget-byte v9, v1, v6

    shr-int/2addr v9, v14

    and-int/2addr v9, v13

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    .line 25
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/2addr v6, v13

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 26
    aget-byte v9, v1, v6

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    .line 27
    aget-byte v9, v1, v6

    shr-int/2addr v9, v12

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    .line 28
    aget-byte v9, v1, v6

    shr-int/2addr v9, v4

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    .line 29
    aget-byte v9, v1, v6

    shr-int/2addr v9, v5

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    .line 30
    aget-byte v9, v1, v6

    shr-int/2addr v9, v7

    and-int/lit8 v9, v9, 0x7

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    .line 31
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x7

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 32
    aget-byte v9, v1, v6

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    .line 33
    aget-byte v9, v1, v6

    shr-int/2addr v9, v12

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    .line 34
    aget-byte v9, v1, v6

    shr-int/lit8 v4, v9, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    .line 35
    aget-byte v4, v1, v6

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    .line 36
    aget-byte v4, v1, v6

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 37
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    .line 38
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 39
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v13

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 40
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0x7

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v2, v1, v2

    const/16 v3, 0x6f

    new-array v4, v8, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v8

    :goto_0
    aput v5, v4, v7

    .line 42
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x70

    new-array v4, v8, [I

    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_4

    move v5, v7

    goto :goto_1

    :cond_4
    move v5, v8

    :goto_1
    aput v5, v4, v7

    .line 43
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x71

    new-array v4, v8, [I

    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_5

    move v5, v7

    goto :goto_2

    :cond_5
    move v5, v8

    :goto_2
    aput v5, v4, v7

    .line 44
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x72

    new-array v4, v8, [I

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_6

    move v5, v7

    goto :goto_3

    :cond_6
    move v5, v8

    :goto_3
    aput v5, v4, v7

    .line 45
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    and-int/2addr v2, v13

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x3

    .line 46
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_7

    const v3, 0xffffff

    :cond_7
    const/16 v4, 0x73

    new-array v5, v8, [I

    or-int/2addr v3, v2

    aput v3, v5, v7

    .line 47
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x4

    .line 48
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_8

    const v3, 0xffffff

    :cond_8
    const/16 v4, 0x74

    new-array v5, v8, [I

    or-int/2addr v3, v2

    aput v3, v5, v7

    .line 49
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x5

    .line 50
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_9

    const v3, 0xffffff

    :cond_9
    const/16 v4, 0x75

    new-array v5, v8, [I

    or-int/2addr v3, v2

    aput v3, v5, v7

    .line 51
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x6

    .line 52
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_a

    const v3, 0xffffff

    :cond_a
    const/16 v4, 0x76

    new-array v5, v8, [I

    or-int/2addr v3, v2

    aput v3, v5, v7

    .line 53
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x7

    .line 54
    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_b

    const v1, 0xffffff

    :cond_b
    const/16 v3, 0x77

    new-array v4, v8, [I

    or-int/2addr v1, v2

    aput v1, v4, v7

    .line 55
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 56
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    const-string v2, "persist.syu.reversefrontdoor"

    .line 57
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 58
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 59
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 60
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 61
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 62
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 63
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 64
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x3

    .line 66
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    const v5, 0xffff

    if-ne v3, v5, :cond_d

    move v3, v7

    :cond_d
    const/16 v5, 0x6c

    new-array v9, v8, [I

    or-int/2addr v3, v2

    aput v3, v9, v7

    .line 67
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    move v3, v7

    :goto_5
    if-ge v3, v4, :cond_40

    new-array v5, v14, [I

    aput v3, v5, v7

    mul-int/lit8 v9, v3, 0x2

    add-int v9, p2, v9

    add-int/lit8 v10, v9, 0x5

    .line 68
    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v12

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v9, v10

    or-int/2addr v9, v2

    aput v9, v5, v8

    const/16 v9, 0x6d

    .line 69
    iget-object v10, v0, Lk0/tr;->b:[[I

    aget-object v10, v10, v3

    invoke-static {v9, v5, v10}, Lk0/qt;->C0(I[I[I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 70
    iget-object v9, v0, Lk0/tr;->b:[[I

    aput-object v5, v9, v3

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, p2, 0x3

    .line 72
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    const v5, 0xffff

    if-ne v4, v5, :cond_f

    move v4, v7

    :cond_f
    const/16 v5, 0x6b

    new-array v9, v8, [I

    or-int/2addr v3, v4

    aput v3, v9, v7

    .line 73
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v8, [I

    .line 74
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    aput v1, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_8
    add-int/lit8 v2, p2, 0x8

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x18

    const/16 v3, 0x68

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 76
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    or-int/2addr v5, v2

    aput v5, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 77
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 78
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, p2, 0x7

    aget-byte v1, v1, v8

    and-int/2addr v1, v6

    or-int/2addr v1, v5

    or-int/2addr v1, v2

    aput v1, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 80
    aget-byte v1, v1, v3

    and-int/2addr v2, v6

    .line 81
    iput v2, v0, Lk0/tr;->d:I

    move v2, v7

    .line 82
    :goto_6
    iget-object v3, v0, Lk0/tr;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_11

    .line 83
    iget v4, v0, Lk0/tr;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_10

    if-eqz v4, :cond_11

    .line 84
    iput v2, v0, Lk0/tr;->c:I

    goto :goto_7

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    :goto_7
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_12

    .line 85
    array-length v1, v3

    if-ge v2, v1, :cond_40

    .line 86
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_12
    if-nez v1, :cond_40

    .line 87
    iget v1, v0, Lk0/tr;->c:I

    array-length v2, v3

    if-ge v1, v2, :cond_13

    if-eq v1, v6, :cond_13

    .line 88
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 89
    :cond_13
    iput v6, v0, Lk0/tr;->c:I

    goto/16 :goto_17

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0xc5

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 91
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_15
    const/16 v2, 0xbf

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 92
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 93
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 94
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 95
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 96
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_16
    const/16 v2, 0xb9

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x2

    .line 97
    aget-byte v9, v1, v6

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v8, [I

    .line 98
    aget-byte v9, v1, v6

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v8, [I

    .line 99
    aget-byte v9, v1, v6

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v8, [I

    .line 100
    aget-byte v9, v1, v6

    shr-int/2addr v9, v13

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v8, [I

    .line 101
    aget-byte v9, v1, v6

    shr-int/lit8 v5, v9, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v8, [I

    .line 102
    aget-byte v1, v1, v6

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_17
    const/16 v2, 0xb7

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 103
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v8, [I

    .line 104
    aget-byte v1, v1, v4

    shr-int/2addr v1, v12

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    .line 105
    :cond_18
    iget v2, v0, Lk0/tr;->t:I

    if-ne v2, v12, :cond_19

    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v3, v1, v2

    iget v10, v0, Lk0/tr;->y:I

    if-eq v3, v10, :cond_19

    .line 107
    aget-byte v2, v1, v2

    iput v2, v0, Lk0/tr;->y:I

    :cond_19
    const/16 v2, 0x98

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x2

    .line 108
    aget-byte v13, v1, v10

    and-int/2addr v13, v6

    aput v13, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 109
    aget-byte v2, v1, v10

    and-int/2addr v2, v6

    if-eq v2, v8, :cond_1c

    if-eq v2, v14, :cond_1b

    if-eq v2, v5, :cond_1a

    if-eq v2, v4, :cond_1a

    goto/16 :goto_17

    :cond_1a
    const/16 v2, 0xae

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 110
    aget-byte v10, v1, v4

    shr-int/lit8 v5, v10, 0x4

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v8, [I

    .line 111
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 112
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 113
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 114
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 115
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 116
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xd

    .line 117
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 118
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xf

    .line 119
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_1b
    const/16 v2, 0x91

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 120
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 121
    aget-byte v10, v1, v4

    shr-int/lit8 v5, v10, 0x4

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v8, [I

    .line 122
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 123
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 124
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 125
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 126
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 127
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xd

    .line 128
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 129
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xf

    .line 130
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_1c
    add-int/lit8 v2, p2, 0x3

    .line 131
    aget-byte v3, v1, v2

    if-nez v3, :cond_1d

    const/16 v2, 0x99

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 132
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 133
    aget-byte v10, v1, v5

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v8, [I

    .line 134
    aget-byte v10, v1, v5

    shr-int/lit8 v4, v10, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    .line 135
    aget-byte v4, v1, v5

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 136
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x6

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    .line 137
    :cond_1d
    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_40

    const/16 v2, 0x99

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 138
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 139
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 140
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 141
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 142
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 143
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x10

    .line 144
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0xf

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_1e
    const/16 v2, 0x8a

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x2

    .line 145
    aget-byte v9, v1, v6

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v8, [I

    .line 146
    aget-byte v9, v1, v6

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    .line 147
    aget-byte v9, v1, v6

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v8, [I

    .line 148
    aget-byte v9, v1, v6

    shr-int/2addr v9, v13

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    .line 149
    aget-byte v9, v1, v6

    shr-int/2addr v9, v5

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v8, [I

    .line 150
    aget-byte v6, v1, v6

    shr-int/2addr v6, v4

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 151
    aget-byte v6, v1, v6

    shr-int/2addr v6, v5

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 152
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x5

    .line 153
    aget-byte v9, v1, v6

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v8, [I

    .line 154
    aget-byte v9, v1, v6

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v8, [I

    .line 155
    aget-byte v9, v1, v6

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v8, [I

    .line 156
    aget-byte v9, v1, v6

    shr-int/2addr v9, v13

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v8, [I

    .line 157
    aget-byte v9, v1, v6

    shr-int/lit8 v5, v9, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v8, [I

    .line 158
    aget-byte v1, v1, v6

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_1f
    add-int/lit8 v2, p2, 0x2

    .line 159
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x17c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_17

    :cond_20
    add-int/lit8 v2, p2, 0x2

    .line 160
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v15, p2, 0x3

    .line 161
    aget-byte v3, v1, v15

    and-int/2addr v3, v6

    add-int/lit8 v16, p2, 0x4

    .line 162
    aget-byte v9, v1, v16

    and-int/2addr v9, v6

    add-int/lit8 v16, p2, 0x5

    .line 163
    aget-byte v4, v1, v16

    and-int/2addr v4, v6

    add-int/lit8 v16, p2, 0x6

    .line 164
    aget-byte v12, v1, v16

    and-int/2addr v12, v6

    add-int/lit8 v16, p2, 0x7

    .line 165
    aget-byte v5, v1, v16

    and-int/2addr v5, v6

    new-array v6, v8, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v6, v7

    .line 166
    invoke-static {v10, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v8

    aput v10, v6, v7

    const/16 v10, 0xb

    .line 167
    invoke-static {v10, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xc

    new-array v10, v8, [I

    shr-int/lit8 v19, v2, 0x5

    and-int/lit8 v19, v19, 0x1

    aput v19, v10, v7

    .line 168
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x22

    new-array v10, v8, [I

    shr-int/lit8 v19, v2, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v10, v7

    .line 169
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xd

    new-array v10, v8, [I

    shr-int/lit8 v19, v2, 0x3

    and-int/lit8 v19, v19, 0x1

    aput v19, v10, v7

    .line 170
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xe

    new-array v10, v8, [I

    shr-int/lit8 v19, v2, 0x2

    and-int/lit8 v19, v19, 0x1

    aput v19, v10, v7

    .line 171
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v8

    aput v10, v6, v7

    .line 172
    invoke-static {v11, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x11

    new-array v10, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v10, v7

    .line 173
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    .line 174
    sget v2, Lk0/nt;->a:I

    const v6, 0x101c6

    if-eq v2, v6, :cond_29

    const v6, 0x201c6

    if-eq v2, v6, :cond_29

    const v6, 0x301c6

    if-eq v2, v6, :cond_29

    const v6, 0x401c6

    if-ne v2, v6, :cond_21

    goto/16 :goto_d

    :cond_21
    add-int/lit8 v2, p2, 0xb

    .line 175
    aget-byte v6, v1, v2

    shr-int/2addr v6, v7

    and-int/2addr v6, v13

    if-eq v6, v8, :cond_24

    if-eq v6, v14, :cond_23

    if-eq v6, v13, :cond_22

    move v6, v7

    :goto_8
    move v10, v6

    goto :goto_9

    :cond_22
    move v6, v7

    move v10, v8

    goto :goto_9

    :cond_23
    move v6, v8

    goto :goto_8

    :cond_24
    move v10, v7

    move v6, v8

    .line 176
    :goto_9
    aget-byte v15, v1, v2

    shr-int/2addr v15, v14

    and-int/2addr v15, v13

    if-eq v15, v8, :cond_27

    if-eq v15, v14, :cond_26

    if-eq v15, v13, :cond_25

    move v14, v7

    :goto_a
    move v15, v14

    goto :goto_b

    :cond_25
    move v14, v7

    move v15, v8

    goto :goto_b

    :cond_26
    move v14, v8

    goto :goto_a

    :cond_27
    move v15, v7

    move v14, v8

    .line 177
    :goto_b
    aget-byte v2, v1, v2

    const/16 v17, 0x4

    shr-int/lit8 v2, v2, 0x4

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_28

    move v2, v8

    move v10, v2

    move v15, v10

    move/from16 v19, v15

    goto :goto_c

    :cond_28
    move v2, v7

    move/from16 v19, v2

    :goto_c
    const/16 v13, 0x12

    new-array v11, v8, [I

    aput v2, v11, v7

    .line 178
    invoke-static {v13, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v11, v8, [I

    aput v6, v11, v7

    .line 179
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v8, [I

    aput v10, v6, v7

    .line 180
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v6, v8, [I

    aput v19, v6, v7

    .line 181
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v6, v8, [I

    aput v14, v6, v7

    .line 182
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v6, v8, [I

    aput v15, v6, v7

    .line 183
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_29
    :goto_d
    const/16 v2, 0x12

    new-array v6, v8, [I

    .line 184
    aget-byte v10, v1, v15

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v8

    aput v10, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v8, [I

    .line 185
    aget-byte v10, v1, v15

    const/4 v11, 0x6

    shr-int/2addr v10, v11

    and-int/2addr v10, v8

    aput v10, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v8, [I

    .line 186
    aget-byte v10, v1, v15

    const/4 v11, 0x5

    shr-int/2addr v10, v11

    and-int/2addr v10, v8

    aput v10, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    :goto_e
    const/16 v2, 0x15

    new-array v6, v8, [I

    const/16 v10, 0xf

    and-int/2addr v3, v10

    aput v3, v6, v7

    .line 187
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v6, 0x1f

    const/16 v10, 0x1c

    const/16 v11, 0x1b

    if-nez v18, :cond_2a

    new-array v4, v8, [I

    const/4 v9, -0x1

    aput v9, v4, v7

    .line 188
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    aput v9, v4, v7

    .line 189
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_2a
    const-string v13, "persist.fyt.reversetemp"

    .line 190
    invoke-static {v13, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_2f

    and-int/lit16 v13, v9, 0xff

    if-nez v9, :cond_2b

    new-array v9, v8, [I

    aput v3, v9, v7

    .line 191
    invoke-static {v11, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_2b
    if-ne v9, v6, :cond_2c

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 192
    invoke-static {v11, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_2c
    new-array v9, v8, [I

    aput v13, v9, v7

    .line 193
    invoke-static {v11, v9}, Lk0/qt;->y0(I[I)V

    :goto_f
    and-int/lit16 v9, v4, 0xff

    if-nez v4, :cond_2d

    new-array v4, v8, [I

    aput v3, v4, v7

    .line 194
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_2d
    if-ne v4, v6, :cond_2e

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 195
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_2e
    new-array v4, v8, [I

    aput v9, v4, v7

    .line 196
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_2f
    and-int/lit16 v13, v9, 0xff

    if-nez v9, :cond_30

    new-array v9, v8, [I

    aput v3, v9, v7

    .line 197
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_30
    if-ne v9, v6, :cond_31

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 198
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_31
    new-array v9, v8, [I

    aput v13, v9, v7

    .line 199
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    :goto_10
    and-int/lit16 v9, v4, 0xff

    if-nez v4, :cond_32

    new-array v4, v8, [I

    aput v3, v4, v7

    .line 200
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_32
    if-ne v4, v6, :cond_33

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 201
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_33
    new-array v4, v8, [I

    aput v9, v4, v7

    .line 202
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    :goto_11
    const/16 v4, 0x21

    new-array v9, v8, [I

    shr-int/lit8 v10, v12, 0x7

    and-int/2addr v10, v8

    aput v10, v9, v7

    .line 203
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v9, v8, [I

    shr-int/lit8 v10, v12, 0x6

    and-int/2addr v10, v8

    aput v10, v9, v7

    .line 204
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x36

    new-array v9, v8, [I

    shr-int/lit8 v10, v12, 0x4

    and-int/2addr v10, v8

    aput v10, v9, v7

    .line 205
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x43

    new-array v9, v8, [I

    shr-int/lit8 v10, v12, 0x2

    and-int/2addr v10, v8

    aput v10, v9, v7

    .line 206
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x25

    new-array v9, v8, [I

    shr-int/lit8 v10, v12, 0x0

    and-int/2addr v10, v8

    aput v10, v9, v7

    .line 207
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    if-nez v18, :cond_34

    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v7

    const/16 v3, 0x28

    .line 208
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v7

    const/16 v3, 0x29

    .line 209
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_34
    add-int/lit8 v4, p2, 0x8

    .line 210
    aget-byte v9, v1, v4

    const/16 v11, 0xff

    and-int/2addr v9, v11

    if-nez v9, :cond_35

    new-array v4, v8, [I

    aput v3, v4, v7

    const/16 v9, 0x28

    .line 211
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_35
    const/16 v9, 0x28

    .line 212
    aget-byte v12, v1, v4

    and-int/2addr v12, v11

    if-ne v12, v6, :cond_36

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 213
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_36
    new-array v12, v8, [I

    .line 214
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v12, v7

    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    :goto_12
    add-int/lit8 v4, p2, 0xa

    .line 215
    aget-byte v9, v1, v4

    and-int/2addr v9, v11

    if-nez v9, :cond_37

    new-array v2, v8, [I

    aput v3, v2, v7

    const/16 v3, 0x29

    .line 216
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_37
    const/16 v3, 0x29

    .line 217
    aget-byte v9, v1, v4

    and-int/2addr v9, v11

    if-ne v9, v6, :cond_38

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 218
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_38
    new-array v2, v8, [I

    .line 219
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v2, v7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_13
    const/16 v2, 0x2a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 220
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v8, [I

    .line 221
    aget-byte v6, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v8, [I

    .line 222
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    const/16 v6, 0xf

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 223
    aget-byte v6, v1, v4

    const/4 v9, 0x5

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x23

    new-array v3, v8, [I

    .line 224
    aget-byte v4, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v4, v6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 225
    aget-byte v9, v1, v4

    shr-int/lit8 v6, v9, 0x6

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x55

    new-array v3, v8, [I

    .line 226
    aget-byte v6, v1, v4

    const/4 v9, 0x3

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x56

    new-array v3, v8, [I

    .line 227
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0x7

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eq v10, v8, :cond_3a

    const-string v1, "persist.fyt.temperature"

    .line 228
    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_39

    goto :goto_14

    :cond_39
    const/4 v1, 0x5

    mul-int/2addr v5, v1

    add-int/lit16 v5, v5, 0x258

    goto :goto_15

    :cond_3a
    :goto_14
    mul-int/lit8 v5, v5, 0x9

    add-int/lit16 v5, v5, 0x258

    const/high16 v1, 0x10000000

    or-int/2addr v1, v5

    and-int/lit8 v5, v1, -0x1

    .line 229
    :goto_15
    invoke-static {v5}, Lu0/d;->B3(I)V

    goto/16 :goto_17

    :cond_3b
    add-int/lit8 v2, p2, 0x2

    .line 230
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 231
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 232
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 233
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_17

    :cond_3c
    move v3, v6

    add-int/lit8 v2, p2, 0x2

    .line 234
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x3

    .line 235
    aget-byte v6, v1, v5

    and-int/2addr v6, v3

    add-int/lit8 v9, p2, 0x4

    .line 236
    aget-byte v10, v1, v9

    and-int/2addr v10, v3

    const/4 v11, 0x5

    add-int/lit8 v11, p2, 0x5

    .line 237
    aget-byte v12, v1, v11

    and-int/2addr v12, v3

    if-nez v4, :cond_3d

    if-nez v6, :cond_3d

    if-nez v10, :cond_3d

    if-nez v12, :cond_3d

    .line 238
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_16

    .line 239
    :cond_3d
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_3e

    sget v3, Ll0/c0;->h:I

    if-ne v3, v6, :cond_3e

    sget v3, Ll0/c0;->i:I

    if-ne v3, v10, :cond_3e

    sget v3, Ll0/c0;->j:I

    if-eq v3, v12, :cond_3f

    .line 240
    :cond_3e
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_3f

    .line 241
    invoke-static {v8}, Lu0/d;->C2(I)V

    const/4 v3, 0x4

    .line 242
    sput v3, Ll0/c0;->k:I

    .line 243
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 244
    :cond_3f
    :goto_16
    sput v4, Ll0/c0;->g:I

    .line 245
    sput v6, Ll0/c0;->h:I

    .line 246
    sput v10, Ll0/c0;->i:I

    .line 247
    sput v12, Ll0/c0;->j:I

    .line 248
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 249
    aget-byte v2, v1, v5

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 250
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 251
    aget-byte v1, v1, v11

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_40
    :goto_17
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/tr;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/tr;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/tr;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/tr;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/tr;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/tr;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/tr;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xc9

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
    .locals 9

    const/16 p3, 0x22

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eq p1, p3, :cond_6

    const/16 p3, 0x23

    if-eq p1, p3, :cond_5

    const/16 p3, 0x2a

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/16 v3, 0xe3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, p3, :cond_4

    const/16 p3, 0x2d

    if-eq p1, p3, :cond_3

    const/16 p3, 0x405

    if-eq p1, p3, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, v1, [I

    aput v3, p1, p4

    const/16 p3, 0x83

    aput p3, p1, v0

    aput v5, p1, v5

    .line 1
    aget p3, p2, p4

    aput p3, p1, v4

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, v1, [I

    aput v3, p1, p4

    const/16 p3, 0xe6

    aput p3, p1, v0

    aput v5, p1, v5

    .line 2
    aget p3, p2, p4

    aput p3, p1, v4

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    const/16 p1, 0xc6

    new-array p3, v0, [I

    .line 3
    aget v1, p2, p4

    aput v1, p3, p4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    new-array p1, v2, [I

    aput v3, p1, p4

    const/16 p3, 0xe5

    aput p3, p1, v0

    aput v0, p1, v5

    .line 4
    aget p2, p2, p4

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, v2, [I

    aput v3, p1, p4

    const/16 p3, 0xe4

    aput p3, p1, v0

    aput v0, p1, v5

    .line 5
    aget p2, p2, p4

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v1, [I

    aput v3, p1, p4

    const/16 p3, 0x8d

    aput p3, p1, v0

    aput v5, p1, v5

    .line 6
    aget p3, p2, p4

    aput p3, p1, v4

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v1, [I

    aput v3, p1, p4

    const/16 p3, 0x90

    aput p3, p1, v0

    aput v5, p1, v5

    .line 7
    aget p3, p2, p4

    aput p3, p1, v4

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 8
    :pswitch_6
    sget p1, Lk0/nt;->a:I

    const p3, 0x1001c8    # 1.470007E-39f

    if-eq p1, p3, :cond_0

    const p3, 0x1101c8

    if-eq p1, p3, :cond_0

    const p3, 0x8801c8

    if-eq p1, p3, :cond_0

    new-array p1, v1, [I

    aput v3, p1, p4

    const/16 p3, 0x84

    aput p3, p1, v0

    aput v5, p1, v5

    .line 9
    aget p3, p2, p4

    aput p3, p1, v4

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :cond_0
    aget p1, p2, p4

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 11
    :pswitch_7
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/tr;->h3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_8
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/tr;->f3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_9
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/tr;->g3(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_a
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/tr;->d3(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_b
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/tr;->b3(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_c
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/tr;->c3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_d
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/tr;->e3(I)V

    goto/16 :goto_0

    :pswitch_e
    new-array p1, v1, [I

    aput v3, p1, p4

    const/16 p3, 0xc5

    aput p3, p1, v0

    aput v5, p1, v5

    .line 18
    aget p2, p2, p4

    aput p2, p1, v4

    aput p4, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_f
    new-array p1, v1, [I

    aput v3, p1, p4

    const/16 p3, 0xe0

    aput p3, p1, v0

    aput v5, p1, v5

    .line 19
    aget p3, p2, p4

    aput p3, p1, v4

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, p2, v5}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    aget p1, p2, v0

    mul-int/lit16 p1, p1, 0xff

    invoke-static {}, La/f;->w()I

    move-result p3

    div-int/2addr p1, p3

    .line 22
    aget p3, p2, v5

    mul-int/lit16 p3, p3, 0xff

    invoke-static {}, La/f;->i()I

    move-result v6

    div-int/2addr p3, v6

    .line 23
    aget v6, p2, p4

    const/16 v7, 0x85

    const/4 v8, 0x6

    if-nez v6, :cond_2

    new-array p2, v8, [I

    aput v3, p2, p4

    aput v7, p2, v0

    aput v4, p2, v5

    aput p1, p2, v4

    aput p3, p2, v2

    aput v0, p2, v1

    .line 24
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    .line 25
    :cond_2
    aget p2, p2, p4

    if-ne p2, v0, :cond_8

    new-array p2, v8, [I

    aput v3, p2, p4

    aput v7, p2, v0

    aput v4, p2, v5

    aput p1, p2, v4

    aput p3, p2, v2

    aput p4, p2, v1

    .line 26
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    .line 27
    :cond_3
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/tr;->t3(I)V

    .line 28
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/tr;->s3(I)V

    goto :goto_0

    .line 29
    :cond_4
    invoke-virtual {p0, p2, v5}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, v1, [I

    aput v3, p1, p4

    const/16 p3, -0x7a

    aput p3, p1, v0

    aput v5, p1, v5

    .line 30
    aget p3, p2, p4

    aput p3, p1, v4

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    const/16 p1, 0xc4

    new-array p3, v0, [I

    .line 31
    aget p2, p2, p4

    aput p2, p3, p4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 32
    :cond_6
    aget p1, p2, p4

    if-ne p1, v0, :cond_7

    .line 33
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.syu.carinfo.air.Air_Activity_Tangdu_YL_Toyota_UI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 34
    invoke-virtual {p0}, Lk0/tr;->r3()V

    goto :goto_0

    .line 35
    :cond_7
    aget p1, p2, p4

    if-nez p1, :cond_8

    const/16 p1, 0x3e

    .line 36
    invoke-static {p1, p4}, Ll0/b0;->l0(II)V

    .line 37
    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public final a3()V
    .locals 16

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0xb

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v5, v2, :cond_1

    const/16 v2, 0x21

    if-eq v5, v11, :cond_0

    if-eq v5, v10, :cond_0

    const/16 v12, 0x9

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    aput v10, v1, v11

    aput v2, v1, v10

    .line 2
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 3
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 4
    sget v2, Lu0/b;->t3:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v9

    .line 5
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v12

    goto/16 :goto_2

    :pswitch_1
    aput v4, v1, v11

    aput v2, v1, v10

    .line 7
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 8
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 9
    sget v2, Lu0/b;->t3:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v9

    .line 10
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 11
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v12

    goto :goto_2

    :cond_0
    aput v6, v1, v11

    aput v2, v1, v10

    :goto_0
    aput v9, v1, v11

    aput v2, v1, v10

    goto :goto_2

    .line 12
    :cond_1
    sget v5, Lw0/d;->i:I

    .line 13
    sget v12, Lw0/d;->j:I

    aput v2, v1, v11

    aput v2, v1, v10

    .line 14
    sget v13, Lw0/d;->h:I

    const/high16 v14, 0x10000

    const/4 v15, 0x4

    if-ne v13, v14, :cond_2

    aput v3, v1, v15

    goto :goto_1

    :cond_2
    const v0, 0x10001

    if-ne v13, v0, :cond_3

    aput v2, v1, v15

    goto :goto_1

    :cond_3
    const v0, 0x10002

    if-ne v13, v0, :cond_4

    aput v11, v1, v15

    goto :goto_1

    :cond_4
    if-nez v13, :cond_5

    const/16 v0, 0x10

    aput v0, v1, v15

    goto :goto_1

    :cond_5
    if-ne v13, v2, :cond_6

    const/16 v0, 0x11

    aput v0, v1, v15

    :cond_6
    :goto_1
    and-int/lit16 v0, v5, 0xff

    aput v0, v1, v7

    shr-int/lit8 v0, v5, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v8

    if-lt v12, v14, :cond_7

    sub-int/2addr v12, v14

    .line 15
    :cond_7
    rem-int/lit8 v0, v12, 0x6

    if-nez v0, :cond_8

    if-eqz v12, :cond_8

    aput v8, v1, v9

    goto :goto_2

    :cond_8
    aput v0, v1, v9

    .line 16
    :goto_2
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_9

    aput v3, v1, v11

    aput v3, v1, v10

    :cond_9
    new-array v0, v6, [I

    const/16 v2, 0xe3

    aput v2, v0, v3

    const/16 v2, 0xa

    :goto_3
    if-ge v3, v2, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 17
    aget v3, v1, v3

    aput v3, v0, v4

    move v3, v4

    goto :goto_3

    .line 18
    :cond_a
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/tr;->J:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    aput p1, v0, v2

    const/16 p1, 0xb2

    .line 3
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/tr;->J:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final c3(I)V
    .locals 6

    .line 1
    sput p1, Lk0/tr;->H:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x84

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v5, 0x3

    aput v2, v1, v5

    const/4 v2, 0x4

    aput p1, v1, v2

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v4, [I

    aput p1, v1, v3

    const/16 p1, 0xb1

    .line 3
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/tr;->H:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final d3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/tr;->D:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/4 v4, 0x4

    aput v4, v0, v1

    aput p1, v0, v4

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    aput p1, v0, v2

    const/16 p1, 0xb3

    .line 3
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v3, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/tr;->D:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final e3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/tr;->G:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    aput p1, v0, v2

    const/16 p1, 0xb0

    .line 3
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/tr;->G:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final f3(I)V
    .locals 6

    .line 1
    sput p1, Lk0/tr;->E:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v4, 0x3

    const/4 v5, 0x6

    aput v5, v0, v4

    const/4 v4, 0x4

    aput p1, v0, v4

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    aput p1, v0, v2

    const/16 p1, 0xb5

    .line 3
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/tr;->E:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final g3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/tr;->F:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x84

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v0, 0x4

    aput p1, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v4, [I

    aput p1, v0, v3

    const/16 p1, 0xb4

    .line 3
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v2, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/tr;->F:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    invoke-virtual {p1, v2, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final h3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/tr;->I:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/4 v4, 0x7

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    aput p1, v0, v2

    const/16 p1, 0xb6

    .line 3
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    const/4 v0, 0x6

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/tr;->I:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final r3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.air.Air_Activity_Tangdu_YL_Toyota_UI"

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

.method public final s3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xc8

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/tr;->C:I

    .line 3
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/tr;->C:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/tr;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.height"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    sget v0, Lk0/tr;->C:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final t3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xc7

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/tr;->B:I

    .line 3
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/tr;->B:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/tr;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.width"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/tr;->g:Lo1/g0;

    sget v0, Lk0/tr;->B:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
