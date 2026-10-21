.class public Lmodule/canbus/f$p;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/f;


# direct methods
.method public constructor <init>(Lmodule/canbus/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmodule/canbus/f;Lmodule/canbus/f$f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmodule/canbus/f$p;-><init>(Lmodule/canbus/f;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const-string p1, "ICON"

    const-string v0, "ROUTE_ALL_TIME"

    const-string v1, "ROUTE_ALL_DIS"

    const-string v2, "CAR_DIRECTION"

    const-string v3, "SEG_REMAIN_DIS"

    const-string v4, "ROUTE_REMAIN_DIS"

    const-string v5, "CUR_ROAD_NAME"

    const-string v6, "KEY_TYPE"

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v8, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 3
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz p2, :cond_8

    .line 4
    :try_start_0
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x2723

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v7, v8, :cond_1

    const-string v7, "EXTRA_STATE"

    .line 5
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    const/16 v8, 0x27

    if-eq v7, v8, :cond_0

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    iget-object v7, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    iput v10, v7, Lmodule/canbus/f;->K:I

    .line 7
    iput v10, v7, Lmodule/canbus/f;->J:I

    goto :goto_0

    .line 8
    :cond_0
    :pswitch_1
    iget-object v7, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    iput v9, v7, Lmodule/canbus/f;->K:I

    .line 9
    iput v9, v7, Lmodule/canbus/f;->J:I

    :goto_0
    move v9, v10

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x2711

    if-ne v7, v8, :cond_7

    .line 11
    iget-object v7, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    iget-object v7, v7, Lmodule/canbus/f;->B:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 12
    iget-object v7, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lmodule/canbus/f;->B:Ljava/lang/String;

    .line 13
    iget-object v5, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    iget-object v7, v5, Lmodule/canbus/f;->B:Ljava/lang/String;

    invoke-static {v5, v7}, Lmodule/canbus/f;->Q3(Lmodule/canbus/f;Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object v5, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    iget v5, v5, Lmodule/canbus/f;->E:I

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eq v5, v7, :cond_3

    .line 15
    iget-object v5, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v5, Lmodule/canbus/f;->E:I

    .line 16
    :cond_3
    iget-object v3, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    iget v3, v3, Lmodule/canbus/f;->D:I

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v3, v5, :cond_4

    .line 17
    iget-object v3, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lmodule/canbus/f;->D:I

    .line 18
    iget-object v3, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v5, v1

    iput v5, v3, Lmodule/canbus/f;->H:I

    move v9, v10

    .line 19
    :cond_4
    iget-object v1, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    iget v1, v1, Lmodule/canbus/f;->F:I

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_5

    .line 20
    iget-object v1, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lmodule/canbus/f;->F:I

    move v9, v10

    .line 21
    :cond_5
    iget-object v1, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    iget v1, v1, Lmodule/canbus/f;->G:I

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 22
    iget-object v1, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lmodule/canbus/f;->G:I

    move v9, v10

    .line 23
    :cond_6
    iget-object v0, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    iget v0, v0, Lmodule/canbus/f;->I:I

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 24
    iget-object v0, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lmodule/canbus/f;->I:I

    move v9, v10

    :cond_7
    if-ne v9, v10, :cond_8

    .line 25
    iget-object p1, p0, Lmodule/canbus/f$p;->a:Lmodule/canbus/f;

    invoke-static {p1}, Lmodule/canbus/f;->R3(Lmodule/canbus/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
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
