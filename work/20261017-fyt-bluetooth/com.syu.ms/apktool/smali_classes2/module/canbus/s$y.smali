.class public Lmodule/canbus/s$y;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "y"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/s;


# direct methods
.method public constructor <init>(Lmodule/canbus/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmodule/canbus/s;Lmodule/canbus/s$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmodule/canbus/s$y;-><init>(Lmodule/canbus/s;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string p1, "ICON"

    const-string v0, "ROUTE_ALL_TIME"

    const-string v1, "ROUTE_ALL_DIS"

    const-string v2, "CAR_DIRECTION"

    const-string v3, "SEG_REMAIN_DIS"

    const-string v4, "ROUTE_REMAIN_DIS"

    const-string v5, "NEXT_ROAD_NAME"

    const-string v6, "CUR_ROAD_NAME"

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
    iget-object v8, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    iput v11, v8, Lmodule/canbus/s;->a0:I

    .line 7
    iput v11, v8, Lmodule/canbus/s;->Z:I

    goto :goto_0

    .line 8
    :cond_0
    :pswitch_1
    iget-object v8, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    iput v10, v8, Lmodule/canbus/s;->a0:I

    .line 9
    iput v10, v8, Lmodule/canbus/s;->Z:I

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
    iget-object v8, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    iget-object v8, v8, Lmodule/canbus/s;->R:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 12
    iget-object v8, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lmodule/canbus/s;->R:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v6, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    iget-object v6, v6, Lmodule/canbus/s;->S:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 14
    iget-object v6, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lmodule/canbus/s;->S:Ljava/lang/String;

    .line 15
    :cond_3
    iget-object v5, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    iget v5, v5, Lmodule/canbus/s;->U:I

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 16
    iget-object v5, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v5, Lmodule/canbus/s;->U:I

    .line 17
    :cond_4
    iget-object v3, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    iget v3, v3, Lmodule/canbus/s;->T:I

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v3, v5, :cond_5

    .line 18
    iget-object v3, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lmodule/canbus/s;->T:I

    .line 19
    iget-object v3, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v5, v1

    iput v5, v3, Lmodule/canbus/s;->X:I

    move v10, v11

    .line 20
    :cond_5
    iget-object v1, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    iget v1, v1, Lmodule/canbus/s;->V:I

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_6

    .line 21
    iget-object v1, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lmodule/canbus/s;->V:I

    move v10, v11

    .line 22
    :cond_6
    iget-object v1, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    iget v1, v1, Lmodule/canbus/s;->W:I

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 23
    iget-object v1, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lmodule/canbus/s;->W:I

    move v10, v11

    .line 24
    :cond_7
    iget-object v0, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    iget v0, v0, Lmodule/canbus/s;->Y:I

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_8

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_8

    .line 25
    iget-object v0, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lmodule/canbus/s;->Y:I

    move v10, v11

    :cond_8
    if-ne v10, v11, :cond_9

    .line 26
    iget-object p1, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-static {p1, v11}, Lmodule/canbus/s;->z3(Lmodule/canbus/s;I)V

    .line 27
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-static {p2}, Lmodule/canbus/s;->A3(Lmodule/canbus/s;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {p1, p2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 28
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lmodule/canbus/s$y;->a:Lmodule/canbus/s;

    invoke-static {p2}, Lmodule/canbus/s;->A3(Lmodule/canbus/s;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x2710

    invoke-static {p1, p2, v0, v1}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 29
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
