.class public Lk0/x3$p;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field public final synthetic a:Lk0/x3;


# direct methods
.method public constructor <init>(Lk0/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/x3$p;->a:Lk0/x3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/x3;Lk0/x3$g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/x3$p;-><init>(Lk0/x3;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string p1, "ICON"

    const-string v0, "ROUTE_ALL_TIME"

    const-string v1, "ROUTE_ALL_DIS"

    const-string v2, "CAR_DIRECTION"

    const-string v3, "SEG_REMAIN_DIS"

    const-string v4, "ROUTE_REMAIN_DIS"

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

    if-eqz v6, :cond_7

    if-eqz p2, :cond_7

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
    iget-object v6, p0, Lk0/x3$p;->a:Lk0/x3;

    iput v9, v6, Lk0/x3;->M:I

    .line 7
    iput v9, v6, Lk0/x3;->L:I

    goto :goto_0

    .line 8
    :cond_0
    :pswitch_1
    iget-object v6, p0, Lk0/x3$p;->a:Lk0/x3;

    iput v8, v6, Lk0/x3;->M:I

    .line 9
    iput v8, v6, Lk0/x3;->L:I

    :goto_0
    move v8, v9

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x2711

    if-ne v6, v7, :cond_6

    .line 11
    iget-object v6, p0, Lk0/x3$p;->a:Lk0/x3;

    iget v6, v6, Lk0/x3;->G:I

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eq v6, v10, :cond_2

    .line 12
    iget-object v6, p0, Lk0/x3$p;->a:Lk0/x3;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v6, Lk0/x3;->G:I

    .line 13
    :cond_2
    iget-object v3, p0, Lk0/x3$p;->a:Lk0/x3;

    iget v3, v3, Lk0/x3;->F:I

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v3, v6, :cond_3

    .line 14
    iget-object v3, p0, Lk0/x3$p;->a:Lk0/x3;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lk0/x3;->F:I

    .line 15
    iget-object v3, p0, Lk0/x3$p;->a:Lk0/x3;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x64

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v6, v1

    iput v6, v3, Lk0/x3;->J:I

    move v8, v9

    .line 16
    :cond_3
    iget-object v1, p0, Lk0/x3$p;->a:Lk0/x3;

    iget v1, v1, Lk0/x3;->H:I

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 17
    iget-object v1, p0, Lk0/x3$p;->a:Lk0/x3;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lk0/x3;->H:I

    move v8, v9

    .line 18
    :cond_4
    iget-object v1, p0, Lk0/x3$p;->a:Lk0/x3;

    iget v1, v1, Lk0/x3;->I:I

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 19
    iget-object v1, p0, Lk0/x3$p;->a:Lk0/x3;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lk0/x3;->I:I

    move v8, v9

    .line 20
    :cond_5
    iget-object v0, p0, Lk0/x3$p;->a:Lk0/x3;

    iget v0, v0, Lk0/x3;->K:I

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 21
    iget-object v0, p0, Lk0/x3$p;->a:Lk0/x3;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lk0/x3;->K:I

    move v8, v9

    .line 22
    :cond_6
    iget-object p1, p0, Lk0/x3$p;->a:Lk0/x3;

    const/16 p2, 0xb

    iput p2, p1, Lk0/x3;->O:I

    if-ne v8, v9, :cond_7

    .line 23
    invoke-static {p1}, Lk0/x3;->f3(Lk0/x3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
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
