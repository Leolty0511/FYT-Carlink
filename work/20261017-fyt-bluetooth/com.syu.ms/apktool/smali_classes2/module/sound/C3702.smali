.class public Lmodule/sound/C3702;
.super Lmodule/sound/AudioDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/sound/C3702$REG;,
        Lmodule/sound/C3702$CHANNEL;
    }
.end annotation


# static fields
.field public static final a1:[I

.field public static final b1:[I

.field public static c1:I

.field public static d1:I

.field public static e1:I


# instance fields
.field public final I0:Z

.field public final J0:Ljava/lang/String;

.field public final K0:[I

.field public final L0:[I

.field public M0:[I

.field public N0:[I

.field public O0:[I

.field public final P0:[I

.field public final Q0:[I

.field public final R0:[I

.field public final S0:[I

.field public final T0:[I

.field public final U0:[I

.field public final V0:[I

.field public final W0:[I

.field public X0:Lo1/n;

.field public Y0:I

.field public Z0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/sound/C3702;->a1:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/sound/C3702;->b1:[I

    const/16 v0, 0x40

    .line 3
    sput v0, Lmodule/sound/C3702;->c1:I

    const/4 v0, 0x4

    .line 4
    sput v0, Lmodule/sound/C3702;->d1:I

    const/4 v0, 0x5

    sput v0, Lmodule/sound/C3702;->e1:I

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x36
        0x32
        0x2e
        0x2a
        0x26
        0x22
        0x20
        0x1e
        0x1c
        0x1b
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
        -0x1
        -0x2
        -0x3
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x99
        0x94
        0x91
        0x8f
        0x8c
        0x8a
        0x88
        0x86
        0x84
        0x82
    .end array-data
.end method

.method public constructor <init>(Lo1/n;)V
    .locals 14

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lmodule/sound/AudioDevice;-><init>(II)V

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, p0, Lmodule/sound/C3702;->I0:Z

    const-string v3, "C3702"

    .line 3
    iput-object v3, p0, Lmodule/sound/C3702;->J0:Ljava/lang/String;

    const/16 v3, 0x12

    new-array v3, v3, [I

    .line 4
    fill-array-data v3, :array_0

    iput-object v3, p0, Lmodule/sound/C3702;->K0:[I

    const/16 v3, 0x34

    new-array v3, v3, [I

    .line 5
    fill-array-data v3, :array_1

    iput-object v3, p0, Lmodule/sound/C3702;->L0:[I

    const/16 v4, 0x11

    new-array v4, v4, [I

    .line 6
    fill-array-data v4, :array_2

    iput-object v4, p0, Lmodule/sound/C3702;->M0:[I

    const/16 v4, 0x15

    new-array v4, v4, [I

    .line 7
    fill-array-data v4, :array_3

    iput-object v4, p0, Lmodule/sound/C3702;->N0:[I

    new-array v4, v0, [I

    .line 8
    fill-array-data v4, :array_4

    iput-object v4, p0, Lmodule/sound/C3702;->O0:[I

    new-array v4, v0, [I

    .line 9
    fill-array-data v4, :array_5

    iput-object v4, p0, Lmodule/sound/C3702;->P0:[I

    new-array v5, v0, [I

    .line 10
    fill-array-data v5, :array_6

    iput-object v5, p0, Lmodule/sound/C3702;->Q0:[I

    new-array v6, v0, [I

    .line 11
    fill-array-data v6, :array_7

    iput-object v6, p0, Lmodule/sound/C3702;->R0:[I

    new-array v7, v0, [I

    .line 12
    fill-array-data v7, :array_8

    iput-object v7, p0, Lmodule/sound/C3702;->S0:[I

    new-array v8, v0, [I

    .line 13
    fill-array-data v8, :array_9

    iput-object v8, p0, Lmodule/sound/C3702;->T0:[I

    new-array v9, v0, [I

    .line 14
    fill-array-data v9, :array_a

    iput-object v9, p0, Lmodule/sound/C3702;->U0:[I

    new-array v10, v0, [I

    .line 15
    fill-array-data v10, :array_b

    iput-object v10, p0, Lmodule/sound/C3702;->V0:[I

    new-array v11, v0, [I

    .line 16
    fill-array-data v11, :array_c

    iput-object v11, p0, Lmodule/sound/C3702;->W0:[I

    const/4 v12, 0x0

    .line 17
    iput-object v12, p0, Lmodule/sound/C3702;->X0:Lo1/n;

    const/4 v13, -0x1

    .line 18
    iput v13, p0, Lmodule/sound/C3702;->Y0:I

    .line 19
    iput-object v12, p0, Lmodule/sound/C3702;->Z0:[I

    .line 20
    sget-object v12, Lg/e;->a:Lg/g;

    check-cast v12, Lchip/Chip;

    invoke-virtual {v12, v1}, Lchip/Chip;->y(I)I

    move-result v12

    sput v12, Lmodule/sound/C3702;->c1:I

    .line 21
    iget-object v12, p0, Lmodule/sound/C3702;->O0:[I

    invoke-virtual {p0, v2, v12}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 22
    invoke-virtual {p0, v1, v4}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v1, 0x2

    .line 23
    invoke-virtual {p0, v1, v5}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 24
    invoke-virtual {p0, v0, v6}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v0, 0x4

    .line 25
    invoke-virtual {p0, v0, v7}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v0, 0x5

    .line 26
    invoke-virtual {p0, v0, v8}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v0, 0x6

    .line 27
    invoke-virtual {p0, v0, v9}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v0, 0x7

    .line 28
    invoke-virtual {p0, v0, v10}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/16 v0, 0x8

    .line 29
    invoke-virtual {p0, v0, v11}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 30
    sget-object v0, Lmodule/sound/C3702;->a1:[I

    const/16 v1, 0x83

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C3702;->I1([II)V

    .line 31
    invoke-virtual {p0, v3, v1}, Lmodule/sound/C3702;->J1([II)V

    .line 32
    iput-object p1, p0, Lmodule/sound/C3702;->X0:Lo1/n;

    return-void

    :array_0
    .array-data 4
        0xfe
        0x81
        0x1
        0xe7
        0x2
        0x3
        0x3
        0x19
        0x90
        0x30
        0x41
        0x10
        0x44
        0x11
        0x47
        0x1
        0x75
        0x60
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x26
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
        -0x1
        -0x2
        -0x3
        -0x4
        -0x5
        -0x6
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
    .end array-data

    :array_2
    .array-data 4
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0x83
        0x86
        0x89
        0x8c
        0x8f
        0x92
        0x95
        0xff
    .end array-data

    :array_3
    .array-data 4
        0x8a
        0x89
        0x88
        0x87
        0x86
        0x85
        0x84
        0x83
        0x82
        0x81
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

    :array_4
    .array-data 4
        0xa
        0xa
        0xa
    .end array-data

    :array_5
    .array-data 4
        0xa
        0xa
        0xa
    .end array-data

    :array_6
    .array-data 4
        0x10
        0xa
        0x10
    .end array-data

    :array_7
    .array-data 4
        0x10
        0xe
        0x10
    .end array-data

    :array_8
    .array-data 4
        0xe
        0xe
        0x8
    .end array-data

    :array_9
    .array-data 4
        0xe
        0xe
        0xc
    .end array-data

    :array_a
    .array-data 4
        0xa
        0xe
        0xe
    .end array-data

    :array_b
    .array-data 4
        0xa
        0xe
        0xc
    .end array-data

    :array_c
    .array-data 4
        0xe
        0xc
        0xa
    .end array-data
.end method


# virtual methods
.method public A1(IZ)V
    .locals 0

    if-ltz p1, :cond_2

    .line 1
    sget-object p2, Lmodule/sound/AudioDevice;->G0:[I

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lmodule/sound/AudioDevice;->g:I

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result p1

    .line 4
    sget-object p2, Lmodule/sound/C3702$REG;->d:Lmodule/sound/C3702$REG;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    :cond_2
    :goto_0
    return-void
.end method

.method public D1([II)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lmodule/sound/C3702;->H1(I)[I

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

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    aget v1, p2, v0

    iget-object v2, p0, Lmodule/sound/C3702;->N0:[I

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 2
    array-length v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget p2, p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lmodule/sound/C3702;->N0:[I

    aget p1, p1, p2

    iget-boolean p2, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz p2, :cond_0

    sget v0, Lmodule/sound/C3702;->d1:I

    :cond_0
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C3702;->G1(II)I

    move-result p1

    .line 4
    sget-object p2, Lmodule/sound/C3702$REG;->k:Lmodule/sound/C3702$REG;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_3

    .line 5
    iget-object p1, p0, Lmodule/sound/C3702;->N0:[I

    aget p1, p1, p2

    iget-boolean p2, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz p2, :cond_2

    sget v0, Lmodule/sound/C3702;->d1:I

    :cond_2
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C3702;->G1(II)I

    move-result p1

    .line 6
    sget-object p2, Lmodule/sound/C3702$REG;->l:Lmodule/sound/C3702$REG;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 7
    iget-object p1, p0, Lmodule/sound/C3702;->N0:[I

    aget p1, p1, p2

    iget-boolean p2, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz p2, :cond_4

    sget v0, Lmodule/sound/C3702;->e1:I

    :cond_4
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C3702;->G1(II)I

    move-result p1

    .line 8
    sget-object p2, Lmodule/sound/C3702$REG;->m:Lmodule/sound/C3702$REG;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    :cond_5
    :goto_0
    return-void
.end method

.method public F()V
    .locals 5

    .line 1
    sget-object v0, Lmodule/sound/C3702$CHANNEL;->g:Lmodule/sound/C3702$CHANNEL;

    iget v1, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 2
    sget-object v1, Lmodule/sound/C3702$CHANNEL;->b:Lmodule/sound/C3702$CHANNEL;

    iget v1, v1, Lmodule/sound/C3702$CHANNEL;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 3
    iget v1, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 4
    iget v1, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 5
    sget-object v1, Lmodule/sound/C3702$CHANNEL;->e:Lmodule/sound/C3702$CHANNEL;

    iget v2, v1, Lmodule/sound/C3702$CHANNEL;->a:I

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 6
    sget-object v2, Lmodule/sound/C3702$CHANNEL;->d:Lmodule/sound/C3702$CHANNEL;

    iget v3, v2, Lmodule/sound/C3702$CHANNEL;->a:I

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 7
    sget-object v3, Lmodule/sound/C3702$CHANNEL;->c:Lmodule/sound/C3702$CHANNEL;

    iget v3, v3, Lmodule/sound/C3702$CHANNEL;->a:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 8
    iget v3, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 9
    iget v3, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 10
    iget v3, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    const/16 v4, 0x9

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 11
    iget v3, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    const/16 v4, 0xa

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 12
    iget v3, v2, Lmodule/sound/C3702$CHANNEL;->a:I

    const/16 v4, 0xb

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 13
    iget v3, v2, Lmodule/sound/C3702$CHANNEL;->a:I

    const/16 v4, 0xc

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 14
    iget v2, v2, Lmodule/sound/C3702$CHANNEL;->a:I

    const/16 v3, 0xd

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 15
    iget v1, v1, Lmodule/sound/C3702$CHANNEL;->a:I

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 16
    iget v1, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 17
    iget v0, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    return-void
.end method

.method public F1([I)V
    .locals 5

    .line 1
    array-length v0, p1

    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    div-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 2
    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v4, v2

    aget v4, p1, v4

    aput v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C3702;->E1(I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G1(II)I
    .locals 1

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, 0x7f

    neg-int p1, p1

    :cond_0
    add-int/2addr p1, p2

    const/16 p2, 0x14

    const/16 v0, -0x14

    if-ge p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    move p1, p2

    :cond_2
    :goto_0
    if-gez p1, :cond_3

    neg-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    :cond_3
    return p1
.end method

.method public H1(I)[I
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

.method public I1([II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/sound/C3702;->K1([II)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->x([I)V

    return-void
.end method

.method public J1([II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/sound/C3702;->K1([II)[I

    move-result-object p1

    .line 2
    array-length p2, p1

    .line 3
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lmodule/sound/C3702;->Z0:[I

    return-void
.end method

.method public K1([II)[I
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 3
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    add-int/2addr v2, p2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs L1(I[I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/C3702;->X0:Lo1/n;

    if-eqz v0, :cond_0

    sget v1, Lmodule/sound/C3702;->c1:I

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

.method public M(II)V
    .locals 3

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, p1

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    .line 3
    :cond_0
    aput p2, v1, v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Lmodule/sound/C3702;->E1(I[I)V

    .line 5
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->M(II)V

    return-void
.end method

.method public M1(Lmodule/sound/C3702$REG;I)I
    .locals 2

    .line 1
    iget p1, p1, Lmodule/sound/C3702$REG;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C3702;->L1(I[I)I

    move-result p1

    return p1
.end method

.method public U(ILy/b;)Z
    .locals 7

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    new-array v0, v2, [I

    .line 1
    iget v3, p0, Lmodule/sound/AudioDevice;->k:I

    aput v3, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v3, v1

    .line 3
    :goto_0
    iget v4, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v1

    .line 4
    aget v5, v0, v3

    invoke-virtual {p0, v3}, Lmodule/sound/AudioDevice;->x0(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v2

    invoke-virtual {p0, p2, p1, v4}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->U(ILy/b;)Z

    move-result v1

    :goto_3
    return v1
.end method

.method public W0()V
    .locals 8

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->W0()V

    .line 2
    iget-object v0, p0, Lmodule/sound/C3702;->K0:[I

    array-length v0, v0

    .line 3
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-gez v2, :cond_1

    const-wide/16 v3, 0x208

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
    const/4 v4, 0x1

    if-ge v3, v0, :cond_4

    .line 6
    iget-object v2, p0, Lmodule/sound/C3702;->K0:[I

    mul-int/lit8 v5, v3, 0x2

    aget v6, v2, v5

    add-int/2addr v5, v4

    .line 7
    aget v2, v2, v5

    new-array v5, v4, [I

    aput v2, v5, v1

    .line 8
    invoke-virtual {p0, v6, v5}, Lmodule/sound/C3702;->L1(I[I)I

    move-result v5

    const/16 v7, 0x90

    if-ne v6, v7, :cond_2

    const/16 v6, 0x30

    if-ne v2, v6, :cond_2

    goto :goto_2

    :cond_2
    if-gez v5, :cond_3

    move v2, v5

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_1

    :cond_4
    :goto_3
    if-ltz v2, :cond_0

    .line 9
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-eqz v0, :cond_5

    sget v0, Ly0/f;->V0:I

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v1

    .line 10
    :cond_5
    sget-object v0, Lmodule/sound/C3702$REG;->i:Lmodule/sound/C3702$REG;

    sget-object v2, Lmodule/sound/C3702;->b1:[I

    aget v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    .line 11
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/C3702;->w0(I)V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lmodule/sound/C3702;->j([I)V

    .line 13
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->f:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C3702;->l(I)V

    .line 14
    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/C3702;->a(I)V

    .line 15
    sget v0, Ly0/f;->C0:I

    invoke-virtual {p0, v0, v4}, Lmodule/sound/C3702;->A1(IZ)V

    return-void
.end method

.method public a(I)V
    .locals 2

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

    and-int/lit8 v0, v0, 0xf

    if-gez v0, :cond_2

    .line 5
    sget-object v0, Lmodule/sound/C3702$CHANNEL;->g:Lmodule/sound/C3702$CHANNEL;

    iget v0, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    .line 6
    :cond_2
    sget-object v1, Lmodule/sound/C3702$REG;->b:Lmodule/sound/C3702$REG;

    invoke-virtual {p0, v1, v0}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    .line 7
    sget-object v0, Ly0/f;->z0:[I

    aget p1, v0, p1

    if-ltz p1, :cond_3

    const/16 v0, 0x30

    if-ge p1, v0, :cond_3

    .line 8
    sget-object v0, Ly0/f;->w0:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C3702;->m(II)V

    :cond_3
    return-void
.end method

.method public c1()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f1(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->A:Z

    .line 3
    iget v0, p0, Lmodule/sound/AudioDevice;->z:I

    invoke-virtual {p0, v0}, Lmodule/sound/C3702;->o(I)V

    .line 4
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

    if-eqz v3, :cond_1

    sget-boolean v3, Lu0/b;->j2:Z

    if-eqz v3, :cond_1

    .line 5
    sget-object p1, Ln0/j4;->d:Ln0/c4;

    invoke-virtual {p1}, Ln0/c4;->L2()[I

    move-result-object p1

    .line 6
    aget v0, p1, v0

    const/4 v2, 0x1

    .line 7
    aget v2, p1, v2

    move p1, v0

    .line 8
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    rsub-int/lit8 v3, p1, 0x10

    .line 9
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v1, v2

    .line 10
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 11
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 12
    sget-object v2, Lmodule/sound/C3702$REG;->e:Lmodule/sound/C3702$REG;

    iget-object v3, p0, Lmodule/sound/C3702;->M0:[I

    aget v0, v3, v0

    invoke-virtual {p0, v2, v0}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    .line 13
    sget-object v0, Lmodule/sound/C3702$REG;->f:Lmodule/sound/C3702$REG;

    iget-object v2, p0, Lmodule/sound/C3702;->M0:[I

    aget v2, v2, v4

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    .line 14
    sget-object v0, Lmodule/sound/C3702$REG;->g:Lmodule/sound/C3702$REG;

    iget-object v2, p0, Lmodule/sound/C3702;->M0:[I

    aget p1, v2, p1

    invoke-virtual {p0, v0, p1}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    .line 15
    sget-object p1, Lmodule/sound/C3702$REG;->h:Lmodule/sound/C3702$REG;

    iget-object v0, p0, Lmodule/sound/C3702;->M0:[I

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    const/4 p1, 0x0

    .line 16
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
    sget-object p1, Lmodule/sound/C3702$CHANNEL;->g:Lmodule/sound/C3702$CHANNEL;

    iget p1, p1, Lmodule/sound/C3702$CHANNEL;->a:I

    .line 3
    :cond_0
    sget-object v0, Lmodule/sound/C3702$CHANNEL;->g:Lmodule/sound/C3702$CHANNEL;

    iget v0, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->f:Z

    .line 2
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->l(I)V

    .line 3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {p0, p1}, Lmodule/sound/C3702;->F1([I)V

    return-void
.end method

.method public m(II)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x30

    if-ge p1, v0, :cond_0

    .line 1
    sget v0, Lu0/b;->D:I

    if-ltz v0, :cond_0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 2
    sget-object v1, Ly0/f;->z0:[I

    aget v0, v1, v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    const/16 v0, 0xa

    .line 3
    invoke-static {p2, p1, v0}, Lo1/o0;->a(III)I

    move-result p1

    .line 4
    sget-object p2, Lmodule/sound/C3702$REG;->c:Lmodule/sound/C3702$REG;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    :cond_0
    return-void
.end method

.method public m0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->m0()V

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
    iput p1, p0, Lmodule/sound/C3702;->Y0:I

    .line 2
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->D:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    .line 3
    :goto_1
    sget-object p1, Lmodule/sound/C3702$REG;->i:Lmodule/sound/C3702$REG;

    sget-object v0, Lmodule/sound/C3702;->b1:[I

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    .line 4
    iget p1, p0, Lmodule/sound/C3702;->Y0:I

    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->o(I)V

    return-void
.end method

.method public p0()I
    .locals 1

    const/16 v0, 0x71

    return v0
.end method

.method public q0()I
    .locals 1

    const/16 v0, 0xf0

    return v0
.end method

.method public r0(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lmodule/sound/C3702;->Z0:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmodule/sound/C3702;->p0()I

    move-result v0

    iget-object v1, p0, Lmodule/sound/C3702;->Z0:[I

    aget p1, v1, p1

    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->F0()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lmodule/sound/C3702;->q0()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    :goto_0
    sget-object v0, Lmodule/sound/C3702$REG;->j:Lmodule/sound/C3702$REG;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/C3702;->M1(Lmodule/sound/C3702$REG;I)I

    return-void
.end method

.method public w0(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/C3702;->H1(I)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {p0, v1, p1}, Lmodule/sound/C3702;->D1([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lmodule/sound/AudioDevice;->j:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p1, p0}, Ly0/h;->H([I[I[IILmodule/sound/AudioDevice;)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lmodule/sound/C3702;->F1([I)V

    return-void
.end method
