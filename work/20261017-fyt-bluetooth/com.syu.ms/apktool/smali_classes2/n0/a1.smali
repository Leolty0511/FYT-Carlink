.class public Ln0/a1;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:Landroid/widget/Toast;

.field public G:Z

.field public H:Ljava/lang/Runnable;

.field public final I:Landroid/os/Handler;

.field public z:Lui/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    .line 2
    new-instance v0, Ln0/a1$g;

    invoke-direct {v0, p0}, Ln0/a1$g;-><init>(Ln0/a1;)V

    iput-object v0, p0, Ln0/a1;->A:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ln0/a1$h;

    invoke-direct {v0, p0}, Ln0/a1$h;-><init>(Ln0/a1;)V

    iput-object v0, p0, Ln0/a1;->B:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ln0/a1$b;

    invoke-direct {v0, p0}, Ln0/a1$b;-><init>(Ln0/a1;)V

    iput-object v0, p0, Ln0/a1;->C:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ln0/a1$c;

    invoke-direct {v0, p0}, Ln0/a1$c;-><init>(Ln0/a1;)V

    iput-object v0, p0, Ln0/a1;->D:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Ln0/a1$d;

    invoke-direct {v0, p0}, Ln0/a1$d;-><init>(Ln0/a1;)V

    iput-object v0, p0, Ln0/a1;->E:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ln0/a1;->F:Landroid/widget/Toast;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Ln0/a1;->G:Z

    .line 9
    new-instance v0, Ln0/a1$e;

    invoke-direct {v0, p0}, Ln0/a1$e;-><init>(Ln0/a1;)V

    iput-object v0, p0, Ln0/a1;->H:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Ln0/a1$f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ln0/a1$f;-><init>(Ln0/a1;Landroid/os/Looper;)V

    iput-object v0, p0, Ln0/a1;->I:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic S3(Ln0/a1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln0/a1;->V3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic T3(Ln0/a1;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Ln0/a1;->H:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Lo1/h;->b:Lo1/y;

    iget-object v1, p0, Ln0/a1;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    const-string v0, "sys.fyt.bluetooth_type"

    const-string v1, "0"

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    instance-of v1, p1, Lmodule/sound/C32107;

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    .line 4
    sget-object v2, Lmodule/sound/C32107$CHANNEL;->f:Lmodule/sound/C32107$CHANNEL;

    iget v2, v2, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v1, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    const-string v1, "2"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    sget-object v0, Lmodule/sound/C32107$CHANNEL;->c:Lmodule/sound/C32107$CHANNEL;

    iget v1, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    const/4 v1, 0x3

    .line 7
    iget v0, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_1
    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lmodule/sound/AudioDevice;->M0([I)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v0, p1, Lmodule/sound/C3702;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lmodule/sound/C3702;

    sget-object v0, Lmodule/sound/C3702;->a1:[I

    const/16 v1, 0x7c

    invoke-virtual {p1, v0, v1}, Lmodule/sound/C3702;->I1([II)V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x8a
        0x2
    .end array-data
.end method

.method public I3(Le1/c;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->I3(Le1/c;)V

    return-void
.end method

.method public M2()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->M2()V

    .line 2
    invoke-static {}, Lo1/u;->Q0()V

    .line 3
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    const-string v1, "ACTION_ENTER"

    invoke-virtual {v0, v1}, Lplugins/ZLink;->h0(Ljava/lang/String;)V

    return-void
.end method

.method public P2()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    const-string v0, "/dev/ttyS0"

    .line 5
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v1, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v1}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lz/k;->c()V

    .line 8
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x7

    const/16 v2, 0x16

    aput v2, v0, v1

    :goto_0
    return-void
.end method

.method public Q3()Z
    .locals 3

    .line 1
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Ly0/f;->C0:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public S2()V
    .locals 7

    const-string v0, ""

    .line 1
    sget-object v1, Lg/e;->a:Lg/g;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lg/j;

    if-eqz v2, :cond_1

    .line 2
    check-cast v1, Lg/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lg/j;->a0(I)V

    :try_start_0
    const-string v1, "persist.lsec7731.DVRHdPort"

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "ro.lsec7731.UsbHdPort"

    const-string v5, "0,0"

    .line 4
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/syu/jni/ToolsJni;->setUsbIndex(II)I

    goto :goto_0

    .line 7
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    aget-object v0, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/syu/jni/ToolsJni;->setUsbIndex(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    :cond_1
    :goto_0
    invoke-super {p0}, Ln0/c4;->S2()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 10
    sput v0, Ly0/f;->H0:F

    const/high16 v0, 0x42be0000    # 95.0f

    .line 11
    sput v0, Ly0/f;->I0:F

    const/16 v0, 0x12

    .line 12
    sput v0, Ly0/f;->G0:I

    .line 13
    sget-object v0, Le/c;->D:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 14
    invoke-static {}, Le/a;->h()Lo1/o;

    move-result-object v1

    const/16 v2, -0x1f4

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 15
    invoke-static {}, Le/a;->j()Lo1/o;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 16
    invoke-virtual {p0}, Ln0/a1;->U3()V

    return-void
.end method

.method public U2()V
    .locals 2

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lchip/Chip;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lchip/Chip;

    const/16 v1, 0x34

    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lchip/Chip;->Q(Z)V

    .line 3
    :cond_0
    invoke-super {p0}, Ln0/c4;->U2()V

    return-void
.end method

.method public final U3()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    .line 2
    new-instance v1, Ln0/a1$a;

    invoke-direct {v1, p0, v0}, Ln0/a1$a;-><init>(Ln0/a1;I)V

    invoke-static {v1}, Ln0/k4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V3(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln0/a1;->F:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Ln0/a1;->F:Landroid/widget/Toast;

    .line 3
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 4
    iget-object p1, p0, Ln0/a1;->F:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 v0, -0x10000

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 7
    iget-object p1, p0, Ln0/a1;->F:Landroid/widget/Toast;

    const/16 v0, 0x30

    const/4 v1, 0x0

    const/16 v2, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_0
    iget-object p1, p0, Ln0/a1;->F:Landroid/widget/Toast;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public X2()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lb/b;->f()Lb/b;

    move-result-object v1

    const-string v2, "3"

    const/4 v3, 0x1

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3
    invoke-virtual {v1, v2, v3}, Lb/b;->b(Ljava/lang/String;Z)V

    .line 4
    invoke-static {}, Lb/b;->f()Lb/b;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2, v3}, Lb/b;->b(Ljava/lang/String;Z)V

    .line 5
    sget-object v1, Lu0/b;->h3:[I

    const/4 v2, 0x4

    const/4 v5, -0x1

    aput v5, v1, v2

    const/4 v6, 0x5

    .line 6
    aput v5, v1, v6

    const/4 v7, 0x6

    .line 7
    aput v5, v1, v7

    const/4 v8, 0x7

    .line 8
    aput v5, v1, v8

    const/16 v9, 0xa

    .line 9
    aput v5, v1, v9

    const/16 v9, 0xb

    .line 10
    aput v5, v1, v9

    const/16 v9, 0xc

    .line 11
    aput v5, v1, v9

    const/16 v9, 0xd

    .line 12
    aput v5, v1, v9

    const/16 v9, 0xe

    .line 13
    aput v5, v1, v9

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Lc/g;->g(Landroid/content/Context;)Lc/g;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v3}, Lc/g;->k(Z)V

    .line 16
    invoke-virtual {v1}, Lc/g;->b()V

    .line 17
    sget-object v5, La/b;->j:Ljava/lang/String;

    .line 18
    invoke-static {}, Lo1/u;->Q()Z

    move-result v9

    const/4 v10, 0x0

    .line 19
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v9, :cond_0

    .line 20
    new-instance v12, Lc/g$b;

    sget-object v13, La/b;->p:Ljava/lang/String;

    invoke-direct {v12, v11, v4, v5, v13}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lc/g;->a(Lc/g$b;)V

    goto :goto_0

    .line 21
    :cond_0
    new-instance v12, Lc/g$b;

    sget-object v13, La/b;->o:Ljava/lang/String;

    sget-object v14, La/b;->p:Ljava/lang/String;

    invoke-direct {v12, v11, v4, v13, v14}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lc/g;->a(Lc/g$b;)V

    .line 22
    :goto_0
    new-instance v11, Lc/g$b;

    const/4 v12, 0x2

    sget-object v13, La/b;->k:Ljava/lang/String;

    sget-object v14, La/b;->l:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v4, v15, v13, v14}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lc/g;->a(Lc/g$b;)V

    const/16 v4, 0x8

    const/4 v11, 0x3

    if-eqz v9, :cond_1

    .line 23
    new-instance v9, Lc/g$b;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.syu.btav"

    invoke-direct {v9, v12, v13, v5, v14}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lc/g;->a(Lc/g$b;)V

    .line 24
    new-instance v9, Lc/g$b;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, La/b;->z:Ljava/lang/String;

    invoke-direct {v9, v11, v12, v5, v13}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lc/g;->a(Lc/g$b;)V

    goto :goto_1

    .line 25
    :cond_1
    new-instance v5, Lc/g$b;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    sget-object v19, La/b;->k:Ljava/lang/String;

    sget-object v21, La/b;->l:Ljava/lang/String;

    const-string v20, "com.syu.bt.act.ActBtAvStart"

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v21}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lc/g;->a(Lc/g$b;)V

    .line 26
    new-instance v5, Lc/g$b;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, La/b;->y:Ljava/lang/String;

    sget-object v13, La/b;->z:Ljava/lang/String;

    invoke-direct {v5, v9, v11, v12, v13}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lc/g;->a(Lc/g$b;)V

    :goto_1
    const-string v5, "sys.syu.mode_ignore_video"

    .line 27
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 28
    new-instance v5, Lc/g$b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, La/b;->A:Ljava/lang/String;

    sget-object v12, La/b;->B:Ljava/lang/String;

    invoke-direct {v5, v2, v9, v11, v12}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lc/g;->a(Lc/g$b;)V

    move v2, v6

    .line 29
    :cond_2
    new-instance v5, Lc/g$b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "Navi"

    invoke-direct {v5, v2, v15, v6, v6}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lc/g;->a(Lc/g$b;)V

    const-string v1, "sys.fyt.bluetooth_type"

    const-string v2, "0"

    .line 30
    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "persist.sys.syu.audio"

    const-string v2, "defult"

    .line 31
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "32107"

    .line 32
    invoke-static {v1, v2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    new-instance v1, Ln0/a1$m;

    invoke-direct {v1, v0}, Ln0/a1$m;-><init>(Ln0/a1;)V

    .line 34
    sget-object v2, Lu0/c;->b:Lo1/z;

    invoke-virtual {v2, v1}, Lo1/z;->a(Lo1/p;)V

    .line 35
    sget v1, Lu0/b;->D:I

    if-ne v1, v7, :cond_3

    goto :goto_2

    :cond_3
    move v3, v10

    :goto_2
    invoke-static {v10, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    .line 36
    :cond_4
    invoke-super/range {p0 .. p0}, Ln0/c4;->X2()V

    .line 37
    sget-object v1, Le/c;->D:Lo1/v;

    invoke-virtual {v1}, Lo1/v;->b()V

    .line 38
    invoke-static {}, Lo1/q0;->v()Z

    move-result v2

    const/16 v3, 0x7d0

    const/16 v5, -0x1f4

    if-nez v2, :cond_5

    .line 39
    invoke-static {}, Le/a;->h()Lo1/o;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lo1/v;->a(Lo1/o;I)V

    .line 40
    invoke-static {}, Le/a;->j()Lo1/o;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lo1/v;->a(Lo1/o;I)V

    goto :goto_3

    .line 41
    :cond_5
    invoke-static {}, Le/a;->j()Lo1/o;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lo1/v;->a(Lo1/o;I)V

    .line 42
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lo1/v;->a(Lo1/o;I)V

    :goto_3
    const-string v1, "persist.syu.universal_voice"

    .line 43
    invoke-static {v1, v10}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 44
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v1

    new-instance v2, Ln0/a1$n;

    invoke-direct {v2, v0}, Ln0/a1$n;-><init>(Ln0/a1;)V

    invoke-virtual {v1, v8, v2}, Lc/f;->h(ILc/f$a;)V

    .line 45
    :cond_6
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v1

    new-instance v2, Ln0/a1$o;

    invoke-direct {v2, v0}, Ln0/a1$o;-><init>(Ln0/a1;)V

    invoke-virtual {v1, v4, v2}, Lc/f;->h(ILc/f$a;)V

    return-void
.end method

.method public Z2()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->j()V

    .line 2
    invoke-virtual {p0}, Ln0/a1;->U3()V

    .line 3
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Ly0/d;->b:[I

    const/16 v1, 0xe

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method public a3()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->k()V

    .line 2
    invoke-virtual {p0}, Ln0/a1;->U3()V

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x5

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method

.method public b3()V
    .locals 5

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-virtual {p0}, Ln0/a1;->U3()V

    .line 3
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 4
    invoke-static {}, Lg/e;->e()I

    .line 5
    sget-object v0, Lu0/b;->t4:[I

    const/16 v3, 0x16

    const/4 v4, 0x7

    aput v3, v0, v4

    .line 6
    aput v2, v0, v1

    const-string v1, "/dev/ttyS1"

    .line 7
    invoke-static {v1}, Lz/k;->f(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 8
    aput v1, v0, v1

    .line 9
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x4

    aget v2, v0, v4

    aput v2, v0, v1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 11
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v1

    .line 12
    sget-object v0, Ly0/d;->a:[I

    const/16 v3, 0xe

    aput v1, v0, v3

    .line 13
    sget-object v0, Ly0/d;->b:[I

    const/4 v1, 0x6

    aput v1, v0, v3

    .line 14
    sget-object v0, Ly0/d;->c:[I

    aput v2, v0, v3

    :cond_1
    :goto_0
    return-void
.end method

.method public h3()I
    .locals 2

    .line 1
    iget v0, p0, Ln0/c4;->f:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v0, 0x34

    .line 2
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Ln0/c4;->f:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    :goto_0
    const/16 v0, 0xc

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x2

    :goto_2
    return v0
.end method

.method public j3()V
    .locals 5

    .line 1
    sget-object v0, Lbase/Configure$Property;->X:Lbase/Configure$Property;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->g(Ljava/lang/String;)V

    const-string v0, "ZHAN"

    .line 2
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x53

    .line 3
    sput v0, Lm1/a;->d:I

    const/16 v0, 0x14

    .line 4
    sput v0, Lu0/b;->Z1:I

    const/16 v0, 0x3e8

    .line 5
    sput v0, Lu0/b;->q2:I

    const/4 v0, 0x2

    .line 6
    sput v0, Lmodule/sound/AudioDevice;->E0:I

    .line 7
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 8
    sget-object v0, Lo1/h;->b:Lo1/y;

    iget-object v1, p0, Ln0/a1;->C:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const/4 v0, 0x1

    .line 9
    sput v0, Lh0/c;->i0:I

    const/4 v1, 0x3

    .line 10
    sput v1, Lh0/c;->j0:I

    .line 11
    sput v0, Lw0/d;->S:I

    .line 12
    sput v2, Lw0/d;->R:I

    .line 13
    invoke-static {}, Lo1/q0;->v()Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-static {}, La/f;->w()I

    move-result v1

    const/16 v3, 0x384

    const/16 v4, 0x400

    if-gt v1, v3, :cond_0

    const/16 v4, 0x320

    goto :goto_0

    :cond_0
    if-gt v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x500

    .line 15
    :goto_0
    new-instance v1, Lui/a$d;

    invoke-direct {v1}, Lui/a$d;-><init>()V

    const-string v3, "ui/vol/zhan/"

    .line 16
    invoke-virtual {v1, v3}, Lui/a$d;->p(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const/16 v3, 0x50

    .line 17
    invoke-virtual {v1, v3}, Lui/a$d;->h(I)Lui/a$d;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v2}, Lui/a$d;->u(I)Lui/a$d;

    move-result-object v1

    const-string v2, "unmute.png"

    .line 19
    invoke-virtual {v1, v2}, Lui/a$d;->l(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v2, "mute.png"

    .line 20
    invoke-virtual {v1, v2}, Lui/a$d;->g(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/bar.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lui/a$d;->c(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/bar_p.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Lui/a$d;->d(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/bk.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lui/a$d;->b(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v2, "node.png"

    .line 24
    invoke-virtual {v1, v2}, Lui/a$d;->k(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v2, "VOL "

    .line 25
    invoke-virtual {v1, v2}, Lui/a$d;->r(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    sget v2, Ly0/f;->g:I

    .line 26
    invoke-virtual {v1, v2}, Lui/a$d;->o(I)Lui/a$d;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lui/a$d;->i(Z)Lui/a$d;

    move-result-object v1

    const/16 v2, 0x1c

    .line 28
    invoke-virtual {v1, v2}, Lui/a$d;->t(I)Lui/a$d;

    move-result-object v1

    new-instance v2, Ln0/a1$j;

    invoke-direct {v2, p0}, Ln0/a1$j;-><init>(Ln0/a1;)V

    .line 29
    invoke-virtual {v1, v2}, Lui/a$d;->m(Landroid/view/View$OnClickListener;)Lui/a$d;

    move-result-object v1

    new-instance v2, Ln0/a1$i;

    invoke-direct {v2, p0}, Ln0/a1$i;-><init>(Ln0/a1;)V

    .line 30
    invoke-virtual {v1, v2}, Lui/a$d;->n(Lui/Bar$a;)Lui/a$d;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lui/a$d;->a()Lui/a;

    move-result-object v1

    iput-object v1, p0, Ln0/a1;->z:Lui/a;

    const/4 v2, 0x6

    .line 32
    invoke-virtual {v1, v2}, Lui/a;->r(I)V

    .line 33
    iget-object v1, p0, Ln0/a1;->z:Lui/a;

    new-instance v2, Ln0/a1$k;

    invoke-direct {v2, p0}, Ln0/a1$k;-><init>(Ln0/a1;)V

    invoke-virtual {v1, v2}, Lui/a;->q(Lui/a$f;)V

    .line 34
    iget-object v1, p0, Ln0/a1;->z:Lui/a;

    invoke-static {v1}, La/f;->D(Lui/b;)V

    .line 35
    :cond_2
    sput-boolean v0, Lu0/b;->h2:Z

    return-void
.end method

.method public x3()V
    .locals 5

    .line 1
    invoke-super {p0}, Ln0/c4;->x3()V

    const-string v0, "ro.syu.brightLevelOfDay"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->E(Ljava/lang/String;)[I

    move-result-object v0

    const-string v2, "ro.syu.brightLevelOfNight"

    .line 3
    invoke-static {v2, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo1/s0;->E(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-static {v0, v2}, Lo1/s0;->h([II)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    :goto_0
    sput-object v3, Lu0/b;->V2:[I

    .line 5
    invoke-static {v0, v2}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    :goto_1
    sput-object v1, Lu0/b;->W2:[I

    .line 6
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    iput v2, v0, Lh1/a;->h:I

    .line 7
    invoke-static {}, Lg/e;->a()I

    .line 8
    new-instance v0, Ln0/a1$l;

    invoke-direct {v0, p0}, Ln0/a1$l;-><init>(Ln0/a1;)V

    sput-object v0, Lu0/b;->Y2:Lo1/o;

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x32
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x4b
        0x64
    .end array-data
.end method
