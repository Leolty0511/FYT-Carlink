.class public Lk0/xa$i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic a:Lk0/xa;


# direct methods
.method public constructor <init>(Lk0/xa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xa$i;->a:Lk0/xa;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/xa;Lk0/xa$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/xa$i;-><init>(Lk0/xa;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string p1, "ROUTE_ALL_DIS"

    const-string v0, "ICON"

    const-string v1, "ROUTE_ALL_TIME"

    const-string v2, "CAR_DIRECTION"

    const-string v3, "SEG_REMAIN_DIS"

    const-string v4, "ROUTE_REMAIN_DIS"

    const-string v5, "CUR_ROAD_NAME"

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

    if-eqz v6, :cond_7

    if-eqz p2, :cond_7

    .line 4
    :try_start_0
    iget-object v6, p0, Lk0/xa$i;->a:Lk0/xa;

    iget-object v6, v6, Lk0/xa;->w:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v6, "LG"

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CUR_ROAD_NAME = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lk0/xa$i;->a:Lk0/xa;

    iget-object v8, v8, Lk0/xa;->w:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v6, p0, Lk0/xa$i;->a:Lk0/xa;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lk0/xa;->w:Ljava/lang/String;

    .line 7
    iget-object v5, p0, Lk0/xa$i;->a:Lk0/xa;

    const/16 v6, 0x95

    iget-object v7, v5, Lk0/xa;->w:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lk0/xa;->i3(Lk0/xa;ILjava/lang/String;)V

    .line 8
    :cond_0
    iget-object v5, p0, Lk0/xa$i;->a:Lk0/xa;

    iget v5, v5, Lk0/xa;->y:I

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_1

    .line 9
    iget-object v5, p0, Lk0/xa$i;->a:Lk0/xa;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v5, Lk0/xa;->y:I

    move v3, v8

    goto :goto_0

    :cond_1
    move v3, v7

    .line 10
    :goto_0
    iget-object v5, p0, Lk0/xa$i;->a:Lk0/xa;

    iget v5, v5, Lk0/xa;->x:I

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 11
    iget-object v3, p0, Lk0/xa$i;->a:Lk0/xa;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lk0/xa;->x:I

    .line 12
    iget-object v3, p0, Lk0/xa$i;->a:Lk0/xa;

    iget v5, v3, Lk0/xa;->x:I

    if-nez v5, :cond_2

    .line 13
    iput v7, v3, Lk0/xa;->E:I

    .line 14
    iput v7, v3, Lk0/xa;->D:I

    goto :goto_1

    .line 15
    :cond_2
    iput v8, v3, Lk0/xa;->E:I

    .line 16
    iput v8, v3, Lk0/xa;->D:I

    .line 17
    :goto_1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    div-int/2addr v5, p1

    iput v5, v3, Lk0/xa;->B:I

    move v3, v8

    .line 18
    :cond_3
    iget-object p1, p0, Lk0/xa$i;->a:Lk0/xa;

    iget p1, p1, Lk0/xa;->z:I

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq p1, v4, :cond_4

    .line 19
    iget-object p1, p0, Lk0/xa$i;->a:Lk0/xa;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lk0/xa;->z:I

    move v3, v8

    .line 20
    :cond_4
    iget-object p1, p0, Lk0/xa$i;->a:Lk0/xa;

    iget p1, p1, Lk0/xa;->A:I

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    .line 21
    iget-object p1, p0, Lk0/xa$i;->a:Lk0/xa;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lk0/xa;->A:I

    move v3, v8

    .line 22
    :cond_5
    iget-object p1, p0, Lk0/xa$i;->a:Lk0/xa;

    iget p1, p1, Lk0/xa;->C:I

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq p1, v1, :cond_6

    .line 23
    iget-object p1, p0, Lk0/xa$i;->a:Lk0/xa;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lk0/xa;->C:I

    move v3, v8

    :cond_6
    if-ne v3, v8, :cond_7

    .line 24
    iget-object p1, p0, Lk0/xa$i;->a:Lk0/xa;

    invoke-static {p1}, Lk0/xa;->j3(Lk0/xa;)V

    .line 25
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lk0/xa$i;->a:Lk0/xa;

    invoke-static {p2}, Lk0/xa;->k3(Lk0/xa;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {p1, p2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 26
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lk0/xa$i;->a:Lk0/xa;

    invoke-static {p2}, Lk0/xa;->k3(Lk0/xa;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x4e20

    invoke-static {p1, p2, v0, v1}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method
