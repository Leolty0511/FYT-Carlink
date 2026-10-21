.class public Lchip/Chip$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$c;->a:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget v0, Lu0/b;->n4:I

    const-string/jumbo v1, "wake"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    const-string v0, "persist.sys.syu.thirdplayer"

    const-string v4, ""

    .line 2
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, La/i;->u(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget v0, Lu0/b;->J0:I

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==============================>>>>   1111111     sleepAirplane:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lchip/Chip$c;->a:Lchip/Chip;

    invoke-virtual {v0}, Lchip/Chip;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lchip/Chip$c;->a:Lchip/Chip;

    invoke-virtual {v0, v3}, Lchip/Chip;->g(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lchip/Chip$c;->a:Lchip/Chip;

    invoke-virtual {v0, v2}, Lchip/Chip;->H(Z)V

    goto/16 :goto_2

    .line 10
    :cond_3
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v4, p0, Lchip/Chip$c;->a:Lchip/Chip;

    iget-object v4, v4, Lchip/Chip;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    sget v0, Lu0/b;->g:I

    if-eq v0, v3, :cond_4

    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v4, p0, Lchip/Chip$c;->a:Lchip/Chip;

    iget-object v4, v4, Lchip/Chip;->S:Ljava/lang/Runnable;

    const-wide/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==============================>>>>   1111111     time:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lchip/Chip$c;->a:Lchip/Chip;

    invoke-virtual {v0}, Lchip/Chip;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    const/16 v0, 0x2710

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    if-lez v0, :cond_6

    .line 15
    iget-object v1, p0, Lchip/Chip$c;->a:Lchip/Chip;

    iget-object v1, v1, Lchip/Chip;->K:Landroid/os/Handler;

    if-eqz v1, :cond_8

    new-instance v2, Lchip/Chip$c$a;

    invoke-direct {v2, p0}, Lchip/Chip$c$a;-><init>(Lchip/Chip$c;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_6
    const-string v0, "==============================>>>>   222222"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lchip/Chip$c;->a:Lchip/Chip;

    invoke-virtual {v0, v2}, Lchip/Chip;->g(I)V

    .line 18
    iget-object v0, p0, Lchip/Chip$c;->a:Lchip/Chip;

    invoke-virtual {v0, v3}, Lchip/Chip;->H(Z)V

    goto :goto_2

    .line 19
    :cond_7
    iget-object v0, p0, Lchip/Chip$c;->a:Lchip/Chip;

    invoke-virtual {v0, v3}, Lchip/Chip;->H(Z)V

    :cond_8
    :goto_2
    return-void
.end method
