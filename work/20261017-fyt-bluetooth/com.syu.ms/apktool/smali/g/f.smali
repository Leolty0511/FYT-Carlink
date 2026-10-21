.class public Lg/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->g:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Z)V
    .locals 1

    const-string v0, "com.syu.fourcamera2"

    .line 1
    invoke-static {v0, p0}, Lu0/d;->m0(Ljava/lang/String;Z)V

    const-string v0, "com.ivicar.avm"

    .line 2
    invoke-static {v0, p0}, Lu0/d;->m0(Ljava/lang/String;Z)V

    const-string v0, "com.baony.avm360"

    .line 3
    invoke-static {v0, p0}, Lu0/d;->m0(Ljava/lang/String;Z)V

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lbase/Configure$Property;->Y:Lbase/Configure$Property;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "829"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "832"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "825"

    :cond_1
    return-object v0
.end method

.method public static f(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g()I
    .locals 2

    const-string v0, "persist.syu.camera360"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 2

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.syu.fourcamera2"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.ivicar.avm"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.baony.avm360"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static i()V
    .locals 1

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    invoke-interface {v0}, Lg/g;->a()V

    .line 2
    invoke-static {}, Lg/e;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Lg/g$a;

    invoke-direct {v0}, Lg/g$a;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 4
    :pswitch_0
    new-instance v0, Lg/i;

    invoke-direct {v0}, Lg/i;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 5
    :pswitch_1
    new-instance v0, Lg/l;

    invoke-direct {v0}, Lg/l;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 6
    :pswitch_2
    new-instance v0, Lg/h;

    invoke-direct {v0}, Lg/h;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 7
    :pswitch_3
    new-instance v0, Lg/m;

    invoke-direct {v0}, Lg/m;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 8
    :pswitch_4
    new-instance v0, Lg/p;

    invoke-direct {v0}, Lg/p;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 9
    :pswitch_5
    new-instance v0, Lg/k;

    invoke-direct {v0}, Lg/k;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 10
    :pswitch_6
    new-instance v0, Lg/j;

    invoke-direct {v0}, Lg/j;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 11
    :pswitch_7
    new-instance v0, Lg/o;

    invoke-direct {v0}, Lg/o;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 12
    :pswitch_8
    new-instance v0, Lg/b;

    invoke-direct {v0}, Lg/b;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 13
    :pswitch_9
    new-instance v0, Lg/n;

    invoke-direct {v0}, Lg/n;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 14
    :pswitch_a
    new-instance v0, Lg/d;

    invoke-direct {v0}, Lg/d;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    goto :goto_0

    .line 15
    :pswitch_b
    new-instance v0, Lg/a;

    invoke-direct {v0}, Lg/a;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    .line 16
    :goto_0
    sget-object v0, Lg/e;->a:Lg/g;

    invoke-interface {v0}, Lg/g;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
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
.end method

.method public static j()V
    .locals 3

    const/16 v0, 0x32

    .line 1
    sput v0, Lu0/b;->P2:I

    .line 2
    sput v0, Lu0/b;->R2:I

    const/16 v0, 0xbb8

    .line 3
    sput v0, Lu0/b;->v3:I

    .line 4
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    .line 5
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 6
    invoke-static {}, Ly0/d;->t()V

    .line 7
    invoke-static {}, Ly0/d;->z()V

    const-string v0, "/dev/ttyS4"

    .line 8
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 9
    invoke-static {v0}, Le1/b;->c(I)V

    :cond_0
    return-void
.end method

.method public static k()V
    .locals 8

    const/16 v0, 0x32

    .line 1
    sput v0, Lu0/b;->P2:I

    .line 2
    sput v0, Lu0/b;->R2:I

    const/16 v0, 0xbb8

    .line 3
    sput v0, Lu0/b;->v3:I

    .line 4
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string/jumbo v3, "ro.fyt.m_VideoIC"

    const/16 v4, 0x1b

    const/16 v5, 0x1a

    const/4 v6, 0x6

    const/16 v7, 0x11

    if-eq v0, v7, :cond_2

    .line 5
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v7, 0x19

    if-eq v0, v7, :cond_2

    .line 6
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 7
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-ne v0, v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v4, 0x27

    if-ne v0, v4, :cond_6

    const/4 v0, 0x4

    .line 9
    invoke-static {v0}, Ly0/h;->V(I)V

    .line 10
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 11
    invoke-static {v1}, Le1/b;->c(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v6}, Le1/b;->c(I)V

    .line 13
    :goto_0
    invoke-static {}, Lu0/d;->i0()V

    goto :goto_5

    .line 14
    :cond_2
    :goto_1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 15
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {}, Ly0/b;->t()V

    goto :goto_3

    .line 17
    :cond_4
    :goto_2
    invoke-static {}, Ly0/b;->s()V

    .line 18
    :goto_3
    invoke-static {}, Lz/k;->c()V

    .line 19
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 20
    invoke-static {v1}, Le1/b;->c(I)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x5

    .line 21
    invoke-static {v0}, Le1/b;->c(I)V

    .line 22
    :goto_4
    invoke-static {}, Lu0/d;->i0()V

    .line 23
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v1, "/dev/sound_spectrogram"

    invoke-virtual {v0, v1}, Lo1/i0;->a(Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 24
    invoke-static {v0}, Ls0/d;->k(I)V

    :cond_6
    :goto_5
    return-void
.end method

.method public static l()V
    .locals 14

    const/4 v0, 0x0

    .line 1
    sput v0, Lu0/b;->P2:I

    .line 2
    sput v0, Lu0/b;->R2:I

    const/16 v1, 0xbb8

    .line 3
    sput v1, Lu0/b;->v3:I

    .line 4
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const-string v2, "/dev/snd/sound_spectrogram"

    const/4 v3, 0x4

    const/16 v4, 0x9

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lq0/c;->a(I)V

    .line 6
    invoke-static {v3}, Ly0/h;->V(I)V

    .line 7
    invoke-static {v0}, Le1/b;->c(I)V

    .line 8
    sget-object v0, Lz/a;->w:Lo1/i0;

    invoke-virtual {v0, v2}, Lo1/i0;->a(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 9
    :cond_0
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x8

    const/16 v5, 0x25

    const/16 v6, 0x24

    const/16 v7, 0x23

    const/16 v8, 0x22

    const/16 v9, 0x1d

    const/16 v10, 0x1c

    const/16 v11, 0xb

    const/16 v12, 0x17

    const/16 v13, 0x16

    if-eq v1, v4, :cond_4

    .line 10
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v11, :cond_4

    .line 11
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_4

    .line 12
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0xe

    if-eq v1, v4, :cond_4

    .line 13
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0xf

    if-eq v1, v4, :cond_4

    .line 14
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x12

    if-eq v1, v4, :cond_4

    .line 15
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x13

    if-eq v1, v4, :cond_4

    .line 16
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x14

    if-eq v1, v4, :cond_4

    .line 17
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x15

    if-eq v1, v4, :cond_4

    .line 18
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v13, :cond_4

    .line 19
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v12, :cond_4

    .line 20
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v10, :cond_4

    .line 21
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v9, :cond_4

    .line 22
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x1e

    if-eq v1, v4, :cond_4

    .line 23
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x1f

    if-eq v1, v4, :cond_4

    .line 24
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x20

    if-eq v1, v4, :cond_4

    .line 25
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x21

    if-eq v1, v4, :cond_4

    .line 26
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v8, :cond_4

    .line 27
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v7, :cond_4

    .line 28
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v6, :cond_4

    .line 29
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-ne v1, v5, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "/dev/ttyS1"

    if-ne v0, v1, :cond_2

    .line 31
    invoke-static {}, Ly0/d;->s()V

    .line 32
    invoke-static {}, Ly0/d;->y()V

    .line 33
    invoke-static {v2}, Lz/k;->g(Ljava/lang/String;)V

    .line 34
    invoke-static {v3}, Le1/b;->c(I)V

    goto/16 :goto_4

    .line 35
    :cond_2
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    .line 36
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 37
    :cond_3
    invoke-static {}, Ly0/d;->s()V

    .line 38
    invoke-static {}, Ly0/d;->z()V

    .line 39
    invoke-static {v2}, Lz/k;->g(Ljava/lang/String;)V

    .line 40
    invoke-static {v3}, Le1/b;->c(I)V

    goto :goto_4

    .line 41
    :cond_4
    :goto_0
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v13, :cond_6

    .line 42
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v12, :cond_6

    .line 43
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v10, :cond_6

    .line 44
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v9, :cond_6

    .line 45
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v8, :cond_6

    .line 46
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v7, :cond_6

    .line 47
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 48
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-ne v1, v5, :cond_5

    goto :goto_1

    .line 49
    :cond_5
    invoke-static {}, Ly0/b;->u()V

    goto :goto_2

    .line 50
    :cond_6
    :goto_1
    invoke-static {}, Ly0/b;->v()V

    .line 51
    :goto_2
    invoke-static {}, Lz/k;->c()V

    .line 52
    invoke-static {}, Lg/f;->u()V

    const-string/jumbo v1, "ro.build.version.sdk"

    .line 53
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_7

    .line 54
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v1, "/dev/sound_spectrogram"

    invoke-virtual {v0, v1}, Lo1/i0;->a(Ljava/lang/String;)I

    goto :goto_3

    .line 55
    :cond_7
    sget-object v0, Lz/a;->w:Lo1/i0;

    invoke-virtual {v0, v2}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 56
    :goto_3
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-ne v0, v11, :cond_8

    .line 57
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x7

    aput v13, v0, v1

    :cond_8
    :goto_4
    return-void
.end method

.method public static m()Z
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->g()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string/jumbo v0, "sys.syu.camera360"

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lg/f;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public static n(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static o()Z
    .locals 2

    .line 1
    invoke-static {}, Lg/f;->g()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p()Z
    .locals 2

    .line 1
    invoke-static {}, Lg/f;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static q()Z
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static r()Z
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x36

    if-eq v0, v1, :cond_1

    const/16 v1, 0x37

    if-eq v0, v1, :cond_1

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static s()Z
    .locals 2

    .line 1
    invoke-static {}, Lg/f;->g()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static t()Z
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static u()V
    .locals 3

    const-string/jumbo v0, "ro.fyt.m_VideoIC"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-static {v2}, Le1/b;->c(I)V

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    .line 3
    invoke-static {v0}, Le1/b;->c(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    .line 4
    invoke-static {v0}, Le1/b;->c(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    .line 5
    invoke-static {v0}, Le1/b;->c(I)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Le1/b;->c(I)V

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-static {v1}, Le1/b;->c(I)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Le1/b;->c(I)V

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-static {v2}, Le1/b;->c(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->g:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static w(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static x(Ljava/lang/String;Z)V
    .locals 12

    const-string/jumbo v0, "ro.fyt.platform"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "sys.fyt.platform"

    .line 3
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_0
    const-string p1, "5002"

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {v0}, Lg/e;->n(I)V

    .line 7
    invoke-static {v0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_3
    const-string p1, "5005"

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    .line 9
    invoke-static {v0}, Lg/e;->n(I)V

    .line 10
    invoke-static {v1}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_4
    const-string p1, "5006"

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x4

    if-eqz p1, :cond_5

    .line 12
    invoke-static {v1}, Lg/e;->n(I)V

    .line 13
    invoke-static {v2}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_5
    const-string p1, "5008"

    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x6

    if-eqz p1, :cond_6

    .line 15
    invoke-static {v1}, Lg/e;->n(I)V

    .line 16
    invoke-static {v3}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_6
    const-string p1, "5009"

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v4, 0x8

    if-eqz p1, :cond_7

    .line 18
    invoke-static {v2}, Lg/e;->n(I)V

    .line 19
    invoke-static {v4}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_7
    const-string p1, "6006"

    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v5, 0x7

    if-eqz p1, :cond_8

    .line 21
    invoke-static {v1}, Lg/e;->n(I)V

    .line 22
    invoke-static {v5}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_8
    const-string p1, "2009"

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0x9

    if-eqz p1, :cond_9

    .line 24
    invoke-static {v2}, Lg/e;->n(I)V

    .line 25
    invoke-static {v1}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_9
    const-string p1, "5011"

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v6, 0xa

    if-eqz p1, :cond_a

    .line 27
    invoke-static {v2}, Lg/e;->n(I)V

    .line 28
    invoke-static {v6}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_a
    const-string p1, "6021"

    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v7, 0xb

    if-eqz p1, :cond_b

    .line 30
    invoke-static {v2}, Lg/e;->n(I)V

    .line 31
    invoke-static {v7}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_b
    const-string p1, "6023"

    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v8, 0xc

    if-eqz p1, :cond_c

    .line 33
    invoke-static {v2}, Lg/e;->n(I)V

    .line 34
    invoke-static {v8}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_c
    const-string p1, "6022"

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 36
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x10

    .line 37
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_d
    const-string p1, "6011"

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v9, 0xe

    if-eqz p1, :cond_e

    .line 39
    invoke-static {v2}, Lg/e;->n(I)V

    .line 40
    invoke-static {v9}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_e
    const-string p1, "6012"

    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 42
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0xf

    .line 43
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_f
    const-string p1, "6013"

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v10, 0xd

    if-eqz p1, :cond_10

    .line 45
    invoke-static {v2}, Lg/e;->n(I)V

    .line 46
    invoke-static {v10}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_10
    const-string p1, "6025"

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v11, 0x5

    if-eqz p1, :cond_11

    .line 48
    invoke-static {v11}, Lg/e;->n(I)V

    const/16 p0, 0x11

    .line 49
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_11
    const-string p1, "6121"

    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 51
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x12

    .line 52
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_12
    const-string p1, "6122"

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 54
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x13

    .line 55
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_13
    const-string p1, "6111"

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 57
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x14

    .line 58
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_14
    const-string p1, "6112"

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 60
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x15

    .line 61
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_15
    const-string p1, "800"

    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 63
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x16

    .line 64
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_16
    const-string p1, "801"

    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 66
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x17

    .line 67
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_17
    const-string p1, "6015"

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 69
    invoke-static {v11}, Lg/e;->n(I)V

    const/16 p0, 0x19

    .line 70
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_18
    const-string p1, "802"

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 72
    invoke-static {v11}, Lg/e;->n(I)V

    const/16 p0, 0x1a

    .line 73
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_19
    const-string p1, "803"

    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 75
    invoke-static {v11}, Lg/e;->n(I)V

    const/16 p0, 0x1b

    .line 76
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_1a
    const-string p1, "804"

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 78
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x1c

    .line 79
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_1b
    const-string p1, "805"

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 81
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x1d

    .line 82
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_1c
    const-string p1, "6112S"

    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 84
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x1e

    .line 85
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_1d
    const-string p1, "6121S"

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 87
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x1f

    .line 88
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_1e
    const-string p1, "6111S"

    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 90
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x20

    .line 91
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_1f
    const-string p1, "6122S"

    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 93
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x21

    .line 94
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_20
    const-string p1, "800S"

    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 96
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x22

    .line 97
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_21
    const-string p1, "801S"

    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 99
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x23

    .line 100
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_22
    const-string p1, "804S"

    .line 101
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 102
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x24

    .line 103
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_23
    const-string p1, "805S"

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 105
    invoke-static {v2}, Lg/e;->n(I)V

    const/16 p0, 0x25

    .line 106
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_24
    const-string p1, "6026"

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 108
    invoke-static {v3}, Lg/e;->n(I)V

    const/16 p0, 0x26

    .line 109
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_25
    const-string p1, "6322"

    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 111
    invoke-static {v11}, Lg/e;->n(I)V

    const/16 p0, 0x27

    .line 112
    invoke-static {p0}, Lg/e;->o(I)V

    .line 113
    sput v0, Lu0/b;->w4:I

    .line 114
    sput v0, Lu0/b;->x4:I

    .line 115
    sput v0, Lu0/b;->y4:I

    .line 116
    sput v0, Ly0/f;->d1:I

    .line 117
    sput v0, Ly0/f;->b1:I

    .line 118
    sput v0, Ly0/f;->c1:I

    .line 119
    sput v0, Ly0/f;->Z0:I

    .line 120
    sput v0, Ly0/f;->a1:I

    .line 121
    sput v0, Ly0/f;->e1:I

    .line 122
    sput v0, Ly0/f;->f1:I

    .line 123
    sput v0, Ly0/f;->g1:I

    .line 124
    sput v0, Ly0/f;->h1:I

    .line 125
    sput v0, Lu0/b;->v4:I

    .line 126
    sput v0, Lu0/b;->z4:I

    .line 127
    sput v0, Lu0/b;->A4:I

    .line 128
    sput v0, Lp0/b;->j:I

    goto/16 :goto_1

    :cond_26
    const-string p1, "6521"

    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 130
    invoke-static {v5}, Lg/e;->n(I)V

    const/16 p0, 0x28

    .line 131
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_27
    const-string p1, "6523"

    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 133
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x29

    .line 134
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_28
    const-string p1, "808"

    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 136
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x2a

    .line 137
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_29
    const-string p1, "6522"

    .line 138
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 139
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x2b

    .line 140
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_2a
    const-string p1, "812"

    .line 141
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 142
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x2c

    .line 143
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_2b
    const-string p1, "809"

    .line 144
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 145
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x2d

    .line 146
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_2c
    const-string p1, "816"

    .line 147
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 148
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x2e

    .line 149
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_2d
    const-string p1, "815"

    .line 150
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 151
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x3f

    .line 152
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_2e
    const-string p1, "817"

    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 154
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x2f

    .line 155
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_2f
    const-string p1, "818"

    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 157
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x30

    .line 158
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_30
    const-string p1, "855"

    .line 159
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 160
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x3a

    .line 161
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_31
    const-string p1, "hj8141"

    .line 162
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x35

    if-eqz p1, :cond_32

    .line 163
    invoke-static {v4}, Lg/e;->n(I)V

    .line 164
    invoke-static {v0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_32
    const-string p1, "6314"

    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 166
    invoke-static {v5}, Lg/e;->n(I)V

    const/16 p0, 0x31

    .line 167
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_33
    const-string p1, "3003"

    .line 168
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 169
    invoke-static {v11}, Lg/e;->n(I)V

    const/16 p0, 0x32

    .line 170
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_34
    const-string p1, "6315"

    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 172
    invoke-static {v1}, Lg/e;->n(I)V

    const/16 p0, 0x33

    .line 173
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_35
    const-string p1, "6312"

    .line 174
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 175
    invoke-static {v1}, Lg/e;->n(I)V

    const/16 p0, 0x34

    .line 176
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_36
    const-string p1, "6316"

    .line 177
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 178
    invoke-static {v6}, Lg/e;->n(I)V

    .line 179
    invoke-static {v0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_37
    const-string p1, "601"

    .line 180
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 181
    invoke-static {v6}, Lg/e;->n(I)V

    const/16 p0, 0x36

    .line 182
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_38
    const-string p1, "602"

    .line 183
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 184
    invoke-static {v6}, Lg/e;->n(I)V

    const/16 p0, 0x37

    .line 185
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_39
    const-string p1, "CC3P"

    .line 186
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 187
    invoke-static {v1}, Lg/e;->n(I)V

    const/16 p0, 0x38

    .line 188
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_3a
    const-string p1, "603"

    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 190
    invoke-static {v1}, Lg/e;->n(I)V

    const/16 p0, 0x39

    .line 191
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_3b
    const-string p1, "862"

    .line 192
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 193
    invoke-static {v6}, Lg/e;->n(I)V

    const/16 p0, 0x3b

    .line 194
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_3c
    const-string p1, "863"

    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 196
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x40

    .line 197
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_3d
    const-string p1, "813"

    .line 198
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 199
    invoke-static {v4}, Lg/e;->n(I)V

    const/16 p0, 0x3c

    .line 200
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_3e
    const-string p1, "YF_P9"

    .line 201
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    .line 202
    invoke-static {v6}, Lg/e;->n(I)V

    const/16 p0, 0x3d

    .line 203
    invoke-static {p0}, Lg/e;->o(I)V

    .line 204
    sput v0, Lu0/b;->g4:I

    goto/16 :goto_1

    :cond_3f
    const-string p1, "6318"

    .line 205
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 206
    invoke-static {v7}, Lg/e;->n(I)V

    const/16 p0, 0x3e

    .line 207
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_40
    const-string p1, "6321"

    .line 208
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 209
    invoke-static {v7}, Lg/e;->n(I)V

    const/16 p0, 0x18

    .line 210
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_41
    const-string p1, "823"

    .line 211
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 212
    invoke-static {v8}, Lg/e;->n(I)V

    const/16 p0, 0x41

    .line 213
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_42
    const-string p1, "825"

    .line 214
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 215
    invoke-static {v6}, Lg/e;->n(I)V

    const/16 p0, 0x42

    .line 216
    invoke-static {p0}, Lg/e;->o(I)V

    goto/16 :goto_1

    :cond_43
    const-string p1, "829"

    .line 217
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 218
    invoke-static {v6}, Lg/e;->n(I)V

    const/16 p0, 0x47

    .line 219
    invoke-static {p0}, Lg/e;->o(I)V

    goto :goto_1

    :cond_44
    const-string p1, "865"

    .line 220
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 221
    invoke-static {v8}, Lg/e;->n(I)V

    const/16 p0, 0x43

    .line 222
    invoke-static {p0}, Lg/e;->o(I)V

    goto :goto_1

    :cond_45
    const-string p1, "867"

    .line 223
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 224
    invoke-static {v6}, Lg/e;->n(I)V

    const/16 p0, 0x44

    .line 225
    invoke-static {p0}, Lg/e;->o(I)V

    .line 226
    sput v0, Lu0/b;->g4:I

    goto :goto_1

    :cond_46
    const-string p1, "6319"

    .line 227
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 228
    invoke-static {v10}, Lg/e;->n(I)V

    const/16 p0, 0x45

    .line 229
    invoke-static {p0}, Lg/e;->o(I)V

    goto :goto_1

    :cond_47
    const-string p1, "869"

    .line 230
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 231
    invoke-static {v6}, Lg/e;->n(I)V

    const/16 p0, 0x46

    .line 232
    invoke-static {p0}, Lg/e;->o(I)V

    goto :goto_1

    :cond_48
    const-string p1, "890A"

    .line 233
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 234
    invoke-static {v9}, Lg/e;->n(I)V

    const/16 p0, 0x49

    .line 235
    invoke-static {p0}, Lg/e;->o(I)V

    goto :goto_1

    :cond_49
    const-string p1, "MOTOA6"

    .line 236
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 237
    invoke-static {v9}, Lg/e;->n(I)V

    const/16 p0, 0x4a

    .line 238
    invoke-static {p0}, Lg/e;->o(I)V

    :cond_4a
    :goto_1
    return-void
.end method
