.class public Lf1/k;
.super Lf1/q;
.source "SourceFile"


# instance fields
.field public final A0:B

.field public final B0:B

.field public final C0:B

.field public final D0:B

.field public final E0:B

.field public final F0:B

.field public final G0:B

.field public final H0:B

.field public final I0:B

.field public final J0:B

.field public final K0:B

.field public final L0:Z

.field public final M0:Z

.field public final N0:Z

.field public final O0:Z

.field public final P:Z

.field public final P0:I

.field public Q:Z

.field public final Q0:I

.field public R:Z

.field public R0:Z

.field public S:Lo1/l0;

.field public S0:Z

.field public T:Lo1/l0;

.field public T0:Z

.field public U:I

.field public U0:Z

.field public V:Landroid/util/SparseIntArray;

.field public V0:Z

.field public final W:I

.field public W0:I

.field public final X:I

.field public X0:I

.field public final Y:I

.field public Y0:Z

.field public final Z:I

.field public Z0:I

.field public final a0:I

.field public final b0:I

.field public final c0:I

.field public final d0:I

.field public final e0:I

.field public final f0:I

.field public final g0:I

.field public final h0:I

.field public final i0:I

.field public final j0:I

.field public final k0:I

.field public final l0:I

.field public final m0:I

.field public final n0:I

.field public final o0:I

.field public final p0:I

.field public final q0:I

