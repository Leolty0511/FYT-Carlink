.class public Lk0/a3$z;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z"
.end annotation


# instance fields
.field public final synthetic a:Lk0/a3;


# direct methods
.method public constructor <init>(Lk0/a3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/a3;Lk0/a3$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/a3$z;-><init>(Lk0/a3;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string p1, "ROUTE_ALL_TIME"

    const-string v0, "ROUTE_ALL_DIS"

    const-string v1, "CAR_DIRECTION"

    const-string v2, "SEG_REMAIN_DIS"

    const-string v3, "ROUNG_ABOUT_NUM"

    const-string v4, "ICON"

    const-string v5, "ROUTE_REMAIN_DIS"

    const-string v6, "NEXT_ROAD_NAME"

    const-string v7, "KEY_TYPE"

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v9, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 3
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz p2, :cond_9

    .line 4
    :try_start_0
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x2723

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v8, v9, :cond_1

    const-string v8, "EXTRA_STATE"

    .line 5
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    const/16 v9, 0x27

    if-eq v8, v9, :cond_0

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    iget-object v8, p0, Lk0/a3$z;->a:Lk0/a3;

    iput v11, v8, Lk0/a3;->j0:I

    .line 7
    iput v11, v8, Lk0/a3;->i0:I

    goto :goto_0

    .line 8
    :cond_0
    :pswitch_1
    iget-object v8, p0, Lk0/a3$z;->a:Lk0/a3;

    iput v10, v8, Lk0/a3;->j0:I

    .line 9
    iput v10, v8, Lk0/a3;->i0:I

    :goto_0
    move v10, v11

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x2711

    if-ne v8, v9, :cond_8

    .line 11
    iget-object v8, p0, Lk0/a3$z;->a:Lk0/a3;

    iget-object v8, v8, Lk0/a3;->Y:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 12
    iget-object v8, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lk0/a3;->Y:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v6, p0, Lk0/a3$z;->a:Lk0/a3;

    iget v6, v6, Lk0/a3;->a0:I

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v6, v8, :cond_3

    .line 14
    iget-object v6, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lk0/a3;->a0:I

    .line 15
    :cond_3
    iget-object v2, p0, Lk0/a3$z;->a:Lk0/a3;

    iget v2, v2, Lk0/a3;->Z:I

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v2, v6, :cond_4

    .line 16
    iget-object v2, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lk0/a3;->Z:I

    .line 17
    iget-object v2, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x64

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    div-int/2addr v6, v0

    iput v6, v2, Lk0/a3;->d0:I

    move v10, v11

    .line 18
    :cond_4
    iget-object v0, p0, Lk0/a3$z;->a:Lk0/a3;

    iget v0, v0, Lk0/a3;->b0:I

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 19
    iget-object v0, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lk0/a3;->b0:I

    move v10, v11

    .line 20
    :cond_5
    iget-object v0, p0, Lk0/a3$z;->a:Lk0/a3;

    iget v0, v0, Lk0/a3;->c0:I

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 21
    iget-object v0, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lk0/a3;->c0:I

    move v10, v11

    .line 22
    :cond_6
    iget-object p1, p0, Lk0/a3$z;->a:Lk0/a3;

    iget p1, p1, Lk0/a3;->e0:I

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_7

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v9, :cond_7

    .line 23
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle.getInt(ICON) ====33==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lk0/a3;->e0:I

    move v10, v11

    .line 25
    :cond_7
    iget-object p1, p0, Lk0/a3$z;->a:Lk0/a3;

    iget p1, p1, Lk0/a3;->g0:I

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_8

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v9, :cond_8

    .line 26
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle.getInt(ROUNG_ABOUT_NUM) ====22==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lk0/a3;->g0:I

    :cond_8
    if-ne v10, v11, :cond_9

    .line 28
    iget-object p1, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-static {p1, v11}, Lk0/a3;->D3(Lk0/a3;I)V

    .line 29
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-static {p2}, Lk0/a3;->E3(Lk0/a3;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {p1, p2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 30
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lk0/a3$z;->a:Lk0/a3;

    invoke-static {p2}, Lk0/a3;->E3(Lk0/a3;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x2710

    invoke-static {p1, p2, v0, v1}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
