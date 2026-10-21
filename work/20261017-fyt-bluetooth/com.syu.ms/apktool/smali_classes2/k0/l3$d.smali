.class public Lk0/l3$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/l3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lk0/l3;


# direct methods
.method public constructor <init>(Lk0/l3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/l3$d;->a:Lk0/l3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/l3;Lk0/l3$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/l3$d;-><init>(Lk0/l3;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const-string p1, "ICON"

    const-string v0, "ROUTE_ALL_DIS"

    const-string v1, "ROUTE_REMAIN_TIME"

    const-string v2, "CAR_DIRECTION"

    const-string v3, "SEG_REMAIN_DIS"

    const-string v4, "KEY_TYPE"

    const-string v5, "ROUTE_REMAIN_DIS"

    const-string v6, "NEXT_ROAD_NAME"

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

    if-eqz v7, :cond_a

    if-eqz p2, :cond_a

    .line 4
    :try_start_0
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x2723

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v7, v8, :cond_1

    const-string v7, "EXTRA_STATE"

    .line 5
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_0

    const/16 v8, 0x27

    if-eq v7, v8, :cond_0

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    iget-object v7, p0, Lk0/l3$d;->a:Lk0/l3;

    iput v11, v7, Lk0/l3;->C:I

    .line 7
    iput v11, v7, Lk0/l3;->B:I

    goto :goto_0

    .line 8
    :cond_0
    :pswitch_1
    iget-object v7, p0, Lk0/l3$d;->a:Lk0/l3;

    iput v11, v7, Lk0/l3;->C:I

    .line 9
    iput v10, v7, Lk0/l3;->B:I

    :goto_0
    move v10, v11

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x2711

    if-ne v4, v7, :cond_9

    .line 11
    iget-object v4, p0, Lk0/l3$d;->a:Lk0/l3;

    iget-object v4, v4, Lk0/l3;->u:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 12
    iget-object v4, p0, Lk0/l3$d;->a:Lk0/l3;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lk0/l3;->u:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v4, p0, Lk0/l3$d;->a:Lk0/l3;

    iget v4, v4, Lk0/l3;->w:I

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v4, v6, :cond_3

    .line 14
    iget-object v4, p0, Lk0/l3$d;->a:Lk0/l3;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lk0/l3;->w:I

    move v10, v11

    .line 15
    :cond_3
    iget-object v3, p0, Lk0/l3$d;->a:Lk0/l3;

    iget v3, v3, Lk0/l3;->v:I

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 16
    iget-object v3, p0, Lk0/l3$d;->a:Lk0/l3;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lk0/l3;->v:I

    .line 17
    iget-object v3, p0, Lk0/l3$d;->a:Lk0/l3;

    iget v4, v3, Lk0/l3;->C:I

    const/16 v6, 0x64

    if-nez v4, :cond_4

    iget v4, v3, Lk0/l3;->v:I

    if-le v4, v6, :cond_4

    sget v4, Lu0/b;->a0:I

    if-ne v4, v11, :cond_4

    .line 18
    iput v11, v3, Lk0/l3;->C:I

    .line 19
    iput v11, v3, Lk0/l3;->B:I

    .line 20
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    mul-int/2addr v4, v6

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    div-int/2addr v4, v0

    iput v4, v3, Lk0/l3;->z:I

    move v10, v11

    .line 21
    :cond_5
    iget-object v0, p0, Lk0/l3$d;->a:Lk0/l3;

    iget v0, v0, Lk0/l3;->x:I

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v0, v3, :cond_6

    .line 22
    iget-object v0, p0, Lk0/l3$d;->a:Lk0/l3;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lk0/l3;->x:I

    move v10, v11

    .line 23
    :cond_6
    iget-object v0, p0, Lk0/l3$d;->a:Lk0/l3;

    iget v0, v0, Lk0/l3;->y:I

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_7

    .line 24
    iget-object v0, p0, Lk0/l3$d;->a:Lk0/l3;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lk0/l3;->y:I

    move v10, v11

    .line 25
    :cond_7
    iget-object v0, p0, Lk0/l3$d;->a:Lk0/l3;

    iget v0, v0, Lk0/l3;->A:I

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 26
    iget-object v0, p0, Lk0/l3$d;->a:Lk0/l3;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lk0/l3;->A:I

    .line 27
    iget-object p1, p0, Lk0/l3$d;->a:Lk0/l3;

    iget p2, p1, Lk0/l3;->A:I

    if-lt p2, v9, :cond_8

    .line 28
    iput v11, p1, Lk0/l3;->C:I

    .line 29
    iput v11, p1, Lk0/l3;->B:I

    :cond_8
    move v10, v11

    :cond_9
    if-ne v10, v11, :cond_a

    .line 30
    iget-object p1, p0, Lk0/l3$d;->a:Lk0/l3;

    invoke-static {p1}, Lk0/l3;->g3(Lk0/l3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
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
