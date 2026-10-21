.class public Lmodule/sound/C7729;
.super Lmodule/sound/AudioDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/sound/C7729$REG;,
        Lmodule/sound/C7729$CHANNEL;
    }
.end annotation


# static fields
.field public static n1:I

.field public static o1:I

.field public static final p1:[I

.field public static q1:I


# instance fields
.field public final I0:Z

.field public final J0:Ljava/lang/String;

.field public K0:I

.field public L0:I

.field public M0:I

.field public N0:I

.field public final O0:[I

.field public final P0:[I

.field public final Q0:[I

.field public final R0:[I

.field public S0:[I

.field public T0:[I

.field public U0:[I

.field public V0:[I

.field public W0:[I

.field public X0:[I

.field public final Y0:[I

.field public final Z0:[I

.field public final a1:[I

.field public final b1:[I

.field public final c1:[I

.field public final d1:[I

.field public final e1:[I

.field public final f1:[I

.field public g1:Lo1/n;

.field public h1:I

.field public i1:I

.field public j1:I

.field public k1:I

.field public l1:I

.field public m1:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/sound/C7729;->p1:[I

    const/16 v0, 0x44

    .line 2
    sput v0, Lmodule/sound/C7729;->q1:I

    return-void

    :array_0
    .array-data 4
        0x60
        0x4b
        0x45
        0x40
        0x3c
        0x38
        0x35
        0x32
        0x2f
        0x2d
        0x2b
        0x29
        0x28
        0x27
        0x26
        0x25
        0x24
        0x23
        0x22
        0x21
        0x20
        0x1f
        0x1e
        0x1d
        0x1c
        0x1b
        0x1a
        0x19
        0x18
        0x17
        0x16
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
    .end array-data
.end method

.method public constructor <init>(Lo1/n;)V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 1
    invoke-direct {v0, v1, v1}, Lmodule/sound/AudioDevice;-><init>(II)V

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v0, Lmodule/sound/C7729;->I0:Z

    const-string v3, "C7729"

    .line 3
    iput-object v3, v0, Lmodule/sound/C7729;->J0:Ljava/lang/String;

    const/16 v3, 0x1b

    .line 4
    iput v3, v0, Lmodule/sound/C7729;->K0:I

    const/16 v4, 0x6f

    .line 5
    iput v4, v0, Lmodule/sound/C7729;->L0:I

    const/16 v5, 0x19

    .line 6
    iput v5, v0, Lmodule/sound/C7729;->M0:I

    const/16 v6, 0x4d

    .line 7
    iput v6, v0, Lmodule/sound/C7729;->N0:I

    const/4 v7, 0x4

    new-array v8, v7, [I

    .line 8
    fill-array-data v8, :array_0

    iput-object v8, v0, Lmodule/sound/C7729;->O0:[I

    const/16 v8, 0x2a

    new-array v9, v8, [I

    aput v2, v9, v2

    const/4 v10, 0x1

    const/16 v11, 0x42

    aput v11, v9, v10

    const/4 v12, 0x2

    aput v10, v9, v12

    const/16 v13, 0xe1

    aput v13, v9, v1

    aput v12, v9, v7

    const/16 v13, 0xff

    const/4 v14, 0x5

    aput v13, v9, v14

    const/4 v13, 0x6

    aput v1, v9, v13

    const/4 v15, 0x7

    const/16 v16, 0x1f

    aput v16, v9, v15

    const/16 v1, 0x8

    aput v7, v9, v1

    const/16 v17, 0xde

    const/16 v12, 0x9

    aput v17, v9, v12

    const/16 v17, 0xa

    aput v14, v9, v17

    const/16 v14, 0xb

    aput v2, v9, v14

    const/16 v18, 0xc

    aput v13, v9, v18

    const/16 v19, 0xf8

    const/16 v20, 0xd

    aput v19, v9, v20

    const/16 v19, 0xe

    aput v15, v9, v19

    const/16 v21, 0xf

    const/16 v22, 0x7a

    aput v22, v9, v21

    const/16 v21, 0x10

    aput v1, v9, v21

    const/16 v21, 0x41

    const/16 v15, 0x11

    aput v21, v9, v15

    const/16 v21, 0x12

    aput v12, v9, v21

    const/16 v21, 0x13

    aput v3, v9, v21

    const/16 v21, 0x14

    aput v17, v9, v21

    const/16 v17, 0x15

    aput v4, v9, v17

    const/16 v4, 0x16

    aput v14, v9, v4

    const/16 v4, 0x17

    aput v5, v9, v4

    const/16 v4, 0x18

    aput v18, v9, v4

    aput v6, v9, v5

    const/16 v4, 0x1a

    aput v20, v9, v4

    aput v8, v9, v3

    const/16 v3, 0x1c

    aput v19, v9, v3

    const/16 v3, 0x1d

    aput v8, v9, v3

    const/16 v3, 0x1e

    const/16 v4, 0xf

    aput v4, v9, v3

    const/16 v3, 0x32

    aput v3, v9, v16

    const/16 v4, 0x20

    const/16 v5, 0x10

    aput v5, v9, v4

    const/16 v4, 0x21

    aput v3, v9, v4

    const/16 v4, 0x22

    aput v15, v9, v4

    const/16 v4, 0x23

    aput v3, v9, v4

    const/16 v4, 0x24

    const/16 v5, 0x12

    aput v5, v9, v4

    const/16 v4, 0x25

    aput v3, v9, v4

    const/16 v3, 0x26

    const/16 v4, 0x13

    aput v4, v9, v3

    const/16 v3, 0x27

    aput v11, v9, v3

    const/16 v3, 0x28

    const/16 v4, 0x14

    aput v4, v9, v3

    const/16 v3, 0x29

    aput v11, v9, v3

    .line 9
    iput-object v9, v0, Lmodule/sound/C7729;->P0:[I

    const/16 v3, 0x25

    new-array v3, v3, [I

    .line 10
    fill-array-data v3, :array_1

    iput-object v3, v0, Lmodule/sound/C7729;->Q0:[I

    const/16 v3, 0x2f

    new-array v3, v3, [I

    .line 11
    fill-array-data v3, :array_2

    iput-object v3, v0, Lmodule/sound/C7729;->R0:[I

    new-array v3, v14, [I

    .line 12
    fill-array-data v3, :array_3

    iput-object v3, v0, Lmodule/sound/C7729;->S0:[I

    const/16 v3, 0x15

    new-array v3, v3, [I

    .line 13
    fill-array-data v3, :array_4

    iput-object v3, v0, Lmodule/sound/C7729;->T0:[I

    new-array v3, v15, [I

    .line 14
    fill-array-data v3, :array_5

    iput-object v3, v0, Lmodule/sound/C7729;->U0:[I

    new-array v3, v7, [I

    .line 15
    fill-array-data v3, :array_6

    iput-object v3, v0, Lmodule/sound/C7729;->V0:[I

    new-array v3, v7, [I

    .line 16
    fill-array-data v3, :array_7

    iput-object v3, v0, Lmodule/sound/C7729;->W0:[I

    new-array v3, v12, [I

    .line 17
    fill-array-data v3, :array_8

    iput-object v3, v0, Lmodule/sound/C7729;->X0:[I

    new-array v4, v12, [I

    .line 18
    fill-array-data v4, :array_9

    iput-object v4, v0, Lmodule/sound/C7729;->Y0:[I

    new-array v5, v12, [I

    .line 19
    fill-array-data v5, :array_a

    iput-object v5, v0, Lmodule/sound/C7729;->Z0:[I

    new-array v6, v12, [I

    .line 20
    fill-array-data v6, :array_b

    iput-object v6, v0, Lmodule/sound/C7729;->a1:[I

    new-array v8, v12, [I

    .line 21
    fill-array-data v8, :array_c

    iput-object v8, v0, Lmodule/sound/C7729;->b1:[I

    new-array v9, v12, [I

    .line 22
    fill-array-data v9, :array_d

    iput-object v9, v0, Lmodule/sound/C7729;->c1:[I

    new-array v11, v12, [I

    .line 23
    fill-array-data v11, :array_e

    iput-object v11, v0, Lmodule/sound/C7729;->d1:[I

    new-array v14, v12, [I

    .line 24
    fill-array-data v14, :array_f

    iput-object v14, v0, Lmodule/sound/C7729;->e1:[I

    new-array v12, v12, [I

    .line 25
    fill-array-data v12, :array_10

    iput-object v12, v0, Lmodule/sound/C7729;->f1:[I

    const/4 v15, 0x0

    .line 26
    iput-object v15, v0, Lmodule/sound/C7729;->g1:Lo1/n;

    .line 27
    iput v2, v0, Lmodule/sound/C7729;->h1:I

    const/4 v15, -0x1

    .line 28
    iput v15, v0, Lmodule/sound/C7729;->i1:I

    .line 29
    iput v1, v0, Lmodule/sound/C7729;->j1:I

    .line 30
    iput v1, v0, Lmodule/sound/C7729;->k1:I

    .line 31
    iput v1, v0, Lmodule/sound/C7729;->l1:I

    .line 32
    iput v1, v0, Lmodule/sound/C7729;->m1:I

    .line 33
    invoke-virtual {v0, v2, v3}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 34
    invoke-virtual {v0, v10, v4}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x2

    .line 35
    invoke-virtual {v0, v2, v5}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x3

    .line 36
    invoke-virtual {v0, v2, v6}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 37
    invoke-virtual {v0, v7, v8}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x5

    .line 38
    invoke-virtual {v0, v2, v9}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 39
    invoke-virtual {v0, v13, v11}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x7

    .line 40
    invoke-virtual {v0, v2, v14}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 41
    invoke-virtual {v0, v1, v12}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 42
    sput-boolean v10, Lu0/b;->V3:Z

    .line 43
    sget-object v1, Lmodule/sound/C7729;->p1:[I

    invoke-virtual {v0, v1}, Lmodule/sound/AudioDevice;->x([I)V

    move-object/from16 v1, p1

    .line 44
    iput-object v1, v0, Lmodule/sound/C7729;->g1:Lo1/n;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xfb
        0xfb
        0xfb
        0xfb
        0xfb
        0xfb
        0xf3
        0xeb
        0xe3
        0xdb
        0xd3
        0xcb
        0xc3
        0xbb
        0xb3
        0xab
        0xa3
        0x9b
        0x93
        0x8b
        0x83
        0x7b
        0x73
        0x6b
        0x63
        0x5b
        0x53
        0x4b
        0x43
        0x3b
        0x33
        0x2b
        0x23
        0x1b
        0x13
        0xb
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x60
        0x4b
        0x45
        0x40
        0x3c
        0x38
        0x35
        0x32
        0x2f
        0x2d
        0x2b
        0x29
        0x28
        0x27
        0x26
        0x25
        0x24
        0x23
        0x22
        0x21
        0x20
        0x1f
        0x1e
        0x1d
        0x1c
        0x1b
        0x1a
        0x19
        0x18
        0x17
        0x16
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
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

    :array_3
    .array-data 4
        0x5
        0x7
        0x9
        0xb
        0xd
        0xf
        0x1d
        0x1b
        0x19
        0x17
        0x15
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x1e
        0x1d
        0x1c
        0x1b
        0x1a
        0x19
        0x18
        0x17
        0x16
        0x15
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x60
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x0
        0x0
        0xa
        0x3
        0x3
        0xa
        0x0
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x0
        0x0
        0xa
        0x3
        0x3
        0xa
        0x0
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x10
        0x0
        0x0
        0xa
        0x3
        0x3
        0x10
        0x0
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x0
        0x0
        0xe
        0x3
        0x3
        0x10
        0x0
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x0
        0x0
        0xe
        0x3
        0x3
        0x8
        0x0
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x0
        0x0
        0xe
        0x3
        0x3
        0xc
        0x0
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0xa
        0x0
        0x0
        0xe
        0x3
        0x3
        0xe
        0x0
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0xa
        0x0
        0x0
        0xe
        0x3
        0x3
        0xc
        0x0
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0xe
        0x0
        0x0
        0xc
        0x3
        0x3
        0xe
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public A1(IZ)V
    .locals 1

    if-ltz p1, :cond_4

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-ne p1, p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-eq p1, p2, :cond_2

    iput p1, p0, Lmodule/sound/AudioDevice;->g:I

    .line 4
    :cond_2
    sget-object p2, Lmodule/sound/C7729$REG;->e:Lmodule/sound/C7729$REG;

    if-gtz p1, :cond_3

    const/16 v0, 0xde

    goto :goto_0

    :cond_3
    const/16 v0, 0xdf

    :goto_0
    invoke-virtual {p0, p2, v0}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 5
    sget-object p2, Lmodule/sound/C7729$REG;->l:Lmodule/sound/C7729$REG;

    iget v0, p0, Lmodule/sound/C7729;->j1:I

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/C7729;->H1(Lmodule/sound/C7729$REG;II)V

    .line 6
    sget-object p2, Lmodule/sound/C7729$REG;->m:Lmodule/sound/C7729$REG;

    iget v0, p0, Lmodule/sound/C7729;->k1:I

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/C7729;->H1(Lmodule/sound/C7729$REG;II)V

    .line 7
    sget-object p2, Lmodule/sound/C7729$REG;->n:Lmodule/sound/C7729$REG;

    iget v0, p0, Lmodule/sound/C7729;->l1:I

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/C7729;->H1(Lmodule/sound/C7729$REG;II)V

    .line 8
    sget-object p2, Lmodule/sound/C7729$REG;->o:Lmodule/sound/C7729$REG;

    iget v0, p0, Lmodule/sound/C7729;->m1:I

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/C7729;->H1(Lmodule/sound/C7729$REG;II)V

    .line 9
    iget p1, p0, Lmodule/sound/C7729;->i1:I

    invoke-virtual {p0, p1}, Lmodule/sound/C7729;->o(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public D1([II)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lmodule/sound/C7729;->G1(I)[I

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs E1(I[I)V
    .locals 4

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    array-length v1, p2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget v1, p2, v0

    iget-object v2, p0, Lmodule/sound/C7729;->T0:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lmodule/sound/C7729;->M0:I

    and-int/lit16 p1, p1, 0x80

    .line 3
    aget v0, p2, v0

    aget v0, v2, v0

    or-int/2addr p1, v0

    iget-object v0, p0, Lmodule/sound/C7729;->W0:[I

    aget v1, p2, v1

    aget v0, v0, v1

    shl-int/lit8 v0, v0, 0x5

    or-int/2addr p1, v0

    iput p1, p0, Lmodule/sound/C7729;->M0:I

    .line 4
    sget-object v0, Lmodule/sound/C7729$REG;->j:Lmodule/sound/C7729$REG;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 5
    iget p1, p0, Lmodule/sound/C7729;->N0:I

    and-int/lit16 p1, p1, 0x9f

    .line 6
    iget-object v0, p0, Lmodule/sound/C7729;->V0:[I

    aget p2, p2, v3

    aget p2, v0, p2

    shl-int/lit8 p2, p2, 0x5

    or-int/2addr p1, p2

    iput p1, p0, Lmodule/sound/C7729;->N0:I

    .line 7
    sget-object p2, Lmodule/sound/C7729$REG;->k:Lmodule/sound/C7729$REG;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    .line 8
    iget p1, p0, Lmodule/sound/C7729;->L0:I

    and-int/lit16 p1, p1, 0x80

    .line 9
    aget v0, p2, v0

    aget v0, v2, v0

    or-int/2addr p1, v0

    iget-object v0, p0, Lmodule/sound/C7729;->W0:[I

    aget v1, p2, v1

    aget v0, v0, v1

    shl-int/lit8 v0, v0, 0x5

    or-int/2addr p1, v0

    iput p1, p0, Lmodule/sound/C7729;->L0:I

    .line 10
    sget-object v0, Lmodule/sound/C7729$REG;->i:Lmodule/sound/C7729$REG;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 11
    iget p1, p0, Lmodule/sound/C7729;->N0:I

    and-int/lit16 p1, p1, 0xe7

    .line 12
    iget-object v0, p0, Lmodule/sound/C7729;->V0:[I

    aget p2, p2, v3

    aget p2, v0, p2

    shl-int/lit8 p2, p2, 0x3

    or-int/2addr p1, p2

    iput p1, p0, Lmodule/sound/C7729;->N0:I

    .line 13
    sget-object p2, Lmodule/sound/C7729$REG;->k:Lmodule/sound/C7729$REG;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 14
    iget p1, p0, Lmodule/sound/C7729;->K0:I

    and-int/lit16 p1, p1, 0x80

    .line 15
    aget v0, p2, v0

    aget v0, v2, v0

    or-int/2addr p1, v0

    iget-object v0, p0, Lmodule/sound/C7729;->V0:[I

    aget p2, p2, v3

    aget p2, v0, p2

    shl-int/lit8 p2, p2, 0x5

    or-int/2addr p1, p2

    iput p1, p0, Lmodule/sound/C7729;->K0:I

    .line 16
    sget-object p2, Lmodule/sound/C7729$REG;->h:Lmodule/sound/C7729$REG;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    :cond_2
    :goto_0
    return-void
.end method

.method public F()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/sound/C7729$CHANNEL;->g:Lmodule/sound/C7729$CHANNEL;

    iget v1, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 2
    sget-object v1, Lmodule/sound/C7729$CHANNEL;->c:Lmodule/sound/C7729$CHANNEL;

    iget v1, v1, Lmodule/sound/C7729$CHANNEL;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 3
    iget v1, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 4
    iget v1, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 5
    sget-object v1, Lmodule/sound/C7729$CHANNEL;->f:Lmodule/sound/C7729$CHANNEL;

    iget v2, v1, Lmodule/sound/C7729$CHANNEL;->a:I

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 6
    sget-object v2, Lmodule/sound/C7729$CHANNEL;->b:Lmodule/sound/C7729$CHANNEL;

    iget v2, v2, Lmodule/sound/C7729$CHANNEL;->a:I

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 7
    iget v2, v1, Lmodule/sound/C7729$CHANNEL;->a:I

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 8
    iget v2, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    const/4 v3, 0x7

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 9
    iget v2, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 10
    iget v2, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 11
    iget v2, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 12
    iget v2, v1, Lmodule/sound/C7729$CHANNEL;->a:I

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 13
    iget v2, v1, Lmodule/sound/C7729$CHANNEL;->a:I

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 14
    iget v1, v1, Lmodule/sound/C7729$CHANNEL;->a:I

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 15
    iget v1, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 16
    iget v1, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 17
    iget v0, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    return-void
.end method

.method public F1([I)V
    .locals 7

    .line 1
    array-length v0, p1

    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    div-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 2
    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v5, v2, v4

    aget v5, p1, v5

    aput v5, v3, v1

    mul-int v5, v2, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget v5, p1, v5

    aput v5, v3, v6

    mul-int/2addr v4, v2

    const/4 v5, 0x2

    add-int/2addr v4, v5

    aget v4, p1, v4

    aput v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C7729;->E1(I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G1(I)[I
    .locals 6

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->j:I

    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->X(I)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    array-length v1, p1

    .line 4
    iget v2, p0, Lmodule/sound/AudioDevice;->j:I

    iget v3, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v4, v2, v3

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    .line 5
    invoke-static {p1, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 6
    invoke-static {p1, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v2, p0, Lmodule/sound/AudioDevice;->j:I

    iget v3, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public H1(Lmodule/sound/C7729$REG;II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result p2

    iget-object v0, p0, Lmodule/sound/C7729;->U0:[I

    aget p3, v0, p3

    add-int/2addr p2, p3

    const/16 p3, 0x60

    if-le p2, p3, :cond_0

    move p2, p3

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    return-void
.end method

.method public varargs I1(I[I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/C7729;->g1:Lo1/n;

    if-eqz v0, :cond_0

    sget v1, Lmodule/sound/C7729;->q1:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lo1/n;->d(I[I[I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public J1(Lmodule/sound/C7729$REG;I)I
    .locals 2

    .line 1
    iget p1, p1, Lmodule/sound/C7729$REG;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C7729;->I1(I[I)I

    move-result p1

    return p1
.end method

.method public L(II)V
    .locals 6

    if-ltz p2, :cond_2

    .line 1
    iget-object v0, p0, Lmodule/sound/C7729;->V0:[I

    array-length v0, v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 3
    iget-object v2, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v3, v2

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_1

    return-void

    .line 4
    :cond_1
    aput p2, v2, v1

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v5, 0x0

    .line 5
    aget v0, v2, v0

    aput v0, v3, v5

    aget v0, v2, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    const/4 v0, 0x2

    aget v1, v2, v4

    aput v1, v3, v0

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C7729;->E1(I[I)V

    .line 6
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->L(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public M(II)V
    .locals 6

    if-ltz p2, :cond_2

    .line 1
    iget-object v0, p0, Lmodule/sound/C7729;->T0:[I

    array-length v0, v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, p1

    .line 3
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v2, v1

    add-int/lit8 v3, v0, 0x2

    if-gt v2, v3, :cond_1

    return-void

    .line 4
    :cond_1
    aput p2, v1, v0

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v4, 0x0

    .line 5
    aget v5, v1, v0

    aput v5, v2, v4

    const/4 v4, 0x1

    add-int/2addr v0, v4

    aget v0, v1, v0

    aput v0, v2, v4

    aget v0, v1, v3

    const/4 v1, 0x2

    aput v0, v2, v1

    invoke-virtual {p0, p1, v2}, Lmodule/sound/C7729;->E1(I[I)V

    .line 6
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->M(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public O(II)V
    .locals 7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_3

    .line 1
    iget-object v1, p0, Lmodule/sound/C7729;->W0:[I

    array-length v1, v1

    if-lt p2, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v1, p1

    add-int/lit8 v2, v1, 0x2

    .line 3
    iget-object v3, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v4, v3

    if-gt v4, v2, :cond_2

    return-void

    .line 4
    :cond_2
    aput p2, v3, v2

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 5
    aget v6, v3, v1

    aput v6, v4, v5

    const/4 v5, 0x1

    add-int/2addr v1, v5

    aget v1, v3, v1

    aput v1, v4, v5

    aget v1, v3, v2

    aput v1, v4, v0

    invoke-virtual {p0, p1, v4}, Lmodule/sound/C7729;->E1(I[I)V

    .line 6
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->O(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public U(ILy/b;)Z
    .locals 8

    const/16 v0, 0x9

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x12

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x26

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-array v0, v3, [I

    .line 1
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->A:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :cond_1
    new-array v0, v1, [I

    aput v2, v0, v2

    .line 2
    iget v1, p0, Lmodule/sound/C7729;->h1:I

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_3

    .line 3
    :cond_2
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v2

    .line 4
    :goto_0
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_6

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 5
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    aget v6, v0, v6

    invoke-virtual {p0, v4}, Lmodule/sound/AudioDevice;->y0(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v2

    .line 7
    :goto_1
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_6

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 8
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    aget v6, v0, v6

    aput v6, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-array v0, v3, [I

    .line 9
    iget v1, p0, Lmodule/sound/AudioDevice;->k:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_3

    .line 10
    :cond_5
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v2

    .line 11
    :goto_2
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_6

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 12
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    aget v6, v0, v6

    invoke-virtual {p0, v4}, Lmodule/sound/C7729;->x0(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_7

    goto :goto_5

    .line 13
    :cond_7
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->U(ILy/b;)Z

    move-result v2

    :goto_5
    return v2
.end method

.method public W0()V
    .locals 7

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->W0()V

    .line 2
    iget-object v0, p0, Lmodule/sound/C7729;->P0:[I

    array-length v0, v0

    .line 3
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-gez v2, :cond_1

    const-wide/16 v3, 0x258

    .line 4
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 6
    iget-object v2, p0, Lmodule/sound/C7729;->P0:[I

    mul-int/lit8 v4, v3, 0x2

    aget v5, v2, v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 7
    aget v2, v2, v4

    new-array v4, v6, [I

    aput v2, v4, v1

    .line 8
    invoke-virtual {p0, v5, v4}, Lmodule/sound/C7729;->I1(I[I)I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ltz v2, :cond_0

    .line 9
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    sput v0, Lmodule/sound/C7729;->n1:I

    .line 10
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-eqz v0, :cond_5

    sget v0, Ly0/f;->V0:I

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v1

    .line 11
    :goto_4
    invoke-virtual {p0, v0}, Lmodule/sound/C7729;->o(I)V

    .line 12
    iget v0, p0, Lmodule/sound/C7729;->h1:I

    invoke-virtual {p0, v1, v0}, Lmodule/sound/C7729;->e1(II)V

    .line 13
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/C7729;->w0(I)V

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lmodule/sound/C7729;->j([I)V

    .line 15
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->f:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C7729;->l(I)V

    .line 16
    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/C7729;->a(I)V

    .line 17
    sget v0, Ly0/f;->C0:I

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->y1(I)V

    return-void
.end method

.method public Y0([I)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    .line 2
    :cond_0
    sget v0, Lu0/b;->E:I

    if-ltz v0, :cond_1

    move p1, v0

    .line 3
    :cond_1
    iput p1, p0, Lmodule/sound/AudioDevice;->l:I

    .line 4
    iget-object v0, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-gez v0, :cond_2

    .line 5
    sget-object v0, Lmodule/sound/C7729$CHANNEL;->g:Lmodule/sound/C7729$CHANNEL;

    iget v0, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    .line 6
    :cond_2
    sget-object v1, Lmodule/sound/C7729$CHANNEL;->g:Lmodule/sound/C7729$CHANNEL;

    iget v1, v1, Lmodule/sound/C7729$CHANNEL;->a:I

    .line 7
    sget-object v1, Lmodule/sound/C7729$REG;->b:Lmodule/sound/C7729$REG;

    iget-boolean v2, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_3
    and-int/lit16 v0, v0, 0xef

    :goto_0
    invoke-virtual {p0, v1, v0}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 8
    sget-object v0, Ly0/f;->z0:[I

    aget p1, v0, p1

    if-ltz p1, :cond_4

    const/16 v0, 0x30

    if-ge p1, v0, :cond_4

    .line 9
    sget-object v0, Ly0/f;->w0:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C7729;->m(II)V

    :cond_4
    return-void
.end method

.method public c1()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e1(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lmodule/sound/C7729;->O0:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-nez p1, :cond_1

    .line 3
    iput p2, p0, Lmodule/sound/C7729;->h1:I

    .line 4
    iget v0, p0, Lmodule/sound/C7729;->N0:I

    and-int/lit16 v0, v0, 0xfc

    .line 5
    iget-object v1, p0, Lmodule/sound/C7729;->O0:[I

    aget v1, v1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lmodule/sound/C7729;->N0:I

    .line 6
    sget-object v1, Lmodule/sound/C7729$REG;->k:Lmodule/sound/C7729$REG;

    invoke-virtual {p0, v1, v0}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 7
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->e1(II)V

    :cond_1
    return-void
.end method

.method public f1(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->A:Z

    if-nez p1, :cond_1

    .line 3
    sget-object v0, Lmodule/sound/C7729$REG;->p:Lmodule/sound/C7729$REG;

    iget-object v1, p0, Lmodule/sound/C7729;->R0:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 4
    sget-object v0, Lmodule/sound/C7729$REG;->q:Lmodule/sound/C7729$REG;

    iget-object v1, p0, Lmodule/sound/C7729;->R0:[I

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lmodule/sound/AudioDevice;->g:I

    iget v1, p0, Lmodule/sound/C7729;->i1:I

    add-int/2addr v0, v1

    .line 6
    sget-object v1, Lmodule/sound/C7729$REG;->p:Lmodule/sound/C7729$REG;

    iget-object v2, p0, Lmodule/sound/C7729;->R0:[I

    aget v2, v2, v0

    invoke-virtual {p0, v1, v2}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 7
    sget-object v1, Lmodule/sound/C7729$REG;->q:Lmodule/sound/C7729$REG;

    iget-object v2, p0, Lmodule/sound/C7729;->R0:[I

    aget v0, v2, v0

    invoke-virtual {p0, v1, v0}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 8
    :goto_0
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->f1(Z)V

    return-void
.end method

.method public j([I)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->e:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget p1, Ly0/f;->L0:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lo1/o0;->a(III)I

    move-result p1

    .line 3
    sget v2, Ly0/f;->M0:I

    invoke-static {v2, v0, v1}, Lo1/o0;->a(III)I

    move-result v2

    .line 4
    sget v3, Lh0/c;->G:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sget-boolean v3, Lu0/b;->j2:Z

    if-eqz v3, :cond_1

    .line 5
    sget-object p1, Ln0/j4;->d:Ln0/c4;

    invoke-virtual {p1}, Ln0/c4;->L2()[I

    move-result-object p1

    .line 6
    aget v0, p1, v0

    .line 7
    aget v2, p1, v4

    move p1, v0

    .line 8
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmodule/sound/C7729;->j1:I

    rsub-int/lit8 v0, p1, 0x10

    .line 9
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lmodule/sound/C7729;->k1:I

    sub-int/2addr v1, v2

    .line 10
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmodule/sound/C7729;->l1:I

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmodule/sound/C7729;->m1:I

    .line 12
    iget p1, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {p0, p1, v4}, Lmodule/sound/C7729;->A1(IZ)V

    const/4 p1, 0x0

    .line 13
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->j([I)V

    return-void
.end method

.method public j0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 2
    sget-object p1, Lmodule/sound/C7729$CHANNEL;->g:Lmodule/sound/C7729$CHANNEL;

    iget p1, p1, Lmodule/sound/C7729$CHANNEL;->a:I

    .line 3
    :cond_0
    sget-object v0, Lmodule/sound/C7729$CHANNEL;->g:Lmodule/sound/C7729$CHANNEL;

    iget v0, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1
    :goto_0
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->f:Z

    .line 2
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->l(I)V

    .line 3
    sget-object p1, Lmodule/sound/C7729$REG;->f:Lmodule/sound/C7729$REG;

    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x66

    goto :goto_1

    :cond_1
    const/16 v1, 0x40

    :goto_1
    invoke-virtual {p0, p1, v1}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 4
    sget p1, Lmodule/sound/C7729;->n1:I

    .line 5
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    sput v0, Lmodule/sound/C7729;->n1:I

    if-eq p1, v0, :cond_3

    .line 6
    sget p1, Lu0/b;->D:I

    invoke-virtual {p0, p1}, Lmodule/sound/C7729;->a(I)V

    :cond_3
    return-void
.end method

.method public m(II)V
    .locals 2

    if-ltz p1, :cond_1

    const/16 v0, 0x30

    if-ge p1, v0, :cond_1

    .line 1
    sget v0, Lu0/b;->D:I

    if-ltz v0, :cond_1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v1, Ly0/f;->z0:[I

    aget v0, v1, v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    const/16 v0, 0xa

    .line 3
    invoke-static {p2, p1, v0}, Lo1/o0;->a(III)I

    move-result p1

    sget p2, Lmodule/sound/C7729;->n1:I

    add-int/2addr p1, p2

    sget p2, Lmodule/sound/C7729;->o1:I

    add-int/2addr p1, p2

    not-int p1, p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 p1, p1, 0x1f

    or-int/lit8 p1, p1, 0x40

    .line 4
    sget-object p2, Lmodule/sound/C7729$REG;->g:Lmodule/sound/C7729$REG;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    :cond_1
    return-void
.end method

.method public m0()V
    .locals 3

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->m0()V

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->l:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/h0;->h(II)I

    move-result v0

    iput v0, p0, Lmodule/sound/C7729;->h1:I

    return-void
.end method

.method public o(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    invoke-static {p1, v1, v0}, Lo1/o0;->a(III)I

    move-result p1

    :goto_0
    iput p1, p0, Lmodule/sound/C7729;->i1:I

    .line 2
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lmodule/sound/AudioDevice;->g:I

    add-int/2addr v0, p1

    .line 3
    :goto_1
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->D:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    .line 4
    :goto_2
    sget-object p1, Lmodule/sound/C7729$REG;->p:Lmodule/sound/C7729$REG;

    iget-object v0, p0, Lmodule/sound/C7729;->R0:[I

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 5
    sget-object p1, Lmodule/sound/C7729$REG;->q:Lmodule/sound/C7729$REG;

    iget-object v0, p0, Lmodule/sound/C7729;->R0:[I

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 6
    iget p1, p0, Lmodule/sound/C7729;->i1:I

    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->o(I)V

    return-void
.end method

.method public r0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/sound/C7729;->Q0:[I

    aget v0, v0, p1

    .line 2
    sget-object v1, Lmodule/sound/C7729$REG;->c:Lmodule/sound/C7729$REG;

    invoke-virtual {p0, v1, v0}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    .line 3
    sget-object v0, Lmodule/sound/C7729$REG;->d:Lmodule/sound/C7729$REG;

    if-nez p1, :cond_0

    const/16 p1, 0x1f

    goto :goto_0

    :cond_0
    const/16 p1, 0x1c

    :goto_0
    invoke-virtual {p0, v0, p1}, Lmodule/sound/C7729;->J1(Lmodule/sound/C7729$REG;I)I

    return-void
.end method

.method public w0(I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/C7729;->G1(I)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {p0, v1, p1}, Lmodule/sound/C7729;->D1([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lmodule/sound/AudioDevice;->j:I

    new-array v1, p1, [I

    .line 5
    new-array v3, p1, [I

    .line 6
    new-array p1, p1, [I

    .line 7
    :goto_0
    iget v4, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v2, v4, :cond_0

    .line 8
    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    aput v5, v3, v2

    mul-int v5, v2, v4

    .line 9
    aget v5, v0, v5

    aput v5, v1, v2

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    .line 10
    aget v4, v0, v4

    aput v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v1, v3, p1, v4, p0}, Ly0/h;->H([I[I[IILmodule/sound/AudioDevice;)V

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lmodule/sound/C7729;->F1([I)V

    return-void
.end method

.method public x0(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->n:[I

    if-eqz v0, :cond_0

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v1, v2

    array-length v3, v0

    if-gt v1, v3, :cond_0

    mul-int/2addr p1, v2

    .line 2
    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
