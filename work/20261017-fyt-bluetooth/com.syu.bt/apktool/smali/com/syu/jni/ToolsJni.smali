.class public Lcom/syu/jni/ToolsJni;
.super Ljava/lang/Object;
.source "ToolsJni.java"


# static fields
.field private static cmdCpu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, -0x1

    sput v0, Lcom/syu/jni/ToolsJni;->cmdCpu:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cmd_101_getT132Parama()[B
    .locals 5

    .prologue
    .line 362
    const/16 v3, 0x4000

    new-array v1, v3, [B

    .line 363
    .local v1, "result":[B
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 364
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v0, "outparam":Landroid/os/Bundle;
    const-string v3, "param1"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 367
    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 370
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method public static cmd_104_write_gamma([B)I
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 374
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 375
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 376
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 377
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 378
    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 381
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_105_set_bl_adj(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 385
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 386
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 387
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 388
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 392
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_109_get_bl_limit()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 396
    const/4 v3, 0x3

    new-array v1, v3, [I

    .line 397
    .local v1, "result":[I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 398
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 400
    .local v0, "outparam":Landroid/os/Bundle;
    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 401
    if-eqz v0, :cond_0

    .line 402
    const-string v3, "param0"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v5

    .line 403
    const/4 v3, 0x1

    const-string v4, "param1"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    .line 404
    const/4 v3, 0x2

    const-string v4, "param2"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    .line 408
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method public static cmd_10_little_hom(I)I
    .locals 4
    .param p0, "on"    # I

    .prologue
    .line 121
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 122
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 128
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_110_set_bl_limit(II)I
    .locals 4
    .param p0, "max"    # I
    .param p1, "min"    # I

    .prologue
    .line 412
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 413
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 414
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    const-string v2, "param1"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    const/16 v2, 0x6e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 420
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_118_get_Touchscreen_Sensitivity([B[B[B[B[B)I
    .locals 6
    .param p0, "level0"    # [B
    .param p1, "level1"    # [B
    .param p2, "level2"    # [B
    .param p3, "level3"    # [B
    .param p4, "level4"    # [B

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 426
    .local v2, "result":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v3

    .line 427
    .local v3, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v3, :cond_0

    .line 428
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 429
    .local v0, "inparam":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v1, "outparam":Landroid/os/Bundle;
    const-string v4, "touchlevelcnt"

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const-string v4, "paramalevel0"

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 432
    const-string v4, "paramalevel1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 433
    const-string v4, "paramalevel2"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 434
    const-string v4, "paramalevel3"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 435
    const-string v4, "paramalevel4"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 436
    const/16 v4, 0x76

    invoke-virtual {v3, v4, v0, v1}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 437
    if-eqz v1, :cond_0

    .line 438
    const-string v4, "touchlevel"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 441
    .end local v0    # "inparam":Landroid/os/Bundle;
    .end local v1    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v2
.end method

.method public static cmd_119_set_Touchscreen_Sensitivity(I[B[B[B[B[B)I
    .locals 6
    .param p0, "selectid"    # I
    .param p1, "level0"    # [B
    .param p2, "level1"    # [B
    .param p3, "level2"    # [B
    .param p4, "level3"    # [B
    .param p5, "level4"    # [B

    .prologue
    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, "touchlevel":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 448
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "inparam":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 451
    .local v1, "outparam":Landroid/os/Bundle;
    const-string v4, "touchlevelcnt"

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    const-string v4, "setlevel"

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string v4, "paramalevel0"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 454
    const-string v4, "paramalevel1"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 455
    const-string v4, "paramalevel2"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 456
    const-string v4, "paramalevel3"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 457
    const-string v4, "paramalevel4"

    invoke-virtual {v0, v4, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 458
    const/16 v4, 0x77

    invoke-virtual {v2, v4, v0, v1}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 459
    if-eqz v1, :cond_0

    .line 460
    const-string v4, "touchlevel"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 463
    .end local v0    # "inparam":Landroid/os/Bundle;
    .end local v1    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v3
.end method

.method public static cmd_11_video_ntsc_pal(I)I
    .locals 4
    .param p0, "on"    # I

    .prologue
    .line 132
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 133
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 139
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_12_get_usb_speed()I
    .locals 5

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "result":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 145
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "outparam":Landroid/os/Bundle;
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 148
    if-eqz v0, :cond_0

    .line 149
    const-string v3, "param0"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 152
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_13_write_usb_speed(I)I
    .locals 4
    .param p0, "speed"    # I

    .prologue
    .line 156
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 157
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 163
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_148_read_data(II)[B
    .locals 5
    .param p0, "size"    # I
    .param p1, "offset"    # I

    .prologue
    .line 467
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v3

    .line 468
    .local v3, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v3, :cond_0

    .line 470
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v1, "inparam":Landroid/os/Bundle;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v0, "Outparam":Landroid/os/Bundle;
    const-string v4, "offset"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    const-string v4, "readsize"

    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    const/16 v4, 0x94

    invoke-virtual {v3, v4, v1, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    .line 475
    const-string v4, "appdata"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 480
    .end local v0    # "Outparam":Landroid/os/Bundle;
    .end local v1    # "inparam":Landroid/os/Bundle;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_149_write_data([BI)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 484
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 485
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 486
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 487
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "writedata"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 488
    const-string v2, "offset"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    const/16 v2, 0x95

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 492
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_14_set_backcar_type(I)I
    .locals 4
    .param p0, "type"    # I

    .prologue
    .line 167
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 168
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 174
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static cmd_153_gsensor_power_onoff(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 496
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 497
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 498
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    const/16 v2, 0x99

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 503
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_15_get_backcar_type()I
    .locals 5

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "result":I
    :try_start_0
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 181
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, "outparam":Landroid/os/Bundle;
    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 184
    if-eqz v0, :cond_0

    .line 185
    const-string v3, "param0"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    .end local v0    # "outparam":Landroid/os/Bundle;
    .end local v2    # "syuJniNative":Lcom/syu/jni/SyuJniNative;
    :cond_0
    :goto_0
    return v1

    .line 187
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static cmd_160_write_rotation_angle(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 507
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 508
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 509
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 510
    .local v0, "inparam":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v1, "outparam":Landroid/os/Bundle;
    const-string v3, "param0"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    const/16 v3, 0xa0

    invoke-virtual {v2, v3, v0, v1}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 515
    .end local v0    # "inparam":Landroid/os/Bundle;
    .end local v1    # "outparam":Landroid/os/Bundle;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static cmd_16_set_led_colors(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "save"    # I

    .prologue
    .line 195
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 196
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string v2, "param1"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 203
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_17_get_led_colors()I
    .locals 5

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "result":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 209
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v0, "outparam":Landroid/os/Bundle;
    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 212
    if-eqz v0, :cond_0

    .line 213
    const-string v3, "param0"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 216
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_19_airplane_mode(I)I
    .locals 4
    .param p0, "on"    # I

    .prologue
    .line 220
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 221
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 227
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_1_backcarMirror(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 23
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 24
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 30
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_22_set_video_mode(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 231
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 232
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 238
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_24_reset_8288a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v0

    .line 243
    .local v0, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v0, :cond_0

    .line 244
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v2, v2}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 245
    :cond_0
    return-void
.end method

.method public static cmd_25_get_video_mode()I
    .locals 5

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "result":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 250
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v0, "outparam":Landroid/os/Bundle;
    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 253
    if-eqz v0, :cond_0

    .line 254
    const-string v3, "param0"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 257
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_26_get_video_signal_on()I
    .locals 5

    .prologue
    .line 261
    const/4 v1, 0x1

    .line 262
    .local v1, "result":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 263
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v0, "outparam":Landroid/os/Bundle;
    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 266
    if-eqz v0, :cond_0

    .line 267
    const-string v3, "param0"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 270
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_27_set_bl_param(III)I
    .locals 4
    .param p0, "maxbl"    # I
    .param p1, "minbl"    # I
    .param p2, "defaultbl"    # I

    .prologue
    .line 274
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 275
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param3"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    const-string v2, "param4"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    const-string v2, "param5"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 283
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_28_get_bl_param()[I
    .locals 5

    .prologue
    .line 287
    const/4 v3, 0x6

    new-array v1, v3, [I

    .line 288
    .local v1, "result":[I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 289
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v0, "outparam":Landroid/os/Bundle;
    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 292
    if-eqz v0, :cond_0

    .line 293
    const/4 v3, 0x0

    const-string v4, "param0"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 294
    const/4 v3, 0x1

    const-string v4, "param1"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 295
    const/4 v3, 0x2

    const-string v4, "param2"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 296
    const/4 v3, 0x3

    const-string v4, "param3"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 297
    const/4 v3, 0x4

    const-string v4, "param4"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 298
    const/4 v3, 0x5

    const-string v4, "param5"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 302
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method public static cmd_29_acc_state_to_bsp(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 306
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 307
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 313
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_2_soundMix(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 34
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 35
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 40
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_31_fan_en(I)V
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 317
    sget v2, Lcom/syu/jni/ToolsJni;->cmdCpu:I

    if-eq v2, p0, :cond_0

    .line 318
    sput p0, Lcom/syu/jni/ToolsJni;->cmdCpu:I

    .line 319
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 320
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    sget v3, Lcom/syu/jni/ToolsJni;->cmdCpu:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 326
    .end local v0    # "inparam":Landroid/os/Bundle;
    .end local v1    # "syuJniNative":Lcom/syu/jni/SyuJniNative;
    :cond_0
    return-void
.end method

.method public static cmd_32_get_boot_reverse_status()I
    .locals 5

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, "result":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 331
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 332
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "outparam":Landroid/os/Bundle;
    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 334
    if-eqz v0, :cond_0

    .line 335
    const-string v3, "param0"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 338
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_33_reset_videoIc(I)V
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 342
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 343
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 344
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 348
    .end local v0    # "inparam":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static cmd_3_encarption_result()I
    .locals 5

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "result":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 46
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "outparam":Landroid/os/Bundle;
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 49
    if-eqz v0, :cond_0

    .line 50
    const-string v3, "param0"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 52
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_4_audio_state()I
    .locals 5

    .prologue
    .line 56
    const/4 v1, 0x1

    .line 57
    .local v1, "result":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 58
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "outparam":Landroid/os/Bundle;
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 61
    if-eqz v0, :cond_0

    .line 62
    const-string v3, "param0"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 65
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_50_fm_ant_en(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 351
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 352
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 358
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_5_turnoff_lcdc(I)I
    .locals 4
    .param p0, "isClose"    # I

    .prologue
    .line 69
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 70
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 75
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_6_mute_amp(I)I
    .locals 4
    .param p0, "mute"    # I

    .prologue
    .line 79
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 80
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 85
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cmd_7_get_amp_state()I
    .locals 5

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "result":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 91
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "outparam":Landroid/os/Bundle;
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 94
    if-eqz v0, :cond_0

    .line 95
    const-string v3, "param0"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 98
    .end local v0    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method public static cmd_8_reset_gps()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v0

    .line 103
    .local v0, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v0, :cond_0

    .line 104
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 106
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cmd_9_poweron_screen(I)I
    .locals 4
    .param p0, "on"    # I

    .prologue
    .line 110
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v1

    .line 111
    .local v1, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "inparam":Landroid/os/Bundle;
    const-string v2, "param0"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 117
    .end local v0    # "inparam":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setVideoPos_Px5([I)I
    .locals 5
    .param p0, "vals"    # [I

    .prologue
    .line 519
    if-eqz p0, :cond_0

    array-length v3, p0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 520
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 521
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 523
    .local v0, "inparam":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 524
    .local v1, "outparam":Landroid/os/Bundle;
    const-string v3, "param0"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 525
    const/16 v3, 0x22

    invoke-virtual {v2, v3, v0, v1}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 530
    .end local v0    # "inparam":Landroid/os/Bundle;
    .end local v1    # "outparam":Landroid/os/Bundle;
    .end local v2    # "syuJniNative":Lcom/syu/jni/SyuJniNative;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static testJni()I
    .locals 6

    .prologue
    .line 9
    const/4 v2, 0x0

    .line 10
    .local v2, "result":I
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v3

    .line 11
    .local v3, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v3, :cond_0

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .local v0, "inparam":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .local v1, "outparam":Landroid/os/Bundle;
    const-string v4, "test_param"

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 16
    if-eqz v1, :cond_0

    .line 17
    const-string v4, "test_param"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    .line 19
    .end local v0    # "inparam":Landroid/os/Bundle;
    .end local v1    # "outparam":Landroid/os/Bundle;
    :cond_0
    return v2
.end method
