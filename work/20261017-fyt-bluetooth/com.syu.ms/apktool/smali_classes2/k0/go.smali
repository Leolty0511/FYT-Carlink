.class public Lk0/go;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static i:I = 0xff


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:[I

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/go;->c:I

    const/16 v1, 0x28

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

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v4, 0x20

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v4, 0x21

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v4, 0x22

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v4, 0x23

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v4, 0x24

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v4, 0x25

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v4, 0x26

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v4, 0x27

    aput-object v3, v1, v4

    iput-object v1, p0, Lk0/go;->d:[[I

    .line 4
    iput v0, p0, Lk0/go;->e:I

    .line 5
    new-instance v1, Lk0/go$a;

    invoke-direct {v1, p0}, Lk0/go$a;-><init>(Lk0/go;)V

    iput-object v1, p0, Lk0/go;->f:Ljava/lang/Runnable;

    new-array v1, v2, [I

    .line 6
    fill-array-data v1, :array_28

    iput-object v1, p0, Lk0/go;->g:[I

    .line 7
    iput v0, p0, Lk0/go;->h:I

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
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
        0x15
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_c
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_d
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_e
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_f
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_10
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_11
    .array-data 4
        0x27
        0x15
    .end array-data

    :array_12
    .array-data 4
        0x28
        0x16
    .end array-data

    :array_13
    .array-data 4
        0x29
        0x35
    .end array-data

    :array_14
    .array-data 4
        0x2b
        0x40
    .end array-data

    :array_15
    .array-data 4
        0x2e
        0x27
    .end array-data

    :array_16
    .array-data 4
        0x30
        0x36
    .end array-data

    :array_17
    .array-data 4
        0x31
        0xb
    .end array-data

    :array_18
    .array-data 4
        0x32
        0x25
    .end array-data

    :array_19
    .array-data 4
        0x33
        0x41
    .end array-data

    :array_1a
    .array-data 4
        0x43
        0x20
    .end array-data

    :array_1b
    .array-data 4
        0x44
        0x21
    .end array-data

    :array_1c
    .array-data 4
        0x46
        0x3a
    .end array-data

    :array_1d
    .array-data 4
        0x47
        0x37
    .end array-data

    :array_1e
    .array-data 4
        0x49
        0x48
    .end array-data

    :array_1f
    .array-data 4
        0x4a
        0x47
    .end array-data

    :array_20
    .array-data 4
        0x4e
        0x5
    .end array-data

    :array_21
    .array-data 4
        0x4f
        0x3e
    .end array-data

    :array_22
    .array-data 4
        0x50
        0x20
    .end array-data

    :array_23
    .array-data 4
        0x51
        0x23
    .end array-data

    :array_24
    .array-data 4
        0x52
        0x22
    .end array-data

    :array_25
    .array-data 4
        0x53
        0x21
    .end array-data

    :array_26
    .array-data 4
        0x54
        0x19
    .end array-data

    :array_27
    .array-data 4
        0x57
        0x1
    .end array-data

    :array_28
    .array-data 4
        0x22
        0xcc
    .end array-data
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
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->l:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v3, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/go;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6d

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x29

    const v7, 0xff00

    const/4 v8, 0x2

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x30

    if-eq v2, v3, :cond_19

    const/16 v3, 0x55

    const/16 v10, 0x10

    const/16 v11, 0xd

    const/16 v12, 0xb

    const/16 v13, 0xf

    if-eq v2, v3, :cond_12

    const/16 v3, 0x60

    const/4 v14, 0x5

    const/4 v15, 0x3

    if-eq v2, v3, :cond_b

    const/16 v3, 0x68

    if-eq v2, v3, :cond_a

    const/16 v11, 0x1d

    const/4 v9, 0x4

    if-eq v2, v11, :cond_6

    const/16 v11, 0x1e

    if-eq v2, v11, :cond_5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_a

    :pswitch_0
    const/16 v2, 0x9c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v6, [I

    .line 3
    aget-byte v1, v1, v4

    shr-int/2addr v1, v14

    and-int/2addr v1, v15

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_1
    const/16 v2, 0x95

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 4
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v15

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v6, [I

    .line 5
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v15

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v6, [I

    .line 6
    aget-byte v7, v1, v4

    shr-int/2addr v7, v8

    and-int/2addr v7, v15

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v6, [I

    .line 7
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v6, [I

    .line 8
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 9
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v6, [I

    .line 10
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_2
    const/16 v2, 0xa7

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 11
    aget-byte v7, v1, v4

    shr-int/2addr v7, v14

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v6, [I

    .line 12
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v6, [I

    .line 13
    aget-byte v7, v1, v4

    shr-int/2addr v7, v15

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v6, [I

    .line 14
    aget-byte v7, v1, v4

    shr-int/2addr v7, v8

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v6, [I

    .line 15
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v6, [I

    .line 16
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_3
    const/16 v2, 0xa2

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 17
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 18
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 19
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 20
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x6

    .line 21
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_4
    const/16 v2, 0x63

    new-array v8, v6, [I

    add-int/lit8 v10, p2, 0x3

    .line 22
    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v7

    add-int/lit8 v11, p2, 0x2

    aget-byte v11, v1, v11

    and-int/2addr v11, v4

    or-int/2addr v10, v11

    aput v10, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v8, v6, [I

    add-int/lit8 v10, p2, 0x5

    .line 23
    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v7

    add-int/lit8 v11, p2, 0x4

    aget-byte v11, v1, v11

    and-int/2addr v11, v4

    or-int/2addr v10, v11

    aput v10, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v8, v6, [I

    add-int/lit8 v10, p2, 0x7

    .line 24
    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v7

    add-int/lit8 v11, p2, 0x6

    aget-byte v11, v1, v11

    and-int/2addr v11, v4

    or-int/2addr v10, v11

    aput v10, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v8, v6, [I

    add-int/lit8 v10, p2, 0x9

    .line 25
    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v7, v10

    add-int/lit8 v10, p2, 0x8

    aget-byte v10, v1, v10

    and-int/2addr v4, v10

    or-int/2addr v4, v7

    aput v4, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 26
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v13

    aput v7, v2, v5

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    .line 27
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v13

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 28
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v13

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    .line 29
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v13

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_5
    const/16 v2, 0x85

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 30
    aget-byte v10, v1, v7

    shr-int/2addr v10, v9

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v6, [I

    .line 31
    aget-byte v10, v1, v7

    shr-int/2addr v10, v15

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v6, [I

    .line 32
    aget-byte v10, v1, v7

    shr-int/lit8 v8, v10, 0x2

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v6, [I

    .line 33
    aget-byte v8, v1, v7

    shr-int/2addr v8, v6

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v6, [I

    .line 34
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 35
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x4

    .line 36
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_6
    const/16 v2, 0x82

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 37
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 38
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x4

    .line 39
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_7
    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x5

    .line 40
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x18

    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v1, v9

    shl-int/2addr v9, v10

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v7

    or-int/2addr v8, v9

    add-int/lit8 v9, p2, 0x2

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x7

    .line 41
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v7

    add-int/lit8 v9, p2, 0x6

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x9

    .line 42
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x8

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 43
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 44
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 45
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 46
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 47
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 48
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 49
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 50
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v15

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 51
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_9
    const/16 v2, 0x7a

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 52
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 53
    aget-byte v9, v1, v8

    shr-int/2addr v9, v6

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v6, [I

    .line 54
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x4

    .line 55
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v7

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x6

    .line 56
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v7

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x8

    .line 57
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v7

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0xa

    .line 58
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0xb

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_a
    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 59
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/lit8 v8, v8, 0x7

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 60
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v7

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x5

    .line 61
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v7

    add-int/lit8 v9, p2, 0x6

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x7

    .line 62
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v7

    add-int/lit8 v9, p2, 0x8

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x9

    .line 63
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v7

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0xb

    .line 64
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v7

    add-int/lit8 v9, p2, 0xc

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0xd

    .line 65
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v7

    const/16 v7, 0xe

    add-int/lit8 v7, p2, 0xe

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_b
    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 66
    aget-byte v10, v1, v8

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v6, [I

    .line 67
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/lit8 v8, v8, 0x7

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x3

    .line 68
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x4

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 70
    aget-byte v1, v1, v3

    and-int/2addr v2, v4

    .line 71
    iput v2, v0, Lk0/go;->c:I

    move v2, v5

    .line 72
    :goto_1
    iget-object v3, v0, Lk0/go;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_2

    .line 73
    iget v7, v0, Lk0/go;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_1

    if-eqz v7, :cond_2

    .line 74
    iput v2, v0, Lk0/go;->b:I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    and-int/2addr v1, v4

    if-ne v1, v6, :cond_3

    .line 75
    array-length v1, v3

    if-ge v2, v1, :cond_1d

    .line 76
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_3
    if-nez v1, :cond_1d

    .line 77
    iget v1, v0, Lk0/go;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_4

    if-eq v1, v4, :cond_4

    .line 78
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 79
    :cond_4
    iput v4, v0, Lk0/go;->b:I

    goto/16 :goto_a

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 81
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 82
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 83
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->v1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 84
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0x3

    .line 85
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    add-int/lit8 v10, p2, 0x4

    .line 86
    aget-byte v11, v1, v10

    and-int/2addr v11, v4

    add-int/lit8 v12, p2, 0x5

    .line 87
    aget-byte v13, v1, v12

    and-int/2addr v13, v4

    if-nez v3, :cond_7

    if-nez v8, :cond_7

    if-nez v11, :cond_7

    if-nez v13, :cond_7

    .line 88
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 89
    :cond_7
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_8

    sget v5, Ll0/c0;->h:I

    if-ne v5, v8, :cond_8

    sget v5, Ll0/c0;->i:I

    if-ne v5, v11, :cond_8

    sget v5, Ll0/c0;->j:I

    if-eq v5, v13, :cond_9

    .line 90
    :cond_8
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_9

    .line 91
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 92
    sput v9, Ll0/c0;->k:I

    .line 93
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 94
    :cond_9
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 95
    sput v8, Ll0/c0;->h:I

    .line 96
    sput v11, Ll0/c0;->i:I

    .line 97
    sput v13, Ll0/c0;->j:I

    .line 98
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 99
    aget-byte v2, v1, v7

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 100
    aget-byte v2, v1, v10

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 101
    aget-byte v1, v1, v12

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->v1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    :cond_a
    const/16 v2, 0x6f

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x3

    .line 102
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x2

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_b
    const/16 v2, 0x81

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 103
    aget-byte v7, v1, v4

    and-int/lit8 v7, v7, 0x7

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 104
    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0x7

    iget v3, v0, Lk0/go;->e:I

    if-eq v2, v3, :cond_e

    .line 105
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x7

    iput v1, v0, Lk0/go;->e:I

    if-ne v1, v6, :cond_c

    .line 106
    invoke-virtual/range {p0 .. p0}, Lk0/go;->b3()V

    goto/16 :goto_a

    :cond_c
    if-ne v1, v8, :cond_d

    .line 107
    invoke-virtual/range {p0 .. p0}, Lk0/go;->a3()V

    goto/16 :goto_a

    :cond_d
    if-ne v1, v15, :cond_1d

    .line 108
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    .line 109
    invoke-static {v14, v6}, Ll0/b0;->l0(II)V

    .line 110
    sget-object v1, Lu0/b;->c:Lu0/h;

    invoke-interface {v1, v5}, Lu0/h;->c(I)V

    goto/16 :goto_a

    .line 111
    :cond_e
    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0x7

    if-ne v2, v8, :cond_f

    sget v2, Lu0/b;->D:I

    if-eq v2, v11, :cond_f

    .line 112
    invoke-virtual/range {p0 .. p0}, Lk0/go;->a3()V

    goto/16 :goto_a

    .line 113
    :cond_f
    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0x7

    if-ne v2, v6, :cond_10

    sget v2, Lu0/b;->D:I

    if-eq v2, v12, :cond_10

    .line 114
    invoke-virtual/range {p0 .. p0}, Lk0/go;->b3()V

    goto/16 :goto_a

    .line 115
    :cond_10
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x7

    if-ne v1, v15, :cond_1d

    sget v1, Lu0/b;->D:I

    if-eq v1, v11, :cond_11

    if-ne v1, v12, :cond_1d

    .line 116
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lk0/go;->a3()V

    goto/16 :goto_a

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 117
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0x3

    .line 118
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    add-int/lit8 v9, p2, 0x4

    .line 119
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    add-int/lit8 v14, p2, 0x6

    .line 120
    aget-byte v14, v1, v14

    and-int/2addr v14, v4

    const-string v15, "persist.fyt.reversetemp"

    .line 121
    invoke-static {v15, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 122
    aget-byte v3, v1, v7

    and-int/2addr v3, v4

    .line 123
    aget-byte v2, v1, v2

    and-int/lit16 v8, v2, 0xff

    :cond_13
    const/16 v2, 0x1b

    if-ne v3, v10, :cond_14

    new-array v3, v6, [I

    const/4 v7, -0x2

    aput v7, v3, v5

    .line 124
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_14
    const/16 v7, 0x50

    if-ne v3, v7, :cond_15

    new-array v3, v6, [I

    const/4 v7, -0x3

    aput v7, v3, v5

    .line 125
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_15
    new-array v7, v6, [I

    aput v3, v7, v5

    .line 126
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x1c

    if-ne v8, v10, :cond_16

    new-array v3, v6, [I

    const/4 v7, -0x2

    aput v7, v3, v5

    .line 127
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_16
    const/16 v3, 0x50

    if-ne v8, v3, :cond_17

    new-array v3, v6, [I

    const/4 v7, -0x3

    aput v7, v3, v5

    .line 128
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_17
    new-array v3, v6, [I

    aput v8, v3, v5

    .line 129
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    shr-int/lit8 v2, v9, 0x4

    and-int/2addr v2, v13

    packed-switch v2, :pswitch_data_3

    move v2, v5

    move v3, v2

    :goto_6
    move v7, v3

    :goto_7
    move v8, v7

    goto :goto_8

    :pswitch_d
    move v2, v5

    move v3, v6

    goto :goto_6

    :pswitch_e
    move v2, v5

    move v7, v2

    move v8, v7

    move v3, v6

    goto :goto_8

    :pswitch_f
    move v2, v5

    move v8, v2

    move v3, v6

    move v7, v3

    goto :goto_8

    :pswitch_10
    move v2, v5

    move v7, v2

    move v3, v6

    move v8, v3

    goto :goto_8

    :pswitch_11
    move v2, v5

    move v3, v2

    move v7, v3

    move v8, v6

    goto :goto_8

    :pswitch_12
    move v2, v5

    move v3, v2

    move v7, v6

    goto :goto_7

    :pswitch_13
    move v2, v5

    move v3, v2

    move v8, v3

    move v7, v6

    goto :goto_8

    :pswitch_14
    move v3, v5

    move v7, v3

    move v8, v7

    move v2, v6

    :goto_8
    const/16 v15, 0x31

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 130
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v6, [I

    aput v3, v4, v5

    .line 131
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    aput v7, v3, v5

    .line 132
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    aput v8, v3, v5

    .line 133
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    shr-int/lit8 v4, v9, 0x0

    and-int/2addr v4, v13

    aput v4, v3, v5

    .line 134
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v14, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 135
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v14, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 136
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v6, [I

    shr-int/lit8 v4, v14, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 137
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v6, [I

    shr-int/lit8 v4, v14, 0x4

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 138
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v14, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/16 v3, 0xc

    .line 139
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v14, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/16 v3, 0xe

    .line 140
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v14, 0x1

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 141
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v14, 0x0

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 142
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 143
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    mul-int/lit8 v3, v2, 0xa

    add-int/lit16 v3, v3, 0x258

    if-nez v2, :cond_18

    .line 144
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto :goto_9

    .line 145
    :cond_18
    invoke-static {v3}, Lu0/d;->A3(I)V

    :goto_9
    const/16 v2, 0x48

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 146
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x26

    new-array v3, v6, [I

    .line 147
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 148
    :cond_19
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1a
    add-int/lit8 v2, p2, 0x3

    .line 149
    aget-byte v3, v1, v2

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    add-int/lit8 v4, p2, 0x2

    aget-byte v7, v1, v4

    const/16 v8, 0xff

    and-int/2addr v7, v8

    or-int/2addr v3, v7

    const v7, 0x8000

    if-ne v3, v7, :cond_1b

    const/16 v1, 0x1640

    .line 150
    invoke-static {v5, v5, v6, v1}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    .line 151
    :cond_1b
    aget-byte v3, v1, v4

    aget-byte v1, v1, v2

    const/16 v2, 0x1640

    invoke-static {v3, v1, v6, v2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :cond_1c
    const/16 v2, 0x8c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 152
    aget-byte v4, v1, v4

    const/16 v7, 0xff

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 153
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 154
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 155
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 156
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 157
    aget-byte v4, v1, v4

    const/16 v7, 0xff

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 158
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 159
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 160
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1d
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x70
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/go;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xad

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

    const/4 p3, 0x5

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0xa1

    aput p3, p1, v3

    aput v2, p1, v2

    .line 1
    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0xa3

    aput p3, p1, v3

    aput v2, p1, v2

    .line 2
    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0x8f

    aput p3, p1, v3

    aput v2, p1, v2

    .line 3
    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput v0, p1, v4

    const/16 v0, 0x33

    aput v0, p1, v3

    aput v1, p1, v2

    .line 4
    aget p2, p2, v4

    aput p2, p1, p4

    iget-object p2, p0, Lk0/go;->g:[I

    iget p4, p0, Lk0/go;->h:I

    rem-int/2addr p4, v2

    aget p2, p2, p4

    aput p2, p1, v1

    aput v4, p1, p3

    const/4 p2, 0x6

    aput v4, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    .line 5
    iget p1, p0, Lk0/go;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lk0/go;->h:I

    .line 6
    rem-int/2addr p1, v2

    iput p1, p0, Lk0/go;->h:I

    goto/16 :goto_0

    :pswitch_4
    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v2, p1, v2

    .line 7
    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 p3, 0x37

    aput p3, p1, v3

    aput v3, p1, v2

    .line 8
    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 p3, 0x36

    aput p3, p1, v3

    aput v3, p1, v2

    .line 9
    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0x83

    aput p3, p1, v3

    aput v2, p1, v2

    .line 10
    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_8
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 p3, 0x35

    aput p3, p1, v3

    aput v3, p1, v2

    .line 11
    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_9
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 p3, 0x34

    aput p3, p1, v3

    aput v3, p1, v2

    .line 12
    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method public final a3()V
    .locals 3

    const-string v0, "com.syu.carinfo.xc.tule.XCTuleCDCarCD"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final b3()V
    .locals 3

    const-string v0, "com.syu.carinfo.xc.tule.XCTuleCDCarRadio"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
