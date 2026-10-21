.class public Lk0/ud$n;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public final synthetic a:Lk0/ud;


# direct methods
.method public constructor <init>(Lk0/ud;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ud$n;->a:Lk0/ud;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/ud;Lk0/ud$e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/ud$n;-><init>(Lk0/ud;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "ICON"

    const-string v3, "ROUTE_ALL_TIME"

    const-string v4, "ROUTE_ALL_DIS"

    const-string v5, "CAR_DIRECTION"

    const-string v6, "SEG_REMAIN_DIS"

    const-string v7, "ROUTE_REMAIN_DIS"

    const-string v8, "NEXT_ROAD_NAME"

    const-string v9, "CUR_ROAD_NAME"

    const-string v10, "KEY_TYPE"

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v0, "com.syu.canbus.fb.click"

    .line 3
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    sget v0, Lu0/b;->o:I

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0xa9

    const/16 v19, 0xe3

    const/4 v13, 0x5

    if-nez v0, :cond_0

    new-array v0, v13, [I

    aput v19, v0, v14

    aput v18, v0, v15

    const/4 v13, 0x2

    aput v13, v0, v13

    aput v15, v0, v17

    aput v15, v0, v16

    .line 5
    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iput v15, v0, Lk0/ud;->C:I

    .line 7
    iput-boolean v15, v0, Lk0/ud;->D:Z

    .line 8
    invoke-static {v15}, Lk0/qt;->a(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v15, :cond_2

    .line 9
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iget v14, v0, Lk0/ud;->C:I

    if-nez v14, :cond_1

    .line 10
    iput v15, v0, Lk0/ud;->C:I

    new-array v0, v13, [I

    const/4 v13, 0x0

    aput v19, v0, v13

    aput v18, v0, v15

    const/4 v13, 0x2

    aput v13, v0, v13

    aput v15, v0, v17

    aput v15, v0, v16

    .line 11
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v13, [I

    const/4 v13, 0x0

    aput v19, v0, v13

    aput v18, v0, v15

    const/4 v14, 0x2

    aput v14, v0, v14

    aput v15, v0, v17

    aput v13, v0, v16

    .line 12
    invoke-static {v0}, Lz/k;->s([I)V

    .line 13
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iput v13, v0, Lk0/ud;->C:I

    .line 14
    iget-boolean v14, v0, Lk0/ud;->D:Z

    if-eqz v14, :cond_2

    .line 15
    iput-boolean v13, v0, Lk0/ud;->D:Z

    .line 16
    invoke-static {v13}, Lk0/qt;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const-string v0, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 18
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v12, :cond_c

    .line 19
    :try_start_1
    invoke-virtual {v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v11, 0x2723

    if-ne v0, v11, :cond_4

    const-string v0, "EXTRA_STATE"

    .line 20
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v11, 0x2

    if-eq v0, v11, :cond_3

    const/16 v11, 0x27

    if-eq v0, v11, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 21
    :pswitch_0
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iput v15, v0, Lk0/ud;->B:I

    .line 22
    iput v15, v0, Lk0/ud;->A:I

    goto :goto_1

    .line 23
    :cond_3
    :pswitch_1
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    const/4 v11, 0x0

    iput v11, v0, Lk0/ud;->B:I

    .line 24
    iput v11, v0, Lk0/ud;->A:I

    :goto_1
    move v14, v15

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v11, 0x0

    move v14, v11

    .line 25
    :goto_3
    invoke-virtual {v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v11, 0x2711

    if-ne v0, v11, :cond_b

    .line 26
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iget-object v0, v0, Lk0/ud;->s:Ljava/lang/String;

    invoke-virtual {v12, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v12, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 27
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    invoke-virtual {v12, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lk0/ud;->s:Ljava/lang/String;

    .line 28
    :cond_5
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 29
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iget-object v0, v0, Lk0/ud;->t:Ljava/lang/String;

    invoke-virtual {v12, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    invoke-virtual {v12, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lk0/ud;->t:Ljava/lang/String;

    .line 31
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iget-object v8, v0, Lk0/ud;->t:Ljava/lang/String;

    invoke-static {v0, v8}, Lk0/ud;->g3(Lk0/ud;Ljava/lang/String;)V

    .line 32
    :cond_6
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iget v0, v0, Lk0/ud;->v:I

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v0, v8, :cond_7

    .line 33
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lk0/ud;->v:I

    .line 34
    :cond_7
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iget v0, v0, Lk0/ud;->u:I

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v0, v6, :cond_8

    .line 35
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lk0/ud;->u:I

    .line 36
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x64

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    div-int/2addr v6, v4

    iput v6, v0, Lk0/ud;->y:I

    move v14, v15

    .line 37
    :cond_8
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iget v0, v0, Lk0/ud;->w:I

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v0, v4, :cond_9

    .line 38
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lk0/ud;->w:I

    move v14, v15

    .line 39
    :cond_9
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iget v0, v0, Lk0/ud;->x:I

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v0, v4, :cond_a

    .line 40
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lk0/ud;->x:I

    move v14, v15

    .line 41
    :cond_a
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    iget v0, v0, Lk0/ud;->z:I

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v0, v3, :cond_b

    invoke-virtual {v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v11, :cond_b

    .line 42
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lk0/ud;->z:I

    move v14, v15

    :cond_b
    if-ne v14, v15, :cond_c

    .line 43
    iget-object v0, v1, Lk0/ud$n;->a:Lk0/ud;

    invoke-static {v0}, Lk0/ud;->h3(Lk0/ud;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_4
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
