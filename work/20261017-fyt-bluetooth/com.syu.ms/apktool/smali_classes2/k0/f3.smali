.class public Lk0/f3;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:Ljava/lang/Runnable;

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

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk0/f3$a;

    invoke-direct {v0}, Lk0/f3$a;-><init>()V

    sput-object v0, Lk0/f3;->L:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/f3;->e:I

    const/16 v1, 0x13

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

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

    new-array v2, v2, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/f3;->f:[[I

    .line 4
    iput v0, p0, Lk0/f3;->g:I

    .line 5
    iput v0, p0, Lk0/f3;->h:I

    .line 6
    new-instance v0, Lk0/f3$b;

    invoke-direct {v0, p0}, Lk0/f3$b;-><init>(Lk0/f3;)V

    iput-object v0, p0, Lk0/f3;->i:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/f3$c;

    invoke-direct {v0, p0}, Lk0/f3$c;-><init>(Lk0/f3;)V

    iput-object v0, p0, Lk0/f3;->j:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/f3$d;

    invoke-direct {v0, p0}, Lk0/f3$d;-><init>(Lk0/f3;)V

    iput-object v0, p0, Lk0/f3;->k:Ljava/lang/Runnable;

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
        -0x1
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
        0x8
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x11
        0x1b
    .end array-data

    :array_d
    .array-data 4
        0x12
        0x1c
    .end array-data

    :array_e
    .array-data 4
        0x13
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x14
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x40
        0x12
    .end array-data

    :array_11
    .array-data 4
        0x81
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x91
        0xb
    .end array-data
.end method

.method public static a3()V
    .locals 6

    const/16 v0, 0xe

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xe3

    aput v0, v1, v2

    const/4 v0, 0x1

    const/16 v3, 0xb

    aput v3, v1, v0

    const/4 v4, 0x2

    const/16 v5, 0xa4

    aput v5, v1, v4

    const/4 v4, 0x3

    const/16 v5, 0xf

    aput v5, v1, v4

    const/4 v4, 0x4

    aput v0, v1, v4

    const/4 v0, 0x5

    const/16 v4, 0x40

    aput v4, v1, v0

    const/4 v0, 0x6

    .line 2
    sget v4, Lo0/e;->B:I

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v0

    const/4 v0, 0x7

    aput v2, v1, v0

    const/16 v0, 0x8

    .line 3
    sget v4, Lo0/e;->r:I

    div-int/lit8 v5, v4, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    aput v5, v1, v0

    const/16 v0, 0x9

    .line 4
    rem-int/lit8 v4, v4, 0x3c

    aput v4, v1, v0

    const/16 v0, 0xa

    const/16 v4, 0x20

    aput v4, v1, v0

    aput v4, v1, v3

    const/16 v0, 0xc

    .line 5
    sget v3, Lo0/e;->C:I

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v0

    const/16 v0, 0xd

    aput v2, v1, v0

    .line 6
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()V
    .locals 12

    .line 1
    sget v0, Lw0/d;->h:I

    const/high16 v1, 0x10000

    sub-int v2, v0, v1

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_2

    :cond_0
    sub-int v2, v0, v1

    if-eq v5, v2, :cond_4

    sub-int v2, v0, v1

    if-ne v4, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x0

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, 0x0

    if-ne v5, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_2

    :cond_3
    :goto_0
    move v2, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v4

    :goto_2
    sub-int v7, v0, v1

    const/16 v8, 0x8

    if-eqz v7, :cond_6

    sub-int v7, v0, v1

    if-eq v5, v7, :cond_6

    sub-int/2addr v0, v1

    if-ne v4, v0, :cond_5

    goto :goto_3

    .line 2
    :cond_5
    sget v0, Lw0/d;->i:I

    goto :goto_4

    .line 3
    :cond_6
    :goto_3
    sget v0, Lw0/d;->i:I

    :goto_4
    and-int/lit16 v1, v0, 0xff

    shr-int/2addr v0, v8

    and-int/lit16 v0, v0, 0xff

    .line 4
    sget v7, Lw0/d;->j:I

    rem-int/lit8 v9, v7, 0x6

    const/4 v10, 0x6

    if-nez v9, :cond_7

    if-eqz v7, :cond_7

    move v7, v10

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v7, 0xff

    .line 5
    rem-int/2addr v7, v10

    :goto_5
    const/16 v9, 0x9

    new-array v9, v9, [I

    const/16 v11, 0xe3

    aput v11, v9, v6

    aput v10, v9, v5

    const/16 v5, -0x5e

    aput v5, v9, v4

    const/4 v4, 0x3

    int-to-byte v2, v2

    aput v2, v9, v4

    int-to-byte v1, v1

    aput v1, v9, v3

    const/4 v1, 0x5

    int-to-byte v0, v0

    aput v0, v9, v1

    int-to-byte v0, v7

    aput v0, v9, v10

    const/4 v0, 0x7

    aput v6, v9, v0

    aput v6, v9, v8

    .line 6
    invoke-static {v9}, Lz/k;->s([I)V

    return-void
.end method

.method public static c3()V
    .locals 2

    .line 1
    invoke-static {}, Lk0/f3;->f3()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lk0/f3;->a3()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lk0/f3;->b3()V

    :goto_0
    return-void
.end method

.method public static d3()B
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x5

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v1, -0x1

    goto :goto_1

    :pswitch_2
    const/4 v1, -0x2

    goto :goto_1

    .line 2
    :pswitch_3
    sget v0, Lo0/e;->H:I

    move v1, v2

    goto :goto_1

    .line 3
    :pswitch_4
    sget v0, Lw0/d;->h:I

    const/high16 v5, 0x10000

    sub-int v6, v0, v5

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-int v6, v0, v5

    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    sub-int v5, v0, v5

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v1

    :goto_0
    move v1, v3

    goto :goto_1

    :pswitch_5
    move v1, v4

    .line 4
    :goto_1
    sget v0, Lu0/b;->o:I

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static f3()V
    .locals 11

    .line 1
    sget v0, Ly0/f;->C0:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/16 v3, -0x5f

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xe3

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/16 v9, 0x1e

    const/4 v10, 0x3

    if-lt v0, v9, :cond_0

    new-array v0, v8, [I

    aput v6, v0, v7

    aput v10, v0, v5

    aput v3, v0, v4

    .line 2
    invoke-static {}, Lk0/f3;->i3()I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    aput v3, v0, v10

    invoke-static {}, Lk0/f3;->d3()B

    move-result v3

    aput v3, v0, v2

    aput v9, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v8, [I

    aput v6, v0, v7

    aput v10, v0, v5

    aput v3, v0, v4

    .line 3
    invoke-static {}, Lk0/f3;->i3()I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    aput v3, v0, v10

    invoke-static {}, Lk0/f3;->d3()B

    move-result v3

    aput v3, v0, v2

    sget v2, Ly0/f;->C0:I

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public static i3()I
    .locals 1

    .line 1
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic j3(Lk0/f3;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/f3;->h3(I)V

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/f3;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lk0/f3;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lz/c;->c:Lo1/y;

    iget-object v2, p0, Lk0/f3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lk0/f3;->L:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x7b

    const/16 v4, 0x80

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_30

    const/16 v3, -0x3f

    const/16 v8, 0x20

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/16 v11, 0x8

    const/4 v12, 0x2

    if-eq v2, v3, :cond_2f

    const/16 v3, -0x10

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x31

    const/16 v13, 0x41

    const/16 v14, 0xff

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x76

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x79

    if-eq v2, v3, :cond_1c

    const/16 v15, 0x21

    if-eq v2, v15, :cond_17

    const/16 v15, 0x22

    if-eq v2, v15, :cond_15

    if-eq v2, v13, :cond_10

    const/16 v4, 0x42

    if-eq v2, v4, :cond_f

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_19

    :pswitch_0
    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    shl-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    shl-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    shl-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v14

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_1
    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    shl-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 6
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    shl-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 7
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    shl-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v14

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_2
    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 8
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    shl-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 9
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    shl-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    and-int/2addr v1, v14

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_3
    add-int/lit8 v2, p2, 0x4

    .line 10
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 11
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 12
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 13
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 14
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 15
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 16
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 17
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 18
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_4
    add-int/lit8 v2, p2, 0x4

    .line 19
    aget-byte v3, v1, v2

    and-int/2addr v3, v14

    add-int/lit8 v4, p2, 0x5

    .line 20
    aget-byte v5, v1, v4

    and-int/2addr v5, v14

    const/16 v9, 0x14

    if-ne v3, v9, :cond_1

    if-ne v5, v7, :cond_1

    .line 21
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x73

    aget-object v3, v3, v5

    new-array v9, v7, [I

    aput v7, v9, v6

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v5, v9, v10, v12}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    .line 22
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_31

    add-int/lit8 v3, p2, 0x2

    .line 23
    aget-byte v3, v1, v3

    and-int/2addr v3, v14

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_2

    .line 24
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 25
    :cond_2
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 26
    :goto_1
    aget-byte v2, v1, v2

    .line 27
    aget-byte v3, v1, v4

    and-int/2addr v2, v14

    .line 28
    iput v2, v0, Lk0/f3;->c:I

    move v2, v6

    .line 29
    :goto_2
    iget-object v4, v0, Lk0/f3;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 30
    iget v5, v0, Lk0/f3;->c:I

    aget-object v8, v4, v2

    aget v8, v8, v6

    if-ne v5, v8, :cond_3

    if-eqz v5, :cond_4

    .line 31
    iput v2, v0, Lk0/f3;->b:I

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    and-int/2addr v3, v14

    if-eqz v3, :cond_5

    .line 32
    array-length v3, v4

    if-ge v2, v3, :cond_7

    .line 33
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 34
    :cond_5
    iget v2, v0, Lk0/f3;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_6

    if-eq v2, v14, :cond_6

    .line 35
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 36
    :cond_6
    iput v14, v0, Lk0/f3;->b:I

    :cond_7
    :goto_4
    add-int/lit8 v2, p2, 0x9

    .line 37
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_19

    .line 38
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk0/f3;->e3(I)V

    goto/16 :goto_19

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_8

    move v3, v6

    goto :goto_5

    :cond_8
    move v3, v7

    .line 41
    :goto_5
    sput v3, Lk0/f3;->y:I

    const/16 v4, 0x8b

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 42
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_9

    move v3, v6

    goto :goto_6

    :cond_9
    move v3, v7

    .line 43
    :goto_6
    sput v3, Lk0/f3;->z:I

    const/16 v4, 0x8c

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 44
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_a

    move v3, v6

    goto :goto_7

    :cond_a
    move v3, v7

    .line 45
    :goto_7
    sput v3, Lk0/f3;->B:I

    const/16 v4, 0x8d

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 46
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_b

    move v3, v6

    goto :goto_8

    :cond_b
    move v3, v7

    .line 47
    :goto_8
    sput v3, Lk0/f3;->D:I

    const/16 v4, 0x8e

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 48
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_c

    move v3, v6

    goto :goto_9

    :cond_c
    move v3, v7

    .line 49
    :goto_9
    sput v3, Lk0/f3;->F:I

    const/16 v4, 0x8f

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 50
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_d

    move v3, v6

    goto :goto_a

    :cond_d
    move v3, v7

    .line 51
    :goto_a
    sput v3, Lk0/f3;->H:I

    const/16 v4, 0x90

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 52
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    and-int/2addr v2, v12

    if-nez v2, :cond_e

    move v2, v6

    goto :goto_b

    :cond_e
    move v2, v7

    .line 53
    :goto_b
    sput v2, Lk0/f3;->J:I

    const/16 v3, 0x91

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 54
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    sput v2, Lk0/f3;->A:I

    const/16 v3, 0x92

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 56
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    sput v2, Lk0/f3;->C:I

    const/16 v3, 0x93

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 58
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    sput v2, Lk0/f3;->E:I

    const/16 v3, 0x94

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 60
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    sput v2, Lk0/f3;->G:I

    const/16 v3, 0x95

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 62
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    sput v2, Lk0/f3;->I:I

    const/16 v3, 0x96

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 64
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 65
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    sput v1, Lk0/f3;->K:I

    const/16 v2, 0x75

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 66
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v2, v1, v2

    const/16 v4, 0x84

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x7

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 68
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x85

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x6

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 69
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x86

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 70
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x87

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 71
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x88

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 72
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x89

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 73
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x8a

    new-array v5, v7, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v5, v6

    .line 74
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 75
    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 76
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v2, v6

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 77
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 78
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 79
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 80
    aget-byte v1, v1, v4

    and-int/2addr v1, v14

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v2, v1, v2

    shl-int/2addr v2, v11

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v14

    or-int/2addr v1, v2

    const/16 v2, 0x72

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    .line 83
    :cond_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x2

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, v7

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, v7

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 86
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, v7

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, v7

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 88
    aget-byte v3, v1, v2

    and-int/2addr v3, v14

    const/16 v4, 0xf

    if-nez v3, :cond_11

    .line 89
    invoke-static {v4}, Lu0/d;->D2(I)V

    goto :goto_c

    .line 90
    :cond_11
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, v7

    invoke-static {v2}, Lu0/d;->D2(I)V

    :goto_c
    add-int/lit8 v2, p2, 0x7

    .line 91
    aget-byte v3, v1, v2

    and-int/2addr v3, v14

    if-nez v3, :cond_12

    .line 92
    invoke-static {v4}, Lu0/d;->E2(I)V

    goto :goto_d

    .line 93
    :cond_12
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, v7

    invoke-static {v2}, Lu0/d;->E2(I)V

    :goto_d
    add-int/lit8 v2, p2, 0x8

    .line 94
    aget-byte v3, v1, v2

    and-int/2addr v3, v14

    if-nez v3, :cond_13

    .line 95
    invoke-static {v4}, Lu0/d;->F2(I)V

    goto :goto_e

    .line 96
    :cond_13
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, v7

    invoke-static {v2}, Lu0/d;->F2(I)V

    :goto_e
    add-int/lit8 v2, p2, 0x9

    .line 97
    aget-byte v3, v1, v2

    and-int/2addr v3, v14

    if-nez v3, :cond_14

    .line 98
    invoke-static {v4}, Lu0/d;->G2(I)V

    goto/16 :goto_19

    .line 99
    :cond_14
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v7

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_19

    .line 100
    :cond_15
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x2

    .line 101
    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_31

    add-int/lit8 v2, p2, 0x3

    aget-byte v3, v1, v2

    if-eqz v3, :cond_31

    .line 102
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    if-ge v1, v4, :cond_16

    .line 103
    invoke-static {}, Lu0/d;->O1()V

    goto/16 :goto_19

    .line 104
    :cond_16
    invoke-static {}, Lu0/d;->M1()V

    goto/16 :goto_19

    .line 105
    :cond_17
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    or-int/2addr v1, v4

    iput v1, v0, Lk0/f3;->d:I

    move v1, v6

    .line 107
    :goto_f
    iget-object v2, v0, Lk0/f3;->f:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 108
    iget v3, v0, Lk0/f3;->d:I

    aget-object v5, v2, v1

    aget v5, v5, v6

    if-ne v3, v5, :cond_18

    if-eqz v3, :cond_19

    .line 109
    iput v1, v0, Lk0/f3;->e:I

    goto :goto_10

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 110
    :cond_19
    :goto_10
    iget v3, v0, Lk0/f3;->d:I

    if-eq v3, v4, :cond_1a

    .line 111
    array-length v3, v2

    if-ge v1, v3, :cond_31

    .line 112
    aget-object v1, v2, v1

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 113
    :cond_1a
    iget v1, v0, Lk0/f3;->b:I

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    if-eq v1, v14, :cond_1b

    .line 114
    iget v1, v0, Lk0/f3;->e:I

    aget-object v1, v2, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 115
    :cond_1b
    iput v14, v0, Lk0/f3;->e:I

    goto/16 :goto_19

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 116
    aget-byte v1, v1, v2

    const/16 v2, 0x7e

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 117
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 118
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 119
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 120
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 121
    aget-byte v2, v1, v2

    const/16 v4, 0x6d

    new-array v8, v7, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v7

    aput v10, v8, v6

    .line 122
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x75

    new-array v8, v7, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v7

    aput v10, v8, v6

    .line 123
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6e

    new-array v8, v7, [I

    and-int/lit8 v10, v2, 0x30

    shr-int/lit8 v9, v10, 0x4

    and-int/2addr v9, v14

    aput v9, v8, v6

    .line 124
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 125
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x77

    new-array v4, v7, [I

    and-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v14

    aput v2, v4, v6

    .line 126
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 127
    aget-byte v1, v1, v2

    const/16 v2, 0x6b

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 128
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 129
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 130
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 131
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v5

    aput v1, v3, v6

    .line 132
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_1e
    add-int/lit8 v2, p2, 0x2

    .line 133
    aget-byte v2, v1, v2

    const/16 v3, 0x35

    new-array v4, v7, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 134
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v4, v7, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 135
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x37

    new-array v4, v7, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 136
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v4, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v4, v6

    .line 137
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 138
    aget-byte v2, v1, v2

    const/16 v3, 0xc

    new-array v4, v7, [I

    const/16 v8, 0x10

    and-int/2addr v2, v8

    if-nez v2, :cond_1f

    move v2, v6

    goto :goto_11

    :cond_1f
    move v2, v7

    :goto_11
    aput v2, v4, v6

    .line 139
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 140
    aget-byte v2, v1, v2

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 141
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 142
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 143
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    if-le v2, v12, :cond_20

    goto :goto_12

    :cond_20
    move v12, v2

    :goto_12
    const/16 v2, 0x34

    new-array v3, v7, [I

    aput v12, v3, v6

    .line 144
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 145
    aget-byte v2, v1, v2

    if-eq v2, v5, :cond_23

    if-eq v2, v10, :cond_22

    const/4 v3, 0x6

    if-eq v2, v3, :cond_21

    packed-switch v2, :pswitch_data_2

    move v2, v6

    :goto_13
    move v3, v2

    :goto_14
    move v4, v3

    goto :goto_15

    :pswitch_8
    move v2, v7

    goto :goto_13

    :pswitch_9
    move v4, v6

    move v2, v7

    move v3, v2

    goto :goto_15

    :pswitch_a
    move v3, v6

    move v2, v7

    move v4, v2

    goto :goto_15

    :pswitch_b
    move v3, v6

    move v4, v3

    move v2, v7

    goto :goto_15

    :cond_21
    move v2, v6

    move v4, v2

    move v3, v7

    goto :goto_15

    :cond_22
    move v2, v6

    move v3, v7

    goto :goto_14

    :cond_23
    move v2, v6

    move v3, v2

    move v4, v7

    :goto_15
    const/16 v5, 0x12

    new-array v8, v7, [I

    aput v2, v8, v6

    .line 146
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 147
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 148
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 149
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    if-le v2, v11, :cond_24

    goto :goto_16

    :cond_24
    move v11, v2

    :goto_16
    const/16 v2, 0x15

    new-array v3, v7, [I

    aput v11, v3, v6

    .line 150
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 151
    aget-byte v3, v1, v2

    add-int/lit8 v4, p2, 0x9

    .line 152
    aget-byte v5, v1, v4

    const-string v8, "persist.fyt.reversetemp"

    .line 153
    invoke-static {v8, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 154
    aget-byte v3, v1, v4

    .line 155
    aget-byte v5, v1, v2

    :cond_25
    const/16 v2, 0x1b

    const/4 v4, -0x2

    if-eq v3, v4, :cond_29

    const/4 v8, -0x1

    if-eq v3, v8, :cond_28

    and-int/2addr v3, v14

    mul-int/2addr v3, v10

    const/16 v8, 0xc8

    if-lt v3, v8, :cond_26

    const/16 v8, 0x104

    if-le v3, v8, :cond_27

    .line 156
    :cond_26
    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0xa

    :cond_27
    new-array v8, v7, [I

    aput v3, v8, v6

    .line 157
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_28
    new-array v3, v7, [I

    const/4 v8, -0x3

    aput v8, v3, v6

    .line 158
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_29
    new-array v3, v7, [I

    aput v4, v3, v6

    .line 159
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_17
    const/16 v2, 0x1c

    if-eq v5, v4, :cond_2d

    const/4 v3, -0x1

    if-eq v5, v3, :cond_2c

    and-int/lit16 v3, v5, 0xff

    mul-int/2addr v3, v10

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_2a

    const/16 v4, 0x104

    if-le v3, v4, :cond_2b

    .line 160
    :cond_2a
    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0xa

    :cond_2b
    new-array v4, v7, [I

    aput v3, v4, v6

    .line 161
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_2c
    new-array v3, v7, [I

    const/4 v4, -0x3

    aput v4, v3, v6

    .line 162
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_2d
    new-array v3, v7, [I

    aput v4, v3, v6

    .line 163
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 164
    :goto_18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0xd

    .line 165
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    .line 166
    invoke-static {v1}, Ll0/h0;->u(I)V

    goto :goto_19

    .line 167
    :cond_2e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_19

    :cond_2f
    const/16 v2, 0x82

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 168
    aget-byte v13, v1, v4

    and-int/2addr v13, v8

    shl-int/lit8 v12, v13, 0x2

    add-int/lit8 v13, p2, 0x3

    aget-byte v14, v1, v13

    and-int/2addr v8, v14

    shr-int/2addr v8, v10

    or-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    .line 169
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    shl-int/2addr v4, v9

    aget-byte v1, v1, v13

    and-int/2addr v1, v11

    shr-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_30
    add-int/lit8 v2, p2, 0x2

    .line 170
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x7

    or-int/2addr v1, v2

    const/16 v2, 0x97

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 171
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_31
    :goto_19
    return-void

    :pswitch_data_0
    .packed-switch -0x7f
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/f3;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/f3;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lz/c;->c:Lo1/y;

    iget-object v1, p0, Lk0/f3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lk0/f3;->L:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa7

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
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x9

    const/4 v4, 0x6

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0x8

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v13, 0x100

    if-lt v1, v13, :cond_f

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz v2, :cond_34

    .line 1
    array-length v1, v2

    if-lez v1, :cond_34

    .line 2
    aget v1, v2, v15

    if-eqz v1, :cond_0

    .line 3
    aput v14, v2, v15

    :cond_0
    const/16 v1, 0xf

    .line 4
    aget v2, v2, v15

    invoke-virtual {v0, v1, v2}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_1
    if-eqz v2, :cond_34

    .line 5
    array-length v1, v2

    if-lez v1, :cond_34

    .line 6
    aget v1, v2, v15

    if-gez v1, :cond_1

    aput v15, v2, v15

    .line 7
    :cond_1
    aget v1, v2, v15

    if-le v1, v12, :cond_2

    aput v12, v2, v15

    :cond_2
    const/16 v1, 0xe

    .line 8
    aget v2, v2, v15

    invoke-virtual {v0, v1, v2}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_2
    if-eqz v2, :cond_34

    .line 9
    array-length v1, v2

    if-lez v1, :cond_34

    .line 10
    aget v1, v2, v15

    if-eqz v1, :cond_3

    .line 11
    aput v14, v2, v15

    .line 12
    :cond_3
    aget v1, v2, v15

    add-int/2addr v1, v14

    aput v1, v2, v15

    .line 13
    aget v1, v2, v15

    invoke-virtual {v0, v5, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_3
    if-eqz v2, :cond_34

    .line 14
    array-length v1, v2

    if-lez v1, :cond_34

    .line 15
    aget v1, v2, v15

    if-eqz v1, :cond_4

    .line 16
    aput v14, v2, v15

    .line 17
    :cond_4
    aget v1, v2, v15

    add-int/2addr v1, v14

    aput v1, v2, v15

    .line 18
    aget v1, v2, v15

    invoke-virtual {v0, v6, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_4
    if-eqz v2, :cond_34

    .line 19
    array-length v1, v2

    if-lez v1, :cond_34

    .line 20
    aget v1, v2, v15

    if-eqz v1, :cond_5

    .line 21
    aput v14, v2, v15

    .line 22
    :cond_5
    aget v1, v2, v15

    add-int/2addr v1, v14

    aput v1, v2, v15

    .line 23
    aget v1, v2, v15

    invoke-virtual {v0, v8, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_5
    if-eqz v2, :cond_34

    .line 24
    array-length v1, v2

    if-lez v1, :cond_34

    .line 25
    aget v1, v2, v15

    if-eqz v1, :cond_6

    .line 26
    aput v14, v2, v15

    .line 27
    :cond_6
    aget v1, v2, v15

    invoke-virtual {v0, v9, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_6
    if-eqz v2, :cond_34

    .line 28
    array-length v1, v2

    if-lez v1, :cond_34

    .line 29
    aget v1, v2, v15

    if-eqz v1, :cond_7

    .line 30
    aput v14, v2, v15

    .line 31
    :cond_7
    aget v1, v2, v15

    invoke-virtual {v0, v3, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_7
    if-eqz v2, :cond_34

    .line 32
    array-length v1, v2

    if-lez v1, :cond_34

    .line 33
    aget v1, v2, v15

    if-eqz v1, :cond_8

    .line 34
    aput v14, v2, v15

    .line 35
    :cond_8
    aget v1, v2, v15

    invoke-virtual {v0, v7, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_8
    if-eqz v2, :cond_34

    .line 36
    array-length v1, v2

    if-lez v1, :cond_34

    .line 37
    aget v1, v2, v15

    if-eqz v1, :cond_9

    .line 38
    aput v14, v2, v15

    :cond_9
    const/4 v1, 0x7

    .line 39
    aget v2, v2, v15

    invoke-virtual {v0, v1, v2}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_9
    if-eqz v2, :cond_34

    .line 40
    array-length v1, v2

    if-lez v1, :cond_34

    .line 41
    aget v1, v2, v15

    if-eqz v1, :cond_a

    .line 42
    aput v14, v2, v15

    .line 43
    :cond_a
    aget v1, v2, v15

    invoke-virtual {v0, v4, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_a
    if-eqz v2, :cond_34

    .line 44
    array-length v1, v2

    if-lez v1, :cond_34

    .line 45
    aget v1, v2, v15

    if-eqz v1, :cond_b

    .line 46
    aput v14, v2, v15

    .line 47
    :cond_b
    aget v1, v2, v15

    invoke-virtual {v0, v11, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_b
    if-eqz v2, :cond_34

    .line 48
    array-length v1, v2

    if-lez v1, :cond_34

    .line 49
    aget v1, v2, v15

    if-eqz v1, :cond_c

    .line 50
    aput v14, v2, v15

    .line 51
    :cond_c
    aget v1, v2, v15

    invoke-virtual {v0, v10, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_c
    if-eqz v2, :cond_34

    .line 52
    array-length v1, v2

    if-lez v1, :cond_34

    .line 53
    aget v1, v2, v15

    if-eqz v1, :cond_d

    .line 54
    aput v14, v2, v15

    .line 55
    :cond_d
    aget v1, v2, v15

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :pswitch_d
    if-eqz v2, :cond_34

    .line 56
    array-length v1, v2

    if-lez v1, :cond_34

    .line 57
    aget v1, v2, v15

    if-eqz v1, :cond_e

    .line 58
    aput v14, v2, v15

    .line 59
    :cond_e
    aget v1, v2, v15

    invoke-virtual {v0, v12, v1}, Lk0/f3;->k3(II)V

    goto/16 :goto_3

    :cond_f
    const/16 v13, 0x33

    const/16 v16, -0x36

    const/16 v17, 0xe3

    if-eq v1, v13, :cond_31

    const/16 v13, 0x35

    if-eq v1, v13, :cond_2f

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_3

    :pswitch_e
    if-eqz v2, :cond_34

    .line 60
    array-length v1, v2

    if-lez v1, :cond_34

    .line 61
    aget v1, v2, v15

    sput v1, Lk0/f3;->K:I

    .line 62
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_f
    if-eqz v2, :cond_34

    .line 63
    array-length v1, v2

    if-lez v1, :cond_34

    .line 64
    aget v1, v2, v15

    if-eqz v1, :cond_10

    .line 65
    aput v14, v2, v15

    .line 66
    :cond_10
    aget v1, v2, v15

    sput v1, Lk0/f3;->J:I

    .line 67
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_10
    if-eqz v2, :cond_34

    .line 68
    array-length v1, v2

    if-lez v1, :cond_34

    .line 69
    aget v1, v2, v15

    sput v1, Lk0/f3;->I:I

    .line 70
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_11
    if-eqz v2, :cond_34

    .line 71
    array-length v1, v2

    if-lez v1, :cond_34

    .line 72
    aget v1, v2, v15

    if-eqz v1, :cond_11

    .line 73
    aput v14, v2, v15

    .line 74
    :cond_11
    aget v1, v2, v15

    sput v1, Lk0/f3;->H:I

    .line 75
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_12
    if-eqz v2, :cond_34

    .line 76
    array-length v1, v2

    if-lez v1, :cond_34

    .line 77
    aget v1, v2, v15

    sput v1, Lk0/f3;->G:I

    .line 78
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_13
    if-eqz v2, :cond_34

    .line 79
    array-length v1, v2

    if-lez v1, :cond_34

    .line 80
    aget v1, v2, v15

    if-eqz v1, :cond_12

    .line 81
    aput v14, v2, v15

    .line 82
    :cond_12
    aget v1, v2, v15

    sput v1, Lk0/f3;->F:I

    .line 83
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_14
    if-eqz v2, :cond_34

    .line 84
    array-length v1, v2

    if-lez v1, :cond_34

    .line 85
    aget v1, v2, v15

    sput v1, Lk0/f3;->E:I

    .line 86
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_15
    if-eqz v2, :cond_34

    .line 87
    array-length v1, v2

    if-lez v1, :cond_34

    .line 88
    aget v1, v2, v15

    if-eqz v1, :cond_13

    .line 89
    aput v14, v2, v15

    .line 90
    :cond_13
    aget v1, v2, v15

    sput v1, Lk0/f3;->D:I

    .line 91
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_16
    if-eqz v2, :cond_34

    .line 92
    array-length v1, v2

    if-lez v1, :cond_34

    .line 93
    aget v1, v2, v15

    sput v1, Lk0/f3;->C:I

    .line 94
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_17
    if-eqz v2, :cond_34

    .line 95
    array-length v1, v2

    if-lez v1, :cond_34

    .line 96
    aget v1, v2, v15

    if-eqz v1, :cond_14

    .line 97
    aput v14, v2, v15

    .line 98
    :cond_14
    aget v1, v2, v15

    sput v1, Lk0/f3;->B:I

    .line 99
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_18
    if-eqz v2, :cond_34

    .line 100
    array-length v1, v2

    if-lez v1, :cond_34

    .line 101
    aget v1, v2, v15

    sput v1, Lk0/f3;->A:I

    .line 102
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_19
    if-eqz v2, :cond_34

    .line 103
    array-length v1, v2

    if-lez v1, :cond_34

    .line 104
    aget v1, v2, v15

    sput v1, Lk0/f3;->x:I

    .line 105
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_1a
    if-eqz v2, :cond_34

    .line 106
    array-length v1, v2

    if-lez v1, :cond_34

    .line 107
    aget v1, v2, v15

    if-eqz v1, :cond_15

    .line 108
    aput v14, v2, v15

    .line 109
    :cond_15
    aget v1, v2, v15

    sput v1, Lk0/f3;->w:I

    .line 110
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_1b
    if-eqz v2, :cond_34

    .line 111
    array-length v1, v2

    if-lez v1, :cond_34

    .line 112
    aget v1, v2, v15

    sput v1, Lk0/f3;->v:I

    .line 113
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_1c
    if-eqz v2, :cond_34

    .line 114
    array-length v1, v2

    if-lez v1, :cond_34

    .line 115
    aget v1, v2, v15

    if-eqz v1, :cond_16

    .line 116
    aput v14, v2, v15

    .line 117
    :cond_16
    aget v1, v2, v15

    sput v1, Lk0/f3;->u:I

    .line 118
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_1d
    if-eqz v2, :cond_34

    .line 119
    array-length v1, v2

    if-lez v1, :cond_34

    .line 120
    aget v1, v2, v15

    sput v1, Lk0/f3;->t:I

    .line 121
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_1e
    if-eqz v2, :cond_34

    .line 122
    array-length v1, v2

    if-lez v1, :cond_34

    .line 123
    aget v1, v2, v15

    if-eqz v1, :cond_17

    .line 124
    aput v14, v2, v15

    .line 125
    :cond_17
    aget v1, v2, v15

    sput v1, Lk0/f3;->s:I

    .line 126
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_1f
    if-eqz v2, :cond_34

    .line 127
    array-length v1, v2

    if-lez v1, :cond_34

    .line 128
    aget v1, v2, v15

    sput v1, Lk0/f3;->r:I

    .line 129
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_20
    if-eqz v2, :cond_34

    .line 130
    array-length v1, v2

    if-lez v1, :cond_34

    .line 131
    aget v1, v2, v15

    if-eqz v1, :cond_18

    .line 132
    aput v14, v2, v15

    .line 133
    :cond_18
    aget v1, v2, v15

    sput v1, Lk0/f3;->q:I

    .line 134
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_21
    if-eqz v2, :cond_34

    .line 135
    array-length v1, v2

    if-lez v1, :cond_34

    .line 136
    aget v1, v2, v15

    sput v1, Lk0/f3;->p:I

    .line 137
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_22
    if-eqz v2, :cond_34

    .line 138
    array-length v1, v2

    if-lez v1, :cond_34

    .line 139
    aget v1, v2, v15

    if-eqz v1, :cond_19

    .line 140
    aput v14, v2, v15

    .line 141
    :cond_19
    aget v1, v2, v15

    sput v1, Lk0/f3;->o:I

    .line 142
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_23
    if-eqz v2, :cond_34

    .line 143
    array-length v1, v2

    if-lez v1, :cond_34

    .line 144
    aget v1, v2, v15

    sput v1, Lk0/f3;->n:I

    .line 145
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_24
    if-eqz v2, :cond_34

    .line 146
    array-length v1, v2

    if-lez v1, :cond_34

    .line 147
    aget v1, v2, v15

    invoke-virtual {v0, v1}, Lk0/f3;->n3(I)V

    goto/16 :goto_3

    :pswitch_25
    new-array v1, v11, [I

    .line 148
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_26
    if-eqz v2, :cond_34

    .line 149
    array-length v1, v2

    if-lez v1, :cond_34

    .line 150
    aget v1, v2, v15

    if-eqz v1, :cond_1a

    .line 151
    aput v14, v2, v15

    .line 152
    :cond_1a
    aget v1, v2, v15

    sput v1, Lk0/f3;->z:I

    .line 153
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_27
    if-eqz v2, :cond_34

    .line 154
    array-length v1, v2

    if-lez v1, :cond_34

    .line 155
    aget v1, v2, v15

    if-eqz v1, :cond_1b

    .line 156
    aput v14, v2, v15

    .line 157
    :cond_1b
    aget v1, v2, v15

    sput v1, Lk0/f3;->y:I

    .line 158
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->g3()V

    goto/16 :goto_3

    :pswitch_28
    if-eqz v2, :cond_34

    .line 159
    array-length v1, v2

    if-lez v1, :cond_34

    .line 160
    aget v1, v2, v15

    if-eqz v1, :cond_1c

    .line 161
    aput v14, v2, v15

    .line 162
    :cond_1c
    aget v1, v2, v15

    sput v1, Lk0/f3;->m:I

    .line 163
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_29
    if-eqz v2, :cond_34

    .line 164
    array-length v1, v2

    if-lez v1, :cond_34

    .line 165
    aget v1, v2, v15

    if-eqz v1, :cond_1d

    .line 166
    aput v14, v2, v15

    .line 167
    :cond_1d
    aget v1, v2, v15

    sput v1, Lk0/f3;->l:I

    .line 168
    invoke-virtual/range {p0 .. p0}, Lk0/f3;->o3()V

    goto/16 :goto_3

    :pswitch_2a
    if-eqz v2, :cond_34

    .line 169
    array-length v1, v2

    if-lez v1, :cond_34

    .line 170
    aget v1, v2, v15

    if-eqz v1, :cond_1e

    .line 171
    aput v14, v2, v15

    .line 172
    :cond_1e
    aget v1, v2, v15

    invoke-virtual {v0, v11, v1}, Lk0/f3;->m3(II)V

    goto/16 :goto_3

    :pswitch_2b
    if-eqz v2, :cond_34

    .line 173
    array-length v1, v2

    if-lez v1, :cond_34

    .line 174
    aget v1, v2, v15

    if-eqz v1, :cond_1f

    .line 175
    aput v14, v2, v15

    .line 176
    :cond_1f
    aget v1, v2, v15

    invoke-virtual {v0, v10, v1}, Lk0/f3;->m3(II)V

    goto/16 :goto_3

    :pswitch_2c
    if-eqz v2, :cond_34

    .line 177
    array-length v1, v2

    if-lez v1, :cond_34

    .line 178
    aget v1, v2, v15

    if-eqz v1, :cond_20

    .line 179
    aput v14, v2, v15

    .line 180
    :cond_20
    aget v1, v2, v15

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lk0/f3;->m3(II)V

    goto/16 :goto_3

    :pswitch_2d
    if-eqz v2, :cond_34

    .line 181
    array-length v1, v2

    if-lez v1, :cond_34

    .line 182
    aget v1, v2, v15

    if-eqz v1, :cond_21

    .line 183
    aput v14, v2, v15

    .line 184
    :cond_21
    aget v1, v2, v15

    invoke-virtual {v0, v12, v1}, Lk0/f3;->m3(II)V

    goto/16 :goto_3

    :pswitch_2e
    if-eqz v2, :cond_34

    .line 185
    array-length v1, v2

    if-lez v1, :cond_34

    .line 186
    aget v1, v2, v15

    if-eqz v1, :cond_22

    .line 187
    aput v14, v2, v15

    .line 188
    :cond_22
    aget v1, v2, v15

    invoke-virtual {v0, v14, v1}, Lk0/f3;->m3(II)V

    goto/16 :goto_3

    :pswitch_2f
    if-eqz v2, :cond_34

    .line 189
    array-length v1, v2

    if-lez v1, :cond_34

    .line 190
    aget v1, v2, v15

    if-eqz v1, :cond_23

    .line 191
    aput v14, v2, v15

    .line 192
    :cond_23
    aget v1, v2, v15

    invoke-virtual {v0, v5, v1}, Lk0/f3;->l3(II)V

    goto/16 :goto_3

    :pswitch_30
    if-eqz v2, :cond_34

    .line 193
    array-length v1, v2

    if-lez v1, :cond_34

    .line 194
    aget v1, v2, v15

    if-eqz v1, :cond_24

    .line 195
    aput v14, v2, v15

    .line 196
    :cond_24
    aget v1, v2, v15

    invoke-virtual {v0, v6, v1}, Lk0/f3;->l3(II)V

    goto/16 :goto_3

    :pswitch_31
    if-eqz v2, :cond_34

    .line 197
    array-length v1, v2

    if-lez v1, :cond_34

    .line 198
    aget v1, v2, v15

    invoke-virtual {v0, v9, v1}, Lk0/f3;->l3(II)V

    goto/16 :goto_3

    :pswitch_32
    if-eqz v2, :cond_34

    .line 199
    array-length v1, v2

    if-lez v1, :cond_34

    .line 200
    aget v1, v2, v15

    if-gez v1, :cond_25

    aput v15, v2, v15

    goto :goto_0

    .line 201
    :cond_25
    aget v1, v2, v15

    const/4 v4, 0x3

    if-le v1, v4, :cond_26

    aput v4, v2, v15

    .line 202
    :cond_26
    :goto_0
    aget v1, v2, v15

    invoke-virtual {v0, v3, v1}, Lk0/f3;->l3(II)V

    goto/16 :goto_3

    :pswitch_33
    if-eqz v2, :cond_34

    .line 203
    array-length v1, v2

    if-lez v1, :cond_34

    .line 204
    aget v1, v2, v15

    if-eqz v1, :cond_27

    .line 205
    aput v14, v2, v15

    .line 206
    :cond_27
    aget v1, v2, v15

    invoke-virtual {v0, v7, v1}, Lk0/f3;->l3(II)V

    goto/16 :goto_3

    :pswitch_34
    if-eqz v2, :cond_34

    .line 207
    array-length v1, v2

    if-lez v1, :cond_34

    .line 208
    aget v1, v2, v15

    if-gez v1, :cond_28

    aput v15, v2, v15

    goto :goto_1

    .line 209
    :cond_28
    aget v1, v2, v15

    const/4 v3, 0x3

    if-le v1, v3, :cond_29

    aput v3, v2, v15

    .line 210
    :cond_29
    :goto_1
    aget v1, v2, v15

    invoke-virtual {v0, v4, v1}, Lk0/f3;->l3(II)V

    goto/16 :goto_3

    :pswitch_35
    if-eqz v2, :cond_34

    .line 211
    array-length v1, v2

    if-lez v1, :cond_34

    .line 212
    aget v1, v2, v15

    if-eqz v1, :cond_2a

    .line 213
    aput v14, v2, v15

    .line 214
    :cond_2a
    aget v1, v2, v15

    invoke-virtual {v0, v11, v1}, Lk0/f3;->l3(II)V

    goto/16 :goto_3

    :pswitch_36
    if-eqz v2, :cond_34

    .line 215
    array-length v1, v2

    if-lez v1, :cond_34

    .line 216
    aget v1, v2, v15

    if-eqz v1, :cond_2b

    .line 217
    aput v14, v2, v15

    .line 218
    :cond_2b
    aget v1, v2, v15

    invoke-virtual {v0, v10, v1}, Lk0/f3;->l3(II)V

    goto/16 :goto_3

    :pswitch_37
    if-eqz v2, :cond_34

    .line 219
    array-length v1, v2

    if-lez v1, :cond_34

    .line 220
    aget v1, v2, v15

    if-eqz v1, :cond_2c

    .line 221
    aput v14, v2, v15

    .line 222
    :cond_2c
    invoke-virtual {v0, v8, v15}, Lk0/f3;->l3(II)V

    goto/16 :goto_3

    :pswitch_38
    if-eqz v2, :cond_34

    .line 223
    array-length v1, v2

    if-lez v1, :cond_34

    .line 224
    aget v1, v2, v15

    if-eqz v1, :cond_2d

    .line 225
    aput v14, v2, v15

    .line 226
    :cond_2d
    aget v1, v2, v15

    invoke-virtual {v0, v12, v1}, Lk0/f3;->l3(II)V

    goto :goto_3

    :pswitch_39
    if-eqz v2, :cond_34

    .line 227
    array-length v1, v2

    if-lez v1, :cond_34

    .line 228
    aget v1, v2, v15

    if-eqz v1, :cond_2e

    .line 229
    aput v14, v2, v15

    .line 230
    :cond_2e
    aget v1, v2, v15

    invoke-virtual {v0, v14, v1}, Lk0/f3;->l3(II)V

    goto :goto_3

    :cond_2f
    if-eqz v2, :cond_34

    .line 231
    array-length v1, v2

    if-lez v1, :cond_34

    .line 232
    aget v1, v2, v15

    if-eqz v1, :cond_30

    .line 233
    aput v15, v2, v15

    .line 234
    :cond_30
    aget v1, v2, v15

    add-int/2addr v1, v14

    aput v1, v2, v15

    new-array v1, v11, [I

    aput v17, v1, v15

    aput v12, v1, v14

    aput v16, v1, v12

    const/4 v3, 0x3

    aput v3, v1, v3

    .line 235
    aget v2, v2, v15

    int-to-byte v2, v2

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_3

    :cond_31
    if-eqz v2, :cond_34

    .line 236
    array-length v1, v2

    if-lez v1, :cond_34

    .line 237
    aget v1, v2, v15

    add-int/2addr v1, v14

    aput v1, v2, v15

    .line 238
    aget v1, v2, v15

    if-ge v1, v14, :cond_32

    .line 239
    aput v14, v2, v15

    const/4 v3, 0x3

    goto :goto_2

    .line 240
    :cond_32
    aget v1, v2, v15

    const/4 v3, 0x3

    if-le v1, v3, :cond_33

    .line 241
    aput v3, v2, v15

    :cond_33
    :goto_2
    new-array v1, v11, [I

    aput v17, v1, v15

    aput v12, v1, v14

    aput v16, v1, v12

    aput v11, v1, v3

    .line 242
    aget v2, v2, v15

    int-to-byte v2, v2

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_34
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x74
        0x1
        -0x1
    .end array-data
.end method

.method public e3(I)V
    .locals 4

    .line 1
    iput p1, p0, Lk0/f3;->g:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    iget v3, p0, Lk0/f3;->h:I

    if-eq v3, p1, :cond_2

    const/16 p1, 0x3f7

    if-eqz v2, :cond_1

    new-array v2, v1, [I

    aput v1, v2, v0

    .line 3
    invoke-static {p1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_1
    new-array v1, v1, [I

    aput v0, v1, v0

    .line 4
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 5
    :cond_2
    :goto_1
    iget p1, p0, Lk0/f3;->g:I

    iput p1, p0, Lk0/f3;->h:I

    return-void
.end method

.method public final g3()V
    .locals 17

    .line 1
    sget v0, Lk0/f3;->y:I

    const/4 v1, 0x7

    shl-int/2addr v0, v1

    sget v2, Lk0/f3;->z:I

    const/4 v3, 0x6

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    sget v2, Lk0/f3;->B:I

    const/4 v4, 0x5

    shl-int/2addr v2, v4

    or-int/2addr v0, v2

    sget v2, Lk0/f3;->D:I

    const/4 v5, 0x4

    shl-int/2addr v2, v5

    or-int/2addr v0, v2

    sget v2, Lk0/f3;->F:I

    const/4 v6, 0x3

    shl-int/2addr v2, v6

    or-int/2addr v0, v2

    sget v2, Lk0/f3;->H:I

    const/4 v7, 0x2

    shl-int/2addr v2, v7

    sget v8, Lk0/f3;->J:I

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    or-int/2addr v2, v8

    or-int/2addr v0, v2

    int-to-byte v0, v0

    .line 2
    sget v2, Lk0/f3;->A:I

    int-to-byte v2, v2

    .line 3
    sget v8, Lk0/f3;->C:I

    int-to-byte v8, v8

    .line 4
    sget v10, Lk0/f3;->E:I

    int-to-byte v10, v10

    .line 5
    sget v11, Lk0/f3;->G:I

    int-to-byte v11, v11

    .line 6
    sget v12, Lk0/f3;->I:I

    int-to-byte v12, v12

    .line 7
    sget v13, Lk0/f3;->K:I

    int-to-byte v13, v13

    const/16 v14, 0xd

    new-array v14, v14, [I

    const/16 v15, 0xe3

    const/16 v16, 0x0

    aput v15, v14, v16

    const/16 v15, 0xa

    aput v15, v14, v9

    const/16 v9, -0x75

    aput v9, v14, v7

    aput v0, v14, v6

    aput v2, v14, v5

    aput v8, v14, v4

    aput v10, v14, v3

    aput v11, v14, v1

    const/16 v0, 0x8

    aput v12, v14, v0

    const/16 v0, 0x9

    aput v13, v14, v0

    aput v16, v14, v15

    const/16 v0, 0xb

    aput v16, v14, v0

    const/16 v0, 0xc

    aput v16, v14, v0

    .line 8
    invoke-static {v14}, Lz/k;->s([I)V

    return-void
.end method

.method public final h3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v3, -0x66

    aput v3, v0, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 p1, 0x4

    aput v1, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final k3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x3b

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final l3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x7b

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final m3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x7d

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final n3(I)V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x1b

    aput v4, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x3

    aput p1, v0, v3

    aput p1, v0, v2

    const/4 p1, 0x5

    aput v1, v0, p1

    const/4 p1, 0x6

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final o3()V
    .locals 17

    .line 1
    sget v0, Lk0/f3;->l:I

    const/4 v1, 0x7

    shl-int/2addr v0, v1

    sget v2, Lk0/f3;->m:I

    const/4 v3, 0x6

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    sget v2, Lk0/f3;->o:I

    const/4 v4, 0x5

    shl-int/2addr v2, v4

    or-int/2addr v0, v2

    sget v2, Lk0/f3;->q:I

    const/4 v5, 0x4

    shl-int/2addr v2, v5

    or-int/2addr v0, v2

    sget v2, Lk0/f3;->s:I

    const/4 v6, 0x3

    shl-int/2addr v2, v6

    or-int/2addr v0, v2

    sget v2, Lk0/f3;->u:I

    const/4 v7, 0x2

    shl-int/2addr v2, v7

    sget v8, Lk0/f3;->w:I

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    or-int/2addr v2, v8

    or-int/2addr v0, v2

    int-to-byte v0, v0

    .line 2
    sget v2, Lk0/f3;->n:I

    int-to-byte v2, v2

    .line 3
    sget v8, Lk0/f3;->p:I

    int-to-byte v8, v8

    .line 4
    sget v10, Lk0/f3;->r:I

    int-to-byte v10, v10

    .line 5
    sget v11, Lk0/f3;->t:I

    int-to-byte v11, v11

    .line 6
    sget v12, Lk0/f3;->v:I

    int-to-byte v12, v12

    .line 7
    sget v13, Lk0/f3;->x:I

    int-to-byte v13, v13

    const/16 v14, 0xd

    new-array v14, v14, [I

    const/16 v15, 0xe3

    const/16 v16, 0x0

    aput v15, v14, v16

    const/16 v15, 0xa

    aput v15, v14, v9

    const/16 v9, -0x76

    aput v9, v14, v7

    aput v0, v14, v6

    aput v2, v14, v5

    aput v8, v14, v4

    aput v10, v14, v3

    aput v11, v14, v1

    const/16 v0, 0x8

    aput v12, v14, v0

    const/16 v0, 0x9

    aput v13, v14, v0

    aput v16, v14, v15

    const/16 v0, 0xb

    aput v16, v14, v0

    const/16 v0, 0xc

    aput v16, v14, v0

    .line 8
    invoke-static {v14}, Lz/k;->s([I)V

    return-void
.end method
