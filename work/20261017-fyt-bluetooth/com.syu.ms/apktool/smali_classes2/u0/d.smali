.class public Lu0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x3c

.field public static final b:Ljava/lang/Runnable;

.field public static c:Le/e$a;

.field public static d:Ljava/lang/Runnable;

.field public static e:I

.field public static final f:Lo1/k0;

.field public static final g:Ljava/lang/Runnable;

.field public static h:Z

.field public static i:I

.field public static j:I

.field public static k:Ljava/lang/Runnable;

.field public static l:Z

.field public static m:Z

.field public static final n:Lo1/k0;

.field public static final o:Lo1/k0;

.field public static final p:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu0/d$d;

    invoke-direct {v0}, Lu0/d$d;-><init>()V

    sput-object v0, Lu0/d;->b:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Le/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Le/e$a;-><init>(III)V

    sput-object v0, Lu0/d;->c:Le/e$a;

    .line 3
    new-instance v0, Lu0/d$f;

    invoke-direct {v0}, Lu0/d$f;-><init>()V

    sput-object v0, Lu0/d;->d:Ljava/lang/Runnable;

    .line 4
    sput v1, Lu0/d;->e:I

    .line 5
    new-instance v0, Lo1/k0;

    invoke-direct {v0}, Lo1/k0;-><init>()V

    sput-object v0, Lu0/d;->f:Lo1/k0;

    .line 6
    new-instance v0, Lu0/d$i;

    invoke-direct {v0}, Lu0/d$i;-><init>()V

    sput-object v0, Lu0/d;->g:Ljava/lang/Runnable;

    .line 7
    invoke-static {v0}, Lu0/d;->m(Ljava/lang/Runnable;)V

    .line 8
    sput-boolean v1, Lu0/d;->h:Z

    const/4 v0, -0x1

    .line 9
    sput v0, Lu0/d;->i:I

    .line 10
    sput v0, Lu0/d;->j:I

    .line 11
    new-instance v0, Lu0/d$j;

    invoke-direct {v0}, Lu0/d$j;-><init>()V

    sput-object v0, Lu0/d;->k:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lu0/d;->l:Z

    .line 13
    sput-boolean v0, Lu0/d;->m:Z

    .line 14
    new-instance v0, Lo1/k0;

    invoke-direct {v0}, Lo1/k0;-><init>()V

    sput-object v0, Lu0/d;->n:Lo1/k0;

    .line 15
    new-instance v0, Lo1/k0;

    invoke-direct {v0}, Lo1/k0;-><init>()V

    sput-object v0, Lu0/d;->o:Lo1/k0;

    .line 16
    new-instance v0, Lu0/d$a;

    invoke-direct {v0}, Lu0/d$a;-><init>()V

    sput-object v0, Lu0/d;->p:Ljava/lang/Runnable;

    return-void
.end method

