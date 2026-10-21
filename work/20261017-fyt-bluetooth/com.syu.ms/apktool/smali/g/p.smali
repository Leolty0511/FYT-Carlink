.class public Lg/p;
.super Lg/k;
.source "SourceFile"


# instance fields
.field public C0:Z

.field public D0:Z

.field public E0:Z

.field public F0:J

.field public G0:Ljava/lang/Integer;

.field public H0:Ljava/lang/Integer;

.field public final I0:Ljava/lang/Runnable;

.field public final J0:Ljava/lang/Runnable;

.field public final K0:Ljava/lang/Runnable;

.field public final L0:Ljava/lang/Runnable;

.field public final M0:Ljava/lang/Runnable;

.field public N0:Z

.field public O0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lg/k;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lg/p;->C0:Z

    iput-boolean v0, p0, Lg/p;->D0:Z

    iput-boolean v0, p0, Lg/p;->E0:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lg/p;->F0:J

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lg/p;->G0:Ljava/lang/Integer;

    .line 5
    iput-object v1, p0, Lg/p;->H0:Ljava/lang/Integer;

    .line 6
    new-instance v2, Lg/p$b;

    invoke-direct {v2, p0}, Lg/p$b;-><init>(Lg/p;)V

    iput-object v2, p0, Lg/p;->I0:Ljava/lang/Runnable;

    .line 7
    new-instance v2, Lg/p$c;

    invoke-direct {v2, p0}, Lg/p$c;-><init>(Lg/p;)V

    iput-object v2, p0, Lg/p;->J0:Ljava/lang/Runnable;

    .line 8
    new-instance v2, Lg/p$d;

    invoke-direct {v2, p0}, Lg/p$d;-><init>(Lg/p;)V

    iput-object v2, p0, Lg/p;->K0:Ljava/lang/Runnable;

    .line 9
    new-instance v2, Lg/p$e;

    invoke-direct {v2, p0}, Lg/p$e;-><init>(Lg/p;)V

    iput-object v2, p0, Lg/p;->L0:Ljava/lang/Runnable;

    .line 10
    new-instance v2, Lg/p$f;

    invoke-direct {v2, p0}, Lg/p$f;-><init>(Lg/p;)V

    iput-object v2, p0, Lg/p;->M0:Ljava/lang/Runnable;

    .line 11
    iput-boolean v0, p0, Lg/p;->N0:Z

    .line 12
    new-instance v2, Lg/p$a;

    invoke-direct {v2, p0}, Lg/p$a;-><init>(Lg/p;)V

    iput-object v2, p0, Lg/p;->O0:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    .line 13
    iput v2, p0, Lchip/Chip;->D:I

    .line 14
    new-instance v3, Lf1/o$f;

    const-string v4, "LT6911"

    invoke-direct {v3, v4, v2}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lf1/o$d;

    const-class v5, Lf1/i;

    const-string v6, "/dev/i2c-0"

    const/16 v7, 0x2b

    invoke-direct {v4, v6, v7, v5}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v3, v4}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    const/16 v3, 0x3b

    .line 15
    invoke-static {v3}, Lg/e;->j(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 16
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v3

    const-string v5, "com.android.launcher9"

    invoke-virtual {v3, v5}, Ly0/j;->l3(Ljava/lang/String;)V

    const-string/jumbo v3, "ro.ls.gyro"

    const-string v5, "NULLLL"

    .line 17
    invoke-static {v3, v5}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v6, v3}, Lx0/c;->Z2(I)V

    .line 19
    new-instance v3, Lg/p$g;

    invoke-direct {v3, p0}, Lg/p$g;-><init>(Lg/p;)V

    sput-object v3, Le/c;->b:Lo1/o;

    .line 20
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-static {v3}, Lc/g;->g(Landroid/content/Context;)Lc/g;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lc/g;->b()V

    .line 22
    new-instance v5, Lc/g$b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "com.syu.doublecamera"

    invoke-direct {v5, v0, v1, v6, v1}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lc/g;->a(Lc/g$b;)V

    .line 23
    new-instance v0, Lc/g$b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "com.syu.carlink"

    invoke-direct {v0, v4, v1, v5, v1}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lc/g;->a(Lc/g$b;)V

    .line 24
    new-instance v0, Lc/g$b;

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "com.syu.hicar"

    invoke-direct {v0, v2, v1, v5, v1}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lc/g;->a(Lc/g$b;)V

    .line 25
    new-instance v0, Lc/g$b;

    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "com.baidu.carlifevehicle"

    invoke-direct {v0, v4, v1, v5, v1}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lc/g;->a(Lc/g$b;)V

    .line 26
    new-instance v0, Lc/g$b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Home"

    invoke-direct {v0, v2, v1, v4, v4}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lc/g;->a(Lc/g$b;)V

    .line 27
    invoke-virtual {p0}, Lg/p;->d0()V

    goto :goto_1

    :cond_1
    const/16 v1, 0x44

    .line 28
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    new-instance v0, Lg/p$h;

    invoke-direct {v0, p0}, Lg/p$h;-><init>(Lg/p;)V

    sput-object v0, Le/c;->w:Lo1/o;

    .line 30
    sput v4, Lu0/b;->P3:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x46

    .line 31
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x3d

    .line 32
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    :cond_3
    sput-boolean v0, Lu0/b;->V3:Z

    .line 34
    invoke-virtual {p0}, Lg/p;->d0()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic b0(Lg/p;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/p;->N0:Z

    return p0
.end method

.method public static synthetic c0(Lg/p;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/p;->e0()V

    return-void
.end method


# virtual methods
.method public X()V
    .locals 5

    .line 1
    new-instance v0, Lf1/o$f;

    const-string v1, "ARK7128"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lf1/o$d;

    const-class v2, Lf1/j;

    const-string v3, "/dev/i2c-1"

    const/16 v4, 0x58

    invoke-direct {v1, v3, v4, v2}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v0, v1}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    return-void
.end method

.method public a()V
    .locals 2

    const/16 v0, 0x47

    .line 1
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lg/p;->I0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lg/p;->J0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    invoke-super {p0}, Lg/k;->a()V

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    invoke-super {p0}, Lg/k;->b()V

    const/16 v0, 0x47

    .line 2
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v2, p0, Lg/p;->M0:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lg/p;->I0:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v1, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lg/p;->J0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    :cond_0
    invoke-static {}, Lg/e;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x42

    .line 7
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x46

    .line 9
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0xd0

    .line 10
    invoke-static {v0}, Lm1/c;->i(I)V

    :cond_2
    return-void
.end method

.method public c(Z[Lf1/o$b;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lg/k;->c(Z[Lf1/o$b;)V

    .line 2
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p1}, Lf1/o;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 4
    invoke-virtual {v1}, Lf1/o$b;->a()I

    move-result v2

    invoke-virtual {v1}, Lf1/o$b;->b()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lg/p;->g0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d0()V
    .locals 4

    const-string v0, "Qin"

    const-string v1, "--------------S9863 handlePhoneState "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lg/p;->O0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Lg/p;->e0()V

    .line 6
    new-instance v0, Lg/p$i;

    invoke-direct {v0, p0}, Lg/p$i;-><init>(Lg/p;)V

    .line 7
    sget-object v1, Lh0/d;->a:Lo1/y;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v1, Lu0/c;->a:Lo1/y;

    invoke-virtual {v1, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v1, Ly0/g;->k:Lo1/z;

    new-instance v3, Lg/p$j;

    invoke-direct {v3, p0, v0}, Lg/p$j;-><init>(Lg/p;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Lo1/z;->a(Lo1/p;)V

    .line 10
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    iget-object v1, v1, Lu0/i;->d0:Lo1/y;

    invoke-virtual {v1, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    iget-object v1, v1, Lu0/i;->c0:Lo1/y;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final e0()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lg/p;->N0:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------S9863 headsetConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/p;->N0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lg/p;->N0:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_1

    :cond_1
    const-string v0, "0"

    :goto_1
    const-string/jumbo v1, "sys.lsecbt.headset.state"

    invoke-static {v1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f0()V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    const/4 v0, 0x6

    .line 2
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    return-void
.end method

.method public g0(II)V
    .locals 13

    const/16 v0, 0xc

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p2, v1, :cond_d

    if-eq p2, v4, :cond_d

    const/16 v7, 0x10

    if-eq p2, v7, :cond_d

    const/16 v8, 0xf

    if-ne p2, v8, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v1, 0x8

    if-eq p2, v1, :cond_3

    const/16 v9, 0x13

    if-ne p2, v9, :cond_1

    goto :goto_0

    :cond_1
    if-eq p2, v0, :cond_2

    if-ne p2, v2, :cond_f

    .line 1
    :cond_2
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, v2, p1}, Lf1/o;->w(II)V

    .line 2
    iget-boolean v5, p0, Lchip/Chip;->E:Z

    goto/16 :goto_9

    :cond_3
    :goto_0
    if-ne p2, v1, :cond_4

    .line 3
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    iget-object v0, p0, Lg/k;->x0:Lf1/q$b;

    invoke-virtual {p2, p1, v0}, Lf1/o;->y(ILf1/q$b;)V

    :cond_4
    const/4 p2, 0x7

    const/4 v0, 0x6

    const/4 v2, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-ne p1, v6, :cond_8

    .line 4
    iget-object v7, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v7, v9, p1}, Lf1/o;->w(II)V

    .line 5
    iget-object v7, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v7, v3, p1}, Lf1/o;->w(II)V

    .line 6
    iget-object v3, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v3, v10, p1}, Lf1/o;->w(II)V

    .line 7
    iget-object v3, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v3, v2, p1}, Lf1/o;->w(II)V

    .line 8
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v0, p1}, Lf1/o;->w(II)V

    .line 9
    iget-object v0, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v0, p2, p1}, Lf1/o;->w(II)V

    .line 10
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, v1, p1}, Lf1/o;->w(II)V

    .line 11
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, v4, p1}, Lf1/o;->w(II)V

    .line 12
    invoke-static {}, Lg/f;->g()I

    move-result p2

    if-ne p2, v10, :cond_5

    move p2, v6

    goto :goto_1

    :cond_5
    move p2, v5

    .line 13
    :goto_1
    invoke-static {}, Lg/f;->g()I

    move-result v0

    if-ne v0, v9, :cond_6

    move v0, v6

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_2
    if-eqz v0, :cond_7

    .line 14
    iget-object v1, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v1, v8, p1}, Lf1/o;->w(II)V

    .line 15
    :cond_7
    invoke-static {}, Lg/f;->g()I

    move-result v1

    if-eqz v1, :cond_e

    if-nez p2, :cond_e

    if-eqz v0, :cond_f

    goto/16 :goto_7

    .line 16
    :cond_8
    invoke-static {}, Lg/f;->g()I

    move-result v11

    if-ne v11, v10, :cond_9

    move v11, v6

    goto :goto_3

    :cond_9
    move v11, v5

    .line 17
    :goto_3
    invoke-static {}, Lg/f;->g()I

    move-result v12

    if-ne v12, v9, :cond_a

    move v12, v6

    goto :goto_4

    :cond_a
    move v12, v5

    :goto_4
    if-nez v11, :cond_c

    if-eqz v12, :cond_b

    goto :goto_5

    :cond_b
    const-string/jumbo v7, "ro.fyt.realplatform"

    const-string v11, ""

    .line 18
    invoke-static {v7, v11}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "6316N"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 19
    iget-object v5, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5, v9, p1}, Lf1/o;->w(II)V

    .line 20
    iget-object v5, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5, v3, p1}, Lf1/o;->w(II)V

    .line 21
    iget-object v3, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v3, v10, p1}, Lf1/o;->w(II)V

    .line 22
    iget-object v3, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v3, v2, p1}, Lf1/o;->w(II)V

    .line 23
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v0, p1}, Lf1/o;->w(II)V

    .line 24
    iget-object v0, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v0, p2, p1}, Lf1/o;->w(II)V

    .line 25
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, v1, p1}, Lf1/o;->w(II)V

    .line 26
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, v4, p1}, Lf1/o;->w(II)V

    .line 27
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, v8, p1}, Lf1/o;->w(II)V

    goto :goto_7

    .line 28
    :cond_c
    :goto_5
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, v7, p1}, Lf1/o;->w(II)V

    goto :goto_8

    .line 29
    :cond_d
    :goto_6
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const/16 v7, 0xb

    invoke-virtual {v2, v7, p1}, Lf1/o;->w(II)V

    .line 30
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v0, p1}, Lf1/o;->w(II)V

    .line 31
    iget-object v0, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v0, v1, p1}, Lf1/o;->w(II)V

    .line 32
    iget-object v0, p0, Lchip/Chip;->z:Lf1/o;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lf1/o;->w(II)V

    .line 33
    invoke-static {}, Lg/f;->g()I

    move-result v0

    if-ne v0, v3, :cond_f

    if-ne p2, v4, :cond_f

    :cond_e
    :goto_7
    move v5, v6

    :cond_f
    :goto_8
    move v2, v6

    :goto_9
    if-eqz v5, :cond_10

    .line 34
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, p1, v2}, Lf1/o;->C(II)Z

    :cond_10
    return-void
