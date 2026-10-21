.class public Ly0/j;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static l:Ly0/j;


# instance fields
.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/regex/Pattern;

.field public i:I

.field public j:Ljava/util/BitSet;

.field public k:Ljava/util/BitSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly0/j;->g:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ly0/j;->h:Ljava/util/regex/Pattern;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ly0/j;->i:I

    const-string v0, "sound"

    .line 5
    invoke-virtual {p0, v0}, Lbase/b;->P2(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Ly0/j;->j:Ljava/util/BitSet;

    .line 7
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Ly0/j;->k:Ljava/util/BitSet;

    .line 8
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    const-string v2, "Sound-TRAN"

    invoke-virtual {v1, v2}, Lo1/x;->n(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    sget-object v2, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lbase/Configure$Property;->c(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lo1/x;->d:Z

    .line 10
    sget-object v0, Lbase/Configure$Property;->M:Lbase/Configure$Property;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->u(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ly0/j;->g:Ljava/util/List;

    .line 11
    new-instance v0, Ly0/j$a;

    invoke-direct {v0, p0}, Ly0/j$a;-><init>(Ly0/j;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore apps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly0/j;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic X2(Ly0/j;)Ljava/util/regex/Pattern;
    .locals 0

    .line 1
    iget-object p0, p0, Ly0/j;->h:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public static synthetic Y2(Ly0/j;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/j;->h:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method public static declared-synchronized a3()Ly0/j;
    .locals 2

    const-class v0, Ly0/j;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ly0/j;->l:Ly0/j;

    if-nez v1, :cond_0

    new-instance v1, Ly0/j;

    invoke-direct {v1}, Ly0/j;-><init>()V

    sput-object v1, Ly0/j;->l:Ly0/j;

    .line 2
    :cond_0
    sget-object v1, Ly0/j;->l:Ly0/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 2

    const/16 p3, 0x59

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Ly0/f;->b:Ly0/e;

    instance-of p1, p1, Lmodule/sound/AudioDevice;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-static {p2, p1}, Lo1/s0;->h([II)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    new-instance p3, Ly/f;

    invoke-direct {p3}, Ly/f;-><init>()V

    .line 4
    sget-object p4, Ly0/f;->b:Ly0/e;

    check-cast p4, Lmodule/sound/AudioDevice;

    const/4 v0, 0x0

    aget v0, p2, v0

    array-length v1, p2

    sub-int/2addr v1, p1

    invoke-static {p2, p1, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Lmodule/sound/AudioDevice;->b0(I[I)[I

    move-result-object p1

    iput-object p1, p3, Ly/f;->a:[I

    return-object p3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 8

    const-string v0, "sound"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00 >>>>>>>>>>>>>>    cmd :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x23

    if-eq p1, v0, :cond_15

    const/16 v0, 0x24

    if-eq p1, v0, :cond_15

    const/16 v0, 0x39

    if-eq p1, v0, :cond_15

    const/16 v0, 0x3c

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_13

    const/16 v0, 0x43

    if-eq p1, v0, :cond_15

    const/16 v0, 0x49

    if-eq p1, v0, :cond_15

    const/16 v0, 0x56

    if-eq p1, v0, :cond_12

    const/16 v0, 0x59

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq p1, v0, :cond_d

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_15

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_15

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 2
    sget-object v0, Ly0/f;->b:Ly0/e;

    if-nez v0, :cond_0

    instance-of v1, v0, Lmodule/sound/AudioDevice;

    if-eqz v1, :cond_16

    .line 3
    :cond_0
    check-cast v0, Lmodule/sound/AudioDevice;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmodule/sound/AudioDevice;->D(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4
    :pswitch_0
    invoke-static {p2, v2}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 5
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Ly0/j;->i3(I)V

    goto/16 :goto_7

    .line 6
    :pswitch_1
    invoke-static {p2, v2}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 7
    aget p1, p2, v2

    if-ne p1, v1, :cond_1

    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :cond_1
    new-array p1, v4, [I

    .line 9
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    .line 10
    :pswitch_2
    invoke-static {p2, v2}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 11
    aget p1, p2, v2

    if-ne p1, v1, :cond_2

    new-array p1, v4, [I

    .line 12
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :cond_2
    new-array p1, v4, [I

    .line 13
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_7

    .line 14
    :pswitch_3
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 15
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->n0(I)V

    goto/16 :goto_7

    .line 16
    :pswitch_4
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 17
    sget-object p1, Ly0/h;->p:Ljava/lang/Runnable;

    monitor-enter p1

    .line 18
    :try_start_0
    aget p2, p2, v2

    if-nez p2, :cond_3

    .line 19
    sput v2, Ly0/f;->U0:I

    .line 20
    invoke-static {v2}, Ly0/h;->p0(I)V

    goto :goto_0

    .line 21
    :cond_3
    sput v4, Ly0/f;->U0:I

    .line 22
    invoke-static {v1}, Ly0/h;->p0(I)V

    .line 23
    :goto_0
    monitor-exit p1

    goto/16 :goto_7

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 24
    :pswitch_5
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 25
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->k0(I)V

    goto/16 :goto_7

    .line 26
    :pswitch_6
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 27
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->n(I)V

    goto/16 :goto_7

    .line 28
    :pswitch_7
    invoke-static {}, Lg/e;->e()I

    move-result p1

    const/16 p3, 0x9

    if-ne p1, p3, :cond_4

    return-void

    .line 29
    :cond_4
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 30
    sget-object p1, Ly0/h;->o:Ljava/lang/Runnable;

    monitor-enter p1

    .line 31
    :try_start_1
    aget p2, p2, v2

    if-nez p2, :cond_5

    .line 32
    sput v2, Ly0/f;->p:I

    .line 33
    invoke-static {}, Ly0/h;->M()V

    goto :goto_1

    .line 34
    :cond_5
    sput v3, Ly0/f;->p:I

    .line 35
    sput v2, Ly0/f;->q:I

    invoke-static {v2}, La/c;->p(I)V

    .line 36
    :goto_1
    monitor-exit p1

    goto/16 :goto_7

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 37
    :pswitch_8
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 38
    aget p1, p2, v2

    aget p2, p2, v1

    invoke-static {p1, p2}, Ly0/i;->p(II)V

    goto/16 :goto_7

    .line 39
    :pswitch_9
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 40
    aget p1, p2, v2

    aget p2, p2, v1

    invoke-static {p1, p2}, Ly0/i;->n(II)V

    goto/16 :goto_7

    .line 41
    :pswitch_a
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 42
    aget p1, p2, v2

    aget p2, p2, v1

    invoke-static {p1, p2}, Ly0/i;->l(II)V

    goto/16 :goto_7

    .line 43
    :pswitch_b
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 44
    sget-object p1, Ly0/f;->b:Ly0/e;

    if-nez p1, :cond_7

    instance-of p3, p1, Lmodule/sound/AudioDevice;

    if-eqz p3, :cond_6

    goto :goto_2

    .line 45
    :cond_6
    aget p1, p2, v2

    aget p2, p2, v1

    invoke-static {p1, p2}, Ly0/i;->f(II)V

    goto/16 :goto_7

    .line 46
    :cond_7
    :goto_2
    check-cast p1, Lmodule/sound/AudioDevice;

    aget p3, p2, v2

    aget p2, p2, v1

    invoke-virtual {p1, p3, p2}, Lmodule/sound/AudioDevice;->L(II)V

    goto/16 :goto_7

    .line 47
    :pswitch_c
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 48
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->B(I)V

    goto/16 :goto_7

    .line 49
    :pswitch_d
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 50
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->m(I)V

    goto/16 :goto_7

    .line 51
    :pswitch_e
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 52
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->D(I)V

    goto/16 :goto_7

    .line 53
    :pswitch_f
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 54
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->c0(I)V

    goto/16 :goto_7

    .line 55
    :pswitch_10
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 56
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->d0(I)V

    goto/16 :goto_7

    .line 57
    :pswitch_11
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 58
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->b0(I)V

    goto/16 :goto_7

    .line 59
    :pswitch_12
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 60
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->r(I)V

    goto/16 :goto_7

    .line 61
    :pswitch_13
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 62
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->k(I)V

    goto/16 :goto_7

    .line 63
    :pswitch_14
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 64
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "index = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p2, v2

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " value = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p2, v1

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ln1/b;->s(Ljava/lang/String;)V

    .line 65
    aget p1, p2, v2

    aget p2, p2, v1

    invoke-static {p1, p2}, Ly0/h;->g0(II)V

    goto/16 :goto_7

    .line 66
    :pswitch_15
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 67
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->T(I)V

    goto/16 :goto_7

    .line 68
    :pswitch_16
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 69
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->I(I)V

    goto/16 :goto_7

    .line 70
    :pswitch_17
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 71
    aget p1, p2, v2

    aget p2, p2, v1

    invoke-static {p1, p2}, Ly0/h;->p(II)V

    goto/16 :goto_7

    .line 72
    :pswitch_18
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "c32107"

    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "    notify   111  >>>>>>>>>>>>>>>>>>>>>>>>>>>MODE ints[0]  : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p2, v2

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    aget p1, p2, v2

    invoke-static {p1}, Ly0/i;->j(I)V

    goto/16 :goto_7

    .line 75
    :pswitch_19
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 76
    aget p1, p2, v2

    aget p2, p2, v1

    invoke-static {p1, p2}, Ly0/i;->h(II)V

    goto/16 :goto_7

    .line 77
    :pswitch_1a
    invoke-virtual {p0, p2, v1}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 78
    aget p1, p2, v2

    .line 79
    aget p1, p2, v2

    const/4 p3, -0x6

    if-ne p1, p3, :cond_8

    sget-object p1, Ln1/a;->a:Lo1/l0;

    const/16 p3, 0xc8

    invoke-virtual {p1, p3}, Lo1/l0;->c(I)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_7

    .line 80
    :cond_8
    aget p1, p2, v2

    invoke-static {p1}, Ly0/h;->u0(I)V

    goto/16 :goto_7

    .line 81
    :cond_9
    invoke-static {p2, v1}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 82
    aget p1, p2, v1

    if-ltz p1, :cond_c

    aget p1, p2, v1

    const/16 p3, 0x80

    if-lt p1, p3, :cond_a

    goto :goto_4

    .line 83
    :cond_a
    invoke-virtual {p0}, Ly0/j;->d3()Z

    move-result p1

    .line 84
    aget p3, p2, v2

    if-ne p3, v1, :cond_b

    .line 85
    iget-object p3, p0, Ly0/j;->j:Ljava/util/BitSet;

    aget p2, p2, v1

    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 86
    :cond_b
    iget-object p3, p0, Ly0/j;->j:Ljava/util/BitSet;

    aget p2, p2, v1

    invoke-virtual {p3, p2}, Ljava/util/BitSet;->clear(I)V

    .line 87
    :goto_3
    invoke-virtual {p0}, Ly0/j;->d3()Z

    move-result p2

    if-eq p1, p2, :cond_16

    const/16 p1, 0x4000

    .line 88
    invoke-static {p1, p2}, Ly0/h;->Y(IZ)V

    goto/16 :goto_7

    :cond_c
    :goto_4
    return-void

    .line 89
    :cond_d
    invoke-static {p2, v4}, Lo1/s0;->h([II)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 90
    aget p3, p2, v2

    if-ne p3, v1, :cond_e

    move p3, v1

    goto :goto_5

    :cond_e
    move p3, v2

    .line 91
    :goto_5
    aget p4, p2, v1

    .line 92
    aget v0, p2, v3

    const/4 v3, 0x0

    .line 93
    sget-object v5, Ly0/f;->b:Ly0/e;

    instance-of v6, v5, Lmodule/sound/AudioDevice;

    if-eqz v6, :cond_f

    .line 94
    move-object v3, v5

    check-cast v3, Lmodule/sound/AudioDevice;

    :cond_f
    if-nez v3, :cond_10

    return-void

    :cond_10
    const/16 v5, 0x1f

    if-eqz p3, :cond_11

    .line 95
    array-length v6, p2

    add-int/lit8 v7, p4, 0x3

    if-ne v6, v7, :cond_11

    .line 96
    array-length p3, p2

    sub-int/2addr p3, v4

    invoke-static {p2, v5, p3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p2

    .line 97
    invoke-virtual {v3, v0, p2}, Lmodule/sound/AudioDevice;->b0(I[I)[I

    move-result-object p3

    if-eqz p3, :cond_16

    .line 98
    array-length v0, p3

    add-int/2addr v0, p4

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 99
    aput p4, v0, v2

    .line 100
    invoke-static {p2, v2, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v1

    .line 101
    array-length p2, p3

    invoke-static {p3, v2, v0, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    invoke-static {p1, v0}, Ly0/h;->s0(I[I)V

    goto :goto_7

    :cond_11
    if-eqz p3, :cond_16

    .line 103
    array-length p1, p2

    add-int/2addr p4, v4

    if-le p1, p4, :cond_16

    .line 104
    array-length p1, p2

    sub-int/2addr p1, v4

    invoke-static {p2, v5, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    .line 105
    aget p3, p2, v2

    array-length v0, p2

    sub-int/2addr v0, p4

    invoke-static {p2, p4, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p2

    invoke-virtual {v3, p3, p1, p2}, Lmodule/sound/AudioDevice;->p1(I[I[I)V

    goto :goto_7

    .line 106
    :cond_12
    invoke-static {p2, v1}, Lo1/s0;->h([II)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 107
    new-instance p3, Ly0/j$b;

    invoke-direct {p3, p0, p2, p1}, Ly0/j$b;-><init>(Ly0/j;[II)V

    const-wide/16 p1, 0x0

    invoke-static {p3, p1, p2}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    goto :goto_7

    .line 108
    :cond_13
    invoke-static {p2, v2}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 109
    aget p1, p2, v2

    if-ne p1, v1, :cond_14

    goto :goto_6

    :cond_14
    move v1, v2

    :goto_6
    invoke-virtual {p0, v1}, Ly0/j;->Z2(Z)V

    goto :goto_7

    .line 110
    :cond_15
    :pswitch_1b
    invoke-virtual {p0, p1, p2}, Ly0/j;->b3(I[I)V

    :cond_16
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_2
        :pswitch_1
        :pswitch_1b
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x0
        0xd9
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xda
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0xd8
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0xd7
    .end array-data
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->p(Ly/b;I)V

    return-void
.end method

.method public Q2(Lo1/h0;)V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lbase/b;->Y1(Ly/b;II)V

    .line 2
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    if-nez p3, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object p3, Ly0/f;->b:Ly0/e;

    instance-of v0, p3, Lmodule/sound/AudioDevice;

    if-eqz v0, :cond_2

    .line 4
    check-cast p3, Lmodule/sound/AudioDevice;

    invoke-virtual {p3, p2, p1}, Lmodule/sound/AudioDevice;->U(ILy/b;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    const/16 p3, 0x3c

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, p3, :cond_10

    const/16 p3, 0x43

    if-eq p2, p3, :cond_f

    const/16 p3, 0x52

    if-eq p2, p3, :cond_e

    const/16 p3, 0x56

    if-eq p2, p3, :cond_d

    const/16 p3, 0x6f

    if-eq p2, p3, :cond_b

    const/16 p3, 0x5b

    if-eq p2, p3, :cond_a

    const/16 p3, 0x5c

    if-eq p2, p3, :cond_9

    const/16 p3, 0x30

    packed-switch p2, :pswitch_data_0

    const/16 v4, 0x24

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_9

    .line 5
    :pswitch_0
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->V0:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 6
    :pswitch_1
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->n:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 7
    :pswitch_2
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->U:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 8
    :pswitch_3
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->R:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    :pswitch_4
    move p3, v2

    :goto_0
    if-ge p3, v4, :cond_11

    .line 9
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array v5, v1, [I

    aput p3, v5, v2

    sget-object v6, Ly0/f;->q0:[I

    aget v6, v6, p3

    aput v6, v5, v3

    invoke-virtual {v0, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :pswitch_5
    move p3, v2

    :goto_1
    if-ge p3, v4, :cond_11

    .line 10
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    new-array v5, v1, [I

    aput p3, v5, v2

    sget-object v6, Ly0/f;->t0:[I

    aget v6, v6, p3

    aput v6, v5, v3

    invoke-virtual {v0, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :pswitch_6
    if-eqz v0, :cond_3

    goto/16 :goto_9

    :cond_3
    move v0, v2

    :goto_2
    if-ge v0, p3, :cond_11

    .line 11
    iget-object v4, p0, Lbase/b;->f:Lo1/x;

    new-array v5, v1, [I

    aput v0, v5, v2

    sget-object v6, Ly0/f;->j0:[I

    aget v6, v6, v0

    aput v6, v5, v3

    invoke-virtual {v4, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_7
    if-eqz v0, :cond_4

    goto/16 :goto_9

    :cond_4
    move v0, v2

    :goto_3
    if-ge v0, p3, :cond_11

    .line 12
    iget-object v4, p0, Lbase/b;->f:Lo1/x;

    new-array v5, v1, [I

    aput v0, v5, v2

    sget-object v6, Ly0/f;->g0:[I

    aget v6, v6, v0

    aput v6, v5, v3

    invoke-virtual {v4, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 13
    :pswitch_8
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Lk0/nt;->v:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 14
    :pswitch_9
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->O:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 15
    :pswitch_a
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->L:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 16
    :pswitch_b
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->J:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 17
    :pswitch_c
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->H:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    :pswitch_d
    move v0, v2

    :goto_4
    if-ge v0, p3, :cond_11

    .line 18
    iget-object v4, p0, Lbase/b;->f:Lo1/x;

    new-array v5, v1, [I

    aput v0, v5, v2

    sget-object v6, Ly0/f;->w0:[I

    aget v6, v6, v0

    aput v6, v5, v3

    invoke-virtual {v4, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 19
    :pswitch_e
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->E:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    :pswitch_f
    if-eqz v0, :cond_5

    goto/16 :goto_9

    .line 20
    :cond_5
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->a0:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    :pswitch_10
    if-eqz v0, :cond_6

    goto/16 :goto_9

    .line 21
    :cond_6
    sget v0, Lk0/nt;->v:I

    if-eqz v0, :cond_7

    sget v0, Ly0/f;->Z:I

    if-nez v0, :cond_7

    move v0, v2

    :goto_5
    if-ge v0, p3, :cond_11

    .line 22
    iget-object v4, p0, Lbase/b;->f:Lo1/x;

    new-array v5, v1, [I

    aput v0, v5, v2

    sget-object v6, Ly0/f;->b0:[I

    aget v6, v6, v0

    aput v6, v5, v3

    invoke-virtual {v4, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 23
    :cond_7
    sget v0, Ly0/f;->a0:I

    if-nez v0, :cond_8

    move v0, v2

    :goto_6
    if-ge v0, p3, :cond_11

    .line 24
    iget-object v4, p0, Lbase/b;->f:Lo1/x;

    new-array v5, v1, [I

    aput v0, v5, v2

    sget-object v6, Ly0/f;->d0:[I

    aget v6, v6, v0

    aput v6, v5, v3

    invoke-virtual {v4, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    move v0, v2

    :goto_7
    if-ge v0, p3, :cond_11

    .line 25
    iget-object v4, p0, Lbase/b;->f:Lo1/x;

    new-array v5, v1, [I

    aput v0, v5, v2

    sget-object v6, Ly0/f;->c0:[I

    aget v6, v6, v0

    aput v6, v5, v3

    invoke-virtual {v4, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 26
    :pswitch_11
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v1, [I

    sget v1, Ly0/f;->j:I

    aput v1, v0, v2

    sget v1, Ly0/f;->l:I

    aput v1, v0, v3

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 27
    :pswitch_12
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->x:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 28
    :pswitch_13
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->B:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 29
    :pswitch_14
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->z:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 30
    :pswitch_15
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->r:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 31
    :pswitch_16
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->i:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 32
    :pswitch_17
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->c:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 33
    :pswitch_18
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    sget v1, Ly0/f;->a:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 34
    :cond_9
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    invoke-virtual {p0}, Ly0/j;->e3()Z

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    .line 35
    :cond_a
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    invoke-virtual {p0}, Ly0/j;->d3()Z

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_9

    :cond_b
    new-array p3, v3, [I

    .line 36
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v1, v0, Lf/b;->c:Lf/c;

    instance-of v1, v1, Lf/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    move v3, v2

    :goto_8
    aput v3, p3, v2

    .line 37
    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto/16 :goto_9

    .line 38
    :cond_d
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v1, [I

    aput v2, v0, v2

    invoke-static {}, La/c;->q()I

    move-result v4

    aput v4, v0, v3

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    .line 39
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v1, [I

    aput v1, v0, v2

    invoke-static {}, La/c;->m()I

    move-result v4

    aput v4, v0, v3

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    .line 40
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v1, [I

    aput v3, v0, v2

    invoke-static {}, La/c;->w()I

    move-result v4

    aput v4, v0, v3

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    .line 41
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v1, [I

    const/4 v4, 0x3

    aput v4, v0, v2

    invoke-static {}, La/c;->t()I

    move-result v4

    aput v4, v0, v3

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    .line 42
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v1, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    invoke-static {}, La/c;->g()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_9

    .line 43
    :cond_e
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    iget v1, p0, Ly0/j;->i:I

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_9

    .line 44
    :cond_f
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v1, [I

    aput v2, v0, v2

    sget v4, Ly0/f;->f:I

    aput v4, v0, v3

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    .line 45
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v1, [I

    aput v3, v0, v2

    sget v4, Ly0/f;->d:I

    aput v4, v0, v3

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    .line 46
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v1, [I

    aput v1, v0, v2

    sget v1, Ly0/f;->e:I

    aput v1, v0, v3

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_9

    .line 47
    :cond_10
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v3, [I

    invoke-static {v1}, Lh0/e;->w(I)Z

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    :cond_11
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Z2(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lh0/e;->w(I)Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2
    invoke-static {v0, p1}, Lh0/e;->J(IZ)V

    const/16 p1, 0x3c

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3
    invoke-static {v0}, Lh0/e;->w(I)Z

    move-result v0

    aput v0, v1, v2

    invoke-static {p1, v1}, Ly0/h;->s0(I[I)V

    :cond_0
    return-void
.end method

.method public varargs b3(I[I)V
    .locals 5

    if-eqz p2, :cond_10

    .line 1
    array-length v0, p2

    if-eqz v0, :cond_10

    sget-object v0, Ly0/f;->b:Ly0/e;

    if-eqz v0, :cond_10

    instance-of v1, v0, Lmodule/sound/AudioDevice;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    check-cast v0, Lmodule/sound/AudioDevice;

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_f

    const/16 v1, 0x24

    if-eq p1, v1, :cond_d

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_b

    const/16 v1, 0x39

    if-eq p1, v1, :cond_a

    const/16 v1, 0x43

    const/4 v4, 0x2

    if-eq p1, v1, :cond_9

    const/16 v1, 0x49

    if-eq p1, v1, :cond_8

    const/16 v1, 0x51

    if-eq p1, v1, :cond_6

    const/16 v1, 0x5c

    if-eq p1, v1, :cond_5

    const/16 v1, 0x5f

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 4
    aget p1, p2, v2

    if-eq p1, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->b1(Z)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, p2, v4}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 6
    aget p1, p2, v2

    aget p2, p2, v3

    invoke-virtual {v0, p1, p2}, Lmodule/sound/AudioDevice;->h1(II)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0, p2, v4}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 8
    aget p1, p2, v2

    aget p2, p2, v3

    invoke-virtual {v0, p1, p2}, Lmodule/sound/AudioDevice;->a1(II)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 10
    aget p1, p2, v2

    invoke-virtual {v0, p1}, Lmodule/sound/AudioDevice;->U0(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_4
    invoke-virtual {p0, p2, v4}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    aget p2, p2, v3

    invoke-virtual {v0, p1, p2}, Lmodule/sound/AudioDevice;->i1(II)V

    goto/16 :goto_0

    .line 12
    :pswitch_5
    invoke-virtual {p0, p2, v4}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    aget p2, p2, v3

    invoke-virtual {v0, p1, p2}, Lmodule/sound/AudioDevice;->j1(II)V

    goto/16 :goto_0

    .line 13
    :pswitch_6
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    invoke-virtual {v0, p1}, Lmodule/sound/AudioDevice;->k1(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_7
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    if-ne p1, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->l1(Z)V

    goto/16 :goto_0

    .line 15
    :pswitch_8
    invoke-virtual {p0, p2, v4}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    aget p2, p2, v3

    invoke-virtual {v0, p1, p2}, Lmodule/sound/AudioDevice;->g0(II)V

    goto/16 :goto_0

    .line 16
    :pswitch_9
    invoke-virtual {p0, p2, v4}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    aget p2, p2, v3

    invoke-virtual {v0, p1, p2}, Lmodule/sound/AudioDevice;->C0(II)V

    goto/16 :goto_0

    .line 17
    :pswitch_a
    invoke-virtual {p0, p2, v4}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    aget p2, p2, v3

    invoke-virtual {v0, p1, p2}, Lmodule/sound/AudioDevice;->D0(II)V

    goto/16 :goto_0

    .line 18
    :pswitch_b
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    if-ne p1, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->E0(Z)V

    goto/16 :goto_0

    .line 19
    :pswitch_c
    invoke-virtual {p0, p2, v4}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    aget p2, p2, v3

    invoke-virtual {v0, p1, p2}, Lmodule/sound/AudioDevice;->e1(II)V

    goto/16 :goto_0

    .line 20
    :pswitch_d
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    invoke-virtual {v0, p1}, Lmodule/sound/AudioDevice;->J0(I)V

    goto/16 :goto_0

    .line 21
    :cond_4
    invoke-static {p2, v2}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 22
    aget p1, p2, v2

    invoke-virtual {v0, p1}, Lmodule/sound/AudioDevice;->A(I)V

    goto/16 :goto_0

    .line 23
    :cond_5
    invoke-static {p2, v3}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 24
    aget p1, p2, v2

    aget p2, p2, v3

    invoke-virtual {p0, p1, p2}, Ly0/j;->h3(II)V

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 26
    aget p1, p2, v2

    if-ne p1, v3, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->R0(Z)V

    goto :goto_0

    .line 27
    :cond_8
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 28
    aget p1, p2, v2

    invoke-virtual {v0, p1}, Lmodule/sound/AudioDevice;->K0(I)V

    goto :goto_0

    .line 29
    :cond_9
    invoke-virtual {p0, p2, v4}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 30
    aget p1, p2, v2

    aget p2, p2, v3

    invoke-virtual {p0, p1, p2}, Ly0/j;->n3(II)V

    goto :goto_0

    .line 31
    :cond_a
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 32
    aget p1, p2, v2

    invoke-virtual {v0, p1}, Lmodule/sound/AudioDevice;->K(I)V

    goto :goto_0

    .line 33
    :cond_b
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    if-ne p1, v3, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->f0(Z)V

    goto :goto_0

    .line 34
    :cond_d
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    if-ne p1, v3, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->f1(Z)V

    goto :goto_0

    .line 35
    :cond_f
    invoke-virtual {p0, p2, v3}, Ly0/j;->c3([II)Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, p2, v2

    invoke-virtual {v0, p1}, Lmodule/sound/AudioDevice;->T0(I)V

    :cond_10
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d3()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/j;->j:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e3()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/j;->k:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f3(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ly0/j;->g:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ly0/j;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ly0/j;->h:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g3(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/j;->k:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public h3(II)V
    .locals 2

    if-ltz p2, :cond_3

    const/16 v0, 0x80

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0}, Ly0/j;->e3()Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2
    iget-object p1, p0, Ly0/j;->k:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Ly0/j;->k:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->clear(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Ly0/j;->e3()Z

    move-result p1

    if-eq v0, p1, :cond_3

    .line 5
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2, p1}, Lmodule/sound/AudioDevice;->c0(Z)V

    :cond_2
    const p2, 0x8000

    .line 7
    invoke-static {p2, p1}, Ly0/h;->Y(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public i3(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFMTransmissionVolume -------- vol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFmTransmissionVolume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly0/j;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8c

    const-string v1, "fmsendervolume"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/syu/jni/ToolsJni;->callSystemCtrl(ILjava/lang/String;I)I

    .line 3
    iget v0, p0, Ly0/j;->i:I

    if-eq p1, v0, :cond_1

    .line 4
    iput p1, p0, Ly0/j;->i:I

    const/16 v0, 0x3e8

    .line 5
    invoke-static {v0, p1}, Lm1/c;->e(II)I

    const/16 v0, 0x52

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 6
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    :cond_1
    return-void
.end method

.method public j3(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    sget v0, Ly0/f;->g:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Ly0/f;->d:I

    if-eq v0, p1, :cond_2

    .line 3
    sput p1, Ly0/f;->d:I

    .line 4
    sget-boolean v0, Lm1/a;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x17d

    .line 5
    invoke-static {v0, p1}, Lm1/c;->e(II)I

    :cond_1
    const/16 p1, 0x43

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 6
    sget v1, Ly0/f;->d:I

    aput v1, v0, v2

    invoke-static {p1, v0}, Ly0/h;->s0(I[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public k3(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    sget v0, Ly0/f;->g:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Ly0/f;->e:I

    if-eq v0, p1, :cond_2

    .line 3
    sput p1, Ly0/f;->e:I

    .line 4
    sget-boolean v0, Lm1/a;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x184

    .line 5
    invoke-static {v0, p1}, Lm1/c;->e(II)I

    :cond_1
    const/16 p1, 0x43

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    .line 6
    sget v2, Ly0/f;->e:I

    aput v2, v1, v0

    invoke-static {p1, v1}, Ly0/h;->s0(I[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public l3(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly0/j;->g:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ly0/j;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ly0/j;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

.method public m3(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    sget v0, Ly0/f;->g:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Ly0/f;->f:I

    if-eq v0, p1, :cond_2

    .line 3
    sput p1, Ly0/f;->f:I

    .line 4
    sget-boolean v0, Lm1/a;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x17c

    .line 5
    invoke-static {v0, p1}, Lm1/c;->e(II)I

    :cond_1
    const/16 p1, 0x43

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    .line 6
    sget v2, Ly0/f;->f:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Ly0/h;->s0(I[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public n3(II)V
    .locals 5

    if-ltz p2, :cond_5

    .line 1
    sget v0, Ly0/f;->g:I

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    move v2, v3

    :cond_2
    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p0, p2}, Ly0/j;->m3(I)V

    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    .line 4
    invoke-static {p2}, Ly0/h;->v0(I)I

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    .line 5
    invoke-virtual {p0, p2}, Ly0/j;->j3(I)V

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 6
    invoke-static {p2}, Ly0/h;->v0(I)I

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_5

    .line 7
    invoke-virtual {p0, p2}, Ly0/j;->k3(I)V

    if-eqz v1, :cond_5

    .line 8
    invoke-static {p2}, Ly0/h;->v0(I)I

    :cond_5
    :goto_1
    return-void
.end method
