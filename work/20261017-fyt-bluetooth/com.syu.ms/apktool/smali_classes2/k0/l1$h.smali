.class public Lk0/l1$h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lk0/l1;


# direct methods
.method public constructor <init>(Lk0/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/l1;Lk0/l1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/l1$h;-><init>(Lk0/l1;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string p1, "ICON"

    const-string v0, "ROUTE_ALL_TIME"

    const-string v1, "CAR_DIRECTION"

    const-string v2, "SEG_REMAIN_DIS"

    const-string v3, "ROUTE_REMAIN_DIS"

    const-string v4, "CUR_ROAD_NAME"

    const-string v5, "KEY_TYPE"

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v7, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 3
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz p2, :cond_9

    .line 4
    :try_start_0
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x2723

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v7, :cond_1

    const-string v6, "EXTRA_STATE"

    .line 5
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    const/16 v7, 0x27

    if-eq v6, v7, :cond_0

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    iget-object v6, p0, Lk0/l1$h;->a:Lk0/l1;

    iput v9, v6, Lk0/l1;->B:I

    .line 7
    iput v9, v6, Lk0/l1;->A:I

    goto :goto_0

    .line 8
    :cond_0
    :pswitch_1
    iget-object v6, p0, Lk0/l1$h;->a:Lk0/l1;

    iput v8, v6, Lk0/l1;->B:I

    .line 9
    iput v8, v6, Lk0/l1;->A:I

    :goto_0
    move v8, v9

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x2711

    if-ne v6, v7, :cond_8

    .line 11
    iget-object v6, p0, Lk0/l1$h;->a:Lk0/l1;

    iget-object v6, v6, Lk0/l1;->r:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 12
    iget-object v6, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lk0/l1;->r:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v4, p0, Lk0/l1$h;->a:Lk0/l1;

    iget v4, v4, Lk0/l1;->v:I

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v4, v6, :cond_3

    .line 14
    iget-object v4, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lk0/l1;->v:I

    .line 15
    :cond_3
    iget-object v2, p0, Lk0/l1$h;->a:Lk0/l1;

    iget v2, v2, Lk0/l1;->u:I

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "ROUTE_ALL_DIS"

    if-eq v2, v4, :cond_4

    .line 16
    :try_start_1
    iget-object v2, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lk0/l1;->u:I

    .line 17
    iget-object v2, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    div-int/2addr v4, v3

    iput v4, v2, Lk0/l1;->y:I

    move v8, v9

    .line 18
    :cond_4
    iget-object v2, p0, Lk0/l1$h;->a:Lk0/l1;

    iget v2, v2, Lk0/l1;->t:I

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 19
    iget-object v2, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lk0/l1;->t:I

    move v8, v9

    .line 20
    :cond_5
    iget-object v2, p0, Lk0/l1$h;->a:Lk0/l1;

    iget v2, v2, Lk0/l1;->w:I

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 21
    iget-object v2, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lk0/l1;->w:I

    move v8, v9

    .line 22
    :cond_6
    iget-object v1, p0, Lk0/l1$h;->a:Lk0/l1;

    iget v1, v1, Lk0/l1;->x:I

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 23
    iget-object v1, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lk0/l1;->x:I

    move v8, v9

    .line 24
    :cond_7
    iget-object v0, p0, Lk0/l1$h;->a:Lk0/l1;

    iget v0, v0, Lk0/l1;->z:I

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_8

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 25
    iget-object v0, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lk0/l1;->z:I

    move v8, v9

    :cond_8
    if-ne v8, v9, :cond_9

    .line 26
    iget-object p1, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-static {p1, v8}, Lk0/l1;->h3(Lk0/l1;I)V

    .line 27
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-static {p2}, Lk0/l1;->i3(Lk0/l1;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {p1, p2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 28
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lk0/l1$h;->a:Lk0/l1;

    invoke-static {p2}, Lk0/l1;->i3(Lk0/l1;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x4e20

    invoke-static {p1, p2, v0, v1}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
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