.field public final r0:[I

.field public final s0:[I

.field public final t0:[I

.field public final u0:[B

.field public final v0:B

.field public final w0:B

.field public final x0:B

.field public final y0:B

.field public final z0:B


# direct methods
.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 6

    const/16 v1, 0xd

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/q;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf1/k;->P:Z

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lf1/k;->Q:Z

    .line 4
    iput-boolean p2, p0, Lf1/k;->R:Z

    .line 5
    new-instance p3, Lo1/l0;

    invoke-direct {p3}, Lo1/l0;-><init>()V

    iput-object p3, p0, Lf1/k;->S:Lo1/l0;

    .line 6
    new-instance p3, Lo1/l0;

    invoke-direct {p3}, Lo1/l0;-><init>()V

    iput-object p3, p0, Lf1/k;->T:Lo1/l0;

    const/4 p3, -0x1

    .line 7
    iput p3, p0, Lf1/k;->U:I

    .line 8
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p3, p0, Lf1/k;->V:Landroid/util/SparseIntArray;

    const/16 p3, 0x20

    .line 9
    iput p3, p0, Lf1/k;->W:I

    .line 10
    iput p3, p0, Lf1/k;->X:I

    const/16 p4, 0x2f

    .line 11
    iput p4, p0, Lf1/k;->Y:I

    .line 12
    iput p2, p0, Lf1/k;->Z:I

    const/4 p4, 0x3

    .line 13
    iput p4, p0, Lf1/k;->a0:I

    .line 14
    iput p4, p0, Lf1/k;->b0:I

    const/16 p4, 0x9c4

    .line 15
    iput p4, p0, Lf1/k;->c0:I

    const/16 p4, 0xff

    .line 16
    iput p4, p0, Lf1/k;->d0:I

    const/16 p4, 0x14

    .line 17
    iput p4, p0, Lf1/k;->e0:I

    const/16 p4, 0x6992

    .line 18
    iput p4, p0, Lf1/k;->f0:I

    const p4, 0x83f6

    .line 19
    iput p4, p0, Lf1/k;->g0:I

    const p4, 0x9e5b

    .line 20
    iput p4, p0, Lf1/k;->h0:I

    const p4, 0x12209

    .line 21
    iput p4, p0, Lf1/k;->i0:I

    const p4, 0x16a8b

    .line 22
    iput p4, p0, Lf1/k;->j0:I

    const p4, 0x1b30e

    .line 23
    iput p4, p0, Lf1/k;->k0:I

    const p4, 0x24412

    .line 24
    iput p4, p0, Lf1/k;->l0:I

    const p4, 0x2d517

    .line 25
    iput p4, p0, Lf1/k;->m0:I

    const p4, 0x3661c

    .line 26
    iput p4, p0, Lf1/k;->n0:I

    const p4, 0x486fd

    .line 27
    iput p4, p0, Lf1/k;->o0:I

    const p4, 0x3d090

    .line 28
    iput p4, p0, Lf1/k;->p0:I

    const p4, 0x53020

    .line 29
    iput p4, p0, Lf1/k;->q0:I

    const/16 p4, 0xf

    new-array v0, p4, [I

    .line 30
    fill-array-data v0, :array_0

    iput-object v0, p0, Lf1/k;->r0:[I

    new-array v0, p4, [I

    .line 31
    fill-array-data v0, :array_1

    iput-object v0, p0, Lf1/k;->s0:[I

    new-array v0, p4, [I

    .line 32
    fill-array-data v0, :array_2

    iput-object v0, p0, Lf1/k;->t0:[I

    new-array p4, p4, [B

    .line 33
    fill-array-data p4, :array_3

    iput-object p4, p0, Lf1/k;->u0:[B

    .line 34
    iput-byte p1, p0, Lf1/k;->v0:B

    .line 35
    iput-byte p2, p0, Lf1/k;->w0:B

    const/4 p4, 0x2

    .line 36
    iput-byte p4, p0, Lf1/k;->x0:B

    .line 37
    iput-byte p2, p0, Lf1/k;->y0:B

    const/4 v0, 0x4

    .line 38
    iput-byte v0, p0, Lf1/k;->z0:B

    .line 39
    iput-byte p2, p0, Lf1/k;->A0:B

    const/16 v1, 0x8

    .line 40
    iput-byte v1, p0, Lf1/k;->B0:B

    .line 41
    iput-byte p2, p0, Lf1/k;->C0:B

    .line 42
    iput-byte p1, p0, Lf1/k;->D0:B

    .line 43
    iput-byte p4, p0, Lf1/k;->E0:B

    .line 44
    iput-byte v0, p0, Lf1/k;->F0:B

    .line 45
    iput-byte v1, p0, Lf1/k;->G0:B

    const/16 p4, 0x10

    .line 46
    iput-byte p4, p0, Lf1/k;->H0:B

    .line 47
    iput-byte p3, p0, Lf1/k;->I0:B

    const/16 p3, 0x40

    .line 48
    iput-byte p3, p0, Lf1/k;->J0:B

    const/16 p3, -0x80

    .line 49
    iput-byte p3, p0, Lf1/k;->K0:B

    .line 50
    iput-boolean p2, p0, Lf1/k;->L0:Z

    .line 51
    iput-boolean p1, p0, Lf1/k;->M0:Z

    .line 52
    iput-boolean p2, p0, Lf1/k;->N0:Z

    .line 53
    iput-boolean p1, p0, Lf1/k;->O0:Z

    const/16 p1, 0x2800

    .line 54
    iput p1, p0, Lf1/k;->P0:I

    const/16 p1, 0x4000

    .line 55
    iput p1, p0, Lf1/k;->Q0:I

    .line 56
    iput-boolean p2, p0, Lf1/k;->R0:Z

    .line 57
    iput p2, p0, Lf1/k;->Z0:I

    return-void

    nop

    :array_0
    .array-data 4
        0x4c
        0xc
        0x74
        0x34
        0x54
        0x14
        0x64
        0x24
        0x44
        0x4
        0x78
        0x38
        0x58
        0x18
        0x68
    .end array-data

    :array_1
    .array-data 4
        0x4c
        0xc
        0x74
        0x34
        0x54
        0x14
        0x64
        0x24
        0x44
        0x4
        0x78
        0x38
        0x58
        0x18
        0x68
    .end array-data

    :array_2
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public A0(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lf1/k;->R0:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lf1/k;->Y0:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf1/k;->e0()Z

    move-result v0

    iput-boolean v0, p0, Lf1/k;->Y0:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xa6

    if-eqz p1, :cond_4

    .line 4
    iget-boolean p1, p0, Lf1/k;->T0:Z

    const/16 v1, 0xa5

    const/16 v2, 0xa4

    const/16 v3, 0xa2

    const/16 v4, 0xe4

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, v4}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x2f

    .line 6
    invoke-virtual {p0, v4, p1}, Lf1/k;->Z(II)I

    .line 7
    invoke-virtual {p0, v3}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x3

    .line 8
    invoke-virtual {p0, v3, p1}, Lf1/k;->Z(II)I

    .line 9
    invoke-virtual {p0, v2}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x3

    .line 10
    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    .line 11
    invoke-virtual {p0, v1}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x3

    .line 12
    invoke-virtual {p0, v1, p1}, Lf1/k;->Z(II)I

    .line 13
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result p1

    or-int/lit8 p1, p1, 0x30

    .line 14
    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    goto :goto_0

    .line 15
    :cond_2
    iget p1, p0, Lf1/k;->W0:I

    const v5, 0x3d090

    if-gt p1, v5, :cond_3

    .line 16
    invoke-virtual {p0, v4}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x20

    .line 17
    invoke-virtual {p0, v4, p1}, Lf1/k;->Z(II)I

    .line 18
    invoke-virtual {p0, v3}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x0

    .line 19
    invoke-virtual {p0, v3, p1}, Lf1/k;->Z(II)I

    .line 20
    invoke-virtual {p0, v2}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x0

    .line 21
    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    .line 22
    invoke-virtual {p0, v1}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x0

    .line 23
    invoke-virtual {p0, v1, p1}, Lf1/k;->Z(II)I

    .line 24
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result p1

    or-int/lit8 p1, p1, 0x30

    .line 25
    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {p0, v4}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x20

    .line 27
    invoke-virtual {p0, v4, p1}, Lf1/k;->Z(II)I

    .line 28
    invoke-virtual {p0, v3}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x3

    .line 29
    invoke-virtual {p0, v3, p1}, Lf1/k;->Z(II)I

    .line 30
    invoke-virtual {p0, v2}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x3

    .line 31
    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    .line 32
    invoke-virtual {p0, v1}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xc0

    or-int/lit8 p1, p1, 0x3

    .line 33
    invoke-virtual {p0, v1, p1}, Lf1/k;->Z(II)I

    .line 34
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result p1

    or-int/lit8 p1, p1, 0x30

    .line 35
    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    :goto_0
    const/16 p1, 0xe5

    const/16 v0, 0x3c

    .line 36
    invoke-virtual {p0, p1, v0}, Lf1/k;->Z(II)I

    goto :goto_1

    .line 37
    :cond_4
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xcf

    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    :goto_1
    return-void
.end method

.method public B0()Z
    .locals 2

    const/16 v0, 0xa0

    const/16 v1, 0x50

    .line 1
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    const/16 v1, 0x9f

    .line 2
    invoke-virtual {p0, v1, v0}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xb

    .line 3
    invoke-virtual {p0, v1, v0}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C0(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public D()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lf1/q;->D()V

    const-string v0, "Chip8641"

    const-string v1, "==============================>> RESET  Waiting onUEvent START 1"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v1, p0, Lf1/q;->h:I

    invoke-static {v1}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    const-string v1, "==============================>> RESET Waiting onUEvent END 1"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public D0(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->f:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public E0(Z)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x3

    if-eqz p1, :cond_1

    .line 2
    iget v3, p0, Lf1/q;->B:I

    if-ge v3, v2, :cond_3

    add-int/2addr v3, v1

    .line 3
    iput v3, p0, Lf1/q;->B:I

    goto :goto_0

    .line 4
    :cond_1
    iget v3, p0, Lf1/q;->B:I

    if-lez v3, :cond_3

    if-ne v3, v2, :cond_2

    .line 5
    iput v0, p0, Lf1/q;->B:I

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    sub-int/2addr v3, v1

    .line 6
    iput v3, p0, Lf1/q;->B:I

    .line 7
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  hasSignal()  SURE : imagType :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " last  imagFormat :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tmp signalOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lf1/k;->Q:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " checkCnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " signal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Chip8641"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget p1, p0, Lf1/q;->B:I

    if-lt p1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    return v1
.end method

.method public F0(I)V
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-static {v0, p1}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    return-void
.end method

.method public G0(I)V
    .locals 1

    const/16 v0, 0xe

    .line 1
    invoke-static {v0, p1}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    return-void
.end method

.method public H0()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/k;->U:I

    .line 2
    invoke-virtual {p0, v0}, Lf1/q;->w(I)I

    move-result v0

    return v0
.end method

.method public I0(II)[I
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/16 p1, 0x2b

    invoke-interface {v0, p2, p1, v1, v2}, Lp1/a;->e(IIZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method public J0()Z
    .locals 6

    .line 1
    iget v0, p0, Lf1/q;->i:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    move v0, v3

    goto :goto_0

    :pswitch_3
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const/16 v4, 0xf7

    .line 2
    invoke-virtual {p0, v4}, Lf1/k;->X(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v5, 0xf5

    invoke-virtual {p0, v5}, Lf1/k;->X(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "  0xF7 : %02X   0xF5 : %02X"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Chip8641"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, v4}, Lf1/k;->X(I)I

    move-result v1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lf1/k;->Q:Z

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs K0(I[I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lf1/q;->v:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lf1/q;->w:I

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput p1, v1, v3

    invoke-interface {v0, v2, v1, p2}, Lp1/a;->d(I[I[I)I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public varargs L0(I[I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lf1/q;->v:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-array v4, v1, [I

    aput p1, v4, v3

    invoke-interface {v0, v2, v4, p2}, Lp1/a;->d(I[I[I)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WRITE 2 6911C  [%02X  - %02X "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p2

    invoke-static {p2, v3, v6}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  result : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " i2c: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lf1/q;->u:Lp1/a;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Chip8641"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public M()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 8641 setup() loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8641"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lf1/k;->D()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public X(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/q;->A(I)I

    move-result p1

    return p1
.end method

.method public Y(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lf1/k;->I0(II)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public Z(II)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1
    invoke-virtual {p0, p1, v0}, Lf1/k;->K0(I[I)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2, v1}, Lf1/o;->E(II)V

    return-void

    .line 3
    :cond_0
    iput-boolean v1, p0, Lf1/q;->n:Z

    .line 4
    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sys.fyt.cvbs.mirror"

    const-string v2, "0"

    .line 5
    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========================>>002 closeVideo videoId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chipId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Signal"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v2, p0, Lf1/q;->h:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lf1/o;->D(II)V

    .line 8
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2, v1}, Lf1/o;->E(II)V

    .line 9
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v2, p0, Lf1/q;->h:I

    iget v3, p0, Lf1/q;->i:I

    invoke-virtual {v0, v2, v3, v1}, Lf1/o;->G(III)V

    return-void
.end method

.method public a0()Z
    .locals 3

    const/16 v0, 0xea

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xe7

    const/16 v2, 0xf

    .line 2
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lf1/k;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lf1/k;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lf1/k;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lf1/k;->B0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lf1/k;->z0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd1

    const/16 v2, 0xc

    .line 8
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xd2

    const/4 v2, 0x7

    .line 9
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, v1}, Lf1/k;->d0(I)V

    :cond_1
    return v0
.end method

.method public b0(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputDDCHPD_Select  rx_num ----- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8641"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v2, 0xea

    if-eqz p1, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    const/4 v5, 0x4

    if-eq p1, v3, :cond_1

    if-eq p1, v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v4}, Lf1/k;->F0(I)V

    .line 3
    invoke-virtual {p0, v4}, Lf1/k;->G0(I)V

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    const-string p1, "InputDDCHPD_Select  rx_num ----- 0xEA,0x08"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lf1/k;->F0(I)V

    .line 7
    invoke-virtual {p0, v4}, Lf1/k;->G0(I)V

    .line 8
    invoke-virtual {p0, v2, v5}, Lf1/k;->Z(II)I

    const-string p1, "InputDDCHPD_Select  rx_num ----- 0xEA,0x04"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Lf1/k;->F0(I)V

    .line 11
    invoke-virtual {p0, v0}, Lf1/k;->G0(I)V

    .line 12
    invoke-virtual {p0, v2, v4}, Lf1/k;->Z(II)I

    const-string p1, "InputDDCHPD_Select  rx_num ----- 0xEA,0x01"

    .line 13
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0, v4}, Lf1/k;->F0(I)V

    .line 15
    invoke-virtual {p0, v0}, Lf1/k;->G0(I)V

    .line 16
    invoke-virtual {p0, v2, v3}, Lf1/k;->Z(II)I

    const-string p1, "InputDDCHPD_Select  rx_num ----- 0xEA,0x02"

    .line 17
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p0, v2, v0}, Lf1/k;->Z(II)I

    const-string p1, "InputDDCHPD_Select  rx_num ----- 0xEA,0x00"

    .line 19
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lf1/q;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lf1/q;->T(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    invoke-super {p0, p1}, Lf1/q;->c(I)V

    .line 6
    iget v0, p0, Lf1/q;->i:I

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lf1/k;->D0(I)I

    move-result v0

    .line 8
    iput p1, p0, Lf1/q;->i:I

    .line 9
    iget-object v1, p0, Lf1/k;->V:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iput p1, p0, Lf1/k;->U:I

    .line 10
    invoke-virtual {p0, v0}, Lf1/k;->d0(I)V

    .line 11
    invoke-virtual {p0, v0}, Lf1/k;->b0(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c0(Z)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lf1/k;->Y0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf1/k;->e0()Z

    move-result v0

    iput-boolean v0, p0, Lf1/k;->Y0:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x23

    .line 3
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 4
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    const/16 v0, 0xe

    const/4 v2, 0x3

    const/4 v3, 0x2

    const v4, 0xffff

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    .line 5
    iget-object v6, p0, Lf1/k;->t0:[I

    aput v4, v6, v1

    .line 6
    aput v4, v6, v5

    .line 7
    aput v4, v6, v3

    const/16 v7, 0xd

    .line 8
    aput v4, v6, v7

    .line 9
    aput v4, v6, v0

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v1

    :cond_3
    :goto_0
    const/16 v7, 0xd6

    if-eqz p1, :cond_4

    .line 10
    iget-object v8, p0, Lf1/k;->s0:[I

    aget v8, v8, v6

    invoke-virtual {p0, v7, v8}, Lf1/k;->Z(II)I

    goto :goto_1

    :cond_4
    const/16 v8, 0x6f

    .line 11
    invoke-virtual {p0, v8}, Lf1/k;->X(I)I

    move-result v8

    and-int/2addr v8, v3

    int-to-byte v8, v8

    if-eqz v8, :cond_5

    return v1

    .line 12
    :cond_5
    iget-object v8, p0, Lf1/k;->r0:[I

    aget v8, v8, v6

    invoke-virtual {p0, v7, v8}, Lf1/k;->Z(II)I

    .line 13
    :goto_1
    invoke-virtual {p0, v2}, Lf1/k;->X(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xfe

    int-to-byte v8, v8

    .line 14
    invoke-virtual {p0, v2, v8}, Lf1/k;->Z(II)I

    or-int/2addr v8, v5

    int-to-byte v8, v8

    .line 15
    invoke-virtual {p0, v2, v8}, Lf1/k;->Z(II)I

    const-wide/16 v8, 0xa

    .line 16
    invoke-static {v8, v9}, Lo1/s0;->C(J)V

    const/16 v8, 0x68

    const/16 v9, 0x69

    if-nez p1, :cond_7

    const/16 v10, 0x5c

    .line 17
    invoke-virtual {p0, v10}, Lf1/k;->X(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x4

    int-to-byte v10, v10

    if-eqz v10, :cond_6

    .line 18
    invoke-virtual {p0, v9}, Lf1/k;->X(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    .line 19
    invoke-virtual {p0, v8}, Lf1/k;->X(I)I

    move-result v8

    goto :goto_2

    :cond_6
    move v9, v4

    goto :goto_3

    .line 20
    :cond_7
    invoke-virtual {p0, v9}, Lf1/k;->X(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    .line 21
    invoke-virtual {p0, v8}, Lf1/k;->X(I)I

    move-result v8

    :goto_2
    add-int/2addr v9, v8

    .line 22
    :goto_3
    iget-object v8, p0, Lf1/k;->t0:[I

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    if-nez p1, :cond_8

    if-le v6, v0, :cond_3

    goto :goto_4

    :cond_8
    const/16 v8, 0xc

    if-le v6, v8, :cond_3

    :goto_4
    move v2, v1

    move v0, v5

    :goto_5
    const/16 v4, 0xf

    if-ge v0, v4, :cond_a

    .line 23
    iget-object v4, p0, Lf1/k;->t0:[I

    aget v6, v4, v0

    aget v4, v4, v2

    if-gt v6, v4, :cond_9

    move v2, v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_5

    .line 24
    :cond_a
    iget-object v0, p0, Lf1/k;->t0:[I

    aget v0, v0, v2

    const/16 v6, 0xff

    if-le v0, v6, :cond_b

    .line 25
    iput-boolean v1, p0, Lf1/k;->R0:Z

    .line 26
    invoke-virtual {p0, v1}, Lf1/k;->A0(Z)V

    return v1

    :cond_b
    move v0, v1

    :goto_6
    if-ge v1, v4, :cond_d

    .line 27
    iget-object v6, p0, Lf1/k;->t0:[I

    aget v8, v6, v2

    aget v6, v6, v1

    if-ne v8, v6, :cond_c

    .line 28
    iget-object v6, p0, Lf1/k;->u0:[B

    aput-byte v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_c
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_6

    .line 29
    :cond_d
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_e

    .line 30
    iget-object v1, p0, Lf1/k;->u0:[B

    div-int/2addr v0, v3

    aget-byte v0, v1, v0

    goto :goto_7

    :cond_e
    if-ne v0, v5, :cond_f

    .line 31
    iget-object v1, p0, Lf1/k;->u0:[B

    add-int/2addr v0, v5

    div-int/2addr v0, v3

    sub-int/2addr v0, v5

    aget-byte v0, v1, v0

    goto :goto_7

    .line 32
    :cond_f
    iget-object v1, p0, Lf1/k;->u0:[B

    add-int/2addr v0, v5

    div-int/2addr v0, v3

    aget-byte v0, v1, v0

    :goto_7
    if-eqz p1, :cond_10

    .line 33
    iget-object v1, p0, Lf1/k;->s0:[I

    aget v1, v1, v0

    invoke-virtual {p0, v7, v1}, Lf1/k;->Z(II)I

    goto :goto_8

    .line 34
    :cond_10
    iget-object v1, p0, Lf1/k;->r0:[I

    aget v1, v1, v0

    invoke-virtual {p0, v7, v1}, Lf1/k;->Z(II)I

    :goto_8
    const/16 v1, 0xd8

    const/16 v2, 0xd4

    if-eqz p1, :cond_11

    .line 35
    iget-object p1, p0, Lf1/k;->s0:[I

    aget p1, p1, v0

    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    .line 36
    iget-object p1, p0, Lf1/k;->s0:[I

    aget p1, p1, v0

    invoke-virtual {p0, v1, p1}, Lf1/k;->Z(II)I

    goto :goto_9

    .line 37
    :cond_11
    iget-object p1, p0, Lf1/k;->r0:[I

    aget p1, p1, v0

    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    .line 38
    iget-object p1, p0, Lf1/k;->r0:[I

    aget p1, p1, v0

    invoke-virtual {p0, v1, p1}, Lf1/k;->Z(II)I

    :goto_9
    return v5
.end method

.method public d0(I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf1/k;->R0:Z

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lf1/k;->A0(Z)V

    .line 3
    invoke-virtual {p0, v1}, Lf1/k;->f0(Z)V

    .line 4
    invoke-virtual {p0}, Lf1/k;->h0()V

    .line 5
    invoke-virtual {p0, v0}, Lf1/k;->b0(I)V

    if-eqz p1, :cond_4

    const/16 v2, 0xca

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc0

    .line 6
    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    .line 7
    invoke-virtual {p0, v1}, Lf1/k;->v0(Z)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x80

    .line 8
    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    .line 9
    invoke-virtual {p0, v1}, Lf1/k;->v0(Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v2, v0}, Lf1/k;->Z(II)I

    .line 11
    invoke-virtual {p0, v1}, Lf1/k;->v0(Z)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x40

    .line 12
    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    .line 13
    invoke-virtual {p0, v1}, Lf1/k;->v0(Z)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p0, v0}, Lf1/k;->v0(Z)V

    .line 15
    :goto_0
    iget-boolean p1, p0, Lf1/k;->U0:Z

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p0, v0}, Lf1/k;->w0(Z)V

    const-wide/16 v1, 0x14

    .line 17
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    .line 18
    iput-boolean v0, p0, Lf1/k;->V0:Z

    .line 19
    iput-boolean v0, p0, Lf1/k;->T0:Z

    .line 20
    iput-boolean v0, p0, Lf1/k;->U0:Z

    :cond_5
    return-void
.end method

.method public e0()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 1
    invoke-virtual {p0}, Lf1/k;->k0()I

    move-result v2

    .line 2
    iget v3, p0, Lf1/k;->W0:I

    const/16 v4, 0x2800

    if-lt v2, v3, :cond_0

    sub-int/2addr v2, v3

    if-gt v2, v4, :cond_1

    return v0

    :cond_0
    sub-int/2addr v3, v2

    if-gt v3, v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public f0(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf1/k;->R0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf1/k;->e0()Z

    move-result v0

    iput-boolean v0, p0, Lf1/k;->Y0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc4

    .line 3
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    const/16 v2, 0xcb

    .line 4
    invoke-virtual {p0, v2}, Lf1/k;->X(I)I

    move-result v3

    if-nez p1, :cond_1

    or-int/lit8 p1, v1, 0x20

    .line 5
    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    and-int/lit16 p1, v3, 0xbf

    .line 6
    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    goto :goto_0

    :cond_1
    and-int/lit16 p1, v1, 0xdf

    .line 7
    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    or-int/lit8 p1, v3, 0x40

    .line 8
    invoke-virtual {p0, v2, p1}, Lf1/k;->Z(II)I

    :goto_0
    return-void
.end method

.method public g0()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lf1/k;->R0:Z

    const/16 v1, 0x2800

    const/4 v2, 0x1

    const-string v3, "Chip8641"

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lf1/k;->k0()I

    move-result v0

    const/16 v5, 0x4000

    if-ge v0, v5, :cond_0

    const-string v0, "LT8641UX_ClkStableDetect  ----- no valid CLK!!!!"

    .line 3
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf1/k;->k0()I

    move-result v0

    iput v0, p0, Lf1/k;->X0:I

    const-wide/16 v6, 0x5

    .line 5
    invoke-static {v6, v7}, Lo1/s0;->C(J)V

    .line 6
    invoke-virtual {p0}, Lf1/k;->k0()I

    move-result v0

    iput v0, p0, Lf1/k;->W0:I

    .line 7
    iget v6, p0, Lf1/k;->X0:I

    if-lt v6, v0, :cond_2

    sub-int/2addr v6, v0

    if-gt v6, v1, :cond_1

    if-lt v0, v5, :cond_1

    const-string v0, "LT8641UX_ClkStableDetect  ----- 000!!!!"

    .line 8
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 9
    :cond_1
    iput v4, p0, Lf1/k;->W0:I

    .line 10
    iput v4, p0, Lf1/k;->X0:I

    const-string v0, "LT8641UX_ClkStableDetect  ----- 001!!!!"

    .line 11
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    sub-int/2addr v0, v6

    if-gt v0, v1, :cond_3

    if-lt v6, v5, :cond_3

    const-string v0, "LT8641UX_ClkStableDetect  ----- 002!!!!"

    .line 12
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 13
    :cond_3
    iput v4, p0, Lf1/k;->W0:I

    .line 14
    iput v4, p0, Lf1/k;->X0:I

    const-string v0, "LT8641UX_ClkStableDetect  ----- 003!!!!"

    .line 15
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    move v0, v4

    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_7

    .line 16
    invoke-virtual {p0}, Lf1/k;->k0()I

    move-result v5

    iput v5, p0, Lf1/k;->W0:I

    .line 17
    iget v6, p0, Lf1/k;->X0:I

    if-lt v6, v5, :cond_5

    sub-int/2addr v6, v5

    if-gt v6, v1, :cond_6

    const-string v0, "LT8641UX_ClkStableDetect  ----- 004!!!!"

    .line 18
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    sub-int/2addr v5, v6

    if-gt v5, v1, :cond_6

    const-string v0, "LT8641UX_ClkStableDetect  ----- 005!!!!"

    .line 19
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    .line 20
    :cond_7
    iput v4, p0, Lf1/k;->W0:I

    .line 21
    iput v4, p0, Lf1/k;->X0:I

    const-string v0, "LT8641UX_ClkStableDetect  ----- 006!!!!"

    .line 22
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public h0()V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v2, v1, 0xdf

    .line 2
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    or-int/lit8 v1, v1, 0x20

    .line 3
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    return-void
.end method

.method public i0()V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v2, v1, 0xef

    .line 2
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    or-int/lit8 v1, v1, 0x10

    .line 3
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    return-void
.end method

.method public j0(Z)V
    .locals 2

    const/16 v0, 0xcb

    .line 1
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    if-nez p1, :cond_0

    and-int/lit16 p1, v1, 0xfe

    .line 2
    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v1, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    :goto_0
    return-void
.end method

.method public k()I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   checkSignal  ============================>>>  00 imagType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8641"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/q;->r:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf1/k;->J0()Z

    .line 4
    invoke-virtual {p0}, Lf1/k;->g0()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 5
    iget-boolean v0, p0, Lf1/k;->R0:Z

    if-eqz v0, :cond_3

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lf1/k;->S0:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lf1/k;->m0()Z

    move-result v0

    iput-boolean v0, p0, Lf1/k;->S0:Z

    if-nez v0, :cond_2

    const-string v0, " =========================>>>  006 ntcsPal()  PLL NO LOCK"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-boolean v2, p0, Lf1/k;->R0:Z

    .line 9
    invoke-virtual {p0, v2}, Lf1/k;->A0(Z)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lf1/k;->Q:Z

    if-eqz v0, :cond_6

    .line 11
    iput-boolean v2, p0, Lf1/k;->Y0:Z

    .line 12
    iput-boolean v3, p0, Lf1/k;->R0:Z

    .line 13
    iput-boolean v3, p0, Lf1/k;->S0:Z

    .line 14
    invoke-virtual {p0, v2}, Lf1/k;->f0(Z)V

    .line 15
    invoke-virtual {p0}, Lf1/k;->t0()V

    .line 16
    invoke-virtual {p0}, Lf1/k;->r0()V

    .line 17
    invoke-virtual {p0}, Lf1/k;->n0()V

    .line 18
    invoke-virtual {p0}, Lf1/k;->y0()V

    .line 19
    invoke-virtual {p0, v3}, Lf1/k;->A0(Z)V

    .line 20
    iget-boolean v0, p0, Lf1/k;->T0:Z

    invoke-virtual {p0, v0}, Lf1/k;->c0(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {p0}, Lf1/k;->s0()V

    .line 22
    invoke-virtual {p0}, Lf1/k;->e0()Z

    .line 23
    iget-boolean v0, p0, Lf1/k;->Y0:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lf1/k;->l0()Z

    move-result v0

    if-nez v0, :cond_6

    .line 24
    :cond_4
    iput-boolean v2, p0, Lf1/k;->Y0:Z

    .line 25
    iput-boolean v2, p0, Lf1/k;->R0:Z

    .line 26
    invoke-virtual {p0, v2}, Lf1/k;->A0(Z)V

    goto :goto_1

    .line 27
    :cond_5
    iget-boolean v0, p0, Lf1/k;->R0:Z

    if-eqz v0, :cond_6

    .line 28
    iput-boolean v2, p0, Lf1/k;->R0:Z

    .line 29
    invoke-virtual {p0, v2}, Lf1/k;->A0(Z)V

    .line 30
    invoke-virtual {p0, v3}, Lf1/k;->f0(Z)V

    .line 31
    :cond_6
    :goto_1
    invoke-virtual {p0, v2}, Lf1/k;->E0(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {p0}, Lf1/k;->H0()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 33
    iget v2, p0, Lf1/q;->k:I

    if-eq v2, v1, :cond_7

    .line 34
    iput v1, p0, Lf1/q;->k:I

    .line 35
    invoke-virtual {p0, v1}, Lf1/k;->C0(I)Z

    :cond_7
    return v0
.end method

.method public k0()I
    .locals 10

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v2, v1, 0xfb

    .line 2
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    .line 3
    iget-object v2, p0, Lf1/k;->S:Lo1/l0;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Lo1/l0;->c(I)Z

    move-result v2

    const-string v4, "Chip8641"

    const/16 v5, 0xf4

    const/16 v6, 0xf3

    const/16 v7, 0xf2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lf1/k;->S:Lo1/l0;

    invoke-virtual {v2}, Lo1/l0;->a()V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 5
    invoke-virtual {p0, v7}, Lf1/k;->X(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x1

    invoke-virtual {p0, v6}, Lf1/k;->X(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x2

    invoke-virtual {p0, v5}, Lf1/k;->X(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const-string v8, "  0xF2 : %02X     0xF3 : %02X    0xF4 : %02X"

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    invoke-virtual {p0, v7}, Lf1/k;->X(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x10

    .line 7
    invoke-virtual {p0, v6}, Lf1/k;->X(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v2, v6

    .line 8
    invoke-virtual {p0, v5}, Lf1/k;->X(I)I

    move-result v5

    add-int/2addr v2, v5

    or-int/lit8 v1, v1, 0x4

    .line 9
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    .line 10
    iget-object v0, p0, Lf1/k;->T:Lo1/l0;

    invoke-virtual {v0, v3}, Lo1/l0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lf1/k;->T:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============>>> LT8641UX_GetClkFreq clk_freq == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method public l0()Z
    .locals 5

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xfe

    int-to-byte v1, v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 3
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    const-wide/16 v0, 0x2

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    const/16 v0, 0x67

    .line 5
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0x66

    .line 6
    invoke-virtual {p0, v1}, Lf1/k;->X(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v3, 0xff

    if-le v0, v3, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x69

    .line 7
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/16 v4, 0x68

    .line 8
    invoke-virtual {p0, v4}, Lf1/k;->X(I)I

    move-result v4

    add-int/2addr v0, v4

    if-le v0, v3, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x6b

    .line 9
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/16 v4, 0x6a

    .line 10
    invoke-virtual {p0, v4}, Lf1/k;->X(I)I

    move-result v4

    add-int/2addr v0, v4

    if-le v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public m0()Z
    .locals 2

    const/16 v0, 0x5c

    .line 1
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public n0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf1/k;->Y0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x88

    .line 2
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    or-int/lit8 v2, v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    and-int/lit8 v1, v1, -0x2

    .line 4
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    const/16 v0, 0xfe

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0, v1, v0}, Lf1/k;->Z(II)I

    const/16 v0, 0xc7

    const/4 v2, 0x3

    .line 6
    invoke-virtual {p0, v2, v0}, Lf1/k;->Z(II)I

    const/16 v0, 0xff

    .line 7
    invoke-virtual {p0, v1, v0}, Lf1/k;->Z(II)I

    .line 8
    invoke-virtual {p0, v2, v0}, Lf1/k;->Z(II)I

    return-void
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lf1/q;->G(II)V

    const/16 v0, 0xb

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lf1/q;->G(II)V

    const/16 v0, 0xc

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Lf1/q;->G(II)V

    const/16 v0, 0xd

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p0, v0, v1}, Lf1/q;->G(II)V

    const/16 v0, 0xe

    const/4 v1, 0x4

    .line 5
    invoke-virtual {p0, v0, v1}, Lf1/q;->G(II)V

    return-void
.end method

.method public o0()V
    .locals 2

    const/16 v0, 0x89

    const/16 v1, 0x40

    .line 1
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/k;->a0()Z

    move-result v0

    invoke-virtual {p0, v0}, Lf1/q;->H(Z)V

    return-void
.end method

.method public p0()V
    .locals 2

    const/16 v0, 0x37

    const/16 v1, 0x1b

    .line 1
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    const/16 v0, 0x31

    const/16 v1, 0xda

    .line 2
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    const/4 v0, 0x2

    const/16 v1, 0x7f

    .line 3
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    const/16 v1, 0xff

    .line 4
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    const/16 v0, 0x85

    .line 5
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 6
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    const/16 v0, 0xca

    .line 7
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xd0

    or-int/lit8 v1, v1, 0x23

    .line 8
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    return-void
.end method

.method public q0()Z
    .locals 3

    const/16 v0, 0xcd

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x84

    const/16 v2, 0xc0

    .line 2
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x8b

    const/16 v2, 0x48

    .line 3
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x83

    .line 4
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x86

    const/16 v2, 0x11

    .line 5
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x87

    const/16 v2, 0x50

    .line 6
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xce

    const/16 v2, 0x71

    .line 7
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public r0()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lf1/k;->Y0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf1/k;->e0()Z

    move-result v0

    iput-boolean v0, p0, Lf1/k;->Y0:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x6f

    .line 3
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    .line 4
    :goto_0
    invoke-virtual {p0}, Lf1/k;->o0()V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v2}, Lf1/k;->j0(Z)V

    .line 6
    invoke-virtual {p0}, Lf1/k;->k0()I

    move-result v3

    .line 7
    invoke-virtual {p0}, Lf1/k;->p0()V

    const/4 v4, 0x1

    .line 8
    invoke-virtual {p0, v4}, Lf1/k;->j0(Z)V

    .line 9
    invoke-virtual {p0}, Lf1/k;->i0()V

    const-wide/16 v5, 0x2

    .line 10
    invoke-static {v5, v6}, Lo1/s0;->C(J)V

    .line 11
    invoke-virtual {p0}, Lf1/k;->k0()I

    move-result v7

    shl-int/2addr v7, v0

    const/16 v8, 0x89

    if-ne v7, v3, :cond_3

    .line 12
    invoke-virtual {p0, v8}, Lf1/k;->X(I)I

    goto/16 :goto_a

    :cond_3
    const/16 v9, 0xf0

    const/16 v10, 0x9c4

    if-ge v7, v3, :cond_7

    move v11, v2

    :goto_1
    if-ge v7, v3, :cond_6

    sub-int v12, v3, v7

    if-gt v12, v10, :cond_4

    move v9, v4

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {p0, v8}, Lf1/k;->X(I)I

    move-result v11

    and-int/2addr v11, v9

    int-to-byte v11, v11

    add-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    if-nez v11, :cond_5

    const/4 v11, -0x1

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {p0, v8, v11}, Lf1/k;->Z(II)I

    .line 15
    invoke-virtual {p0}, Lf1/k;->i0()V

    .line 16
    invoke-static {v5, v6}, Lo1/s0;->C(J)V

    .line 17
    invoke-virtual {p0}, Lf1/k;->k0()I

    move-result v7

    shl-int/2addr v7, v0

    goto :goto_1

    :cond_6
    :goto_2
    move v9, v2

    :goto_3
    add-int/lit8 v12, v11, -0x10

    int-to-byte v12, v12

    if-le v7, v3, :cond_c

    sub-int/2addr v7, v3

    if-gt v7, v10, :cond_c

    :goto_4
    move v9, v4

    goto :goto_8

    :cond_7
    if-le v7, v3, :cond_b

    move v11, v2

    :goto_5
    if-le v7, v3, :cond_a

    sub-int v12, v7, v3

    if-gt v12, v10, :cond_8

    move v9, v4

    goto :goto_6

    .line 18
    :cond_8
    invoke-virtual {p0, v8}, Lf1/k;->X(I)I

    move-result v11

    and-int/2addr v11, v9

    int-to-byte v11, v11

    add-int/lit8 v11, v11, -0x10

    int-to-byte v11, v11

    and-int/lit16 v12, v11, 0xff

    if-ne v12, v9, :cond_9

    move v9, v2

    move v12, v9

    goto :goto_7

    .line 19
    :cond_9
    invoke-virtual {p0, v8, v11}, Lf1/k;->Z(II)I

    .line 20
    invoke-virtual {p0}, Lf1/k;->i0()V

    .line 21
    invoke-static {v5, v6}, Lo1/s0;->C(J)V

    .line 22
    invoke-virtual {p0}, Lf1/k;->k0()I

    move-result v7

    shl-int/2addr v7, v0

    goto :goto_5

    :cond_a
    move v9, v2

    :goto_6
    move v12, v11

    :goto_7
    add-int/lit8 v11, v12, 0x10

    int-to-byte v11, v11

    if-le v3, v7, :cond_c

    sub-int v7, v3, v7

    if-gt v7, v10, :cond_c

    goto :goto_4

    :cond_b
    move v9, v2

    move v11, v9

    move v12, v11

    :cond_c
    :goto_8
    if-nez v9, :cond_11

    :cond_d
    add-int v7, v11, v12

    .line 23
    div-int/lit8 v7, v7, 0x2

    int-to-byte v7, v7

    .line 24
    invoke-virtual {p0, v8, v7}, Lf1/k;->Z(II)I

    .line 25
    invoke-virtual {p0}, Lf1/k;->i0()V

    .line 26
    invoke-static {v5, v6}, Lo1/s0;->C(J)V

    .line 27
    invoke-virtual {p0}, Lf1/k;->k0()I

    move-result v9

    shl-int/2addr v9, v0

    if-ge v9, v3, :cond_f

    sub-int v12, v3, v9

    if-gt v12, v10, :cond_e

    goto :goto_a

    :cond_e
    move v12, v7

    goto :goto_9

    :cond_f
    sub-int v11, v9, v3

    if-gt v11, v10, :cond_10

    goto :goto_a

    :cond_10
    move v11, v7

    :goto_9
    sub-int v7, v11, v12

    if-le v7, v4, :cond_11

    if-ne v9, v3, :cond_d

    .line 28
    :cond_11
    :goto_a
    invoke-virtual {p0, v8}, Lf1/k;->X(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_12

    .line 29
    invoke-virtual {p0, v8, v3}, Lf1/k;->Z(II)I

    move v0, v3

    :cond_12
    const/16 v3, 0x8e

    .line 30
    invoke-virtual {p0, v3}, Lf1/k;->X(I)I

    move-result v4

    or-int/2addr v1, v4

    .line 31
    invoke-virtual {p0, v3, v1}, Lf1/k;->Z(II)I

    const/16 v1, 0x92

    .line 32
    invoke-virtual {p0, v1, v0}, Lf1/k;->Z(II)I

    const/16 v0, 0x31

    const/16 v1, 0xca

    .line 33
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    .line 34
    invoke-virtual {p0, v2}, Lf1/k;->j0(Z)V

    return-void
.end method

.method public s0()V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    or-int/lit8 v2, v1, 0x40

    .line 2
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    const-wide/16 v2, 0x32

    .line 3
    invoke-static {v2, v3}, Lo1/s0;->C(J)V

    and-int/lit16 v1, v1, 0xbf

    .line 4
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    return-void
.end method

.method public t0()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lf1/k;->Y0:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lf1/k;->e0()Z

    move-result v1

    iput-boolean v1, v0, Lf1/k;->Y0:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x6f

    .line 3
    invoke-virtual {v0, v1}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/16 v3, 0x8e

    const/4 v4, 0x1

    const/16 v5, 0xf9

    const/16 v6, 0x85

    const/16 v7, 0x20

    const/16 v8, 0x91

    const/16 v9, 0x14

    const/16 v10, 0x88

    const/16 v11, 0xc7

    const/16 v12, 0xc6

    const/16 v13, 0xc4

    const/16 v14, 0xc5

    const/16 v15, 0xc9

    if-eqz v1, :cond_3

    const/16 v1, 0x8b

    const/16 v2, 0x4f

    .line 4
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    const/16 v1, 0x86

    const/4 v2, 0x6

    .line 5
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    const/16 v1, 0x87

    const/16 v2, 0x10

    .line 6
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    const/16 v1, 0x8f

    const/16 v2, 0x16

    .line 7
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    const/16 v1, 0x90

    const/16 v2, 0x10

    .line 8
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    .line 9
    invoke-virtual {v0, v13}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf8

    .line 10
    invoke-virtual {v0, v13, v1}, Lf1/k;->Z(II)I

    .line 11
    invoke-virtual {v0, v14}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    or-int/lit8 v1, v1, 0x67

    .line 12
    invoke-virtual {v0, v14, v1}, Lf1/k;->Z(II)I

    .line 13
    invoke-virtual {v0, v12}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xfc

    .line 14
    invoke-virtual {v0, v12, v1}, Lf1/k;->Z(II)I

    .line 15
    invoke-virtual {v0, v15, v9}, Lf1/k;->Z(II)I

    .line 16
    invoke-virtual {v0, v5}, Lf1/k;->X(I)I

    move-result v1

    .line 17
    invoke-virtual {v0, v15}, Lf1/k;->X(I)I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v15, v2}, Lf1/k;->Z(II)I

    const/16 v2, 0xcf

    if-le v2, v1, :cond_2

    add-int/lit8 v1, v1, 0x30

    .line 18
    invoke-virtual {v0, v11, v1}, Lf1/k;->Z(II)I

    goto :goto_0

    :cond_2
    const/16 v1, 0xff

    .line 19
    invoke-virtual {v0, v11, v1}, Lf1/k;->Z(II)I

    :goto_0
    const/16 v1, 0xdd

    .line 20
    invoke-virtual {v0, v1, v4}, Lf1/k;->Z(II)I

    .line 21
    invoke-virtual {v0, v6}, Lf1/k;->X(I)I

    move-result v1

    or-int/2addr v1, v7

    .line 22
    invoke-virtual {v0, v6, v1}, Lf1/k;->Z(II)I

    .line 23
    invoke-virtual {v0, v10}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf3

    .line 24
    invoke-virtual {v0, v10, v1}, Lf1/k;->Z(II)I

    .line 25
    invoke-virtual {v0, v3}, Lf1/k;->X(I)I

    move-result v1

    or-int/2addr v1, v7

    .line 26
    invoke-virtual {v0, v3, v1}, Lf1/k;->Z(II)I

    .line 27
    invoke-virtual {v0, v8}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf3

    .line 28
    invoke-virtual {v0, v8, v1}, Lf1/k;->Z(II)I

    const/16 v1, 0xce

    .line 29
    invoke-virtual {v0, v1}, Lf1/k;->X(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xfd

    .line 30
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    .line 31
    iput-boolean v4, v0, Lf1/k;->T0:Z

    goto/16 :goto_5

    :cond_3
    const/16 v1, 0x8b

    const/16 v2, 0x48

    .line 32
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    const/16 v1, 0x86

    const/16 v2, 0x18

    .line 33
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    const/16 v1, 0x87

    const/16 v2, 0x34

    .line 34
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    const/16 v1, 0x8f

    const/16 v2, 0x18

    .line 35
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    const/16 v1, 0x90

    const/16 v2, 0x34

    .line 36
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    const/16 v1, 0x7f

    .line 37
    invoke-virtual {v0, v14, v1}, Lf1/k;->Z(II)I

    const/16 v1, 0xdd

    const/16 v2, 0xa

    .line 38
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    .line 39
    invoke-virtual {v0, v6}, Lf1/k;->X(I)I

    move-result v1

    or-int/2addr v1, v7

    .line 40
    invoke-virtual {v0, v6, v1}, Lf1/k;->Z(II)I

    .line 41
    invoke-virtual {v0, v10}, Lf1/k;->X(I)I

    move-result v1

    .line 42
    invoke-virtual/range {p0 .. p0}, Lf1/k;->k0()I

    move-result v2

    const v6, 0xea60

    if-ge v2, v6, :cond_4

    const/16 v6, 0x86

    .line 43
    invoke-virtual {v0, v6, v9}, Lf1/k;->Z(II)I

    const/16 v6, 0x87

    const/16 v11, 0x54

    .line 44
    invoke-virtual {v0, v6, v11}, Lf1/k;->Z(II)I

    const/16 v6, 0x8f

    .line 45
    invoke-virtual {v0, v6, v9}, Lf1/k;->Z(II)I

    const/16 v6, 0x90

    .line 46
    invoke-virtual {v0, v6, v11}, Lf1/k;->Z(II)I

    :cond_4
    const v6, 0x17700

    const v11, 0x2ee00

    if-le v2, v11, :cond_5

    and-int/lit16 v1, v1, 0xf3

    .line 47
    invoke-virtual {v0, v10, v1}, Lf1/k;->Z(II)I

    goto :goto_1

    :cond_5
    if-le v2, v6, :cond_6

    if-gt v2, v11, :cond_6

    and-int/lit16 v1, v1, 0xf3

    or-int/lit8 v1, v1, 0x8

    .line 48
    invoke-virtual {v0, v10, v1}, Lf1/k;->Z(II)I

    goto :goto_1

    :cond_6
    const/16 v5, 0x40d8

    if-le v2, v5, :cond_7

    if-gt v2, v6, :cond_7

    or-int/lit8 v1, v1, 0xc

    .line 49
    invoke-virtual {v0, v10, v1}, Lf1/k;->Z(II)I

    .line 50
    :cond_7
    :goto_1
    invoke-virtual {v0, v3}, Lf1/k;->X(I)I

    move-result v1

    or-int/2addr v1, v7

    .line 51
    invoke-virtual {v0, v3, v1}, Lf1/k;->Z(II)I

    .line 52
    invoke-virtual {v0, v8}, Lf1/k;->X(I)I

    move-result v1

    if-le v2, v11, :cond_8

    and-int/lit16 v1, v1, 0xf3

    .line 53
    invoke-virtual {v0, v8, v1}, Lf1/k;->Z(II)I

    goto :goto_2

    :cond_8
    if-le v2, v6, :cond_9

    if-gt v2, v11, :cond_9

    and-int/lit16 v1, v1, 0xf3

    or-int/lit8 v1, v1, 0x8

    .line 54
    invoke-virtual {v0, v8, v1}, Lf1/k;->Z(II)I

    goto :goto_2

    :cond_9
    const/16 v3, 0x40d8

    if-le v2, v3, :cond_a

    if-gt v2, v6, :cond_a

    or-int/lit8 v1, v1, 0xc

    .line 55
    invoke-virtual {v0, v8, v1}, Lf1/k;->Z(II)I

    :cond_a
    :goto_2
    const v1, 0x33450

    if-le v2, v1, :cond_c

    .line 56
    invoke-virtual {v0, v13}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf8

    or-int/2addr v1, v4

    .line 57
    invoke-virtual {v0, v13, v1}, Lf1/k;->Z(II)I

    .line 58
    invoke-virtual {v0, v14}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    or-int/lit8 v1, v1, 0x2b

    .line 59
    invoke-virtual {v0, v14, v1}, Lf1/k;->Z(II)I

    .line 60
    invoke-virtual {v0, v12}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xfc

    or-int/2addr v1, v4

    .line 61
    invoke-virtual {v0, v12, v1}, Lf1/k;->Z(II)I

    .line 62
    invoke-virtual {v0, v15, v9}, Lf1/k;->Z(II)I

    const/16 v1, 0xf9

    .line 63
    invoke-virtual {v0, v1}, Lf1/k;->X(I)I

    move-result v1

    .line 64
    invoke-virtual {v0, v15}, Lf1/k;->X(I)I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v15, v2}, Lf1/k;->Z(II)I

    if-le v1, v7, :cond_b

    const/16 v2, 0xc7

    .line 65
    invoke-virtual {v0, v2, v1}, Lf1/k;->Z(II)I

    goto :goto_3

    :cond_b
    const/16 v2, 0xc7

    const/16 v1, 0xae

    .line 66
    invoke-virtual {v0, v2, v1}, Lf1/k;->Z(II)I

    :goto_3
    const/16 v1, 0xce

    goto/16 :goto_4

    :cond_c
    const v1, 0x19e10

    if-le v2, v1, :cond_e

    const v1, 0x33450

    if-gt v2, v1, :cond_e

    .line 67
    invoke-virtual {v0, v13}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf8

    or-int/lit8 v1, v1, 0x2

    .line 68
    invoke-virtual {v0, v13, v1}, Lf1/k;->Z(II)I

    .line 69
    invoke-virtual {v0, v14}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    or-int/lit8 v1, v1, 0x9

    .line 70
    invoke-virtual {v0, v14, v1}, Lf1/k;->Z(II)I

    .line 71
    invoke-virtual {v0, v12}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xfc

    or-int/lit8 v1, v1, 0x2

    .line 72
    invoke-virtual {v0, v12, v1}, Lf1/k;->Z(II)I

    .line 73
    invoke-virtual {v0, v15, v9}, Lf1/k;->Z(II)I

    const/16 v1, 0xf9

    .line 74
    invoke-virtual {v0, v1}, Lf1/k;->X(I)I

    move-result v1

    .line 75
    invoke-virtual {v0, v15}, Lf1/k;->X(I)I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v15, v2}, Lf1/k;->Z(II)I

    const/16 v2, 0x40

    if-le v1, v2, :cond_d

    const/16 v2, 0xc7

    .line 76
    invoke-virtual {v0, v2, v1}, Lf1/k;->Z(II)I

    goto :goto_3

    :cond_d
    const/16 v2, 0xc7

    const/16 v1, 0xae

    .line 77
    invoke-virtual {v0, v2, v1}, Lf1/k;->Z(II)I

    goto :goto_3

    .line 78
    :cond_e
    invoke-virtual {v0, v13}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf8

    or-int/lit8 v1, v1, 0x3

    .line 79
    invoke-virtual {v0, v13, v1}, Lf1/k;->Z(II)I

    .line 80
    invoke-virtual {v0, v14}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    or-int/lit8 v1, v1, 0x8

    .line 81
    invoke-virtual {v0, v14, v1}, Lf1/k;->Z(II)I

    .line 82
    invoke-virtual {v0, v12}, Lf1/k;->X(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xfc

    or-int/lit8 v1, v1, 0x3

    .line 83
    invoke-virtual {v0, v12, v1}, Lf1/k;->Z(II)I

    .line 84
    invoke-virtual {v0, v15, v9}, Lf1/k;->Z(II)I

    const/16 v1, 0xf9

    .line 85
    invoke-virtual {v0, v1}, Lf1/k;->X(I)I

    move-result v1

    .line 86
    invoke-virtual {v0, v15}, Lf1/k;->X(I)I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v15, v2}, Lf1/k;->Z(II)I

    const/16 v2, 0x40

    if-le v1, v2, :cond_f

    const/16 v2, 0xc7

    .line 87
    invoke-virtual {v0, v2, v1}, Lf1/k;->Z(II)I

    goto/16 :goto_3

    :cond_f
    const/16 v2, 0xc7

    const/16 v1, 0xae

    .line 88
    invoke-virtual {v0, v2, v1}, Lf1/k;->Z(II)I

    goto/16 :goto_3

    .line 89
    :goto_4
    invoke-virtual {v0, v1}, Lf1/k;->X(I)I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    .line 90
    invoke-virtual {v0, v1, v2}, Lf1/k;->Z(II)I

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, v0, Lf1/k;->T0:Z

    :goto_5
    return-void
.end method

.method public u0()Z
    .locals 6

    const/16 v0, 0xca

    const/16 v1, 0x80

    .line 1
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc9

    const/4 v3, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v2, v0}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x14

    .line 3
    invoke-virtual {p0, v2, v0}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/16 v4, 0xf9

    .line 4
    invoke-virtual {p0, v4}, Lf1/k;->X(I)I

    move-result v4

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Lf1/k;->X(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v2, v0}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    const/16 v2, 0xcf

    const/16 v5, 0xc7

    if-le v2, v4, :cond_3

    if-eqz v0, :cond_2

    add-int/lit8 v4, v4, 0x30

    .line 6
    invoke-virtual {p0, v5, v4}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_2

    const/16 v0, 0xff

    .line 7
    invoke-virtual {p0, v5, v0}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    return v1
.end method

.method public v0(Z)V
    .locals 2

    const/16 v0, 0xc4

    .line 1
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    if-eqz p1, :cond_0

    and-int/lit16 p1, v1, 0xf7

    .line 2
    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v1, 0x8

    .line 3
    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    :goto_0
    return-void
.end method

.method public w0(Z)V
    .locals 1

    const/16 v0, 0xd1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xf7

    invoke-virtual {p0, v0, p1}, Lf1/k;->Z(II)I

    :goto_0
    return-void
.end method

.method public x(Ljava/lang/String;)Z
    .locals 14

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lf1/q;->i:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_6

    const/16 v3, 0xe

    if-le v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    new-array v4, v0, [I

    const/16 v5, 0x80

    aput v5, v4, v1

    const/16 v6, 0xff

    .line 2
    invoke-virtual {p0, v6, v4}, Lf1/k;->L0(I[I)I

    new-array v4, v0, [I

    aput v0, v4, v1

    const/16 v7, 0xee

    .line 3
    invoke-virtual {p0, v7, v4}, Lf1/k;->L0(I[I)I

    new-array v4, v0, [I

    const/16 v8, 0xd2

    aput v8, v4, v1

    .line 4
    invoke-virtual {p0, v6, v4}, Lf1/k;->L0(I[I)I

    const/16 v4, 0x83

    new-array v8, v0, [I

    const/16 v9, 0x11

    aput v9, v8, v1

    .line 5
    invoke-virtual {p0, v4, v8}, Lf1/k;->L0(I[I)I

    const/16 v4, 0x96

    .line 6
    invoke-virtual {p0, v4}, Lf1/k;->Y(I)I

    move-result v4

    const/16 v8, 0x97

    .line 7
    invoke-virtual {p0, v8}, Lf1/k;->Y(I)I

    move-result v8

    .line 8
    invoke-static {v4, v8}, Lo1/s0;->x(II)I

    move-result v9

    const/16 v10, 0x1e0

    const/4 v11, 0x2

    const/4 v12, -0x1

    if-eq v9, v10, :cond_3

    const/16 v10, 0x2d0

    if-eq v9, v10, :cond_2

    const/16 v10, 0x438

    if-eq v9, v10, :cond_1

    move v10, v12

    goto :goto_0

    :cond_1
    const/4 v10, 0x6

    goto :goto_0

    :cond_2
    move v10, v11

    goto :goto_0

    :cond_3
    move v10, v1

    :goto_0
    new-array v13, v0, [I

    aput v5, v13, v1

    .line 9
    invoke-virtual {p0, v6, v13}, Lf1/k;->L0(I[I)I

    new-array v5, v0, [I

    aput v1, v5, v1

    .line 10
    invoke-virtual {p0, v7, v5}, Lf1/k;->L0(I[I)I

    .line 11
    iget v5, p0, Lf1/k;->U:I

    if-eq v5, v10, :cond_5

    if-gtz v9, :cond_4

    .line 12
    iput v1, p0, Lf1/q;->B:I

    .line 13
    iput v12, p0, Lf1/q;->k:I

    .line 14
    :cond_4
    iput v10, p0, Lf1/k;->U:I

    .line 15
    iget v5, p0, Lf1/q;->i:I

    if-lt v5, v2, :cond_5

    if-gt v5, v3, :cond_5

    .line 16
    iget-object v2, p0, Lf1/k;->V:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chip8641 ======================>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sNtscPal: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/k;->U:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  np: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array p1, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v1, " %02X %02X"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Chip8641"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public x0()Z
    .locals 3

    const/16 v0, 0x8d

    const/16 v1, 0xc0

    .line 1
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/16 v0, 0x94

    const/16 v2, 0x8

    .line 2
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x8c

    .line 3
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x8f

    const/16 v2, 0x18

    .line 4
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x90

    const/16 v2, 0x30

    .line 5
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public y0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf1/k;->Y0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xfd

    const/4 v1, 0x3

    .line 2
    invoke-virtual {p0, v1, v0}, Lf1/k;->Z(II)I

    const/16 v0, 0xff

    .line 3
    invoke-virtual {p0, v1, v0}, Lf1/k;->Z(II)I

    const-wide/16 v0, 0x2

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    const/16 v0, 0x91

    .line 5
    invoke-virtual {p0, v0}, Lf1/k;->X(I)I

    move-result v1

    or-int/lit8 v2, v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v2}, Lf1/k;->Z(II)I

    and-int/lit8 v1, v1, -0x2

    .line 7
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    return-void
.end method

.method public z0()Z
    .locals 2

    const/16 v0, 0xa6

    const/16 v1, 0x80

    .line 1
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa1

    const/16 v1, 0x40

    .line 2
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa2

    const/16 v1, 0xc0

    .line 3
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa4

    .line 4
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa5

    .line 5
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xe4

    const/16 v1, 0x60

    .line 6
    invoke-virtual {p0, v0, v1}, Lf1/k;->Z(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
