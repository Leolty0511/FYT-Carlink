.class public Ln0/u$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Ln0/u;


# direct methods
.method public constructor <init>(Ln0/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/u$c;->a:Ln0/u;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ln0/u;Ln0/u$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ln0/u$c;-><init>(Ln0/u;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.mxnavi.mxnavi.CMD_NAVI_STARTED"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln0/u$c;->a:Ln0/u;

    invoke-static {v0}, Ln0/u;->S3(Ln0/u;)V

    :cond_0
    const-string v0, "com.mxnavi.mxnavi.MXNAVI_SWTICH_TO_CTL"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 5
    sget p1, Lu0/b;->D:I

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lo1/u;->q()V

    goto/16 :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "com.mxnavi.mxnavi.MXNAVI_CHANGE_SRC_TYPE"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v0, :cond_8

    const-string p1, "SrcType"

    .line 10
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v5, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v4, :cond_5

    goto/16 :goto_0

    .line 11
    :cond_5
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v2}, Lu0/h;->c(I)V

    goto/16 :goto_0

    .line 12
    :cond_6
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v3}, Lu0/h;->c(I)V

    .line 13
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    new-instance p2, Ln0/u$c$a;

    invoke-direct {p2, p0}, Ln0/u$c$a;-><init>(Ln0/u$c;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 14
    :cond_7
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v1}, Lu0/h;->c(I)V

    .line 15
    sget p1, Lu0/b;->D:I

    invoke-static {p1}, La/i;->L(I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "com.mxnavi.mxnavi.MXNAVI_CHANGE_RADIO_FREQ"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/16 v0, 0x0

    const-string p1, "RadioFreq"

    .line 17
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    .line 18
    sget p2, Lu0/b;->D:I

    if-ne p2, v3, :cond_18

    .line 19
    sget p2, Lw0/d;->h:I

    const/high16 v0, 0x10000

    if-lt p2, v0, :cond_9

    const/high16 v0, 0x20000

    if-ge p2, v0, :cond_9

    .line 20
    div-int/lit8 p1, p1, 0xa

    .line 21
    :cond_9
    sget-object p2, Lw0/d;->b:Lw0/g;

    invoke-interface {p2, v3, p1}, Lw0/g;->l(II)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "com.mxnavi.mxnavi.MXNAVI_PLAY_INFO"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "PlayInfo"

    .line 23
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 24
    sget p2, Lu0/b;->D:I

    if-eqz p1, :cond_14

    if-eq p1, v3, :cond_10

    if-eq p1, v5, :cond_d

    if-eq p1, v4, :cond_b

    goto :goto_0

    :cond_b
    if-eq p2, v3, :cond_c

    goto :goto_0

    .line 25
    :cond_c
    sget-object p1, Lw0/d;->b:Lw0/g;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lw0/g;->x(I)V

    goto :goto_0

    :cond_d
    if-eq p2, v2, :cond_f

    if-eq p2, v1, :cond_e

    goto :goto_0

    .line 26
    :cond_e
    invoke-static {p2}, La/i;->M(I)V

    goto :goto_0

    .line 27
    :cond_f
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->p()V

    goto :goto_0

    :cond_10
    if-eq p2, v3, :cond_13

    if-eq p2, v2, :cond_12

    if-eq p2, v1, :cond_11

    goto :goto_0

    .line 28
    :cond_11
    invoke-static {p2}, La/i;->N(I)V

    goto :goto_0

    .line 29
    :cond_12
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->i()V

    goto :goto_0

    .line 30
    :cond_13
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->g()V

    goto :goto_0

    :cond_14
    if-eq p2, v3, :cond_17

    if-eq p2, v2, :cond_16

    if-eq p2, v1, :cond_15

    goto :goto_0

    .line 31
    :cond_15
    invoke-static {p2}, La/i;->J(I)V

    goto :goto_0

    .line 32
    :cond_16
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->V()V

    goto :goto_0

    .line 33
    :cond_17
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->c()V

    :cond_18
    :goto_0
    return-void
.end method
