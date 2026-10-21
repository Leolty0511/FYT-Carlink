.class public Lcom/lsec/core/util/share/ShareHandler;
.super Ljava/lang/Object;
.source "ShareHandler.java"


# static fields
.field public static final KEY_EXT_DVR_TYPE:I = 0x8

.field public static final KEY_MODULE_ID_AMP:I = 0x5

.field public static final KEY_MODULE_ID_DVD:I = 0x4

.field public static final KEY_MODULE_ID_OBD:I = 0x7

.field public static final KEY_MODULE_ID_SOUND:I = 0x3

.field public static final KEY_MODULE_ID_TPMS:I = 0x6

.field public static final KEY_TV_TYPE:I = 0x0

.field public static final KEY_USE_AMP_EQ:I = 0x2

.field public static final KEY_USE_CAR_EQ:I = 0x1

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "content://com.syu.ms.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lsec/core/util/share/ShareHandler;->URI:Landroid/net/Uri;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomerID()I
    .locals 2

    .prologue
    .line 53
    const-string v0, "ro.build.fytmanufacturer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInSimIccid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    const-string v0, "ro.sim2.iccid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Landroid/content/ContentResolver;II)I
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # I
    .param p2, "valueIfNotFound"    # I

    .prologue
    const/4 v2, 0x0

    .line 27
    move v8, p2

    .line 28
    .local v8, "result":I
    if-nez p0, :cond_0

    move v9, v8

    .end local v8    # "result":I
    .local v9, "result":I
    move v10, v8

    .line 49
    .end local v9    # "result":I
    .local v10, "result":I
    :goto_0
    return v10

    .line 31
    .end local v10    # "result":I
    .restart local v8    # "result":I
    :cond_0
    sget-object v1, Lcom/lsec/core/util/share/ShareHandler;->URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 32
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    move v9, v8

    .end local v8    # "result":I
    .restart local v9    # "result":I
    move v10, v8

    .line 33
    .end local v9    # "result":I
    .restart local v10    # "result":I
    goto :goto_0

    .line 36
    .end local v10    # "result":I
    .restart local v8    # "result":I
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 42
    :cond_2
    if-eqz v6, :cond_3

    .line 43
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_3
    :goto_1
    move v9, v8

    .end local v8    # "result":I
    .restart local v9    # "result":I
    move v10, v8

    .line 49
    .end local v9    # "result":I
    .restart local v10    # "result":I
    goto :goto_0

    .line 38
    .end local v10    # "result":I
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 39
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    if-eqz v6, :cond_3

    .line 43
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 44
    :catch_1
    move-exception v7

    .line 45
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 40
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 42
    if-eqz v6, :cond_4

    .line 43
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 47
    :cond_4
    :goto_2
    throw v0

    .line 44
    :catch_2
    move-exception v7

    .line 45
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 44
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 45
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getUIID()I
    .locals 2

    .prologue
    .line 202
    const-string v0, "ro.fyt.uiid"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVerAngle()I
    .locals 2

    .prologue
    .line 198
    const-string v0, "ro.sf.hwrotation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static is1280Split()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 182
    const-string v1, "ro.fyt.ccbwin"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is2009(I)Z
    .locals 1
    .param p0, "idPlatForm"    # I

    .prologue
    .line 69
    const/16 v0, 0x9

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is6322()Z
    .locals 3

    .prologue
    .line 73
    const-string v1, "sys.fyt.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "plat":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "ro.fyt.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    const-string v1, "6322"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isCanbusM1A()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 112
    const-string v1, "ro.fyt.canbus_id"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0xf004

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCanbusNianXingChe()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 116
    const-string v1, "ro.fyt.canbus_id"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0xf005

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCanbusT21()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    const-string v1, "ro.fyt.canbus_id"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0xf003

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCanbusX5()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    const-string v1, "ro.fyt.canbus_id"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0xf006

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCanbusYunDu()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    const-string v1, "ro.fyt.canbus_id"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0xf007

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCarScreen(I)Z
    .locals 1
    .param p0, "idPlatForm"    # I

    .prologue
    .line 165
    packed-switch p0, :pswitch_data_0

    .line 170
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 167
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public static isDebug2825()Z
    .locals 2

    .prologue
    .line 174
    const-string v0, "sys.fyt.video.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExistInSim()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    const-string v2, "ril.has_sim1"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isForeginClient()Z
    .locals 2

    .prologue
    .line 140
    const-string v0, "ro.client.foreign"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHiworldObdEnable()Z
    .locals 2

    .prologue
    .line 86
    const-string v0, "sys.fyt.hiworld_obd_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isInclude8288A(I)Z
    .locals 1
    .param p0, "idPlatForm"    # I

    .prologue
    .line 57
    sparse-switch p0, :sswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 62
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isMcuReverse()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    const-string v3, "sys.fyt.mcu_reverse"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, "i":I
    if-ne v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isModifyDefaultLogo()Z
    .locals 2

    .prologue
    .line 104
    const-string v0, "sys.fyt.zyc_default_logo_modify"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNeedStartFrontView()Z
    .locals 2

    .prologue
    .line 186
    const-string v0, "persist.fyt.fy_radartofront"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSerialObdEnable()Z
    .locals 2

    .prologue
    .line 190
    const-string v0, "persist.fyt.serial_obd_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowMark()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    const-string v2, "ro.fyt.showmark"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isShowTrackLine()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    const-string v2, "ro.fyt.showtrack"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSofiaNeedActive(II)Z
    .locals 2
    .param p0, "idPlatForm"    # I
    .param p1, "idCustomer"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 144
    sparse-switch p0, :sswitch_data_0

    .line 161
    :goto_0
    :sswitch_0
    return v0

    .line 147
    :sswitch_1
    sparse-switch p1, :sswitch_data_1

    move v0, v1

    .line 153
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 158
    goto :goto_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_2
        0x23 -> :sswitch_1
        0x24 -> :sswitch_2
        0x25 -> :sswitch_2
    .end sparse-switch

    .line 147
    :sswitch_data_1
    .sparse-switch
        0x3e -> :sswitch_0
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isThirdVerUI()Z
    .locals 2

    .prologue
    .line 128
    const-string v0, "ro.build.fytThirdUI"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTp2825()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    const-string v1, "ro.fyt.m_VideoIC"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTp2850()Z
    .locals 2

    .prologue
    .line 94
    const-string v0, "TP2850"

    const-string v1, "sys.fyt.video_ic"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "TP2850"

    const-string v1, "sys.fyt.front_video_ic"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const-string v0, "TP2850"

    const-string v1, "sys.fyt.back_video_ic"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTpPR2000()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    const-string v1, "ro.fyt.m_VideoIC"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
