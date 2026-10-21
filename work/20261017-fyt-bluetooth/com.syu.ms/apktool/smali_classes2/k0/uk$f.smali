.class public Lk0/uk$f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/uk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lk0/uk;


# direct methods
.method public constructor <init>(Lk0/uk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/uk$f;->a:Lk0/uk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/uk;Lk0/uk$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/uk$f;-><init>(Lk0/uk;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string p1, "ROUTE_ALL_DIS"

    const-string v0, "ICON"

    const-string v1, "ROUTE_REMAIN_TIME"

    const-string v2, "SEG_REMAIN_DIS"

    const-string v3, "KEY_TYPE"

    const-string v4, "ROUTE_REMAIN_DIS"

    const-string v5, "NEXT_ROAD_NAME"

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
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x2723

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v6, v7, :cond_1

    const-string v6, "EXTRA_STATE"

    .line 5
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_0

    const/16 v7, 0x27

    if-eq v6, v7, :cond_0

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    iget-object v6, p0, Lk0/uk$f;->a:Lk0/uk;

    iput v9, v6, Lk0/uk;->p:I

    goto :goto_0

    .line 7
    :cond_0
    :pswitch_1
    iget-object v6, p0, Lk0/uk$f;->a:Lk0/uk;

    iput v9, v6, Lk0/uk;->p:I

    :goto_0
    move v6, v9

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x0

    .line 8
    :goto_2
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x2711

    if-ne v3, v7, :cond_8

    .line 9
    iget-object v3, p0, Lk0/uk$f;->a:Lk0/uk;

    iget-object v3, v3, Lk0/uk;->j:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "LG"

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NEXT_ROAD_NAME = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lk0/uk$f;->a:Lk0/uk;

    iget-object v10, v10, Lk0/uk;->j:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v3, p0, Lk0/uk$f;->a:Lk0/uk;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lk0/uk;->j:Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lk0/uk$f;->a:Lk0/uk;

    const/16 v5, 0xe5

    iget-object v7, v3, Lk0/uk;->j:Ljava/lang/String;

    invoke-static {v3, v5, v7}, Lk0/uk;->e3(Lk0/uk;ILjava/lang/String;)V

    .line 13
    :cond_2
    iget-object v3, p0, Lk0/uk$f;->a:Lk0/uk;

    iget v3, v3, Lk0/uk;->l:I

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v3, v5, :cond_3

    .line 14
    iget-object v3, p0, Lk0/uk$f;->a:Lk0/uk;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lk0/uk;->l:I

    move v6, v9

    .line 15
    :cond_3
    iget-object v2, p0, Lk0/uk$f;->a:Lk0/uk;

    iget v2, v2, Lk0/uk;->k:I

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 16
    iget-object v2, p0, Lk0/uk$f;->a:Lk0/uk;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lk0/uk;->k:I

    .line 17
    iget-object v2, p0, Lk0/uk$f;->a:Lk0/uk;

    iget v3, v2, Lk0/uk;->p:I

    const/16 v5, 0x64

    if-nez v3, :cond_4

    iget v3, v2, Lk0/uk;->k:I

    if-le v3, v5, :cond_4

    sget v3, Lu0/b;->a0:I

    if-ne v3, v9, :cond_4

    .line 18
    iput v9, v2, Lk0/uk;->p:I

    .line 19
    :cond_4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/2addr v3, v5

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    div-int/2addr v3, p1

    iput v3, v2, Lk0/uk;->n:I

    move v6, v9

    .line 20
    :cond_5
    iget-object p1, p0, Lk0/uk$f;->a:Lk0/uk;

    iget p1, p1, Lk0/uk;->m:I

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_6

    .line 21
    iget-object p1, p0, Lk0/uk$f;->a:Lk0/uk;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lk0/uk;->m:I

    move v6, v9

    .line 22
    :cond_6
    iget-object p1, p0, Lk0/uk$f;->a:Lk0/uk;

    iget p1, p1, Lk0/uk;->o:I

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq p1, v1, :cond_8

    .line 23
    iget-object p1, p0, Lk0/uk$f;->a:Lk0/uk;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lk0/uk;->o:I

    .line 24
    iget-object p1, p0, Lk0/uk$f;->a:Lk0/uk;

    iget p2, p1, Lk0/uk;->o:I

    if-lt p2, v8, :cond_7

    .line 25
    iput v9, p1, Lk0/uk;->p:I

    :cond_7
    move v6, v9

    :cond_8
    if-ne v6, v9, :cond_9

    .line 26
    iget-object p1, p0, Lk0/uk$f;->a:Lk0/uk;

    invoke-static {p1}, Lk0/uk;->f3(Lk0/uk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_3
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
