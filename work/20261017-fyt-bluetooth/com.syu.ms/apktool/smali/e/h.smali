.class public Le/h;
.super Ly/b$a;
.source "SourceFile"


# static fields
.field public static final b:Le/h;


# instance fields
.field public a:Ly/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/h;

    invoke-direct {v0}, Le/h;-><init>()V

    sput-object v0, Le/h;->b:Le/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly/b$a;-><init>()V

    return-void
.end method

.method public static K2()Le/h;
    .locals 1

    .line 1
    sget-object v0, Le/h;->b:Le/h;

    return-object v0
.end method


# virtual methods
.method public H0(I[I[F[Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    .line 2
    sget-object v1, Lbase/Configure$Property;->R:Lbase/Configure$Property;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  updateCode =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Bsp"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_13

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_a

    .line 4
    :pswitch_0
    invoke-static {}, Lg/f;->t()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 5
    sget p1, Lu0/b;->D:I

    if-ne p1, v3, :cond_1c

    .line 6
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v2}, Lu0/h;->c(I)V

    const-wide/16 p1, 0x1f4

    .line 7
    invoke-static {p1, p2}, La/i;->a0(J)V

    .line 8
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v3}, Lu0/h;->c(I)V

    goto/16 :goto_a

    .line 9
    :pswitch_1
    invoke-static {p2, v3}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 10
    invoke-static {}, Ly0/h;->i0()V

    .line 11
    aget p1, p2, v2

    mul-int/lit8 p1, p1, 0x24

    div-int/lit8 p1, p1, 0x64

    .line 12
    sget p2, Ly0/f;->g:I

    invoke-static {p1, v2, p2}, Lo1/o0;->a(III)I

    move-result p1

    invoke-static {p1}, Ly0/h;->u0(I)V

    goto/16 :goto_a

    .line 13
    :pswitch_2
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result p1

    const-string p3, " ints = "

    const-string v4, "FOUCS packageName = "

    const-string v5, "focus"

    if-eqz p1, :cond_9

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p4, v2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0, p2, v3}, Le/h;->L2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p4, v3}, Le/h;->N2([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    aget-object p1, p4, v2

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_3

    .line 16
    aget-object p3, p4, v2

    const-string v4, "com.papagoinc"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 17
    aget p3, p2, v3

    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move p3, v3

    :goto_2
    if-eqz p3, :cond_5

    .line 18
    aget v4, p2, v3

    if-ne v4, v3, :cond_5

    .line 19
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lu0/i;->g3()Ljava/lang/String;

    move-result-object v5

    .line 21
    aget v6, p2, v2

    if-ne v6, v3, :cond_4

    aget-object v6, p4, v2

    invoke-static {v6}, La/i;->r(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    aget-object v6, p4, v2

    invoke-static {v6, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 22
    aget-object v5, p4, v2

    invoke-virtual {v4, v5}, Lu0/i;->B3(Ljava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_4
    aget v6, p2, v2

    if-nez v6, :cond_5

    aget-object v6, p4, v2

    invoke-static {v6, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, ""

    .line 24
    invoke-virtual {v4, v5}, Lu0/i;->B3(Ljava/lang/String;)V

    :cond_5
    :goto_3
    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    .line 25
    aget-object v4, p4, v2

    const-string v5, "net.easyconn"

    invoke-static {v4, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lbase/Configure$Property;->O:Lbase/Configure$Property;

    invoke-virtual {v4, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 26
    aget-object v4, p4, v2

    aget v5, p2, v2

    if-ne v5, v3, :cond_6

    move v5, v3

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    aget v6, p2, v3

    aget v1, p2, v1

    invoke-virtual {v0, v4, v5, v6, v1}, Lf/c;->a(Ljava/lang/String;ZII)V

    :cond_7
    if-eqz p1, :cond_1c

    if-eqz p3, :cond_1c

    .line 27
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->h:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio FOUCS packageName = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " state = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 28
    aget-object p1, p4, v2

    aget p3, p2, v2

    if-ne p3, v3, :cond_8

    goto :goto_5

    :cond_8
    move v3, v2

    :goto_5
    invoke-virtual {v0, p1, v3}, Lf/c;->c(Ljava/lang/String;Z)V

    .line 29
    aget-object p1, p4, v2

    invoke-static {p1}, La/i;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 30
    aget-object p1, p4, v2

    aget p2, p2, v2

    invoke-virtual {v0, p1, p2}, Lf/c;->b(Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 31
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p4, v2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, p2, v3}, Le/h;->L2([II)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0, p4, v3}, Le/h;->N2([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    aget-object p1, p4, v2

    if-eqz p1, :cond_1c

    .line 33
    aget-object p1, p4, v2

    aget p3, p2, v2

    if-ne p3, v3, :cond_a

    move v2, v3

    :cond_a
    aget p3, p2, v3

    aget p2, p2, v1

    invoke-virtual {v0, p1, v2, p3, p2}, Lf/c;->a(Ljava/lang/String;ZII)V

    goto/16 :goto_a

    .line 34
    :pswitch_3
    invoke-static {p2, v2}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 35
    aget p1, p2, v2

    const/16 p3, 0x14

    if-ne p1, p3, :cond_b

    move p1, v3

    goto :goto_6

    :cond_b
    move p1, v2

    :goto_6
    if-eqz p1, :cond_c

    const/4 p1, 0x3

    .line 36
    invoke-static {p2, p1}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 37
    invoke-static {}, Lr0/a;->X2()Lr0/a;

    move-result-object p1

    aget p3, p2, v3

    aget p2, p2, v1

    invoke-virtual {p1, p3, p2}, Lr0/a;->Z2(II)V

    goto/16 :goto_a

    .line 38
    :cond_c
    invoke-static {p2, v1}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 39
    invoke-static {}, Lr0/a;->X2()Lr0/a;

    move-result-object p1

    aget p3, p2, v2

    aget p2, p2, v3

    invoke-virtual {p1, p3, p2}, Lr0/a;->Y2(II)V

    goto/16 :goto_a

    .line 40
    :pswitch_4
    sget-object p1, Lbase/Configure$Property;->V:Lbase/Configure$Property;

    invoke-virtual {p1, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 41
    sget-object p1, Ly0/f;->b:Ly0/e;

    instance-of p1, p1, Lmodule/sound/AudioDevice;

    if-eqz p1, :cond_1c

    .line 42
    sget p1, Lu0/b;->f:I

    if-ne p1, v3, :cond_1c

    sget p1, Lu0/b;->a0:I

    if-ne p1, v3, :cond_1c

    sget-object p1, Ly0/f;->b:Ly0/e;

    check-cast p1, Lmodule/sound/AudioDevice;

    invoke-virtual {p1, v2}, Lmodule/sound/AudioDevice;->z(Z)V

    goto/16 :goto_a

    .line 43
    :pswitch_5
    invoke-virtual {p0, p2, v1}, Le/h;->L2([II)Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz p3, :cond_1c

    .line 44
    array-length p1, p3

    if-lt p1, v1, :cond_1c

    .line 45
    aget p1, p2, v3

    if-nez p1, :cond_d

    .line 46
    aget p1, p2, v2

    aget p2, p3, v2

    aget p3, p3, v3

    invoke-static {p1, p2, p3}, Le/f;->q(IFF)V

    goto/16 :goto_a

    .line 47
    :cond_d
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p1

    invoke-virtual {p1}, Lu0/i;->t3()Z

    move-result p1

    if-eqz p1, :cond_1c

    sget p1, Lu0/b;->a0:I

    if-ne p1, v3, :cond_1c

    sget p1, Lu0/b;->f:I

    if-ne p1, v3, :cond_1c

    .line 48
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p1

    invoke-virtual {p1, v2}, Lu0/i;->S3(Z)V

    goto/16 :goto_a

    .line 49
    :cond_e
    invoke-virtual {p0, p2, v3}, Le/h;->L2([II)Z

    move-result p1

    if-eqz p1, :cond_1c

    if-eqz p3, :cond_1c

    array-length p1, p3

    if-lt p1, v1, :cond_1c

    .line 50
    aget p1, p2, v2

    aget p2, p3, v2

    aget p3, p3, v3

    invoke-static {p1, p2, p3}, Le/f;->q(IFF)V

    goto/16 :goto_a

    .line 51
    :pswitch_6
    invoke-virtual {p0, p4, v3}, Le/h;->N2([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 52
    aget-object p1, p4, v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto/16 :goto_a

    :cond_f
    :pswitch_7
    if-eqz p4, :cond_1c

    .line 53
    array-length p1, p4

    if-lez p1, :cond_1c

    .line 54
    sget p1, Lu0/b;->n4:I

    const-string/jumbo p2, "vehicle_start"

    if-nez p1, :cond_11

    sget-boolean p1, Lu0/b;->a4:Z

    if-eqz p1, :cond_11

    .line 55
    aget-object p1, p4, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 56
    sput v3, Lu0/d;->j:I

    goto/16 :goto_a

    .line 57
    :cond_10
    sput v2, Lu0/d;->j:I

    goto/16 :goto_a

    .line 58
    :cond_11
    aget-object p1, p4, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 59
    invoke-static {v3}, Lu0/d;->C(I)V

    goto/16 :goto_a

    .line 60
    :cond_12
    invoke-static {v2}, Lu0/d;->C(I)V

    goto/16 :goto_a

    .line 61
    :pswitch_8
    invoke-virtual {p0, p2, v1}, Le/h;->L2([II)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 62
    aget p1, p2, v2

    aget p2, p2, v3

    invoke-static {p1, p2}, Le/g;->G(II)V

    goto/16 :goto_a

    .line 63
    :cond_13
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result p1

    const-string p2, "play"

    if-eqz p1, :cond_1a

    .line 64
    invoke-virtual {p0, p4, v1}, Le/h;->N2([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aget-object p3, p4, v2

    invoke-static {p1, p3}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    move p1, v3

    goto :goto_7

    :cond_14
    move p1, v2

    .line 65
    :goto_7
    invoke-static {}, Lg/f;->r()Z

    move-result p3

    if-eqz p3, :cond_16

    if-eqz p1, :cond_15

    .line 66
    aget-object p1, p4, v2

    const-string p3, "com.zjinnova.zlink"

    invoke-static {p3, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    :goto_8
    move p1, v3

    goto :goto_9

    :cond_15
    move p1, v2

    goto :goto_9

    :cond_16
    if-eqz p1, :cond_15

    .line 67
    aget-object p1, p4, v2

    const-string p3, "bin/blink"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_8

    .line 68
    :goto_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==============>>> updateAudioState : "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " strs: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "AA"

    invoke-static {v4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_17

    .line 69
    sget-object p1, Ly0/g;->l:Lo1/z;

    invoke-virtual {p1, p4}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 70
    :cond_17
    invoke-virtual {p0, p4, v1}, Le/h;->N2([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    aget-object p1, p4, v2

    if-eqz p1, :cond_1c

    aget-object p1, p4, v3

    if-eqz p1, :cond_1c

    .line 71
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object p1

    aget-object p3, p4, v2

    invoke-virtual {p1, p3}, Ly0/j;->f3(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    return-void

    .line 72
    :cond_18
    aget-object p1, p4, v3

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 73
    aget-object p1, p4, v2

    invoke-virtual {v0, p1, v3}, Lf/c;->b(Ljava/lang/String;I)V

    goto :goto_a

    .line 74
    :cond_19
    aget-object p1, p4, v2

    invoke-virtual {v0, p1, v2}, Lf/c;->b(Ljava/lang/String;I)V

    goto :goto_a

    .line 75
    :cond_1a
    aget-object p1, p4, v3

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 76
    aget-object p1, p4, v2

    invoke-virtual {v0, p1, v3}, Lf/c;->b(Ljava/lang/String;I)V

    goto :goto_a

    .line 77
    :cond_1b
    aget-object p1, p4, v2

    invoke-virtual {v0, p1, v2}, Lf/c;->b(Ljava/lang/String;I)V

    :cond_1c
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final L2([II)Z
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

.method public M2()V
    .locals 4

    const-string/jumbo v0, "syu"

    .line 1
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {v0}, Ly/d$a;->J2(Landroid/os/IBinder;)Ly/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ly/d;->p2(I)Ly/c;

    move-result-object v0

    iput-object v0, p0, Le/h;->a:Ly/c;

    .line 5
    invoke-interface {v0, p0, v1, v1}, Ly/c;->Y1(Ly/b;II)V

    .line 6
    iget-object v0, p0, Le/h;->a:Ly/c;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v1}, Ly/c;->Y1(Ly/b;II)V

    .line 7
    iget-object v0, p0, Le/h;->a:Ly/c;

    const/4 v2, 0x3

    invoke-interface {v0, p0, v2, v1}, Ly/c;->Y1(Ly/b;II)V

    .line 8
    iget-object v0, p0, Le/h;->a:Ly/c;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-interface {v0, p0, v2, v3}, Ly/c;->Y1(Ly/b;II)V

    .line 9
    iget-object v0, p0, Le/h;->a:Ly/c;

    const/4 v2, 0x5

    invoke-interface {v0, p0, v2, v1}, Ly/c;->Y1(Ly/b;II)V

    .line 10
    iget-object v0, p0, Le/h;->a:Ly/c;

    const/4 v2, 0x7

    invoke-interface {v0, p0, v2, v1}, Ly/c;->Y1(Ly/b;II)V

    .line 11
    iget-object v0, p0, Le/h;->a:Ly/c;

    const/16 v2, 0x8

    invoke-interface {v0, p0, v2, v1}, Ly/c;->Y1(Ly/b;II)V

    .line 12
    iget-object v0, p0, Le/h;->a:Ly/c;

    const/16 v2, 0x9

    invoke-interface {v0, p0, v2, v1}, Ly/c;->Y1(Ly/b;II)V

    .line 13
    iget-object v0, p0, Le/h;->a:Ly/c;

    const/16 v2, 0xa

    invoke-interface {v0, p0, v2, v1}, Ly/c;->Y1(Ly/b;II)V

    .line 14
    iget-object v0, p0, Le/h;->a:Ly/c;

    const/4 v2, 0x6

    invoke-interface {v0, p0, v2, v1}, Ly/c;->Y1(Ly/b;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final N2([Ljava/lang/String;I)Z
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
