.class public Lk0/cb$g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Lk0/cb;


# direct methods
.method public constructor <init>(Lk0/cb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cb$g;->a:Lk0/cb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/cb;Lk0/cb$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/cb$g;-><init>(Lk0/cb;)V

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
    iget-object v7, p0, Lk0/cb$g;->a:Lk0/cb;

    iput v10, v7, Lk0/cb;->t:I

    .line 7
    iput v10, v7, Lk0/cb;->s:I

    goto :goto_0

    .line 8
    :cond_0
    :pswitch_1
    iget-object v7, p0, Lk0/cb$g;->a:Lk0/cb;

    iput v9, v7, Lk0/cb;->t:I

    .line 9
    iput v9, v7, Lk0/cb;->s:I

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
    iget-object v7, p0, Lk0/cb$g;->a:Lk0/cb;

    iget-object v7, v7, Lk0/cb;->k:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 12
    iget-object v7, p0, Lk0/cb$g;->a:Lk0/cb;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lk0/cb;->k:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v5, p0, Lk0/cb$g;->a:Lk0/cb;

    iget v5, v5, Lk0/cb;->n:I

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eq v5, v7, :cond_3

    .line 14
    iget-object v5, p0, Lk0/cb$g;->a:Lk0/cb;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v5, Lk0/cb;->n:I

    .line 15
    :cond_3
    iget-object v3, p0, Lk0/cb$g;->a:Lk0/cb;

    iget v3, v3, Lk0/cb;->m:I

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v3, v5, :cond_4

    .line 16
    iget-object v3, p0, Lk0/cb$g;->a:Lk0/cb;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lk0/cb;->m:I

    .line 17
    iget-object v3, p0, Lk0/cb$g;->a:Lk0/cb;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v5, v1

    iput v5, v3, Lk0/cb;->q:I

    move v9, v10

    .line 18
    :cond_4
    iget-object v1, p0, Lk0/cb$g;->a:Lk0/cb;

    iget v1, v1, Lk0/cb;->o:I

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_5

    .line 19
    iget-object v1, p0, Lk0/cb$g;->a:Lk0/cb;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lk0/cb;->o:I

    move v9, v10

    .line 20
    :cond_5
    iget-object v1, p0, Lk0/cb$g;->a:Lk0/cb;

    iget v1, v1, Lk0/cb;->p:I

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 21
    iget-object v1, p0, Lk0/cb$g;->a:Lk0/cb;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lk0/cb;->p:I

    move v9, v10

    .line 22
    :cond_6
    iget-object v0, p0, Lk0/cb$g;->a:Lk0/cb;

    iget v0, v0, Lk0/cb;->r:I

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 23
    iget-object v0, p0, Lk0/cb$g;->a:Lk0/cb;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lk0/cb;->r:I

    move v9, v10

    :cond_7
    if-ne v9, v10, :cond_8

    .line 24
    iget-object p1, p0, Lk0/cb$g;->a:Lk0/cb;

    invoke-static {p1}, Lk0/cb;->g3(Lk0/cb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
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
