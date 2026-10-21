.class public Lk0/cm;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static G:I = 0x0

.field public static H:I = 0x0

.field public static I:I = 0x1


# instance fields
.field public A:I

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:[I

.field public E:I

.field public F:I

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:I

.field public j:I

.field public k:[[Ljava/lang/String;

.field public l:[[Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:F

.field public t:I

.field public u:I

.field public v:Ljava/lang/Runnable;

.field public w:Lo1/g0;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 2
    iput-object v1, p0, Lk0/cm;->b:[B

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lk0/cm;->c:I

    .line 4
    iput v1, p0, Lk0/cm;->d:I

    .line 5
    iput v1, p0, Lk0/cm;->e:I

    .line 6
    iput v1, p0, Lk0/cm;->g:I

    const/16 v2, 0x3b

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 7
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

    const/4 v7, 0x5

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v7, 0x6

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v7, 0x7

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v7, 0x8

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v7, 0x9

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v7, 0xa

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v7, 0xb

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v7, 0xc

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v7, 0xd

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v7, 0xe

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v7, 0xf

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v7, 0x10

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v7, 0x11

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v7, 0x12

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    const/16 v7, 0x13

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    const/16 v7, 0x14

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    const/16 v7, 0x15

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    const/16 v7, 0x16

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    const/16 v7, 0x17

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    const/16 v7, 0x18

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    const/16 v7, 0x19

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    const/16 v7, 0x1a

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    const/16 v7, 0x1b

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_1c

    const/16 v7, 0x1c

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_1d

    const/16 v7, 0x1d

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    const/16 v7, 0x1e

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    const/16 v7, 0x1f

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_20

    const/16 v7, 0x20

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_21

    const/16 v8, 0x21

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_22

    const/16 v8, 0x22

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_23

    const/16 v8, 0x23

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_24

    const/16 v8, 0x24

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_25

    const/16 v8, 0x25

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_26

    const/16 v8, 0x26

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_27

    const/16 v8, 0x27

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_28

    const/16 v8, 0x28

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_29

    const/16 v8, 0x29

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2a

    const/16 v8, 0x2a

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2b

    const/16 v8, 0x2b

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2c

    const/16 v8, 0x2c

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2d

    const/16 v8, 0x2d

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2e

    const/16 v8, 0x2e

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2f

    const/16 v8, 0x2f

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_30

    const/16 v8, 0x30

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_31

    const/16 v8, 0x31

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_32

    const/16 v8, 0x32

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_33

    const/16 v8, 0x33

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_34

    const/16 v8, 0x34

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_35

    const/16 v8, 0x35

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_36

    const/16 v8, 0x36

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_37

    const/16 v8, 0x37

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_38

    const/16 v8, 0x38

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_39

    const/16 v8, 0x39

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_3a

    const/16 v8, 0x3a

    aput-object v4, v2, v8

    iput-object v2, p0, Lk0/cm;->h:[[I

    .line 8
    iput v1, p0, Lk0/cm;->i:I

    const/4 v2, -0x1

    .line 9
    iput v2, p0, Lk0/cm;->j:I

    new-array v4, v3, [I

    .line 10
    fill-array-data v4, :array_3b

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    iput-object v4, p0, Lk0/cm;->k:[[Ljava/lang/String;

    new-array v4, v3, [I

    .line 11
    fill-array-data v4, :array_3c

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lk0/cm;->l:[[Ljava/lang/String;

    .line 12
    iput v1, p0, Lk0/cm;->m:I

    .line 13
    new-instance v0, Lk0/cm$a;

    invoke-direct {v0, p0}, Lk0/cm$a;-><init>(Lk0/cm;)V

    iput-object v0, p0, Lk0/cm;->n:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/cm$b;

    invoke-direct {v0, p0}, Lk0/cm$b;-><init>(Lk0/cm;)V

    iput-object v0, p0, Lk0/cm;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/cm$c;

    invoke-direct {v0, p0}, Lk0/cm$c;-><init>(Lk0/cm;)V

    iput-object v0, p0, Lk0/cm;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/cm$d;

    invoke-direct {v0, p0}, Lk0/cm$d;-><init>(Lk0/cm;)V

    iput-object v0, p0, Lk0/cm;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/cm$e;

    invoke-direct {v0, p0}, Lk0/cm$e;-><init>(Lk0/cm;)V

    iput-object v0, p0, Lk0/cm;->r:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lk0/cm;->s:F

    const/16 v0, 0xff

    .line 19
    iput v0, p0, Lk0/cm;->t:I

    .line 20
    iput v0, p0, Lk0/cm;->u:I

    .line 21
    new-instance v0, Lk0/cm$f;

    invoke-direct {v0, p0}, Lk0/cm$f;-><init>(Lk0/cm;)V

    iput-object v0, p0, Lk0/cm;->v:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/cm;->w:Lo1/g0;

    .line 23
    iput v5, p0, Lk0/cm;->x:I

    .line 24
    iput v3, p0, Lk0/cm;->y:I

    .line 25
    iput v6, p0, Lk0/cm;->z:I

    .line 26
    iput v1, p0, Lk0/cm;->A:I

    .line 27
    new-instance v0, Lk0/cm$g;

    invoke-direct {v0, p0}, Lk0/cm$g;-><init>(Lk0/cm;)V

    iput-object v0, p0, Lk0/cm;->B:Ljava/lang/Runnable;

    .line 28
    new-instance v0, Lk0/cm$h;

    invoke-direct {v0, p0}, Lk0/cm$h;-><init>(Lk0/cm;)V

    iput-object v0, p0, Lk0/cm;->C:Ljava/lang/Runnable;

    new-array v0, v3, [I

    .line 29
    fill-array-data v0, :array_3d

    iput-object v0, p0, Lk0/cm;->D:[I

    .line 30
    iput v1, p0, Lk0/cm;->E:I

    .line 31
    iput v2, p0, Lk0/cm;->F:I

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
        0x5
        0x12
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
        0x9
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_a
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_b
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_c
    .array-data 4
        0x10
        0x20
    .end array-data

    :array_d
    .array-data 4
        0x11
        0x21
    .end array-data

    :array_e
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x20
        0x31
    .end array-data

    :array_10
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_11
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_12
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_13
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_14
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_15
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_16
    .array-data 4
        0x27
        0x2e
    .end array-data

    :array_17
    .array-data 4
        0x28
        0x2f
    .end array-data

    :array_18
    .array-data 4
        0x29
        0x30
    .end array-data

    :array_19
    .array-data 4
        0x2a
        0x32
    .end array-data

    :array_1a
    .array-data 4
        0x2b
        0x33
    .end array-data

    :array_1b
    .array-data 4
        0x33
        0x36
    .end array-data

    :array_1c
    .array-data 4
        0x34
        0x18
    .end array-data

    :array_1d
    .array-data 4
        0x35
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_1f
    .array-data 4
        0x37
        0x9
    .end array-data

    :array_20
    .array-data 4
        0x38
        0x26
    .end array-data

    :array_21
    .array-data 4
        0x39
        0x12
    .end array-data

    :array_22
    .array-data 4
        0x3d
        0x38
    .end array-data

    :array_23
    .array-data 4
        0x3f
        0x0
    .end array-data

    :array_24
    .array-data 4
        0x48
        0x1d
    .end array-data

    :array_25
    .array-data 4
        0x49
        0x20
    .end array-data

    :array_26
    .array-data 4
        0x4a
        0x21
    .end array-data

    :array_27
    .array-data 4
        0x4b
        0x22
    .end array-data

    :array_28
    .array-data 4
        0x4c
        0x23
    .end array-data

    :array_29
    .array-data 4
        0x52
        0x3
    .end array-data

    :array_2a
    .array-data 4
        0x53
        0x4
    .end array-data

    :array_2b
    .array-data 4
        0x54
        0xb
    .end array-data

    :array_2c
    .array-data 4
        0x56
        0x4e
    .end array-data

    :array_2d
    .array-data 4
        0x57
        0x3a
    .end array-data

    :array_2e
    .array-data 4
        0x59
        0x26
    .end array-data

    :array_2f
    .array-data 4
        0x5a
        0xc
    .end array-data

    :array_30
    .array-data 4
        0x5b
        0x19
    .end array-data

    :array_31
    .array-data 4
        0x5c
        0x28
    .end array-data

    :array_32
    .array-data 4
        0x5d
        0x29
    .end array-data

    :array_33
    .array-data 4
        0x5e
        0x2a
    .end array-data

    :array_34
    .array-data 4
        0x5f
        0x2b
    .end array-data

    :array_35
    .array-data 4
        0x6f
        0x36
    .end array-data

    :array_36
    .array-data 4
        0x8f
        0x10
    .end array-data

    :array_37
    .array-data 4
        0xf0
        -0x1
    .end array-data

    :array_38
    .array-data 4
        0xf1
        -0x1
    .end array-data

    :array_39
    .array-data 4
        0xf2
        -0x1
    .end array-data

    :array_3a
    .array-data 4
        0xf3
        -0x1
    .end array-data

    :array_3b
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_3c
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_3d
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static a3()V
    .locals 12

    const/16 v0, 0x9

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
    const/16 v3, 0xc8

    aput v3, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x7

    aput v4, v1, v3

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v5, v3, :cond_2

    const/16 v3, 0x8

    if-eq v5, v8, :cond_1

    packed-switch v5, :pswitch_data_0

    aput v9, v1, v10

    goto/16 :goto_2

    :pswitch_0
    aput v8, v1, v10

    .line 3
    sget v5, Lu0/b;->r3:I

    and-int/lit16 v11, v5, 0xff

    aput v11, v1, v9

    shr-int/2addr v5, v3

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v8

    .line 4
    sget v5, Lu0/b;->s3:I

    and-int/lit16 v8, v5, 0xff

    aput v8, v1, v7

    shr-int/2addr v5, v3

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v6

    .line 5
    sget v5, Lu0/b;->t3:I

    and-int/lit16 v6, v5, 0xff

    aput v6, v1, v4

    shr-int/lit8 v4, v5, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    goto :goto_2

    :cond_1
    :pswitch_1
    aput v10, v1, v10

    .line 6
    sget v4, Lo0/e;->B:I

    and-int/lit16 v5, v4, 0xff

    aput v5, v1, v9

    shr-int/2addr v4, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v8

    .line 7
    sget v4, Lo0/e;->C:I

    and-int/lit16 v5, v4, 0xff

    aput v5, v1, v7

    shr-int/lit8 v3, v4, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v6

    goto :goto_2

    :cond_2
    aput v3, v1, v10

    .line 8
    sget v4, Lw0/d;->h:I

    const/high16 v5, 0x10000

    if-ne v4, v5, :cond_3

    aput v2, v1, v9

    goto :goto_1

    :cond_3
    const v5, 0x10001

    if-ne v4, v5, :cond_4

    aput v3, v1, v9

    goto :goto_1

    :cond_4
    const v5, 0x10002

    if-ne v4, v5, :cond_5

    aput v10, v1, v9

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    if-ne v4, v3, :cond_7

    :cond_6
    const/16 v3, 0x10

    aput v3, v1, v9

    .line 9
    :cond_7
    :goto_1
    sget v3, Lw0/d;->i:I

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v7

    .line 10
    sget v3, Lw0/d;->j:I

    aput v3, v1, v6

    .line 11
    :goto_2
    sget v3, Lu0/b;->a0:I

    if-nez v3, :cond_8

    aput v2, v1, v10

    :cond_8
    const/16 v3, 0xa

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_9

    add-int/lit8 v4, v2, 0x1

    .line 12
    aget v2, v1, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 13
    :cond_9
    invoke-static {v3}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c3(Lk0/cm;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/cm;->s:F

    return p0
.end method

.method public static synthetic d3(Lk0/cm;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/cm;->s:F

    return p1
.end method

.method public static synthetic e3(Lk0/cm;F)F
    .locals 1

    .line 1
    iget v0, p0, Lk0/cm;->s:F

    rem-float/2addr v0, p1

    iput v0, p0, Lk0/cm;->s:F

    return v0
.end method

.method public static synthetic f3(Lk0/cm;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/cm;->u:I

    return p0
.end method

.method public static synthetic g3(Lk0/cm;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/cm;->u:I

    return p1
.end method

.method public static synthetic h3(Lk0/cm;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/cm;->t:I

    return p0
.end method

.method public static synthetic i3(Lk0/cm;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/cm;->t:I

    return p1
.end method

.method public static synthetic j3(Lk0/cm;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/cm;->w:Lo1/g0;

    return-object p0
.end method

.method public static synthetic k3(Lk0/cm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/cm;->s3(I)V

    return-void
.end method

.method public static synthetic l3(Lk0/cm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/cm;->r3(I)V

    return-void
.end method

.method public static synthetic m3(Lk0/cm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/cm;->t3(I)V

    return-void
.end method

.method public static u3([B)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_0
    return-void
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
    iget-object v0, p0, Lk0/cm;->w:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/cm;->B:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/cm;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v1, p0, Lk0/cm;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v2, v0, Lk0/mt;->e:I

    .line 7
    iput v2, v0, Lk0/mt;->f:I

    .line 8
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lk0/mt;->h:I

    .line 10
    iput v2, v0, Lk0/mt;->i:I

    .line 11
    iput v2, v0, Lk0/mt;->q:I

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 14
    iget-object v0, p0, Lk0/cm;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 15
    :cond_0
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 16
    :sswitch_0
    iget-object v0, p0, Lk0/cm;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 17
    :goto_0
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/cm;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/cm;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    iget-object v0, p0, Lk0/cm;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lk0/cm;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1401c6 -> :sswitch_0
        0x1501c6 -> :sswitch_0
        0x1601c6 -> :sswitch_0
        0x1701c6 -> :sswitch_0
        0x1801c6 -> :sswitch_0
        0x1901c6 -> :sswitch_0
        0x1a01c6 -> :sswitch_0
        0x1b01c6 -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v3, 0x2b

    const/16 v4, 0xf

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x2c

    const/16 v12, 0xff

    if-eq v2, v3, :cond_3c

    const/16 v3, 0x30

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x35

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x55

    const/16 v13, 0x3c

    const/16 v16, -0x2

    const/16 v15, 0xb

    const/4 v14, 0x7

    if-eq v2, v3, :cond_30

    const/16 v3, 0x78

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x79

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x8

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_17

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v0, v0, v2

    and-int/2addr v0, v12

    .line 3
    iget v2, v1, Lk0/cm;->m:I

    if-eq v0, v2, :cond_3e

    if-ne v0, v11, :cond_0

    const/16 v2, 0x4b

    .line 4
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 5
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_0

    :cond_0
    if-ne v0, v8, :cond_1

    const/16 v2, 0x4a

    .line 6
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 7
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_0

    :cond_1
    if-ne v0, v7, :cond_2

    const/16 v2, 0x36

    .line 8
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 9
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 10
    :cond_2
    :goto_0
    iput v0, v1, Lk0/cm;->m:I

    goto/16 :goto_17

    :pswitch_1
    const/16 v2, 0x8a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 11
    aget-byte v5, v0, v4

    and-int/2addr v5, v12

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 12
    iget v2, v1, Lk0/cm;->A:I

    if-ne v2, v6, :cond_3e

    .line 13
    aget-byte v2, v0, v4

    iget v3, v1, Lk0/cm;->m:I

    if-eq v2, v3, :cond_4

    .line 14
    aget-byte v0, v0, v4

    iput v0, v1, Lk0/cm;->m:I

    if-ne v0, v11, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Lk0/cm;->o3()V

    goto/16 :goto_17

    :cond_3
    if-ne v0, v8, :cond_3e

    .line 16
    invoke-virtual/range {p0 .. p0}, Lk0/cm;->n3()V

    goto/16 :goto_17

    .line 17
    :cond_4
    aget-byte v2, v0, v4

    if-ne v2, v8, :cond_5

    sget v2, Lu0/b;->D:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_5

    .line 18
    invoke-virtual/range {p0 .. p0}, Lk0/cm;->n3()V

    goto/16 :goto_17

    .line 19
    :cond_5
    aget-byte v0, v0, v4

    if-ne v0, v11, :cond_3e

    sget v0, Lu0/b;->D:I

    if-eq v0, v15, :cond_3e

    .line 20
    invoke-virtual/range {p0 .. p0}, Lk0/cm;->o3()V

    goto/16 :goto_17

    :pswitch_2
    const/16 v2, 0x8b

    new-array v3, v11, [I

    add-int/lit8 v8, p2, 0x2

    .line 21
    aget-byte v8, v0, v8

    and-int/2addr v8, v12

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v11, [I

    add-int/lit8 v8, p2, 0x3

    .line 22
    aget-byte v12, v0, v8

    shr-int/2addr v12, v7

    and-int/2addr v12, v4

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v11, [I

    .line 23
    aget-byte v8, v0, v8

    shr-int/2addr v8, v10

    and-int/2addr v8, v4

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v11, [I

    add-int/lit8 v8, p2, 0x4

    .line 24
    aget-byte v12, v0, v8

    shr-int/2addr v12, v7

    and-int/2addr v12, v4

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v11, [I

    .line 25
    aget-byte v8, v0, v8

    shr-int/2addr v8, v10

    and-int/2addr v8, v4

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v11, [I

    add-int/lit8 v8, p2, 0x5

    .line 26
    aget-byte v12, v0, v8

    shr-int/2addr v12, v7

    and-int/2addr v12, v4

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v11, [I

    .line 27
    aget-byte v8, v0, v8

    shr-int/2addr v8, v10

    and-int/2addr v4, v8

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 28
    aget-byte v8, v0, v4

    shr-int/2addr v8, v14

    and-int/2addr v8, v11

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v11, [I

    .line 29
    aget-byte v8, v0, v4

    shr-int/lit8 v6, v8, 0x6

    and-int/2addr v6, v11

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v11, [I

    .line 30
    aget-byte v6, v0, v4

    shr-int/lit8 v5, v6, 0x5

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v11, [I

    .line 31
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v11, [I

    .line 32
    aget-byte v5, v0, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v11, [I

    .line 33
    aget-byte v4, v0, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v14

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 34
    aget-byte v0, v0, v4

    shr-int/2addr v0, v14

    and-int/2addr v0, v11

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_3
    const/16 v2, 0x81

    new-array v4, v11, [I

    add-int/lit8 v7, p2, 0x2

    .line 35
    aget-byte v7, v0, v7

    and-int/2addr v7, v12

    aput v7, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v11, [I

    add-int/lit8 v7, p2, 0x3

    .line 36
    aget-byte v7, v0, v7

    and-int/2addr v7, v12

    aput v7, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v4, v11, [I

    add-int/lit8 v7, p2, 0x4

    .line 37
    aget-byte v8, v0, v7

    shr-int/2addr v8, v14

    and-int/2addr v8, v11

    aput v8, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v4, v11, [I

    .line 38
    aget-byte v8, v0, v7

    shr-int/lit8 v6, v8, 0x6

    and-int/2addr v6, v11

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v4, v11, [I

    .line 39
    aget-byte v6, v0, v7

    shr-int/lit8 v5, v6, 0x5

    and-int/2addr v5, v11

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 40
    aget-byte v5, v0, v5

    and-int/2addr v5, v12

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x6

    .line 41
    aget-byte v5, v0, v5

    and-int/2addr v5, v12

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x7

    .line 42
    aget-byte v5, v0, v5

    and-int/2addr v5, v12

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v4, v11, [I

    add-int/lit8 v3, p2, 0x8

    .line 43
    aget-byte v0, v0, v3

    and-int/2addr v0, v12

    aput v0, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_4
    add-int/lit8 v2, p2, 0x1

    .line 44
    aget-byte v2, v0, v2

    .line 45
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x4

    sub-int/2addr v2, v8

    const-string v5, "ascii"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v0, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v2, p2, 0x3

    .line 46
    aget-byte v0, v0, v2

    and-int/2addr v0, v12

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_17

    :pswitch_5
    const/16 v0, 0x7f

    .line 47
    invoke-static {v0, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_17

    :pswitch_6
    const/16 v0, 0x7e

    .line 48
    invoke-static {v0, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_17

    :pswitch_7
    const/16 v0, 0x7d

    .line 49
    invoke-static {v0, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_17

    :pswitch_8
    const/16 v0, 0x7c

    .line 50
    invoke-static {v0, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_17

    :pswitch_9
    const/16 v0, 0x7b

    .line 51
    invoke-static {v0, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_17

    :pswitch_a
    const/16 v0, 0x7a

    .line 52
    invoke-static {v0, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_17

    :pswitch_b
    const/16 v2, 0x77

    new-array v4, v11, [I

    add-int/lit8 v6, p2, 0x2

    .line 53
    aget-byte v6, v0, v6

    and-int/2addr v6, v12

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v11, [I

    add-int/lit8 v6, p2, 0x3

    .line 54
    aget-byte v6, v0, v6

    and-int/2addr v6, v12

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v4, v11, [I

    add-int/lit8 v6, p2, 0x6

    .line 55
    aget-byte v6, v0, v6

    and-int/2addr v6, v12

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v11, [I

    add-int/lit8 v6, p2, 0x4

    .line 56
    aget-byte v6, v0, v6

    shl-int/lit8 v3, v6, 0x8

    const v6, 0xff00

    and-int/2addr v3, v6

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v12

    or-int/2addr v0, v3

    aput v0, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_c
    const/16 v2, 0x6a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 57
    aget-byte v4, v0, v4

    mul-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x4

    aget-byte v0, v0, v5

    add-int/2addr v4, v0

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_d
    add-int/lit8 v2, p2, 0x2

    .line 58
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    mul-int/2addr v2, v13

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v0, v3

    add-int/2addr v2, v3

    mul-int/2addr v2, v13

    add-int/lit8 v3, p2, 0x4

    aget-byte v0, v0, v3

    add-int/2addr v2, v0

    const/16 v0, 0x65

    new-array v3, v11, [I

    aput v2, v3, v10

    .line 59
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    .line 60
    :pswitch_e
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x63

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x2

    aget-byte v7, v0, v6

    and-int/2addr v7, v12

    aput v7, v5, v10

    add-int/lit8 v7, p2, 0x4

    aget-byte v13, v0, v7

    and-int/2addr v13, v12

    aput v13, v5, v11

    add-int/lit8 v13, p2, 0x5

    aget-byte v13, v0, v13

    and-int/2addr v13, v12

    aput v13, v5, v8

    invoke-static {v2, v4, v5}, Lo1/x;->B([Lo1/x;I[I)V

    .line 61
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p2, 0x6

    add-int v5, p2, p3

    sub-int/2addr v5, v11

    :goto_1
    if-ge v4, v5, :cond_6

    add-int/lit8 v13, v4, 0x1

    .line 62
    aget-byte v13, v0, v13

    and-int/2addr v13, v12

    aget-byte v14, v0, v4

    shl-int/2addr v14, v3

    or-int/2addr v13, v14

    int-to-char v13, v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_6
    const/16 v3, 0x64

    new-array v4, v9, [I

    .line 63
    aget-byte v5, v0, v6

    and-int/2addr v5, v12

    aput v5, v4, v10

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v0, v5

    and-int/2addr v5, v12

    aput v5, v4, v11

    aget-byte v0, v0, v7

    and-int/2addr v0, v12

    aput v0, v4, v8

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v3, v4, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    :pswitch_f
    new-array v2, v6, [I

    :goto_2
    if-ge v10, v6, :cond_7

    add-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v10

    .line 67
    aget-byte v3, v0, v3

    aput v3, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 68
    :cond_7
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x69

    invoke-static {v0, v3, v2}, Lo1/x;->B([Lo1/x;I[I)V

    goto/16 :goto_17

    :pswitch_10
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    if-eq v2, v11, :cond_a

    if-eq v2, v8, :cond_9

    if-eq v2, v9, :cond_8

    goto/16 :goto_17

    :cond_8
    const/16 v2, 0xb2

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 70
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 71
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 72
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 73
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 74
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 75
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 76
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 77
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xb

    .line 78
    aget-byte v0, v0, v4

    and-int/2addr v0, v12

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_9
    const/16 v2, 0xae

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x3

    .line 79
    aget-byte v6, v0, v5

    shr-int/2addr v6, v11

    and-int/2addr v6, v11

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v4, v11, [I

    .line 80
    aget-byte v5, v0, v5

    shr-int/2addr v5, v10

    and-int/2addr v5, v11

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x9

    .line 81
    aget-byte v5, v0, v5

    shl-int/2addr v5, v3

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v0, v6

    and-int/2addr v6, v12

    or-int/2addr v5, v6

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xa

    .line 82
    aget-byte v5, v0, v5

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xb

    aget-byte v6, v0, v6

    shl-int/lit8 v3, v6, 0x8

    const v6, 0xff00

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v0, v0, v5

    and-int/2addr v0, v12

    or-int/2addr v0, v3

    aput v0, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_a
    add-int/lit8 v2, p2, 0x3

    .line 83
    aget-byte v4, v0, v2

    shr-int/2addr v4, v10

    and-int/2addr v4, v11

    .line 84
    aget-byte v5, v0, v2

    shr-int/2addr v5, v11

    and-int/2addr v5, v11

    shl-int/2addr v4, v9

    and-int/2addr v3, v4

    shl-int/lit8 v4, v5, 0x4

    const/16 v5, 0x10

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 85
    sget v4, Lu0/b;->w:I

    shl-int/2addr v4, v6

    and-int/lit8 v4, v4, 0x40

    or-int/2addr v3, v4

    .line 86
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x419

    new-array v6, v8, [I

    aput v15, v6, v10

    aput v3, v6, v11

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v3, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const-string v3, "persist.fyt.leftrightlighttype"

    .line 87
    invoke-static {v3, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_b

    .line 88
    aget-byte v3, v0, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v11

    aget-byte v0, v0, v2

    shr-int/2addr v0, v11

    and-int/2addr v0, v11

    invoke-static {v3, v0, v10}, Ll0/c0;->b(III)V

    goto/16 :goto_17

    .line 89
    :cond_b
    aget-byte v3, v0, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v11

    aget-byte v0, v0, v2

    shr-int/2addr v0, v11

    and-int/2addr v0, v11

    invoke-static {v3, v0, v10}, Ll0/c0;->a(III)V

    goto/16 :goto_17

    .line 90
    :pswitch_11
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_17

    :cond_c
    const/16 v2, 0xaa

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 91
    aget-byte v5, v0, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v11, [I

    .line 92
    aget-byte v4, v0, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 93
    aget-byte v0, v0, v4

    shr-int/2addr v0, v10

    and-int/2addr v0, v12

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_12
    const/16 v2, 0x76

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 94
    aget-byte v0, v0, v4

    and-int/2addr v0, v12

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_13
    const/16 v2, 0x71

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 95
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    .line 96
    aget-byte v0, v0, v4

    shr-int/2addr v0, v9

    and-int/2addr v0, v11

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_14
    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v0, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 98
    invoke-static {v3, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_d

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 99
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 100
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 101
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 102
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 103
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 104
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v11

    aput v2, v3, v10

    .line 105
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 106
    aget-byte v2, v0, v2

    shr-int/2addr v2, v7

    and-int/2addr v2, v11

    if-ne v2, v11, :cond_e

    .line 107
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto :goto_4

    .line 108
    :cond_e
    invoke-static {v10}, Lk0/qt;->a(I)V

    :goto_4
    const/16 v2, 0x71

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 109
    aget-byte v4, v0, v4

    shr-int/2addr v4, v14

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 110
    aget-byte v4, v0, v4

    shr-int/2addr v4, v14

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 111
    aget-byte v8, v0, v4

    shr-int/lit8 v7, v8, 0x4

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v11, [I

    .line 112
    aget-byte v7, v0, v4

    shr-int/2addr v7, v14

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v11, [I

    .line 113
    aget-byte v7, v0, v4

    shr-int/lit8 v5, v7, 0x5

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v11, [I

    .line 114
    aget-byte v0, v0, v4

    shr-int/2addr v0, v6

    and-int/2addr v0, v11

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_15
    add-int/lit8 v2, p2, 0x2

    .line 115
    aget-byte v3, v0, v2

    and-int/2addr v3, v12

    add-int/lit8 v4, p2, 0x3

    .line 116
    aget-byte v6, v0, v4

    and-int/2addr v6, v12

    add-int/lit8 v8, p2, 0x4

    .line 117
    aget-byte v9, v0, v8

    and-int/2addr v9, v12

    add-int/lit8 v5, p2, 0x5

    .line 118
    aget-byte v13, v0, v5

    and-int/2addr v13, v12

    if-nez v3, :cond_f

    if-nez v6, :cond_f

    if-nez v9, :cond_f

    if-nez v13, :cond_f

    .line 119
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_5

    .line 120
    :cond_f
    sget v10, Ll0/c0;->g:I

    if-ne v10, v3, :cond_10

    sget v10, Ll0/c0;->h:I

    if-ne v10, v6, :cond_10

    sget v10, Ll0/c0;->i:I

    if-ne v10, v9, :cond_10

    sget v10, Ll0/c0;->j:I

    if-eq v10, v13, :cond_11

    .line 121
    :cond_10
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_11

    .line 122
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 123
    sput v7, Ll0/c0;->k:I

    .line 124
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 125
    :cond_11
    :goto_5
    sput v3, Ll0/c0;->g:I

    .line 126
    sput v6, Ll0/c0;->h:I

    .line 127
    sput v9, Ll0/c0;->i:I

    .line 128
    sput v13, Ll0/c0;->j:I

    .line 129
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->g1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 130
    aget-byte v2, v0, v4

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->g1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 131
    aget-byte v2, v0, v8

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->g1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 132
    aget-byte v0, v0, v5

    and-int/2addr v0, v12

    invoke-static {v0}, Ll0/c0;->g1(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_17

    :pswitch_16
    add-int/lit8 v2, p2, 0x2

    .line 133
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->g1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 134
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->g1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 135
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->g1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 136
    aget-byte v0, v0, v2

    and-int/2addr v0, v12

    invoke-static {v0}, Ll0/c0;->g1(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_17

    .line 137
    :pswitch_17
    sget v2, Lk0/nt;->a:I

    sparse-switch v2, :sswitch_data_0

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x2

    .line 138
    aget-byte v13, v0, v3

    shr-int/2addr v13, v14

    and-int/2addr v13, v11

    aput v13, v2, v10

    const/16 v13, 0xa

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 139
    aget-byte v13, v0, v3

    shr-int/2addr v13, v6

    and-int/2addr v13, v11

    aput v13, v2, v10

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v13, v11, [I

    .line 140
    aget-byte v15, v0, v3

    shr-int/2addr v15, v5

    and-int/2addr v15, v11

    aput v15, v13, v10

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v13, v11, [I

    .line 141
    aget-byte v15, v0, v3

    shr-int/2addr v15, v9

    and-int/2addr v15, v11

    aput v15, v13, v10

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v13, v11, [I

    .line 142
    aget-byte v15, v0, v3

    shr-int/2addr v15, v8

    and-int/2addr v15, v11

    aput v15, v13, v10

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 143
    aget-byte v13, v0, v3

    shr-int/2addr v13, v11

    and-int/2addr v13, v11

    aput v13, v2, v10

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 144
    aget-byte v3, v0, v3

    shr-int/2addr v3, v10

    and-int/2addr v3, v11

    aput v3, v2, v10

    const/16 v3, 0x10

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v11, [I

    add-int/lit8 v13, p2, 0x3

    .line 145
    aget-byte v15, v0, v13

    shr-int/2addr v15, v14

    and-int/2addr v15, v11

    aput v15, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v11, [I

    .line 146
    aget-byte v15, v0, v13

    shr-int/2addr v15, v6

    and-int/2addr v15, v11

    aput v15, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    .line 147
    aget-byte v15, v0, v13

    shr-int/lit8 v5, v15, 0x5

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    .line 148
    aget-byte v5, v0, v13

    shr-int/2addr v5, v10

    and-int/2addr v5, v4

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 149
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit8 v2, p2, 0x4

    .line 150
    aget-byte v3, v0, v2

    and-int/2addr v3, v12

    if-nez v3, :cond_12

    new-array v2, v11, [I

    aput v16, v2, v10

    const/16 v3, 0x1c

    .line 151
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    const/16 v3, 0x1c

    .line 152
    aget-byte v5, v0, v2

    and-int/2addr v5, v12

    const/16 v13, 0x7f

    if-ne v5, v13, :cond_13

    new-array v2, v11, [I

    const/4 v5, -0x3

    aput v5, v2, v10

    .line 153
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    .line 154
    :cond_13
    aget-byte v3, v0, v2

    and-int/2addr v3, v12

    const/16 v5, 0x1f

    if-lt v3, v5, :cond_14

    aget-byte v3, v0, v2

    and-int/2addr v3, v12

    const/16 v5, 0x3b

    if-gt v3, v5, :cond_14

    new-array v3, v11, [I

    .line 155
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    aput v2, v3, v10

    const/16 v2, 0x1c

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_14
    const/16 v2, 0x1c

    new-array v3, v11, [I

    const/4 v5, -0x1

    aput v5, v3, v10

    .line 156
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v2, p2, 0x5

    .line 157
    aget-byte v3, v0, v2

    and-int/2addr v3, v12

    if-nez v3, :cond_15

    new-array v2, v11, [I

    aput v16, v2, v10

    const/16 v3, 0x1b

    .line 158
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_15
    const/16 v3, 0x1b

    .line 159
    aget-byte v5, v0, v2

    and-int/2addr v5, v12

    const/16 v13, 0x7f

    if-ne v5, v13, :cond_16

    new-array v2, v11, [I

    const/4 v5, -0x3

    aput v5, v2, v10

    .line 160
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 161
    :cond_16
    aget-byte v3, v0, v2

    and-int/2addr v3, v12

    const/16 v5, 0x1f

    if-lt v3, v5, :cond_17

    aget-byte v3, v0, v2

    and-int/2addr v3, v12

    const/16 v5, 0x3b

    if-gt v3, v5, :cond_17

    new-array v3, v11, [I

    .line 162
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    aput v2, v3, v10

    const/16 v2, 0x1b

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_17
    const/16 v2, 0x1b

    new-array v3, v11, [I

    const/4 v5, -0x1

    aput v5, v3, v10

    .line 163
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_18
    const/16 v2, 0x1b

    add-int/lit8 v3, p2, 0x4

    .line 164
    aget-byte v5, v0, v3

    and-int/2addr v5, v12

    if-nez v5, :cond_19

    new-array v3, v11, [I

    aput v16, v3, v10

    .line 165
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 166
    :cond_19
    aget-byte v5, v0, v3

    and-int/2addr v5, v12

    const/16 v13, 0x7f

    if-ne v5, v13, :cond_1a

    new-array v3, v11, [I

    const/4 v5, -0x3

    aput v5, v3, v10

    .line 167
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 168
    :cond_1a
    aget-byte v2, v0, v3

    and-int/2addr v2, v12

    const/16 v5, 0x1f

    if-lt v2, v5, :cond_1b

    aget-byte v2, v0, v3

    and-int/2addr v2, v12

    const/16 v5, 0x3b

    if-gt v2, v5, :cond_1b

    new-array v2, v11, [I

    .line 169
    aget-byte v3, v0, v3

    and-int/2addr v3, v12

    aput v3, v2, v10

    const/16 v3, 0x1b

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1b
    const/16 v3, 0x1b

    new-array v2, v11, [I

    const/4 v5, -0x1

    aput v5, v2, v10

    .line 170
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 v2, p2, 0x5

    .line 171
    aget-byte v3, v0, v2

    and-int/2addr v3, v12

    if-nez v3, :cond_1c

    new-array v2, v11, [I

    aput v16, v2, v10

    const/16 v3, 0x1c

    .line 172
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1c
    const/16 v3, 0x1c

    .line 173
    aget-byte v5, v0, v2

    and-int/2addr v5, v12

    const/16 v13, 0x7f

    if-ne v5, v13, :cond_1d

    new-array v2, v11, [I

    const/4 v5, -0x3

    aput v5, v2, v10

    .line 174
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 175
    :cond_1d
    aget-byte v3, v0, v2

    and-int/2addr v3, v12

    const/16 v5, 0x1f

    if-lt v3, v5, :cond_1e

    aget-byte v3, v0, v2

    and-int/2addr v3, v12

    const/16 v5, 0x3b

    if-gt v3, v5, :cond_1e

    new-array v3, v11, [I

    .line 176
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    aput v2, v3, v10

    const/16 v2, 0x1c

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1e
    const/16 v2, 0x1c

    new-array v3, v11, [I

    const/4 v5, -0x1

    aput v5, v3, v10

    .line 177
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v2, 0x43

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x6

    .line 178
    aget-byte v13, v0, v5

    shr-int/2addr v13, v10

    and-int/2addr v13, v11

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v11, [I

    .line 179
    aget-byte v13, v0, v5

    shr-int/2addr v13, v11

    and-int/2addr v13, v11

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v11, [I

    .line 180
    aget-byte v13, v0, v5

    shr-int/2addr v13, v8

    and-int/2addr v13, v11

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v11, [I

    .line 181
    aget-byte v13, v0, v5

    shr-int/2addr v13, v9

    and-int/2addr v13, v11

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v11, [I

    .line 182
    aget-byte v5, v0, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x28

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x8

    .line 183
    aget-byte v13, v0, v5

    shr-int/2addr v13, v10

    and-int/2addr v4, v13

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v11, [I

    .line 184
    aget-byte v4, v0, v5

    shr-int/2addr v4, v7

    and-int/2addr v4, v14

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v11, [I

    .line 185
    aget-byte v4, v0, v5

    shr-int/2addr v4, v14

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 186
    aget-byte v5, v0, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 187
    aget-byte v3, v0, v4

    shr-int/2addr v3, v8

    and-int/2addr v3, v9

    aput v3, v2, v10

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 188
    aget-byte v3, v0, v4

    shr-int/2addr v3, v7

    and-int/2addr v3, v9

    aput v3, v2, v10

    const/16 v3, 0x1f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v11, [I

    .line 189
    aget-byte v4, v0, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 190
    aget-byte v0, v0, v2

    and-int/2addr v0, v12

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1f

    rsub-int v0, v0, 0x100

    const/16 v2, 0xa

    mul-int/2addr v0, v2

    rsub-int v0, v0, 0x3e8

    goto :goto_9

    :cond_1f
    const/16 v2, 0xa

    mul-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x3e8

    .line 191
    :goto_9
    invoke-static {v0}, Lu0/d;->B3(I)V

    goto/16 :goto_17

    :pswitch_18
    add-int/lit8 v2, p2, 0x2

    .line 192
    aget-byte v2, v0, v2

    add-int/lit8 v4, p2, 0x3

    .line 193
    aget-byte v0, v0, v4

    and-int/2addr v2, v12

    .line 194
    iput v2, v1, Lk0/cm;->g:I

    move v2, v10

    .line 195
    :goto_a
    iget-object v4, v1, Lk0/cm;->h:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_21

    .line 196
    iget v6, v1, Lk0/cm;->g:I

    aget-object v8, v4, v2

    aget v8, v8, v10

    if-ne v6, v8, :cond_20

    if-eqz v6, :cond_21

    .line 197
    iput v2, v1, Lk0/cm;->f:I

    goto :goto_b

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 198
    :cond_21
    :goto_b
    iget v6, v1, Lk0/cm;->g:I

    if-eq v6, v9, :cond_2b

    if-eq v6, v7, :cond_29

    const/16 v7, 0x54

    if-eq v6, v7, :cond_28

    packed-switch v6, :pswitch_data_5

    and-int/2addr v0, v12

    if-ne v0, v11, :cond_22

    .line 199
    array-length v0, v4

    if-ge v2, v0, :cond_3e

    .line 200
    aget-object v0, v4, v2

    aget v0, v0, v11

    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_22
    if-nez v0, :cond_3e

    .line 201
    iget v0, v1, Lk0/cm;->f:I

    array-length v2, v4

    if-ge v0, v2, :cond_23

    if-eq v0, v12, :cond_23

    .line 202
    aget-object v0, v4, v0

    aget v0, v0, v11

    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 203
    :cond_23
    iput v12, v1, Lk0/cm;->f:I

    goto/16 :goto_17

    :pswitch_19
    move v2, v10

    :goto_c
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_24

    const/16 v3, 0x1e

    .line 204
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_24
    const/16 v3, 0x1e

    .line 205
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :pswitch_1a
    move v2, v10

    :goto_d
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_25

    const/16 v3, 0x1f

    .line 206
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_25
    const/16 v3, 0x1f

    .line 207
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :pswitch_1b
    move v2, v10

    :goto_e
    and-int/lit16 v4, v0, 0xff

    if-ge v2, v4, :cond_26

    .line 208
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 209
    :cond_26
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :pswitch_1c
    move v2, v10

    :goto_f
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_27

    .line 210
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 211
    :cond_27
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_28
    and-int/2addr v0, v12

    if-ne v0, v11, :cond_3e

    new-array v0, v5, [I

    .line 212
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_17

    :cond_29
    and-int/2addr v0, v12

    if-ne v0, v11, :cond_3e

    .line 213
    sget v0, Lh0/c;->E:I

    if-eq v0, v7, :cond_2a

    .line 214
    invoke-static {v9, v10}, Ll0/b0;->l0(II)V

    .line 215
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_2a
    const/16 v0, 0x12

    .line 216
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 217
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_2b
    and-int/2addr v0, v12

    if-ne v0, v11, :cond_3e

    .line 218
    sget v0, Lh0/c;->E:I

    if-eq v0, v9, :cond_2c

    if-eq v0, v7, :cond_2c

    if-eq v0, v5, :cond_2c

    .line 219
    invoke-static {v7, v10}, Ll0/b0;->l0(II)V

    .line 220
    invoke-static {v7, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_2c
    const/16 v0, 0x1a

    .line 221
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 222
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    .line 223
    :cond_2d
    sget v2, Lk0/nt;->R:I

    if-nez v2, :cond_2e

    goto/16 :goto_17

    :cond_2e
    const/16 v2, 0x6e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 224
    aget-byte v5, v0, v4

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 225
    aget-byte v0, v0, v4

    invoke-virtual {v1, v0}, Lk0/cm;->p3(B)V

    goto/16 :goto_17

    :cond_2f
    const/16 v2, 0x6b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 226
    aget-byte v4, v0, v4

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 227
    aget-byte v4, v0, v4

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 228
    aget-byte v0, v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_30
    add-int/lit8 v2, p2, 0x2

    .line 229
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x3

    .line 230
    aget-byte v14, v0, v3

    and-int/2addr v14, v12

    const-string v5, "persist.fyt.reversetemp"

    .line 231
    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 232
    aget-byte v2, v0, v3

    and-int/2addr v2, v12

    .line 233
    aget-byte v3, v0, v3

    and-int/lit16 v14, v3, 0xff

    :cond_31
    const/16 v3, 0x10

    if-ne v2, v3, :cond_32

    new-array v2, v11, [I

    aput v16, v2, v10

    const/16 v3, 0x1b

    .line 234
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_10
    const/16 v2, 0x10

    goto :goto_11

    :cond_32
    const/16 v3, 0x1b

    const/16 v5, 0x50

    if-ne v2, v5, :cond_33

    new-array v2, v11, [I

    const/4 v5, -0x3

    aput v5, v2, v10

    .line 235
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_33
    const/16 v5, 0x1e

    if-lt v2, v5, :cond_34

    if-gt v2, v13, :cond_34

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 236
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_34
    new-array v2, v11, [I

    const/4 v5, -0x1

    aput v5, v2, v10

    .line 237
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :goto_11
    if-ne v14, v2, :cond_35

    new-array v2, v11, [I

    aput v16, v2, v10

    const/16 v3, 0x1c

    .line 238
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_35
    const/16 v3, 0x1c

    const/16 v2, 0x50

    if-ne v14, v2, :cond_36

    new-array v2, v11, [I

    const/4 v5, -0x3

    aput v5, v2, v10

    .line 239
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_36
    const/16 v2, 0x1e

    if-lt v14, v2, :cond_37

    if-gt v14, v13, :cond_37

    new-array v2, v11, [I

    aput v14, v2, v10

    .line 240
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_37
    new-array v2, v11, [I

    const/4 v5, -0x1

    aput v5, v2, v10

    .line 241
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_12
    const/16 v2, 0x15

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 242
    aget-byte v13, v0, v5

    shr-int/2addr v13, v10

    and-int/2addr v13, v4

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 243
    aget-byte v2, v0, v5

    shr-int/2addr v2, v7

    and-int/2addr v2, v4

    packed-switch v2, :pswitch_data_6

    move v2, v10

    :goto_13
    move v3, v2

    :goto_14
    move v5, v3

    goto :goto_15

    :pswitch_1d
    move v2, v11

    goto :goto_13

    :pswitch_1e
    move v3, v10

    move v5, v3

    move v2, v11

    goto :goto_15

    :pswitch_1f
    move v5, v10

    move v2, v11

    move v3, v2

    goto :goto_15

    :pswitch_20
    move v3, v10

    move v2, v11

    move v5, v2

    goto :goto_15

    :pswitch_21
    move v2, v10

    move v3, v2

    move v5, v11

    goto :goto_15

    :pswitch_22
    move v2, v10

    move v3, v11

    goto :goto_14

    :pswitch_23
    move v2, v10

    move v5, v2

    move v3, v11

    :goto_15
    const/16 v13, 0x12

    new-array v14, v11, [I

    aput v2, v14, v10

    .line 244
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v13, v11, [I

    aput v3, v13, v10

    .line 245
    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v5, v3, v10

    .line 246
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 247
    aget-byte v13, v0, v5

    shr-int/2addr v13, v10

    and-int/2addr v13, v9

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 248
    aget-byte v3, v0, v5

    shr-int/2addr v3, v7

    and-int/2addr v3, v9

    aput v3, v2, v10

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 249
    aget-byte v3, v0, v5

    shr-int/2addr v3, v8

    and-int/2addr v3, v9

    aput v3, v2, v10

    const/16 v3, 0x1f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v11, [I

    .line 250
    aget-byte v5, v0, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x6

    .line 251
    aget-byte v13, v0, v5

    shr-int/2addr v13, v10

    and-int/2addr v13, v11

    aput v13, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 252
    aget-byte v3, v0, v5

    shr-int/2addr v3, v11

    and-int/2addr v3, v11

    aput v3, v2, v10

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v11, [I

    .line 253
    aget-byte v13, v0, v5

    shr-int/lit8 v8, v13, 0x2

    and-int/2addr v8, v11

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v11, [I

    .line 254
    aget-byte v8, v0, v5

    shr-int/2addr v8, v7

    and-int/2addr v8, v11

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v11, [I

    .line 255
    aget-byte v8, v0, v5

    const/4 v13, 0x5

    shr-int/2addr v8, v13

    and-int/2addr v8, v11

    aput v8, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 256
    aget-byte v3, v0, v5

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    aput v3, v2, v10

    const/16 v3, 0x10

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 257
    aget-byte v3, v0, v5

    const/4 v5, 0x7

    shr-int/2addr v3, v5

    and-int/2addr v3, v11

    aput v3, v2, v10

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 258
    aget-byte v5, v0, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v11, [I

    .line 259
    aget-byte v5, v0, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v11, [I

    .line 260
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 261
    aget-byte v0, v0, v2

    and-int/2addr v0, v12

    if-eq v0, v12, :cond_39

    if-nez v0, :cond_38

    goto :goto_16

    :cond_38
    const-string v2, "persist.fyt.temperature"

    .line 262
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    const/16 v2, 0xa

    mul-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x258

    .line 263
    invoke-static {v0}, Lu0/d;->B3(I)V

    goto/16 :goto_17

    .line 264
    :cond_39
    :goto_16
    invoke-static {v10}, Lu0/d;->B3(I)V

    goto/16 :goto_17

    :cond_3a
    add-int/lit8 v2, p2, 0x2

    .line 265
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v0, v0, v3

    const/16 v3, 0x1200

    invoke-static {v2, v0, v11, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_17

    .line 266
    :cond_3b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_3c
    const/16 v2, 0xa8

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 267
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 268
    aget-byte v0, v0, v4

    and-int/2addr v0, v12

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_3d
    const/16 v2, 0x9e

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 269
    aget-byte v12, v0, v5

    shr-int/2addr v12, v7

    and-int/2addr v12, v4

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v11, [I

    .line 270
    aget-byte v5, v0, v5

    shr-int/2addr v5, v10

    and-int/2addr v5, v4

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x3

    .line 271
    aget-byte v12, v0, v5

    shr-int/2addr v12, v7

    and-int/2addr v12, v4

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v11, [I

    .line 272
    aget-byte v5, v0, v5

    shr-int/2addr v5, v10

    and-int/2addr v5, v4

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 273
    aget-byte v12, v0, v5

    shr-int/2addr v12, v7

    and-int/2addr v12, v4

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v11, [I

    .line 274
    aget-byte v5, v0, v5

    shr-int/2addr v5, v10

    and-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v11, [I

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 275
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v11, [I

    .line 276
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v11, [I

    .line 277
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v11, [I

    .line 278
    aget-byte v0, v0, v4

    shr-int/2addr v0, v10

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_3e
    :goto_17
    :sswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1301c7 -> :sswitch_0
        0x1401c7 -> :sswitch_0
        0x1501c7 -> :sswitch_0
        0x1601c7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0xf0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc0
        0x2
        0xe
        0xb
    .end array-data
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/cm;->w:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/cm;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/cm;->C:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/cm;->v:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/cm;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lk0/cm;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/cm;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/cm;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/cm;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/cm;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xbc

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

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_a

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq p1, p3, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_2

    const/16 v5, 0x16

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget p1, p2, p4

    if-lt p1, v3, :cond_1

    const/16 p1, 0xa9

    new-array p3, p3, [I

    .line 2
    aget p2, p2, p4

    aput p2, p3, p4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0x9

    new-array p1, p1, [I

    aput v0, p1, p4

    const/16 v0, -0x3d

    aput v0, p1, p3

    const/4 v0, 0x6

    aput v0, p1, v4

    .line 3
    aget p4, p2, p4

    aput p4, p1, v2

    aget p3, p2, p3

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, v3

    aget p3, p2, v2

    aput p3, p1, v0

    const/4 p3, 0x7

    aget p4, p2, v1

    aput p4, p1, p3

    const/16 p3, 0x8

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 4
    :cond_2
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/cm;->b3(I)V

    goto/16 :goto_0

    :cond_3
    new-array p1, v3, [I

    aput v0, p1, p4

    const/16 v0, 0xc5

    aput v0, p1, p3

    aput v4, p1, v4

    .line 5
    aget p4, p2, p4

    aput p4, p1, v2

    aget p2, p2, p3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    new-array p1, v3, [I

    aput v0, p1, p4

    const/16 v0, 0xc4

    aput v0, p1, p3

    aput v4, p1, v4

    .line 6
    aget p4, p2, p4

    aput p4, p1, v2

    aget p2, p2, p3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, v3, [I

    aput v0, p1, p4

    const/16 v0, 0xc0

    aput v0, p1, p3

    aput v4, p1, v4

    .line 7
    aget p4, p2, p4

    aput p4, p1, v2

    aget p2, p2, p3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_6
    aget p1, p2, p4

    const/16 v5, 0xb1

    if-ne p1, v5, :cond_7

    .line 9
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/cm;->s3(I)V

    goto :goto_0

    .line 10
    :cond_7
    aget p1, p2, p4

    const/16 v5, 0xb2

    if-ne p1, v5, :cond_8

    .line 11
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/cm;->r3(I)V

    goto :goto_0

    .line 12
    :cond_8
    aget p1, p2, p4

    const/16 v5, 0xb3

    if-ne p1, v5, :cond_9

    .line 13
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/cm;->t3(I)V

    goto :goto_0

    :cond_9
    new-array p1, v3, [I

    aput v0, p1, p4

    const/16 v0, 0xc6

    aput v0, p1, p3

    aput v4, p1, v4

    .line 14
    aget p4, p2, p4

    aput p4, p1, v2

    aget p2, p2, p3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_a
    const/16 p1, 0x90

    .line 15
    aget p4, p2, p4

    aget p2, p2, p3

    invoke-virtual {p0, p1, p4, p2}, Lk0/cm;->q3(III)V

    :goto_0
    return-void
.end method

.method public b([B)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_c

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_5

    .line 3
    :cond_1
    iget v1, p0, Lk0/cm;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/cm;->c:I

    .line 5
    iput v0, p0, Lk0/cm;->d:I

    .line 6
    iput v0, p0, Lk0/cm;->e:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/cm;->b:[B

    iget v2, p0, Lk0/cm;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/cm;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/cm;->c:I

    .line 9
    iget p1, p0, Lk0/cm;->e:I

    const/16 v2, 0xb

    const/16 v3, -0x56

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object v1, p0, Lk0/cm;->b:[B

    aget-byte p1, v1, p1

    if-ne p1, v3, :cond_4

    .line 11
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {p1, v1, v0, v2}, Lk0/lt;->U2([BII)V

    .line 12
    iget p1, p0, Lk0/cm;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/cm;->d:I

    goto :goto_0

    .line 13
    :cond_4
    iput v4, p0, Lk0/cm;->d:I

    .line 14
    :goto_0
    iput v0, p0, Lk0/cm;->e:I

    .line 15
    :cond_5
    iget p1, p0, Lk0/cm;->c:I

    add-int/lit8 p1, p1, -0x2

    :goto_1
    iget v1, p0, Lk0/cm;->d:I

    if-ge v1, p1, :cond_a

    .line 16
    iget-object v5, p0, Lk0/cm;->b:[B

    aget-byte v6, v5, v1

    const/16 v7, 0x55

    if-ne v6, v7, :cond_9

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v5, v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_9

    .line 17
    iget v6, p0, Lk0/cm;->e:I

    const/16 v7, 0x200

    if-le v6, v7, :cond_6

    .line 18
    iput v0, p0, Lk0/cm;->e:I

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v1, 0xa

    .line 19
    iput v6, p0, Lk0/cm;->e:I

    .line 20
    iget v7, p0, Lk0/cm;->c:I

    if-lt v6, v7, :cond_7

    sub-int/2addr v6, v1

    .line 21
    iput v6, p0, Lk0/cm;->e:I

    goto :goto_4

    .line 22
    :cond_7
    aget-byte v6, v5, v6

    if-ne v6, v3, :cond_8

    .line 23
    sget-object v6, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v6, v5, v1, v2}, Lk0/lt;->U2([BII)V

    .line 24
    iget v1, p0, Lk0/cm;->e:I

    iput v1, p0, Lk0/cm;->d:I

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 25
    iput v1, p0, Lk0/cm;->d:I

    .line 26
    :goto_2
    iput v0, p0, Lk0/cm;->e:I

    .line 27
    :cond_9
    :goto_3
    iget v1, p0, Lk0/cm;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/cm;->d:I

    goto :goto_1

    :cond_a
    :goto_4
    if-eqz v1, :cond_c

    .line 28
    iget p1, p0, Lk0/cm;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/cm;->c:I

    if-lez p1, :cond_b

    .line 29
    iget-object v2, p0, Lk0/cm;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    :cond_b
    iput v0, p0, Lk0/cm;->d:I

    :cond_c
    :goto_5
    return-void
.end method

.method public final b3(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget v2, v0, Lk0/cm;->F:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    iput v2, v0, Lk0/cm;->F:I

    .line 2
    sget v5, Lk0/nt;->a:I

    const/16 v6, 0x12

    const/4 v7, 0x0

    sparse-switch v5, :sswitch_data_0

    move v5, v7

    goto :goto_0

    :sswitch_0
    const/16 v5, 0x14

    goto :goto_0

    :sswitch_1
    const/16 v5, 0x13

    goto :goto_0

    :sswitch_2
    move v5, v6

    goto :goto_0

    :sswitch_3
    const/16 v5, 0x11

    :goto_0
    const/4 v8, 0x6

    const/16 v9, 0x25

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/16 v14, 0x33

    const/4 v15, 0x7

    const/16 v16, 0x5

    if-nez v5, :cond_3

    const/16 v5, 0x8

    new-array v10, v5, [I

    const/16 v17, 0xe3

    aput v17, v10, v7

    aput v14, v10, v3

    aput v16, v10, v4

    int-to-byte v1, v1

    aput v1, v10, v13

    if-nez v2, :cond_0

    const/16 v2, 0x22

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    :goto_1
    aput v2, v10, v12

    aput v9, v10, v16

    aput v6, v10, v8

    const/16 v2, 0xaa

    aput v2, v10, v15

    .line 3
    invoke-static {v10}, Lz/k;->s([I)V

    new-array v10, v5, [I

    aput v17, v10, v7

    aput v14, v10, v3

    aput v16, v10, v4

    aput v1, v10, v13

    .line 4
    iget v11, v0, Lk0/cm;->F:I

    if-nez v11, :cond_1

    const/16 v11, 0x22

    goto :goto_2

    :cond_1
    const/16 v11, 0xcc

    :goto_2
    aput v11, v10, v12

    aput v9, v10, v16

    aput v6, v10, v8

    aput v2, v10, v15

    invoke-static {v10}, Lz/k;->s([I)V

    new-array v5, v5, [I

    aput v17, v5, v7

    aput v14, v5, v3

    aput v16, v5, v4

    aput v1, v5, v13

    .line 5
    iget v1, v0, Lk0/cm;->F:I

    if-nez v1, :cond_2

    const/16 v10, 0x22

    goto :goto_3

    :cond_2
    const/16 v10, 0xcc

    :goto_3
    aput v10, v5, v12

    aput v9, v5, v16

    aput v6, v5, v8

    aput v2, v5, v15

    invoke-static {v5}, Lz/k;->s([I)V

    goto :goto_7

    :cond_3
    new-array v6, v15, [B

    aput-byte v14, v6, v7

    aput-byte v16, v6, v3

    int-to-byte v1, v1

    aput-byte v1, v6, v4

    if-nez v2, :cond_4

    const/16 v2, 0x22

    goto :goto_4

    :cond_4
    const/16 v2, 0xcc

    :goto_4
    int-to-byte v2, v2

    aput-byte v2, v6, v13

    aput-byte v9, v6, v12

    aput-byte v5, v6, v16

    const/16 v2, -0x56

    aput-byte v2, v6, v8

    .line 6
    invoke-static {v6}, Lk0/cm;->u3([B)V

    new-array v6, v15, [B

    aput-byte v14, v6, v7

    aput-byte v16, v6, v3

    aput-byte v1, v6, v4

    .line 7
    iget v10, v0, Lk0/cm;->F:I

    if-nez v10, :cond_5

    const/16 v10, 0x22

    goto :goto_5

    :cond_5
    const/16 v10, 0xcc

    :goto_5
    int-to-byte v10, v10

    aput-byte v10, v6, v13

    aput-byte v9, v6, v12

    aput-byte v5, v6, v16

    aput-byte v2, v6, v8

    invoke-static {v6}, Lk0/cm;->u3([B)V

    new-array v6, v15, [B

    aput-byte v14, v6, v7

    aput-byte v16, v6, v3

    aput-byte v1, v6, v4

    .line 8
    iget v1, v0, Lk0/cm;->F:I

    if-nez v1, :cond_6

    const/16 v10, 0x22

    goto :goto_6

    :cond_6
    const/16 v10, 0xcc

    :goto_6
    int-to-byte v1, v10

    aput-byte v1, v6, v13

    aput-byte v9, v6, v12

    aput-byte v5, v6, v16

    aput-byte v2, v6, v8

    invoke-static {v6}, Lk0/cm;->u3([B)V

    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1301c7 -> :sswitch_3
        0x1401c7 -> :sswitch_2
        0x1501c7 -> :sswitch_1
        0x1601c7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final n3()V
    .locals 3

    const-string v0, "com.syu.carinfo.ford.LZMustangCarCDAct"

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

.method public final o3()V
    .locals 3

    const-string v0, "com.syu.carinfo.ford.LZMustangCarRadioAct"

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

.method public final p3(B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lu0/b;->D:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    .line 2
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

    .line 3
    :cond_1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.syu.carinfo.focus.FocusSyncBtActi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.syu.canbus.sync"

    .line 4
    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final q3(III)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput p1, v0, p1

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final r3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/cm;->H:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x9a

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, v2

    const/16 v1, 0xc6

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v1, 0x3

    const/16 v3, 0xb2

    aput v3, p1, v1

    .line 3
    sget v1, Lk0/cm;->H:I

    const/4 v3, 0x4

    aput v1, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/cm;->w:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/cm;->H:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/cm;->w:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final s3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/cm;->G:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x99

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, v2

    const/16 v1, 0xc6

    aput v1, p1, v0

    const/4 v1, 0x2

    aput v1, p1, v1

    const/4 v1, 0x3

    const/16 v3, 0xb1

    aput v3, p1, v1

    .line 3
    sget v1, Lk0/cm;->G:I

    const/4 v3, 0x4

    aput v1, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/cm;->w:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/cm;->G:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/cm;->w:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final t3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/cm;->I:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xbb

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/cm;->w:Lo1/g0;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/cm;->I:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/cm;->w:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