.end method

.method public j(Lmodule/sound/AudioDevice;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lchip/Chip;->j(Lmodule/sound/AudioDevice;)V

    .line 2
    instance-of p1, p1, Lmodule/sound/C3702;

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ly0/f;->x0:[I

    const/4 v0, 0x5

    const/4 v1, 0x2

    aput v1, p1, v0

    const/4 v0, 0x6

    .line 4
    aput v1, p1, v0

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 5
    aput v1, p1, v0

    :cond_0
    return-void
.end method

.method public k(Lf1/o$c;)V
    .locals 1

    .line 1
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iput-object v0, p0, Lchip/Chip;->z:Lf1/o;

    .line 2
    invoke-virtual {v0, p1}, Lf1/o;->v(Lf1/o$c;)V

    .line 3
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lf1/o;->x(Z)V

    .line 4
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    const-string v0, "TP2850"

    invoke-virtual {p1, v0}, Lf1/o;->t(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 5
    iget-object p1, p0, Lg/k;->A0:[I

    sput-object p1, Lf1/b;->v0:[I

    .line 6
    iget-object p1, p0, Lg/k;->B0:[I

    sput-object p1, Lf1/b;->w0:[I

    .line 7
    :cond_0
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p1, p0}, Lf1/o;->l(Lf1/o$e;)V

    .line 8
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lf1/o;->m()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    :cond_1
    sget-object p1, Lu0/c;->P:Lo1/z;

    iget-object v0, p0, Lg/k;->y0:Lo1/p;

    invoke-virtual {p1, v0}, Lo1/z;->a(Lo1/p;)V

    :cond_2
    return-void
.end method
