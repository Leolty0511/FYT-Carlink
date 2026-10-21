.class public Li1/b0;
.super Lb/c$b;
.source "SourceFile"

# interfaces
.implements Lb/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/b0$a;,
        Li1/b0$b;
    }
.end annotation


# instance fields
.field public i:Li1/b0$a;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Object;

.field public l:Z


# direct methods
.method public constructor <init>(Lb/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c$b;-><init>(Lb/c;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Li1/b0;->j:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/b0;->k:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Li1/b0;->l:Z

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Li1/b0;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li1/b0;->i:Li1/b0$a;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v1, p1}, Li1/b0$a;->c([B)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(Ljava/lang/String;I)Li1/b0$a;
    .locals 2

    const-string p2, "TrackPlugin"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "RadarPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "EngineMode"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    new-instance p2, Li1/b;

    const/16 v0, 0x15

    const/16 v1, 0x14

    invoke-direct {p2, v0, v1}, Li1/b;-><init>(II)V

    goto/16 :goto_1

    :cond_1
    const-string p2, "LeiShenDsp"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x13

    if-eqz p2, :cond_2

    .line 5
    new-instance p2, Li1/t;

    invoke-direct {p2, v0, v0}, Li1/t;-><init>(II)V

    goto/16 :goto_1

    :cond_2
    const-string p2, "OroTpms"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    new-instance p2, Li1/i;

    invoke-direct {p2, v0, v0}, Li1/i;-><init>(II)V

    goto/16 :goto_1

    :cond_3
    const-string p2, "Accelerator"

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    new-instance p2, Li1/j;

    sget-object v1, Li1/j$b;->i:[I

    invoke-direct {p2, v0, v0, v1}, Li1/j;-><init>(II[I)V

    goto/16 :goto_1

    :cond_4
    const-string p2, "Accelerator3B"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 11
    new-instance p2, Li1/j;

    sget-object v1, Li1/j$b;->j:[I

    invoke-direct {p2, v0, v0, v1}, Li1/j;-><init>(II[I)V

    goto/16 :goto_1

    :cond_5
    const-string p2, "XZhanRadar"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 13
    new-instance p2, Li1/y;

    invoke-direct {p2, v0, v0}, Li1/y;-><init>(II)V

    goto/16 :goto_1

    :cond_6
    const-string p2, "Common360_817"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 15
    new-instance p2, Li1/n;

    invoke-direct {p2, v0, v0}, Li1/n;-><init>(II)V

    goto/16 :goto_1

    :cond_7
    const-string p2, "Common_XZMGuiji"

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 17
    new-instance p2, Li1/q;

    invoke-direct {p2, v0, v0}, Li1/q;-><init>(II)V

    goto/16 :goto_1

    :cond_8
    const-string p2, "Common_WCGuiji"

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 19
    new-instance p2, Li1/p;

    invoke-direct {p2, v0, v0}, Li1/p;-><init>(II)V

    goto/16 :goto_1

    :cond_9
    const-string p2, "Common_jjkkBbutton"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 21
    new-instance p2, Li1/o;

    invoke-direct {p2, v0, v0}, Li1/o;-><init>(II)V

    goto/16 :goto_1

    :cond_a
    const-string p2, "RadarTianCheng"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 23
    new-instance p2, Li1/u;

    invoke-direct {p2, v0, v0}, Li1/u;-><init>(II)V

    goto/16 :goto_1

    :cond_b
    const-string p2, "PluginWLLeds"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 25
    new-instance p2, Li1/x;

    invoke-direct {p2, v0, v0}, Li1/x;-><init>(II)V

    goto/16 :goto_1

    :cond_c
    const-string p2, "SnnavLed"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 27
    new-instance p2, Li1/c0;

    invoke-direct {p2, v0, v0}, Li1/c0;-><init>(II)V

    goto/16 :goto_1

    :cond_d
    const-string p2, "RaiseLeds"

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 29
    new-instance p2, Li1/a0;

    invoke-direct {p2, v0, v0}, Li1/a0;-><init>(II)V

    goto/16 :goto_1

    :cond_e
    const-string p2, "RadarXiaoFD"

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 31
    new-instance p2, Li1/v;

    invoke-direct {p2, v0, v0}, Li1/v;-><init>(II)V

    goto/16 :goto_1

    :cond_f
    const-string p2, "BBApannel"

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 33
    new-instance p2, Li1/l;

    invoke-direct {p2, v0, v0}, Li1/l;-><init>(II)V

    goto :goto_1

    :cond_10
    const-string p2, "ZhiHangTv"

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 35
    new-instance p2, Li1/r;

    invoke-direct {p2, v0, v0}, Li1/r;-><init>(II)V

    goto :goto_1

    :cond_11
    const-string p2, "ZhiHangTv2"

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 37
    new-instance p2, Li1/r;

    invoke-direct {p2, v0, v0}, Li1/r;-><init>(II)V

    const/4 v0, 0x0

    .line 38
    iput v0, p2, Li1/r;->m:I

    const/4 v0, 0x1

    .line 39
    iput v0, p2, Li1/r;->n:I

    goto :goto_1

    :cond_12
    const-string p2, "BBAKey"

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 41
    new-instance p2, Li1/k;

    invoke-direct {p2, v0, v0}, Li1/k;-><init>(II)V

    goto :goto_1

    :cond_13
    const-string p2, "RadarBSD"

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 43
    new-instance p2, Li1/m;

    invoke-direct {p2, v0, v0}, Li1/m;-><init>(II)V

    goto :goto_1

    :cond_14
    const-string p2, "ZhiHangRadar"

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 45
    new-instance p2, Li1/z;

    invoke-direct {p2, v0, v0}, Li1/z;-><init>(II)V

    goto :goto_1

    :cond_15
    const/4 p2, 0x0

    goto :goto_1

    .line 46
    :cond_16
    :goto_0
    new-instance v0, Li1/w;

    invoke-direct {v0}, Li1/w;-><init>()V

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    sput-boolean p2, Li1/w;->G:Z

    move-object p2, v0

    .line 48
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create plugin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_17

    .line 49
    iput-object p1, p0, Li1/b0;->j:Ljava/lang/String;

    :cond_17
    return-object p2
.end method

.method public declared-synchronized h(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/c$b;->b:Lb/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c;->d(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i(Li1/b0$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Li1/b0;->i:Li1/b0$a;

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p0, Li1/b0;->l:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p0}, Lb/c$b;->e(Lb/c$a;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Li1/b0;->l:Z

    .line 5
    :cond_0
    invoke-interface {p1, p0}, Li1/b0$a;->a(Li1/b0;)V

    :cond_1
    return-void
.end method

.method public j(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li1/b0;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Li1/b0;->g(Ljava/lang/String;I)Li1/b0$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Li1/b0;->i(Li1/b0$a;)V

    :cond_0
    return-void
.end method
