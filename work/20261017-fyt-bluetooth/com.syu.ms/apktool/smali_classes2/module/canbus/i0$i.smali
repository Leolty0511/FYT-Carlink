.class public Lmodule/canbus/i0$i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/i0;


# direct methods
.method public constructor <init>(Lmodule/canbus/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmodule/canbus/i0;Lmodule/canbus/i0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmodule/canbus/i0$i;-><init>(Lmodule/canbus/i0;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    move-object v1, p0

    const-string v0, "ICON"

    const-string v2, "ROUTE_ALL_DIS"

    const-string v3, "ROUTE_REMAIN_TIME"

    const-string v4, "CAR_DIRECTION"

    const-string v5, "SEG_REMAIN_DIS"

    const-string v6, "KEY_TYPE"

    const-string v7, "ROUTE_REMAIN_DIS"

    const-string v8, "CUR_ROAD_NAME"

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 3
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v10, :cond_b

    .line 4
    :try_start_0
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const/16 v11, 0x2723

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v9, v11, :cond_2

    const-string v9, "EXTRA_STATE"

    .line 5
    invoke-virtual {v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_1

    const/16 v11, 0x27

    if-eq v9, v11, :cond_1

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    iget-object v9, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    iput v14, v9, Lmodule/canbus/i0;->z:I

    .line 7
    iput v14, v9, Lmodule/canbus/i0;->y:I

    :cond_0
    :goto_0
    move v13, v14

    goto :goto_1

    .line 8
    :cond_1
    :pswitch_1
    iget-object v9, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    iput v14, v9, Lmodule/canbus/i0;->z:I

    .line 9
    iput v13, v9, Lmodule/canbus/i0;->y:I

    .line 10
    sget v11, Lu0/b;->a0:I

    if-ne v11, v14, :cond_0

    const/16 v11, 0xff

    .line 11
    invoke-static {v9, v11}, Lmodule/canbus/i0;->M3(Lmodule/canbus/i0;I)I

    .line 12
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v9

    iget-object v11, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-static {v11}, Lmodule/canbus/i0;->O3(Lmodule/canbus/i0;)Ljava/lang/Runnable;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    invoke-static {v9, v11, v12, v13}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 13
    :cond_2
    :goto_1
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v9, 0x2711

    if-ne v6, v9, :cond_a

    .line 14
    iget-object v6, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    iget-object v6, v6, Lmodule/canbus/i0;->q:Ljava/lang/String;

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 15
    iget-object v6, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lmodule/canbus/i0;->q:Ljava/lang/String;

    .line 16
    :cond_3
    iget-object v6, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    iget v6, v6, Lmodule/canbus/i0;->t:I

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v6, v8, :cond_4

    .line 17
    iget-object v6, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lmodule/canbus/i0;->t:I

    move v13, v14

    .line 18
    :cond_4
    iget-object v5, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    iget v5, v5, Lmodule/canbus/i0;->s:I

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_6

    .line 19
    iget-object v5, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lmodule/canbus/i0;->s:I

    .line 20
    iget-object v5, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    iget v6, v5, Lmodule/canbus/i0;->z:I

    const/16 v8, 0x64

    if-nez v6, :cond_5

    iget v6, v5, Lmodule/canbus/i0;->s:I

    if-le v6, v8, :cond_5

    sget v6, Lu0/b;->a0:I

    if-ne v6, v14, :cond_5

    .line 21
    iput v14, v5, Lmodule/canbus/i0;->z:I

    .line 22
    iput v14, v5, Lmodule/canbus/i0;->y:I

    .line 23
    :cond_5
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v6, v8

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    div-int/2addr v6, v2

    iput v6, v5, Lmodule/canbus/i0;->w:I

    move v13, v14

    .line 24
    :cond_6
    iget-object v2, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    iget v2, v2, Lmodule/canbus/i0;->u:I

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v2, v5, :cond_7

    .line 25
    iget-object v2, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lmodule/canbus/i0;->u:I

    move v13, v14

    .line 26
    :cond_7
    iget-object v2, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    iget v2, v2, Lmodule/canbus/i0;->v:I

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v2, v4, :cond_8

    .line 27
    iget-object v2, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lmodule/canbus/i0;->v:I

    move v13, v14

    .line 28
    :cond_8
    iget-object v2, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    iget v2, v2, Lmodule/canbus/i0;->x:I

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_a

    .line 29
    iget-object v2, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lmodule/canbus/i0;->x:I

    .line 30
    iget-object v0, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    iget v2, v0, Lmodule/canbus/i0;->x:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_9

    .line 31
    iput v14, v0, Lmodule/canbus/i0;->z:I

    .line 32
    iput v14, v0, Lmodule/canbus/i0;->y:I

    :cond_9
    move v13, v14

    :cond_a
    if-ne v13, v14, :cond_b

    .line 33
    iget-object v0, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-static {v0}, Lmodule/canbus/i0;->P3(Lmodule/canbus/i0;)V

    .line 34
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v2, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-static {v2}, Lmodule/canbus/i0;->Q3(Lmodule/canbus/i0;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0, v2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 35
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v2, v1, Lmodule/canbus/i0$i;->a:Lmodule/canbus/i0;

    invoke-static {v2}, Lmodule/canbus/i0;->Q3(Lmodule/canbus/i0;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    invoke-static {v0, v2, v3, v4}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
