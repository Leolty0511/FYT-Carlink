.class public Lmodule/sound/C2313;
.super Lmodule/sound/AudioDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/sound/C2313$REG;,
        Lmodule/sound/C2313$CHANNEL;
    }
.end annotation


# static fields
.field public static i1:I = 0x44


# instance fields
.field public final I0:Z

.field public final J0:Ljava/lang/String;

.field public K0:[I

.field public L0:[I

.field public M0:[I

.field public final N0:[I

.field public final O0:[I

.field public P0:[I

.field public final Q0:[I

.field public final R0:[I

.field public final S0:[I

.field public final T0:[I

.field public final U0:[I

.field public final V0:[I

.field public final W0:[I

.field public final X0:[I

.field public Y0:Lo1/n;

.field public Z0:Z

.field public a1:I

.field public b1:I

.field public c1:I

.field public d1:I

.field public e1:I

.field public f1:I

.field public g1:I

.field public h1:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo1/n;)V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lmodule/sound/AudioDevice;-><init>(II)V

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, p0, Lmodule/sound/C2313;->I0:Z

    const-string v3, "C2313"

    .line 3
    iput-object v3, p0, Lmodule/sound/C2313;->J0:Ljava/lang/String;

    const/16 v3, 0x25

    new-array v3, v3, [I

    .line 4
    fill-array-data v3, :array_0

    iput-object v3, p0, Lmodule/sound/C2313;->K0:[I

    const/16 v3, 0x11

    new-array v3, v3, [I

    .line 5
    fill-array-data v3, :array_1

    iput-object v3, p0, Lmodule/sound/C2313;->L0:[I

    const/16 v3, 0xf

    new-array v3, v3, [I

    .line 6
    fill-array-data v3, :array_2

    iput-object v3, p0, Lmodule/sound/C2313;->M0:[I

    const/4 v3, 0x4

    new-array v4, v3, [I

    .line 7
    fill-array-data v4, :array_3

    iput-object v4, p0, Lmodule/sound/C2313;->N0:[I

    new-array v4, v0, [I

    .line 8
    fill-array-data v4, :array_4

    iput-object v4, p0, Lmodule/sound/C2313;->O0:[I

    new-array v4, v0, [I

    .line 9
    fill-array-data v4, :array_5

    iput-object v4, p0, Lmodule/sound/C2313;->P0:[I

    new-array v5, v0, [I

    .line 10
    fill-array-data v5, :array_6

    iput-object v5, p0, Lmodule/sound/C2313;->Q0:[I

    new-array v6, v0, [I

    .line 11
    fill-array-data v6, :array_7

    iput-object v6, p0, Lmodule/sound/C2313;->R0:[I

    new-array v7, v0, [I

    .line 12
    fill-array-data v7, :array_8

    iput-object v7, p0, Lmodule/sound/C2313;->S0:[I

    new-array v8, v0, [I

    .line 13
    fill-array-data v8, :array_9

    iput-object v8, p0, Lmodule/sound/C2313;->T0:[I

    new-array v9, v0, [I

    .line 14
    fill-array-data v9, :array_a

    iput-object v9, p0, Lmodule/sound/C2313;->U0:[I

    new-array v10, v0, [I

    .line 15
    fill-array-data v10, :array_b

    iput-object v10, p0, Lmodule/sound/C2313;->V0:[I

    new-array v11, v0, [I

    .line 16
    fill-array-data v11, :array_c

    iput-object v11, p0, Lmodule/sound/C2313;->W0:[I

    new-array v12, v0, [I

    .line 17
    fill-array-data v12, :array_d

    iput-object v12, p0, Lmodule/sound/C2313;->X0:[I

    const/4 v13, 0x0

    .line 18
    iput-object v13, p0, Lmodule/sound/C2313;->Y0:Lo1/n;

    .line 19
    iput-boolean v2, p0, Lmodule/sound/C2313;->Z0:Z

    .line 20
    invoke-virtual {p0, v2, v4}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 21
    invoke-virtual {p0, v1, v5}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 22
    invoke-virtual {p0, v0, v6}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v0, 0x3

    .line 23
    invoke-virtual {p0, v0, v7}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 24
    invoke-virtual {p0, v3, v8}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v0, 0x5

    .line 25
    invoke-virtual {p0, v0, v9}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v0, 0x6

    .line 26
    invoke-virtual {p0, v0, v10}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v0, 0x7

    .line 27
    invoke-virtual {p0, v0, v11}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/16 v0, 0x8

    .line 28
    invoke-virtual {p0, v0, v12}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 29
    sput-boolean v1, Lu0/b;->V3:Z

    .line 30
    iput-boolean v2, p0, Lmodule/sound/AudioDevice;->K:Z

    .line 31
    iget-object v0, p0, Lmodule/sound/C2313;->K0:[I

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->x([I)V

    .line 32
    iput-object p1, p0, Lmodule/sound/C2313;->Y0:Lo1/n;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f
        0x32
        0x28
        0x23
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
    .end array-data

    :array_1
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
        0x3
        0x6
        0x9
        0xc
        0x10
        0x14
        0x18
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0xe
        0xd
        0xc
        0xb
        0xa
        0x9
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x18
        0x10
        0x8
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xa
        0xa
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xa
    .end array-data

    :array_7
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_8
    .array-data 4
        0xf
        0xd
    .end array-data

    :array_9
    .array-data 4
        0xe
        0x8
    .end array-data

    :array_a
    .array-data 4
        0xe
        0xc
    .end array-data

    :array_b
    .array-data 4
        0xa
        0xe
    .end array-data

    :array_c
    .array-data 4
        0xa
        0xc
    .end array-data

    :array_d
    .array-data 4
        0xe
        0xa
    .end array-data
.end method


# virtual methods
.method public A1(IZ)V
    .locals 1

    if-ltz p1, :cond_3

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-eq p1, p2, :cond_2

    :cond_1
    iput p1, p0, Lmodule/sound/AudioDevice;->g:I

    .line 3
    :cond_2
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->M1(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public D1(I)V
    .locals 3

    int-to-float p1, p1

    .line 1
    iget-object v0, p0, Lmodule/sound/C2313;->M0:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 2
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    sget-object v0, Lmodule/sound/C2313$REG;->h:Lmodule/sound/C2313$REG;

    iget v0, v0, Lmodule/sound/C2313$REG;->a:I

    iget-object v1, p0, Lmodule/sound/C2313;->M0:[I

    aget p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lmodule/sound/C2313;->g1:I

    .line 4
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->N1(I)I

    return-void
.end method

.method public E1(I)V
    .locals 2

    .line 1
    iget v0, p0, Lmodule/sound/C2313;->f1:I

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lmodule/sound/C2313;->f1:I

    .line 2
    sget-object v1, Lmodule/sound/C2313$REG;->g:Lmodule/sound/C2313$REG;

    iget v1, v1, Lmodule/sound/C2313$REG;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lmodule/sound/C2313;->f1:I

    and-int/lit8 v0, v0, -0x4

    .line 3
    iput v0, p0, Lmodule/sound/C2313;->f1:I

    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lmodule/sound/C2313;->f1:I

    .line 5
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->N1(I)I

    return-void
.end method

.method public F()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/sound/C2313$CHANNEL;->b:Lmodule/sound/C2313$CHANNEL;

    iget v1, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 2
    sget-object v1, Lmodule/sound/C2313$CHANNEL;->c:Lmodule/sound/C2313$CHANNEL;

    iget v1, v1, Lmodule/sound/C2313$CHANNEL;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 3
    iget v1, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 4
    iget v1, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 5
    sget-object v1, Lmodule/sound/C2313$CHANNEL;->d:Lmodule/sound/C2313$CHANNEL;

    iget v2, v1, Lmodule/sound/C2313$CHANNEL;->a:I

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 6
    iget v2, v1, Lmodule/sound/C2313$CHANNEL;->a:I

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 7
    iget v2, v1, Lmodule/sound/C2313$CHANNEL;->a:I

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 8
    iget v2, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    const/4 v3, 0x7

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 9
    iget v2, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 10
    iget v2, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 11
    iget v2, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 12
    iget v2, v1, Lmodule/sound/C2313$CHANNEL;->a:I

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 13
    iget v2, v1, Lmodule/sound/C2313$CHANNEL;->a:I

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 14
    iget v1, v1, Lmodule/sound/C2313$CHANNEL;->a:I

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 15
    iget v1, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 16
    iget v1, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 17
    iget v0, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    return-void
.end method

.method public F1(I)V
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/C2313$REG;->e:Lmodule/sound/C2313$REG;

    iget v0, v0, Lmodule/sound/C2313$REG;->a:I

    iget-object v1, p0, Lmodule/sound/C2313;->L0:[I

    aget p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lmodule/sound/C2313;->b1:I

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->N1(I)I

    return-void
.end method

.method public G1(I)V
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/C2313$REG;->f:Lmodule/sound/C2313$REG;

    iget v0, v0, Lmodule/sound/C2313$REG;->a:I

    iget-object v1, p0, Lmodule/sound/C2313;->L0:[I

    aget p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lmodule/sound/C2313;->c1:I

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->N1(I)I

    return-void
.end method

.method public H1(I)V
    .locals 2

    .line 1
    iget v0, p0, Lmodule/sound/C2313;->f1:I

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lmodule/sound/C2313;->f1:I

    .line 2
    sget-object v1, Lmodule/sound/C2313$REG;->g:Lmodule/sound/C2313$REG;

    iget v1, v1, Lmodule/sound/C2313$REG;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lmodule/sound/C2313;->f1:I

    and-int/lit8 v0, v0, -0x19

    .line 3
    iput v0, p0, Lmodule/sound/C2313;->f1:I

    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lmodule/sound/C2313;->f1:I

    .line 5
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->N1(I)I

    return-void
.end method

.method public I1(I)V
    .locals 2

    .line 1
    iget v0, p0, Lmodule/sound/C2313;->f1:I

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lmodule/sound/C2313;->f1:I

    .line 2
    sget-object v1, Lmodule/sound/C2313$REG;->g:Lmodule/sound/C2313$REG;

    iget v1, v1, Lmodule/sound/C2313$REG;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lmodule/sound/C2313;->f1:I

    and-int/lit8 v0, v0, -0x5

    .line 3
    iput v0, p0, Lmodule/sound/C2313;->f1:I

    .line 4
    iget-object v1, p0, Lmodule/sound/C2313;->O0:[I

    aget p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lmodule/sound/C2313;->f1:I

    .line 5
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->N1(I)I

    return-void
.end method

.method public J1(I)V
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/C2313$REG;->c:Lmodule/sound/C2313$REG;

    iget v0, v0, Lmodule/sound/C2313$REG;->a:I

    iget-object v1, p0, Lmodule/sound/C2313;->L0:[I

    aget p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lmodule/sound/C2313;->d1:I

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->N1(I)I

    return-void
.end method

.method public K1(I)V
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/C2313$REG;->d:Lmodule/sound/C2313$REG;

    iget v0, v0, Lmodule/sound/C2313$REG;->a:I

    iget-object v1, p0, Lmodule/sound/C2313;->L0:[I

    aget p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lmodule/sound/C2313;->e1:I

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->N1(I)I

    return-void
.end method

.method public L1(I)V
    .locals 3

    int-to-float p1, p1

    .line 1
    iget-object v0, p0, Lmodule/sound/C2313;->M0:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 2
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    sget-object v0, Lmodule/sound/C2313$REG;->i:Lmodule/sound/C2313$REG;

    iget v0, v0, Lmodule/sound/C2313$REG;->a:I

    iget-object v1, p0, Lmodule/sound/C2313;->M0:[I

    aget p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lmodule/sound/C2313;->h1:I

    .line 4
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->N1(I)I

    return-void
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
    invoke-virtual {p0, v0, v1}, Lmodule/sound/C2313;->P1(I[I)V

    .line 5
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->M(II)V

    return-void
.end method

.method public M1(I)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/C2313$REG;->b:Lmodule/sound/C2313$REG;

    iget v0, v0, Lmodule/sound/C2313$REG;->a:I

    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lmodule/sound/C2313;->a1:I

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->N1(I)I

    return-void
.end method

.method public N1(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/sound/C2313;->Y0:Lo1/n;

    sget v1, Lmodule/sound/C2313;->i1:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    new-array v2, v2, [I

    aput p1, v2, v4

    invoke-virtual {v0, v1, v3, v2}, Lo1/n;->d(I[I[I)I

    move-result p1

    return p1
.end method

.method public O1([II)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lmodule/sound/C2313;->R1(I)[I

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

.method public varargs P1(I[I)V
    .locals 3

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    array-length v1, p2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget v1, p2, v0

    const/16 v2, 0x14

    if-gt v1, v2, :cond_1

    .line 2
    sget v1, Ly0/f;->f0:I

    aget p2, p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lmodule/sound/C2313;->D1(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Lmodule/sound/C2313;->L1(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Q1([I)V
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

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C2313;->P1(I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public R1(I)[I
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
    .locals 2

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->W0()V

    const/4 v0, 0x0

    :cond_0
    if-gez v0, :cond_1

    const-wide/16 v0, 0x208

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    const/16 v0, 0x80

    .line 4
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->N1(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 5
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->w0(I)V

    .line 6
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->f:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->l(I)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->j([I)V

    .line 8
    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->a(I)V

    .line 9
    sget v0, Ly0/f;->C0:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C2313;->A1(IZ)V

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
    sget-object v0, Lmodule/sound/C2313$CHANNEL;->b:Lmodule/sound/C2313$CHANNEL;

    iget v0, v0, Lmodule/sound/C2313$CHANNEL;->a:I

    .line 6
    :cond_2
    sget-object v1, Lmodule/sound/C2313$CHANNEL;->b:Lmodule/sound/C2313$CHANNEL;

    iget v1, v1, Lmodule/sound/C2313$CHANNEL;->a:I

    .line 7
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->E1(I)V

    .line 8
    sget-object v0, Ly0/f;->z0:[I

    aget p1, v0, p1

    if-ltz p1, :cond_3

    const/16 v0, 0x30

    if-ge p1, v0, :cond_3

    .line 9
    sget-object v0, Ly0/f;->w0:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C2313;->m(II)V

    :cond_3
    return-void
.end method

.method public c1()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->K:Z

    return v0
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
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->F1(I)V

    .line 13
    invoke-virtual {p0, v4}, Lmodule/sound/C2313;->G1(I)V

    .line 14
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->J1(I)V

    .line 15
    invoke-virtual {p0, v1}, Lmodule/sound/C2313;->K1(I)V

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
    sget-object p1, Lmodule/sound/C2313$CHANNEL;->b:Lmodule/sound/C2313$CHANNEL;

    iget p1, p1, Lmodule/sound/C2313$CHANNEL;->a:I

    .line 3
    :cond_0
    sget-object v0, Lmodule/sound/C2313$CHANNEL;->b:Lmodule/sound/C2313$CHANNEL;

    iget v0, v0, Lmodule/sound/C2313$CHANNEL;->a:I

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
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->f:Z

    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->I1(I)V

    return-void
.end method

.method public m(II)V
    .locals 3

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

    const/16 p1, 0xa

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, p1}, Lo1/o0;->a(III)I

    move-result p1

    int-to-float p1, p1

    .line 4
    iget-object p2, p0, Lmodule/sound/C2313;->N0:[I

    array-length v1, p2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 5
    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, v0, p2}, Lo1/o0;->a(III)I

    move-result p1

    .line 6
    iget-object p2, p0, Lmodule/sound/C2313;->N0:[I

    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->H1(I)V

    :cond_0
    return-void
.end method

.method public m0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->m0()V

    return-void
.end method

.method public p0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q0()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public r0(I)V
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======================   mix   mix   vol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "C2313"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->K:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    .line 4
    sget v1, Ly0/f;->J:I

    if-eqz v1, :cond_6

    sget v1, Ly0/f;->L:I

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "   mix   vol : "

    const-string v5, "======================   isSupportNaviMix "

    if-lez p1, :cond_4

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lmodule/sound/AudioDevice;->K:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vol : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget p1, Ly0/f;->T0:I

    if-eqz p1, :cond_1

    iget p1, p0, Lmodule/sound/AudioDevice;->l:I

    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->j0(I)I

    move-result p1

    if-eq p1, v4, :cond_1

    .line 7
    invoke-virtual {p0, v3}, Lmodule/sound/C2313;->a(I)V

    .line 8
    iput-boolean v4, p0, Lmodule/sound/C2313;->Z0:Z

    goto/16 :goto_2

    .line 9
    :cond_1
    sget p1, Ly0/f;->T0:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lmodule/sound/C2313;->Z0:Z

    if-eqz p1, :cond_2

    .line 10
    iput-boolean v3, p0, Lmodule/sound/C2313;->Z0:Z

    .line 11
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->a(I)V

    .line 12
    :cond_2
    sget p1, Ly0/f;->L:I

    const/16 v1, 0x14

    if-ge p1, v1, :cond_a

    .line 13
    iget-object p1, p0, Lmodule/sound/C2313;->N0:[I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    aget p1, p1, v3

    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->H1(I)V

    goto/16 :goto_2

    .line 14
    :cond_4
    iget-boolean p1, p0, Lmodule/sound/C2313;->Z0:Z

    if-eqz p1, :cond_5

    .line 15
    iput-boolean v3, p0, Lmodule/sound/C2313;->Z0:Z

    .line 16
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->a(I)V

    goto/16 :goto_2

    .line 17
    :cond_5
    sget p1, Lu0/b;->D:I

    .line 18
    sget-object v0, Ly0/f;->z0:[I

    aget p1, v0, p1

    .line 19
    sget-object v0, Ly0/f;->w0:[I

    aget p1, v0, p1

    int-to-float p1, p1

    .line 20
    iget-object v0, p0, Lmodule/sound/C2313;->N0:[I

    array-length v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    mul-float/2addr p1, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr p1, v6

    float-to-int p1, p1

    .line 21
    array-length v0, v0

    sub-int/2addr v0, v4

    invoke-static {p1, v3, v0}, Lo1/o0;->a(III)I

    move-result p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->K:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lmodule/sound/C2313;->N0:[I

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->H1(I)V

    goto :goto_2

    :cond_6
    :goto_1
    if-lez p1, :cond_7

    .line 24
    iget v1, p0, Lmodule/sound/AudioDevice;->l:I

    invoke-virtual {p0, v1}, Lmodule/sound/C2313;->j0(I)I

    move-result v1

    if-eq v1, v4, :cond_7

    .line 25
    invoke-virtual {p0, v3}, Lmodule/sound/C2313;->a(I)V

    .line 26
    iput-boolean v4, p0, Lmodule/sound/C2313;->Z0:Z

    goto :goto_2

    :cond_7
    if-gtz p1, :cond_a

    .line 27
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->j0(I)I

    move-result p1

    if-eq p1, v4, :cond_a

    .line 28
    iput-boolean v3, p0, Lmodule/sound/C2313;->Z0:Z

    .line 29
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->a(I)V

    goto :goto_2

    :cond_8
    if-lez p1, :cond_9

    .line 30
    iget v1, p0, Lmodule/sound/AudioDevice;->l:I

    invoke-virtual {p0, v1}, Lmodule/sound/C2313;->j0(I)I

    move-result v1

    if-eq v1, v4, :cond_9

    .line 31
    invoke-virtual {p0, v3}, Lmodule/sound/C2313;->a(I)V

    goto :goto_2

    :cond_9
    if-gtz p1, :cond_a

    .line 32
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->j0(I)I

    move-result p1

    if-eq p1, v4, :cond_a

    .line 33
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->a(I)V

    :cond_a
    :goto_2
    return-void
.end method

.method public w0(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/C2313;->R1(I)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {p0, v1, p1}, Lmodule/sound/C2313;->O1([II)Z

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
    invoke-virtual {p0, v0}, Lmodule/sound/C2313;->Q1([I)V

    return-void
.end method
