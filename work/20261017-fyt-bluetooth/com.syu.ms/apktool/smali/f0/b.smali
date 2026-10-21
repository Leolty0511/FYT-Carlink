.class public Lf0/b;
.super Lf0/a;
.source "SourceFile"


# static fields
.field public static final Q:[I

.field public static final R:[I

.field public static final S:[I

.field public static final T:[I

.field public static final U:[I

.field public static final V:[I

.field public static final W:[I


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:I

.field public G:I

.field public H:Z

.field public I:Z

.field public J:[I

.field public K:[I

.field public L:[I

.field public M:[I

.field public N:[I

.field public O:[I

.field public final P:Lo1/p;

.field public g:Landroid/util/SparseIntArray;

.field public h:Landroid/util/SparseIntArray;

.field public i:Landroid/util/SparseIntArray;

.field public j:Landroid/util/SparseIntArray;

.field public final k:[[I

.field public final l:[I

.field public final m:[I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public final r:[I

.field public final s:[I

.field public t:I

.field public u:I

.field public v:I

.field public w:Lf0/c;

.field public x:Lo1/h0;

.field public y:Lo1/n;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lf0/b;->Q:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lf0/b;->R:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lf0/b;->S:[I

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_3

    sput-object v1, Lf0/b;->T:[I

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_4

    sput-object v1, Lf0/b;->U:[I

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_5

    sput-object v1, Lf0/b;->V:[I

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_6

    sput-object v0, Lf0/b;->W:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x7d0
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x50
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x1388
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x4
        0x7d0
        0x4
    .end array-data
.end method

.method public constructor <init>(Lo1/n;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lf0/a;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lf0/b;->g:Landroid/util/SparseIntArray;

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lf0/b;->h:Landroid/util/SparseIntArray;

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lf0/b;->j:Landroid/util/SparseIntArray;

    const/16 v0, 0xb

    new-array v2, v0, [[I

    const/16 v3, 0x25

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    const/4 v6, 0x2

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v8, 0x6

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v8, 0x7

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v9, 0x8

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v9, 0x9

    aput-object v4, v2, v9

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v2, v4

    iput-object v2, p0, Lf0/b;->k:[[I

    new-array v2, v0, [I

    .line 7
    fill-array-data v2, :array_b

    iput-object v2, p0, Lf0/b;->l:[I

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_c

    iput-object v0, p0, Lf0/b;->m:[I

    .line 9
    iput v5, p0, Lf0/b;->n:I

    .line 10
    iput v5, p0, Lf0/b;->o:I

    .line 11
    iput-boolean v5, p0, Lf0/b;->p:Z

    .line 12
    iput-boolean v5, p0, Lf0/b;->q:Z

    new-array v0, v6, [I

    .line 13
    fill-array-data v0, :array_d

    iput-object v0, p0, Lf0/b;->r:[I

    new-array v0, v6, [I

    .line 14
    fill-array-data v0, :array_e

    iput-object v0, p0, Lf0/b;->s:[I

    .line 15
    iput v8, p0, Lf0/b;->t:I

    .line 16
    iput v5, p0, Lf0/b;->u:I

    .line 17
    iput v5, p0, Lf0/b;->v:I

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lf0/b;->z:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lf0/b;->A:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lf0/b;->B:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lf0/b;->C:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lf0/b;->D:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lf0/b;->E:Ljava/lang/String;

    .line 24
    iput v5, p0, Lf0/b;->F:I

    .line 25
    iput v5, p0, Lf0/b;->G:I

    .line 26
    iput-boolean v5, p0, Lf0/b;->H:Z

    .line 27
    iput-boolean v5, p0, Lf0/b;->I:Z

    new-array v0, v7, [I

    .line 28
    fill-array-data v0, :array_f

    iput-object v0, p0, Lf0/b;->J:[I

    new-array v0, v7, [I

    .line 29
    fill-array-data v0, :array_10

    iput-object v0, p0, Lf0/b;->K:[I

    new-array v0, v7, [I

    .line 30
    fill-array-data v0, :array_11

    iput-object v0, p0, Lf0/b;->L:[I

    new-array v0, v7, [I

    .line 31
    fill-array-data v0, :array_12

    iput-object v0, p0, Lf0/b;->M:[I

    new-array v0, v7, [I

    .line 32
    fill-array-data v0, :array_13

    iput-object v0, p0, Lf0/b;->N:[I

    new-array v0, v7, [I

    .line 33
    fill-array-data v0, :array_14

    iput-object v0, p0, Lf0/b;->O:[I

    .line 34
    new-instance v0, Lf0/b$a;

    invoke-direct {v0, p0}, Lf0/b$a;-><init>(Lf0/b;)V

    iput-object v0, p0, Lf0/b;->P:Lo1/p;

    .line 35
    iput v5, p0, Lf0/a;->e:I

    .line 36
    iput-object p1, p0, Lf0/b;->y:Lo1/n;

    .line 37
    invoke-static {}, Lf0/c;->X2()Lf0/c;

    move-result-object p1

    iput-object p1, p0, Lf0/b;->w:Lf0/c;

    .line 38
    invoke-virtual {p1}, Lbase/b;->M2()Lo1/h0;

    move-result-object p1

    iput-object p1, p0, Lf0/b;->x:Lo1/h0;

    .line 39
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xfc
        0xf3
        0xeb
        0xe3
        0xdb
        0xd3
        0xcc
        0xc5
        0xbe
        0xb7
        0xb1
        0xab
        0xa5
        0x9f
        0x9a
        0x95
        0x90
        0x8b
        0x87
        0x82
        0x7e
        0x7b
        0x77
        0x74
        0x71
        0x6e
        0x6c
        0x6a
        0x68
        0x66
        0x65
        0x63
        0x62
        0x62
        0x61
        0x60
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xe9
        0xe0
        0xd7
        0xce
        0xc5
        0xbd
        0xb5
        0xad
        0xa6
        0x9f
        0x98
        0x91
        0x8b
        0x85
        0x7f
        0x79
        0x74
        0x6f
        0x6a
        0x65
        0x61
        0x5d
        0x59
        0x56
        0x53
        0x50
        0x4d
        0x4b
        0x48
        0x47
        0x45
        0x44
        0x43
        0x42
        0x41
        0x40
    .end array-data

    :array_3
    .array-data 4
        0xff
        0xd5
        0xcb
        0xc1
        0xb7
        0xae
        0xa5
        0x9d
        0x94
        0x8c
        0x84
        0x7d
        0x76
        0x6f
        0x68
        0x62
        0x5c
        0x56
        0x50
        0x4b
        0x46
        0x42
        0x3d
        0x39
        0x36
        0x32
        0x2f
        0x2c
        0x29
        0x27
        0x25
        0x23
        0x22
        0x21
        0x20
        0x1f
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0xff
        0xca
        0xbf
        0xb4
        0xa9
        0x9f
        0x95
        0x8c
        0x83
        0x7a
        0x71
        0x69
        0x62
        0x5a
        0x53
        0x4d
        0x47
        0x41
        0x3b
        0x36
        0x31
        0x2d
        0x29
        0x25
        0x22
        0x1f
        0x1d
        0x1a
        0x19
        0x17
        0x16
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
    .end array-data

    :array_5
    .array-data 4
        0xff
        0xbf
        0xb0
        0xa3
        0x96
        0x89
        0x7e
        0x73
        0x68
        0x5e
        0x55
        0x4c
        0x44
        0x3d
        0x36
        0x30
        0x2a
        0x25
        0x21
        0x1d
        0x1a
        0x18
        0x16
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
        0xf
        0xe
        0xd
        0xc
        0xb
        0xa
        0x9
        0x8
    .end array-data

    :array_6
    .array-data 4
        0xff
        0xb4
        0xa6
        0x98
        0x8b
        0x7e
        0x72
        0x67
        0x5d
        0x53
        0x4a
        0x42
        0x3a
        0x33
        0x2d
        0x27
        0x23
        0x1e
        0x1b
        0x18
        0x16
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
        0xf
        0xe
        0xd
        0xc
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
    .end array-data

    :array_7
    .array-data 4
        0xff
        0xa1
        0x93
        0x85
        0x79
        0x6d
        0x62
        0x57
        0x4e
        0x45
        0x3d
        0x35
        0x2f
        0x29
        0x24
        0x1f
        0x1b
        0x18
        0x16
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
        0xf
        0xe
        0xd
        0xc
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xff
        0x8d
        0x7f
        0x73
        0x67
        0x5c
        0x52
        0x48
        0x3f
        0x38
        0x30
        0x2a
        0x25
        0x20
        0x1c
        0x19
        0x16
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
        0xf
        0xe
        0xd
        0xc
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xff
        0x83
        0x76
        0x6a
        0x5f
        0x54
        0x4a
        0x41
        0x39
        0x32
        0x2b
        0x25
        0x20
        0x1c
        0x19
        0x16
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
        0xf
        0xe
        0xd
        0xc
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xff
        0x79
        0x6d
        0x61
        0x56
        0x4c
        0x42
        0x3a
        0x32
        0x2c
        0x26
        0x21
        0x1c
        0x19
        0x17
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
        0xf
        0xe
        0xd
        0xc
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xff
        0x73
        0x59
        0x43
        0x32
        0x25
        0x22
        0x20
        0x1e
        0x1c
        0x18
    .end array-data

    :array_c
    .array-data 4
        0xff
        0x20
        0x1e
        0x1c
        0x1a
        0x18
        0x16
        0x14
        0x12
        0x10
        0xe
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data

    :array_13
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data

    :array_14
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public A(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf0/b;->L:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    if-eq v2, p1, :cond_1

    if-ltz p1, :cond_1

    const/16 v2, 0x8

    if-le p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput p1, v0, v1

    const/4 v1, 0x0

    .line 3
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v2, v1, v0, p1}, Lf0/b;->x(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public B(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-eqz v0, :cond_b

    if-ltz p1, :cond_b

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object v1, Lf0/b;->S:[I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v3, p0, Lf0/b;->L:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, p1, :cond_a

    if-eqz p1, :cond_9

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_5

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    array-length v0, p1

    if-ne v0, v2, :cond_2

    .line 6
    iput-object p1, p0, Lf0/b;->L:[I

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lf0/b;->W:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->L:[I

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    array-length v0, p1

    if-ne v0, v2, :cond_4

    .line 10
    iput-object p1, p0, Lf0/b;->L:[I

    goto :goto_0

    .line 11
    :cond_4
    sget-object p1, Lf0/b;->V:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->L:[I

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_6

    .line 13
    array-length v0, p1

    if-ne v0, v2, :cond_6

    .line 14
    iput-object p1, p0, Lf0/b;->L:[I

    goto :goto_0

    .line 15
    :cond_6
    sget-object p1, Lf0/b;->U:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->L:[I

    goto :goto_0

    .line 16
    :cond_7
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_8

    .line 17
    array-length v0, p1

    if-ne v0, v2, :cond_8

    .line 18
    iput-object p1, p0, Lf0/b;->L:[I

    goto :goto_0

    .line 19
    :cond_8
    sget-object p1, Lf0/b;->T:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->L:[I

    goto :goto_0

    .line 20
    :cond_9
    iput-object v1, p0, Lf0/b;->L:[I

    .line 21
    :cond_a
    :goto_0
    iget-object p1, p0, Lf0/b;->L:[I

    aget v0, p1, v4

    aget v1, p1, v6

    aget p1, p1, v5

    invoke-virtual {p0, v6, v0, v1, p1}, Lf0/b;->x(IIII)V

    :cond_b
    :goto_1
    return-void
.end method

.method public C(I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lf0/b;->J:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    if-ne v2, p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    aget v2, v0, v1

    const/4 v3, 0x0

    .line 3
    aget v4, v0, v3

    const/16 v5, 0xfa0

    const/16 v6, 0xfa

    const/4 v7, 0x2

    if-eq v4, v1, :cond_4

    const/16 v8, 0x14

    if-eq v4, v7, :cond_3

    const/4 v6, 0x3

    const/16 v9, 0x4e20

    if-eq v4, v6, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    if-lt p1, v8, :cond_5

    if-gt p1, v9, :cond_5

    goto :goto_1

    :cond_2
    if-lt p1, v5, :cond_5

    if-gt p1, v9, :cond_5

    goto :goto_1

    :cond_3
    if-lt p1, v8, :cond_5

    if-gt p1, v6, :cond_5

    goto :goto_1

    :cond_4
    if-lt p1, v6, :cond_5

    if-gt p1, v5, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move p1, v2

    .line 4
    :goto_1
    aput p1, v0, v1

    .line 5
    aget v1, v0, v3

    aget v0, v0, v7

    invoke-virtual {p0, v3, v1, p1, v0}, Lf0/b;->x(IIII)V

    :cond_6
    :goto_2
    return-void
.end method

.method public D(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf0/b;->J:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    if-eq v2, p1, :cond_1

    if-ltz p1, :cond_1

    const/16 v2, 0x8

    if-le p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput p1, v0, v1

    const/4 v1, 0x0

    .line 3
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0, v1, v2, v0, p1}, Lf0/b;->x(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public E(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    const/4 v0, 0x4

    if-le p1, v0, :cond_2

    :cond_1
    return-void

    .line 2
    :cond_2
    sget-object v1, Lf0/b;->S:[I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v3, p0, Lf0/b;->J:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, p1, :cond_c

    if-eqz p1, :cond_b

    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_7

    if-eq p1, v2, :cond_5

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 4
    :cond_3
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    array-length v0, p1

    if-ne v0, v2, :cond_4

    .line 6
    iput-object p1, p0, Lf0/b;->J:[I

    goto :goto_0

    .line 7
    :cond_4
    sget-object p1, Lf0/b;->W:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->J:[I

    goto :goto_0

    .line 8
    :cond_5
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_6

    .line 9
    array-length v0, p1

    if-ne v0, v2, :cond_6

    .line 10
    iput-object p1, p0, Lf0/b;->J:[I

    goto :goto_0

    .line 11
    :cond_6
    sget-object p1, Lf0/b;->V:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->J:[I

    goto :goto_0

    .line 12
    :cond_7
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_8

    .line 13
    array-length v0, p1

    if-ne v0, v2, :cond_8

    .line 14
    iput-object p1, p0, Lf0/b;->J:[I

    goto :goto_0

    .line 15
    :cond_8
    sget-object p1, Lf0/b;->U:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->J:[I

    goto :goto_0

    .line 16
    :cond_9
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_a

    .line 17
    array-length v0, p1

    if-ne v0, v2, :cond_a

    .line 18
    iput-object p1, p0, Lf0/b;->J:[I

    goto :goto_0

    .line 19
    :cond_a
    sget-object p1, Lf0/b;->T:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->J:[I

    goto :goto_0

    .line 20
    :cond_b
    iput-object v1, p0, Lf0/b;->J:[I

    .line 21
    :cond_c
    :goto_0
    iget-object p1, p0, Lf0/b;->J:[I

    aget v0, p1, v4

    aget v1, p1, v6

    aget p1, p1, v5

    invoke-virtual {p0, v4, v0, v1, p1}, Lf0/b;->x(IIII)V

    return-void
.end method

.method public F(I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lf0/b;->I:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lf0/b;->N:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    if-ne v2, p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    aget v2, v0, v1

    const/4 v3, 0x0

    .line 3
    aget v4, v0, v3

    const/16 v5, 0xfa0

    const/16 v6, 0xfa

    const/4 v7, 0x2

    if-eq v4, v1, :cond_4

    const/16 v8, 0x14

    if-eq v4, v7, :cond_3

    const/4 v6, 0x3

    const/16 v9, 0x4e20

    if-eq v4, v6, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    if-lt p1, v8, :cond_5

    if-gt p1, v9, :cond_5

    goto :goto_1

    :cond_2
    if-lt p1, v5, :cond_5

    if-gt p1, v9, :cond_5

    goto :goto_1

    :cond_3
    if-lt p1, v8, :cond_5

    if-gt p1, v6, :cond_5

    goto :goto_1

    :cond_4
    if-lt p1, v6, :cond_5

    if-gt p1, v5, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move p1, v2

    .line 4
    :goto_1
    aput p1, v0, v1

    .line 5
    aget v1, v0, v3

    aget v0, v0, v7

    invoke-virtual {p0, v7, v1, p1, v0}, Lf0/b;->x(IIII)V

    :cond_6
    :goto_2
    return-void
.end method

.method public G(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf0/b;->I:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf0/b;->N:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    if-eq v2, p1, :cond_1

    if-ltz p1, :cond_1

    const/16 v2, 0x8

    if-le p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput p1, v0, v1

    const/4 v2, 0x0

    .line 3
    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0, v1, v2, v0, p1}, Lf0/b;->x(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public H(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lf0/b;->I:Z

    if-eqz v0, :cond_b

    if-ltz p1, :cond_b

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object v1, Lf0/b;->S:[I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v3, p0, Lf0/b;->N:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, p1, :cond_a

    .line 4
    invoke-virtual {p0, v6, p1}, Lf0/b;->m(II)I

    move-result v3

    if-eqz p1, :cond_9

    if-eq p1, v5, :cond_7

    if-eq p1, v6, :cond_5

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {p1, v3}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    array-length v0, p1

    if-ne v0, v2, :cond_2

    .line 7
    iput-object p1, p0, Lf0/b;->N:[I

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lf0/b;->W:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->N:[I

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {p1, v3}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    array-length v0, p1

    if-ne v0, v2, :cond_4

    .line 11
    iput-object p1, p0, Lf0/b;->N:[I

    goto :goto_0

    .line 12
    :cond_4
    sget-object p1, Lf0/b;->V:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->N:[I

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {p1, v3}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_6

    .line 14
    array-length v0, p1

    if-ne v0, v2, :cond_6

    .line 15
    iput-object p1, p0, Lf0/b;->N:[I

    goto :goto_0

    .line 16
    :cond_6
    sget-object p1, Lf0/b;->U:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->N:[I

    goto :goto_0

    .line 17
    :cond_7
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {p1, v3}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-eqz p1, :cond_8

    .line 18
    array-length v0, p1

    if-ne v0, v2, :cond_8

    .line 19
    iput-object p1, p0, Lf0/b;->N:[I

    goto :goto_0

    .line 20
    :cond_8
    sget-object p1, Lf0/b;->T:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lf0/b;->N:[I

    goto :goto_0

    .line 21
    :cond_9
    iput-object v1, p0, Lf0/b;->N:[I

    .line 22
    :cond_a
    :goto_0
    iget-object p1, p0, Lf0/b;->N:[I

    aget v0, p1, v4

    aget v1, p1, v5

    aget p1, p1, v6

    invoke-virtual {p0, v6, v0, v1, p1}, Lf0/b;->x(IIII)V

    :cond_b
    :goto_1
    return-void
.end method

.method public I(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-eqz v0, :cond_4

    if-ltz p2, :cond_4

    const/16 v0, 0x24

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    const/16 v1, 0x9

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2}, Lf0/b;->R(II)V

    goto :goto_0

    .line 3
    :cond_2
    iget p1, p0, Lf0/b;->n:I

    if-eq p2, p1, :cond_3

    .line 4
    iput p2, p0, Lf0/b;->n:I

    .line 5
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    const/4 v5, 0x0

    invoke-virtual {p1, v5, p2}, Lo1/h0;->q(II)V

    .line 6
    iget-object p1, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {p1, v5}, Lo1/h0;->e(I)V

    .line 7
    :cond_3
    invoke-virtual {p0, v4, p2}, Lf0/b;->R(II)V

    .line 8
    invoke-virtual {p0, v2, p2}, Lf0/b;->R(II)V

    .line 9
    invoke-virtual {p0, v3, p2}, Lf0/b;->R(II)V

    .line 10
    invoke-virtual {p0, v1, p2}, Lf0/b;->R(II)V

    .line 11
    invoke-virtual {p0, v0, p2}, Lf0/b;->R(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final J(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lf0/b;->Q(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final K()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00 setup  iis last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf0/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " DataMain.sAppId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HiFi"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Ly0/f;->b:Ly0/e;

    instance-of v2, v0, Lmodule/sound/AudioDevice;

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Lmodule/sound/AudioDevice;

    sget v2, Lu0/b;->D:I

    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->j0(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lf0/a;->c:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "01 setup  iis current: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lf0/a;->c:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 5
    iget-boolean v7, p0, Lf0/a;->c:Z

    xor-int/2addr v7, v2

    aput v7, v6, v4

    aput v5, v6, v2

    invoke-virtual {p0, v0, v6}, Lf0/b;->T(I[I)I

    .line 6
    iget-boolean v0, p0, Lf0/a;->c:Z

    xor-int/2addr v0, v2

    invoke-static {v3, v0}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "02 setup  vol: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf0/b;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget v0, p0, Lf0/b;->o:I

    invoke-virtual {p0, v4, v0}, Lf0/b;->I(II)V

    .line 9
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {v0, v3}, Lo1/h0;->k(I)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sparseIntArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x14

    const/16 v2, 0xa

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lf0/b;->Q(II)V

    const/4 v1, 0x3

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lf0/b;->Q(II)V

    const/4 v1, 0x7

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lf0/b;->Q(II)V

    const/4 v1, 0x5

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lf0/b;->Q(II)V

    const/16 v1, 0x9

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lf0/b;->Q(II)V

    .line 16
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {v0, v2, v4}, Lo1/h0;->h(II)I

    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lf0/b;->E(I)V

    .line 18
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Lo1/h0;->h(II)I

    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lf0/b;->B(I)V

    return-void
.end method

.method public L(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/b;->k:[[I

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1
.end method

.method public M(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lf0/b;->I:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAmpSpeaker speaker:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " channel:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " gain:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HiFi"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x20

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    aput p2, v1, v3

    .line 3
    invoke-virtual {p0, p1, v1}, Lf0/b;->T(I[I)I

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final N(I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lf0/b;->p:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget v3, p0, Lf0/b;->G:I

    if-eq v3, p1, :cond_0

    .line 3
    iput p1, p0, Lf0/b;->G:I

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget p1, p0, Lf0/b;->G:I

    if-lez p1, :cond_1

    .line 5
    iput v1, p0, Lf0/b;->G:I

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_6

    .line 6
    iget p1, p0, Lf0/b;->G:I

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 7
    :goto_2
    iput-boolean v3, p0, Lf0/b;->H:Z

    shr-int/lit8 v3, p1, 0x1

    and-int/2addr v3, v2

    const/4 v4, 0x2

    shr-int/2addr p1, v4

    and-int/2addr p1, v2

    if-ne v0, v2, :cond_3

    if-ne v3, v2, :cond_3

    if-ne p1, v2, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    .line 8
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAmpStatus hasAmp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ampInited:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ak7604Status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HiFi"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v6, p0, Lf0/b;->w:Lf0/c;

    const/16 v7, 0xb

    const/4 v8, 0x4

    new-array v8, v8, [I

    aput v2, v8, v1

    aput v0, v8, v2

    aput v3, v8, v4

    const/4 v0, 0x3

    aput p1, v8, v0

    invoke-virtual {v6, v7, v8}, Lf0/c;->a3(I[I)V

    .line 10
    iget-boolean p1, p0, Lf0/b;->H:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lf0/b;->C:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lf0/b;->D:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lf0/b;->E:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const-string p1, ""

    .line 11
    iput-object p1, p0, Lf0/b;->C:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lf0/b;->D:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lf0/b;->E:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lf0/b;->r:[I

    const/4 v0, -0x1

    aput v0, p1, v1

    .line 15
    aput v0, p1, v2

    .line 16
    iget-object p1, p0, Lf0/b;->s:[I

    aput v0, p1, v1

    .line 17
    aput v0, p1, v2

    .line 18
    :cond_5
    iget-boolean p1, p0, Lf0/b;->I:Z

    if-eq v5, p1, :cond_6

    .line 19
    iput-boolean v5, p0, Lf0/b;->I:Z

    if-eqz v5, :cond_6

    .line 20
    invoke-virtual {p0}, Lf0/b;->n()V

    :cond_6
    return-void
.end method

.method public final O(I)V
    .locals 9

    .line 1
    iget v0, p0, Lf0/b;->F:I

    if-eq v0, p1, :cond_3

    .line 2
    iput p1, p0, Lf0/b;->F:I

    and-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    shr-int/lit8 v3, p1, 0x2

    and-int/2addr v3, v2

    shr-int/lit8 v4, p1, 0x3

    and-int/2addr v4, v2

    const/4 v5, 0x4

    shr-int/2addr p1, v5

    and-int/2addr p1, v2

    const/4 v6, 0x0

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v6

    :goto_0
    if-ne v0, v2, :cond_2

    .line 3
    iget-boolean v7, p0, Lf0/b;->p:Z

    if-eq p1, v7, :cond_1

    .line 4
    iput-boolean p1, p0, Lf0/b;->p:Z

    if-eqz p1, :cond_1

    .line 5
    iget-boolean v7, p0, Lf0/a;->b:Z

    if-eqz v7, :cond_1

    .line 6
    invoke-virtual {p0}, Lf0/b;->K()V

    :cond_1
    if-nez p1, :cond_2

    .line 7
    iget-boolean v7, p0, Lf0/a;->b:Z

    if-eqz v7, :cond_2

    new-array v7, v2, [I

    aput v2, v7, v6

    .line 8
    invoke-virtual {p0, v2, v7}, Lf0/b;->T(I[I)I

    .line 9
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateHiFiStatus inited:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " core1Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " core2Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " core3Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " powerOn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " hiFiDevStatus:"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf0/b;->F:I

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "HiFi"

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lf0/b;->w:Lf0/c;

    const/16 v7, 0xb

    const/4 v8, 0x5

    new-array v8, v8, [I

    aput v6, v8, v6

    aput v0, v8, v2

    const/4 v0, 0x2

    aput v1, v8, v0

    const/4 v0, 0x3

    aput v3, v8, v0

    aput v4, v8, v5

    invoke-virtual {p1, v7, v8}, Lf0/c;->a3(I[I)V

    :cond_3
    return-void
.end method

.method public P(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x14

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    const/4 v5, 0x7

    if-eq p1, v5, :cond_3

    const/16 v5, 0x9

    if-eq p1, v5, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    if-ltz v0, :cond_6

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSpeaker speaker:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " channel:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " gain:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "HiFi"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v1, [I

    const/4 v1, 0x0

    aput v0, p1, v1

    aput p2, p1, v2

    .line 3
    invoke-virtual {p0, v3, p1}, Lf0/b;->T(I[I)I

    :cond_6
    return-void
.end method

.method public final Q(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    iget-object v1, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lo1/h0;->s(ILandroid/util/SparseIntArray;)V

    .line 3
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {v0, v2}, Lo1/h0;->e(I)V

    .line 4
    iget-boolean v0, p0, Lf0/b;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lf0/b;->n:I

    .line 5
    :goto_0
    sget-object v2, Lf0/b;->Q:[I

    aget v2, v2, p2

    .line 6
    invoke-virtual {p0, v2, v0}, Lf0/b;->L(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lf0/b;->P(II)V

    .line 7
    iget-object v0, p0, Lf0/b;->w:Lf0/c;

    const/16 v2, 0x10

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v1

    const/4 p1, 0x1

    aput p2, v3, p1

    invoke-virtual {v0, v2, v3}, Lf0/c;->a3(I[I)V

    return-void
.end method

.method public final R(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf0/b;->g:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2
    iget-boolean v2, p0, Lf0/b;->q:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p2

    .line 3
    :goto_0
    sget-object v3, Lf0/b;->Q:[I

    iget-object v4, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    const/16 v5, 0xa

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    aget v3, v3, v4

    if-eq v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lf0/b;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    invoke-virtual {p0, v3, v2}, Lf0/b;->L(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lf0/b;->P(II)V

    .line 6
    iget-object v0, p0, Lf0/b;->w:Lf0/c;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v1

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-virtual {v0, p1, v2}, Lf0/c;->a3(I[I)V

    :cond_1
    return-void
.end method

.method public S(I)V
    .locals 2

    .line 1
    iget v0, p0, Lf0/b;->o:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lf0/b;->o:I

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "volume() ======>>  isMute : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf0/b;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isHiFiPowerOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf0/b;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HiFi"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lf0/b;->I(II)V

    return-void
.end method

.method public varargs T(I[I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/b;->y:Lo1/n;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x46

    invoke-virtual {v0, p1, v1, p2}, Lo1/n;->d(I[I[I)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 5

    .line 1
    sget-object v0, Lu0/c;->b:Lo1/z;

    iget-object v1, p0, Lf0/b;->P:Lo1/p;

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 2
    invoke-virtual {p0, v0, v1}, Lf0/b;->T(I[I)I

    const-string v1, "HiFi"

    const-string v3, "=== >> deInit"

    .line 3
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lf0/b;->J:[I

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 5
    aput v2, v1, v0

    const/4 v4, 0x2

    .line 6
    aput v2, v1, v4

    .line 7
    iget-object v1, p0, Lf0/b;->L:[I

    aput v3, v1, v2

    .line 8
    aput v2, v1, v0

    .line 9
    aput v2, v1, v4

    .line 10
    iget-object v1, p0, Lf0/b;->N:[I

    aput v3, v1, v2

    .line 11
    aput v2, v1, v0

    .line 12
    aput v2, v1, v4

    return-void
.end method

.method public c(I[I[F[Ljava/lang/String;)Z
    .locals 3

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eq p1, p4, :cond_10

    const/16 v0, 0xc

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v0, :cond_f

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-static {p2, v2}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2
    aget p1, p2, p3

    const/4 v0, 0x4

    if-nez p1, :cond_4

    .line 3
    aget p1, p2, p4

    if-eqz p1, :cond_3

    if-eq p1, p4, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lf0/b;->D(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lf0/b;->C(I)V

    goto/16 :goto_0

    .line 6
    :cond_2
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lf0/b;->E(I)V

    goto/16 :goto_0

    .line 7
    :cond_3
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 8
    aget p1, p2, p3

    aget p4, p2, v2

    aget v1, p2, v1

    aget p2, p2, v0

    invoke-virtual {p0, p1, p4, v1, p2}, Lf0/b;->x(IIII)V

    goto/16 :goto_0

    .line 9
    :cond_4
    aget p1, p2, p3

    if-ne p1, p4, :cond_9

    .line 10
    aget p1, p2, p4

    if-eqz p1, :cond_8

    if-eq p1, p4, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    goto/16 :goto_0

    .line 11
    :cond_5
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lf0/b;->A(I)V

    goto/16 :goto_0

    .line 12
    :cond_6
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lf0/b;->z(I)V

    goto/16 :goto_0

    .line 13
    :cond_7
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lf0/b;->B(I)V

    goto/16 :goto_0

    .line 14
    :cond_8
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 15
    aget p1, p2, p3

    aget p4, p2, v2

    aget v1, p2, v1

    aget p2, p2, v0

    invoke-virtual {p0, p1, p4, v1, p2}, Lf0/b;->x(IIII)V

    goto/16 :goto_0

    .line 16
    :cond_9
    aget p1, p2, p3

    if-ne p1, v2, :cond_11

    .line 17
    aget p1, p2, p4

    if-eqz p1, :cond_d

    if-eq p1, p4, :cond_c

    if-eq p1, v2, :cond_b

    if-eq p1, v1, :cond_a

    goto/16 :goto_0

    .line 18
    :cond_a
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lf0/b;->G(I)V

    goto/16 :goto_0

    .line 19
    :cond_b
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lf0/b;->F(I)V

    goto/16 :goto_0

    .line 20
    :cond_c
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lf0/b;->H(I)V

    goto :goto_0

    .line 21
    :cond_d
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 22
    aget p1, p2, p3

    aget p4, p2, v2

    aget v1, p2, v1

    aget p2, p2, v0

    invoke-virtual {p0, p1, p4, v1, p2}, Lf0/b;->x(IIII)V

    goto :goto_0

    .line 23
    :pswitch_1
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 24
    aget p1, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lf0/b;->J(II)V

    goto :goto_0

    .line 25
    :pswitch_2
    invoke-static {p2, p3}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 26
    aget p1, p2, p3

    if-nez p1, :cond_e

    .line 27
    invoke-virtual {p0}, Lf0/b;->k()V

    goto :goto_0

    .line 28
    :cond_e
    aget p1, p2, p3

    if-ne p1, p4, :cond_11

    .line 29
    invoke-virtual {p0}, Lf0/b;->j()V

    goto :goto_0

    .line 30
    :pswitch_3
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 31
    aget p1, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lf0/b;->v(II)V

    goto :goto_0

    .line 32
    :cond_f
    invoke-static {p2, v1}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 33
    aget p1, p2, p3

    aget p4, p2, v2

    aget p2, p2, v1

    invoke-virtual {p0, p1, p4, p2}, Lf0/b;->u(III)V

    goto :goto_0

    .line 34
    :cond_10
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 35
    aget p1, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lf0/b;->I(II)V

    :cond_11
    :goto_0
    return p3

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 2

    const-string v0, "HiFi"

    const-string v1, "=== >> init"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf0/b;->s()V

    .line 2
    iget v0, p0, Lf0/b;->F:I

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lf0/b;->t()V

    .line 4
    invoke-virtual {p0}, Lf0/b;->r()V

    .line 5
    iget-boolean v0, p0, Lf0/b;->H:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lf0/b;->q()V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lf0/a;->f(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    sget v1, Ly0/f;->K0:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    move p1, v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mute() ======>>  isMute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf0/b;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " toMute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HiFi"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-boolean p1, p0, Lf0/b;->q:Z

    .line 5
    iget-boolean v1, p0, Lf0/b;->p:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    new-array v3, v2, [I

    if-eqz p1, :cond_1

    const/16 p1, 0xff

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    aput p1, v3, v0

    .line 6
    invoke-virtual {p0, v1, v3}, Lf0/b;->T(I[I)I

    .line 7
    iget p1, p0, Lf0/b;->n:I

    invoke-virtual {p0, p1}, Lf0/b;->S(I)V

    .line 8
    :cond_2
    iget-boolean p1, p0, Lf0/b;->I:Z

    if-eqz p1, :cond_6

    .line 9
    iget-object p1, p0, Lf0/b;->j:Landroid/util/SparseIntArray;

    const/16 v0, 0xa

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 10
    invoke-virtual {p0, v0, p1, v2}, Lf0/b;->w(IIZ)V

    .line 11
    :cond_3
    iget-object p1, p0, Lf0/b;->j:Landroid/util/SparseIntArray;

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 12
    invoke-virtual {p0, v0, p1, v2}, Lf0/b;->w(IIZ)V

    .line 13
    :cond_4
    iget-object p1, p0, Lf0/b;->j:Landroid/util/SparseIntArray;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v1, :cond_5

    .line 14
    invoke-virtual {p0, v0, p1, v2}, Lf0/b;->w(IIZ)V

    .line 15
    :cond_5
    iget-object p1, p0, Lf0/b;->j:Landroid/util/SparseIntArray;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v1, :cond_6

    .line 16
    invoke-virtual {p0, v0, p1, v2}, Lf0/b;->w(IIZ)V

    :cond_6
    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/b;->w:Lf0/c;

    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v3, p0, Lf0/a;->e:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v4, v2}, Lf0/c;->a3(I[I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitialize DataMain.sAppId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->D:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isHiFiPowerOn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf0/b;->p:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HiFi"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-nez v0, :cond_0

    new-array v0, v1, [I

    aput v1, v0, v4

    .line 4
    invoke-virtual {p0, v1, v0}, Lf0/b;->T(I[I)I

    .line 5
    :cond_0
    iget-object v0, p0, Lf0/b;->P:Lo1/p;

    sget v1, Lu0/b;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lo1/p;->d(Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lu0/c;->b:Lo1/z;

    iget-object v1, p0, Lf0/b;->P:Lo1/p;

    invoke-virtual {v0, v1}, Lo1/z;->a(Lo1/p;)V

    .line 7
    new-instance v0, Lf0/b$b;

    invoke-direct {v0, p0}, Lf0/b$b;-><init>(Lf0/b;)V

    .line 8
    sget-object v1, Lu0/c;->a:Lo1/y;

    invoke-virtual {v1, v0, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public h(Ly/b;I)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lf0/b;->w:Lf0/c;

    invoke-virtual {v0}, Lbase/b;->L2()Lo1/x;

    move-result-object v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return v7

    :cond_0
    const/16 v1, 0xb

    const/16 v2, 0x9

    const/4 v3, 0x4

    const/16 v4, 0xa

    const/4 v5, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    new-array v1, v5, [I

    aput v7, v1, v7

    aput v7, v1, v10

    .line 2
    iget-object v2, p0, Lf0/b;->K:[I

    aget v4, v2, v7

    aput v4, v1, v9

    aget v4, v2, v10

    aput v4, v1, v8

    aget v2, v2, v9

    aput v2, v1, v3

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    new-array v1, v5, [I

    aput v10, v1, v7

    aput v7, v1, v10

    .line 3
    iget-object v2, p0, Lf0/b;->M:[I

    aget v4, v2, v7

    aput v4, v1, v9

    aget v4, v2, v10

    aput v4, v1, v8

    aget v2, v2, v9

    aput v2, v1, v3

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    new-array v1, v5, [I

    aput v9, v1, v7

    aput v7, v1, v10

    .line 4
    iget-object v2, p0, Lf0/b;->O:[I

    aget v4, v2, v7

    aput v4, v1, v9

    aget v4, v2, v10

    aput v4, v1, v8

    aget v2, v2, v9

    aput v2, v1, v3

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SPEAKER_GAIN mSpeakersGain: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HiFi"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v9, [I

    const/16 v3, 0x14

    aput v3, v1, v7

    .line 6
    iget-object v6, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    aput v3, v1, v10

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    new-array v1, v9, [I

    aput v8, v1, v7

    .line 7
    iget-object v3, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    aput v3, v1, v10

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    new-array v1, v9, [I

    const/4 v3, 0x7

    aput v3, v1, v7

    .line 8
    iget-object v6, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    aput v3, v1, v10

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    new-array v1, v9, [I

    aput v5, v1, v7

    .line 9
    iget-object v3, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    aput v3, v1, v10

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    new-array v1, v9, [I

    aput v2, v1, v7

    .line 10
    iget-object v3, p0, Lf0/b;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    aput v2, v1, v10

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v3, v9, [I

    aput v5, v3, v7

    .line 11
    iget-object v6, p0, Lf0/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    aput v6, v3, v10

    invoke-virtual {v0, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    new-array v3, v9, [I

    aput v2, v3, v7

    .line 12
    iget-object v6, p0, Lf0/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    aput v2, v3, v10

    invoke-virtual {v0, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    new-array v2, v9, [I

    aput v4, v2, v7

    .line 13
    iget-object v3, p0, Lf0/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    aput v3, v2, v10

    invoke-virtual {v0, p1, p2, v2}, Lo1/x;->G(Ly/b;I[I)V

    new-array v2, v9, [I

    aput v1, v2, v7

    .line 14
    iget-object v3, p0, Lf0/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    aput v1, v2, v10

    invoke-virtual {v0, p1, p2, v2}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v1, v10, [I

    .line 15
    iget v2, p0, Lf0/b;->t:I

    aput v2, v1, v7

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v2, v3, [I

    aput v4, v2, v7

    aput v8, v2, v10

    .line 16
    iget-object v4, p0, Lf0/b;->r:[I

    aget v5, v4, v7

    aput v5, v2, v9

    aget v4, v4, v10

    aput v4, v2, v8

    invoke-virtual {v0, p1, p2, v2}, Lo1/x;->G(Ly/b;I[I)V

    new-array v2, v3, [I

    aput v1, v2, v7

    aput v8, v2, v10

    .line 17
    iget-object v1, p0, Lf0/b;->s:[I

    aget v3, v1, v7

    aput v3, v2, v9

    aget v1, v1, v10

    aput v1, v2, v8

    invoke-virtual {v0, p1, p2, v2}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_0

    .line 18
    :pswitch_6
    iget v1, p0, Lf0/b;->F:I

    and-int/lit8 v2, v1, 0x1

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v10

    shr-int/lit8 v6, v1, 0x2

    and-int/2addr v6, v10

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    new-array v5, v5, [I

    aput v7, v5, v7

    aput v2, v5, v10

    aput v4, v5, v9

    aput v6, v5, v8

    aput v1, v5, v3

    .line 19
    invoke-virtual {v0, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    .line 20
    iget v1, p0, Lf0/b;->G:I

    and-int/lit8 v2, v1, 0x1

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v10

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    new-array v3, v3, [I

    aput v10, v3, v7

    aput v2, v3, v10

    aput v4, v3, v9

    aput v1, v3, v8

    .line 21
    invoke-virtual {v0, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    :pswitch_7
    new-array v4, v10, [I

    aput v7, v4, v7

    const/4 v5, 0x0

    new-array v6, v8, [Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lf0/b;->z:Ljava/lang/String;

    aput-object v1, v6, v7

    iget-object v1, p0, Lf0/b;->A:Ljava/lang/String;

    aput-object v1, v6, v10

    iget-object v1, p0, Lf0/b;->B:Ljava/lang/String;

    aput-object v1, v6, v9

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    new-array v4, v10, [I

    aput v10, v4, v7

    new-array v6, v8, [Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lf0/b;->C:Ljava/lang/String;

    aput-object v1, v6, v7

    iget-object v1, p0, Lf0/b;->D:Ljava/lang/String;

    aput-object v1, v6, v10

    iget-object v1, p0, Lf0/b;->E:Ljava/lang/String;

    aput-object v1, v6, v9

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    new-array v1, v9, [I

    .line 24
    iget v2, p0, Lf0/b;->u:I

    aput v2, v1, v7

    iget v2, p0, Lf0/b;->v:I

    aput v2, v1, v10

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    :pswitch_9
    new-array v1, v9, [I

    aput v7, v1, v7

    .line 25
    iget v2, p0, Lf0/b;->n:I

    aput v2, v1, v10

    invoke-virtual {v0, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    :goto_0
    :pswitch_a
    move v7, v10

    :goto_1
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public i(III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf0/b;->S(I)V

    return-void
.end method

.method public j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lo1/h0;->v(I)V

    const/16 v0, 0xa

    const/16 v1, 0xfa

    .line 2
    invoke-virtual {p0, v0, v0, v1}, Lf0/b;->u(III)V

    .line 3
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lo1/h0;->v(I)V

    const/16 v1, 0xb

    const/16 v2, 0xc8

    const/16 v3, 0x1388

    .line 4
    invoke-virtual {p0, v1, v2, v3}, Lf0/b;->u(III)V

    .line 5
    iget-object v2, p0, Lf0/b;->x:Lo1/h0;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lo1/h0;->v(I)V

    .line 6
    invoke-virtual {p0, v0, v3}, Lf0/b;->v(II)V

    .line 7
    iget-object v2, p0, Lf0/b;->x:Lo1/h0;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lo1/h0;->v(I)V

    .line 8
    invoke-virtual {p0, v1, v3}, Lf0/b;->v(II)V

    .line 9
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lo1/h0;->v(I)V

    .line 10
    invoke-virtual {p0, v3, v0}, Lf0/b;->v(II)V

    .line 11
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lo1/h0;->v(I)V

    const/16 v1, 0x9

    .line 12
    invoke-virtual {p0, v1, v0}, Lf0/b;->v(II)V

    .line 13
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lo1/h0;->v(I)V

    .line 14
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lo1/h0;->v(I)V

    .line 15
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lo1/h0;->v(I)V

    .line 16
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lo1/h0;->v(I)V

    .line 17
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lo1/h0;->v(I)V

    .line 18
    iget-object v0, p0, Lf0/b;->N:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 19
    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x4

    .line 20
    aput v3, v0, v1

    .line 21
    invoke-virtual {p0, v2}, Lf0/b;->H(I)V

    return-void
.end method

.method public k()V
    .locals 8

    .line 1
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lo1/h0;->v(I)V

    const/16 v0, 0x14

    const/16 v1, 0xa

    .line 2
    invoke-virtual {p0, v0, v1}, Lf0/b;->J(II)V

    const/4 v2, 0x3

    .line 3
    invoke-virtual {p0, v2, v1}, Lf0/b;->J(II)V

    const/4 v2, 0x7

    .line 4
    invoke-virtual {p0, v2, v1}, Lf0/b;->J(II)V

    const/4 v2, 0x5

    .line 5
    invoke-virtual {p0, v2, v1}, Lf0/b;->J(II)V

    const/16 v2, 0x9

    .line 6
    invoke-virtual {p0, v2, v1}, Lf0/b;->J(II)V

    .line 7
    iget-object v2, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {v2, v1}, Lo1/h0;->v(I)V

    .line 8
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lo1/h0;->v(I)V

    .line 9
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lo1/h0;->v(I)V

    .line 10
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lo1/h0;->v(I)V

    .line 11
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lo1/h0;->v(I)V

    .line 12
    iget-object v1, p0, Lf0/b;->J:[I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    const/4 v4, 0x1

    .line 13
    aput v2, v1, v4

    const/4 v5, 0x2

    const/4 v6, 0x4

    .line 14
    aput v6, v1, v5

    .line 15
    invoke-virtual {p0, v2}, Lf0/b;->E(I)V

    .line 16
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Lo1/h0;->v(I)V

    .line 17
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v7, 0x12

    invoke-virtual {v1, v7}, Lo1/h0;->v(I)V

    .line 18
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    const/16 v7, 0x13

    invoke-virtual {v1, v7}, Lo1/h0;->v(I)V

    .line 19
    iget-object v1, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {v1, v0}, Lo1/h0;->v(I)V

    .line 20
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lo1/h0;->v(I)V

    .line 21
    iget-object v0, p0, Lf0/b;->L:[I

    aput v3, v0, v2

    .line 22
    aput v2, v0, v4

    .line 23
    aput v6, v0, v5

    .line 24
    invoke-virtual {p0, v2}, Lf0/b;->B(I)V

    return-void
.end method

.method public final l(I)I
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0xb

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 p1, 0xd

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final m(II)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_9

    if-eq p2, v0, :cond_6

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x11

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    const/16 p1, 0x15

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_c

    const/16 p1, 0x19

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    const/16 p1, 0x10

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    const/16 p1, 0x14

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_c

    const/16 p1, 0x18

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    const/16 p1, 0xf

    goto :goto_1

    :cond_7
    if-ne p1, v1, :cond_8

    const/16 p1, 0x13

    goto :goto_1

    :cond_8
    if-ne p1, v0, :cond_c

    const/16 p1, 0x17

    goto :goto_1

    :cond_9
    if-nez p1, :cond_a

    const/16 p1, 0xe

    goto :goto_1

    :cond_a
    if-ne p1, v1, :cond_b

    const/16 p1, 0x12

    goto :goto_1

    :cond_b
    if-ne p1, v0, :cond_c

    const/16 p1, 0x16

    goto :goto_1

    :cond_c
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public final n()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lf0/b;->I:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HiFi"

    const-string v1, "======>>> initAmp"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v1}, Lo1/h0;->h(II)I

    move-result v0

    const/16 v2, 0xa

    .line 4
    invoke-virtual {p0, v2, v0}, Lf0/b;->v(II)V

    .line 5
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lo1/h0;->i(I)[I

    move-result-object v0

    const/4 v3, 0x2

    if-nez v0, :cond_1

    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_0

    :cond_1
    const/4 v4, 0x0

    .line 7
    aget v5, v0, v4

    const/4 v6, 0x1

    aget v0, v0, v6

    invoke-virtual {p0, v2, v5, v0}, Lf0/b;->u(III)V

    .line 8
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v1}, Lo1/h0;->h(II)I

    move-result v0

    const/16 v5, 0xb

    .line 9
    invoke-virtual {p0, v5, v0}, Lf0/b;->v(II)V

    .line 10
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lo1/h0;->i(I)[I

    move-result-object v0

    if-nez v0, :cond_2

    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_1

    .line 12
    :cond_2
    aget v3, v0, v4

    aget v0, v0, v6

    invoke-virtual {p0, v5, v3, v0}, Lf0/b;->u(III)V

    .line 13
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v2}, Lo1/h0;->h(II)I

    move-result v0

    .line 14
    invoke-virtual {p0, v1, v0}, Lf0/b;->v(II)V

    .line 15
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, v2}, Lo1/h0;->h(II)I

    move-result v0

    const/16 v1, 0x9

    .line 16
    invoke-virtual {p0, v1, v0}, Lf0/b;->v(II)V

    .line 17
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Lo1/h0;->h(II)I

    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Lf0/b;->H(I)V

    return-void

    :array_0
    .array-data 4
        0xa
        0xfa
    .end array-data

    :array_1
    .array-data 4
        0xc8
        0x1388
    .end array-data
.end method

.method public o(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/b;->y:Lo1/n;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1}, Lo1/n;->g(II)I

    move-result p1

    return p1
.end method

.method public p(II)[I
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/b;->y:Lo1/n;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x46

    invoke-virtual {v0, p2, p1, v2, v1}, Lo1/n;->e(IIZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method public final q()V
    .locals 8

    .line 1
    iget-object v0, p0, Lf0/b;->C:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xc4

    .line 2
    invoke-virtual {p0, v0}, Lf0/b;->o(I)I

    move-result v0

    const/16 v3, 0xc5

    .line 3
    invoke-virtual {p0, v3, v0}, Lf0/b;->p(II)[I

    move-result-object v0

    .line 4
    invoke-static {v0}, Lo1/s0;->r([I)[B

    move-result-object v0

    .line 5
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v3, p0, Lf0/b;->C:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6
    :goto_0
    iget-object v3, p0, Lf0/b;->D:Ljava/lang/String;

    invoke-static {v3}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0xc6

    .line 7
    invoke-virtual {p0, v0}, Lf0/b;->o(I)I

    move-result v0

    const/16 v3, 0xc7

    .line 8
    invoke-virtual {p0, v3, v0}, Lf0/b;->p(II)[I

    move-result-object v0

    .line 9
    invoke-static {v0}, Lo1/s0;->r([I)[B

    move-result-object v0

    .line 10
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v3, p0, Lf0/b;->D:Ljava/lang/String;

    move v0, v2

    .line 11
    :cond_1
    iget-object v3, p0, Lf0/b;->E:Ljava/lang/String;

    invoke-static {v3}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v0, 0xc8

    .line 12
    invoke-virtual {p0, v0}, Lf0/b;->o(I)I

    move-result v0

    const/16 v3, 0xc9

    .line 13
    invoke-virtual {p0, v3, v0}, Lf0/b;->p(II)[I

    move-result-object v0

    .line 14
    invoke-static {v0}, Lo1/s0;->r([I)[B

    move-result-object v0

    .line 15
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v3, p0, Lf0/b;->E:Ljava/lang/String;

    move v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ampHardVersion:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf0/b;->C:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  ampSoftVersion:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf0/b;->D:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  ampTimeVersion:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf0/b;->E:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HiFi"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lf0/b;->w:Lf0/c;

    const/16 v3, 0xa

    new-array v4, v2, [I

    aput v2, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lf0/b;->C:Ljava/lang/String;

    aput-object v7, v6, v1

    iget-object v1, p0, Lf0/b;->D:Ljava/lang/String;

    aput-object v1, v6, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lf0/b;->E:Ljava/lang/String;

    aput-object v2, v6, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final r()V
    .locals 6

    const/16 v0, 0xd

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lf0/b;->p(II)[I

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v2}, Lo1/s0;->h([II)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 3
    aget v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    .line 4
    aget v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 5
    iget v5, p0, Lf0/b;->u:I

    if-eq v4, v5, :cond_1

    .line 6
    iput v4, p0, Lf0/b;->u:I

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 7
    :goto_0
    iget v5, p0, Lf0/b;->v:I

    if-eq v0, v5, :cond_2

    .line 8
    iput v0, p0, Lf0/b;->v:I

    move v4, v2

    :cond_2
    if-eqz v4, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentAudioFreq:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf0/b;->u:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  mCurrentMulNumber:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf0/b;->v:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "HiFi"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lf0/b;->w:Lf0/c;

    const/16 v4, 0x9

    new-array v1, v1, [I

    iget v5, p0, Lf0/b;->u:I

    aput v5, v1, v3

    iget v3, p0, Lf0/b;->v:I

    aput v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lf0/c;->a3(I[I)V

    :cond_3
    return-void
.end method

.method public final s()V
    .locals 3

    const/16 v0, 0xa0

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lf0/b;->p(II)[I

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE_STATUS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo1/s0;->s([I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HiFi"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->h([II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lf0/b;->O(I)V

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lo1/s0;->h([II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lf0/b;->N(I)V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 8

    .line 1
    iget-object v0, p0, Lf0/b;->z:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x84

    .line 2
    invoke-virtual {p0, v0}, Lf0/b;->o(I)I

    move-result v0

    const/16 v3, 0x85

    .line 3
    invoke-virtual {p0, v3, v0}, Lf0/b;->p(II)[I

    move-result-object v0

    .line 4
    invoke-static {v0}, Lo1/s0;->r([I)[B

    move-result-object v0

    .line 5
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v3, p0, Lf0/b;->z:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6
    :goto_0
    iget-object v3, p0, Lf0/b;->A:Ljava/lang/String;

    invoke-static {v3}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x86

    .line 7
    invoke-virtual {p0, v0}, Lf0/b;->o(I)I

    move-result v0

    const/16 v3, 0x87

    .line 8
    invoke-virtual {p0, v3, v0}, Lf0/b;->p(II)[I

    move-result-object v0

    .line 9
    invoke-static {v0}, Lo1/s0;->r([I)[B

    move-result-object v0

    .line 10
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v3, p0, Lf0/b;->A:Ljava/lang/String;

    move v0, v2

    .line 11
    :cond_1
    iget-object v3, p0, Lf0/b;->B:Ljava/lang/String;

    invoke-static {v3}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v0, 0x88

    .line 12
    invoke-virtual {p0, v0}, Lf0/b;->o(I)I

    move-result v0

    const/16 v3, 0x89

    .line 13
    invoke-virtual {p0, v3, v0}, Lf0/b;->p(II)[I

    move-result-object v0

    .line 14
    invoke-static {v0}, Lo1/s0;->r([I)[B

    move-result-object v0

    .line 15
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v3, p0, Lf0/b;->B:Ljava/lang/String;

    move v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hardVersion:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf0/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  softVersion:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf0/b;->A:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  timeVersion:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf0/b;->B:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HiFi"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lf0/b;->w:Lf0/c;

    const/16 v3, 0xa

    new-array v4, v2, [I

    aput v1, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lf0/b;->z:Ljava/lang/String;

    aput-object v7, v6, v1

    iget-object v1, p0, Lf0/b;->A:Ljava/lang/String;

    aput-object v1, v6, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lf0/b;->B:Ljava/lang/String;

    aput-object v2, v6, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public u(III)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-boolean v4, v0, Lf0/b;->I:Z

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/16 v4, 0xa

    const/16 v5, 0xc

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v1, v4, :cond_3

    const/16 v4, 0xb

    if-eq v1, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    if-le v3, v2, :cond_5

    .line 2
    iget-object v4, v0, Lf0/b;->s:[I

    aget v11, v4, v10

    if-ne v11, v2, :cond_2

    aget v11, v4, v9

    if-eq v11, v3, :cond_5

    .line 3
    :cond_2
    aput v2, v4, v10

    .line 4
    aput v3, v4, v9

    .line 5
    iget-object v11, v0, Lf0/b;->x:Lo1/h0;

    const/16 v12, 0x8

    invoke-virtual {v11, v12, v4}, Lo1/h0;->r(I[I)V

    .line 6
    invoke-static {v2, v10}, Lo1/s0;->c(II)I

    move-result v4

    .line 7
    invoke-static {v2, v9}, Lo1/s0;->c(II)I

    move-result v11

    .line 8
    invoke-static {v3, v10}, Lo1/s0;->c(II)I

    move-result v12

    .line 9
    invoke-static {v3, v9}, Lo1/s0;->c(II)I

    move-result v13

    const/16 v14, 0x22

    new-array v15, v7, [I

    aput v4, v15, v10

    aput v11, v15, v9

    aput v12, v15, v6

    aput v13, v15, v8

    .line 10
    invoke-virtual {v0, v14, v15}, Lf0/b;->T(I[I)I

    .line 11
    iget-object v4, v0, Lf0/b;->w:Lf0/c;

    new-array v7, v7, [I

    aput v1, v7, v10

    aput v8, v7, v9

    aput v2, v7, v6

    aput v3, v7, v8

    invoke-virtual {v4, v5, v7}, Lf0/c;->a3(I[I)V

    goto :goto_0

    :cond_3
    if-le v3, v2, :cond_5

    .line 12
    iget-object v4, v0, Lf0/b;->r:[I

    aget v11, v4, v10

    if-ne v11, v2, :cond_4

    aget v11, v4, v9

    if-eq v11, v3, :cond_5

    .line 13
    :cond_4
    aput v2, v4, v10

    .line 14
    aput v3, v4, v9

    .line 15
    invoke-static {v2, v10}, Lo1/s0;->c(II)I

    move-result v4

    .line 16
    invoke-static {v2, v9}, Lo1/s0;->c(II)I

    move-result v11

    .line 17
    invoke-static {v3, v10}, Lo1/s0;->c(II)I

    move-result v12

    .line 18
    invoke-static {v3, v9}, Lo1/s0;->c(II)I

    move-result v13

    .line 19
    iget-object v14, v0, Lf0/b;->x:Lo1/h0;

    const/4 v15, 0x7

    iget-object v5, v0, Lf0/b;->r:[I

    invoke-virtual {v14, v15, v5}, Lo1/h0;->r(I[I)V

    const/16 v5, 0x24

    new-array v14, v7, [I

    aput v4, v14, v10

    aput v11, v14, v9

    aput v12, v14, v6

    aput v13, v14, v8

    .line 20
    invoke-virtual {v0, v5, v14}, Lf0/b;->T(I[I)I

    .line 21
    iget-object v4, v0, Lf0/b;->w:Lf0/c;

    new-array v5, v7, [I

    aput v1, v5, v10

    aput v8, v5, v9

    aput v2, v5, v6

    aput v3, v5, v8

    const/16 v1, 0xc

    invoke-virtual {v4, v1, v5}, Lf0/c;->a3(I[I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public v(II)V
    .locals 2

    if-ltz p2, :cond_3

    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v0, p0, Lf0/b;->j:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 2
    iget-object v0, p0, Lf0/b;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_1
    move v1, v0

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x1b

    goto :goto_0

    :cond_1
    const/16 v1, 0x1a

    :goto_0
    if-ltz v1, :cond_2

    .line 3
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {v0, v1, p2}, Lo1/h0;->q(II)V

    .line 4
    iget-object v0, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {v0, v1}, Lo1/h0;->e(I)V

    :cond_2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lf0/b;->w(IIZ)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w(IIZ)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAmpVolume speaker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isMute : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf0/b;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HiFi"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf0/b;->I:Z

    if-eqz v0, :cond_5

    if-ltz p2, :cond_5

    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lf0/b;->h:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lf0/b;->q:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0xe

    if-eq p1, v3, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-ne v0, p2, :cond_2

    if-eqz p3, :cond_5

    .line 5
    :cond_2
    iget-object p3, p0, Lf0/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    iget-object p3, p0, Lf0/b;->m:[I

    aget p3, p3, v1

    invoke-virtual {p0, p1, p3}, Lf0/b;->M(II)V

    .line 7
    iget-object p3, p0, Lf0/b;->w:Lf0/c;

    new-array v0, v5, [I

    aput p1, v0, v2

    aput p2, v0, v4

    invoke-virtual {p3, v6, v0}, Lf0/c;->a3(I[I)V

    goto :goto_1

    :cond_3
    :pswitch_1
    if-ne v0, v1, :cond_4

    if-eqz p3, :cond_5

    .line 8
    :cond_4
    iget-object p3, p0, Lf0/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    iget-object p3, p0, Lf0/b;->l:[I

    aget p3, p3, v1

    invoke-virtual {p0, p1, p3}, Lf0/b;->M(II)V

    .line 10
    iget-object p3, p0, Lf0/b;->w:Lf0/c;

    new-array v0, v5, [I

    aput p1, v0, v2

    aput p2, v0, v4

    invoke-virtual {p3, v6, v0}, Lf0/c;->a3(I[I)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public x(IIII)V
    .locals 9

    const/high16 v0, -0x80000000

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v3, 0x0

    move v4, v0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v3, p0, Lf0/b;->O:[I

    const/16 v4, 0x1c

    goto :goto_0

    .line 2
    :cond_1
    iget-object v3, p0, Lf0/b;->M:[I

    const/16 v4, 0x1a

    goto :goto_0

    .line 3
    :cond_2
    iget-object v3, p0, Lf0/b;->K:[I

    const/16 v4, 0x18

    :goto_0
    if-eq v4, v0, :cond_8

    if-nez v3, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 4
    aget v5, v3, v0

    if-eq v5, p2, :cond_4

    .line 5
    aput p2, v3, v0

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    move v6, v5

    if-eqz p2, :cond_6

    .line 6
    aget v7, v3, v2

    if-eq v7, p3, :cond_5

    .line 7
    aput p3, v3, v2

    move v5, v2

    .line 8
    :cond_5
    aget p3, v3, v1

    if-eq p3, p4, :cond_7

    .line 9
    aput p4, v3, v1

    move v5, v2

    goto :goto_2

    .line 10
    :cond_6
    aput v0, v3, v2

    .line 11
    aput v0, v3, v1

    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    .line 12
    aget p3, v3, v2

    invoke-static {p3, v0}, Lo1/s0;->c(II)I

    move-result p3

    .line 13
    aget p4, v3, v2

    invoke-static {p4, v2}, Lo1/s0;->c(II)I

    move-result p4

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setFilter reg:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mode:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " freq:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " gain:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "HiFi"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    new-array v7, v5, [I

    .line 15
    aget v8, v3, v0

    aput v8, v7, v0

    aput p3, v7, v2

    aput p4, v7, v1

    aget p3, v3, v1

    sub-int/2addr p3, v5

    add-int/lit8 p3, p3, 0x64

    const/4 p4, 0x3

    aput p3, v7, p4

    invoke-virtual {p0, v4, v7}, Lf0/b;->T(I[I)I

    .line 16
    iget-object p3, p0, Lf0/b;->w:Lf0/c;

    const/16 v4, 0x11

    const/4 v7, 0x5

    new-array v7, v7, [I

    aput p1, v7, v0

    aput v0, v7, v2

    aget v0, v3, v0

    aput v0, v7, v1

    aget v0, v3, v2

    aput v0, v7, p4

    aget p4, v3, v1

    aput p4, v7, v5

    invoke-virtual {p3, v4, v7}, Lf0/c;->a3(I[I)V

    .line 17
    invoke-virtual {p0, p1, p2}, Lf0/b;->m(II)I

    move-result p3

    .line 18
    iget-object p4, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {p4, p3, v3}, Lo1/h0;->r(I[I)V

    .line 19
    iget-object p4, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {p4, p3}, Lo1/h0;->e(I)V

    if-eqz v6, :cond_8

    .line 20
    invoke-virtual {p0, p1}, Lf0/b;->l(I)I

    move-result p1

    .line 21
    iget-object p3, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {p3, p1, p2}, Lo1/h0;->q(II)V

    .line 22
    iget-object p2, p0, Lf0/b;->x:Lo1/h0;

    invoke-virtual {p2, p1}, Lo1/h0;->e(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public y(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00 setOutputIIS  iis last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf0/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ==>>> iis :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HiFi"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf0/a;->c:Z

    if-eq v0, p1, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "01 setOutputIIS  iis last: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf0/a;->c:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-boolean p1, p0, Lf0/a;->c:Z

    const/16 v0, 0xe

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    xor-int/2addr p1, v4

    aput p1, v2, v3

    aput v1, v2, v4

    .line 5
    invoke-virtual {p0, v0, v2}, Lf0/b;->T(I[I)I

    const/16 p1, 0xc

    .line 6
    iget-boolean v0, p0, Lf0/a;->c:Z

    xor-int/2addr v0, v4

    invoke-static {p1, v0}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    .line 7
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object p1

    iget-boolean v0, p0, Lf0/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "extdsp_play=1"

    goto :goto_0

    :cond_0
    const-string v0, "extdsp_play=0"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public z(I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lf0/b;->p:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lf0/b;->L:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    if-ne v2, p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    aget v2, v0, v1

    const/4 v3, 0x0

    .line 3
    aget v4, v0, v3

    const/16 v5, 0xfa0

    const/16 v6, 0xfa

    const/4 v7, 0x2

    if-eq v4, v1, :cond_4

    const/16 v8, 0x14

    if-eq v4, v7, :cond_3

    const/4 v6, 0x3

    const/16 v9, 0x4e20

    if-eq v4, v6, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    if-lt p1, v8, :cond_5

    if-gt p1, v9, :cond_5

    goto :goto_1

    :cond_2
    if-lt p1, v5, :cond_5

    if-gt p1, v9, :cond_5

    goto :goto_1

    :cond_3
    if-lt p1, v8, :cond_5

    if-gt p1, v6, :cond_5

    goto :goto_1

    :cond_4
    if-lt p1, v6, :cond_5

    if-gt p1, v5, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move p1, v2

    .line 4
    :goto_1
    aput p1, v0, v1

    .line 5
    aget v2, v0, v3

    aget v0, v0, v7

    invoke-virtual {p0, v1, v2, p1, v0}, Lf0/b;->x(IIII)V

    :cond_6
    :goto_2
    return-void
.end method
