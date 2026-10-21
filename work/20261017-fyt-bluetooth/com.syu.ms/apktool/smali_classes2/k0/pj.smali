.class public Lk0/pj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:B

.field public k:Z

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:J

.field public o:I

.field public p:I

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:B

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/pj;->c:I

    const/16 v1, 0xa

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v8, 0x4

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v9, 0x5

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v10, 0x6

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v11, 0x7

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v12, 0x8

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v13, 0x9

    aput-object v4, v2, v13

    iput-object v2, p0, Lk0/pj;->d:[[I

    .line 4
    iput v0, p0, Lk0/pj;->f:I

    const/16 v2, 0x11

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_a

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    const/16 v4, 0xb

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    const/16 v3, 0x10

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/pj;->g:[[I

    .line 6
    iput v0, p0, Lk0/pj;->h:I

    .line 7
    iput v5, p0, Lk0/pj;->i:I

    .line 8
    iput-byte v5, p0, Lk0/pj;->j:B

    .line 9
    iput-boolean v5, p0, Lk0/pj;->k:Z

    .line 10
    new-instance v0, Lk0/pj$a;

    invoke-direct {v0, p0}, Lk0/pj$a;-><init>(Lk0/pj;)V

    iput-object v0, p0, Lk0/pj;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/pj$b;

    invoke-direct {v0, p0}, Lk0/pj$b;-><init>(Lk0/pj;)V

    iput-object v0, p0, Lk0/pj;->m:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lk0/pj;->n:J

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lk0/pj;->o:I

    .line 14
    iput v5, p0, Lk0/pj;->p:I

    .line 15
    iput v5, p0, Lk0/pj;->q:I

    .line 16
    new-instance v0, Lk0/pj$c;

    invoke-direct {v0, p0}, Lk0/pj$c;-><init>(Lk0/pj;)V

    iput-object v0, p0, Lk0/pj;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/pj$d;

    invoke-direct {v0, p0}, Lk0/pj$d;-><init>(Lk0/pj;)V

    iput-object v0, p0, Lk0/pj;->s:Ljava/lang/Runnable;

    .line 18
    iput-byte v9, p0, Lk0/pj;->t:B

    .line 19
    new-instance v0, Lk0/pj$e;

    invoke-direct {v0, p0}, Lk0/pj$e;-><init>(Lk0/pj;)V

    iput-object v0, p0, Lk0/pj;->u:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lk0/pj$f;

    invoke-direct {v0, p0}, Lk0/pj$f;-><init>(Lk0/pj;)V

    iput-object v0, p0, Lk0/pj;->v:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_f
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x17
        0x22
    .end array-data

    :array_11
    .array-data 4
        0x18
        0x23
    .end array-data

    :array_12
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_13
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_14
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x2e
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_17
    .array-data 4
        0x31
        0x19
    .end array-data

    :array_18
    .array-data 4
        0x32
        0x9
    .end array-data

    :array_19
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_1a
    .array-data 4
        0x46
        0x8
    .end array-data
.end method

.method public static a3(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic b3(Lk0/pj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/pj;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/pj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/pj;->n:J

    return-wide v0
.end method

.method public static synthetic d3(Lk0/pj;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/pj;->n:J

    return-wide p1
.end method

.method public static synthetic e3(Lk0/pj;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/pj;->o:I

    return p0
.end method

.method public static synthetic f3(Lk0/pj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/pj;->o:I

    return p1
.end method

.method public static synthetic g3(Lk0/pj;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/pj;->i3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic h3(Lk0/pj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/pj;->v:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/pj;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/pj;->u:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget v0, Lk0/nt;->a:I

    const-string v1, "com.syu.canbus"

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    .line 8
    iput v3, v0, Lk0/mt;->o:I

    .line 9
    sget-object v0, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v1, Ll0/h0;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v1, Ll0/h0;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->a:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->s:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->t:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/pj;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/pj;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 19
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 20
    iput v2, v0, Lk0/mt;->e:I

    .line 21
    iput v2, v0, Lk0/mt;->f:I

    .line 22
    iput v2, v0, Lk0/mt;->g:I

    .line 23
    iput v3, v0, Lk0/mt;->o:I

    .line 24
    :goto_0
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_1

    .line 25
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 26
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3701bb -> :sswitch_0
        0x3801bb -> :sswitch_0
        0x6401bb -> :sswitch_0
        0x6501bb -> :sswitch_0
        0x6801bb -> :sswitch_0
        0x7901bb -> :sswitch_0
        0x7a01bb -> :sswitch_0
        0x7b01bb -> :sswitch_0
        0xbe01bb -> :sswitch_0
        0xbf01bb -> :sswitch_0
        0xc001bb -> :sswitch_0
        0xc101bb -> :sswitch_0
        0xc201bb -> :sswitch_0
        0xc301bb -> :sswitch_0
        0xc401bb -> :sswitch_0
        0xc501bb -> :sswitch_0
        0xc601bb -> :sswitch_0
        0xc701bb -> :sswitch_0
        0xc801bb -> :sswitch_0
        0xc901bb -> :sswitch_0
        0xca01bb -> :sswitch_0
        0xcb01bb -> :sswitch_0
        0xcc01bb -> :sswitch_0
        0xcd01bb -> :sswitch_0
        0xce01bb -> :sswitch_0
        0xcf01bb -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x6601bc -> :sswitch_1
        0x6701bc -> :sswitch_1
        0x6801bc -> :sswitch_1
        0x6901bc -> :sswitch_1
        0x7d01bb -> :sswitch_1
        0x7e01bb -> :sswitch_1
        0x7f01bb -> :sswitch_1
        0x8001bb -> :sswitch_1
        0x8101bb -> :sswitch_1
        0x8201bb -> :sswitch_1
        0xb101bc -> :sswitch_1
        0xb201bc -> :sswitch_1
        0xb301bc -> :sswitch_1
        0xb401bc -> :sswitch_1
        0xb501bc -> :sswitch_1
        0xb601bc -> :sswitch_1
        0xd701bb -> :sswitch_1
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x6c

    const/16 v4, 0x80

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_38

    const/16 v3, -0x5a

    const/16 v9, 0x8

    const/4 v10, 0x3

    if-eq v2, v3, :cond_37

    const/16 v3, -0x3f

    const/4 v13, 0x5

    const/4 v14, 0x4

    if-eq v2, v3, :cond_36

    const/16 v3, -0x10

    if-eq v2, v3, :cond_35

    const/16 v3, 0x31

    const/16 v15, 0x1a

    const/16 v11, 0xc

    const/16 v12, 0x10

    const/16 v4, 0x12

    if-eq v2, v3, :cond_25

    const/16 v3, 0x41

    if-eq v2, v3, :cond_21

    const/16 v3, 0x48

    if-eq v2, v3, :cond_20

    const/16 v3, 0x76

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x79

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x21

    if-eq v2, v3, :cond_19

    const/16 v3, 0x22

    if-eq v2, v3, :cond_e

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1a

    :pswitch_0
    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v12

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v12

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_1
    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 6
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 7
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 8
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v12

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 9
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v12

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_2
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 10
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 11
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v12

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x8

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_3
    add-int/lit8 v2, p2, 0x4

    .line 13
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 14
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 15
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 16
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 17
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 18
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 19
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 20
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 21
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_4
    add-int/lit8 v2, p2, 0x4

    .line 22
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 23
    aget-byte v3, v1, v3

    and-int/2addr v2, v6

    .line 24
    iput v2, v0, Lk0/pj;->c:I

    move v2, v7

    .line 25
    :goto_1
    iget-object v5, v0, Lk0/pj;->d:[[I

    array-length v12, v5

    if-ge v2, v12, :cond_2

    .line 26
    iget v12, v0, Lk0/pj;->c:I

    aget-object v14, v5, v2

    aget v14, v14, v7

    if-ne v12, v14, :cond_1

    if-eqz v12, :cond_2

    .line 27
    iput v2, v0, Lk0/pj;->b:I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28
    :cond_2
    :goto_2
    iget v12, v0, Lk0/pj;->c:I

    if-eqz v12, :cond_9

    if-eq v12, v13, :cond_6

    if-eq v12, v11, :cond_5

    and-int/2addr v3, v6

    if-ne v3, v8, :cond_3

    .line 29
    array-length v3, v5

    if-ge v2, v3, :cond_d

    .line 30
    aget-object v2, v5, v2

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_4

    :cond_3
    if-nez v3, :cond_d

    .line 31
    iget v2, v0, Lk0/pj;->b:I

    array-length v3, v5

    if-ge v2, v3, :cond_4

    if-eq v2, v6, :cond_4

    .line 32
    aget-object v2, v5, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 33
    :cond_4
    iput v6, v0, Lk0/pj;->b:I

    goto/16 :goto_4

    .line 34
    :cond_5
    iget v2, v0, Lk0/pj;->i:I

    if-eq v2, v3, :cond_d

    .line 35
    iput v3, v0, Lk0/pj;->i:I

    if-ne v3, v8, :cond_d

    .line 36
    iput-boolean v7, v0, Lk0/pj;->k:Z

    .line 37
    iput-byte v7, v0, Lk0/pj;->j:B

    .line 38
    iget-object v2, v0, Lk0/pj;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_6
    if-ne v3, v8, :cond_d

    .line 39
    sget v2, Lk0/nt;->a:I

    sparse-switch v2, :sswitch_data_0

    .line 40
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 41
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 42
    :sswitch_0
    sget v2, Lh0/c;->E:I

    if-eq v2, v10, :cond_8

    if-eq v2, v13, :cond_8

    .line 43
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lu0/i;->r3()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 44
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 45
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 46
    :cond_7
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 47
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 48
    :cond_8
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    .line 49
    invoke-static {v15, v8}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 50
    :cond_9
    iget v2, v0, Lk0/pj;->h:I

    if-eq v2, v8, :cond_b

    and-int/lit16 v2, v3, 0xff

    if-nez v2, :cond_c

    .line 51
    iget v2, v0, Lk0/pj;->b:I

    array-length v3, v5

    if-ge v2, v3, :cond_a

    if-eq v2, v6, :cond_a

    .line 52
    aget-object v2, v5, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 53
    :cond_a
    iput v6, v0, Lk0/pj;->b:I

    goto :goto_3

    .line 54
    :cond_b
    iget-boolean v2, v0, Lk0/pj;->k:Z

    if-nez v2, :cond_c

    .line 55
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 56
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    .line 57
    :cond_c
    :goto_3
    iget-object v2, v0, Lk0/pj;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 58
    iput-boolean v7, v0, Lk0/pj;->k:Z

    .line 59
    iput-byte v7, v0, Lk0/pj;->j:B

    .line 60
    iput v7, v0, Lk0/pj;->i:I

    .line 61
    iput v7, v0, Lk0/pj;->h:I

    :cond_d
    :goto_4
    add-int/lit8 v2, p2, 0x9

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    const/16 v3, 0x21c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_1a

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 63
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 64
    aget-byte v1, v1, v3

    if-eq v2, v8, :cond_14

    if-eq v2, v5, :cond_f

    goto/16 :goto_1a

    .line 65
    :cond_f
    iget v2, v0, Lk0/pj;->q:I

    if-eq v1, v2, :cond_39

    if-le v1, v2, :cond_11

    move v2, v7

    .line 66
    :goto_5
    iget v3, v0, Lk0/pj;->q:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_10

    const/16 v3, 0x1f

    .line 67
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    const/16 v2, 0x1f

    .line 68
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_11
    if-ge v1, v2, :cond_13

    move v2, v7

    .line 69
    :goto_6
    iget v3, v0, Lk0/pj;->q:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_12

    const/16 v3, 0x1e

    .line 70
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/16 v3, 0x1e

    .line 71
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    .line 72
    :cond_13
    :goto_7
    iput v1, v0, Lk0/pj;->q:I

    goto/16 :goto_1a

    .line 73
    :cond_14
    iget v2, v0, Lk0/pj;->p:I

    if-eq v1, v2, :cond_39

    if-le v1, v2, :cond_16

    move v2, v7

    .line 74
    :goto_8
    iget v3, v0, Lk0/pj;->p:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_15

    const/4 v3, 0x7

    .line 75
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    const/4 v3, 0x7

    .line 76
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_16
    if-ge v1, v2, :cond_18

    move v2, v7

    .line 77
    :goto_9
    iget v3, v0, Lk0/pj;->p:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_17

    .line 78
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 79
    :cond_17
    invoke-static {v9, v8}, Ll0/b0;->l0(II)V

    .line 80
    :cond_18
    :goto_a
    iput v1, v0, Lk0/pj;->p:I

    goto/16 :goto_1a

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    iput v2, v0, Lk0/pj;->f:I

    add-int/lit8 v2, p2, 0x3

    .line 82
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    move v2, v7

    .line 83
    :goto_b
    iget-object v3, v0, Lk0/pj;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1b

    .line 84
    iget v4, v0, Lk0/pj;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_1a

    if-eqz v4, :cond_1b

    .line 85
    iput v2, v0, Lk0/pj;->e:I

    goto :goto_c

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    :goto_c
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_1c

    .line 86
    array-length v1, v3

    if-ge v2, v1, :cond_39

    .line 87
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_1c
    if-nez v1, :cond_39

    .line 88
    iget v1, v0, Lk0/pj;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_1d

    if-eq v1, v6, :cond_1d

    .line 89
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 90
    :cond_1d
    iput v6, v0, Lk0/pj;->e:I

    goto/16 :goto_1a

    :cond_1e
    const/16 v2, 0xa2

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 91
    aget-byte v9, v1, v4

    const/4 v11, 0x7

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v8, [I

    .line 92
    aget-byte v9, v1, v4

    const/4 v11, 0x6

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v8, [I

    .line 93
    aget-byte v9, v1, v4

    shr-int/2addr v9, v14

    and-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v8, [I

    .line 94
    aget-byte v9, v1, v4

    shr-int/2addr v9, v5

    and-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v8, [I

    .line 95
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v10

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 96
    aget-byte v9, v1, v4

    const/4 v11, 0x6

    shr-int/2addr v9, v11

    and-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v8, [I

    .line 97
    aget-byte v9, v1, v4

    shr-int/2addr v9, v14

    and-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v8, [I

    .line 98
    aget-byte v9, v1, v4

    shr-int/2addr v9, v5

    and-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v8, [I

    .line 99
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v10

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 100
    aget-byte v9, v1, v4

    const/4 v11, 0x6

    shr-int/2addr v9, v11

    and-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    .line 101
    aget-byte v9, v1, v4

    shr-int/2addr v9, v14

    and-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v8, [I

    .line 102
    aget-byte v9, v1, v4

    shr-int/2addr v9, v5

    and-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    .line 103
    aget-byte v9, v1, v4

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v8, [I

    .line 104
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 105
    aget-byte v9, v1, v4

    shr-int/2addr v9, v13

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v8, [I

    .line 106
    aget-byte v9, v1, v4

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    .line 107
    aget-byte v9, v1, v4

    shr-int/lit8 v5, v9, 0x2

    and-int/2addr v5, v10

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v8, [I

    .line 108
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v8, [I

    .line 109
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 110
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v8, [I

    .line 111
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    const/4 v9, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v8, [I

    .line 112
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 113
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_1f
    const/16 v2, 0x98

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 114
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    .line 115
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v10

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v8, [I

    .line 116
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v8, [I

    .line 117
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v8, [I

    .line 118
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    const/4 v6, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 119
    aget-byte v9, v1, v4

    shr-int/2addr v9, v6

    and-int/lit8 v6, v9, 0x1

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v8, [I

    .line 120
    aget-byte v6, v1, v4

    const/4 v9, 0x6

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    .line 121
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v8, [I

    .line 122
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v8, [I

    .line 123
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    .line 124
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v8, [I

    .line 125
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v10

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 126
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    .line 127
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v10

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    .line 128
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    .line 129
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    .line 130
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    .line 131
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    .line 132
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 133
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    .line 134
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x2

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    .line 135
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    .line 136
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    .line 137
    aget-byte v1, v1, v4

    shr-int/2addr v1, v13

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_20
    const/16 v2, 0x83

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 138
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 139
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 140
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    const/4 v4, 0x7

    add-int/lit8 v4, p2, 0x7

    .line 141
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_21
    add-int/lit8 v2, p2, 0x2

    .line 142
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/pj;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 143
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/pj;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 144
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/pj;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 145
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/pj;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 146
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x7

    .line 147
    aget-byte v5, v1, v4

    and-int/2addr v5, v6

    .line 148
    aget-byte v9, v1, v4

    and-int/2addr v9, v6

    add-int/lit8 v10, p2, 0x8

    .line 149
    aget-byte v11, v1, v10

    and-int/2addr v11, v6

    const/4 v12, 0x7

    if-lt v3, v12, :cond_22

    if-lt v5, v12, :cond_22

    if-lt v9, v12, :cond_22

    if-lt v11, v12, :cond_22

    .line 150
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_d

    .line 151
    :cond_22
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_23

    sget v7, Ll0/c0;->h:I

    if-ne v7, v5, :cond_23

    sget v7, Ll0/c0;->i:I

    if-ne v7, v9, :cond_23

    sget v7, Ll0/c0;->j:I

    if-eq v7, v11, :cond_24

    .line 152
    :cond_23
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_24

    .line 153
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 154
    sput v14, Ll0/c0;->k:I

    .line 155
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 156
    :cond_24
    :goto_d
    sput v3, Ll0/c0;->g:I

    .line 157
    sput v5, Ll0/c0;->h:I

    .line 158
    sput v9, Ll0/c0;->i:I

    .line 159
    sput v11, Ll0/c0;->j:I

    .line 160
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/pj;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 161
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/pj;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 162
    aget-byte v2, v1, v10

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/pj;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 163
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Lk0/pj;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1a

    :cond_25
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 164
    aget-byte v9, v1, v3

    const/16 v16, 0x6

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v8

    aput v9, v2, v7

    const/16 v9, 0xa

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v9, v8, [I

    .line 165
    aget-byte v18, v1, v3

    shr-int/lit8 v18, v18, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v9, v8, [I

    .line 166
    aget-byte v18, v1, v3

    shr-int/lit8 v18, v18, 0x3

    and-int/lit8 v18, v18, 0x1

    aput v18, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 167
    aget-byte v9, v1, v3

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v2, v7

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v9, v8, [I

    .line 168
    aget-byte v15, v1, v3

    shr-int/2addr v15, v5

    and-int/2addr v15, v8

    aput v15, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 169
    aget-byte v3, v1, v3

    shr-int/2addr v3, v7

    and-int/2addr v3, v10

    aput v3, v2, v7

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 170
    aget-byte v15, v1, v9

    const/16 v17, 0x7

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v8, [I

    .line 171
    aget-byte v15, v1, v9

    const/16 v16, 0x6

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v8, [I

    .line 172
    aget-byte v15, v1, v9

    shr-int/2addr v15, v13

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 173
    aget-byte v3, v1, v9

    shr-int/2addr v3, v14

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v3, v8, [I

    .line 174
    aget-byte v9, v1, v9

    shr-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x4

    .line 175
    aget-byte v9, v1, v3

    shr-int/2addr v9, v13

    and-int/2addr v9, v8

    aput v9, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v9, v8, [I

    .line 176
    aget-byte v11, v1, v3

    shr-int/2addr v11, v14

    and-int/2addr v11, v8

    aput v11, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 177
    aget-byte v9, v1, v3

    shr-int/lit8 v5, v9, 0x2

    and-int/2addr v5, v10

    aput v5, v2, v7

    const/16 v5, 0x1e

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v5, v8, [I

    .line 178
    aget-byte v3, v1, v3

    shr-int/2addr v3, v7

    and-int/2addr v3, v10

    aput v3, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 179
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/lit8 v3, v3, 0xf

    if-eq v3, v10, :cond_28

    if-eq v3, v13, :cond_27

    const/4 v5, 0x6

    if-eq v3, v5, :cond_26

    packed-switch v3, :pswitch_data_1

    move v3, v7

    :goto_e
    move v5, v3

    :goto_f
    move v9, v5

    goto :goto_10

    :pswitch_5
    move v3, v8

    goto :goto_e

    :pswitch_6
    move v3, v7

    move v5, v8

    goto :goto_f

    :pswitch_7
    move v5, v7

    move v3, v8

    move v9, v3

    goto :goto_10

    :pswitch_8
    move v3, v7

    move v5, v3

    move v9, v8

    goto :goto_10

    :cond_26
    move v3, v7

    move v9, v3

    move v5, v8

    goto :goto_10

    :cond_27
    move v9, v7

    move v3, v8

    move v5, v3

    goto :goto_10

    :cond_28
    move v5, v7

    move v9, v5

    move v3, v8

    :goto_10
    const/16 v11, 0x14

    new-array v12, v8, [I

    aput v3, v12, v7

    .line 180
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v11, v8, [I

    aput v5, v11, v7

    .line 181
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    aput v9, v3, v7

    .line 182
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    .line 183
    aget-byte v2, v1, v2

    shr-int/2addr v2, v14

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v10, :cond_2b

    if-eq v2, v13, :cond_2a

    const/4 v3, 0x6

    if-eq v2, v3, :cond_29

    packed-switch v2, :pswitch_data_2

    move v2, v7

    :goto_11
    move v3, v2

    :goto_12
    move v4, v3

    goto :goto_13

    :pswitch_9
    move v2, v8

    goto :goto_11

    :pswitch_a
    move v2, v7

    move v3, v8

    goto :goto_12

    :pswitch_b
    move v3, v7

    move v2, v8

    move v4, v2

    goto :goto_13

    :pswitch_c
    move v2, v7

    move v3, v2

    move v4, v8

    goto :goto_13

    :cond_29
    move v2, v7

    move v4, v2

    move v3, v8

    goto :goto_13

    :cond_2a
    move v4, v7

    move v2, v8

    move v3, v2

    goto :goto_13

    :cond_2b
    move v3, v7

    move v4, v3

    move v2, v8

    :goto_13
    const/16 v5, 0x18

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 184
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 185
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v8, [I

    aput v4, v3, v7

    .line 186
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 187
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 188
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 189
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2c

    add-int/lit8 v2, p2, 0x8

    .line 190
    aget-byte v2, v1, v2

    goto :goto_14

    :cond_2c
    add-int/lit8 v2, p2, 0x9

    .line 191
    aget-byte v2, v1, v2

    :goto_14
    and-int/2addr v2, v6

    const/16 v3, 0xfe

    const/16 v4, 0x1b

    if-ne v2, v3, :cond_2d

    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 192
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_2d
    if-ne v2, v6, :cond_2e

    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 193
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_2e
    new-array v3, v8, [I

    aput v2, v3, v7

    .line 194
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_15
    const-string v2, "persist.fyt.reversetemp"

    .line 195
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2f

    add-int/lit8 v2, p2, 0x9

    .line 196
    aget-byte v2, v1, v2

    goto :goto_16

    :cond_2f
    add-int/lit8 v2, p2, 0x8

    .line 197
    aget-byte v2, v1, v2

    :goto_16
    and-int/2addr v2, v6

    const/16 v3, 0xfe

    const/16 v4, 0x1c

    if-ne v2, v3, :cond_30

    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 198
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_30
    if-ne v2, v6, :cond_31

    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 199
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_31
    new-array v3, v8, [I

    aput v2, v3, v7

    .line 200
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_17
    add-int/lit8 v2, p2, 0xd

    .line 201
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    .line 202
    sget-object v2, Lk0/nt;->g:[I

    const/16 v3, 0x25

    aget v2, v2, v3

    if-nez v1, :cond_32

    .line 203
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_1a

    :cond_32
    if-eqz v2, :cond_34

    const-string v2, "persist.fyt.temperature"

    .line 204
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_33

    goto :goto_18

    :cond_33
    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x258

    goto :goto_19

    :cond_34
    :goto_18
    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    .line 205
    :goto_19
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_1a

    .line 206
    :cond_35
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_36
    const/16 v2, 0x70

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 207
    aget-byte v6, v1, v5

    and-int/2addr v6, v4

    shl-int/2addr v6, v8

    add-int/lit8 v11, p2, 0x3

    aget-byte v12, v1, v11

    and-int/2addr v4, v12

    const/4 v12, 0x7

    shr-int/2addr v4, v12

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 208
    aget-byte v4, v1, v5

    and-int/lit8 v4, v4, 0x20

    shl-int/2addr v4, v10

    aget-byte v6, v1, v11

    and-int/lit8 v6, v6, 0x20

    shr-int/2addr v6, v13

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v8, [I

    .line 209
    aget-byte v4, v1, v11

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    .line 210
    aget-byte v4, v1, v5

    and-int/2addr v4, v9

    shl-int/2addr v4, v13

    aget-byte v6, v1, v11

    const/4 v11, 0x6

    and-int/2addr v6, v11

    shr-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v8, [I

    .line 211
    aget-byte v4, v1, v5

    and-int/2addr v4, v14

    shl-int/2addr v4, v11

    add-int/lit8 v6, p2, 0x4

    aget-byte v12, v1, v6

    shr-int/lit8 v11, v12, 0x6

    and-int/2addr v11, v10

    or-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    .line 212
    aget-byte v4, v1, v5

    and-int/2addr v4, v8

    shl-int/2addr v4, v9

    aget-byte v1, v1, v6

    and-int/2addr v1, v10

    shr-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_37
    const/16 v2, 0xa9

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 213
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 214
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 215
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 216
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 217
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 218
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 219
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v8, [I

    .line 220
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_38
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 221
    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    aput v1, v2, v7

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :cond_39
    :goto_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7c01bb -> :sswitch_0
        0xbb01bb -> :sswitch_0
        0xbc01bb -> :sswitch_0
        0xbd01bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/pj;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/pj;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/pj;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v1, Ll0/h0;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v1, Ll0/h0;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/pj;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/pj;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb1

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
    .locals 5

    const/4 p3, 0x3

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v2, p1, v3

    const/16 p4, 0xad

    aput p4, p1, v2

    .line 1
    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v2, p1, v3

    const/16 p4, 0x3d

    aput p4, p1, v2

    .line 2
    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v2, p1, v3

    const/16 p4, 0x7d

    aput p4, p1, v2

    .line 3
    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v2, p1, v3

    const/16 p4, 0x9a

    aput p4, p1, v2

    .line 4
    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p4, p1, v4

    aput v1, p1, v3

    const/16 p4, 0x1b

    aput p4, p1, v2

    .line 5
    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v4

    aput p2, p1, v1

    aput v3, p1, v0

    const/4 p2, 0x6

    const/16 p3, 0xff

    aput p3, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v2, p1, v3

    const/16 p4, 0x7b

    aput p4, p1, v2

    .line 6
    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v2, p1, v3

    const/16 p4, 0xca

    aput p4, p1, v2

    .line 7
    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
