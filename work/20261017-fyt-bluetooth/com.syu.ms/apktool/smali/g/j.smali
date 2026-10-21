.class public Lg/j;
.super Lg/o;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field public final A0:Ljava/lang/String;

.field public final B0:Ljava/lang/String;

.field public final C0:Ljava/lang/Runnable;

.field public n0:I

.field public o0:Landroid/telephony/TelephonyManager;

.field public p0:Landroid/telephony/SubscriptionManager;

.field public final q0:[I

.field public final r0:[I

.field public final s0:[I

.field public final t0:Lo1/p;

.field public final u0:Lo1/s;

.field public final v0:Lo1/s;

.field public final w0:Ljava/lang/Runnable;

.field public final x0:Lo1/p;

.field public final y0:Ljava/lang/Runnable;

.field public final z0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lg/o;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg/j;->n0:I

    const/16 v1, 0xe

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    iput-object v2, p0, Lg/j;->q0:[I

    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_1

    iput-object v1, p0, Lg/j;->r0:[I

    const/16 v1, 0xc

    new-array v1, v1, [I

    .line 5
    fill-array-data v1, :array_2

    iput-object v1, p0, Lg/j;->s0:[I

    .line 6
    new-instance v1, Lg/j$a;

    invoke-direct {v1, p0}, Lg/j$a;-><init>(Lg/j;)V

    iput-object v1, p0, Lg/j;->t0:Lo1/p;

    .line 7
    new-instance v1, Lg/j$b;

    invoke-direct {v1, p0}, Lg/j$b;-><init>(Lg/j;)V

    iput-object v1, p0, Lg/j;->u0:Lo1/s;

    .line 8
    new-instance v2, Lg/j$c;

    invoke-direct {v2, p0}, Lg/j$c;-><init>(Lg/j;)V

    iput-object v2, p0, Lg/j;->v0:Lo1/s;

    .line 9
    new-instance v2, Lg/j$d;

    invoke-direct {v2, p0}, Lg/j$d;-><init>(Lg/j;)V

    iput-object v2, p0, Lg/j;->w0:Ljava/lang/Runnable;

    .line 10
    new-instance v2, Lg/j$e;

    invoke-direct {v2, p0}, Lg/j$e;-><init>(Lg/j;)V

    iput-object v2, p0, Lg/j;->x0:Lo1/p;

    .line 11
    new-instance v2, Lg/j$f;

    invoke-direct {v2, p0}, Lg/j$f;-><init>(Lg/j;)V

    iput-object v2, p0, Lg/j;->y0:Ljava/lang/Runnable;

    const-string v2, "/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq"

    .line 12
    iput-object v2, p0, Lg/j;->z0:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq"

    .line 13
    iput-object v2, p0, Lg/j;->A0:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/policy0/scaling_governor"

    .line 14
    iput-object v2, p0, Lg/j;->B0:Ljava/lang/String;

    .line 15
    new-instance v2, Lg/j$g;

    invoke-direct {v2, p0}, Lg/j$g;-><init>(Lg/j;)V

    iput-object v2, p0, Lg/j;->C0:Ljava/lang/Runnable;

    .line 16
    new-instance v2, Lj1/c;

    const-string v3, "getDefault"

    invoke-direct {v2, v3}, Lj1/c;-><init>(Ljava/lang/String;)V

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Lj1/c;->e(Ljava/lang/Class;)Lj1/c;

    move-result-object v2

    invoke-virtual {v2}, Lj1/c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lg/j;->o0:Landroid/telephony/TelephonyManager;

    .line 17
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lg/j;->p0:Landroid/telephony/SubscriptionManager;

    const/16 v2, 0x40

    .line 18
    invoke-static {v2}, Lg/e;->j(I)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lchip/Chip;->m:Z

    const/high16 v2, 0x42d20000    # 105.0f

    .line 19
    sput v2, Ly0/f;->H0:F

    const/high16 v2, 0x42c80000    # 100.0f

    .line 20
    sput v2, Ly0/f;->I0:F

    const/4 v2, 0x3

    .line 21
    sput v2, Lu0/b;->I3:I

    const-string v2, "com.syu.flashEQ"

    const-string v4, "com.syu.eq"

    .line 22
    invoke-static {v2, v4}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v4, "818"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    sget-object v2, La/b;->d:Lo1/d;

    const-string v4, "net.easyconn"

    invoke-virtual {v2, v4, v1}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, -0x1

    const-string/jumbo v2, "ro.lsec7731.UsbHdPort"

    .line 25
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 26
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->setUsbIndex(II)I

    .line 27
    :cond_1
    invoke-static {}, Lg/e;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x190

    .line 28
    sput v1, Lchip/Chip;->d0:I

    .line 29
    invoke-virtual {p0, v0}, Lchip/Chip;->U(Z)V

    const/16 v1, 0xc5

    .line 30
    invoke-static {v1}, Lm1/c;->i(I)V

    const/16 v1, 0xc6

    .line 31
    invoke-static {v1}, Lm1/c;->i(I)V

    const/16 v1, 0xc7

    .line 32
    invoke-static {v1}, Lm1/c;->i(I)V

    const/16 v1, 0xce

    .line 33
    invoke-static {v1}, Lm1/c;->i(I)V

    const/16 v1, 0xcf

    .line 34
    invoke-static {v1}, Lm1/c;->i(I)V

    const/16 v1, 0xd1

    .line 35
    invoke-static {v1}, Lm1/c;->i(I)V

    .line 36
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v1

    invoke-static {}, Lg/e;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Lk0/rt;->i3(Z)V

    .line 37
    sput v3, Lu0/b;->w4:I

    .line 38
    sput v3, Lu0/b;->x4:I

    .line 39
    sput v3, Ly0/f;->f1:I

    .line 40
    sput v3, Ly0/f;->h1:I

    const-string/jumbo v1, "ro.fyt.realplatform"

    const-string v2, ""

    .line 41
    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "809-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    sput v0, Ly0/f;->h1:I

    .line 43
    :cond_2
    sput v3, Lu0/b;->A4:I

    .line 44
    sput v3, Lu0/b;->P3:I

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x40
        0x8
        0x0
        0x41
        0x1
        0xf8
        0x25
        0x8
        0x26
        0x0
        0x27
        0x3
        0x40
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40
        0x8
        0x0
        0x42
        0x1
        0xf8
        0x25
        0x8
        0x26
        0x1
        0x27
        0x5
        0x40
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x8
        0x0
        0x44
        0x25
        0x13
        0x26
        0x6
        0x27
        0xc
        0x40
        0x0
    .end array-data
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v1, "817"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "6911"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v1, "863"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 3
    :cond_1
    invoke-super {p0}, Lg/o;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Y()V
    .locals 11

    .line 1
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefaultSubscriptionId"

    invoke-static {v0, v3, v2}, Lo1/d0;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "000 ---- >  checkNetworkType getSubid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wake"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lg/j;->o0:Landroid/telephony/TelephonyManager;

    const-string/jumbo v5, "setPreferredNetworkType"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-array v8, v6, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 7
    invoke-static {v2, v4, v5, v7, v8}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "001 ---- >  Subid: %d NetworkType to type: %d, result: "

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 9
    iget-object v1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    new-instance v2, Lg/j$h;

    invoke-direct {v2, p0, v0}, Lg/j$h;-><init>(Lg/j;I)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->j:Lo1/y;

    iget-object v1, p0, Lg/j;->C0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lg/j;->C0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->P:Lo1/z;

    iget-object v1, p0, Lg/j;->t0:Lo1/p;

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    .line 4
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Lg/j;->w0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, La/b;->d:Lo1/d;

    const-string v2, "com.fvision.camera"

    invoke-virtual {v1, v2}, Lo1/d;->i(Ljava/lang/Comparable;)V

    const-string v2, "com.gp.dvr"

    .line 6
    invoke-virtual {v1, v2}, Lo1/d;->i(Ljava/lang/Comparable;)V

    const-string v2, "com.sicadroid.ucam_car"

    .line 7
    invoke-virtual {v1, v2}, Lo1/d;->i(Ljava/lang/Comparable;)V

    const-string v2, "com.williexing.android.apps.xcdvr1"

    .line 8
    invoke-virtual {v1, v2}, Lo1/d;->i(Ljava/lang/Comparable;)V

    const-string v2, "com.ankai.cardvr"

    .line 9
    invoke-virtual {v1, v2}, Lo1/d;->i(Ljava/lang/Comparable;)V

    .line 10
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    iget-object v1, v1, Lu0/i;->n:Lo1/z;

    iget-object v2, p0, Lg/j;->x0:Lo1/p;

    invoke-virtual {v1, v2}, Lo1/z;->d(Lo1/p;)V

    .line 11
    sget-object v1, Ly0/g;->j:Lo1/y;

    iget-object v2, p0, Lg/o;->j0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v1, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->c0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    invoke-static {}, Lg/e;->p()I

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    .line 14
    invoke-virtual {p0}, Lchip/Chip;->n()V

    .line 15
    iget-object v2, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    iget-object v1, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "ro.fyt.realplatform"

    const-string v3, ""

    .line 17
    invoke-static {v2, v3}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "813CM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    iget-object v2, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 19
    iget-object v1, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 20
    :cond_1
    :goto_0
    invoke-super {p0}, Lg/o;->a()V

    return-void
.end method

.method public a0(I)V
    .locals 1

    .line 1
    iget v0, p0, Lg/j;->n0:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lg/j;->n0:I

    :cond_0
    return-void
.end method

.method public b()V
    .locals 8

    .line 1
    invoke-super {p0}, Lg/o;->b()V

    .line 2
    sget-object v0, Lu0/c;->j:Lo1/y;

    iget-object v1, p0, Lg/j;->C0:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lg/j;->C0:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->P:Lo1/z;

    iget-object v1, p0, Lg/j;->t0:Lo1/p;

    invoke-virtual {v0, v1}, Lo1/z;->a(Lo1/p;)V

    .line 5
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Lg/j;->w0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v1, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v4, "818"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v4, "815"

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    sget-object v1, La/b;->d:Lo1/d;

    iget-object v4, p0, Lg/j;->v0:Lo1/s;

    const-string v5, "com.fvision.camera"

    invoke-virtual {v1, v5, v4}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 9
    iget-object v4, p0, Lg/j;->v0:Lo1/s;

    const-string v5, "com.fvsm.camera"

    invoke-virtual {v1, v5, v4}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 10
    iget-object v4, p0, Lg/j;->v0:Lo1/s;

    const-string v5, "com.fvision.cameradouble"

    invoke-virtual {v1, v5, v4}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 11
    iget-object v4, p0, Lg/j;->v0:Lo1/s;

    const-string v5, "com.gp.dvr"

    invoke-virtual {v1, v5, v4}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 12
    iget-object v4, p0, Lg/j;->v0:Lo1/s;

    const-string v6, "com.sicadroid.ucam_car"

    invoke-virtual {v1, v6, v4}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 13
    iget-object v4, p0, Lg/j;->v0:Lo1/s;

    const-string v6, "com.williexing.android.apps.xcdvr1"

    invoke-virtual {v1, v6, v4}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 14
    iget-object v4, p0, Lg/j;->v0:Lo1/s;

    const-string v6, "com.synmoon.carkit"

    invoke-virtual {v1, v6, v4}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 15
    iget-object v4, p0, Lg/j;->v0:Lo1/s;

    const-string v6, "com.ankai.cardvr"

    invoke-virtual {v1, v6, v4}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 16
    iget-object v4, p0, Lg/j;->v0:Lo1/s;

    invoke-virtual {v1, v5, v4}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 17
    iget-object v4, p0, Lg/j;->v0:Lo1/s;

    const-string v5, "com.fh.dvr"

    invoke-virtual {v1, v5, v4}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 18
    :cond_0
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    iget-object v1, v1, Lu0/i;->n:Lo1/z;

    iget-object v4, p0, Lg/j;->x0:Lo1/p;

    invoke-virtual {v1, v4}, Lo1/z;->a(Lo1/p;)V

    .line 19
    invoke-static {}, Lg/e;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    invoke-static {}, Lg/e;->p()I

    move-result v1

    const/16 v4, 0x30

    const-wide/16 v5, 0x64

    const/16 v7, 0xd0

    if-ne v1, v4, :cond_1

    .line 21
    invoke-static {v7}, Lm1/c;->i(I)V

    const/16 v1, 0x8

    .line 22
    invoke-static {v1, v3}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    .line 23
    sget-object v1, Ly0/g;->j:Lo1/y;

    iget-object v4, p0, Lg/o;->j0:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget v1, Ly0/f;->h1:I

    if-ne v1, v3, :cond_2

    .line 25
    sget-object v1, Lu0/c;->c:Lo1/y;

    iget-object v4, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    iget-object v1, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    iget-object v0, p0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v1, p0, Lg/o;->k0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "ro.fyt.realplatform"

    const-string v4, ""

    .line 28
    invoke-static {v1, v4}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "813CM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-static {v7}, Lm1/c;->i(I)V

    .line 30
    sget-object v1, Ly0/g;->j:Lo1/y;

    iget-object v4, p0, Lg/o;->j0:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    sget v1, Ly0/f;->h1:I

    if-ne v1, v3, :cond_2

    .line 32
    sget-object v1, Lu0/c;->c:Lo1/y;

    iget-object v4, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 33
    iget-object v1, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 34
    iget-object v0, p0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v1, p0, Lg/o;->k0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    :cond_2
    :goto_0
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lchip/Chip;->c0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_3
    return-void
.end method

.method public g(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eq p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1
    :goto_0
    invoke-virtual {p0, v2}, Lchip/Chip;->J(Z)V

    const-string/jumbo v2, "wake"

    const-string v3, "==============================>>>> 0002     locationEnable false"

    .line 2
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    iget-object v2, p0, Lchip/Chip;->s:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 4
    iget-object v3, p0, Lg/j;->y0:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_2
    invoke-super {p0, p1}, Lchip/Chip;->g(I)V

    if-ne p1, v1, :cond_3

    return-void

    .line 6
    :cond_3
    sget p1, Lu0/b;->J0:I

    if-ne p1, v1, :cond_4

    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    .line 7
    iget-object p1, p0, Lchip/Chip;->s:Landroid/os/Handler;

    if-eqz p1, :cond_5

    .line 8
    iget-object v0, p0, Lg/j;->y0:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/dev/i2c-1"

    .line 1
    iput-object v0, p0, Lchip/Chip;->d:Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Lchip/Chip;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->h:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/dev/ttyS1"

    .line 2
    iput-object v0, p0, Lchip/Chip;->h:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-super {p0}, Lchip/Chip;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchip/Chip;->g:Ljava/lang/String;

    const-string v1, "/dev/ttyS2"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object v1, p0, Lchip/Chip;->g:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-super {p0}, Lchip/Chip;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()I
    .locals 3

    .line 1
    invoke-super {p0}, Lchip/Chip;->z()I

    move-result v0

    .line 2
    iget-object v1, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v2, "816"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v2, "818"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v2, "815"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v2, "855"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "ro.fyt.realplatform"

    const-string v2, ""

    .line 6
    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "809-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v2, "817"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x2b

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x45

    :cond_3
    :goto_1
    return v0
.end method
