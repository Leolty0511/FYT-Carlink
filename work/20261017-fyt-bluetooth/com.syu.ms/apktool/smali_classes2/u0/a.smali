.class public Lu0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/h;


# static fields
.field public static final h:[I


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Ljava/lang/Runnable;

.field public c:J

.field public final d:Ljava/lang/Object;

.field public e:I

.field public volatile f:I

.field public final g:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lu0/a;->h:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    sget-object v2, Lu0/a;->h:[I

    const/16 v3, 0x1b

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lu0/a;->h()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lu0/a$a;

    invoke-direct {v0, p0}, Lu0/a$a;-><init>(Lu0/a;)V

    iput-object v0, p0, Lu0/a;->a:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lu0/a$b;

    invoke-direct {v0, p0}, Lu0/a$b;-><init>(Lu0/a;)V

    iput-object v0, p0, Lu0/a;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    .line 4
    iput-wide v0, p0, Lu0/a;->c:J

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu0/a;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lu0/a;->e:I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lu0/a;->f:I

    .line 8
    new-instance v0, Lu0/a$c;

    invoke-direct {v0, p0}, Lu0/a$c;-><init>(Lu0/a;)V

    iput-object v0, p0, Lu0/a;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic d(Lu0/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lu0/a;->e:I

    return p0
.end method

.method public static synthetic e(Lu0/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lu0/a;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lu0/a;->e:I

    return v0
.end method

.method public static synthetic f(Lu0/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lu0/a;->f:I

    return p0
.end method

.method public static h()V
    .locals 5

    .line 1
    sget-object v0, Lu0/a;->h:[I

    const/4 v1, 0x1

    const/16 v2, 0x12

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x17

    .line 2
    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x19

    .line 3
    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x10

    .line 4
    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v3, 0x15

    .line 5
    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v3, 0x11

    .line 6
    aput v3, v0, v1

    const/4 v1, 0x7

    const/16 v4, 0x18

    .line 7
    aput v4, v0, v1

    const/16 v1, 0x8

    const/16 v4, 0x1a

    .line 8
    aput v4, v0, v1

    const/16 v1, 0x9

    const/16 v4, 0x28

    .line 9
    aput v4, v0, v1

    const/16 v1, 0xa

    const/16 v4, 0x29

    .line 10
    aput v4, v0, v1

    const/16 v1, 0xb

    const/16 v4, 0x23

    .line 11
    aput v4, v0, v1

    const/16 v1, 0xc

    const/16 v4, 0x24

    .line 12
    aput v4, v0, v1

    const/16 v1, 0xd

    const/16 v4, 0x25

    .line 13
    aput v4, v0, v1

    const/16 v1, 0xe

    const/16 v4, 0x27

    .line 14
    aput v4, v0, v1

    const/16 v1, 0xf

    const/16 v4, 0x2a

    .line 15
    aput v4, v0, v1

    const/16 v1, 0x2b

    .line 16
    aput v1, v0, v2

    const/16 v1, 0x2c

    .line 17
    aput v1, v0, v3

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lu0/a;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 2
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lu0/a;->b:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lu0/a;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lu0/a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)V
    .locals 9

    const-string v0, "Qin"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========>>>> to Appid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Qin"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========>>>> Appid DataBt.sPhoneWork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lh0/c;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " DataBt.weCatState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lh0/c;->m0:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " DataBt.phoneVoice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lh0/c;->U:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lu0/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "syu.bt.show.pip"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 5
    sget v3, Lh0/c;->G:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    sget-boolean v3, Lh0/c;->m0:Z

    if-nez v3, :cond_1

    sget v3, Lh0/c;->U:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    .line 6
    :goto_1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v5

    iget-boolean v5, v5, Lu0/i;->x:Z

    const/16 v6, 0xa

    if-nez v5, :cond_2

    if-nez v3, :cond_2

    sget v5, Lu0/b;->D:I

    if-ne v5, v6, :cond_2

    if-eq p1, v5, :cond_2

    sget-boolean v5, Lu0/b;->D3:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    const/4 v5, 0x2

    if-eqz v3, :cond_3

    move p1, v5

    goto :goto_3

    .line 7
    :cond_3
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    iget-boolean v3, v3, Lu0/i;->x:Z

    if-eqz v3, :cond_4

    const/16 p1, 0xf

    .line 8
    :cond_4
    :goto_3
    sput p1, Lu0/b;->F:I

    .line 9
    sget v3, Lu0/b;->f:I

    if-eqz v3, :cond_b

    sget v3, Lu0/b;->a0:I

    if-eqz v3, :cond_b

    sget v3, Lu0/b;->P3:I

    if-nez v3, :cond_5

    sget v3, Lu0/b;->h:I

    if-eqz v3, :cond_5

    goto/16 :goto_6

    .line 10
    :cond_5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CmdMain appId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  last : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lu0/b;->C:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ln1/b;->s(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez v1, :cond_6

    if-eqz v4, :cond_6

    .line 11
    invoke-static {v6}, La/i;->K(I)V

    .line 12
    sget-object v1, Lu0/b;->B3:Ljava/lang/String;

    invoke-static {v1}, La/i;->C(Ljava/lang/String;)V

    .line 13
    sput-boolean v2, Lu0/b;->D3:Z

    .line 14
    sget-object v1, Lu0/b;->c:Lu0/h;

    instance-of v2, v1, Lu0/a;

    if-eqz v2, :cond_7

    .line 15
    check-cast v1, Lu0/a;

    invoke-virtual {v1, v3}, Lu0/a;->i(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    if-ne p1, v6, :cond_7

    const-string v1, "syu.bt.show.pip"

    const-string v2, "false"

    .line 16
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    const/4 v1, -0x1

    if-ne p1, v1, :cond_8

    .line 17
    sget v1, Lu0/b;->C:I

    if-eq p1, v1, :cond_a

    .line 18
    invoke-virtual {p0, v1}, Lu0/a;->c(I)V

    goto :goto_5

    :cond_8
    if-ltz p1, :cond_a

    const/16 v1, 0x14

    if-ge p1, v1, :cond_a

    .line 19
    invoke-static {p1}, Lu0/d;->s(I)V

    .line 20
    sget v1, Lu0/b;->D:I

    if-ne v1, v5, :cond_9

    if-eq p1, v1, :cond_9

    .line 21
    sput-object v3, Lu0/b;->x3:Ljava/lang/Runnable;

    :cond_9
    const-string v1, "Qin"

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------------UI Change AppId to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0, p1}, Lu0/a;->g(I)V

    const-wide/16 v1, 0xc8

    .line 24
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 25
    sget-object v1, Ly0/f;->b:Ly0/e;

    invoke-virtual {v1, p1}, Ly0/e;->a(I)V

    .line 26
    sget-object v1, Lu0/c;->b:Lo1/z;

    invoke-virtual {v1}, Lo1/z;->b()I

    move-result v2

    if-lez v2, :cond_a

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 28
    :cond_a
    :goto_5
    monitor-exit v0

    return-void

    .line 29
    :cond_b
    :goto_6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5207\u6362\u901a\u9053\u6761\u4ef6\u4e0d\u6ee1\u8db3\uff0c\u8fd4\u56de\uff01\uff01\uff01DataMain.sMcuOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " DataMain.sAccOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->a0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g(I)V
    .locals 4

    .line 1
    sget-object v0, Lu0/a;->h:[I

    aget p1, v0, p1

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->v4:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lu0/a;->g:Ljava/lang/Runnable;

    monitor-enter v0

    .line 5
    :try_start_0
    iput p1, p0, Lu0/a;->f:I

    const/4 p1, 0x5

    .line 6
    iput p1, p0, Lu0/a;->e:I

    .line 7
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget-object v1, p0, Lu0/a;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget-object v1, p0, Lu0/a;->g:Ljava/lang/Runnable;

    iget-wide v2, p0, Lu0/a;->c:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, La/i;->v(Ljava/lang/String;)Z

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
    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-static {p1}, La/i;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    sput-object p1, Lu0/b;->B3:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 5
    sput-object p1, Lu0/b;->B3:Ljava/lang/String;

    const-string p1, ""

    :cond_4
    :goto_2
    const-string v0, "persist.sys.syu.thirdplayer"

    .line 6
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.syu.carlink"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "sys.carlink.type"

    const-string v0, "0"

    .line 8
    invoke-static {p1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
