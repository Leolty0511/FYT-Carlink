.class public Lk0/ca;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public b:I

.field public c:I

.field public d:[[Ljava/lang/String;

.field public e:[[Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:[[I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:J

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:[[I

.field public t:[I

.field public u:I

.field public final v:[B

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lk0/ca;->c:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    iput-object v3, p0, Lk0/ca;->d:[[Ljava/lang/String;

    new-array v3, v2, [I

    .line 4
    fill-array-data v3, :array_1

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lk0/ca;->e:[[Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v3, 0x1

    .line 6
    iput v3, v0, Lk0/mt;->e:I

    .line 7
    iput v3, v0, Lk0/mt;->f:I

    .line 8
    iput v3, v0, Lk0/mt;->i:I

    .line 9
    iput v3, v0, Lk0/mt;->g:I

    .line 10
    iput v3, v0, Lk0/mt;->o:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lk0/ca;->g:I

    const/16 v4, 0x3d

    new-array v4, v4, [[I

    new-array v5, v2, [I

    .line 12
    fill-array-data v5, :array_2

    aput-object v5, v4, v0

    new-array v5, v2, [I

    fill-array-data v5, :array_3

    aput-object v5, v4, v3

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v4, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x4

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x5

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/4 v5, 0x6

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/4 v5, 0x7

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0x8

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0x9

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xa

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xb

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xc

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xd

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v5, 0xe

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v5, 0xf

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v5, 0x10

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v5, 0x11

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v5, 0x12

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v5, 0x13

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v5, 0x14

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v5, 0x15

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v5, 0x16

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v5, 0x17

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v5, 0x18

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v5, 0x19

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v5, 0x1a

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v5, 0x1b

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v5, 0x1c

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v5, 0x1d

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v5, 0x1e

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v5, 0x1f

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v5, 0x20

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v5, 0x21

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v5, 0x22

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v5, 0x23

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v5, 0x24

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v5, 0x25

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v5, 0x26

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v5, 0x27

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v5, 0x28

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v5, 0x29

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v5, 0x2a

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v5, 0x2b

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    const/16 v5, 0x2c

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2f

    const/16 v5, 0x2d

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_30

    const/16 v5, 0x2e

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_31

    const/16 v5, 0x2f

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    const/16 v5, 0x30

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_33

    const/16 v5, 0x31

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_34

    const/16 v5, 0x32

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_35

    const/16 v5, 0x33

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_36

    const/16 v5, 0x34

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_37

    const/16 v5, 0x35

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_38

    const/16 v5, 0x36

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_39

    const/16 v5, 0x37

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_3a

    const/16 v5, 0x38

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_3b

    const/16 v5, 0x39

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_3c

    const/16 v5, 0x3a

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_3d

    const/16 v5, 0x3b

    aput-object v3, v4, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_3e

    const/16 v5, 0x3c

    aput-object v3, v4, v5

    iput-object v4, p0, Lk0/ca;->h:[[I

    .line 13
    iput v0, p0, Lk0/ca;->i:I

    .line 14
    new-instance v3, Lk0/ca$a;

    invoke-direct {v3, p0}, Lk0/ca$a;-><init>(Lk0/ca;)V

    iput-object v3, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    .line 15
    new-instance v3, Lk0/ca$b;

    invoke-direct {v3, p0}, Lk0/ca$b;-><init>(Lk0/ca;)V

    iput-object v3, p0, Lk0/ca;->k:Ljava/lang/Runnable;

    .line 16
    new-instance v3, Lk0/ca$c;

    invoke-direct {v3, p0}, Lk0/ca$c;-><init>(Lk0/ca;)V

    iput-object v3, p0, Lk0/ca;->l:Ljava/lang/Runnable;

    .line 17
    new-instance v3, Lk0/ca$d;

    invoke-direct {v3, p0}, Lk0/ca$d;-><init>(Lk0/ca;)V

    iput-object v3, p0, Lk0/ca;->m:Ljava/lang/Runnable;

    .line 18
    new-instance v3, Lk0/ca$e;

    invoke-direct {v3, p0}, Lk0/ca$e;-><init>(Lk0/ca;)V

    iput-object v3, p0, Lk0/ca;->n:Ljava/lang/Runnable;

    .line 19
    new-instance v3, Lk0/ca$f;

    invoke-direct {v3, p0}, Lk0/ca$f;-><init>(Lk0/ca;)V

    iput-object v3, p0, Lk0/ca;->o:Ljava/lang/Runnable;

    const-wide/16 v3, -0x1

    .line 20
    iput-wide v3, p0, Lk0/ca;->p:J

    .line 21
    iput v1, p0, Lk0/ca;->q:I

    .line 22
    new-instance v1, Lk0/ca$g;

    invoke-direct {v1, p0}, Lk0/ca$g;-><init>(Lk0/ca;)V

    iput-object v1, p0, Lk0/ca;->r:Ljava/lang/Runnable;

    new-array v1, v2, [I

    .line 23
    fill-array-data v1, :array_3f

    const-class v3, I

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lk0/ca;->s:[[I

    new-array v1, v2, [I

    .line 24
    fill-array-data v1, :array_40

    iput-object v1, p0, Lk0/ca;->t:[I

    .line 25
    iput v0, p0, Lk0/ca;->u:I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 26
    iput-object v1, p0, Lk0/ca;->v:[B

    .line 27
    iput v0, p0, Lk0/ca;->w:I

    .line 28
    iput v0, p0, Lk0/ca;->x:I

    .line 29
    iput v0, p0, Lk0/ca;->y:I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_8
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_a
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_b
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_e
    .array-data 4
        0x10
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x11
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0x13
        0xd
    .end array-data

    :array_12
    .array-data 4
        0x20
        0x31
    .end array-data

    :array_13
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_14
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_15
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_16
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_17
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_18
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_19
    .array-data 4
        0x27
        0x2e
    .end array-data

    :array_1a
    .array-data 4
        0x28
        0x2f
    .end array-data

    :array_1b
    .array-data 4
        0x29
        0x30
    .end array-data

    :array_1c
    .array-data 4
        0x2a
        0x32
    .end array-data

    :array_1d
    .array-data 4
        0x2b
        0x33
    .end array-data

    :array_1e
    .array-data 4
        0x33
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0x34
        0x18
    .end array-data

    :array_20
    .array-data 4
        0x35
        0x16
    .end array-data

    :array_21
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_22
    .array-data 4
        0x37
        0x5
    .end array-data

    :array_23
    .array-data 4
        0x38
        0x26
    .end array-data

    :array_24
    .array-data 4
        0x39
        0x12
    .end array-data

    :array_25
    .array-data 4
        0x3d
        0x38
    .end array-data

    :array_26
    .array-data 4
        0x3f
        0x19
    .end array-data

    :array_27
    .array-data 4
        0x48
        0x1d
    .end array-data

    :array_28
    .array-data 4
        0x49
        0x20
    .end array-data

    :array_29
    .array-data 4
        0x4a
        0x21
    .end array-data

    :array_2a
    .array-data 4
        0x4b
        0x22
    .end array-data

    :array_2b
    .array-data 4
        0x4c
        0x23
    .end array-data

    :array_2c
    .array-data 4
        0x52
        0x12
    .end array-data

    :array_2d
    .array-data 4
        0x53
        0x1a
    .end array-data

    :array_2e
    .array-data 4
        0x54
        0xb
    .end array-data

    :array_2f
    .array-data 4
        0x56
        0x4e
    .end array-data

    :array_30
    .array-data 4
        0x57
        0x37
    .end array-data

    :array_31
    .array-data 4
        0x59
        0x26
    .end array-data

    :array_32
    .array-data 4
        0x5a
        0xc
    .end array-data

    :array_33
    .array-data 4
        0x5b
        0x19
    .end array-data

    :array_34
    .array-data 4
        0x60
        0x4
    .end array-data

    :array_35
    .array-data 4
        0x61
        0x3
    .end array-data

    :array_36
    .array-data 4
        0x62
        0x10
    .end array-data

    :array_37
    .array-data 4
        0x68
        0x6
    .end array-data

    :array_38
    .array-data 4
        0x69
        0x1
    .end array-data

    :array_39
    .array-data 4
        0x6a
        0x37
    .end array-data

    :array_3a
    .array-data 4
        0x6b
        0x36
    .end array-data

    :array_3b
    .array-data 4
        0x6f
        0x36
    .end array-data

    :array_3c
    .array-data 4
        0x86
        0x10
    .end array-data

    :array_3d
    .array-data 4
        0xf0
        0x7
    .end array-data

    :array_3e
    .array-data 4
        0xf1
        0x8
    .end array-data

    :array_3f
    .array-data 4
        0x10
        0x8
    .end array-data

    :array_40
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic b3(Lk0/ca;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ca;->a3(I)V

    return-void
.end method

.method public static synthetic c3(Lk0/ca;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/ca;->p:J

    return-wide v0
.end method

.method public static synthetic d3(Lk0/ca;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/ca;->p:J

    return-wide p1
.end method

.method public static synthetic e3(Lk0/ca;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ca;->q:I

    return p0
.end method

.method public static synthetic f3(Lk0/ca;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ca;->q:I

    return p1
.end method

.method public static synthetic g3(Lk0/ca;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/ca;->l3(III)V

    return-void
.end method

.method public static n3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 3
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    .line 5
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 6

    .line 1
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lk0/ca;->i:I

    .line 2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/ca;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/ca;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ca;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lo0/f;->c:Lo1/y;

    iget-object v2, p0, Lk0/ca;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    iget v0, p0, Lk0/ca;->i:I

    const/4 v2, 0x0

    const-string v3, "com.syu.canbus"

    if-eq v0, v1, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v4, [I

    .line 13
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v4, [I

    .line 14
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v4, [I

    .line 15
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v4, [I

    .line 16
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 17
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 18
    iput v1, v0, Lk0/mt;->e:I

    .line 19
    iput v1, v0, Lk0/mt;->f:I

    .line 20
    iput v1, v0, Lk0/mt;->g:I

    .line 21
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/ca;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 23
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_2

    .line 24
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_2

    .line 25
    :cond_3
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4

    .line 26
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_1

    .line 27
    :cond_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 28
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->e:I

    .line 29
    iput v1, v0, Lk0/mt;->f:I

    .line 30
    iput v2, v0, Lk0/mt;->i:I

    .line 31
    iput v1, v0, Lk0/mt;->g:I

    .line 32
    :goto_2
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lk0/ca;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 33
    iget v0, p0, Lk0/ca;->i:I

    if-nez v0, :cond_5

    .line 34
    iget-object v0, p0, Lk0/ca;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x77
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x76
        0x1
        0x5
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x70
        0x1
        0x89
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x70
        0x1
        0x8a
    .end array-data
.end method

.method public U2([BII)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v3, 0x16

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_56

    const/16 v3, 0x30

    const/4 v9, 0x2

    if-eq v2, v3, :cond_55

    const/16 v3, 0x40

    if-eq v2, v3, :cond_54

    const/16 v3, 0x65

    if-eq v2, v3, :cond_53

    const/16 v3, 0x6a

    if-eq v2, v3, :cond_52

    const/16 v3, 0x28

    if-eq v2, v3, :cond_51

    const/16 v3, 0x29

    const/16 v11, 0x78

    const/16 v12, 0x1f

    const/16 v14, 0x3c

    const/4 v10, 0x6

    const/4 v15, 0x7

    const/4 v4, 0x5

    if-eq v2, v3, :cond_34

    const/16 v3, 0x67

    const/4 v13, 0x4

    if-eq v2, v3, :cond_33

    const/16 v3, 0x68

    if-eq v2, v3, :cond_53

    if-eq v2, v11, :cond_32

    const/16 v3, 0x79

    if-eq v2, v3, :cond_30

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1b

    :pswitch_0
    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 2
    aget-byte v4, v0, v4

    mul-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x4

    aget-byte v0, v0, v5

    add-int/2addr v4, v0

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    mul-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v0, v3

    add-int/2addr v2, v3

    mul-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x4

    aget-byte v0, v0, v3

    add-int/2addr v2, v0

    const/16 v0, 0x65

    new-array v3, v8, [I

    aput v2, v3, v7

    .line 4
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    .line 5
    :pswitch_2
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x63

    new-array v4, v5, [I

    add-int/lit8 v10, p2, 0x2

    aget-byte v11, v0, v10

    and-int/2addr v11, v6

    aput v11, v4, v7

    add-int/lit8 v11, p2, 0x4

    aget-byte v12, v0, v11

    and-int/2addr v12, v6

    aput v12, v4, v8

    add-int/lit8 v12, p2, 0x5

    aget-byte v12, v0, v12

    and-int/2addr v12, v6

    aput v12, v4, v9

    invoke-static {v2, v3, v4}, Lo1/x;->B([Lo1/x;I[I)V

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x6

    add-int v4, p2, p3

    sub-int/2addr v4, v8

    :goto_0
    if-ge v3, v4, :cond_0

    add-int/lit8 v12, v3, 0x1

    .line 7
    aget-byte v12, v0, v12

    and-int/2addr v12, v6

    aget-byte v13, v0, v3

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, 0x64

    new-array v4, v5, [I

    .line 8
    aget-byte v10, v0, v10

    and-int/2addr v10, v6

    aput v10, v4, v7

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    aput v5, v4, v8

    aget-byte v0, v0, v11

    and-int/2addr v0, v6

    aput v0, v4, v9

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v3, v4, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1b

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b

    :pswitch_3
    new-array v2, v10, [I

    :goto_1
    if-ge v7, v10, :cond_1

    add-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v7

    .line 12
    aget-byte v3, v0, v3

    aput v3, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 13
    :cond_1
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x69

    invoke-static {v0, v3, v2}, Lo1/x;->B([Lo1/x;I[I)V

    goto/16 :goto_1b

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x4

    .line 15
    aget-byte v3, v0, v3

    add-int/lit8 v6, p2, 0x5

    .line 16
    aget-byte v6, v0, v6

    add-int/lit8 v12, p2, 0x7

    .line 17
    aget-byte v0, v0, v12

    const-string v12, "persist.syu.reversefrontdoor"

    .line 18
    invoke-static {v12, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    new-array v12, v8, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v8

    aput v14, v12, v7

    .line 19
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    new-array v12, v8, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v8

    aput v14, v12, v7

    .line 20
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_2
    new-array v12, v8, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v8

    aput v14, v12, v7

    .line 21
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    new-array v12, v8, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v8

    aput v14, v12, v7

    .line 22
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v12, v8, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v8

    aput v14, v12, v7

    .line 23
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    new-array v12, v8, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v8

    aput v13, v12, v7

    .line 24
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v8

    aput v12, v5, v7

    .line 25
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 26
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 27
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v3, 0x4

    and-int/2addr v4, v15

    aput v4, v2, v7

    .line 28
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 29
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 30
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x1

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 31
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v8, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aput v3, v4, v7

    .line 32
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    shr-int/lit8 v4, v6, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 33
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 34
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x7b

    new-array v4, v8, [I

    shr-int/lit8 v5, v6, 0x6

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Lo1/x;->B([Lo1/x;I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    shr-int/lit8 v4, v0, 0x0

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    shr-int/2addr v0, v8

    and-int/2addr v0, v8

    aput v0, v3, v7

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    .line 37
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_57

    add-int/lit8 v2, p2, 0x2

    .line 38
    aget-byte v3, v0, v2

    and-int/2addr v3, v6

    add-int/lit8 v5, p2, 0x3

    .line 39
    aget-byte v9, v0, v5

    and-int/2addr v9, v6

    add-int/lit8 v10, p2, 0x4

    .line 40
    aget-byte v11, v0, v10

    and-int/2addr v11, v6

    add-int/lit8 v4, p2, 0x5

    .line 41
    aget-byte v12, v0, v4

    and-int/2addr v12, v6

    if-nez v3, :cond_3

    if-nez v9, :cond_3

    if-nez v11, :cond_3

    if-nez v12, :cond_3

    .line 42
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 43
    :cond_3
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_4

    sget v7, Ll0/c0;->h:I

    if-ne v7, v9, :cond_4

    sget v7, Ll0/c0;->i:I

    if-ne v7, v11, :cond_4

    sget v7, Ll0/c0;->j:I

    if-eq v7, v12, :cond_5

    .line 44
    :cond_4
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_5

    .line 45
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 46
    sput v13, Ll0/c0;->k:I

    .line 47
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 48
    :cond_5
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 49
    sput v9, Ll0/c0;->h:I

    .line 50
    sput v11, Ll0/c0;->i:I

    .line 51
    sput v12, Ll0/c0;->j:I

    .line 52
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 53
    aget-byte v2, v0, v5

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 54
    aget-byte v2, v0, v10

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 55
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    invoke-static {v0}, Ll0/c0;->R0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_1b

    .line 56
    :pswitch_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_57

    add-int/lit8 v2, p2, 0x2

    .line 57
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 58
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 59
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 60
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Ll0/c0;->R0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_1b

    :pswitch_7
    add-int/lit8 v2, p2, 0x3

    .line 61
    aget-byte v3, v0, v2

    iput v3, v1, Lk0/ca;->b:I

    add-int/lit8 v10, p2, 0x2

    .line 62
    aget-byte v11, v0, v10

    const/16 v14, 0x3d

    if-eq v11, v14, :cond_2f

    const/16 v14, 0x56

    if-eq v11, v14, :cond_2e

    const/16 v14, 0x52

    if-eq v11, v14, :cond_2b

    const/16 v5, 0x53

    if-eq v11, v5, :cond_28

    const/16 v5, 0xa1

    packed-switch v11, :pswitch_data_2

    const/16 v14, 0xc6

    packed-switch v11, :pswitch_data_3

    packed-switch v11, :pswitch_data_4

    packed-switch v11, :pswitch_data_5

    packed-switch v11, :pswitch_data_6

    .line 63
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 64
    aget-byte v3, v0, v10

    .line 65
    aget-byte v0, v0, v2

    and-int/lit16 v2, v3, 0xff

    .line 66
    iput v2, v1, Lk0/ca;->g:I

    move v2, v7

    .line 67
    :goto_4
    iget-object v3, v1, Lk0/ca;->h:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 68
    iget v4, v1, Lk0/ca;->g:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_6

    if-eqz v4, :cond_7

    .line 69
    iput v2, v1, Lk0/ca;->f:I

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    and-int/2addr v0, v6

    if-eqz v0, :cond_8

    .line 70
    array-length v0, v3

    if-ge v2, v0, :cond_57

    .line 71
    aget-object v0, v3, v2

    aget v0, v0, v8

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    .line 72
    :cond_8
    iget v0, v1, Lk0/ca;->f:I

    array-length v2, v3

    if-ge v0, v2, :cond_9

    if-eq v0, v6, :cond_9

    .line 73
    aget-object v0, v3, v0

    aget v0, v0, v8

    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 74
    :cond_9
    iput v6, v1, Lk0/ca;->f:I

    goto/16 :goto_1b

    .line 75
    :pswitch_8
    iget v0, v1, Lk0/ca;->i:I

    if-ne v0, v4, :cond_a

    if-nez v3, :cond_57

    const/16 v0, 0x10

    .line 76
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 77
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_a
    if-nez v3, :cond_57

    .line 78
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 79
    invoke-virtual {v1, v14, v5, v12}, Lk0/ca;->l3(III)V

    goto/16 :goto_1b

    .line 80
    :pswitch_9
    iget v0, v1, Lk0/ca;->i:I

    if-ne v0, v4, :cond_b

    if-nez v3, :cond_57

    const/16 v0, 0x12

    .line 81
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 82
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_b
    if-nez v3, :cond_57

    .line 83
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/16 v0, 0x1e

    .line 84
    invoke-virtual {v1, v14, v5, v0}, Lk0/ca;->l3(III)V

    goto/16 :goto_1b

    .line 85
    :pswitch_a
    iget v0, v1, Lk0/ca;->i:I

    if-ne v0, v4, :cond_c

    if-nez v3, :cond_57

    const/16 v0, 0x18

    .line 86
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 87
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_c
    if-nez v3, :cond_57

    .line 88
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/16 v0, 0x1d

    .line 89
    invoke-virtual {v1, v14, v5, v0}, Lk0/ca;->l3(III)V

    goto/16 :goto_1b

    .line 90
    :pswitch_b
    iget v0, v1, Lk0/ca;->i:I

    if-ne v0, v4, :cond_d

    if-nez v3, :cond_57

    .line 91
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    .line 92
    invoke-static {v8, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_d
    if-nez v3, :cond_57

    .line 93
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/16 v0, 0x1c

    .line 94
    invoke-virtual {v1, v14, v5, v0}, Lk0/ca;->l3(III)V

    goto/16 :goto_1b

    .line 95
    :pswitch_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 96
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_f

    const/16 v2, 0xd

    if-ne v0, v2, :cond_e

    goto :goto_6

    .line 97
    :cond_e
    invoke-static {}, Lu0/d;->x1()V

    goto/16 :goto_1b

    :cond_f
    :goto_6
    new-array v0, v4, [I

    .line 98
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1b

    .line 99
    :pswitch_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 100
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_11

    const/16 v2, 0xd

    if-ne v0, v2, :cond_10

    goto :goto_7

    .line 101
    :cond_10
    invoke-static {}, Lu0/d;->B1()V

    goto/16 :goto_1b

    :cond_11
    :goto_7
    new-array v0, v4, [I

    .line 102
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1b

    .line 103
    :pswitch_e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 104
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_13

    const/16 v2, 0xd

    if-ne v0, v2, :cond_12

    goto :goto_8

    .line 105
    :cond_12
    invoke-static {}, Lu0/d;->I1()V

    goto/16 :goto_1b

    :cond_13
    :goto_8
    new-array v0, v4, [I

    .line 106
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1b

    .line 107
    :pswitch_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 108
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_15

    const/16 v2, 0xd

    if-ne v0, v2, :cond_14

    goto :goto_9

    .line 109
    :cond_14
    invoke-static {}, Lu0/d;->B1()V

    goto/16 :goto_1b

    :cond_15
    :goto_9
    new-array v0, v4, [I

    .line 110
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1b

    .line 111
    :pswitch_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 112
    iget v0, v1, Lk0/ca;->b:I

    if-eqz v0, :cond_16

    const/16 v0, 0x1d

    .line 113
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_16
    const/16 v0, 0x1d

    .line 114
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 115
    :pswitch_11
    invoke-static {}, Lo1/u;->r()V

    goto/16 :goto_1b

    .line 116
    :pswitch_12
    iget v0, v1, Lk0/ca;->i:I

    if-eq v0, v8, :cond_18

    if-ne v0, v13, :cond_17

    goto :goto_a

    .line 117
    :cond_17
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_1b

    .line 118
    :cond_18
    :goto_a
    invoke-static {}, Lo1/u;->a1()V

    goto/16 :goto_1b

    .line 119
    :pswitch_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 120
    invoke-static {}, La/i;->A()V

    goto/16 :goto_1b

    .line 121
    :pswitch_14
    invoke-static {}, Lo1/u;->j()I

    goto/16 :goto_1b

    .line 122
    :pswitch_15
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 123
    invoke-static {}, Lo1/u;->E()I

    goto/16 :goto_1b

    .line 124
    :pswitch_16
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 125
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_1b

    .line 126
    :pswitch_17
    sget v0, Lu0/b;->D:I

    if-ne v0, v9, :cond_19

    if-nez v3, :cond_57

    .line 127
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Lh0/f;->h(I)V

    goto/16 :goto_1b

    :cond_19
    const/16 v2, 0xc

    if-eq v0, v2, :cond_1a

    const/16 v2, 0xd

    if-ne v0, v2, :cond_57

    :cond_1a
    if-nez v3, :cond_57

    const/16 v0, 0x18

    .line 128
    invoke-virtual {v1, v14, v5, v0}, Lk0/ca;->l3(III)V

    goto/16 :goto_1b

    .line 129
    :pswitch_18
    sget v0, Lu0/b;->D:I

    if-ne v0, v9, :cond_1b

    if-nez v3, :cond_57

    .line 130
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Lh0/f;->h(I)V

    goto/16 :goto_1b

    :cond_1b
    const/16 v2, 0xd

    const/16 v4, 0xc

    if-eq v0, v4, :cond_1c

    if-ne v0, v2, :cond_57

    :cond_1c
    if-nez v3, :cond_57

    const/16 v0, 0x17

    .line 131
    invoke-virtual {v1, v14, v5, v0}, Lk0/ca;->l3(III)V

    goto/16 :goto_1b

    :pswitch_19
    if-nez v3, :cond_57

    .line 132
    aget-byte v0, v0, v10

    and-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x20

    invoke-virtual {v1, v0}, Lk0/ca;->i3(I)V

    goto/16 :goto_1b

    .line 133
    :cond_1d
    :goto_b
    :pswitch_1a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 134
    iget v0, v1, Lk0/ca;->b:I

    if-nez v0, :cond_57

    .line 135
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1e

    const/16 v0, 0xa

    .line 136
    invoke-virtual {v1, v5, v0}, Lk0/ca;->m3(II)V

    goto/16 :goto_1b

    :cond_1e
    if-ne v0, v8, :cond_1f

    .line 137
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->h()V

    goto/16 :goto_1b

    .line 138
    :cond_1f
    invoke-static {}, Lu0/d;->y1()V

    goto/16 :goto_1b

    .line 139
    :pswitch_1b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 140
    iget v0, v1, Lk0/ca;->b:I

    if-nez v0, :cond_57

    .line 141
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_20

    const/16 v0, 0x1a

    .line 142
    invoke-virtual {v1, v5, v0}, Lk0/ca;->m3(II)V

    goto/16 :goto_1b

    :cond_20
    if-ne v0, v8, :cond_21

    .line 143
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->c()V

    goto/16 :goto_1b

    .line 144
    :cond_21
    invoke-static {}, Lu0/d;->I1()V

    goto/16 :goto_1b

    .line 145
    :pswitch_1c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 146
    iget v0, v1, Lk0/ca;->b:I

    if-nez v0, :cond_57

    .line 147
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_22

    const/16 v0, 0x19

    .line 148
    invoke-virtual {v1, v5, v0}, Lk0/ca;->m3(II)V

    goto/16 :goto_1b

    :cond_22
    if-ne v0, v8, :cond_23

    .line 149
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->g()V

    goto/16 :goto_1b

    .line 150
    :cond_23
    invoke-static {}, Lu0/d;->B1()V

    goto/16 :goto_1b

    .line 151
    :pswitch_1d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 152
    iget v0, v1, Lk0/ca;->b:I

    if-nez v0, :cond_57

    .line 153
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_24

    const/16 v0, 0xb

    .line 154
    invoke-virtual {v1, v5, v0}, Lk0/ca;->m3(II)V

    goto/16 :goto_1b

    :cond_24
    if-ne v0, v8, :cond_25

    .line 155
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->d()V

    goto/16 :goto_1b

    .line 156
    :cond_25
    invoke-static {}, Lu0/d;->x1()V

    goto/16 :goto_1b

    .line 157
    :pswitch_1e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 158
    iget v0, v1, Lk0/ca;->b:I

    if-nez v0, :cond_57

    .line 159
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_26

    const/16 v0, 0xa

    .line 160
    invoke-virtual {v1, v5, v0}, Lk0/ca;->m3(II)V

    goto/16 :goto_1b

    :cond_26
    if-ne v0, v8, :cond_27

    .line 161
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->i()V

    goto/16 :goto_1b

    .line 162
    :cond_27
    invoke-static {}, Lu0/d;->L1()V

    goto/16 :goto_1b

    .line 163
    :cond_28
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 164
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_29

    .line 165
    iget v0, v1, Lk0/ca;->b:I

    if-nez v0, :cond_57

    new-array v0, v4, [I

    .line 166
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1b

    .line 167
    :cond_29
    iget v0, v1, Lk0/ca;->b:I

    if-eqz v0, :cond_2a

    .line 168
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    .line 169
    :cond_2a
    invoke-static {v13, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    .line 170
    :cond_2b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 171
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2c

    new-array v0, v4, [I

    .line 172
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1b

    .line 173
    :cond_2c
    iget v0, v1, Lk0/ca;->b:I

    if-eqz v0, :cond_2d

    .line 174
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    .line 175
    :cond_2d
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    .line 176
    :cond_2e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 177
    iget v0, v1, Lk0/ca;->b:I

    if-nez v0, :cond_57

    sget v0, Lu0/b;->D:I

    if-ne v0, v8, :cond_57

    .line 178
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0, v9}, Lw0/g;->w(I)V

    goto/16 :goto_1b

    .line 179
    :cond_2f
    invoke-static {}, Lo1/u;->W0()V

    goto/16 :goto_1b

    .line 180
    :cond_30
    sget v2, Lk0/nt;->R:I

    if-nez v2, :cond_31

    goto/16 :goto_1b

    :cond_31
    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 181
    aget-byte v5, v0, v4

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 182
    aget-byte v0, v0, v4

    invoke-virtual {v1, v0}, Lk0/ca;->k3(B)V

    goto/16 :goto_1b

    :cond_32
    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 183
    aget-byte v4, v0, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 184
    aget-byte v4, v0, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 185
    aget-byte v0, v0, v4

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :cond_33
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 186
    aget-byte v3, v0, v3

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0xf

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 187
    aget-byte v6, v0, v4

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 188
    aget-byte v3, v0, v4

    shr-int/2addr v3, v9

    and-int/2addr v3, v5

    aput v3, v2, v7

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 189
    aget-byte v3, v0, v4

    shr-int/2addr v3, v13

    and-int/2addr v3, v5

    aput v3, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v8, [I

    .line 190
    aget-byte v0, v0, v4

    shr-int/2addr v0, v10

    and-int/2addr v0, v5

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :cond_34
    :pswitch_1f
    add-int/lit8 v2, p2, 0x2

    .line 191
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 192
    aget-byte v3, v0, v3

    add-int/lit8 v9, p2, 0x4

    .line 193
    aget-byte v13, v0, v9

    add-int/lit8 v16, p2, 0x5

    .line 194
    aget-byte v5, v0, v16

    add-int/lit8 v16, p2, 0x6

    .line 195
    aget-byte v17, v0, v16

    add-int/lit8 v18, p2, 0x7

    .line 196
    aget-byte v19, v0, v18

    add-int/lit8 v19, p2, 0x8

    .line 197
    aget-byte v20, v0, v19

    add-int/lit8 v21, p2, 0x9

    .line 198
    aget-byte v21, v0, v21

    const/16 v10, 0xa

    new-array v11, v8, [I

    and-int/lit16 v4, v2, 0x80

    if-nez v4, :cond_35

    move v4, v7

    goto :goto_c

    :cond_35
    move v4, v8

    :goto_c
    aput v4, v11, v7

    .line 199
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v10, v8, [I

    and-int/lit8 v11, v2, 0x40

    if-nez v11, :cond_36

    move v11, v7

    goto :goto_d

    :cond_36
    move v11, v8

    :goto_d
    aput v11, v10, v7

    .line 200
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    and-int/lit8 v10, v2, 0x20

    if-nez v10, :cond_37

    move v10, v7

    goto :goto_e

    :cond_37
    move v10, v8

    :goto_e
    aput v10, v4, v7

    const/16 v10, 0xc

    .line 201
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    and-int/lit8 v10, v2, 0x8

    if-nez v10, :cond_38

    move v10, v7

    goto :goto_f

    :cond_38
    move v10, v8

    :goto_f
    aput v10, v4, v7

    const/16 v10, 0xd

    .line 202
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v10, v8, [I

    and-int/lit8 v11, v2, 0x4

    if-nez v11, :cond_39

    move v11, v7

    goto :goto_10

    :cond_39
    move v11, v8

    :goto_10
    aput v11, v10, v7

    .line 203
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    and-int/lit8 v10, v2, 0x2

    if-nez v10, :cond_3a

    move v10, v7

    goto :goto_11

    :cond_3a
    move v10, v8

    :goto_11
    aput v10, v4, v7

    const/16 v10, 0xf

    .line 204
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v10, v8, [I

    and-int/2addr v2, v8

    if-nez v2, :cond_3b

    move v2, v7

    goto :goto_12

    :cond_3b
    move v2, v8

    :goto_12
    aput v2, v10, v7

    .line 205
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v8, [I

    and-int/lit16 v10, v3, 0x80

    if-nez v10, :cond_3c

    move v10, v7

    goto :goto_13

    :cond_3c
    move v10, v8

    :goto_13
    aput v10, v4, v7

    .line 206
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v8, [I

    and-int/lit8 v10, v3, 0x40

    if-nez v10, :cond_3d

    move v10, v7

    goto :goto_14

    :cond_3d
    move v10, v8

    :goto_14
    aput v10, v4, v7

    .line 207
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v8, [I

    and-int/lit8 v10, v3, 0x20

    if-nez v10, :cond_3e

    move v10, v7

    goto :goto_15

    :cond_3e
    move v10, v8

    :goto_15
    aput v10, v4, v7

    .line 208
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    and-int/2addr v3, v2

    if-le v3, v15, :cond_3f

    move v3, v15

    :cond_3f
    const/16 v2, 0x15

    new-array v4, v8, [I

    aput v3, v4, v7

    .line 209
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 210
    iget v2, v1, Lk0/ca;->i:I

    const/16 v3, 0x1b

    if-nez v2, :cond_4f

    const-string v2, "persist.fyt.reversetemp"

    .line 211
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 212
    aget-byte v13, v0, v19

    .line 213
    aget-byte v20, v0, v9

    :cond_40
    move/from16 v2, v20

    and-int/lit16 v4, v13, 0xff

    shr-int/lit8 v9, v17, 0x3

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_47

    const/16 v10, 0x1e

    if-lt v4, v10, :cond_43

    if-gt v4, v14, :cond_43

    if-eq v4, v10, :cond_42

    if-eq v4, v14, :cond_41

    if-lt v4, v12, :cond_46

    const/16 v10, 0x3b

    if-gt v4, v10, :cond_46

    new-array v10, v8, [I

    sub-int/2addr v4, v12

    const/4 v11, 0x5

    mul-int/2addr v4, v11

    add-int/lit16 v4, v4, 0x9b

    aput v4, v10, v7

    .line 214
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_41
    new-array v4, v8, [I

    const/4 v10, -0x3

    aput v10, v4, v7

    .line 215
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_42
    new-array v4, v8, [I

    const/4 v10, -0x2

    aput v10, v4, v7

    .line 216
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_43
    const/16 v10, 0x77

    if-lt v4, v10, :cond_46

    const/16 v10, 0xab

    if-gt v4, v10, :cond_46

    const/16 v10, 0x77

    if-eq v4, v10, :cond_45

    const/16 v10, 0xab

    if-eq v4, v10, :cond_44

    const/16 v10, 0x78

    if-lt v4, v10, :cond_46

    const/16 v11, 0xaa

    if-gt v4, v11, :cond_46

    new-array v11, v8, [I

    sub-int/2addr v4, v10

    const/4 v10, 0x5

    mul-int/2addr v4, v10

    add-int/lit16 v4, v4, 0x258

    aput v4, v11, v7

    .line 217
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_44
    new-array v4, v8, [I

    const/4 v10, -0x3

    aput v10, v4, v7

    .line 218
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_45
    new-array v4, v8, [I

    const/4 v10, -0x2

    aput v10, v4, v7

    .line 219
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_46
    :goto_16
    const/16 v3, 0x19

    new-array v4, v8, [I

    const/16 v10, 0xf

    aput v10, v4, v7

    .line 220
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_47
    if-nez v9, :cond_48

    new-array v10, v8, [I

    const/4 v11, -0x1

    aput v11, v10, v7

    .line 221
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x19

    new-array v10, v8, [I

    aput v4, v10, v7

    .line 222
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    :cond_48
    :goto_17
    const/16 v3, 0x28

    new-array v4, v8, [I

    and-int/lit8 v10, v5, 0xf

    aput v10, v4, v7

    .line 223
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2c

    new-array v4, v8, [I

    shr-int/lit8 v10, v5, 0x4

    and-int/2addr v10, v15

    aput v10, v4, v7

    .line 224
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2a

    new-array v4, v8, [I

    shr-int/2addr v5, v15

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 225
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x43

    new-array v4, v8, [I

    and-int/lit8 v5, v17, 0x1

    aput v5, v4, v7

    .line 226
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x11

    new-array v4, v8, [I

    shr-int/lit8 v5, v17, 0x1

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 227
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x42

    new-array v4, v8, [I

    shr-int/lit8 v5, v17, 0x7

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 228
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v4, v8, [I

    shr-int/lit8 v5, v17, 0x2

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 229
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x36

    new-array v4, v8, [I

    aput v9, v4, v7

    .line 230
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x25

    new-array v4, v8, [I

    const/4 v5, 0x6

    shr-int/lit8 v9, v17, 0x6

    and-int/lit8 v5, v9, 0x1

    aput v5, v4, v7

    .line 231
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    and-int/2addr v2, v6

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_4b

    if-gt v2, v14, :cond_4b

    if-eq v2, v3, :cond_4a

    if-eq v2, v14, :cond_49

    if-lt v2, v12, :cond_4e

    const/16 v3, 0x3b

    if-gt v2, v3, :cond_4e

    new-array v3, v8, [I

    sub-int/2addr v2, v12

    const/4 v4, 0x5

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x9b

    aput v2, v3, v7

    const/16 v2, 0x1c

    .line 232
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_49
    const/16 v2, 0x1c

    new-array v3, v8, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 233
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_4a
    const/16 v2, 0x1c

    new-array v3, v8, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 234
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_4b
    const/16 v3, 0x77

    if-lt v2, v3, :cond_4e

    const/16 v3, 0xab

    if-gt v2, v3, :cond_4e

    const/16 v3, 0x77

    if-eq v2, v3, :cond_4d

    const/16 v3, 0xab

    if-eq v2, v3, :cond_4c

    const/16 v3, 0x78

    if-lt v2, v3, :cond_4e

    const/16 v4, 0xaa

    if-gt v2, v4, :cond_4e

    new-array v4, v8, [I

    sub-int/2addr v2, v3

    const/4 v3, 0x5

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x258

    aput v2, v4, v7

    const/16 v2, 0x1c

    .line 235
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_4c
    const/16 v2, 0x1c

    new-array v3, v8, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 236
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_4d
    const/16 v2, 0x1c

    new-array v3, v8, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 237
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_4e
    :goto_18
    const/16 v2, 0x1d

    new-array v3, v8, [I

    and-int/lit8 v4, v21, 0x3

    aput v4, v3, v7

    .line 238
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v21, 0x2

    const/4 v4, 0x3

    and-int/2addr v3, v4

    aput v3, v2, v7

    const/16 v3, 0x1e

    .line 239
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v21, 0x4

    and-int/2addr v3, v4

    aput v3, v2, v7

    .line 240
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v8, [I

    const/4 v5, 0x6

    shr-int/lit8 v5, v21, 0x6

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 241
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_4f
    const-string v2, "persist.fyt.reversetemp"

    .line 242
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_50

    new-array v2, v8, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v2, v7

    .line 243
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    and-int/lit16 v3, v13, 0xff

    aput v3, v2, v7

    const/16 v4, 0x1c

    .line 244
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_50
    const/16 v4, 0x1c

    new-array v2, v8, [I

    and-int/lit16 v9, v13, 0xff

    aput v9, v2, v7

    .line 245
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    and-int/lit16 v3, v5, 0xff

    aput v3, v2, v7

    .line 246
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_19
    const/16 v2, 0x35

    new-array v3, v8, [I

    shr-int/lit8 v4, v17, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 247
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v8, [I

    const/4 v4, 0x6

    shr-int/lit8 v4, v17, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 248
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 249
    :goto_1a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 250
    aget-byte v2, v0, v16

    aget-byte v0, v0, v18

    invoke-static {v2, v0}, Ll0/f0;->e(BB)V

    goto/16 :goto_1b

    :cond_51
    add-int/lit8 v2, p2, 0x2

    .line 251
    aget-byte v2, v0, v2

    if-ne v2, v8, :cond_57

    const/16 v2, 0x68

    new-array v3, v8, [I

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 252
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :cond_52
    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 253
    aget-byte v5, v0, v4

    and-int/2addr v5, v6

    const/4 v9, 0x3

    add-int/lit8 v9, p2, 0x3

    aget-byte v10, v0, v9

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    add-int/2addr v5, v10

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v8, [I

    .line 254
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aget-byte v0, v0, v9

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v11

    add-int/2addr v4, v0

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :cond_53
    const/16 v2, 0x72

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 255
    aget-byte v5, v0, v4

    and-int/2addr v5, v6

    const/4 v9, 0x3

    add-int/lit8 v9, p2, 0x3

    aget-byte v10, v0, v9

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    add-int/2addr v5, v10

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v8, [I

    .line 256
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aget-byte v0, v0, v9

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v11

    add-int/2addr v4, v0

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1b

    .line 257
    :cond_54
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_1b

    .line 258
    :cond_55
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_1b

    :cond_56
    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 259
    aget-byte v5, v0, v4

    and-int/2addr v5, v6

    const/4 v9, 0x3

    add-int/lit8 v9, p2, 0x3

    aget-byte v10, v0, v9

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    add-int/2addr v5, v10

    div-int/lit8 v5, v5, 0x64

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v8, [I

    .line 260
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aget-byte v0, v0, v9

    shl-int/lit8 v0, v0, 0x8

    const v5, 0xff00

    and-int/2addr v0, v5

    add-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x64

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_57
    :goto_1b
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_7
        :pswitch_1f
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x34
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x48
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x5c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0xa
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x19
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x19
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x9
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x9
    .end array-data
.end method

.method public W2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ca;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v1, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lk0/ca;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ca;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Lo0/f;->c:Lo1/y;

    iget-object v2, p0, Lk0/ca;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lk0/ca;->o:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/ca;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/ca;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v1, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v1, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    iget-object v1, p0, Lk0/ca;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x70

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

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    const/16 v5, 0xc6

    if-eq v1, v3, :cond_6

    const/16 v6, 0xa9

    const/4 v7, 0x2

    if-eq v1, v7, :cond_5

    const/4 v8, 0x3

    if-eq v1, v8, :cond_4

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v6, 0x5

    if-eq v1, v6, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    sget v1, Lk0/nt;->a:I

    const v9, 0x2012c

    const/16 v11, -0x56

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/16 v14, 0x25

    const/16 v15, 0x33

    const/16 v16, 0x2e

    const/16 v10, 0x9

    if-ne v1, v9, :cond_1

    new-array v1, v10, [B

    aput-byte v16, v1, v4

    aput-byte v15, v1, v3

    aput-byte v6, v1, v7

    .line 2
    aget v9, v2, v4

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    iget-object v9, v0, Lk0/ca;->t:[I

    iget v8, v0, Lk0/ca;->u:I

    rem-int/2addr v8, v7

    aget v8, v9, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    aput-byte v14, v1, v6

    const/16 v8, 0x11

    aput-byte v8, v1, v13

    aput-byte v11, v1, v12

    const/16 v9, 0x8

    aput-byte v4, v1, v9

    invoke-static {v1}, Lk0/ca;->n3([B)V

    new-array v1, v10, [B

    aput-byte v16, v1, v4

    aput-byte v15, v1, v3

    aput-byte v6, v1, v7

    .line 3
    aget v9, v2, v4

    int-to-byte v9, v9

    const/16 v17, 0x3

    aput-byte v9, v1, v17

    iget-object v9, v0, Lk0/ca;->t:[I

    iget v3, v0, Lk0/ca;->u:I

    rem-int/2addr v3, v7

    aget v3, v9, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    aput-byte v14, v1, v6

    aput-byte v8, v1, v13

    aput-byte v11, v1, v12

    const/16 v3, 0x8

    aput-byte v4, v1, v3

    invoke-static {v1}, Lk0/ca;->n3([B)V

    new-array v1, v10, [B

    aput-byte v16, v1, v4

    const/4 v3, 0x1

    aput-byte v15, v1, v3

    aput-byte v6, v1, v7

    .line 4
    aget v2, v2, v4

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    iget-object v2, v0, Lk0/ca;->t:[I

    iget v3, v0, Lk0/ca;->u:I

    rem-int/2addr v3, v7

    aget v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    aput-byte v14, v1, v6

    aput-byte v8, v1, v13

    aput-byte v11, v1, v12

    const/16 v2, 0x8

    aput-byte v4, v1, v2

    invoke-static {v1}, Lk0/ca;->n3([B)V

    goto :goto_0

    :cond_1
    const v3, 0x3012c

    if-ne v1, v3, :cond_2

    new-array v1, v10, [B

    aput-byte v16, v1, v4

    const/4 v3, 0x1

    aput-byte v15, v1, v3

    aput-byte v6, v1, v7

    .line 5
    aget v3, v2, v4

    int-to-byte v3, v3

    const/4 v8, 0x3

    aput-byte v3, v1, v8

    iget-object v3, v0, Lk0/ca;->t:[I

    iget v8, v0, Lk0/ca;->u:I

    rem-int/2addr v8, v7

    aget v3, v3, v8

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    aput-byte v14, v1, v6

    const/16 v3, 0x12

    aput-byte v3, v1, v13

    aput-byte v11, v1, v12

    const/16 v8, 0x8

    aput-byte v4, v1, v8

    invoke-static {v1}, Lk0/ca;->n3([B)V

    new-array v1, v10, [B

    aput-byte v16, v1, v4

    const/4 v8, 0x1

    aput-byte v15, v1, v8

    aput-byte v6, v1, v7

    .line 6
    aget v8, v2, v4

    int-to-byte v8, v8

    const/4 v9, 0x3

    aput-byte v8, v1, v9

    iget-object v8, v0, Lk0/ca;->t:[I

    iget v9, v0, Lk0/ca;->u:I

    rem-int/2addr v9, v7

    aget v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    aput-byte v14, v1, v6

    aput-byte v3, v1, v13

    aput-byte v11, v1, v12

    const/16 v8, 0x8

    aput-byte v4, v1, v8

    invoke-static {v1}, Lk0/ca;->n3([B)V

    new-array v1, v10, [B

    aput-byte v16, v1, v4

    const/4 v8, 0x1

    aput-byte v15, v1, v8

    aput-byte v6, v1, v7

    .line 7
    aget v2, v2, v4

    int-to-byte v2, v2

    const/4 v8, 0x3

    aput-byte v2, v1, v8

    iget-object v2, v0, Lk0/ca;->t:[I

    iget v8, v0, Lk0/ca;->u:I

    rem-int/2addr v8, v7

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    aput-byte v14, v1, v6

    aput-byte v3, v1, v13

    aput-byte v11, v1, v12

    const/16 v2, 0x8

    aput-byte v4, v1, v2

    invoke-static {v1}, Lk0/ca;->n3([B)V

    .line 8
    :cond_2
    :goto_0
    iget v1, v0, Lk0/ca;->u:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lk0/ca;->u:I

    .line 9
    rem-int/2addr v1, v7

    iput v1, v0, Lk0/ca;->u:I

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_8

    .line 10
    array-length v1, v2

    if-lez v1, :cond_8

    const/16 v1, 0x71

    .line 11
    aget v4, v2, v4

    aget v2, v2, v3

    invoke-virtual {v0, v1, v4, v2}, Lk0/ca;->l3(III)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_8

    .line 12
    array-length v1, v2

    if-lez v1, :cond_8

    .line 13
    aget v1, v2, v4

    shl-int/2addr v1, v7

    sget-object v2, Lk0/nt;->g:[I

    const/16 v3, 0x1d

    aget v2, v2, v3

    or-int/2addr v1, v2

    .line 14
    invoke-virtual {v0, v5, v6, v1}, Lk0/ca;->l3(III)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_8

    .line 15
    array-length v1, v2

    if-lez v1, :cond_8

    .line 16
    sget-object v1, Lk0/nt;->g:[I

    const/16 v3, 0x1e

    aget v1, v1, v3

    shl-int/2addr v1, v7

    aget v2, v2, v4

    or-int/2addr v1, v2

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v5, v6, v1}, Lk0/ca;->l3(III)V

    goto :goto_1

    .line 19
    :cond_6
    aget v1, v2, v4

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lk0/ca;->l3(III)V

    goto :goto_1

    :cond_7
    const/16 v1, 0x90

    .line 20
    aget v4, v2, v4

    aget v2, v2, v3

    invoke-virtual {v0, v1, v4, v2}, Lk0/ca;->l3(III)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final a3(I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x27
        0x2
        0x4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x27
        0x2
        0x2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x27
        0x2
        0x1b
        0x0
    .end array-data
.end method

.method public b([B)V
    .locals 7

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
    if-eqz p1, :cond_d

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_5

    .line 3
    :cond_1
    iget v1, p0, Lk0/ca;->w:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/ca;->w:I

    .line 5
    iput v0, p0, Lk0/ca;->x:I

    .line 6
    iput v0, p0, Lk0/ca;->y:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/ca;->v:[B

    iget v2, p0, Lk0/ca;->w:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/ca;->w:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/ca;->w:I

    .line 9
    iget p1, p0, Lk0/ca;->y:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/ca;->v:[B

    aget-byte p1, p1, v0

    move p1, v2

    .line 11
    :goto_0
    iget v1, p0, Lk0/ca;->y:I

    if-ge p1, v1, :cond_4

    .line 12
    iget-object v1, p0, Lk0/ca;->v:[B

    aget-byte v1, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lk0/ca;->v:[B

    aget-byte v1, p1, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lk0/ca;->j3([BII)V

    .line 14
    iget p1, p0, Lk0/ca;->y:I

    add-int/2addr p1, v3

    iput p1, p0, Lk0/ca;->x:I

    .line 15
    iput v0, p0, Lk0/ca;->y:I

    .line 16
    :cond_5
    iget p1, p0, Lk0/ca;->w:I

    sub-int/2addr p1, v2

    :goto_1
    iget v1, p0, Lk0/ca;->x:I

    if-ge v1, p1, :cond_b

    .line 17
    iget-object v4, p0, Lk0/ca;->v:[B

    aget-byte v5, v4, v1

    const/16 v6, 0x55

    if-eq v5, v6, :cond_6

    aget-byte v5, v4, v1

    const/16 v6, 0x61

    if-ne v5, v6, :cond_a

    .line 18
    :cond_6
    iget v5, p0, Lk0/ca;->y:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_7

    .line 19
    iput v0, p0, Lk0/ca;->y:I

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 20
    aget-byte v5, v4, v5

    iput v5, p0, Lk0/ca;->y:I

    .line 21
    iget v6, p0, Lk0/ca;->w:I

    if-lt v5, v6, :cond_8

    sub-int/2addr v5, v1

    .line 22
    iput v5, p0, Lk0/ca;->y:I

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v1, 0x1

    .line 23
    aget-byte v4, v4, v5

    add-int/lit8 v1, v1, 0x2

    .line 24
    :goto_2
    iget v4, p0, Lk0/ca;->y:I

    if-ge v1, v4, :cond_9

    .line 25
    iget-object v4, p0, Lk0/ca;->v:[B

    aget-byte v4, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 26
    :cond_9
    iget-object v1, p0, Lk0/ca;->v:[B

    iget v4, p0, Lk0/ca;->x:I

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5

    add-int/2addr v5, v2

    invoke-virtual {p0, v1, v4, v5}, Lk0/ca;->j3([BII)V

    .line 27
    iget v1, p0, Lk0/ca;->y:I

    iput v1, p0, Lk0/ca;->x:I

    .line 28
    iput v0, p0, Lk0/ca;->y:I

    .line 29
    :cond_a
    :goto_3
    iget v1, p0, Lk0/ca;->x:I

    add-int/2addr v1, v3

    iput v1, p0, Lk0/ca;->x:I

    goto :goto_1

    :cond_b
    :goto_4
    if-eqz v1, :cond_d

    .line 30
    iget p1, p0, Lk0/ca;->w:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/ca;->w:I

    if-eqz p1, :cond_c

    .line 31
    iget-object v2, p0, Lk0/ca;->v:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    :cond_c
    iput v0, p0, Lk0/ca;->x:I

    :cond_d
    :goto_5
    return-void
.end method

.method public h3()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i3(I)V
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    if-lez p1, :cond_1

    .line 2
    sget-object v0, Lo0/e;->b:Lo0/h;

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lo0/h;->D(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v7, 0x7

    if-ne v0, v3, :cond_2

    if-lez p1, :cond_2

    if-ge p1, v7, :cond_2

    .line 3
    invoke-static {p1}, Lw0/f;->B(I)V

    goto/16 :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 6
    :pswitch_2
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v5}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 7
    :pswitch_3
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v4}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 8
    :pswitch_4
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v7}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 9
    :pswitch_5
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 10
    :pswitch_6
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 11
    :pswitch_7
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v6}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 12
    :pswitch_8
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v1}, Lh0/f;->h(I)V

    goto :goto_1

    .line 13
    :pswitch_9
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    const/16 v2, 0xd

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_6

    :cond_4
    const/16 v0, 0xa1

    const/16 v1, 0xc6

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x16

    .line 14
    invoke-virtual {p0, v1, v0, p1}, Lk0/ca;->l3(III)V

    goto :goto_1

    :pswitch_b
    const/16 p1, 0x15

    .line 15
    invoke-virtual {p0, v1, v0, p1}, Lk0/ca;->l3(III)V

    goto :goto_1

    :pswitch_c
    const/16 p1, 0x14

    .line 16
    invoke-virtual {p0, v1, v0, p1}, Lk0/ca;->l3(III)V

    goto :goto_1

    :pswitch_d
    const/16 p1, 0x13

    .line 17
    invoke-virtual {p0, v1, v0, p1}, Lk0/ca;->l3(III)V

    goto :goto_1

    :pswitch_e
    const/16 p1, 0x12

    .line 18
    invoke-virtual {p0, v1, v0, p1}, Lk0/ca;->l3(III)V

    goto :goto_1

    :pswitch_f
    const/16 p1, 0x11

    .line 19
    invoke-virtual {p0, v1, v0, p1}, Lk0/ca;->l3(III)V

    goto :goto_1

    :pswitch_10
    const/16 p1, 0x10

    .line 20
    invoke-virtual {p0, v1, v0, p1}, Lk0/ca;->l3(III)V

    goto :goto_1

    :pswitch_11
    const/16 p1, 0xf

    .line 21
    invoke-virtual {p0, v1, v0, p1}, Lk0/ca;->l3(III)V

    goto :goto_1

    :pswitch_12
    const/16 p1, 0xe

    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lk0/ca;->l3(III)V

    goto :goto_1

    .line 23
    :pswitch_13
    invoke-virtual {p0, v1, v0, v2}, Lk0/ca;->l3(III)V

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v5, 0x25

    new-array v1, v1, [I

    const/4 v6, 0x0

    aput v0, v1, v6

    aput v4, v1, v3

    aput p1, v1, v2

    .line 24
    invoke-static {v5, v1}, Lu0/d;->I3(I[I)V

    :cond_6
    :goto_1
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public final j3([BII)V
    .locals 10

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "revObd ---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-static {p1, p2, v3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    aget-byte v0, p1, p2

    const/16 v1, 0x55

    if-eq v0, v1, :cond_1

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->I(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const/16 p3, 0x1b

    const/4 v0, 0x1

    new-array v1, v0, [I

    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1c

    new-array v1, v0, [I

    add-int/lit8 v3, p2, 0x3

    .line 5
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v1, v0, [I

    add-int/lit8 v5, p2, 0x4

    .line 6
    aget-byte v6, p1, v5

    shr-int/2addr v6, v4

    const/16 v7, 0xf

    and-int/2addr v6, v7

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    .line 7
    aget-byte p3, p1, v5

    shr-int/lit8 p3, p3, 0x4

    and-int/2addr p3, v7

    packed-switch p3, :pswitch_data_0

    move p3, v4

    :goto_0
    move v1, p3

    :goto_1
    move v6, v1

    goto :goto_2

    :pswitch_0
    move p3, v0

    goto :goto_0

    :pswitch_1
    move p3, v0

    move v1, v4

    goto :goto_1

    :pswitch_2
    move p3, v0

    move v6, p3

    move v1, v4

    goto :goto_2

    :pswitch_3
    move p3, v0

    move v1, p3

    move v6, v4

    goto :goto_2

    :pswitch_4
    move v1, v0

    move p3, v4

    move v6, p3

    goto :goto_2

    :pswitch_5
    move v1, v0

    move v6, v1

    move p3, v4

    goto :goto_2

    :pswitch_6
    move v6, v0

    move p3, v4

    move v1, p3

    :goto_2
    const/16 v8, 0x12

    new-array v9, v0, [I

    aput p3, v9, v4

    .line 8
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v8, v0, [I

    aput v1, v8, v4

    .line 9
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v0, [I

    aput v6, v1, v4

    .line 10
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1d

    new-array v1, v0, [I

    add-int/lit8 v6, p2, 0x5

    .line 11
    aget-byte v8, p1, v6

    shr-int/2addr v8, v4

    and-int/lit8 v8, v8, 0x3

    aput v8, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1f

    new-array v1, v0, [I

    .line 12
    aget-byte v8, p1, v6

    shr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0x3

    aput v8, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1e

    new-array v1, v0, [I

    .line 13
    aget-byte v8, p1, v6

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x3

    aput v8, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x20

    new-array v1, v0, [I

    .line 14
    aget-byte v8, p1, v6

    shr-int/lit8 v8, v8, 0x6

    and-int/lit8 v8, v8, 0x3

    aput v8, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v1, v0, [I

    add-int/lit8 v8, p2, 0x6

    .line 15
    aget-byte v9, p1, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v0

    aput v9, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v1, v0, [I

    .line 16
    aget-byte v9, p1, v8

    shr-int/2addr v9, v0

    and-int/2addr v9, v0

    aput v9, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v1, v0, [I

    .line 17
    aget-byte v9, p1, v8

    shr-int/lit8 v9, v9, 0x2

    and-int/2addr v9, v0

    aput v9, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x35

    new-array v1, v0, [I

    .line 18
    aget-byte v9, p1, v8

    shr-int/lit8 v9, v9, 0x4

    and-int/2addr v9, v0

    aput v9, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v0, [I

    .line 19
    aget-byte v1, p1, v8

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v0

    aput v1, p3, v4

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v1, v0, [I

    .line 20
    aget-byte v7, p1, v8

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v0

    aput v7, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v1, v0, [I

    add-int/lit8 p2, p2, 0x7

    .line 21
    aget-byte v7, p1, p2

    shr-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x3

    aput v7, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7e

    new-array v1, v0, [I

    .line 22
    aget-byte v2, p1, v2

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7f

    new-array v1, v0, [I

    .line 23
    aget-byte v2, p1, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x80

    new-array v1, v0, [I

    .line 24
    aget-byte v2, p1, v5

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x81

    new-array v1, v0, [I

    .line 25
    aget-byte v2, p1, v6

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x82

    new-array v1, v0, [I

    .line 26
    aget-byte v2, p1, v8

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x83

    new-array v0, v0, [I

    .line 27
    aget-byte p1, p1, p2

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k3(B)V
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
    invoke-virtual {p0}, Lk0/ca;->h3()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.syu.carinfo.focus.FocusSyncBtActi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.syu.canbus.sync"

    .line 4
    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_2
    const/16 p1, 0x79

    const/16 v0, 0x83

    .line 5
    invoke-virtual {p0, p1, v0}, Lk0/ca;->m3(II)V

    :goto_0
    return-void
.end method

.method public final l3(III)V
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

.method public final m3(II)V
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0, p1, p1}, Lk0/ca;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
