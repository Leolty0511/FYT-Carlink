.class public Ln0/k4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized b(IZ)V
    .locals 2

    const-class v0, Ln0/k4;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Ln0/k4;->e(I)I

    move-result v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const-string p1, "ro.fyt.uiid"

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Ln0/j4;->a:I

    .line 3
    sget p1, Ln0/j4;->b:I

    if-eq p1, p0, :cond_3

    .line 4
    sput p0, Ln0/j4;->b:I

    .line 5
    invoke-static {}, Ln0/l4;->L2()Ln0/l4;

    move-result-object p1

    invoke-virtual {p1}, Ln0/l4;->K2()Ln0/c4;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ln0/c4;->C3()V

    .line 7
    :cond_1
    invoke-static {p0}, Ln0/c4;->c3(I)Ln0/c4;

    move-result-object p0

    .line 8
    invoke-static {}, Ln0/l4;->L2()Ln0/l4;

    move-result-object p1

    invoke-virtual {p1, p0}, Ln0/l4;->M2(Ln0/c4;)V

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Ln0/c4;->j3()V

    .line 10
    :cond_2
    sput-object p0, Ln0/j4;->d:Ln0/c4;

    :cond_3
    const-string p0, "ro.fyt.subwoof_enable"

    .line 11
    sget p1, Ly0/f;->X0:I

    invoke-static {p0, p1}, La/i;->k(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ly0/h;->o0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()I
    .locals 4

    .line 1
    sget v0, Ln0/j4;->b:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_4

    const/16 v3, 0x8

    if-eq v0, v3, :cond_3

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v3, 0xf

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_0

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    move v1, v3

    :cond_6
    :goto_0
    return v1
.end method

.method public static d()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const-string v1, "/dev/ttyS1"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string v1, "/dev/ttyS0"

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    .line 3
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_5

    .line 4
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_5

    .line 5
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_5

    .line 6
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_5

    .line 7
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_5

    .line 8
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x13

    if-eq v0, v2, :cond_5

    .line 9
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_5

    .line 10
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x15

    if-eq v0, v2, :cond_5

    .line 11
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x16

    if-eq v0, v2, :cond_5

    .line 12
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x17

    if-eq v0, v2, :cond_5

    .line 13
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_5

    .line 14
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_5

    .line 15
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_5

    .line 16
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_5

    .line 17
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    .line 18
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x21

    if-eq v0, v2, :cond_5

    .line 19
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_5

    .line 20
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_5

    .line 21
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x24

    if-eq v0, v2, :cond_5

    .line 22
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x25

    if-eq v0, v2, :cond_5

    .line 23
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_5

    .line 24
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_5

    .line 25
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_5

    .line 26
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_5

    .line 27
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_5

    .line 28
    invoke-static {}, Lg/e;->p()I

    move-result v0

    const/16 v7, 0x30

    if-ne v0, v7, :cond_1

    goto/16 :goto_1

    .line 29
    :cond_1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 30
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 31
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 32
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_4

    .line 33
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_4

    .line 34
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-eq v0, v6, :cond_4

    .line 35
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_4

    .line 36
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 37
    :cond_2
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_3

    .line 38
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x11

    if-eq v0, v3, :cond_3

    .line 39
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x19

    if-eq v0, v3, :cond_3

    .line 40
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x27

    if-eq v0, v3, :cond_3

    .line 41
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_3

    .line 42
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 43
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x32

    if-ne v0, v2, :cond_5

    :cond_3
    const-string v1, "/dev/ttyS4"

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "/dev/ttyS2"

    :cond_5
    :goto_1
    return-object v1
.end method

.method public static e(I)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.build.fytmanufacturer"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method public static f(I)Z
    .locals 1

    .line 1
    sget v0, Ln0/j4;->b:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g()I
    .locals 3

    .line 1
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Le/b;->b:I

    const-string v2, "ro.fyt.touch_poweron"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static h()V
    .locals 2

    .line 1
    sget-object v0, Ln0/j4;->d:Ln0/c4;

    invoke-virtual {v0}, Ln0/c4;->x3()V

    .line 2
    sget-object v0, Lz/a;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lz/a;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lm1/a;->c:Z

    .line 6
    sget v0, Lk0/nt;->g0:I

    if-ltz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "============>>>> DataCanbus.sCanbusIdTemp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lk0/nt;->g0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget v0, Lk0/nt;->g0:I

    invoke-static {v0}, Lk0/qt;->J(I)V

    .line 9
    :cond_1
    invoke-static {}, Lm1/c;->n()V

    return-void
.end method

.method public static i(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j()V
    .locals 4

    .line 1
    sget-object v0, Ln0/j4;->i:[I

    sget-object v1, Lu0/a;->h:[I

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ln0/j4;->j:[I

    sget-object v1, Ly0/d;->a:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    sget-object v0, Ln0/j4;->k:[I

    sget-object v1, Ly0/d;->c:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    sget-object v0, Ln0/j4;->l:[I

    sget-object v1, Ly0/d;->b:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Ln0/j4;->l:[I

    sget-object v1, Ly0/b;->b:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static k()V
    .locals 4

    .line 1
    sget-object v0, Lu0/a;->h:[I

    sget-object v1, Ln0/j4;->i:[I

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ly0/d;->a:[I

    sget-object v1, Ln0/j4;->j:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    sget-object v0, Ly0/d;->c:[I

    sget-object v1, Ln0/j4;->k:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    sget-object v0, Ly0/d;->b:[I

    sget-object v1, Ln0/j4;->l:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Ly0/b;->b:[I

    sget-object v1, Ln0/j4;->l:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static l(II)V
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x4

    .line 1
    invoke-static {p0, p1}, Lm1/c;->o(II)V

    :cond_0
    return-void
.end method
