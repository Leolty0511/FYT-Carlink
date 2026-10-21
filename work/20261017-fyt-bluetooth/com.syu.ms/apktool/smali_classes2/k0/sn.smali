.class public Lk0/sn;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:F

.field public m:I

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:I

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/sn;->c:I

    const/16 v1, 0x11

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

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/sn;->d:[[I

    .line 4
    new-instance v1, Lk0/sn$d;

    invoke-direct {v1, p0}, Lk0/sn$d;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lk0/sn$e;

    invoke-direct {v1, p0}, Lk0/sn$e;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/sn$f;

    invoke-direct {v1, p0}, Lk0/sn$f;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/sn$g;

    invoke-direct {v1, p0}, Lk0/sn$g;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lk0/sn$h;

    invoke-direct {v1, p0}, Lk0/sn$h;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lk0/sn$i;

    invoke-direct {v1, p0}, Lk0/sn$i;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/sn$j;

    invoke-direct {v1, p0}, Lk0/sn$j;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->k:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lk0/sn;->l:F

    const/16 v1, 0xff

    .line 12
    iput v1, p0, Lk0/sn;->m:I

    .line 13
    iput v1, p0, Lk0/sn;->n:I

    .line 14
    new-instance v1, Lk0/sn$k;

    invoke-direct {v1, p0}, Lk0/sn$k;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/sn$l;

    invoke-direct {v1, p0}, Lk0/sn$l;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v1, Lk0/sn$a;

    invoke-direct {v1, p0}, Lk0/sn$a;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->q:Ljava/lang/Runnable;

    .line 17
    iput v0, p0, Lk0/sn;->r:I

    .line 18
    new-instance v1, Lk0/sn$b;

    invoke-direct {v1, p0}, Lk0/sn$b;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->s:Ljava/lang/Runnable;

    .line 19
    new-instance v1, Lk0/sn$c;

    invoke-direct {v1, p0}, Lk0/sn$c;-><init>(Lk0/sn;)V

    iput-object v1, p0, Lk0/sn;->t:Ljava/lang/Runnable;

    .line 20
    iput v0, p0, Lk0/sn;->u:I

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
        0x5
        0x1d
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0x11
        0x1f
    .end array-data

    :array_b
    .array-data 4
        0x12
        0x1e
    .end array-data

    :array_c
    .array-data 4
        0x13
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x14
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x15
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x87
        0x0
    .end array-data
.end method

.method public static synthetic c3(Lk0/sn;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/sn;->m3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic d3(Lk0/sn;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/sn;->l3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic e3(Lk0/sn;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/sn;->l:F

    return p0
.end method

.method public static synthetic f3(Lk0/sn;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/sn;->l:F

    return p1
.end method

.method public static synthetic g3(Lk0/sn;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sn;->n:I

    return p0
.end method

.method public static synthetic h3(Lk0/sn;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/sn;->n:I

    return p1
.end method

.method public static synthetic i3(Lk0/sn;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sn;->m:I

    return p0
.end method

.method public static synthetic j3(Lk0/sn;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/sn;->m:I

    return p1
.end method

.method public static synthetic k3(Lk0/sn;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/sn;->a3()V

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/sn;->s:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/sn;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/sn;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/sn;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/sn;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lk0/sn;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/sn;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/sn;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/sn;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->c:Lo1/y;

    iget-object v1, p0, Lk0/sn;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/sn;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/sn;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lk0/sn;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lo1/h;->d:Lo1/y;

    iget-object v1, p0, Lk0/sn;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lo1/h;->e:Lo1/y;

    iget-object v1, p0, Lk0/sn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    iput v2, v0, Lk0/mt;->e:I

    .line 18
    iput v2, v0, Lk0/mt;->f:I

    .line 19
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 20
    iput v1, v0, Lk0/mt;->j:I

    .line 21
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6d

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_27

    const/16 v3, -0x6b

    const/16 v7, 0xf

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v2, v3, :cond_26

    const/16 v3, 0x30

    if-eq v2, v3, :cond_25

    const/16 v3, 0x40

    const/16 v12, 0x35

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x4d

    const/16 v15, 0xff

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x50

    const/16 v14, 0x12

    if-eq v2, v3, :cond_17

    const/16 v3, 0x68

    if-eq v2, v3, :cond_16

    const/16 v13, 0x6a

    if-eq v2, v13, :cond_15

    const/16 v13, 0x28

    if-eq v2, v13, :cond_13

    const/16 v13, 0x29

    if-eq v2, v13, :cond_12

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_c

    :pswitch_0
    const/16 v2, 0x62

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 2
    aget-byte v12, v1, v7

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v6

    aput v12, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v6, [I

    .line 3
    aget-byte v12, v1, v7

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v6

    aput v12, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v6, [I

    .line 4
    aget-byte v12, v1, v7

    shr-int/lit8 v8, v12, 0x5

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v6, [I

    .line 5
    aget-byte v8, v1, v7

    shr-int/2addr v8, v9

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v6, [I

    .line 6
    aget-byte v8, v1, v7

    shr-int/2addr v8, v10

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v6, [I

    .line 7
    aget-byte v8, v1, v7

    shr-int/2addr v8, v11

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 8
    aget-byte v4, v1, v7

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v2, v5

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    .line 9
    aget-byte v4, v1, v7

    shr-int/2addr v4, v5

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 10
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 11
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 13
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_1
    const/16 v2, 0x78

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 14
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v6, [I

    .line 15
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v6, [I

    .line 16
    aget-byte v7, v1, v4

    shr-int/2addr v7, v8

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v6, [I

    .line 17
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v6, [I

    .line 18
    aget-byte v7, v1, v4

    shr-int/2addr v7, v10

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v6, [I

    .line 19
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v6, [I

    .line 20
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_2
    const/16 v2, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 21
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v6, [I

    .line 22
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 23
    aget-byte v3, v1, v2

    and-int/2addr v3, v15

    add-int/lit8 v4, p2, 0x3

    .line 24
    aget-byte v7, v1, v4

    and-int/2addr v7, v15

    add-int/lit8 v10, p2, 0x4

    .line 25
    aget-byte v11, v1, v10

    and-int/2addr v11, v15

    add-int/lit8 v8, p2, 0x5

    .line 26
    aget-byte v12, v1, v8

    and-int/2addr v12, v15

    if-nez v3, :cond_0

    if-nez v7, :cond_0

    if-nez v11, :cond_0

    if-nez v12, :cond_0

    .line 27
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 28
    :cond_0
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_1

    sget v5, Ll0/c0;->h:I

    if-ne v5, v7, :cond_1

    sget v5, Ll0/c0;->i:I

    if-ne v5, v11, :cond_1

    sget v5, Ll0/c0;->j:I

    if-eq v5, v12, :cond_2

    .line 29
    :cond_1
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_2

    .line 30
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 31
    sput v9, Ll0/c0;->k:I

    .line 32
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 33
    :cond_2
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 34
    sput v7, Ll0/c0;->h:I

    .line 35
    sput v11, Ll0/c0;->i:I

    .line 36
    sput v12, Ll0/c0;->j:I

    .line 37
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->d1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 38
    aget-byte v2, v1, v4

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->d1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 39
    aget-byte v2, v1, v10

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->d1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 40
    aget-byte v1, v1, v8

    and-int/2addr v1, v15

    invoke-static {v1}, Ll0/c0;->d1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->d1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 42
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->d1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 43
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->d1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 44
    aget-byte v1, v1, v2

    and-int/2addr v1, v15

    invoke-static {v1}, Ll0/c0;->d1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_2

    move v3, v5

    :goto_1
    move v13, v3

    :goto_2
    move/from16 v16, v13

    goto :goto_3

    :pswitch_6
    move v3, v6

    goto :goto_1

    :pswitch_7
    move/from16 v16, v5

    move v3, v6

    move v13, v3

    goto :goto_3

    :pswitch_8
    move v13, v5

    move/from16 v16, v13

    move v3, v6

    goto :goto_3

    :pswitch_9
    move v13, v5

    move v3, v6

    move/from16 v16, v3

    goto :goto_3

    :pswitch_a
    move v3, v5

    move v13, v3

    move/from16 v16, v6

    goto :goto_3

    :pswitch_b
    move v3, v5

    move v13, v6

    goto :goto_2

    :pswitch_c
    move v3, v5

    move/from16 v16, v3

    move v13, v6

    :goto_3
    new-array v8, v6, [I

    aput v3, v8, v5

    .line 46
    invoke-static {v14, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v8, v6, [I

    aput v13, v8, v5

    .line 47
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v8, v6, [I

    aput v16, v8, v5

    .line 48
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v8, v6, [I

    .line 49
    aget-byte v13, v1, v2

    shr-int/2addr v13, v9

    and-int/2addr v13, v6

    aput v13, v8, v5

    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    .line 50
    aget-byte v3, v1, v2

    shr-int/2addr v3, v11

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    const/16 v3, 0xc

    new-array v8, v6, [I

    aput v6, v8, v5

    .line 51
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_3
    const/16 v3, 0xc

    new-array v8, v6, [I

    aput v5, v8, v5

    .line 52
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v3, 0xb

    new-array v8, v6, [I

    .line 53
    aget-byte v13, v1, v2

    shr-int/2addr v13, v6

    and-int/2addr v13, v6

    aput v13, v8, v5

    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    .line 54
    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v3, v5

    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 55
    aget-byte v13, v1, v8

    shr-int/lit8 v9, v13, 0x4

    and-int/2addr v9, v7

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 56
    aget-byte v3, v1, v8

    shr-int/2addr v3, v10

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v6, [I

    .line 57
    aget-byte v9, v1, v8

    shr-int/2addr v9, v11

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v6, [I

    .line 58
    aget-byte v9, v1, v8

    shr-int/2addr v9, v6

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v6, [I

    .line 59
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x4

    .line 60
    aget-byte v9, v1, v8

    shr-int/2addr v9, v6

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 61
    aget-byte v2, v1, v8

    shr-int/2addr v2, v11

    and-int/lit8 v2, v2, 0x3f

    const/4 v3, -0x1

    if-nez v2, :cond_4

    new-array v2, v6, [I

    aput v3, v2, v5

    const/16 v9, 0x1b

    .line 62
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_4
    const/16 v9, 0x1b

    if-gt v2, v7, :cond_5

    new-array v2, v6, [I

    const/4 v10, -0x2

    aput v10, v2, v5

    .line 63
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_5
    const/16 v10, 0x31

    if-lt v2, v10, :cond_6

    new-array v2, v6, [I

    const/4 v10, -0x3

    aput v10, v2, v5

    .line 64
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_6
    new-array v2, v6, [I

    .line 65
    aget-byte v10, v1, v8

    shr-int/2addr v10, v11

    and-int/lit8 v10, v10, 0x3f

    aput v10, v2, v5

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 v2, p2, 0x5

    .line 66
    aget-byte v9, v1, v2

    shr-int/2addr v9, v11

    and-int/lit8 v9, v9, 0x3f

    if-nez v9, :cond_7

    new-array v2, v6, [I

    aput v3, v2, v5

    const/16 v10, 0x1c

    .line 67
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_7
    const/16 v10, 0x1c

    if-gt v9, v7, :cond_8

    new-array v2, v6, [I

    const/4 v7, -0x2

    aput v7, v2, v5

    .line 68
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_8
    const/16 v7, 0x31

    if-lt v9, v7, :cond_9

    new-array v2, v6, [I

    const/4 v7, -0x3

    aput v7, v2, v5

    .line 69
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_9
    new-array v7, v6, [I

    .line 70
    aget-byte v2, v1, v2

    shr-int/2addr v2, v11

    and-int/lit8 v2, v2, 0x3f

    aput v2, v7, v5

    invoke-static {v10, v7}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v2, p2, 0x6

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    if-eqz v2, :cond_c

    if-ne v2, v15, :cond_a

    goto :goto_7

    .line 72
    :cond_a
    aget-byte v1, v1, v8

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_b

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x258

    const/high16 v1, 0x10000000

    or-int/2addr v1, v2

    and-int/2addr v1, v3

    .line 73
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_c

    :cond_b
    const/4 v1, 0x5

    mul-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x258

    .line 74
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto/16 :goto_c

    .line 75
    :cond_c
    :goto_7
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto/16 :goto_c

    :pswitch_d
    add-int/lit8 v2, p2, 0x2

    .line 76
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 77
    aget-byte v1, v1, v3

    and-int/2addr v2, v15

    .line 78
    iput v2, v0, Lk0/sn;->c:I

    move v2, v5

    .line 79
    :goto_8
    iget-object v3, v0, Lk0/sn;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_e

    .line 80
    iget v4, v0, Lk0/sn;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_d

    if-eqz v4, :cond_e

    .line 81
    iput v2, v0, Lk0/sn;->b:I

    goto :goto_9

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 82
    :cond_e
    :goto_9
    iget v4, v0, Lk0/sn;->c:I

    const/16 v7, 0x14

    if-eq v4, v7, :cond_11

    and-int/2addr v1, v15

    if-ne v1, v6, :cond_f

    .line 83
    array-length v1, v3

    if-ge v2, v1, :cond_28

    .line 84
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_f
    if-nez v1, :cond_28

    .line 85
    iget v1, v0, Lk0/sn;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_10

    if-eq v1, v15, :cond_10

    .line 86
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 87
    :cond_10
    iput v15, v0, Lk0/sn;->b:I

    goto/16 :goto_c

    :cond_11
    and-int/2addr v1, v15

    if-ne v1, v6, :cond_28

    const-string v1, "com.syu.carlink"

    .line 88
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "com.syu.carlink"

    .line 89
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_12
    add-int/lit8 v2, p2, 0x3

    .line 90
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x1518

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_c

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 91
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 92
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_14

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 93
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 94
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_14
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 95
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 96
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_a
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 97
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 98
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/4 v3, 0x5

    .line 99
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 100
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_15
    add-int/lit8 v2, p2, 0x3

    .line 101
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v15

    or-int/2addr v1, v2

    const/16 v2, 0x407

    new-array v3, v6, [I

    const v4, 0xffff

    and-int/2addr v1, v4

    aput v1, v3, v5

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_16
    add-int/lit8 v2, p2, 0x3

    .line 103
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v15

    or-int/2addr v1, v2

    const/16 v2, 0x408

    new-array v3, v6, [I

    const v4, 0xffff

    and-int/2addr v1, v4

    aput v1, v3, v5

    .line 104
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 105
    aget-byte v1, v1, v2

    if-eq v1, v6, :cond_1a

    const/16 v2, 0x1a

    if-eq v1, v11, :cond_19

    if-eq v1, v10, :cond_18

    goto/16 :goto_c

    .line 106
    :cond_18
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 107
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 108
    :cond_19
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 109
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 110
    :cond_1a
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    .line 111
    invoke-static {v14, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_1b
    const/16 v2, 0x93

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 112
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v7, 0xff00

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 113
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v6, 0xff00

    and-int/2addr v4, v6

    const/4 v6, 0x5

    add-int/lit8 v6, p2, 0x5

    aget-byte v1, v1, v6

    and-int/2addr v1, v15

    or-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v1, v1, v2

    packed-switch v1, :pswitch_data_3

    :pswitch_e
    goto/16 :goto_c

    :pswitch_f
    const/16 v1, 0x9

    .line 115
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 116
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 117
    :pswitch_10
    sget v1, Lu0/b;->D:I

    if-eq v1, v6, :cond_1d

    .line 118
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_c

    .line 119
    :cond_1d
    sget v1, Lw0/d;->h:I

    if-eqz v1, :cond_21

    if-ne v1, v6, :cond_1e

    goto :goto_b

    :cond_1e
    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_1f

    new-array v1, v6, [I

    const/16 v2, 0x1c

    aput v2, v1, v5

    .line 120
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_c

    :cond_1f
    const/16 v2, 0x1c

    const v3, 0x10001

    if-ne v1, v3, :cond_20

    new-array v1, v6, [I

    const/16 v3, 0x1d

    aput v3, v1, v5

    .line 121
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_c

    :cond_20
    const v3, 0x10002

    if-ne v1, v3, :cond_28

    new-array v1, v6, [I

    const/16 v3, 0x1b

    aput v3, v1, v5

    .line 122
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_c

    :cond_21
    :goto_b
    const/16 v2, 0x1c

    const/16 v3, 0x1b

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 123
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_c

    .line 124
    :pswitch_11
    invoke-static {v12, v5}, Ll0/b0;->l0(II)V

    .line 125
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :pswitch_12
    const/16 v1, 0x4c

    .line 126
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 127
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :pswitch_13
    const/16 v1, 0x36

    .line 128
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 129
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 130
    :pswitch_14
    sget v1, Lu0/b;->D:I

    if-eq v1, v6, :cond_22

    .line 131
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_c

    :cond_22
    new-array v1, v6, [I

    const/16 v2, 0x1c

    aput v2, v1, v5

    .line 132
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_c

    :pswitch_15
    const/16 v2, 0x1c

    .line 133
    sget v1, Lu0/b;->D:I

    if-eq v1, v6, :cond_23

    .line 134
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_c

    :cond_23
    new-array v1, v6, [I

    const/16 v3, 0x1b

    aput v3, v1, v5

    .line 135
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_c

    :pswitch_16
    const/16 v2, 0x1c

    .line 136
    sget v1, Lu0/b;->D:I

    if-eq v1, v6, :cond_24

    .line 137
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_c

    :cond_24
    new-array v1, v6, [I

    const/16 v3, 0x1e

    aput v3, v1, v5

    .line 138
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_c

    .line 139
    :cond_25
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_26
    const/16 v2, 0x7f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 140
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v6, [I

    .line 141
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v6, [I

    .line 142
    aget-byte v4, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v4, v8

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 143
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v6, [I

    .line 144
    aget-byte v8, v1, v4

    const/4 v12, 0x5

    shr-int/2addr v8, v12

    and-int/2addr v8, v10

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v6, [I

    .line 145
    aget-byte v8, v1, v4

    shr-int/2addr v8, v9

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v6, [I

    .line 146
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 147
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v6, [I

    .line 148
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v6, [I

    .line 149
    aget-byte v8, v1, v4

    shr-int/2addr v8, v9

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v6, [I

    .line 150
    aget-byte v8, v1, v4

    shr-int/2addr v8, v10

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v6, [I

    .line 151
    aget-byte v8, v1, v4

    shr-int/2addr v8, v11

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v6, [I

    .line 152
    aget-byte v8, v1, v4

    shr-int/2addr v8, v6

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v6, [I

    .line 153
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v6, [I

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 154
    aget-byte v8, v1, v4

    shr-int/2addr v8, v9

    and-int/2addr v8, v7

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v6, [I

    .line 155
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_27
    const/16 v2, 0x6f

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 156
    aget-byte v7, v1, v7

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 157
    aget-byte v7, v1, v7

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 158
    aget-byte v7, v1, v7

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 159
    aget-byte v7, v1, v7

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 160
    aget-byte v7, v1, v7

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 161
    aget-byte v7, v1, v7

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 162
    aget-byte v7, v1, v7

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x9

    .line 163
    aget-byte v7, v1, v7

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 164
    aget-byte v1, v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_28
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_e
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/sn;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/sn;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/sn;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/sn;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/sn;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/sn;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/sn;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/sn;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/sn;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/sn;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lw0/e;->c:Lo1/y;

    iget-object v1, p0, Lk0/sn;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/sn;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/sn;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lk0/sn;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lo1/h;->d:Lo1/y;

    iget-object v1, p0, Lk0/sn;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lo1/h;->e:Lo1/y;

    iget-object v1, p0, Lk0/sn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x97

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

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/16 v5, 0xa

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, -0x23

    aput p3, p1, v4

    aput v3, p1, v3

    .line 1
    aget p3, p2, v2

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    .line 2
    aget p1, p2, v2

    if-ne p1, v3, :cond_6

    .line 3
    iget p1, p0, Lk0/sn;->u:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/sn;->u:I

    const/16 p2, 0x95

    new-array p3, v4, [I

    aput p1, p3, v2

    .line 4
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 5
    iget p1, p0, Lk0/sn;->u:I

    if-le p1, v3, :cond_6

    .line 6
    iput v2, p0, Lk0/sn;->u:I

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v2

    const/16 p3, 0xe1

    aput p3, p1, v4

    aput p4, p1, v3

    .line 7
    aget p3, p2, v2

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v3

    aput p3, p1, p4

    const/4 p3, 0x6

    aget p4, p2, v1

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0xdd

    aput p3, p1, v4

    aput v3, p1, v3

    .line 8
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0xde

    aput p3, p1, v4

    aput v3, p1, v3

    .line 9
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0xdf

    aput p3, p1, v4

    aput v3, p1, v3

    .line 10
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v3, p1, v3

    .line 11
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final a3()V
    .locals 14

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-virtual {p0, v1}, Lk0/sn;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/16 v8, 0x9

    const/4 v9, 0x6

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    const/4 v11, 0x3

    if-eq v5, v11, :cond_2

    if-eq v5, v10, :cond_0

    if-eq v5, v4, :cond_2

    if-eq v5, v8, :cond_2

    goto/16 :goto_2

    .line 3
    :cond_0
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_1

    aput v3, v1, v10

    .line 4
    sget v2, Lo0/e;->B:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 5
    sget v2, Lo0/e;->C:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 6
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v7

    .line 7
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 8
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto/16 :goto_2

    .line 9
    :cond_1
    sget v2, Lo0/e;->C:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 10
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 11
    sget v2, Lo0/e;->r:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 12
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 13
    :cond_2
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 14
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 15
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 16
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 17
    :cond_3
    sget v5, Lw0/d;->i:I

    .line 18
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 19
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_4

    aput v2, v1, v10

    goto :goto_0

    :cond_4
    const v13, 0x10001

    if-ne v12, v13, :cond_5

    const/4 v2, 0x2

    aput v2, v1, v10

    goto :goto_0

    :cond_5
    const v13, 0x10002

    if-ne v12, v13, :cond_6

    aput v3, v1, v10

    goto :goto_0

    :cond_6
    const/16 v13, 0x10

    if-nez v12, :cond_7

    aput v13, v1, v10

    goto :goto_0

    :cond_7
    if-ne v12, v2, :cond_8

    aput v13, v1, v10

    :cond_8
    :goto_0
    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v6

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 20
    rem-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_9

    if-eqz v11, :cond_9

    aput v9, v1, v7

    goto :goto_1

    :cond_9
    aput v2, v1, v7

    :goto_1
    aput v3, v1, v4

    aput v3, v1, v8

    :goto_2
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 21
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 22
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3([I)V
    .locals 9

    if-eqz p1, :cond_6

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x7

    const/16 v3, 0xb

    const/16 v4, 0x30

    const/4 v5, 0x1

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_3

    .line 4
    aput v7, p1, v8

    .line 5
    aput v7, p1, v1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xd

    .line 6
    aput v0, p1, v8

    const/16 v0, 0x22

    .line 7
    aput v0, p1, v1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    .line 8
    aput v0, p1, v8

    .line 9
    aput v6, p1, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 10
    aput v0, p1, v8

    const/16 v0, 0x12

    .line 11
    aput v0, p1, v1

    goto :goto_0

    .line 12
    :pswitch_3
    aput v1, p1, v8

    .line 13
    aput v4, p1, v1

    goto :goto_0

    .line 14
    :pswitch_4
    aput v2, p1, v8

    .line 15
    aput v4, p1, v1

    goto :goto_0

    .line 16
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    .line 17
    aput v8, p1, v8

    .line 18
    aput v6, p1, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    if-ne v0, v8, :cond_2

    .line 19
    aput v2, p1, v8

    .line 20
    aput v6, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_4

    .line 21
    aput v2, p1, v8

    .line 22
    aput v6, p1, v1

    goto :goto_0

    .line 23
    :pswitch_6
    aput v3, p1, v8

    .line 24
    aput v6, p1, v1

    goto :goto_0

    .line 25
    :pswitch_7
    aput v3, p1, v8

    .line 26
    aput v7, p1, v1

    goto :goto_0

    .line 27
    :pswitch_8
    aput v5, p1, v8

    .line 28
    aput v5, p1, v1

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_4

    .line 29
    aput v2, p1, v8

    .line 30
    aput v4, p1, v1

    :cond_4
    :goto_0
    const-string v0, "sys.carlink.type"

    .line 31
    invoke-static {v0, v7}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "com.syu.carlink"

    .line 32
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Lu0/b;->D:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_5

    const/16 v2, 0xc

    if-ne v0, v2, :cond_6

    :cond_5
    const/16 v0, 0xf

    .line 33
    aput v0, p1, v8

    .line 34
    aput v7, p1, v1

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final l3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_1

    .line 1
    sget p2, Lu0/b;->D:I

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    const-string p2, "  "

    goto :goto_0

    :cond_0
    const-string p2, "Unkown"

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x4

    .line 3
    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    .line 4
    aput v3, v2, v4

    const/4 v3, 0x1

    .line 5
    aput p1, v2, v3

    add-int/2addr v1, v3

    const/4 p1, 0x2

    .line 6
    aput v1, v2, p1

    const/4 p1, 0x3

    const/16 v1, 0x10

    .line 7
    aput v1, v2, p1

    :goto_1
    if-ge v4, v0, :cond_3

    .line 8
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v1, v4, 0x1

    add-int/lit8 v3, v1, 0x4

    and-int/lit16 v5, p1, 0xff

    .line 9
    aput v5, v2, v3

    add-int/lit8 v1, v1, 0x5

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 10
    aput p1, v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final m3(ILjava/lang/String;)V
    .locals 10

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/16 v2, -0x3b

    const/16 v3, -0x1d

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez p2, :cond_0

    new-array p2, v5, [I

    aput v3, p2, v4

    aput v2, p2, v7

    aput v6, p2, v6

    int-to-byte p1, p1

    aput p1, p2, v1

    aput v7, p2, v0

    .line 1
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 3
    array-length v9, v8

    add-int/2addr v9, v5

    new-array v9, v9, [I

    .line 4
    aput v3, v9, v4

    .line 5
    aput v2, v9, v7

    .line 6
    array-length v2, v8

    add-int/2addr v2, v6

    int-to-byte v2, v2

    aput v2, v9, v6

    int-to-byte p1, p1

    .line 7
    aput p1, v9, v1

    .line 8
    aput v7, v9, v0

    .line 9
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_1

    add-int p1, v5, v4

    .line 10
    aget-char v0, v8, v4

    int-to-byte v0, v0

    aput v0, v9, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v9}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method
