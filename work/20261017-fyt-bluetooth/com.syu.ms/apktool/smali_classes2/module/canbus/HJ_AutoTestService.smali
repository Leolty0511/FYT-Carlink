.class public Lmodule/canbus/HJ_AutoTestService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v1, 0x46

    if-gt p1, v1, :cond_1

    :goto_0
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    return p1

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v1, 0x66

    if-gt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;II)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-array v1, v0, [B

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 4
    aget-byte v5, v2, v4

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x7

    .line 5
    new-array v4, v2, [I

    const/16 v5, -0x1d

    .line 6
    aput v5, v4, v3

    const/16 v5, 0x55

    const/4 v6, 0x1

    .line 7
    aput v5, v4, v6

    const/16 v5, -0x56

    const/4 v6, 0x2

    .line 8
    aput v5, v4, v6

    add-int/lit8 v5, v0, 0x3

    const/4 v7, 0x3

    .line 9
    aput v5, v4, v7

    const/4 v5, 0x4

    int-to-byte p2, p2

    .line 10
    aput p2, v4, v5

    const/4 p2, 0x5

    int-to-byte p3, p3

    .line 11
    aput p3, v4, p2

    move p2, v3

    :goto_1
    const/4 p3, 0x6

    if-ge p2, v0, :cond_2

    add-int/2addr p3, p2

    .line 12
    aget-byte v5, v1, p2

    aput v5, v4, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p2, v0, 0x6

    if-ge v6, p2, :cond_3

    .line 13
    aget p2, v4, v6

    xor-int/2addr v3, p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 14
    :cond_3
    aput v3, v4, p2

    .line 15
    invoke-static {v4}, Lz/k;->s([I)V

    .line 16
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BT ** num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  ** "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v4, p3, v2}, Ln1/b;->y(Ljava/lang/String;[III)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_a

    const-string v2, "from"

    .line 1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoTest from = null Action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln1/b;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoTest from = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln1/b;->w(Ljava/lang/String;)V

    :goto_0
    const-string v3, "radio"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xa

    const-string v5, "test"

    const/16 v8, 0xaa

    const/16 v9, 0xe3

    const/16 v10, 0x55

    const/4 v14, 0x3

    const/4 v15, 0x6

    const/4 v6, 0x2

    const/16 v16, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    const-string v2, "  0000  str_from == radio"

    .line 6
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "radio_band"

    .line 7
    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const v3, 0xffff

    if-le v2, v3, :cond_1

    move v2, v14

    goto :goto_1

    :cond_1
    move/from16 v2, v16

    :goto_1
    const-string v3, "radio_freq"

    .line 8
    invoke-virtual {v1, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v7, "radio_type"

    .line 9
    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  1111 iRadioBand ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  iRadioFreq = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " iRadioType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit16 v5, v7, 0xec

    xor-int/2addr v5, v2

    shr-int/lit8 v12, v3, 0x8

    and-int/lit16 v12, v12, 0xff

    xor-int/2addr v5, v12

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v5, v3

    new-array v4, v4, [I

    aput v9, v4, v11

    aput v10, v4, v16

    aput v8, v4, v6

    aput v15, v4, v14

    const/16 v6, 0x40

    const/4 v8, 0x4

    aput v6, v4, v8

    const/4 v6, 0x5

    aput v7, v4, v6

    aput v2, v4, v15

    const/4 v2, 0x7

    aput v12, v4, v2

    const/16 v2, 0x8

    aput v3, v4, v2

    const/16 v2, 0x9

    aput v5, v4, v2

    .line 11
    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_2
    const-string v3, "set"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "  0000  str_from == set"

    .line 13
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SetInfo"

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_a

    .line 15
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    array-length v4, v2

    const-string v5, " 000 111 set SetInfo:"

    invoke-virtual {v3, v5, v2, v11, v4}, Ln1/b;->y(Ljava/lang/String;[III)V

    .line 16
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_3
    const-string v3, "bt"

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "data1"

    const-string v7, "data0"

    if-eqz v3, :cond_7

    .line 18
    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 19
    invoke-virtual {v1, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "str0"

    .line 20
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***  bt_recv  b0 = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " , b1 = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ln1/b;->w(Ljava/lang/String;)V

    const/16 v5, 0x42

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 22
    :pswitch_0
    invoke-virtual {v0, v4, v5, v2}, Lmodule/canbus/HJ_AutoTestService;->b(Ljava/lang/String;II)V

    goto/16 :goto_4

    :pswitch_1
    if-nez v4, :cond_4

    goto/16 :goto_4

    :cond_4
    const/16 v2, 0xd

    new-array v2, v2, [I

    const/16 v3, -0x1d

    aput v3, v2, v11

    aput v10, v2, v16

    const/16 v3, -0x56

    aput v3, v2, v6

    const/16 v3, 0x9

    aput v3, v2, v14

    const/4 v3, 0x4

    aput v5, v2, v3

    const/4 v3, 0x5

    aput v14, v2, v3

    move v3, v11

    :goto_2
    if-ge v3, v15, :cond_5

    add-int v5, v15, v3

    mul-int/lit8 v7, v3, 0x2

    .line 23
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Lmodule/canbus/HJ_AutoTestService;->a(C)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Lmodule/canbus/HJ_AutoTestService;->a(C)I

    move-result v7

    add-int/2addr v8, v7

    aput v8, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/16 v3, 0xc

    if-ge v6, v3, :cond_6

    .line 24
    aget v3, v2, v6

    xor-int/2addr v11, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    aput v11, v2, v3

    .line 25
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_4

    :pswitch_2
    xor-int/lit16 v4, v2, 0xec

    xor-int/2addr v4, v3

    const/16 v7, 0x8

    new-array v7, v7, [I

    aput v9, v7, v11

    aput v10, v7, v16

    aput v8, v7, v6

    const/4 v6, 0x4

    aput v6, v7, v14

    aput v5, v7, v6

    const/4 v5, 0x5

    aput v2, v7, v5

    aput v3, v7, v15

    const/4 v2, 0x7

    aput v4, v7, v2

    .line 26
    invoke-static {v7}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_7
    const-string v3, "media"

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 28
    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 29
    invoke-virtual {v1, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "data2"

    .line 30
    invoke-virtual {v1, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "data3"

    .line 31
    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/16 v12, 0x46

    if-ne v2, v12, :cond_8

    const/4 v12, 0x5

    if-ne v3, v12, :cond_8

    xor-int/lit16 v13, v2, 0xaf

    xor-int/2addr v13, v3

    xor-int/2addr v13, v5

    xor-int/2addr v13, v7

    const/16 v4, 0x9

    new-array v15, v4, [I

    aput v9, v15, v11

    aput v10, v15, v16

    aput v8, v15, v6

    aput v12, v15, v14

    const/4 v4, 0x4

    aput v2, v15, v4

    aput v3, v15, v12

    const/4 v4, 0x6

    aput v5, v15, v4

    const/4 v4, 0x7

    aput v7, v15, v4

    const/16 v4, 0x8

    aput v13, v15, v4

    .line 32
    invoke-static {v15}, Lz/k;->s([I)V

    :cond_8
    const/16 v4, 0x41

    if-ne v2, v4, :cond_a

    if-ne v3, v6, :cond_9

    xor-int/lit16 v4, v2, 0xac

    xor-int/2addr v4, v3

    xor-int/2addr v4, v11

    xor-int/2addr v4, v5

    xor-int/2addr v4, v7

    const/16 v12, 0xa

    new-array v12, v12, [I

    aput v9, v12, v11

    aput v10, v12, v16

    aput v8, v12, v6

    const/4 v6, 0x6

    aput v6, v12, v14

    const/4 v8, 0x4

    aput v2, v12, v8

    const/4 v2, 0x5

    aput v3, v12, v2

    aput v11, v12, v6

    const/4 v2, 0x7

    aput v5, v12, v2

    const/16 v13, 0x8

    aput v7, v12, v13

    const/16 v2, 0x9

    aput v4, v12, v2

    .line 33
    invoke-static {v12}, Lz/k;->s([I)V

    goto :goto_4

    :cond_9
    const/16 v13, 0x8

    xor-int/lit16 v4, v2, 0xae

    xor-int/2addr v4, v3

    xor-int/2addr v4, v5

    new-array v7, v13, [I

    aput v9, v7, v11

    aput v10, v7, v16

    aput v8, v7, v6

    const/4 v6, 0x4

    aput v6, v7, v14

    aput v2, v7, v6

    const/4 v2, 0x5

    aput v3, v7, v2

    const/4 v2, 0x6

    aput v5, v7, v2

    const/4 v2, 0x7

    aput v4, v7, v2

    .line 34
    invoke-static {v7}, Lz/k;->s([I)V

    .line 35
    :cond_a
    :goto_4
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