.method public static A(I)V
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->F0:I

    add-int/2addr p0, v0

    and-int/2addr p0, v0

    invoke-static {p0}, Lu0/d;->z(I)V

    goto :goto_0

    .line 2
    :cond_1
    sget p0, Lu0/b;->F0:I

    if-nez p0, :cond_3

    .line 3
    invoke-static {v0}, Lu0/d;->z(I)V

    goto :goto_0

    .line 4
    :cond_2
    sget p0, Lu0/b;->F0:I

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 5
    invoke-static {p0}, Lu0/d;->z(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static A0(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 1
    :goto_0
    sput p0, Lu0/b;->s1:I

    const/16 v2, 0x180

    .line 2
    invoke-static {v2, p0}, Lm1/c;->e(II)I

    const/16 v2, 0x79

    new-array v1, v1, [I

    aput p0, v1, v0

    .line 3
    invoke-static {v2, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x26

    .line 4
    invoke-static {v0, p0}, Lcom/syu/jni/ToolsJni;->callSystemCtrl(II)I

    .line 5
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p0

    new-instance v0, Lu0/d$b;

    invoke-direct {v0}, Lu0/d$b;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static A1()V
    .locals 2

    .line 1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    return-void
.end method

.method public static A2(II)V
    .locals 10

    if-le p0, p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Lu0/b;->t3:I

    if-ne v0, p0, :cond_1

    sget v0, Lu0/b;->u3:I

    if-eq v0, p1, :cond_3

    .line 2
    :cond_1
    sput p0, Lu0/b;->t3:I

    .line 3
    sput p1, Lu0/b;->u3:I

    .line 4
    sget-object v0, Lu0/c;->t:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0x4a

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 5
    sget v3, Lu0/b;->D:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x5

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v3, 0x2

    aput p0, v2, v3

    const/4 v6, 0x3

    aput p1, v2, v6

    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 6
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v7, 0x9

    if-ne v0, v7, :cond_3

    :cond_2
    new-array v0, v1, [I

    const/16 v7, 0x74

    aput v7, v0, v4

    aput v5, v0, v5

    const v8, 0xff00

    and-int v9, p0, v8

    shr-int/2addr v9, v2

    aput v9, v0, v3

    and-int/lit16 p0, p0, 0xff

    aput p0, v0, v6

    .line 7
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p0, v1, [I

    aput v7, p0, v4

    aput v3, p0, v5

    and-int v0, p1, v8

    shr-int/2addr v0, v2

    aput v0, p0, v3

    and-int/lit16 p1, p1, 0xff

    aput p1, p0, v6

    .line 8
    invoke-static {p0}, Lz/k;->s([I)V

    :cond_3
    return-void
.end method

.method public static A3(I)V
    .locals 4

    const-string v0, "persist.syu.isshowouttemp"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    sput v2, Lu0/b;->H2:I

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p0, 0xf

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1c

    and-int/lit16 p0, p0, 0x7fff

    const v3, 0xffff

    and-int/2addr p0, v3

    or-int/2addr p0, v0

    .line 3
    sput p0, Lu0/b;->H2:I

    :goto_0
    const/16 p0, 0x28

    new-array v0, v1, [I

    .line 4
    sget v1, Lu0/b;->H2:I

    aput v1, v0, v2

    invoke-static {p0, v0}, Lu0/d;->I3(I[I)V

    return-void
.end method

.method public static B(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->Q0:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lu0/b;->Q0:I

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 3
    invoke-static {v0}, Lu0/d;->I0(I)V

    :cond_0
    const/16 v1, 0x53

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p0, v0, v2

    .line 4
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x9c

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_1
    return-void
.end method

.method public static B0(I)V
    .locals 2

    .line 1
    sget v0, Lu0/b;->q1:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0xcb
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xca
    .end array-data
.end method

.method public static B1()V
    .locals 6

    .line 1
    sget-object v0, Lu0/b;->c3:Lo1/o;

    const-string v1, "system/bin/pekallfmrserver"

    .line 2
    invoke-static {v1}, La/i;->C(Ljava/lang/String;)V

    if-nez v0, :cond_6

    .line 3
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->r()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->i()V

    goto :goto_0

    .line 7
    :cond_2
    sget v0, Lw0/d;->S:I

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->B()V

    goto :goto_0

    .line 9
    :cond_4
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->d()V

    goto :goto_0

    .line 10
    :cond_5
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->g()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static B2(II)V
    .locals 10

    const/4 v0, 0x1

    add-int/2addr p0, v0

    if-le p0, p1, :cond_0

    return-void

    .line 1
    :cond_0
    sput p0, Lu0/b;->r3:I

    .line 2
    sput p1, Lu0/b;->s3:I

    .line 3
    sget-object v1, Lu0/c;->s:Lo1/y;

    invoke-virtual {v1}, Lo1/y;->c()V

    const/16 v1, 0x4a

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 4
    sget v4, Lu0/b;->D:I

    const/4 v5, 0x0

    aput v4, v3, v5

    aput v2, v3, v0

    const/4 v4, 0x2

    aput p0, v3, v4

    const/4 v6, 0x3

    aput p1, v3, v6

    invoke-static {v1, v3}, Lu0/d;->I3(I[I)V

    .line 5
    sget v1, Lu0/b;->D:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    const/16 v7, 0x9

    if-ne v1, v7, :cond_2

    :cond_1
    new-array v1, v2, [I

    const/16 v7, 0x74

    aput v7, v1, v5

    aput v6, v1, v0

    const v8, 0xff00

    and-int v9, p0, v8

    shr-int/2addr v9, v3

    aput v9, v1, v4

    and-int/lit16 p0, p0, 0xff

    aput p0, v1, v6

    .line 6
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p0, v2, [I

    aput v7, p0, v5

    aput v2, p0, v0

    and-int v0, p1, v8

    shr-int/2addr v0, v3

    aput v0, p0, v4

    and-int/lit16 p1, p1, 0xff

    aput p1, p0, v6

    .line 7
    invoke-static {p0}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method

.method public static B3(I)V
    .locals 3

    const-string v0, "persist.syu.isshowouttemp"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    sput v2, Lu0/b;->H2:I

    goto :goto_0

    .line 3
    :cond_0
    sput p0, Lu0/b;->H2:I

    :goto_0
    const/16 p0, 0x28

    new-array v0, v1, [I

    .line 4
    sget v1, Lu0/b;->H2:I

    aput v1, v0, v2

    invoke-static {p0, v0}, Lu0/d;->I3(I[I)V

    return-void
.end method

.method public static C(I)V
    .locals 3

    .line 1
    sget v0, Lu0/d;->i:I

    if-eq v0, p0, :cond_3

    .line 2
    sput p0, Lu0/b;->o:I

    sput p0, Lu0/d;->i:I

    .line 3
    sget v0, Le1/a;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-ne p0, v2, :cond_0

    sget-boolean v0, Lu0/b;->p2:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p0

    sget-object v0, Lu0/d;->k:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    sget-object v1, Lu0/d;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>>>    backcar : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Signal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 7
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    .line 8
    :goto_0
    invoke-static {}, Ly0/h;->M()V

    .line 9
    sget p0, Lu0/d;->i:I

    if-nez p0, :cond_2

    .line 10
    invoke-static {}, Lu0/d;->u0()V

    .line 11
    invoke-static {}, Lk0/qt;->k0()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xa

    .line 12
    invoke-static {p0}, Lu0/d;->R2(I)V

    .line 13
    invoke-static {p0}, Lu0/d;->S2(I)V

    .line 14
    invoke-static {p0}, Lu0/d;->T2(I)V

    .line 15
    invoke-static {p0}, Lu0/d;->U2(I)V

    .line 16
    :cond_2
    sget-object p0, Lu0/c;->f:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_3
    return-void
.end method

.method public static declared-synchronized C0(II)V
    .locals 12

    const-class v0, Lu0/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lu0/b;->H3:I

    .line 2
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    .line 3
    invoke-virtual {v1, p0}, Lmodule/sound/AudioDevice;->j0(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 4
    :goto_0
    invoke-virtual {v1, p1}, Lmodule/sound/AudioDevice;->j0(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v5, 0x2

    if-eqz v1, :cond_8

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 6
    sget-wide v8, Lu0/b;->J3:J

    sub-long v8, v6, v8

    .line 7
    sput-wide v6, Lu0/b;->J3:J

    const-wide/16 v6, 0x0

    cmp-long v1, v8, v6

    if-lez v1, :cond_2

    .line 8
    sget v1, Lu0/b;->H3:I

    int-to-long v6, v1

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    cmp-long v1, v8, v6

    if-gtz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eq p0, v5, :cond_4

    if-ne p1, v5, :cond_3

    goto :goto_3

    :cond_3
    move p1, v2

    goto :goto_4

    :cond_4
    :goto_3
    move p1, v3

    :goto_4
    if-eqz v4, :cond_6

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move p1, v2

    goto :goto_6

    :cond_6
    :goto_5
    move p1, v3

    :goto_6
    if-nez v1, :cond_7

    if-nez p1, :cond_7

    .line 9
    sput v2, Lu0/b;->H3:I

    :cond_7
    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    .line 10
    sget p1, Lu0/b;->I3:I

    int-to-float p1, p1

    long-to-float v1, v8

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    sub-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    sput p1, Lu0/b;->H3:I

    :cond_8
    if-ne p0, v5, :cond_9

    const/4 p0, 0x3

    .line 11
    sput p0, Lu0/b;->H3:I

    :cond_9
    const/16 p0, 0x20

    .line 12
    sget p1, Lu0/b;->H3:I

    if-lez p1, :cond_a

    move v2, v3

    :cond_a
    invoke-static {p0, v2}, Ly0/h;->Y(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static C1()V
    .locals 2

    .line 1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    return-void
.end method

.method public static C2(I)V
    .locals 5

    .line 1
    sput p0, Lu0/b;->p:I

    .line 2
    sget v0, Lu0/b;->G:I

    const/4 v1, 0x2

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lo1/u;->i0()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "persist.fyt.radar_click"

    .line 4
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "persist.fyt.showfloatradar"

    .line 5
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.syu.fourcamera2"

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lu0/b;->v1:I

    if-ne v0, v4, :cond_2

    :cond_1
    new-array p0, v4, [I

    aput v3, p0, v3

    .line 7
    invoke-static {v2, p0}, Lu0/d;->I3(I[I)V

    .line 8
    sget-object p0, Lu0/c;->R:Lo1/z;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array v0, v4, [I

    aput p0, v0, v3

    .line 9
    invoke-static {v2, v0}, Lu0/d;->I3(I[I)V

    .line 10
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v1, v1, [I

    aput v2, v1, v3

    aput p0, v1, v4

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-array p0, v4, [I

    aput v3, p0, v3

    .line 11
    invoke-static {v2, p0}, Lu0/d;->I3(I[I)V

    .line 12
    sget-object p0, Lu0/c;->R:Lo1/z;

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xd
        0x0
    .end array-data
.end method

.method public static C3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/16 p0, 0x2d

    .line 1
    invoke-static {p0, v0}, Lu0/d;->I3(I[I)V

    return-void
.end method

.method public static D(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->r:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->r:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.syu.back.mirror"

    invoke-static {v1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x18

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 4
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x84

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    .line 6
    sget-object v0, Lu0/c;->y:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 7
    invoke-static {p0}, Lo1/q0;->j(I)V

    :cond_0
    return-void
.end method

.method public static D0([I)V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lu0/d;->M0([II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/syu/jni/ToolsJni;->getUsbIndex()I

    move-result v1

    const/4 v2, 0x1

    .line 4
    aget v3, p0, v2

    if-eq v1, v3, :cond_1

    aget v1, p0, v2

    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->setUsbIndex(II)I

    .line 5
    :cond_1
    aget p0, p0, v2

    invoke-static {p0}, Lu0/d;->E0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static declared-synchronized D1()V
    .locals 5

    const-class v0, Lu0/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lu0/d;->n:Lo1/k0;

    const/16 v2, 0x320

    invoke-virtual {v1, v2}, Lo1/k0;->c(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Lc/g;->g(Landroid/content/Context;)Lc/g;

    move-result-object v1

    invoke-virtual {v1}, Lc/g;->i()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 3
    :cond_1
    :try_start_2
    sget v1, Lu0/b;->D:I

    sput v1, Lu0/b;->g3:I

    add-int/lit8 v2, v1, 0x1

    .line 4
    rem-int/lit8 v2, v2, 0x14

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x14

    .line 5
    rem-int/lit8 v1, v1, 0x14

    :goto_0
    if-eq v2, v1, :cond_3

    .line 6
    sget-object v3, Lu0/b;->h3:[I

    aget v3, v3, v2

    invoke-static {v3}, Lo1/u;->b(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Lu0/b;->h3:[I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 7
    rem-int/lit8 v2, v2, 0x14

    goto :goto_0

    .line 8
    :cond_3
    sput v2, Lu0/b;->g3:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static D2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    if-nez v0, :cond_0

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->P0:I

    if-nez v0, :cond_0

    new-array p0, v3, [I

    const/16 v0, 0xa

    aput v0, p0, v2

    .line 2
    invoke-static {v4, p0}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p0, Lu0/c;->R:Lo1/z;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->r2:I

    if-eq v0, p0, :cond_1

    .line 5
    sput p0, Lu0/b;->r2:I

    new-array v0, v3, [I

    aput p0, v0, v2

    .line 6
    invoke-static {v4, v0}, Lu0/d;->I3(I[I)V

    .line 7
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v1, v1, [I

    aput v4, v1, v2

    aput p0, v1, v3

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe
        0xa
    .end array-data
.end method

.method public static D3(III)V
    .locals 8

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->p:Lutil/log/LogType;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "Touch action: %d, x: %d, y: %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lu0/d;->c:Le/e$a;

    invoke-virtual {v0, p0, p1, p2}, Le/e$a;->a(III)V

    .line 3
    sget-object v0, Lu0/c;->O:Lo1/z;

    sget-object v1, Lu0/d;->c:Le/e$a;

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    if-ne p0, v7, :cond_1

    :cond_0
    const/4 p0, 0x5

    new-array p0, p0, [I

    const/16 v0, 0xe6

    aput v0, p0, v5

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, p0, v6

    and-int/lit16 p1, p1, 0xff

    aput p1, p0, v7

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, p0, v2

    const/4 p1, 0x4

    and-int/lit16 p2, p2, 0xff

    aput p2, p0, p1

    .line 4
    invoke-static {p0}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method

.method public static E(I)V
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->r:I

    add-int/2addr p0, v0

    and-int/2addr p0, v0

    invoke-static {p0}, Lu0/d;->D(I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {v0}, Lu0/d;->D(I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lu0/d;->D(I)V

    :goto_0
    return-void
.end method

.method public static E0(I)V
    .locals 3

    if-gez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/syu/jni/ToolsJni;->getUsbIndex()I

    move-result p0

    :cond_0
    const/16 v0, 0x76

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 2
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    return-void
.end method

.method public static E1()V
    .locals 2

    .line 1
    sget-object v0, Lu0/d;->o:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lo1/u;->u0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lo1/u;->U0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static E2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    if-nez v0, :cond_0

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->P0:I

    if-nez v0, :cond_0

    new-array p0, v3, [I

    const/16 v0, 0xa

    aput v0, p0, v2

    .line 2
    invoke-static {v4, p0}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p0, Lu0/c;->R:Lo1/z;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->s2:I

    if-eq v0, p0, :cond_1

    .line 5
    sput p0, Lu0/b;->s2:I

    new-array v0, v3, [I

    aput p0, v0, v2

    .line 6
    invoke-static {v4, v0}, Lu0/d;->I3(I[I)V

    .line 7
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v1, v1, [I

    aput v4, v1, v2

    aput p0, v1, v3

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xf
        0xa
    .end array-data
.end method

.method public static E3(I)V
    .locals 4

    const/16 v0, 0xcf

    .line 1
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ne p0, v1, :cond_0

    .line 2
    sget v0, Lu0/b;->d1:I

    .line 3
    :cond_0
    invoke-static {p0}, Lu0/d;->F3(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-eqz p0, :cond_5

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-array p0, v0, [I

    const/16 v0, 0xc

    const/4 v3, 0x0

    aput v0, p0, v3

    const/16 v0, 0xb

    aput v0, p0, v2

    .line 4
    sget v0, Lu0/b;->d1:I

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    aput v2, p0, v1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_5
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0xc
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xc
        0xc
        0x0
    .end array-data
.end method

.method public static F(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->G:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->G:I

    const/16 v0, 0x1b

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 4
    sget v0, Lu0/b;->z4:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa8

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static F0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_6

    .line 1
    sget-object v0, Lu0/b;->P1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.syu.us"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lu0/b;->P1:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    :cond_1
    sput-object v0, Lu0/b;->P1:Ljava/lang/String;

    .line 5
    :cond_2
    sget-object v1, Lu0/b;->P1:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    sget-object v1, Lu0/b;->P1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    sget-object v1, Lu0/b;->P1:Ljava/lang/String;

    invoke-static {v1, v2}, Lu0/d;->m0(Ljava/lang/String;Z)V

    .line 8
    :cond_3
    sget-object v1, La/b;->d:Lo1/d;

    sget-object v3, Lu0/b;->P1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lo1/d;->i(Ljava/lang/Comparable;)V

    .line 9
    :cond_4
    sput-object p0, Lu0/b;->P1:Ljava/lang/String;

    const/4 v1, 0x1

    .line 10
    invoke-static {p0, v1}, Lu0/d;->m0(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v3, Lu0/d$c;

    invoke-direct {v3, p1, p0}, Lu0/d$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/16 p0, 0x181

    .line 13
    sget-object v0, Lu0/b;->P1:Ljava/lang/String;

    invoke-static {p0, v0}, Lm1/c;->f(ILjava/lang/String;)V

    const/16 p0, 0x182

    .line 14
    invoke-static {p0, p1}, Lm1/c;->f(ILjava/lang/String;)V

    .line 15
    sget-object p0, La/b;->d:Lo1/d;

    sget-object p1, Lu0/b;->P1:Ljava/lang/String;

    sget-object v0, Lc0/b;->b:Lo1/s;

    invoke-virtual {p0, p1, v0}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    const/16 p0, 0x7a

    new-array p1, v1, [Ljava/lang/String;

    .line 16
    sget-object v0, Lu0/b;->P1:Ljava/lang/String;

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static F1()V
    .locals 6

    .line 1
    sget-object v0, Lu0/b;->f3:Lo1/o;

    if-nez v0, :cond_4

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/16 v3, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v3, v0}, Lu0/d;->I3(I[I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v3, v0}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->n()V

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->E()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x2
    .end array-data
.end method

.method public static F2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-nez v0, :cond_0

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->P0:I

    if-nez v0, :cond_0

    new-array p0, v3, [I

    const/16 v0, 0xa

    aput v0, p0, v2

    .line 2
    invoke-static {v4, p0}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p0, Lu0/c;->R:Lo1/z;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->t2:I

    if-eq v0, p0, :cond_1

    .line 5
    sput p0, Lu0/b;->t2:I

    new-array v0, v3, [I

    aput p0, v0, v2

    .line 6
    invoke-static {v4, v0}, Lu0/d;->I3(I[I)V

    .line 7
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v1, v1, [I

    aput v4, v1, v2

    aput p0, v1, v3

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x10
        0xa
    .end array-data
.end method

.method public static F3(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->d1:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lu0/b;->d1:I

    const/16 v0, 0xcf

    .line 3
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0, p0}, Lm1/c;->e(II)I

    :cond_0
    const/16 v0, 0x66

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 5
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_1
    return-void
.end method

.method public static G(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->z4:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p0, Lu0/b;->G:I

    if-nez p0, :cond_1

    .line 3
    invoke-static {v3}, Lu0/d;->G(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v2}, Lu0/d;->G(I)V

    goto :goto_0

    :cond_2
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_9

    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_7

    if-eq p0, v1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    sget p0, Lu0/b;->G:I

    if-nez p0, :cond_6

    .line 8
    invoke-static {v3}, Lu0/d;->G(I)V

    goto :goto_0

    .line 9
    :cond_6
    invoke-static {v2}, Lu0/d;->G(I)V

    goto :goto_0

    .line 10
    :cond_7
    invoke-static {v3}, Lu0/d;->F(I)V

    goto :goto_0

    .line 11
    :cond_8
    invoke-static {v2}, Lu0/d;->F(I)V

    :cond_9
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0xc
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xc
        0x4
    .end array-data
.end method

.method public static G0(I)V
    .locals 2

    .line 1
    sget v0, Lu0/b;->r1:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0xcf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xce
    .end array-data
.end method

.method public static G1()V
    .locals 6

    .line 1
    sget-object v0, Lu0/b;->e3:Lo1/o;

    if-nez v0, :cond_4

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/16 v3, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v3, v0}, Lu0/d;->I3(I[I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v3, v0}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->o()V

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->w()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x0
    .end array-data
.end method

.method public static G2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    if-nez v0, :cond_0

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->P0:I

    if-nez v0, :cond_0

    new-array p0, v3, [I

    const/16 v0, 0xa

    aput v0, p0, v2

    .line 2
    invoke-static {v4, p0}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p0, Lu0/c;->R:Lo1/z;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->u2:I

    if-eq v0, p0, :cond_1

    .line 5
    sput p0, Lu0/b;->u2:I

    new-array v0, v3, [I

    aput p0, v0, v2

    .line 6
    invoke-static {v4, v0}, Lu0/d;->I3(I[I)V

    .line 7
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v1, v1, [I

    aput v4, v1, v2

    aput p0, v1, v3

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x11
        0xa
    .end array-data
.end method

.method public static G3()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x76
        0x0
    .end array-data
.end method

.method public static H(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->I:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->I:I

    const/16 v0, 0x17

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 4
    sget v0, Lu0/b;->A4:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa9

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static H0(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->r0:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lu0/b;->r0:I

    const/16 v0, 0xd2

    .line 3
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0, p0}, Lm1/c;->e(II)I

    :cond_0
    const/16 v0, 0x41

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 5
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_1
    return-void
.end method

.method public static H1()V
    .locals 3

    .line 1
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lc/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 3
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lo1/u;->V0()I

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lo1/u;->c1()I

    :goto_0
    return-void
.end method

.method public static H2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->G2:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->G2:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/16 v3, 0x61

    .line 3
    invoke-static {v3, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object v1, Lu0/c;->R:Lo1/z;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v2

    aput p0, v4, v0

    invoke-virtual {v1, v4}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static H3(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->T0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->T0:I

    const/16 v0, 0x57

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static I(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->A4:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p0, Lu0/b;->I:I

    if-nez p0, :cond_1

    .line 3
    invoke-static {v3}, Lu0/d;->I(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v2}, Lu0/d;->I(I)V

    goto :goto_0

    :cond_2
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_9

    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_7

    if-eq p0, v1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    sget p0, Lu0/b;->I:I

    if-nez p0, :cond_6

    .line 8
    invoke-static {v3}, Lu0/d;->I(I)V

    goto :goto_0

    .line 9
    :cond_6
    invoke-static {v2}, Lu0/d;->I(I)V

    goto :goto_0

    .line 10
    :cond_7
    invoke-static {v3}, Lu0/d;->H(I)V

    goto :goto_0

    .line 11
    :cond_8
    invoke-static {v2}, Lu0/d;->H(I)V

    :cond_9
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x1
        0x1
    .end array-data
.end method

.method public static I0(I)V
    .locals 2

    const/16 v0, 0xd2

    .line 1
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lu0/d;->H0(I)V

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget p0, Lu0/b;->r0:I

    if-nez p0, :cond_2

    .line 4
    invoke-static {v1}, Lu0/d;->I0(I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 5
    invoke-static {p0}, Lu0/d;->I0(I)V

    goto :goto_0

    :cond_3
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p0, v0, [I

    .line 7
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data
.end method

.method public static I1()V
    .locals 6

    .line 1
    sget-object v0, Lu0/b;->d3:Lo1/o;

    if-nez v0, :cond_6

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->l()V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->V()V

    goto :goto_0

    .line 6
    :cond_2
    sget v0, Lw0/d;->R:I

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->h()V

    goto :goto_0

    .line 8
    :cond_4
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->i()V

    goto :goto_0

    .line 9
    :cond_5
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->c()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static I2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->D2:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->D2:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/16 v3, 0x5e

    .line 3
    invoke-static {v3, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object v1, Lu0/c;->R:Lo1/z;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v2

    aput p0, v4, v0

    invoke-virtual {v1, v4}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs I3(I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static J(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->Y:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->Y:I

    const/16 v0, 0x2f

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static J0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sput-object p0, Lu0/b;->k3:Ljava/lang/String;

    .line 2
    sget-object v0, Lu0/c;->q:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 3
    sget v2, Lu0/b;->D:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    const/16 p0, 0x4a

    const/4 p1, 0x0

    invoke-static {p0, v1, p1, v0}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static J1()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x58

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    goto :goto_0

    .line 3
    :pswitch_1
    sget v0, Lu0/b;->Q3:I

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    .line 4
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    goto :goto_0

    .line 6
    :cond_2
    sget v0, Lo0/e;->l0:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->i()V

    goto :goto_0

    .line 8
    :cond_4
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->r()V

    goto :goto_0

    .line 9
    :cond_5
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->i()V

    goto :goto_0

    .line 10
    :cond_6
    sget v0, Lw0/d;->P:I

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_7

    goto :goto_0

    .line 11
    :cond_7
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->d()V

    goto :goto_0

    .line 12
    :cond_8
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->g()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static J2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->F2:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->F2:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/16 v3, 0x60

    .line 3
    invoke-static {v3, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object v1, Lu0/c;->R:Lo1/z;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v2

    aput p0, v4, v0

    invoke-virtual {v1, v4}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static J3(I[I[F[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static K(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x6
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x6
        0x0
    .end array-data
.end method

.method public static K0(Ljava/lang/String;)V
    .locals 3

    .line 1
    sput-object p0, Lu0/b;->j3:Ljava/lang/String;

    .line 2
    sget-object v0, Lu0/c;->p:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    sget v1, Lu0/b;->D:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v1, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v2

    const/16 p0, 0x4a

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static K1()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x57

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    goto :goto_0

    .line 3
    :pswitch_1
    sget v0, Lu0/b;->R3:I

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v1, v2

    .line 4
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    goto :goto_0

    .line 6
    :cond_2
    sget v0, Lo0/e;->m0:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->j()V

    goto :goto_0

    .line 8
    :cond_4
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->l()V

    goto :goto_0

    .line 9
    :cond_5
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->V()V

    goto :goto_0

    .line 10
    :cond_6
    sget v0, Lw0/d;->Q:I

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_7

    goto :goto_0

    .line 11
    :cond_7
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->i()V

    goto :goto_0

    .line 12
    :cond_8
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->c()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static K2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->E2:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->E2:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/16 v3, 0x5f

    .line 3
    invoke-static {v3, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object v1, Lu0/c;->R:Lo1/z;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v2

    aput p0, v4, v0

    invoke-virtual {v1, v4}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs K3(I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, p1}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static L(I)V
    .locals 6

    .line 1
    sget v0, Lu0/b;->P0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->P0:I

    const/16 v0, 0x51

    new-array v3, v2, [I

    aput p0, v3, v1

    .line 3
    invoke-static {v0, v3}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object v0, Lu0/c;->J:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0x9b

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    const/16 v0, 0x27

    .line 6
    sget v3, Lu0/b;->P0:I

    new-array v4, v2, [Ljava/lang/String;

    sget-object v5, La/b;->Z:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lu0/d;->N3(II[Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    .line 7
    invoke-static {v1}, Lo1/q0;->F(I)V

    goto :goto_0

    :cond_1
    if-ne p0, v2, :cond_2

    const/4 p0, 0x2

    .line 8
    invoke-static {p0}, Lo1/q0;->F(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static L0(Ljava/lang/String;)V
    .locals 4

    .line 1
    sput-object p0, Lu0/b;->i3:Ljava/lang/String;

    .line 2
    sget-object v0, Lu0/c;->o:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 v3, 0x31

    .line 3
    invoke-static {v3, v1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4
    sget v3, Lu0/b;->D:I

    aput v3, v1, v2

    aput v2, v1, v0

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v2

    const/16 p0, 0x4a

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static L1()V
    .locals 6

    .line 1
    sget-object v0, Lu0/b;->a3:Lo1/o;

    if-nez v0, :cond_3

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {v0}, La/i;->N(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->r()V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->i()V

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->d()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static L2(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->e0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->e0:I

    const/16 v0, 0x56

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static varargs L3(I[F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, v0}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static M(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->j:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->j:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object p0, Lu0/c;->n:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static M0([II)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    array-length p0, p0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static M1()V
    .locals 7

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "persist.fyt.androictrldvoice"

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, -0x2

    sparse-switch v0, :sswitch_data_0

    .line 2
    invoke-static {}, Ly0/h;->i0()V

    .line 3
    invoke-static {v6}, Ly0/h;->u0(I)V

    goto/16 :goto_0

    .line 4
    :sswitch_0
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v4, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Ly0/h;->i0()V

    .line 8
    invoke-static {v6}, Ly0/h;->u0(I)V

    goto :goto_0

    .line 9
    :sswitch_1
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 10
    invoke-static {}, Ly0/h;->i0()V

    .line 11
    invoke-static {v6}, Ly0/h;->u0(I)V

    goto :goto_0

    :cond_1
    new-array v0, v4, [I

    .line 12
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :sswitch_2
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 14
    invoke-static {}, Ly0/h;->i0()V

    .line 15
    invoke-static {v6}, Ly0/h;->u0(I)V

    goto :goto_0

    :cond_2
    new-array v0, v5, [I

    .line 16
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v5, [I

    .line 17
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 18
    :sswitch_3
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v5, [I

    .line 19
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v5, [I

    .line 20
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {}, Ly0/h;->i0()V

    .line 22
    invoke-static {v6}, Ly0/h;->u0(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x501c0 -> :sswitch_3
        0xf01c0 -> :sswitch_2
        0x1201c0 -> :sswitch_2
        0x1301c0 -> :sswitch_2
        0x1401c0 -> :sswitch_2
        0x1501c0 -> :sswitch_2
        0x1601c0 -> :sswitch_2
        0x1a01c0 -> :sswitch_2
        0x1b01c0 -> :sswitch_2
        0x1c01c0 -> :sswitch_2
        0x1d01c0 -> :sswitch_2
        0x1e01c0 -> :sswitch_2
        0x1f01c0 -> :sswitch_2
        0x2001c0 -> :sswitch_2
        0x2101c0 -> :sswitch_2
        0x2301c0 -> :sswitch_2
        0x2401c0 -> :sswitch_2
        0x2501c0 -> :sswitch_2
        0x2901c0 -> :sswitch_3
        0x2c01c0 -> :sswitch_3
        0x2d01c0 -> :sswitch_2
        0x2e01c0 -> :sswitch_2
        0x2f01c0 -> :sswitch_2
        0x3001c0 -> :sswitch_2
        0x3101c0 -> :sswitch_2
        0x3201c0 -> :sswitch_2
        0x3301c0 -> :sswitch_2
        0x3401c0 -> :sswitch_2
        0x3501c0 -> :sswitch_2
        0x3601c0 -> :sswitch_2
        0x3701c0 -> :sswitch_2
        0x4601c7 -> :sswitch_1
        0x4801c7 -> :sswitch_1
        0x6001c8 -> :sswitch_0
        0x6101c8 -> :sswitch_0
        0x6201c8 -> :sswitch_0
        0x6301c8 -> :sswitch_0
        0xb701c6 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x2
        0x29
        0xb
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x0
        0x94
        0x2
        0x7
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x0
        0x94
        0x2
        0x7
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x0
        0xa8
        0x2
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x0
        0xa8
        0x2
        0x0
        0x1
    .end array-data
.end method

.method public static M2(I)V
    .locals 4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v0, [I

    const/16 v0, 0xc

    const/4 v3, 0x0

    aput v0, p0, v3

    const/4 v0, 0x4

    aput v0, p0, v1

    .line 1
    sget v0, Lu0/b;->e0:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    aput v1, p0, v2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0xc
        0x4
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x4
        0x0
    .end array-data
.end method

.method public static M3(Ly/b;)V
    .locals 9

    .line 1
    sget-object v0, Lu0/b;->O2:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lbase/b;->L2()Lo1/x;

    move-result-object v3

    const/16 v2, 0x2e

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    .line 4
    invoke-static {v2, v4, v4, v4}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_4

    const/16 v5, 0x2e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    .line 5
    invoke-virtual/range {v3 .. v8}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    new-array v6, v1, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    .line 7
    sget-object v7, Lu0/b;->O2:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    .line 8
    invoke-static {v2, v6, v4, v4}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    const/16 v5, 0x2e

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    .line 9
    invoke-virtual/range {v3 .. v8}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    .line 10
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static N(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->j:I

    if-nez p0, :cond_1

    .line 2
    invoke-static {v1}, Lu0/d;->N(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lu0/d;->N(I)V

    goto :goto_0

    .line 4
    :cond_2
    sget p0, Lu0/b;->j:I

    if-nez p0, :cond_4

    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_3
    sget p0, Lu0/b;->j:I

    if-ne p0, v1, :cond_4

    new-array p0, v0, [I

    .line 7
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x6
    .end array-data
.end method

.method public static N0(I)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lo1/u;->z0()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lo1/q0;->v()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3
    invoke-static {}, Lo1/u;->u0()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lo1/u;->t0()V

    :goto_0
    return-void
.end method

.method public static N1()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, -0x5

    sparse-switch v0, :sswitch_data_0

    .line 2
    invoke-static {}, Ly0/h;->i0()V

    .line 3
    invoke-static {v1}, Ly0/h;->u0(I)V

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x0

    const-string v2, "persist.fyt.androictrldvoice"

    .line 4
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5
    invoke-static {}, Ly0/h;->i0()V

    .line 6
    invoke-static {v1}, Ly0/h;->u0(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 7
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xf01c0 -> :sswitch_0
        0x1201c0 -> :sswitch_0
        0x1301c0 -> :sswitch_0
        0x1401c0 -> :sswitch_0
        0x1501c0 -> :sswitch_0
        0x1601c0 -> :sswitch_0
        0x1a01c0 -> :sswitch_0
        0x1b01c0 -> :sswitch_0
        0x1c01c0 -> :sswitch_0
        0x1d01c0 -> :sswitch_0
        0x1e01c0 -> :sswitch_0
        0x1f01c0 -> :sswitch_0
        0x2001c0 -> :sswitch_0
        0x2101c0 -> :sswitch_0
        0x2301c0 -> :sswitch_0
        0x2401c0 -> :sswitch_0
        0x2501c0 -> :sswitch_0
        0x2d01c0 -> :sswitch_0
        0x2e01c0 -> :sswitch_0
        0x2f01c0 -> :sswitch_0
        0x3001c0 -> :sswitch_0
        0x3101c0 -> :sswitch_0
        0x3201c0 -> :sswitch_0
        0x3301c0 -> :sswitch_0
        0x3401c0 -> :sswitch_0
        0x3501c0 -> :sswitch_0
        0x3601c0 -> :sswitch_0
        0x3701c0 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x0
        0x94
        0x2
        0xb
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0x94
        0x2
        0xb
        0x0
    .end array-data
.end method

.method public static N2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->C2:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->C2:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/16 v3, 0x5d

    .line 3
    invoke-static {v3, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object v1, Lu0/c;->R:Lo1/z;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v2

    aput p0, v4, v0

    invoke-virtual {v1, v4}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs N3(II[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static O(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->j1:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->j1:I

    const/16 v0, 0x6e

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static O0(I)V
    .locals 0

    .line 1
    invoke-static {p0}, La/i;->Q(I)V

    return-void
.end method

.method public static O1()V
    .locals 7

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "persist.fyt.androictrldvoice"

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    .line 2
    invoke-static {}, Ly0/h;->i0()V

    .line 3
    invoke-static {v6}, Ly0/h;->u0(I)V

    goto/16 :goto_0

    .line 4
    :sswitch_0
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v4, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Ly0/h;->i0()V

    .line 8
    invoke-static {v6}, Ly0/h;->u0(I)V

    goto :goto_0

    .line 9
    :sswitch_1
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 10
    invoke-static {}, Ly0/h;->i0()V

    .line 11
    invoke-static {v6}, Ly0/h;->u0(I)V

    goto :goto_0

    :cond_1
    new-array v0, v4, [I

    .line 12
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :sswitch_2
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 14
    invoke-static {}, Ly0/h;->i0()V

    .line 15
    invoke-static {v6}, Ly0/h;->u0(I)V

    goto :goto_0

    :cond_2
    new-array v0, v5, [I

    .line 16
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v5, [I

    .line 17
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 18
    :sswitch_3
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v5, [I

    .line 19
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v5, [I

    .line 20
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {}, Ly0/h;->i0()V

    .line 22
    invoke-static {v6}, Ly0/h;->u0(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x501c0 -> :sswitch_3
        0xf01c0 -> :sswitch_2
        0x1201c0 -> :sswitch_2
        0x1301c0 -> :sswitch_2
        0x1401c0 -> :sswitch_2
        0x1501c0 -> :sswitch_2
        0x1601c0 -> :sswitch_2
        0x1a01c0 -> :sswitch_2
        0x1b01c0 -> :sswitch_2
        0x1c01c0 -> :sswitch_2
        0x1d01c0 -> :sswitch_2
        0x1e01c0 -> :sswitch_2
        0x1f01c0 -> :sswitch_2
        0x2001c0 -> :sswitch_2
        0x2101c0 -> :sswitch_2
        0x2301c0 -> :sswitch_2
        0x2401c0 -> :sswitch_2
        0x2501c0 -> :sswitch_2
        0x2901c0 -> :sswitch_3
        0x2c01c0 -> :sswitch_3
        0x2d01c0 -> :sswitch_2
        0x2e01c0 -> :sswitch_2
        0x2f01c0 -> :sswitch_2
        0x3001c0 -> :sswitch_2
        0x3101c0 -> :sswitch_2
        0x3201c0 -> :sswitch_2
        0x3301c0 -> :sswitch_2
        0x3401c0 -> :sswitch_2
        0x3501c0 -> :sswitch_2
        0x3601c0 -> :sswitch_2
        0x3701c0 -> :sswitch_2
        0x4601c7 -> :sswitch_1
        0x4801c7 -> :sswitch_1
        0x6001c8 -> :sswitch_0
        0x6101c8 -> :sswitch_0
        0x6201c8 -> :sswitch_0
        0x6301c8 -> :sswitch_0
        0xb701c6 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x2
        0x29
        0xa
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x0
        0x94
        0x2
        0x6
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x0
        0x94
        0x2
        0x6
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x0
        0xa8
        0x2
        0x1
        0x2
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x0
        0xa8
        0x2
        0x0
        0x2
    .end array-data
.end method

.method public static O2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->z2:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->z2:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/16 v3, 0x5a

    .line 3
    invoke-static {v3, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object v1, Lu0/c;->R:Lo1/z;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v2

    aput p0, v4, v0

    invoke-virtual {v1, v4}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static O3(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->b1:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->b1:I

    const/16 v0, 0x64

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0xac

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static P(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->Q:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v0, Lu0/b;->K:I

    if-eq v0, p0, :cond_0

    .line 3
    sput p0, Lu0/b;->K:I

    .line 4
    sget-object v0, Lu0/c;->L:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0x1f

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p0, v2, v1

    .line 5
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static P0()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, La/i;->I(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static P1(I)V
    .locals 0

    .line 1
    sput p0, Lu0/b;->f2:I

    .line 2
    sget-object p0, Lz/c;->d:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    return-void
.end method

.method public static P2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->B2:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->B2:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/16 v3, 0x5c

    .line 3
    invoke-static {v3, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object v1, Lu0/c;->R:Lo1/z;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v2

    aput p0, v4, v0

    invoke-virtual {v1, v4}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static P3(I)V
    .locals 4

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bed\u97f3\u662f\u5426\u72ec\u5360\u58f0\u97f3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    sget v0, Lu0/b;->j4:I

    if-eq v0, p0, :cond_1

    .line 3
    sput p0, Lu0/b;->j4:I

    .line 4
    sget-object v0, Lu0/c;->G:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/16 v2, 0x39

    new-array v3, v1, [I

    aput v1, v3, v0

    .line 5
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    .line 6
    :cond_0
    invoke-static {}, Ly0/h;->M()V

    const/16 v2, 0x68

    new-array v1, v1, [I

    aput p0, v1, v0

    .line 7
    invoke-static {v2, v1}, Lu0/d;->I3(I[I)V

    :cond_1
    return-void
.end method

.method public static Q(I)V
    .locals 8

    const/4 v0, -0x5

    if-eq p0, v0, :cond_a

    const/4 v0, -0x4

    if-eq p0, v0, :cond_9

    const/4 v0, -0x3

    const/4 v1, 0x0

    if-eq p0, v0, :cond_4

    const/4 v0, -0x2

    if-eq p0, v0, :cond_2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 1
    invoke-static {p0}, Lu0/d;->V(I)V

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object v1, Lu0/b;->Y2:Lo1/o;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p0

    .line 3
    invoke-interface/range {v1 .. v6}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    sget p0, Lu0/b;->K:I

    sget v0, Lu0/b;->N:I

    add-int/2addr p0, v0

    invoke-static {p0}, Lu0/d;->V(I)V

    goto/16 :goto_1

    .line 5
    :cond_2
    sget-object v2, Lu0/b;->Y2:Lo1/o;

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p0

    .line 6
    invoke-interface/range {v2 .. v7}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    sget p0, Lu0/b;->K:I

    sget v0, Lu0/b;->N:I

    sub-int/2addr p0, v0

    sget v0, Lu0/b;->Q:I

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    invoke-static {p0}, Lu0/d;->V(I)V

    goto :goto_1

    .line 8
    :cond_4
    sget-object v2, Lu0/b;->Y2:Lo1/o;

    if-eqz v2, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p0

    .line 9
    invoke-interface/range {v2 .. v7}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    sget p0, Lu0/b;->w:I

    if-nez p0, :cond_6

    .line 11
    sget-object p0, Lu0/b;->V2:[I

    goto :goto_0

    .line 12
    :cond_6
    sget-object p0, Lu0/b;->W2:[I

    :goto_0
    if-nez p0, :cond_7

    goto :goto_1

    .line 13
    :cond_7
    array-length v0, p0

    if-nez v0, :cond_8

    goto :goto_1

    .line 14
    :cond_8
    sget v2, Lu0/b;->K:I

    invoke-static {p0, v2}, Lo1/n0;->c([II)I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 15
    rem-int/2addr v2, v0

    .line 16
    aget p0, p0, v2

    sget v0, Lu0/b;->Q:I

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    invoke-static {p0}, Lu0/d;->V(I)V

    goto :goto_1

    .line 17
    :cond_9
    sget p0, Lu0/b;->K:I

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lu0/d;->V(I)V

    goto :goto_1

    .line 18
    :cond_a
    sget p0, Lu0/b;->K:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Lu0/d;->V(I)V

    :goto_1
    return-void
.end method

.method public static Q0()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {v0, v1}, La/i;->I(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo0/h;->D(I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v1}, Lw0/f;->B(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static Q1(I)V
    .locals 0

    const/4 p0, 0x1

    .line 1
    sput p0, Lu0/b;->e2:I

    .line 2
    sget-object p0, Lz/c;->c:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    return-void
.end method

.method public static Q2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->A2:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->A2:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/16 v3, 0x5b

    .line 3
    invoke-static {v3, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object v1, Lu0/c;->R:Lo1/z;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v2

    aput p0, v4, v0

    invoke-virtual {v1, v4}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static Q3(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->f1:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->f1:I

    const/16 v0, 0x6c

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0xae

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static R(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->Q:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v0, Lu0/b;->L:I

    if-eq v0, p0, :cond_1

    .line 3
    sput p0, Lu0/b;->L:I

    const/16 v0, 0x20

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p0, v2, v1

    .line 4
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 5
    sget v0, Lu0/b;->w:I

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lo1/n0;->b()V

    :cond_0
    const/16 v0, 0x8a

    .line 7
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_1
    return-void
.end method

.method public static R0()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    const/4 v3, 0x4

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {v0, v2}, La/i;->I(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0, v1}, Lo0/h;->D(I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v3}, Lh0/f;->h(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v2}, Lw0/f;->B(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static R1([I)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    const/4 v3, 0x5

    const/16 v4, 0x9

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, v6}, Lu0/d;->M0([II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    array-length v1, p0

    add-int/2addr v1, v6

    .line 4
    new-array v9, v1, [I

    .line 5
    aput v4, v9, v0

    .line 6
    aput v8, v9, v8

    .line 7
    aget v0, p0, v8

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v9, v7

    .line 8
    aget v0, p0, v8

    and-int/lit16 v0, v0, 0xff

    aput v0, v9, v6

    .line 9
    aget v0, p0, v7

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v9, v2

    .line 10
    aget v0, p0, v7

    and-int/lit16 v0, v0, 0xff

    aput v0, v9, v3

    sub-int/2addr v1, v5

    .line 11
    invoke-static {p0, v6, v9, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-static {v9}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p0, v6}, Lu0/d;->M0([II)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v5, [I

    aput v4, v1, v0

    aput v0, v1, v8

    .line 14
    aget v0, p0, v8

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v7

    aget v0, p0, v8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v6

    aget v0, p0, v7

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v2

    aget p0, p0, v7

    and-int/lit16 p0, p0, 0xff

    aput p0, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p0, v2, [I

    .line 15
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public static R2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    if-nez v0, :cond_0

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->P0:I

    if-nez v0, :cond_0

    new-array p0, v3, [I

    const/16 v0, 0xa

    aput v0, p0, v2

    .line 2
    invoke-static {v4, p0}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p0, Lu0/c;->R:Lo1/z;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->v2:I

    if-eq v0, p0, :cond_1

    .line 5
    sput p0, Lu0/b;->v2:I

    new-array v0, v3, [I

    aput p0, v0, v2

    .line 6
    invoke-static {v4, v0}, Lu0/d;->I3(I[I)V

    .line 7
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v1, v1, [I

    aput v4, v1, v2

    aput p0, v1, v3

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x12
        0xa
    .end array-data
.end method

.method public static R3(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->f1:I

    if-nez p0, :cond_1

    .line 2
    invoke-static {v1}, Lu0/d;->R3(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Lu0/d;->R3(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v1}, Lu0/d;->Q3(I)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v0}, Lu0/d;->Q3(I)V

    :goto_0
    return-void
.end method

.method public static S(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lu0/d;->R(I)V

    return-void
.end method

.method public static S0()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {v0, v2}, La/i;->I(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0, v1}, Lo0/h;->D(I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v2}, Lw0/f;->B(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static S1(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->S0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->S0:I

    const/16 v0, 0x2d

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static S2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    if-nez v0, :cond_0

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->P0:I

    if-nez v0, :cond_0

    new-array p0, v3, [I

    const/16 v0, 0xa

    aput v0, p0, v2

    .line 2
    invoke-static {v4, p0}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p0, Lu0/c;->R:Lo1/z;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->w2:I

    if-eq v0, p0, :cond_1

    .line 5
    sput p0, Lu0/b;->w2:I

    new-array v0, v3, [I

    aput p0, v0, v2

    .line 6
    invoke-static {v4, v0}, Lu0/d;->I3(I[I)V

    .line 7
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v1, v1, [I

    aput v4, v1, v2

    aput p0, v1, v3

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x13
        0xa
    .end array-data
.end method

.method public static S3(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     videoChannel :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chip"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    const/16 p0, 0x44

    .line 2
    invoke-static {p0, v0}, Lu0/d;->I3(I[I)V

    return-void
.end method

.method public static T(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->Q:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v0, Lu0/b;->M:I

    if-eq v0, p0, :cond_1

    .line 3
    sput p0, Lu0/b;->M:I

    const/16 v0, 0x21

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p0, v2, v1

    .line 4
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 5
    sget v0, Lu0/b;->w:I

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lo1/n0;->b()V

    :cond_0
    const/16 v0, 0x8b

    .line 7
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_1
    return-void
.end method

.method public static T0()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {v0, v2}, La/i;->I(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo0/h;->D(I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v2}, Lw0/f;->B(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static T1(I)V
    .locals 6

    .line 1
    sget v0, Lu0/b;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->d:I

    if-ltz p0, :cond_0

    new-array v0, v2, [I

    aput p0, v0, v1

    .line 3
    invoke-static {v2, v0}, Lu0/d;->I3(I[I)V

    .line 4
    :cond_0
    sget-boolean v0, Lm1/a;->c:Z

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    sget v0, Lu0/b;->f:I

    const/4 v3, 0x3

    if-eq v0, p0, :cond_e

    .line 6
    sput p0, Lu0/b;->f:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "======================>> 000 mcuOn  DataMain.sMcuOn : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->f:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  DataMain.sAccOn : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->a0:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Qin"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    .line 8
    invoke-static {}, Lg/f;->e()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lo1/s0;->e([B)[I

    move-result-object p0

    .line 10
    array-length v0, p0

    add-int/2addr v0, v2

    new-array v0, v0, [I

    const/16 v4, 0x11

    .line 11
    aput v4, v0, v1

    .line 12
    array-length v4, p0

    invoke-static {p0, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    invoke-static {v0}, Lz/k;->s([I)V

    .line 14
    invoke-static {}, Lu0/d;->c3()V

    .line 15
    invoke-static {}, Ly0/h;->P()V

    .line 16
    sput-boolean v2, Lu0/b;->C3:Z

    .line 17
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v2}, Lapp/App;->h(Z)V

    .line 18
    invoke-static {}, Lu0/d;->X()V

    goto/16 :goto_0

    :cond_2
    const-string p0, "com.syu.video.hidepip"

    .line 19
    invoke-static {p0}, Lo1/u;->l(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3e

    .line 21
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x18

    .line 22
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.android.launcher3"

    .line 23
    invoke-static {p0, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const-string v0, "com.android.tv"

    .line 24
    invoke-static {p0, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "com.sstar.customizedmenu"

    :cond_4
    sput-object p0, Lu0/b;->A3:Ljava/lang/String;

    :cond_5
    const-string p0, "com.syu.carlink"

    .line 25
    invoke-static {p0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lo1/s0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Car Link"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v2

    .line 26
    :cond_6
    sget-object v0, Lu0/b;->A3:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_8

    .line 27
    :cond_7
    sget-object v0, Lu0/b;->c:Lu0/h;

    check-cast v0, Lu0/a;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lu0/a;->i(Ljava/lang/String;)V

    .line 28
    :cond_8
    sget v0, Lu0/b;->v4:I

    if-ne v0, v2, :cond_9

    .line 29
    sget v0, Lu0/b;->D:I

    sput v0, Lu0/d;->e:I

    :cond_9
    if-eqz v1, :cond_a

    .line 30
    invoke-static {p0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    :cond_a
    const-string p0, "com.autonavi.amapauto"

    .line 31
    invoke-static {p0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {v3}, La/i;->Q(I)V

    .line 32
    :cond_b
    sget-object p0, Lu0/b;->A3:Ljava/lang/String;

    invoke-static {p0}, La/i;->s(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Lu0/b;->A3:Ljava/lang/String;

    invoke-static {p0}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    :cond_c
    const-string p0, ""

    .line 33
    sput-object p0, Lu0/b;->A3:Ljava/lang/String;

    .line 34
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MCU\u5173\u673a,\u8bb0\u5f55\u6700\u4e0a\u9762\u7684\u5e94\u7528"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lu0/b;->A3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u5e76\u8df3\u5230\u4e3b\u9875"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/b0;->f(Ljava/lang/String;)V

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MCU OFF sTopAppWhenMcuOff: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lu0/b;->A3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mJumpAppId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lu0/d;->e:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  oldCarlink : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    sget-object p0, Lu0/c;->c:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    .line 37
    sget p0, Lu0/b;->a0:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    const-string v0, "com.syu.ms"

    const-string v1, "cmd.acc"

    .line 38
    invoke-static {v0, v1, p0}, Lo1/u;->n(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    :cond_e
    invoke-static {}, Lg/e;->e()I

    move-result p0

    if-eq p0, v2, :cond_f

    .line 40
    invoke-static {}, Lg/e;->e()I

    move-result p0

    if-eq p0, v3, :cond_f

    .line 41
    invoke-static {}, Lg/e;->e()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    .line 42
    invoke-static {}, Lg/e;->e()I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_f

    .line 43
    invoke-static {}, Lg/e;->e()I

    move-result p0

    if-nez p0, :cond_10

    .line 44
    :cond_f
    sget p0, Lu0/b;->f:I

    if-eqz p0, :cond_10

    .line 45
    invoke-static {}, Lo1/q0;->x()V

    :cond_10
    return-void
.end method

.method public static T2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    if-nez v0, :cond_0

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->P0:I

    if-nez v0, :cond_0

    new-array p0, v3, [I

    const/16 v0, 0xa

    aput v0, p0, v2

    .line 2
    invoke-static {v4, p0}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p0, Lu0/c;->R:Lo1/z;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->x2:I

    if-eq v0, p0, :cond_1

    .line 5
    sput p0, Lu0/b;->x2:I

    new-array v0, v3, [I

    aput p0, v0, v2

    .line 6
    invoke-static {v4, v0}, Lu0/d;->I3(I[I)V

    .line 7
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v1, v1, [I

    aput v4, v1, v2

    aput p0, v1, v3

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x14
        0xa
    .end array-data
.end method

.method public static T3(II)V
    .locals 4

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI\u8bf7\u6c42\u5207\u5230\u7684\u89c6\u9891\u901a\u9053 what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 4
    sput p0, Lu0/b;->p4:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 5
    sget-object p0, Lu0/c;->j:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    invoke-virtual {v0}, Lf1/o;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf1/o;->c(I)I

    move-result v0

    .line 8
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf1/o;->d(I)Lf1/q;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq p0, p1, :cond_1

    if-nez p1, :cond_4

    .line 9
    :cond_1
    sput p1, Lu0/b;->o4:I

    .line 10
    sget-object p0, Lu0/c;->j:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    goto :goto_0

    :cond_2
    if-eq p0, p1, :cond_3

    if-nez p1, :cond_4

    .line 11
    sget v0, Lu0/b;->o4:I

    if-ne p0, v0, :cond_4

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DataMain.sVideoId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lu0/b;->o4:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   request = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "image"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget p0, Lu0/b;->o4:I

    if-eq p0, p1, :cond_4

    .line 14
    sput p1, Lu0/b;->o4:I

    .line 15
    sget-object p0, Lu0/c;->j:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static U(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lu0/d;->T(I)V

    return-void
.end method

.method public static U0()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {v0, v2}, La/i;->I(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0, v1}, Lo0/h;->D(I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v2}, Lw0/f;->B(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static U1(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    .line 2
    :cond_1
    sget p0, Lu0/b;->f:I

    if-nez p0, :cond_3

    .line 3
    invoke-static {v0}, Lu0/d;->U1(I)V

    goto :goto_0

    .line 4
    :cond_2
    sget p0, Lu0/b;->f:I

    if-eqz p0, :cond_3

    .line 5
    invoke-static {v0}, Lu0/d;->U1(I)V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x1
    .end array-data
.end method

.method public static U2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-nez v0, :cond_0

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->P0:I

    if-nez v0, :cond_0

    new-array p0, v3, [I

    const/16 v0, 0xa

    aput v0, p0, v2

    .line 2
    invoke-static {v4, p0}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p0, Lu0/c;->R:Lo1/z;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->y2:I

    if-eq v0, p0, :cond_1

    .line 5
    sput p0, Lu0/b;->y2:I

    new-array v0, v3, [I

    aput p0, v0, v2

    .line 6
    invoke-static {v4, v0}, Lu0/d;->I3(I[I)V

    .line 7
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v1, v1, [I

    aput v4, v1, v2

    aput p0, v1, v3

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x15
        0xa
    .end array-data
.end method

.method public static U3(IIII)V
    .locals 6

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    sget v0, Lo0/e;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const/16 p0, 0x14

    .line 2
    invoke-static {p1, v5, p0}, Lo1/o0;->a(III)I

    move-result p1

    .line 3
    invoke-static {p2, v5, p0}, Lo1/o0;->a(III)I

    move-result p2

    .line 4
    invoke-static {p3, v5, p0}, Lo1/o0;->a(III)I

    move-result p0

    new-array p3, v4, [I

    .line 5
    fill-array-data p3, :array_0

    invoke-static {p3}, Lz/k;->o([I)V

    new-array p3, v4, [I

    aput v5, p3, v5

    const/16 v4, 0xb1

    aput v4, p3, v2

    aput p1, p3, v3

    aput p2, p3, v0

    aput p0, p3, v1

    .line 6
    invoke-static {p3}, Lz/k;->o([I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    .line 7
    invoke-static {p1, v5, p0}, Lo1/o0;->a(III)I

    move-result p1

    .line 8
    invoke-static {p2, v5, p0}, Lo1/o0;->a(III)I

    move-result p2

    .line 9
    invoke-static {p3, v5, p0}, Lo1/o0;->a(III)I

    move-result p0

    new-array p3, v4, [I

    aput v5, p3, v5

    const/16 v4, 0xb0

    aput v4, p3, v2

    aput p1, p3, v3

    aput p2, p3, v0

    aput p0, p3, v1

    .line 10
    invoke-static {p3}, Lz/k;->o([I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v1}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Le1/a;->b:Le1/l;

    invoke-virtual {v0, p0, p1, p2, p3}, Le1/l;->h(IIII)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xb0
        0x6
        0x0
        0x6
    .end array-data
.end method

.method public static V(I)V
    .locals 1

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->q3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lu0/b;->w:I

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lu0/d;->S(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lu0/d;->U(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Lu0/d;->S(I)V

    .line 6
    invoke-static {p0}, Lu0/d;->U(I)V

    :goto_0
    return-void
.end method

.method public static V0()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {v0, v2}, La/i;->I(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lo0/h;->D(I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v2}, Lw0/f;->B(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static V1(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->X:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->X:I

    const/16 v0, 0x26

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static V2(I)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    :goto_0
    sput p0, Lu0/b;->X0:I

    const/16 v0, 0x3f9

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 4
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 5
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v0

    const/16 v2, 0x3f8

    new-array v1, v1, [I

    aput p0, v1, v3

    const/4 p0, 0x0

    invoke-virtual {v0, v2, v1, p0, p0}, Lk0/rt;->Y2(I[I[F[Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x79
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x78
    .end array-data
.end method

.method public static V3(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    if-nez p0, :cond_0

    const/16 p0, 0xc0

    goto :goto_0

    :cond_0
    const/16 p0, 0xc1

    :goto_0
    const/4 v1, 0x2

    aput p0, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static W(I)V
    .locals 1

    .line 1
    sget v0, Lu0/b;->Z:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->Z:I

    .line 3
    invoke-static {}, Ly0/h;->M()V

    .line 4
    sget-object p0, Lu0/c;->i:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static W0()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    .line 2
    invoke-static {v0, v1}, La/i;->I(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lo0/h;->D(I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static W1(I)V
    .locals 7

    .line 1
    sget v0, Lu0/b;->y3:I

    const/4 v1, 0x3

    const/16 v2, 0xa

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_3

    if-eq p0, v5, :cond_2

    if-eq p0, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p0, Lu0/b;->X:I

    if-eq p0, v5, :cond_1

    .line 3
    invoke-static {v5}, Lu0/d;->W1(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v6}, Lu0/d;->W1(I)V

    goto :goto_0

    :cond_2
    new-array p0, v3, [I

    aput v2, p0, v6

    or-int/lit8 v0, v0, 0x40

    aput v0, p0, v5

    aput v6, p0, v4

    aput v6, p0, v1

    .line 5
    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v3, [I

    aput v2, p0, v6

    and-int/lit8 v0, v0, -0x41

    aput v0, p0, v5

    aput v6, p0, v4

    aput v6, p0, v1

    .line 6
    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public static W2(I)V
    .locals 6

    .line 1
    sget v0, Lu0/b;->o3:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lu0/b;->o3:I

    .line 3
    sget-object v0, Lu0/c;->v:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0x4a

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 4
    sget v3, Lu0/b;->D:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x7

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v3, 0x2

    aput p0, v2, v3

    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 5
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v2, 0x74

    aput v2, v0, v4

    const/4 v2, 0x6

    aput v2, v0, v5

    .line 6
    sget v2, Lu0/b;->n3:I

    aput v2, v0, v3

    aput p0, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method

.method public static W3(II)V
    .locals 5

    const/16 v0, 0x69

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    const/4 v4, 0x3

    if-eq p0, v4, :cond_1

    const/4 v4, 0x4

    if-eq p0, v4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->B1:I

    if-eq p0, p1, :cond_5

    .line 2
    sput p1, Lu0/b;->B1:I

    new-array p0, v2, [I

    aput v4, p0, v1

    aput p1, p0, v3

    .line 3
    invoke-static {v0, p0}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 4
    :cond_1
    sget p0, Lu0/b;->A1:I

    if-eq p0, p1, :cond_5

    .line 5
    sput p1, Lu0/b;->A1:I

    new-array p0, v2, [I

    aput v4, p0, v1

    aput p1, p0, v3

    .line 6
    invoke-static {v0, p0}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 7
    :cond_2
    sget p0, Lu0/b;->z1:I

    if-eq p0, p1, :cond_5

    .line 8
    sput p1, Lu0/b;->z1:I

    new-array p0, v2, [I

    aput v2, p0, v1

    aput p1, p0, v3

    .line 9
    invoke-static {v0, p0}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 10
    :cond_3
    sget p0, Lu0/b;->y1:I

    if-eq p0, p1, :cond_5

    .line 11
    sput p1, Lu0/b;->y1:I

    new-array p0, v2, [I

    aput v3, p0, v1

    aput p1, p0, v3

    .line 12
    invoke-static {v0, p0}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 13
    :cond_4
    sget p0, Lu0/b;->x1:I

    if-eq p0, p1, :cond_5

    .line 14
    sput p1, Lu0/b;->x1:I

    new-array p0, v2, [I

    aput v1, p0, v1

    aput p1, p0, v3

    .line 15
    invoke-static {v0, p0}, Lu0/d;->I3(I[I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static X()V
    .locals 3

    .line 1
    invoke-static {}, La/f;->w()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x320

    if-ne v0, v2, :cond_0

    invoke-static {}, La/f;->i()I

    move-result v0

    const/16 v2, 0x1e0

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {v1, v1}, Lu0/d;->W3(II)V

    .line 3
    invoke-static {v1, v1}, Lu0/d;->X3(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-static {v1, v0}, Lu0/d;->W3(II)V

    .line 5
    invoke-static {v1, v0}, Lu0/d;->X3(II)V

    :goto_0
    return-void
.end method

.method public static X0()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x8

    .line 2
    invoke-static {v0, v1}, La/i;->I(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lo0/h;->D(I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static X1(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x23

    if-nez p0, :cond_0

    .line 1
    sget-object v3, Lu0/b;->I1:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2
    sput-object p0, Lu0/b;->I1:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v0

    .line 3
    invoke-static {v2, v1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v3, Lu0/b;->I1:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    sput-object p0, Lu0/b;->I1:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v0

    .line 6
    invoke-static {v2, v1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static X2()V
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    .line 2
    sget-object v1, Lz/a;->b:Lo1/e0;

    invoke-virtual {v1, v0}, Lo1/e0;->i([B)V

    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        0x5at
        -0x1t
        -0x56t
        0x5bt
        -0x1t
        -0x56t
        0x5ct
        -0x1t
    .end array-data
.end method

.method public static X3(II)V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/ch7026"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz p0, :cond_b

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/16 v9, 0xff

    if-eq p0, v5, :cond_9

    if-eq p0, v6, :cond_7

    if-eq p0, v2, :cond_5

    if-eq p0, v4, :cond_3

    if-eq p0, v7, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v0, :cond_2

    const/16 p0, 0x9

    .line 3
    invoke-static {p0, v9}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 4
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_read()[I

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    :try_start_0
    array-length p1, p0

    if-ne p1, v4, :cond_1

    .line 6
    aget p1, p0, v6

    sput p1, Lu0/b;->y1:I

    .line 7
    aget p1, p0, v2

    sput p1, Lu0/b;->z1:I

    .line 8
    aget p1, p0, v3

    sput p1, Lu0/b;->A1:I

    .line 9
    aget p0, p0, v5

    sput p0, Lu0/b;->B1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    new-array p0, v6, [I

    aput v5, p0, v3

    .line 10
    sget p1, Lu0/b;->y1:I

    aput p1, p0, v5

    const/16 p1, 0x69

    invoke-static {p1, p0}, Lu0/d;->I3(I[I)V

    new-array p0, v6, [I

    aput v6, p0, v3

    .line 11
    sget v0, Lu0/b;->z1:I

    aput v0, p0, v5

    invoke-static {p1, p0}, Lu0/d;->I3(I[I)V

    new-array p0, v6, [I

    aput v2, p0, v3

    .line 12
    sget v0, Lu0/b;->A1:I

    aput v0, p0, v5

    invoke-static {p1, p0}, Lu0/d;->I3(I[I)V

    new-array p0, v6, [I

    aput v4, p0, v3

    .line 13
    sget v0, Lu0/b;->B1:I

    aput v0, p0, v5

    invoke-static {p1, p0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_0

    :cond_2
    new-array p0, v4, [I

    .line 14
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    invoke-static {v6, p1}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 16
    invoke-static {v8, v9}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 17
    sput p1, Lu0/b;->B1:I

    goto/16 :goto_0

    :cond_4
    new-array p0, v4, [I

    aput v1, p0, v3

    aput v7, p0, v5

    shr-int/lit8 v0, p1, 0x8

    and-int/2addr v0, v9

    aput v0, p0, v6

    and-int/2addr p1, v9

    aput p1, p0, v2

    .line 18
    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 19
    invoke-static {v2, p1}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 20
    invoke-static {v8, v9}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 21
    sput p1, Lu0/b;->A1:I

    goto :goto_0

    :cond_6
    new-array p0, v4, [I

    aput v1, p0, v3

    aput v4, p0, v5

    shr-int/lit8 v0, p1, 0x8

    and-int/2addr v0, v9

    aput v0, p0, v6

    and-int/2addr p1, v9

    aput p1, p0, v2

    .line 22
    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    .line 23
    invoke-static {v4, p1}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 24
    invoke-static {v8, v9}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 25
    sput p1, Lu0/b;->z1:I

    goto :goto_0

    :cond_8
    new-array p0, v4, [I

    aput v1, p0, v3

    aput v2, p0, v5

    shr-int/lit8 v0, p1, 0x8

    and-int/2addr v0, v9

    aput v0, p0, v6

    and-int/2addr p1, v9

    aput p1, p0, v2

    .line 26
    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_9
    if-eqz v0, :cond_a

    .line 27
    invoke-static {v7, p1}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 28
    invoke-static {v8, v9}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 29
    sput p1, Lu0/b;->y1:I

    goto :goto_0

    :cond_a
    new-array p0, v4, [I

    aput v1, p0, v3

    aput v6, p0, v5

    shr-int/lit8 v0, p1, 0x8

    and-int/2addr v0, v9

    aput v0, p0, v6

    and-int/2addr p1, v9

    aput p1, p0, v2

    .line 30
    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_b
    new-array p0, v4, [I

    aput v1, p0, v3

    aput v5, p0, v5

    aput p1, p0, v6

    aput v3, p0, v2

    .line 31
    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe
        0x10
        0x0
        0x0
    .end array-data
.end method

.method public static Y(Ljava/lang/String;III)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3
    array-length v1, p0

    const/4 v3, 0x2

    if-le v1, v3, :cond_3

    .line 4
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 6
    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, p1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    if-ne v1, p1, :cond_3

    if-ge v4, p2, :cond_2

    goto :goto_0

    :cond_2
    if-ge p0, p3, :cond_3

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return v0
.end method

.method public static Y0()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x9

    .line 2
    invoke-static {v0, v1}, La/i;->I(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo0/h;->D(I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static Y1(Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    .line 3
    new-array v1, v1, [I

    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 4
    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x3

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p0, v2, [I

    .line 7
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x7
        0x0
    .end array-data
.end method

.method public static Y2()V
    .locals 2

    .line 1
    sget-object v0, Lz/a;->b:Lo1/e0;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->b([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/e0;->i([B)V

    return-void

    :array_0
    .array-data 4
        0x1
        -0x56
        0x70
    .end array-data
.end method

.method public static Y3([I)V
    .locals 1

    .line 1
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    sput v0, Lu0/b;->y0:I

    const/4 v0, 0x1

    .line 3
    aget v0, p0, v0

    sput v0, Lu0/b;->z0:I

    const/4 v0, 0x2

    .line 4
    aget v0, p0, v0

    sput v0, Lu0/b;->A0:I

    const/4 v0, 0x3

    .line 5
    aget v0, p0, v0

    sput v0, Lu0/b;->B0:I

    const/4 v0, 0x4

    .line 6
    aget p0, p0, v0

    sput p0, Lu0/b;->C0:I

    :cond_0
    return-void
.end method

.method public static Z(II)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->Y0:I

    if-ne v0, p0, :cond_0

    sget v0, Lu0/b;->Z0:I

    if-eq v0, p1, :cond_1

    .line 2
    :cond_0
    sput p0, Lu0/b;->Y0:I

    .line 3
    sput p1, Lu0/b;->Z0:I

    const/16 v0, 0x62

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    .line 4
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_1
    return-void
.end method

.method public static Z0()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    :goto_0
    return-void
.end method

.method public static Z1(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lu0/b;->O:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, " HandleMain lase Mcu STATE: %2X  mcuState App ID =  %2X  DataMain.sTopAppWhenMcuOff: "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lu0/b;->A3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->O:I

    if-eq v0, p0, :cond_7

    .line 3
    sput p0, Lu0/b;->O:I

    .line 4
    sget-object v0, Lu0/b;->N2:Lo1/w;

    invoke-virtual {v0, p0}, Lo1/w;->d(I)V

    .line 5
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x14

    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 6
    sget-object v2, Lu0/a;->h:[I

    aget v2, v2, v0

    if-eq v2, p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_4

    .line 7
    sget-object v5, Lu0/b;->M2:Lo1/w;

    invoke-virtual {v5}, Lo1/w;->e()I

    move-result v6

    .line 8
    invoke-virtual {v5}, Lo1/w;->a()[I

    move-result-object v5

    sub-int/2addr v6, v4

    :goto_2
    if-ltz v6, :cond_4

    .line 9
    aget v0, v5, v6

    if-ltz v0, :cond_3

    if-ge v0, v1, :cond_3

    .line 10
    sget-object v7, Lu0/a;->h:[I

    aget v7, v7, v0

    if-ne v7, p0, :cond_3

    .line 11
    sput v0, Lu0/b;->F:I

    .line 12
    invoke-static {}, Lo1/q0;->v()Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    invoke-static {v0}, Lu0/d;->s(I)V

    .line 14
    sget-object v2, Ly0/f;->b:Ly0/e;

    invoke-virtual {v2, v0}, Ly0/e;->a(I)V

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_6

    move v0, v3

    :goto_4
    if-ge v0, v1, :cond_6

    .line 15
    sget-object v2, Lu0/a;->h:[I

    aget v2, v2, v0

    if-ne v2, p0, :cond_5

    .line 16
    sput v0, Lu0/b;->F:I

    .line 17
    invoke-static {}, Lo1/q0;->v()Z

    move-result p0

    if-nez p0, :cond_6

    .line 18
    invoke-static {v0}, Lu0/d;->s(I)V

    .line 19
    sget-object p0, Ly0/f;->b:Ly0/e;

    invoke-virtual {p0, v0}, Ly0/e;->a(I)V

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 20
    :cond_6
    :goto_5
    sput v0, Lu0/d;->e:I

    .line 21
    :cond_7
    sget p0, La/b;->e0:I

    if-ne p0, v4, :cond_8

    .line 22
    sget-object p0, La/d;->a:Lo1/y;

    sget-object v0, Lu0/d;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 23
    invoke-static {}, Lu0/d;->u0()V

    goto :goto_6

    .line 24
    :cond_8
    sget-object p0, La/d;->a:Lo1/y;

    sget-object v0, Lu0/d;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :goto_6
    return-void
.end method

.method public static Z2()V
    .locals 8

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    iget v0, v0, Lu0/i;->J:I

    .line 2
    sget-object v1, Lu0/b;->A3:Ljava/lang/String;

    const-string v2, "com.syu.carlink"

    invoke-static {v2, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v2}, Lo1/s0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Car Link"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rememberLastApp goto DataMain.sTopAppWhenMcuOff: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lu0/b;->A3:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mJumpAppId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/d;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Qin"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v2, Lu0/b;->A3:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->d0(Ljava/lang/String;)Z

    move-result v2

    .line 6
    sget-object v5, Lu0/b;->B3:Ljava/lang/String;

    sget-object v6, Lu0/b;->A3:Ljava/lang/String;

    invoke-static {v5, v6}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v6, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->i3()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lo1/u;->J0(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 9
    :cond_2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    sget-object v1, Lu0/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 11
    :cond_3
    sget v0, Lu0/d;->e:I

    if-nez v0, :cond_4

    .line 12
    invoke-static {v6, v0}, Lm1/c;->c(II)I

    move-result v0

    sput v0, Lu0/d;->e:I

    .line 13
    :cond_4
    sget v0, Lu0/d;->e:I

    invoke-static {v0}, Lo1/u;->b(I)I

    goto/16 :goto_1

    .line 14
    :cond_5
    sget-object v7, Lu0/b;->A3:Ljava/lang/String;

    invoke-static {v7}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    if-nez v1, :cond_7

    if-nez v2, :cond_a

    .line 15
    sget-object v0, Lu0/b;->A3:Ljava/lang/String;

    const-string v1, "com.autonavi.amapauto"

    invoke-static {v1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v1, Lu0/d$h;

    invoke-direct {v1}, Lu0/d$h;-><init>()V

    const-wide/16 v4, 0x9c4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 17
    :cond_6
    sget-object v0, Lu0/b;->A3:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->g(Ljava/lang/String;)I

    goto :goto_1

    .line 18
    :cond_7
    sget-boolean v1, Lu0/b;->G3:Z

    if-eqz v1, :cond_a

    sget-object v1, Lu0/b;->A3:Ljava/lang/String;

    invoke-static {v1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 19
    sget v1, Lu0/d;->e:I

    if-nez v1, :cond_8

    .line 20
    invoke-static {v6, v1}, Lm1/c;->c(II)I

    move-result v1

    sput v1, Lu0/d;->e:I

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rememberLastApp restore mJumpAppId: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lu0/d;->e:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " remember type : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_8
    sget v0, Lu0/d;->e:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    if-eqz v2, :cond_9

    if-eqz v5, :cond_9

    goto :goto_1

    .line 23
    :cond_9
    invoke-static {v0}, Lo1/u;->b(I)I

    :cond_a
    :goto_1
    const-string v0, ""

    .line 24
    invoke-static {v3, v0}, Lm1/c;->f(ILjava/lang/String;)V

    return-void
.end method

.method public static Z3(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    const-string v0, "/mnt/sdcard/MainServerLog.txt"

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lu0/d;->t0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    const-string p0, "\n"

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->f1:I

    if-nez p0, :cond_1

    .line 2
    invoke-static {v1}, Lu0/d;->w(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Lu0/d;->w(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v1}, Lu0/d;->w(I)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v0}, Lu0/d;->w(I)V

    :goto_0
    return-void
.end method

.method public static a0(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v3, 0x9

    aput v3, v0, v2

    const/4 v2, 0x2

    aput p0, v0, v2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lc/f;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public static a1()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    :goto_0
    return-void
.end method

.method public static a2([I[F[Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 1
    array-length p1, p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    aget v1, p0, p1

    const/4 v2, 0x2

    const/4 v3, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {p2, p1}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Ld/a;->c()Ld/a;

    move-result-object p0

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Ld/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-static {}, Lu0/d;->Y2()V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    .line 6
    array-length p0, p2

    if-lt p0, v0, :cond_0

    .line 7
    aget-object p0, p2, p1

    invoke-static {p0, v0}, Lu0/e;->i(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_0

    .line 8
    array-length p0, p2

    if-lt p0, v0, :cond_0

    .line 9
    aget-object p0, p2, p1

    invoke-static {p0, p1}, Lu0/e;->i(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_0

    .line 10
    array-length v1, p2

    if-lt v1, v0, :cond_0

    array-length v1, p0

    if-lt v1, v3, :cond_0

    .line 11
    aget-object p1, p2, p1

    aget p2, p0, v0

    aget p0, p0, v2

    invoke-static {p1, p2, p0}, Lu0/f;->z(Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_0

    .line 12
    array-length v1, p2

    if-lt v1, v0, :cond_0

    array-length v1, p0

    if-lt v1, v3, :cond_0

    .line 13
    aget-object p1, p2, p1

    aget p2, p0, v0

    aget p0, p0, v2

    invoke-static {p1, p2, p0}, Lu0/f;->B(Ljava/lang/String;II)V

    goto :goto_0

    .line 14
    :pswitch_6
    invoke-static {}, Lu0/d;->X2()V

    goto :goto_0

    :pswitch_7
    if-eqz p2, :cond_0

    .line 15
    array-length p0, p2

    if-lt p0, v0, :cond_0

    aget-object p0, p2, p1

    invoke-static {p0}, Lu0/f;->A(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static a3(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput v0, Lu0/b;->m1:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xaa
        0x56
    .end array-data
.end method

.method public static b0(I)V
    .locals 3

    .line 1
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lc/f;->a(ILjava/lang/Object;)Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v1, v0, v2

    and-int/lit8 p0, p0, 0xf

    or-int/lit8 p0, p0, 0x10

    const/4 v1, 0x2

    aput p0, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static b1()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    :goto_0
    return-void
.end method

.method public static b2(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===============>> Mcu Version Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "boot"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->b4()V

    .line 4
    :cond_0
    invoke-static/range {p0 .. p0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, "?TestOnly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ln0/j4;->d:Ln0/c4;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, v0}, Ln0/c4;->R3(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 6
    :goto_0
    sget-object v4, Lu0/b;->F1:Ljava/lang/String;

    invoke-static {v4, v0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 7
    sput-object v0, Lu0/b;->F1:Ljava/lang/String;

    const/16 v4, 0x22

    new-array v5, v3, [Ljava/lang/String;

    aput-object v0, v5, v2

    .line 8
    invoke-static {v4, v5}, Lu0/d;->K3(I[Ljava/lang/String;)V

    const v4, 0x7f04000c

    const-string v5, ")"

    if-eqz v1, :cond_3

    .line 9
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ln0/j4;->c:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v11, 0x23

    const/high16 v12, -0x10000

    const/16 v13, 0x3c

    const v14, 0x7fffff00

    const-string v8, "mcu match error"

    invoke-virtual/range {v6 .. v14}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    .line 10
    :cond_3
    invoke-static {}, Lg/f;->m()Z

    move-result v1

    const/16 v6, 0xc

    .line 11
    invoke-static {v6}, Lg/f;->f(I)Z

    move-result v7

    if-nez v7, :cond_5

    const/16 v7, 0x47

    invoke-static {v7}, Lg/e;->j(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move v7, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v7, v3

    :goto_2
    if-nez v7, :cond_6

    if-eqz v1, :cond_6

    const-string v1, "E60"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 13
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v7

    const/4 v8, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "( NOT 360 MCU )"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v12, 0x23

    const/high16 v13, -0x10000

    const/16 v14, 0x3c

    const v15, 0x7fffff00

    const-string v9, "mcu match error"

    invoke-virtual/range {v7 .. v15}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    :cond_6
    const/16 v1, 0x7df

    const/16 v4, 0x9

    .line 14
    invoke-static {v0, v1, v6, v4}, Lu0/d;->Y(Ljava/lang/String;III)Z

    move-result v1

    const/16 v6, 0x29

    const/16 v7, 0xa

    if-eqz v1, :cond_7

    .line 15
    sget-object v1, Lu0/a;->h:[I

    const/16 v8, 0x28

    aput v8, v1, v4

    .line 16
    aput v6, v1, v7

    goto :goto_3

    .line 17
    :cond_7
    sget-object v1, Lu0/a;->h:[I

    const/16 v8, 0x1a

    aput v8, v1, v4

    .line 18
    aput v8, v1, v7

    :goto_3
    const-string v1, "_92_"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "_90_"

    .line 20
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_8
    invoke-static {}, Lg/e;->a()I

    move-result v1

    const-string v4, "-MCU:"

    const-string v7, "(BSP:"

    const v8, 0x7f04000a

    if-eq v1, v3, :cond_9

    .line 22
    invoke-static {}, Lg/e;->a()I

    move-result v1

    if-eqz v1, :cond_9

    .line 23
    invoke-static {}, Lg/e;->a()I

    move-result v1

    const/4 v9, 0x3

    if-eq v1, v9, :cond_9

    .line 24
    sget v1, Ln0/j4;->b:I

    if-eq v1, v9, :cond_9

    if-eq v1, v6, :cond_9

    .line 25
    invoke-static {}, Lg/e;->c()Ljava/lang/String;

    move-result-object v1

    const-string v6, "_00_"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 26
    invoke-static {}, Lg/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 27
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lg/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v14, 0x1e

    const/high16 v15, -0x10000

    const/16 v16, 0x3c

    const v17, 0x7fffff00

    const-string v11, "mcu match error"

    .line 29
    invoke-virtual/range {v9 .. v17}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    .line 30
    :cond_9
    invoke-static {}, Lg/e;->a()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_15

    const-string v1, "ro.fyt.openfw"

    .line 31
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v3, :cond_15

    const-string v1, "ro.fyt.openbom"

    const-string v6, "NULL"

    .line 32
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ob_04"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x5c

    const/16 v11, 0x5a

    const-string v12, "LG"

    if-eqz v9, :cond_c

    .line 33
    sget v1, Ln0/j4;->b:I

    if-eq v1, v11, :cond_b

    if-eq v1, v10, :cond_b

    const/16 v6, 0x5d

    if-ne v1, v6, :cond_a

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_5

    :cond_b
    :goto_4
    move v1, v3

    :goto_5
    const-string v6, "\u5965\u5c3c "

    .line 34
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 35
    :cond_c
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "ob_03"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 36
    sget v1, Ln0/j4;->b:I

    if-eq v1, v11, :cond_e

    if-ne v1, v10, :cond_d

    goto :goto_6

    :cond_d
    move v1, v2

    goto :goto_7

    :cond_e
    :goto_6
    move v1, v3

    :goto_7
    const-string v6, "\u9f0e\u9e3f "

    .line 37
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 38
    :cond_f
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "ob_01"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 39
    sget v1, Ln0/j4;->b:I

    if-eq v1, v11, :cond_10

    move v1, v3

    goto :goto_8

    :cond_10
    move v1, v2

    :goto_8
    const-string v6, "\u5eb7\u5927 "

    .line 40
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 41
    :cond_11
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "ob_00"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v1, "\u65b9\u6613\u901a "

    .line 42
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 43
    :cond_12
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "ob_02"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 44
    sget v1, Ln0/j4;->b:I

    if-eq v1, v10, :cond_13

    move v1, v3

    goto :goto_9

    :cond_13
    move v1, v2

    :goto_9
    const-string v6, "\u8f66\u8fde\u8fde "

    .line 45
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_14
    :goto_a
    move v1, v2

    .line 46
    :goto_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show= "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sCustomerId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Ln0/j4;->b:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_15

    .line 47
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v13

    const/4 v14, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lg/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v18, 0x1e

    const/high16 v19, -0x10000

    const/16 v20, 0x3c

    const v21, 0x7fffff00

    const-string v15, "match error"

    .line 49
    invoke-virtual/range {v13 .. v21}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    .line 50
    :cond_15
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x1d

    if-eq v1, v4, :cond_16

    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/16 v4, 0x25

    if-ne v1, v4, :cond_17

    :cond_16
    const-string v1, "ro.sys.768m"

    .line 51
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x7e1

    const/16 v2, 0xb

    .line 52
    invoke-static {v0, v1, v2, v3}, Lu0/d;->Y(Ljava/lang/String;III)Z

    move-result v1

    if-nez v1, :cond_17

    .line 53
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v2

    const/4 v3, 0x0

    .line 54
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f040007

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v7, 0x1e

    const/high16 v8, -0x10000

    const/16 v9, 0x3c

    const v10, 0x7fffff00

    const-string v4, "mcu match old"

    .line 55
    invoke-virtual/range {v2 .. v10}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    .line 56
    :cond_17
    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "Fact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 57
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 58
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f04000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v6, 0x1e

    const/high16 v7, -0x10000

    const/16 v8, 0x3c

    const v9, 0x7fffff00

    const-string v3, "upgrade mcu"

    .line 59
    invoke-virtual/range {v1 .. v9}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    :cond_18
    return-void
.end method

.method public static b3(I)V
    .locals 7

    .line 1
    sget v0, Lu0/b;->n3:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lu0/b;->n3:I

    .line 3
    sget-object v0, Lu0/c;->u:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0x4a

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 4
    sget v3, Lu0/b;->D:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x6

    aput v5, v2, v3

    const/4 v6, 0x2

    aput p0, v2, v6

    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 5
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v2, 0x74

    aput v2, v0, v4

    aput v5, v0, v3

    aput p0, v0, v6

    .line 6
    sget p0, Lu0/b;->o3:I

    aput p0, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method

.method public static c()V
    .locals 2

    .line 1
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lc/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x77
    .end array-data
.end method

.method public static c0(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/16 v3, 0x92

    .line 1
    invoke-static {v3, v1}, Lu0/d;->I3(I[I)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    aput v0, v1, v2

    const/16 v2, 0x7d

    aput v2, v1, v0

    const/4 v0, 0x2

    aput p0, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public static c1(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->d0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->d0:I

    const/16 v0, 0x35

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static c2(I)V
    .locals 7

    .line 1
    sget v0, Lu0/b;->q3:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->q3:I

    const/16 v0, 0x4a

    new-array v5, v3, [I

    .line 3
    sget v6, Lu0/b;->D:I

    aput v6, v5, v4

    const/16 v6, 0xa

    aput v6, v5, v2

    aput p0, v5, v1

    invoke-static {v0, v5}, Lu0/d;->I3(I[I)V

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v5, 0x8

    if-eq v0, v5, :cond_1

    const/16 v6, 0x9

    if-ne v0, v6, :cond_2

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v6, 0x74

    aput v6, v0, v4

    aput v5, v0, v2

    aput p0, v0, v1

    aput v4, v0, v3

    .line 5
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method

.method public static c3()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->v3()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xaa
        0x60
    .end array-data
.end method

.method public static d()V
    .locals 2

    .line 1
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lc/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x76
    .end array-data
.end method

.method public static d0(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->D0:I

    const/16 v0, 0x47

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static d1(I)V
    .locals 5

    const-string v0, "car_mode"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------------ lamplet value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Qin"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v1, Lu0/b;->w:I

    if-eq v1, p0, :cond_3

    .line 3
    sput p0, Lu0/b;->w:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p0, v3, v4

    .line 4
    invoke-static {v1, v3}, Lu0/d;->I3(I[I)V

    const/16 v1, 0x3d

    .line 5
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb5

    new-array v3, v2, [I

    aput p0, v3, v4

    .line 6
    invoke-static {v1, v3}, Lu0/d;->I3(I[I)V

    .line 7
    :cond_0
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->q3()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {}, Lo1/n0;->b()V

    .line 9
    :cond_1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    if-ne p0, v2, :cond_2

    .line 10
    iget v2, v1, Lu0/i;->U:I

    goto :goto_0

    :cond_2
    iget v2, v1, Lu0/i;->T:I

    :goto_0
    invoke-virtual {v1, v2}, Lu0/i;->Z3(I)V

    .line 11
    sget-object v1, Lu0/c;->z:Lo1/y;

    invoke-virtual {v1}, Lo1/y;->c()V

    .line 12
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p0, :cond_3

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_3
    :goto_1
    sget-boolean v0, Lu0/b;->g2:Z

    if-eqz v0, :cond_4

    .line 16
    invoke-static {p0}, Lo1/q0;->G(I)V

    :cond_4
    return-void
.end method

.method public static d2(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->e1:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->e1:I

    const/16 v0, 0x6b

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static d3(I)V
    .locals 1

    .line 1
    sget v0, Lu0/b;->H0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->H0:I

    .line 3
    sget-object p0, Lu0/c;->E:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static e(I)V
    .locals 3

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MCU Vavdd === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->u(Ljava/lang/String;)V

    .line 2
    sget v0, Lu0/b;->i1:I

    if-eq v0, p0, :cond_0

    .line 3
    sput p0, Lu0/b;->i1:I

    .line 4
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    iget-object v0, v0, Lu0/i;->a0:Lo1/z;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    const/16 v0, 0x74

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 5
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static e0(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->u0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->u0:I

    const/16 v0, 0x42

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x94

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static e1(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->P:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->P:I

    const/16 v0, 0x1d

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0xc5

    .line 4
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0, p0}, Lm1/c;->e(II)I

    :cond_0
    return-void
.end method

.method public static e2(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v1, v0, v2

    add-int/lit16 p0, p0, 0xf0

    const/4 v1, 0x2

    aput p0, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static e3(I)V
    .locals 1

    .line 1
    sget v0, Lu0/b;->I0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->I0:I

    .line 3
    sget-object p0, Lu0/c;->F:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static f(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->i1:I

    if-eq v0, p0, :cond_1

    const/16 v0, 0xd0

    .line 2
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x2

    aput p0, v0, v1

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lu0/d;->e(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static f0(I)V
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->u0:I

    add-int/2addr p0, v0

    and-int/2addr p0, v0

    invoke-static {p0}, Lu0/d;->e0(I)V

    goto :goto_0

    .line 2
    :cond_1
    sget p0, Lu0/b;->u0:I

    if-nez p0, :cond_3

    .line 3
    invoke-static {v0}, Lu0/d;->e0(I)V

    goto :goto_0

    .line 4
    :cond_2
    sget p0, Lu0/b;->u0:I

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 5
    invoke-static {p0}, Lu0/d;->e0(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static f1(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->P:I

    if-nez p0, :cond_1

    .line 2
    invoke-static {v1}, Lu0/d;->f1(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lu0/d;->f1(I)V

    goto :goto_0

    :cond_2
    new-array p0, v0, [I

    .line 4
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x97
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x96
    .end array-data
.end method

.method public static f2(II)V
    .locals 7

    const/4 v0, 0x4

    const/16 v1, 0x7a

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v6, :cond_2

    if-eq p0, v3, :cond_0

    goto :goto_3

    :cond_0
    new-array p0, v2, [I

    aput v1, p0, v5

    aput v4, p0, v6

    .line 1
    sget v1, Lu0/b;->j0:I

    aput v1, p0, v3

    sget v1, Lu0/b;->k0:I

    aput v1, p0, v4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    aput v5, p0, v0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_3

    :cond_2
    new-array p0, v2, [I

    aput v1, p0, v5

    aput v4, p0, v6

    .line 2
    sget v1, Lu0/b;->j0:I

    aput v1, p0, v3

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    aput v5, p0, v4

    sget p1, Lu0/b;->l0:I

    aput p1, p0, v0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_3

    :cond_4
    new-array p0, v2, [I

    aput v1, p0, v5

    aput v4, p0, v6

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v5, v6

    :goto_2
    aput v5, p0, v3

    .line 3
    sget p1, Lu0/b;->k0:I

    aput p1, p0, v4

    sget p1, Lu0/b;->l0:I

    aput p1, p0, v0

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_3
    return-void
.end method

.method public static f3(I)V
    .locals 9

    const/4 v0, 0x0

    if-gez p0, :cond_0

    move p0, v0

    :cond_0
    const/16 v1, 0x3d

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput p0, v3, v0

    .line 1
    invoke-static {v1, v3}, Lu0/d;->I3(I[I)V

    .line 2
    sput v2, Lu0/b;->z3:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v2}, Ly0/h;->Y(IZ)V

    const-wide/16 v3, 0x64

    .line 4
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 5
    invoke-static {}, Lf0/c;->X2()Lf0/c;

    move-result-object v3

    invoke-virtual {v3}, Lf0/c;->Y2()Lf0/a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, v2}, Lf0/a;->f(Z)V

    .line 7
    :cond_1
    sget v3, Lu0/b;->b4:I

    if-ltz v3, :cond_2

    const/4 v3, 0x7

    invoke-static {v3}, Lg/f;->f(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    sget-object v3, Lu0/b;->c:Lu0/h;

    sget v4, Lu0/b;->b4:I

    invoke-interface {v3, v4}, Lu0/h;->c(I)V

    .line 9
    :cond_2
    sget-boolean v3, Lu0/b;->D1:Z

    if-nez v3, :cond_3

    const-string p0, "main"

    const-string v0, " ===> None Mcu Reset action ==>>"

    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, La/i;->U()V

    return-void

    :cond_3
    const/4 v3, 0x3

    new-array v4, v3, [I

    const/4 v5, 0x6

    aput v5, v4, v0

    const/16 v6, 0x20

    aput v6, v4, v2

    aput p0, v4, v1

    .line 12
    invoke-static {v4}, Lz/k;->s([I)V

    const-wide/16 v7, 0xa

    .line 13
    invoke-static {v7, v8}, La/i;->a0(J)V

    new-array v3, v3, [I

    aput v5, v3, v0

    aput v6, v3, v2

    aput p0, v3, v1

    .line 14
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static g(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->i1:I

    if-eq v0, p0, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xb

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x2

    aput p0, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method

.method public static g0()V
    .locals 5

    .line 1
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 2
    aput v2, v0, v2

    const/4 v2, 0x2

    .line 3
    aput v2, v0, v2

    const/4 v3, 0x3

    .line 4
    aput v3, v0, v3

    const/4 v3, 0x4

    const/16 v4, 0x14

    .line 5
    aput v4, v0, v3

    const/4 v3, 0x5

    const/4 v4, 0x6

    .line 6
    aput v4, v0, v3

    .line 7
    aput v2, v0, v4

    const/4 v2, 0x7

    const/16 v3, 0x15

    .line 8
    aput v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x17

    .line 9
    aput v3, v0, v2

    const/16 v2, 0x9

    .line 10
    aput v1, v0, v2

    return-void
.end method

.method public static g1(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->L0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->L0:I

    const/16 v0, 0x4e

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static g2(I)V
    .locals 1

    .line 1
    sget v0, Lu0/b;->b:I

    if-ne v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    sput p0, Lu0/b;->b:I

    .line 3
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0}, Lu0/h;->b()V

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    .line 4
    new-instance p0, Lu0/h$a;

    invoke-direct {p0}, Lu0/h$a;-><init>()V

    sput-object p0, Lu0/b;->c:Lu0/h;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Lu0/a;

    invoke-direct {p0}, Lu0/a;-><init>()V

    sput-object p0, Lu0/b;->c:Lu0/h;

    .line 6
    :goto_0
    sget-object p0, Lu0/b;->c:Lu0/h;

    invoke-interface {p0}, Lu0/h;->a()V

    return-void
.end method

.method public static g3()V
    .locals 3

    .line 1
    invoke-static {}, Lu0/d;->o0()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.extra.WIPE_ESIMS"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static h(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->h1:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->h1:I

    .line 3
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    iget-object v0, v0, Lu0/i;->Z:Lo1/z;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    const/16 v0, 0x6d

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 4
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static h0()V
    .locals 5

    .line 1
    sget-object v0, Lu0/b;->u4:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    .line 2
    aput v1, v0, v1

    const/4 v2, 0x2

    .line 3
    aput v2, v0, v2

    const/4 v3, 0x3

    .line 4
    aput v2, v0, v3

    const/4 v4, 0x4

    .line 5
    aput v3, v0, v4

    const/4 v4, 0x5

    .line 6
    aput v2, v0, v4

    const/4 v4, 0x6

    .line 7
    aput v2, v0, v4

    const/4 v4, 0x7

    .line 8
    aput v3, v0, v4

    const/16 v3, 0x8

    .line 9
    aput v2, v0, v3

    const/16 v2, 0x9

    .line 10
    aput v1, v0, v2

    return-void
.end method

.method public static h1(I)V
    .locals 5

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v0, [I

    const/16 v3, 0x7a

    const/4 v4, 0x0

    aput v3, p0, v4

    aput v0, p0, v1

    .line 1
    sget v0, Lu0/b;->L0:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    aput v1, p0, v2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7a
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x7a
        0x3
        0x0
    .end array-data
.end method

.method public static h2(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xa
    .end array-data
.end method

.method public static h3(II)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->W0:I

    if-eq v0, p1, :cond_0

    .line 2
    sput p1, Lu0/b;->W0:I

    const/16 v0, 0x59

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static i(I)V
    .locals 6

    .line 1
    sget v0, Lu0/b;->a0:I

    if-eq v0, p0, :cond_8

    .line 2
    sput p0, Lu0/b;->a0:I

    const/16 v0, 0x32

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======================>>000 accOn  DataMain.sMcuOn : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  DataMain.sAccOn : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->a0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " DataMain.sScreenOn : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qin"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 6
    sget v0, Lu0/b;->a0:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const-string v4, "com.syu.ms"

    const-string v5, "cmd.acc"

    .line 7
    invoke-static {v4, v5, v0}, Lo1/u;->n(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    if-nez p0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 8
    :goto_0
    invoke-static {v0}, Lo1/q0;->a(I)V

    .line 9
    sget v0, Lu0/b;->n4:I

    if-nez v0, :cond_2

    sget v0, Lu0/b;->a0:I

    if-ne v0, v1, :cond_2

    .line 10
    invoke-static {}, La/e;->g()V

    .line 11
    invoke-static {}, Lz/i;->p()V

    :cond_2
    if-eqz p0, :cond_4

    .line 12
    invoke-static {}, Ly0/h;->P()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======================>> closeDoor  DataMain.sMcuOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  DataMain.sCutAccTurnOffLcdc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->u0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget v0, Lu0/b;->u0:I

    if-eqz v0, :cond_7

    .line 15
    invoke-static {v3}, Lo1/q0;->m(I)V

    .line 16
    sget-object v0, Ly0/f;->b:Ly0/e;

    if-eqz v0, :cond_3

    instance-of v0, v0, Lmodule/sound/AudioDevice;

    if-nez v0, :cond_7

    .line 17
    :cond_3
    invoke-static {v3}, Lo1/q0;->y(I)V

    goto :goto_1

    .line 18
    :cond_4
    sget v0, Lu0/b;->u0:I

    if-eqz v0, :cond_7

    .line 19
    sget-object v0, Ly0/f;->b:Ly0/e;

    if-eqz v0, :cond_5

    instance-of v0, v0, Lmodule/sound/AudioDevice;

    if-nez v0, :cond_6

    .line 20
    :cond_5
    invoke-static {v1}, Lo1/q0;->y(I)V

    .line 21
    :cond_6
    invoke-static {v1}, Lo1/q0;->m(I)V

    .line 22
    :cond_7
    :goto_1
    invoke-static {p0}, Lo1/q0;->b(I)V

    :cond_8
    return-void
.end method

.method public static i0()V
    .locals 6

    .line 1
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    .line 2
    aput v1, v0, v1

    const/4 v2, 0x2

    .line 3
    aput v2, v0, v2

    const/4 v3, 0x3

    const/4 v4, 0x5

    .line 4
    aput v4, v0, v3

    const/4 v5, 0x4

    .line 5
    aput v3, v0, v5

    .line 6
    aput v5, v0, v4

    const/4 v4, 0x6

    .line 7
    aput v2, v0, v4

    const/4 v2, 0x7

    .line 8
    aput v3, v0, v2

    const/16 v2, 0x8

    .line 9
    aput v5, v0, v2

    const/16 v2, 0x9

    .line 10
    aput v1, v0, v2

    return-void
.end method

.method public static i1(I)V
    .locals 4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v0, [I

    const/16 v0, 0x7a

    const/4 v3, 0x0

    aput v0, p0, v3

    aput v3, p0, v1

    .line 1
    sget v0, Lu0/b;->h0:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    aput v1, p0, v2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7a
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x7a
        0x0
        0x0
    .end array-data
.end method

.method public static i2(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->z:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->z:I

    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x85

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static i3(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x5c
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x5c
        0x0
    .end array-data
.end method

.method public static synthetic j()I
    .locals 1

    .line 1
    sget v0, Lu0/d;->a:I

    return v0
.end method

.method public static j0(I)V
    .locals 8

    .line 1
    sget v0, Lu0/b;->p3:I

    const/4 v1, 0x2

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->p3:I

    const/16 v0, 0x4a

    new-array v6, v4, [I

    .line 3
    sget v7, Lu0/b;->D:I

    aput v7, v6, v5

    aput v2, v6, v3

    aput p0, v6, v1

    invoke-static {v0, v6}, Lu0/d;->I3(I[I)V

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v6, 0x8

    if-eq v0, v6, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v2, 0x74

    aput v2, v0, v5

    const/4 v2, 0x7

    aput v2, v0, v3

    aput p0, v0, v1

    aput v5, v0, v4

    .line 5
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method

.method public static j1(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->h0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->h0:I

    const/16 v0, 0x36

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static j2(I)V
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->z:I

    add-int/2addr p0, v0

    and-int/2addr p0, v0

    invoke-static {p0}, Lu0/d;->i2(I)V

    goto :goto_0

    .line 2
    :cond_1
    sget p0, Lu0/b;->z:I

    if-nez p0, :cond_3

    .line 3
    invoke-static {v0}, Lu0/d;->i2(I)V

    goto :goto_0

    .line 4
    :cond_2
    sget p0, Lu0/b;->z:I

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 5
    invoke-static {p0}, Lu0/d;->i2(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static j3(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->P3:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p0, Lu0/b;->h:I

    if-eqz p0, :cond_1

    .line 3
    invoke-static {v2}, Lu0/d;->O(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v3}, Lu0/d;->O(I)V

    goto :goto_0

    .line 5
    :cond_2
    sget p0, Lu0/b;->h:I

    if-nez p0, :cond_9

    .line 6
    invoke-static {v3}, Lu0/d;->O(I)V

    goto :goto_0

    .line 7
    :cond_3
    sget p0, Lu0/b;->h:I

    if-eqz p0, :cond_9

    .line 8
    invoke-static {v2}, Lu0/d;->O(I)V

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_7

    if-eq p0, v1, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    sget p0, Lu0/b;->j1:I

    if-eqz p0, :cond_6

    .line 10
    invoke-static {v2}, Lu0/d;->O(I)V

    goto :goto_0

    .line 11
    :cond_6
    invoke-static {v3}, Lu0/d;->O(I)V

    goto :goto_0

    .line 12
    :cond_7
    sget p0, Lu0/b;->j1:I

    if-nez p0, :cond_9

    .line 13
    invoke-static {v3}, Lu0/d;->O(I)V

    goto :goto_0

    .line 14
    :cond_8
    sget p0, Lu0/b;->j1:I

    if-eqz p0, :cond_9

    .line 15
    invoke-static {v2}, Lu0/d;->O(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method public static synthetic k()I
    .locals 2

    .line 1
    sget v0, Lu0/d;->a:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lu0/d;->a:I

    return v0
.end method

.method public static k0(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->w0:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lu0/b;->w0:I

    const/16 v0, 0x43

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x95

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    .line 5
    sget p0, Lu0/b;->w0:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string p0, "net.easyconn"

    invoke-static {p0, v1}, Lu0/d;->m0(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static k1(I)V
    .locals 5

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v0, [I

    const/16 v3, 0xc

    const/4 v4, 0x0

    aput v3, p0, v4

    aput v0, p0, v1

    .line 1
    sget v0, Lu0/b;->d0:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    aput v1, p0, v2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x3
        0x0
    .end array-data
.end method

.method public static k2(Ljava/lang/String;)V
    .locals 4

    const-string v0, "null"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p0, v1

    .line 2
    :cond_0
    sget-object v0, Lu0/b;->J1:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x82

    .line 3
    sput-object p0, Lu0/b;->J1:Ljava/lang/String;

    invoke-static {v0, p0}, Lm1/c;->h(ILjava/lang/String;)V

    const/16 v0, 0x1c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 4
    invoke-static {v0, v2}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_1
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    const-string v0, "persist.sys.navi.packagename"

    .line 5
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sys.navi.packagename"

    .line 7
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static k3(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->g:I

    if-eq v0, p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    sput v2, Lu0/b;->g:I

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==========>>>  screenOn  on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Qin"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa8

    new-array v2, v1, [I

    .line 4
    sget v3, Lu0/b;->g:I

    aput v3, v2, v0

    invoke-static {p0, v2}, Lu0/d;->I3(I[I)V

    .line 5
    sget-object p0, Lu0/c;->e:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    .line 6
    sget p0, Lu0/b;->g:I

    if-ne p0, v1, :cond_1

    sget p0, Lu0/b;->n4:I

    if-nez p0, :cond_1

    .line 7
    invoke-static {}, La/e;->g()V

    .line 8
    invoke-static {}, Lz/i;->p()V

    :cond_1
    return-void
.end method

.method public static synthetic l()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lu0/d;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static l0(I)V
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->w0:I

    add-int/2addr p0, v0

    and-int/2addr p0, v0

    invoke-static {p0}, Lu0/d;->k0(I)V

    goto :goto_0

    .line 2
    :cond_1
    sget p0, Lu0/b;->w0:I

    if-nez p0, :cond_3

    .line 3
    invoke-static {v0}, Lu0/d;->k0(I)V

    goto :goto_0

    .line 4
    :cond_2
    sget p0, Lu0/b;->w0:I

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 5
    invoke-static {p0}, Lu0/d;->k0(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static l1(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->c0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->c0:I

    const/16 v0, 0x34

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static l2(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lu0/d;->k2(Ljava/lang/String;)V

    return-void
.end method

.method public static l3(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->O0:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lu0/b;->O0:I

    const/16 v0, 0x50

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x9d

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 6
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p0

    new-instance v0, Lu0/d$k;

    invoke-direct {v0}, Lu0/d$k;-><init>()V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p0

    new-instance v0, Lu0/d$l;

    invoke-direct {v0}, Lu0/d$l;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static m(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static m0(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lu0/i;->d3(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static m1(I)V
    .locals 4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v0, [I

    const/16 v0, 0xc

    const/4 v3, 0x0

    aput v0, p0, v3

    aput v2, p0, v1

    .line 1
    sget v0, Lu0/b;->c0:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    aput v1, p0, v2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data
.end method

.method public static m2(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->V:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->V:I

    const/16 v0, 0x1a

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 4
    sget v0, Lu0/b;->y4:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa0

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static m3(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->O0:I

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lu0/d;->l3(I)V

    goto :goto_0

    .line 2
    :cond_2
    invoke-static {v1}, Lu0/d;->l3(I)V

    goto :goto_0

    .line 3
    :cond_3
    invoke-static {v0}, Lu0/d;->l3(I)V

    :goto_0
    return-void
.end method

.method public static n(II)V
    .locals 6

    const/4 v0, 0x3

    const/16 v1, 0x7b

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v5, [I

    aput v1, p0, v4

    aput v4, p0, v3

    aput v2, p0, v2

    aput p1, p0, v0

    .line 1
    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    new-array p0, v5, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array p0, v5, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_4

    goto :goto_1

    :cond_4
    new-array p0, v5, [I

    aput v1, p0, v4

    aput v4, p0, v3

    aput v4, p0, v2

    .line 4
    sget p1, Lu0/b;->M0:I

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v4

    :goto_0
    aput v3, p0, v0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_6
    new-array p0, v5, [I

    .line 5
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_7
    new-array p0, v5, [I

    .line 6
    fill-array-data p0, :array_3

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7b
        0x0
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x7b
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7b
        0x0
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x7b
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static n0(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterSleepWakeup DataMain.sAccOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->a0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  on : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sleep"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->a0:I

    const/4 v2, 0x3

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const/16 p0, 0x3c

    .line 3
    sput p0, Lu0/d;->a:I

    const/4 p0, 0x1

    .line 4
    invoke-static {p0}, Lo1/q0;->w(I)V

    new-array p0, v2, [I

    .line 5
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->t([I)V

    .line 6
    sget-object p0, Lu0/d;->b:Ljava/lang/Runnable;

    invoke-static {p0}, Lu0/d;->m(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    invoke-static {p0}, Lo1/q0;->w(I)V

    .line 8
    sget-object p0, Lu0/d;->b:Ljava/lang/Runnable;

    invoke-static {p0}, Lu0/d;->a3(Ljava/lang/Runnable;)V

    new-array p0, v2, [I

    .line 9
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->t([I)V

    const-string p0, "0x01, 0x00, 0xBE"

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enterSleepWakeup over + time: = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0xbd
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xbe
    .end array-data
.end method

.method public static n1(I)V
    .locals 1

    .line 1
    sget v0, Lu0/b;->K3:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->K3:I

    .line 3
    sget-object p0, Lu0/c;->x:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static n2(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->y4:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p0, Lu0/b;->V:I

    if-nez p0, :cond_1

    .line 3
    invoke-static {v3}, Lu0/d;->n2(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v2}, Lu0/d;->n2(I)V

    goto :goto_0

    :cond_2
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_9

    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_7

    if-eq p0, v1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    sget p0, Lu0/b;->V:I

    if-nez p0, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v2}, Lu0/d;->n2(I)V

    goto :goto_0

    .line 8
    :cond_7
    invoke-static {v3}, Lu0/d;->m2(I)V

    goto :goto_0

    .line 9
    :cond_8
    invoke-static {v2}, Lu0/d;->m2(I)V

    :cond_9
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x51
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x50
    .end array-data
.end method

.method public static declared-synchronized n3(I)V
    .locals 4

    const-class v0, Lu0/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lu0/b;->s4:I

    if-eq v1, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->s4:I

    .line 3
    invoke-static {p0}, Lo1/q0;->H(I)V

    const-string p0, "image"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signalNtscPalToUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->s4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x46

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 5
    sget v3, Lu0/b;->s4:I

    aput v3, v1, v2

    invoke-static {p0, v1}, Lu0/d;->I3(I[I)V

    .line 6
    sget-object p0, Lu0/c;->D:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    .line 7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signalNtscPal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->s4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ln1/b;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static o(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->N0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->N0:I

    const/16 v0, 0x4f

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p0, v2, v1

    .line 3
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static o0()V
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 2
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 3
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 4
    :cond_0
    invoke-static {v2}, Lo1/q0;->y(I)V

    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    :cond_1
    sput v2, Lu0/b;->z3:I

    .line 7
    invoke-static {v1, v2}, Ly0/h;->Y(IZ)V

    .line 8
    sget-object v0, Lg/e;->a:Lg/g;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lchip/Chip;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Lchip/Chip;

    invoke-virtual {v0}, Lchip/Chip;->N()V

    .line 10
    :cond_2
    invoke-static {v2}, Ly0/i;->j(I)V

    .line 11
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lu0/d$e;

    invoke-direct {v1}, Lu0/d$e;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x76
        0xfa
    .end array-data
.end method

.method public static o1(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->a1:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->a1:I

    const/16 v0, 0x63

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static o2(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x7d
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x7e
    .end array-data
.end method

.method public static declared-synchronized o3(I)V
    .locals 5

    const-class v0, Lu0/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lu0/b;->r4:I

    if-eq v1, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->r4:I

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fe1\u53f7\u72b6\u6001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/b;->s(Ljava/lang/String;)V

    const-string v1, "image"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======= >>> signalOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " DataMain.sSignalNtscPal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->s4:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x45

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p0, v3, v4

    .line 5
    invoke-static {v1, v3}, Lu0/d;->I3(I[I)V

    const/16 p0, 0x46

    new-array v1, v2, [I

    .line 6
    sget v2, Lu0/b;->s4:I

    aput v2, v1, v4

    invoke-static {p0, v1}, Lu0/d;->I3(I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static p(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->M0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->M0:I

    const/16 v0, 0x4f

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static p0(I)V
    .locals 3

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-lez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    .line 2
    :cond_1
    :goto_0
    sget v0, Lu0/b;->i0:I

    if-eq v0, p0, :cond_2

    .line 3
    sput p0, Lu0/b;->i0:I

    const/16 v0, 0x38

    new-array v2, v2, [I

    aput p0, v2, v1

    .line 4
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    :cond_2
    return-void
.end method

.method public static p1(I)V
    .locals 2

    const/16 v0, 0xf0

    const/4 v1, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, v1, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array p0, v1, [I

    .line 2
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array p0, v1, [I

    .line 3
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array p0, v1, [I

    .line 4
    fill-array-data p0, :array_3

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array p0, v1, [I

    .line 5
    fill-array-data p0, :array_4

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p0, v1, [I

    .line 6
    fill-array-data p0, :array_5

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p0, v1, [I

    .line 7
    fill-array-data p0, :array_6

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p0, v1, [I

    .line 8
    fill-array-data p0, :array_7

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

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

    :array_0
    .array-data 4
        0x1
        0x5b
        0x70
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x5b
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x5b
        0x50
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x5b
        0x80
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x5b
        0x30
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x5b
        0xc0
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x5b
        0xa0
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x5b
        0xf0
    .end array-data
.end method

.method public static p2(II)V
    .locals 4

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    .line 2
    iget v1, v0, Lu0/i;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p0, :cond_0

    .line 3
    iput p0, v0, Lu0/i;->h:I

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-ltz p1, :cond_1

    .line 4
    iget v1, v0, Lu0/i;->i:I

    if-eq v1, p1, :cond_1

    .line 5
    iput p1, v0, Lu0/i;->i:I

    move p0, v3

    :cond_1
    if-eqz p0, :cond_2

    const/16 p0, 0x7b

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 6
    iget v1, v0, Lu0/i;->h:I

    aput v1, p1, v2

    iget v0, v0, Lu0/i;->i:I

    aput v0, p1, v3

    invoke-static {p0, p1}, Lu0/d;->I3(I[I)V

    :cond_2
    return-void
.end method

.method public static p3(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->J0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->J0:I

    const/16 v0, 0x4c

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x98

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static q(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->x:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->x:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 4
    sget v0, Lu0/b;->w4:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9e

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static q0(I)V
    .locals 4

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Ln0/j4;->d:Ln0/c4;

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ln0/c4;->f3(Z)V

    goto :goto_2

    :cond_1
    const/16 v0, 0xff

    if-gez p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    if-le p0, v0, :cond_3

    move p0, v0

    :cond_3
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v3, 0x7c

    aput v3, v0, v2

    aput p0, v0, v1

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    :goto_2
    return-void
.end method

.method public static q1()V
    .locals 0

    .line 1
    invoke-static {}, Lo1/u;->h()I

    return-void
.end method

.method public static q2(II)V
    .locals 4

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    .line 2
    iget v1, v0, Lu0/i;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-gez p1, :cond_1

    .line 3
    iget p1, v0, Lu0/i;->i:I

    goto :goto_1

    .line 4
    :cond_1
    iget v0, v0, Lu0/i;->i:I

    if-eq p1, v0, :cond_2

    move v1, v3

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xb6

    aput v1, v0, v2

    aput p0, v0, v3

    const/4 p0, 0x2

    .line 5
    invoke-static {p1, p0}, Lo1/s0;->c(II)I

    move-result v1

    aput v1, v0, p0

    const/4 p0, 0x3

    invoke-static {p1, v3}, Lo1/s0;->c(II)I

    move-result v1

    aput v1, v0, p0

    const/4 p0, 0x4

    invoke-static {p1, v2}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v0, p0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_3
    return-void
.end method

.method public static q3(I)V
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lu0/b;->J0:I

    add-int/2addr p0, v0

    and-int/2addr p0, v0

    invoke-static {p0}, Lu0/d;->p3(I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {v0}, Lu0/d;->p3(I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lu0/d;->p3(I)V

    :goto_0
    return-void
.end method

.method public static r(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->w4:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x3

    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    .line 3
    :cond_1
    sget p0, Lu0/b;->x:I

    if-nez p0, :cond_8

    new-array p0, v0, [I

    .line 4
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    .line 5
    :cond_2
    sget p0, Lu0/b;->x:I

    if-eqz p0, :cond_8

    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_8

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    sget p0, Lu0/b;->x:I

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v0

    :goto_0
    invoke-static {v2}, Lu0/d;->r(I)V

    goto :goto_1

    .line 8
    :cond_6
    invoke-static {v2}, Lu0/d;->q(I)V

    goto :goto_1

    .line 9
    :cond_7
    invoke-static {v0}, Lu0/d;->q(I)V

    :cond_8
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x32
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x32
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x32
    .end array-data
.end method

.method public static r0(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lu0/b;->l3:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lu0/b;->l3:Ljava/lang/String;

    .line 3
    sget-object v0, Lu0/c;->w:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0x4a

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4
    sget v2, Lu0/b;->D:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x8

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x0

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v3

    invoke-static {v0, v1, v2, v4}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static r1(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->p0:I

    if-eq v0, p0, :cond_6

    .line 2
    sput p0, Lu0/b;->p0:I

    .line 3
    sget-object v0, Lu0/c;->M:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0x3e

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 4
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    if-ne p0, v1, :cond_6

    .line 5
    invoke-static {}, Lg/e;->m()Z

    move-result p0

    if-nez p0, :cond_5

    sget p0, Ly0/f;->z:I

    if-nez p0, :cond_0

    sget p0, Ly0/f;->C0:I

    sget v0, Ly0/f;->B:I

    if-le p0, v0, :cond_5

    .line 6
    :cond_0
    sget p0, Ly0/f;->B:I

    sput p0, Ly0/f;->f:I

    .line 7
    sget p0, Lu0/b;->D:I

    const/16 v0, 0xf

    if-ne p0, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 8
    :goto_1
    sget p0, Ly0/f;->f:I

    if-eqz v0, :cond_3

    .line 9
    sget p0, Ly0/f;->e:I

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    .line 10
    sget p0, Ly0/f;->d:I

    .line 11
    :cond_4
    :goto_2
    invoke-static {p0}, Ly0/h;->t0(I)V

    .line 12
    :cond_5
    sput-boolean v3, Lo1/i;->o:Z

    :cond_6
    return-void
.end method

.method public static r2(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->R0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->R0:I

    const/16 v0, 0x52

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0xc7

    .line 4
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0, p0}, Lm1/c;->e(II)I

    :cond_0
    return-void
.end method

.method public static r3(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lu0/b;->H1:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lu0/b;->H1:Ljava/lang/String;

    const/16 v0, 0x55

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static s(I)V
    .locals 6

    .line 1
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lh0/c;->G:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move p0, v2

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    iget-boolean v0, v0, Lu0/i;->x:Z

    if-eqz v0, :cond_2

    const/16 p0, 0xf

    goto :goto_0

    .line 4
    :cond_2
    sget-boolean v0, Lu0/b;->D1:Z

    if-nez v0, :cond_3

    const-string v0, "zj.zsender.link.state"

    const/4 v4, -0x1

    invoke-static {v0, v4}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move p0, v3

    .line 5
    :cond_3
    :goto_0
    sget v0, Lu0/b;->D:I

    if-eq v0, p0, :cond_d

    const-string v0, "sys.app_id"

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget v0, Lu0/b;->D:I

    sput v0, Lu0/b;->C:I

    .line 8
    sput p0, Lu0/b;->D:I

    .line 9
    invoke-static {v2, p0}, Lm1/c;->e(II)I

    .line 10
    sget-object v0, Lm1/a;->f:Lo1/g0;

    iget-object v0, v0, Lo1/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 11
    invoke-static {}, Ly0/h;->M()V

    .line 12
    sget v0, Lu0/b;->C:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    sget v0, Lh0/c;->G:I

    if-eq v0, v1, :cond_4

    const/4 v0, 0x7

    .line 13
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->h()V

    :cond_4
    new-array v0, v1, [I

    aput p0, v0, v3

    .line 15
    invoke-static {v3, v0}, Lu0/d;->I3(I[I)V

    .line 16
    sget-object v0, Lu0/b;->M2:Lo1/w;

    invoke-virtual {v0, p0}, Lo1/w;->d(I)V

    .line 17
    sget-object v0, Lu0/c;->a:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    if-ne p0, v1, :cond_5

    .line 18
    sget v0, Lw0/d;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 19
    sget-boolean v0, Lu0/b;->D3:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    .line 20
    invoke-static {v0}, La/i;->K(I)V

    .line 21
    sget-object v0, Lu0/b;->B3:Ljava/lang/String;

    invoke-static {v0}, La/i;->C(Ljava/lang/String;)V

    .line 22
    sput-boolean v3, Lu0/b;->D3:Z

    .line 23
    sget-object v0, Lu0/b;->c:Lu0/h;

    instance-of v1, v0, Lu0/a;

    if-eqz v1, :cond_5

    .line 24
    check-cast v0, Lu0/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu0/a;->i(Ljava/lang/String;)V

    .line 25
    :cond_5
    sget-object v0, Lu0/d;->g:Ljava/lang/Runnable;

    monitor-enter v0

    .line 26
    :try_start_0
    sget v1, Lu0/b;->g4:I

    if-nez v1, :cond_6

    .line 27
    sput v3, Lu0/b;->H3:I

    goto :goto_2

    .line 28
    :cond_6
    sget v1, Ly0/f;->a:I

    if-ne v1, v2, :cond_7

    .line 29
    sput v3, Lu0/b;->H3:I

    goto :goto_2

    :cond_7
    const/4 v1, 0x5

    .line 30
    invoke-static {v1}, Lg/f;->f(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 31
    sget p0, Lu0/b;->H3:I

    sget v1, Lu0/b;->I3:I

    if-ge p0, v1, :cond_b

    .line 32
    sput v1, Lu0/b;->H3:I

    goto :goto_2

    :cond_8
    const/16 v1, 0xc

    if-eq p0, v1, :cond_a

    const/16 v1, 0x10

    if-ne p0, v1, :cond_9

    goto :goto_1

    .line 33
    :cond_9
    sget p0, Lu0/b;->I3:I

    sput p0, Lu0/b;->H3:I

    goto :goto_2

    .line 34
    :cond_a
    :goto_1
    sput v3, Lu0/b;->H3:I

    .line 35
    :cond_b
    :goto_2
    sget p0, Lu0/b;->C:I

    sget v1, Lu0/b;->D:I

    invoke-static {p0, v1}, Lu0/d;->C0(II)V

    .line 36
    sget-object p0, Lu0/d;->f:Lo1/k0;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lo1/k0;->c(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const-wide/16 v1, 0xc8

    .line 37
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 38
    :cond_c
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_d
    :goto_3
    return-void
.end method

.method public static s0()I
    .locals 3

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    const-string v1, "US"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "CN"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_1
    const-string v1, "TW"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    goto/16 :goto_1

    :cond_2
    const-string v1, "TR"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    goto/16 :goto_1

    :cond_3
    const-string v1, "IT"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_4
    const-string v1, "FR"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    goto/16 :goto_1

    :cond_5
    const-string v1, "DE"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    goto/16 :goto_1

    :cond_6
    const-string v1, "ES"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    goto/16 :goto_1

    :cond_7
    const-string v1, "JP"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    goto/16 :goto_1

    :cond_8
    const-string v1, "KR"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    goto/16 :goto_1

    :cond_9
    const-string v1, "PL"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    goto/16 :goto_1

    :cond_a
    const-string v1, "RU"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "KG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "BY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "KZ"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "MD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "UA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    :cond_b
    const-string v1, "SE"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    goto :goto_1

    :cond_c
    const-string v1, "PT"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    goto :goto_1

    :cond_d
    const-string v1, "NO"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    goto :goto_1

    :cond_e
    const-string v1, "FI"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    goto :goto_1

    :cond_f
    const-string v1, "DK"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    goto :goto_1

    :cond_10
    const-string v1, "AR"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    goto :goto_1

    :cond_11
    const-string v1, "NL"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v2, 0x12

    goto :goto_1

    :cond_12
    :goto_0
    const/16 v2, 0xb

    :cond_13
    :goto_1
    return v2
.end method

.method public static s1(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Lu0/b;->O2:Landroid/util/SparseIntArray;

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x2e

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1, v1, v1}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x75
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x75
        0x2
    .end array-data
.end method

.method public static s2(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    sget p0, Lu0/b;->R0:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lu0/d;->s2(I)V

    goto :goto_1

    :cond_2
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0xc
        0x9
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x9
        0x1
    .end array-data
.end method

.method public static s3(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lu0/b;->G1:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lu0/b;->G1:Ljava/lang/String;

    const/16 v0, 0x54

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static t(Ly/b;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Lu0/b;->P0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lbase/b;->L2()Lo1/x;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x27

    .line 3
    sget-object v3, La/b;->Z:Ljava/lang/String;

    invoke-virtual {v0, p0, v2, v1, v3}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    .line 4
    :cond_1
    invoke-static {p0}, Ld1/f;->i(Ly/b;)V

    .line 5
    invoke-static {p0}, Lo0/g;->W(Ly/b;)V

    .line 6
    invoke-static {p0}, Lk0/qt;->E(Ly/b;)V

    return-void
.end method

.method public static t0()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t1()V
    .locals 3

    .line 1
    invoke-static {}, Lo1/u;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo1/u;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lo1/u;->J()I

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Ly0/f;->a0:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    notify   101  >>>>>>>>>>>>>>>>>>>>>>>>>>>  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "c32107"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v0}, Ly0/i;->j(I)V

    :goto_0
    return-void
.end method

.method public static t2(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->b0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->b0:I

    const/16 v0, 0x33

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static t3(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->h:I

    if-eq v0, p0, :cond_3

    .line 2
    sput p0, Lu0/b;->h:I

    const/4 v0, -0x1

    .line 3
    sput v0, Lu0/b;->i:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCU TO UI --------->>>>  DataMain.sStandby = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  DataMain.requestStandby = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataMain.sStandbyAndMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lu0/b;->W3:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 5
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 6
    sget-object p0, Lu0/c;->k:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    .line 7
    sget-boolean p0, Lu0/b;->W3:Z

    if-eqz p0, :cond_3

    .line 8
    sget p0, Ly0/f;->i:I

    const/16 v0, 0x40

    if-eq p0, v1, :cond_1

    .line 9
    sget p0, Lu0/b;->h:I

    if-ne p0, v1, :cond_0

    move v3, v1

    :cond_0
    invoke-static {v0, v3}, Ly0/h;->Y(IZ)V

    .line 10
    sput-boolean v1, Lu0/d;->h:Z

    goto :goto_1

    .line 11
    :cond_1
    sget p0, Lu0/b;->h:I

    if-nez p0, :cond_3

    sget-boolean v2, Lu0/d;->h:Z

    if-eqz v2, :cond_3

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ly0/h;->Y(IZ)V

    .line 13
    sput-boolean v3, Lu0/d;->h:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static u()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0xaa
        0x71
    .end array-data
.end method

.method public static u0()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->d2:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 2
    sput v0, Lu0/b;->d2:I

    return-void

    .line 3
    :cond_0
    sget-boolean v0, Lu0/b;->C3:Z

    if-eqz v0, :cond_6

    sget v0, Lu0/b;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lu0/b;->C3:Z

    .line 5
    sget-object v2, Lu0/b;->A3:Ljava/lang/String;

    const-string v3, "com.syu.carlink"

    invoke-static {v3, v2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3}, Lo1/s0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Car Link"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 6
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goto DataMain.sTopAppWhenMcuOff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lu0/b;->A3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mJumpAppId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/d;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  oldCarlink : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qin"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lo1/q0;->u()I

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 9
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v1, Lu0/d$g;

    invoke-direct {v1}, Lu0/d$g;-><init>()V

    sget v2, Lu0/b;->v3:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lo1/u;->u()I

    const-string v0, "\u8df3\u5230\u6821\u51c6\u754c\u9762 "

    .line 11
    invoke-static {v0}, Lo1/b0;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string v0, "ro.build.go_lasttop"

    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lu0/b;->E3:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lu0/b;->F3:Z

    if-nez v0, :cond_4

    .line 13
    invoke-static {}, Lu0/d;->Z2()V

    .line 14
    :cond_4
    sget v0, Lu0/b;->A:I

    if-nez v0, :cond_5

    .line 15
    sput v1, Lu0/b;->A:I

    .line 16
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    sget-object v2, Lu0/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    :cond_5
    sput-boolean v1, Lu0/b;->E3:Z

    :cond_6
    return-void
.end method

.method public static u1()V
    .locals 2

    .line 1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    return-void
.end method

.method public static u2(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static declared-synchronized u3(I)V
    .locals 7

    const-class v0, Lu0/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lh0/c;->G:I

    if-eqz v1, :cond_0

    sget v1, Lu0/b;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v1, Lu0/b;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p0, v3, :cond_3

    .line 3
    :try_start_2
    sget p0, Lu0/b;->h:I

    if-ne p0, v2, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1

    .line 4
    :cond_3
    sget v5, Lu0/b;->h:I

    if-eq v5, p0, :cond_5

    if-ne p0, v2, :cond_4

    goto :goto_0

    :cond_4
    move p0, v4

    :goto_0
    move v1, p0

    .line 5
    :cond_5
    :goto_1
    sget p0, Lu0/b;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, p0, :cond_6

    monitor-exit v0

    return-void

    .line 6
    :cond_6
    :try_start_3
    sput v1, Lu0/b;->i:I

    const-string p0, "Qin"

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UI TO MCU --------->>>>  DataMain.sStandby = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lu0/b;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  DataMain.requestStandby = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lu0/b;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  DataMain.sBlackstanby : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lu0/b;->j1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget p0, Lu0/b;->P3:I

    if-ne p0, v2, :cond_7

    .line 9
    invoke-static {v1}, Lu0/d;->t3(I)V

    goto :goto_2

    .line 10
    :cond_7
    sget p0, Lu0/b;->j1:I

    if-ne p0, v2, :cond_8

    .line 11
    invoke-static {v4}, Lu0/d;->j3(I)V

    goto :goto_2

    :cond_8
    const/4 p0, 0x3

    new-array p0, p0, [I

    aput v2, p0, v4

    aput v4, p0, v2

    const/16 v1, 0x1c

    aput v1, p0, v3

    .line 12
    invoke-static {p0}, Lz/k;->s([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static v(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==========>>> armSleepWakeup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->n4:I

    const-string v1, "0"

    if-eq v0, p0, :cond_3

    .line 3
    sput p0, Lu0/b;->n4:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    .line 4
    invoke-static {}, Lg/e;->a()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    sget v3, Le1/a;->a:I

    if-ne v3, v4, :cond_0

    const-string v3, "sys.car.reverse"

    .line 5
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_32_get_boot_reverse_status()I

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    .line 8
    sput-boolean v2, Le1/q;->n:Z

    .line 9
    sput-boolean v0, Le1/q;->k:Z

    .line 10
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v3

    if-ne v3, v4, :cond_1

    sget v3, Le1/a;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 11
    invoke-static {}, Le1/o;->j()V

    .line 12
    :cond_1
    invoke-static {}, Ly0/h;->y()V

    const-string v3, "android.intent.action.ACTION_MT_COMMAND_SLEEP_OUT"

    .line 13
    invoke-static {v3}, Lo1/u;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    sput v0, Lu0/b;->A:I

    .line 15
    sget-object v3, Lu0/b;->A3:Ljava/lang/String;

    invoke-static {v2, v3}, Lm1/c;->f(ILjava/lang/String;)V

    const/4 v3, 0x2

    .line 16
    sget v4, Lu0/b;->D:I

    invoke-static {v3, v4}, Lm1/c;->e(II)I

    const-string v3, "android.intent.action.ACTION_MT_COMMAND_SLEEP_IN"

    .line 17
    invoke-static {v3}, Lo1/u;->l(Ljava/lang/String;)V

    :goto_0
    const/16 v3, 0x2b

    new-array v2, v2, [I

    aput p0, v2, v0

    .line 18
    invoke-static {v3, v2}, Lu0/d;->I3(I[I)V

    .line 19
    sget-object v0, Lu0/c;->h:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    :cond_3
    if-nez p0, :cond_4

    const-string v1, "1"

    :cond_4
    const-string p0, "sys.sleep"

    .line 20
    invoke-static {p0, v1}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v0(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->X1:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->X1:I

    .line 3
    sget-object v0, Lo1/h;->b:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0x65

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 4
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static v1()V
    .locals 2

    .line 1
    invoke-static {}, Lo1/u;->n0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lw0/d;->b:Lw0/g;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lw0/g;->x(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lo1/u;->x0()V

    :goto_0
    return-void
.end method

.method public static v2(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->q0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->q0:I

    const/16 v0, 0x3f

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static v3(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStopEnable value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCU"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->U0:I

    if-eq v0, p0, :cond_0

    .line 3
    sput p0, Lu0/b;->U0:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/16 v1, 0x58

    .line 4
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    .line 5
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lbase/b;->T2(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static w(I)V
    .locals 6

    .line 1
    sget v0, Lu0/b;->l1:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lu0/b;->l1:I

    const/16 v0, 0xb

    const/16 v1, 0xd

    const/16 v2, 0xc

    if-nez p0, :cond_0

    .line 3
    sget-object v3, Ly0/b;->b:[I

    const/4 v4, 0x5

    aget v5, v3, v4

    aput v5, v3, v2

    .line 4
    aget v2, v3, v4

    aput v2, v3, v1

    .line 5
    aget v1, v3, v4

    aput v1, v3, v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v3, Ly0/b;->b:[I

    const/4 v4, 0x7

    aget v5, v3, v4

    aput v5, v3, v2

    .line 7
    aget v2, v3, v4

    aput v2, v3, v1

    .line 8
    aget v1, v3, v4

    aput v1, v3, v0

    :goto_0
    const/16 v0, 0x70

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 9
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0xc4

    .line 10
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    .line 11
    sget-object p0, Lu0/c;->H:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_1
    return-void
.end method

.method public static w0(II)V
    .locals 3

    if-ltz p0, :cond_1

    const/16 v0, 0x22

    if-ge p0, v0, :cond_1

    .line 1
    sget-object v0, Le/d;->a:[I

    aget v1, v0, p0

    if-eq v1, p1, :cond_0

    .line 2
    aput p1, v0, p0

    const/16 v0, 0x40

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object v0, Lm1/a;->f:Lo1/g0;

    add-int/lit16 v1, p0, 0x153

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p1, 0x21

    if-ne p0, p1, :cond_1

    .line 5
    invoke-static {}, Le/d;->a()V

    :cond_1
    return-void
.end method

.method public static w1()V
    .locals 2

    .line 1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    return-void
.end method

.method public static w2(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->g0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->g0:I

    const/16 v0, 0x37

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public static w3(I)V
    .locals 4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v0, [I

    const/16 v0, 0xc

    const/4 v3, 0x0

    aput v0, p0, v3

    const/16 v0, 0xb

    aput v0, p0, v1

    .line 1
    sget v0, Lu0/b;->U0:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    aput v1, p0, v2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0xb
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xc
        0xb
        0x0
    .end array-data
.end method

.method public static x(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->R:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->T:I

    .line 3
    sput p0, Lu0/b;->R:I

    const/16 v0, 0x24

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 4
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x8c

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static x0(I)V
    .locals 5

    const-string v0, "handbrake_status"

    .line 1
    sget v1, Lu0/b;->l:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move p0, v2

    .line 2
    :cond_0
    sget v1, Lu0/b;->k:I

    if-eq v1, p0, :cond_1

    .line 3
    sput p0, Lu0/b;->k:I

    const/4 v1, 0x7

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p0, v3, v4

    .line 4
    invoke-static {v1, v3}, Lu0/d;->I3(I[I)V

    .line 5
    sget-object v1, Lu0/c;->B:Lo1/y;

    invoke-virtual {v1}, Lo1/y;->c()V

    .line 6
    sget-object v1, Lbase/Configure$Property;->X:Lbase/Configure$Property;

    invoke-virtual {v1, v4}, Lbase/Configure$Property;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.handbrake"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    .line 8
    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 10
    :cond_1
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p0, :cond_2

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static x1()V
    .locals 6

    .line 1
    sget-object v0, Lu0/b;->b3:Lo1/o;

    if-nez v0, :cond_3

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->l()V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->V()V

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->i()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static x2(I)V
    .locals 4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v0, [I

    const/16 v0, 0xc

    const/4 v3, 0x0

    aput v0, p0, v3

    const/4 v0, 0x5

    aput v0, p0, v1

    .line 1
    sget v0, Lu0/b;->g0:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    aput v1, p0, v2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0xc
        0x5
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x5
        0x0
    .end array-data
.end method

.method public static x3(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->p1:I

    if-eq v0, p0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 2
    :goto_0
    sput p0, Lu0/b;->p1:I

    const/16 v2, 0x75

    new-array v0, v0, [I

    aput p0, v0, v1

    .line 3
    invoke-static {v2, v0}, Lu0/d;->I3(I[I)V

    const/16 p0, 0x17f

    .line 4
    sget v0, Lu0/b;->p1:I

    invoke-static {p0, v0}, Lm1/c;->e(II)I

    :cond_1
    return-void
.end method

.method public static y(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lu0/d;->x(I)V

    return-void
.end method

.method public static y0(I)V
    .locals 5

    const-string v0, "handbrake_enable_status"

    .line 1
    sget v1, Lu0/b;->m:I

    const/4 v2, 0x0

    if-eq v1, p0, :cond_2

    .line 2
    sput p0, Lu0/b;->m:I

    const/16 v1, 0x8

    const/4 v3, 0x1

    new-array v4, v3, [I

    aput p0, v4, v2

    .line 3
    invoke-static {v1, v4}, Lu0/d;->I3(I[I)V

    .line 4
    sget v1, Lu0/b;->x4:I

    if-ne v1, v3, :cond_0

    const/16 v1, 0x9f

    .line 5
    invoke-static {v1, p0}, Lm1/c;->g(II)V

    .line 6
    :cond_0
    sget-object v1, Lu0/c;->C:Lo1/y;

    invoke-virtual {v1}, Lo1/y;->c()V

    .line 7
    sget-object v1, Lbase/Configure$Property;->X:Lbase/Configure$Property;

    invoke-virtual {v1, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v1

    if-nez v1, :cond_1

    move p0, v2

    .line 8
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.handbrake_enable"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    .line 9
    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 11
    :cond_2
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p0, :cond_3

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static y1()V
    .locals 6

    .line 1
    sget-object v0, Lu0/b;->Z2:Lo1/o;

    if-nez v0, :cond_4

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/16 v2, 0x25

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {v0}, La/i;->M(I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v2, v0}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 5
    :pswitch_2
    sget v0, Lu0/b;->S3:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 6
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v2, v0}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->p()V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->p()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x9
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x1
    .end array-data
.end method

.method public static y2([I[F[Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_8

    .line 1
    array-length p1, p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    .line 2
    aget p1, p0, v0

    const/16 v1, 0x4a

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v2, :cond_2

    array-length p1, p0

    if-lt p1, v2, :cond_2

    .line 3
    aget p1, p0, v3

    const/16 v5, 0x8

    if-eq p1, v5, :cond_1

    const/16 v5, 0x9

    if-eq p1, v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lu0/b;->V1:I

    aget v5, p0, v4

    if-eq p1, v5, :cond_2

    .line 5
    aget p1, p0, v4

    sput p1, Lu0/b;->V1:I

    new-array p1, v4, [I

    .line 6
    aget v5, p0, v3

    aput v5, p1, v3

    aget v5, p0, v4

    aput v5, p1, v0

    invoke-static {v1, p1}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 7
    :cond_1
    sget p1, Lu0/b;->U1:I

    aget v5, p0, v4

    if-eq p1, v5, :cond_2

    .line 8
    aget p1, p0, v4

    sput p1, Lu0/b;->U1:I

    new-array p1, v4, [I

    .line 9
    aget v5, p0, v3

    aput v5, p1, v3

    aget v5, p0, v4

    aput v5, p1, v0

    invoke-static {v1, p1}, Lu0/d;->I3(I[I)V

    .line 10
    :cond_2
    :goto_0
    aget p1, p0, v3

    sget v5, Lu0/b;->D:I

    if-eq p1, v5, :cond_3

    return-void

    .line 11
    :cond_3
    aget p1, p0, v0

    const/4 v5, 0x4

    const-string v6, ""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p1, 0x0

    .line 12
    invoke-static {v1, p0, p1, p2}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 13
    :pswitch_1
    array-length p1, p0

    if-lt p1, v2, :cond_8

    aget p0, p0, v4

    invoke-static {p0}, Lu0/d;->c2(I)V

    goto/16 :goto_1

    .line 14
    :pswitch_2
    array-length p1, p0

    if-lt p1, v2, :cond_8

    aget p0, p0, v4

    invoke-static {p0}, Lu0/d;->j0(I)V

    goto/16 :goto_1

    :pswitch_3
    if-eqz p2, :cond_8

    .line 15
    array-length p0, p2

    if-lt p0, v0, :cond_8

    aget-object p0, p2, v3

    invoke-static {p0}, Lu0/d;->r0(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :pswitch_4
    array-length p1, p0

    if-lt p1, v2, :cond_8

    aget p0, p0, v4

    invoke-static {p0}, Lu0/d;->W2(I)V

    goto :goto_1

    .line 17
    :pswitch_5
    array-length p1, p0

    if-lt p1, v2, :cond_8

    aget p0, p0, v4

    invoke-static {p0}, Lu0/d;->b3(I)V

    goto :goto_1

    .line 18
    :pswitch_6
    array-length p1, p0

    if-lt p1, v5, :cond_8

    aget p1, p0, v4

    aget p0, p0, v2

    invoke-static {p1, p0}, Lu0/d;->A2(II)V

    goto :goto_1

    .line 19
    :pswitch_7
    array-length p1, p0

    if-lt p1, v5, :cond_8

    aget p1, p0, v4

    aget p0, p0, v2

    invoke-static {p1, p0}, Lu0/d;->B2(II)V

    goto :goto_1

    .line 20
    :pswitch_8
    array-length p1, p0

    if-lt p1, v2, :cond_8

    aget p0, p0, v4

    invoke-static {p0}, Lu0/d;->z2(I)V

    goto :goto_1

    :pswitch_9
    if-eqz p2, :cond_5

    .line 21
    array-length p0, p2

    if-lt p0, v0, :cond_5

    .line 22
    aget-object p0, p2, v3

    array-length p1, p2

    if-lt p1, v4, :cond_4

    aget-object v6, p2, v0

    :cond_4
    invoke-static {p0, v6}, Lu0/d;->J0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_5
    invoke-static {v6, v6}, Lu0/d;->J0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_a
    if-eqz p2, :cond_6

    .line 24
    array-length p0, p2

    if-lt p0, v0, :cond_6

    .line 25
    aget-object p0, p2, v3

    invoke-static {p0}, Lu0/d;->K0(Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_6
    invoke-static {v6}, Lu0/d;->K0(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_b
    if-eqz p2, :cond_7

    .line 27
    array-length p0, p2

    if-lt p0, v0, :cond_7

    .line 28
    aget-object p0, p2, v3

    invoke-static {p0}, Lu0/d;->L0(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_7
    invoke-static {v6}, Lu0/d;->L0(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static y3(I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->I2:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->I2:I

    const/16 v0, 0x29

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object p0, Lu0/c;->I:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static z(I)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->F0:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lu0/b;->F0:I

    .line 3
    sget-object v0, La/b;->s:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lu0/d;->m0(Ljava/lang/String;Z)V

    const/16 v0, 0x49

    new-array v2, v2, [I

    aput p0, v2, v1

    .line 4
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x96

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_1
    return-void
.end method

.method public static z0(I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------->>>  value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataMain.sHandbrakeEnableType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->x4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handbrake"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->x4:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_4

    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget p0, Lu0/b;->m:I

    if-nez p0, :cond_1

    .line 4
    invoke-static {v4}, Lu0/d;->z0(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v2}, Lu0/d;->z0(I)V

    goto :goto_0

    :cond_2
    new-array p0, v3, [I

    .line 6
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v3, [I

    .line 7
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_9

    if-eqz p0, :cond_8

    if-eq p0, v4, :cond_7

    if-eq p0, v1, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    sget p0, Lu0/b;->m:I

    if-nez p0, :cond_6

    move v2, v4

    :cond_6
    invoke-static {v2}, Lu0/d;->z0(I)V

    goto :goto_0

    .line 9
    :cond_7
    invoke-static {v4}, Lu0/d;->y0(I)V

    new-array p0, v3, [I

    .line 10
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_8
    new-array p0, v3, [I

    .line 11
    fill-array-data p0, :array_3

    invoke-static {p0}, Lz/k;->s([I)V

    .line 12
    invoke-static {v2}, Lu0/d;->y0(I)V

    :cond_9
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x43
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x42
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x43
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x42
    .end array-data
.end method

.method public static z1()V
    .locals 0

    return-void
.end method

.method public static z2(I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->m3:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lu0/b;->m3:I

    .line 3
    sget-object v0, Lu0/c;->r:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0x4a

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 4
    sget v4, Lu0/b;->D:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x2

    aput p0, v2, v1

    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 5
    sget p0, Lu0/b;->D:I

    :cond_0
    return-void
.end method

.method public static z3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "sys."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
