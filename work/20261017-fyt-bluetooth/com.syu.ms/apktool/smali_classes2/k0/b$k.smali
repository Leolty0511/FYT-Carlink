.class public Lk0/b$k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public final synthetic a:Lk0/b;


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/b$k;->a:Lk0/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/b;Lk0/b$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/b$k;-><init>(Lk0/b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "ICON"

    const-string v2, "ROUTE_ALL_DIS"

    const-string v3, "ROUTE_REMAIN_TIME"

    const-string v4, "CAR_DIRECTION"

    const-string v5, "SEG_REMAIN_DIS"

    const-string v6, "KEY_TYPE"

    const-string v7, "ROUTE_REMAIN_DIS"

    const-string v8, "NEXT_ROAD_NAME"

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

    if-eqz v9, :cond_c

    if-eqz v10, :cond_c

    .line 4
    :try_start_0
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const/16 v11, 0x2723

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ne v9, v11, :cond_3

    const-string v9, "EXTRA_STATE"

    .line 5
    invoke-virtual {v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v14, :cond_1

    const/16 v11, 0x27

    if-eq v9, v11, :cond_1

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    iget-object v9, v1, Lk0/b$k;->a:Lk0/b;

    iput v15, v9, Lk0/b;->D:I

    .line 7
    iput v15, v9, Lk0/b;->C:I

    :cond_0
    :goto_0
    move v13, v15

    goto :goto_1

    .line 8
    :cond_1
    :pswitch_1
    iget-object v9, v1, Lk0/b$k;->a:Lk0/b;

    iput v15, v9, Lk0/b;->D:I

    .line 9
    iput v13, v9, Lk0/b;->C:I

    .line 10
    sget v11, Lk0/nt;->c:I

    if-eq v11, v14, :cond_2

    if-ne v11, v12, :cond_0

    .line 11
    :cond_2
    sget v11, Lu0/b;->a0:I

    if-ne v11, v15, :cond_0

    const/16 v11, 0xff

    .line 12
    invoke-static {v9, v11}, Lk0/b;->i3(Lk0/b;I)I

    .line 13
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v9

    iget-object v11, v1, Lk0/b$k;->a:Lk0/b;

    invoke-static {v11}, Lk0/b;->j3(Lk0/b;)Ljava/lang/Runnable;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    invoke-static {v9, v11, v12, v13}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v9, 0x2711

    if-ne v6, v9, :cond_b

    .line 15
    iget-object v6, v1, Lk0/b$k;->a:Lk0/b;

    iget-object v6, v6, Lk0/b;->v:Ljava/lang/String;

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 16
    iget-object v6, v1, Lk0/b$k;->a:Lk0/b;

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lk0/b;->v:Ljava/lang/String;

    .line 17
    iget-object v6, v1, Lk0/b$k;->a:Lk0/b;

    const/16 v8, 0xe5

    iget-object v9, v6, Lk0/b;->v:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Lk0/b;->n3(Lk0/b;ILjava/lang/String;)V

    .line 18
    :cond_4
    iget-object v6, v1, Lk0/b$k;->a:Lk0/b;

    iget v6, v6, Lk0/b;->x:I

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v6, v8, :cond_5

    .line 19
    iget-object v6, v1, Lk0/b$k;->a:Lk0/b;

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lk0/b;->x:I

    move v13, v15

    .line 20
    :cond_5
    iget-object v5, v1, Lk0/b$k;->a:Lk0/b;

    iget v5, v5, Lk0/b;->w:I

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 21
    iget-object v5, v1, Lk0/b$k;->a:Lk0/b;

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lk0/b;->w:I

    .line 22
    iget-object v5, v1, Lk0/b$k;->a:Lk0/b;

    iget v6, v5, Lk0/b;->D:I

    const/16 v8, 0x64

    if-nez v6, :cond_6

    iget v6, v5, Lk0/b;->w:I

    if-le v6, v8, :cond_6

    sget v6, Lu0/b;->a0:I

    if-ne v6, v15, :cond_6

    .line 23
    iput v15, v5, Lk0/b;->D:I

    .line 24
    iput v15, v5, Lk0/b;->C:I

    .line 25
    :cond_6
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v6, v8

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    div-int/2addr v6, v2

    iput v6, v5, Lk0/b;->A:I

    move v13, v15

    .line 26
    :cond_7
    iget-object v2, v1, Lk0/b$k;->a:Lk0/b;

    iget v2, v2, Lk0/b;->y:I

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v2, v5, :cond_8

    .line 27
    iget-object v2, v1, Lk0/b$k;->a:Lk0/b;

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lk0/b;->y:I

    move v13, v15

    .line 28
    :cond_8
    iget-object v2, v1, Lk0/b$k;->a:Lk0/b;

    iget v2, v2, Lk0/b;->z:I

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v2, v4, :cond_9

    .line 29
    iget-object v2, v1, Lk0/b$k;->a:Lk0/b;

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lk0/b;->z:I

    move v13, v15

    .line 30
    :cond_9
    iget-object v2, v1, Lk0/b$k;->a:Lk0/b;

    iget v2, v2, Lk0/b;->B:I

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_b

    .line 31
    iget-object v2, v1, Lk0/b$k;->a:Lk0/b;

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lk0/b;->B:I

    .line 32
    iget-object v0, v1, Lk0/b$k;->a:Lk0/b;

    iget v2, v0, Lk0/b;->B:I

    if-lt v2, v14, :cond_a

    .line 33
    iput v15, v0, Lk0/b;->D:I

    .line 34
    iput v15, v0, Lk0/b;->C:I

    :cond_a
    move v13, v15

    :cond_b
    if-ne v13, v15, :cond_c

    .line 35
    iget-object v0, v1, Lk0/b$k;->a:Lk0/b;

    invoke-static {v0}, Lk0/b;->o3(Lk0/b;)V

    .line 36
    sget v0, Lk0/nt;->c:I

    if-eq v0, v14, :cond_c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    .line 37
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v2, v1, Lk0/b$k;->a:Lk0/b;

    invoke-static {v2}, Lk0/b;->p3(Lk0/b;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0, v2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 38
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v2, v1, Lk0/b$k;->a:Lk0/b;

    invoke-static {v2}, Lk0/b;->p3(Lk0/b;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    invoke-static {v0, v2, v3, v4}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
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
