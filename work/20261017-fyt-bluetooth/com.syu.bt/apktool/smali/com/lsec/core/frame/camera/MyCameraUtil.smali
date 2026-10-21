.class public Lcom/lsec/core/frame/camera/MyCameraUtil;
.super Ljava/lang/Object;
.source "MyCameraUtil.java"


# static fields
.field public static bAddImageReader:Z

.field public static iDegree:I

.field public static idVideo:I

.field public static idVideo2:I

.field public static mHeight_FourCamera360:I

.field public static mInterfaceCamera4Id:Lcom/lsec/core/util/InterfaceGetCameraId;

.field public static mInterfaceCamera5Id:Lcom/lsec/core/util/InterfaceGetCameraId;

.field public static mInterfaceGetCameraId:Lcom/lsec/core/util/InterfaceGetCameraId;

.field public static mInterfaceGetDoubleCameraId:Lcom/lsec/core/util/InterfaceGetCameraId;

.field public static mSizeDiy:[I

.field public static mSizeDiy2:[I

.field public static mSizeDiy_Preview:[I

.field public static mWidth_FourCamera360:I

.field public static strCvbs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->strCvbs:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->bAddImageReader:Z

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 28
    sput-object v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy_Preview:[I

    .line 29
    sput-object v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy:[I

    .line 30
    sput-object v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy2:[I

    .line 31
    const/16 v0, 0x500

    sput v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mWidth_FourCamera360:I

    .line 32
    const/16 v0, 0xb40

    sput v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mHeight_FourCamera360:I

    .line 33
    sput-object v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceGetCameraId:Lcom/lsec/core/util/InterfaceGetCameraId;

    .line 34
    sput-object v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceGetDoubleCameraId:Lcom/lsec/core/util/InterfaceGetCameraId;

    .line 35
    sput-object v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceCamera4Id:Lcom/lsec/core/util/InterfaceGetCameraId;

    .line 36
    sput-object v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceCamera5Id:Lcom/lsec/core/util/InterfaceGetCameraId;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamcorderProfileByQuality(IILandroid/hardware/Camera$Parameters;Ljava/util/List;)Landroid/media/CamcorderProfile;
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/media/CamcorderProfile;"
        }
    .end annotation

    .prologue
    .local p3, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "camcorderProfile":Landroid/media/CamcorderProfile;
    const/16 v1, 0x438

    if-lt p1, v1, :cond_0

    .line 109
    invoke-static {p0, v4, p3}, Lcom/lsec/core/frame/camera/MyCameraUtil;->isVideoQualityExists(IILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {p0, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 113
    :cond_0
    if-nez v0, :cond_1

    .line 114
    const/16 v1, 0x2d0

    if-lt p1, v1, :cond_1

    .line 115
    invoke-static {p0, v3, p3}, Lcom/lsec/core/frame/camera/MyCameraUtil;->isVideoQualityExists(IILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-static {p0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 120
    :cond_1
    if-nez v0, :cond_2

    .line 121
    invoke-static {p0, v2, p3}, Lcom/lsec/core/frame/camera/MyCameraUtil;->isVideoQualityExists(IILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 125
    :cond_2
    return-object v0
.end method

.method public static getCamera4Id()I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceCamera4Id:Lcom/lsec/core/util/InterfaceGetCameraId;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceCamera4Id:Lcom/lsec/core/util/InterfaceGetCameraId;

    invoke-interface {v0}, Lcom/lsec/core/util/InterfaceGetCameraId;->getCameraId()I

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getCamera5Id()I
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceCamera5Id:Lcom/lsec/core/util/InterfaceGetCameraId;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceCamera5Id:Lcom/lsec/core/util/InterfaceGetCameraId;

    invoke-interface {v0}, Lcom/lsec/core/util/InterfaceGetCameraId;->getCameraId()I

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getCameraId()I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceGetCameraId:Lcom/lsec/core/util/InterfaceGetCameraId;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceGetCameraId:Lcom/lsec/core/util/InterfaceGetCameraId;

    invoke-interface {v0}, Lcom/lsec/core/util/InterfaceGetCameraId;->getCameraId()I

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getCameraId_Default()I

    move-result v0

    goto :goto_0
.end method

.method public static getCameraId_Default()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 66
    const-string v3, "ro.fyt.realplatform"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, "iRealPlatForm":I
    sparse-switch v0, :sswitch_data_0

    .line 74
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->mIdChip:I

    if-ne v3, v5, :cond_1

    move v1, v2

    .line 86
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 77
    :cond_1
    sget v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    sget v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    if-ne v3, v1, :cond_3

    .line 78
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 80
    :cond_3
    sget v3, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-eq v3, v5, :cond_0

    .line 83
    sget v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    if-ne v3, v1, :cond_4

    .line 84
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    invoke-static {v1}, Lcom/lsec/core/ipc/module/main/Main;->getBackCameraId(I)I

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 86
    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x330 -> :sswitch_0
        0x332 -> :sswitch_0
        0xbbb -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDoubleCameraId()I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceGetDoubleCameraId:Lcom/lsec/core/util/InterfaceGetCameraId;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mInterfaceGetDoubleCameraId:Lcom/lsec/core/util/InterfaceGetCameraId;

    invoke-interface {v0}, Lcom/lsec/core/util/InterfaceGetCameraId;->getCameraId()I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getCameraId_Default()I

    move-result v0

    goto :goto_0
.end method

.method public static getFixWidth()I
    .locals 4

    .prologue
    .line 144
    const/16 v1, 0x3c0

    .line 145
    .local v1, "w":I
    sget v2, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v2, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 147
    :pswitch_0
    const-string v2, "sys.fyt.platform"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "plat":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    const-string v2, "ro.fyt.platform"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_1
    const-string v2, "6025"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "6315"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "6316"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    const/16 v1, 0x3de

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public static getPreviewSize(ILandroid/hardware/Camera$Parameters;)[I
    .locals 24
    .param p0, "cameraId"    # I
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 271
    sget-object v21, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy_Preview:[I

    if-eqz v21, :cond_1

    sget-object v21, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy_Preview:[I

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 272
    sget-object v16, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy_Preview:[I

    .line 486
    :cond_0
    :goto_0
    return-object v16

    .line 274
    :cond_1
    sget-object v21, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy:[I

    if-eqz v21, :cond_2

    sget-object v21, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy:[I

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 275
    sget-object v16, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy:[I

    goto :goto_0

    .line 277
    :cond_2
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 278
    .local v16, "size":[I
    sget v21, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v22, 0x9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 279
    const/16 v21, 0x0

    sget v22, Lcom/lsec/core/frame/camera/MyCameraUtil;->mWidth_FourCamera360:I

    aput v22, v16, v21

    .line 280
    const/16 v21, 0x1

    sget v22, Lcom/lsec/core/frame/camera/MyCameraUtil;->mHeight_FourCamera360:I

    aput v22, v16, v21

    goto :goto_0

    .line 281
    :cond_3
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->isDvd9853()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 282
    const/16 v21, 0x0

    const/16 v22, 0x2d0

    aput v22, v16, v21

    .line 283
    const/16 v21, 0x1

    const/16 v22, 0x1e0

    aput v22, v16, v21

    goto :goto_0

    .line 285
    :cond_4
    if-eqz p1, :cond_0

    .line 286
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v14

    .line 287
    .local v14, "profile":Landroid/media/CamcorderProfile;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    .line 288
    .local v17, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 289
    .local v5, "bProfileOk":Z
    sget v21, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 290
    sget-object v21, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/16 v22, 0xc

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/lsec/core/ipc/module/main/Main;->getBackCameraType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 291
    :cond_5
    const/4 v6, 0x0

    .line 293
    .local v6, "camcorderProfileTmp":Landroid/media/CamcorderProfile;
    :try_start_0
    sget-object v21, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/16 v22, 0x46

    aget v21, v21, v22

    if-nez v21, :cond_10

    .line 294
    sget v21, Lcom/lsec/core/frame/camera/MyCamera;->QUALITY_CVBSN:I

    move/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 304
    :goto_1
    if-eqz v6, :cond_6

    .line 305
    const/4 v5, 0x1

    .line 306
    move-object v14, v6

    .line 311
    .end local v6    # "camcorderProfileTmp":Landroid/media/CamcorderProfile;
    :cond_6
    if-nez v5, :cond_7

    .line 312
    const/16 v21, 0x438

    move/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getCamcorderProfileByQuality(IILandroid/hardware/Camera$Parameters;Ljava/util/List;)Landroid/media/CamcorderProfile;

    move-result-object v6

    .line 314
    .restart local v6    # "camcorderProfileTmp":Landroid/media/CamcorderProfile;
    if-eqz v6, :cond_7

    .line 315
    move-object v14, v6

    .line 318
    .end local v6    # "camcorderProfileTmp":Landroid/media/CamcorderProfile;
    :cond_7
    if-eqz v14, :cond_8

    .line 319
    const/16 v21, 0x0

    iget v0, v14, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v22, v0

    aput v22, v16, v21

    .line 320
    const/16 v21, 0x1

    iget v0, v14, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v22, v0

    aput v22, v16, v21

    .line 323
    :cond_8
    const/16 v18, 0x2c0

    .local v18, "wNTSC":I
    const/16 v8, 0x1d4

    .line 324
    .local v8, "hNTSC":I
    const/16 v19, 0x2c0

    .local v19, "wPAL":I
    const/16 v9, 0x234

    .line 326
    .local v9, "hPAL":I
    const/16 v20, 0x0

    .line 327
    .local v20, "wPreviewMax":I
    const/4 v10, 0x0

    .line 328
    .local v10, "hPreviewMax":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_9
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_12

    .line 350
    const/4 v4, 0x0

    .line 352
    .local v4, "bMatchWH":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 353
    .local v13, "preferSize":Landroid/hardware/Camera$Size;
    if-eqz v13, :cond_b

    .line 354
    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    if-lez v21, :cond_b

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    if-lez v21, :cond_b

    .line 355
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_16

    .line 366
    :cond_b
    :goto_3
    if-nez v4, :cond_c

    .line 367
    const/16 v21, 0x0

    aput v20, v16, v21

    .line 368
    const/16 v21, 0x1

    aput v10, v16, v21

    .line 371
    :cond_c
    invoke-static {}, Lcom/lsec/core/util/share/ShareHandler;->isTp2825()Z

    move-result v11

    .line 372
    .local v11, "isTP2825":Z
    invoke-static {}, Lcom/lsec/core/util/share/ShareHandler;->isTp2850()Z

    move-result v12

    .line 373
    .local v12, "isTp2850":Z
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Main;->getBackCameraType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 374
    if-nez v11, :cond_d

    if-eqz v12, :cond_17

    .line 375
    :cond_d
    sget-object v21, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/16 v22, 0x46

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 479
    :cond_e
    :goto_4
    :pswitch_0
    const/16 v21, 0x0

    aget v21, v16, v21

    move/from16 v0, v21

    move/from16 v1, v20

    if-gt v0, v1, :cond_f

    const/16 v21, 0x1

    aget v21, v16, v21

    move/from16 v0, v21

    if-le v0, v10, :cond_0

    .line 480
    :cond_f
    const/16 v21, 0x0

    aput v20, v16, v21

    .line 481
    const/16 v21, 0x1

    aput v10, v16, v21

    goto/16 :goto_0

    .line 295
    .end local v4    # "bMatchWH":Z
    .end local v8    # "hNTSC":I
    .end local v9    # "hPAL":I
    .end local v10    # "hPreviewMax":I
    .end local v11    # "isTP2825":Z
    .end local v12    # "isTp2850":Z
    .end local v13    # "preferSize":Landroid/hardware/Camera$Size;
    .end local v18    # "wNTSC":I
    .end local v19    # "wPAL":I
    .end local v20    # "wPreviewMax":I
    .restart local v6    # "camcorderProfileTmp":Landroid/media/CamcorderProfile;
    :cond_10
    :try_start_1
    sget-object v21, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/16 v22, 0x46

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 296
    sget v21, Lcom/lsec/core/frame/camera/MyCamera;->QUALITY_CVBSP:I

    move/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    goto/16 :goto_1

    .line 298
    :cond_11
    const/16 v21, 0x438

    move/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getCamcorderProfileByQuality(IILandroid/hardware/Camera$Parameters;Ljava/util/List;)Landroid/media/CamcorderProfile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_1

    .line 300
    :catch_0
    move-exception v7

    .line 301
    .local v7, "e":Ljava/lang/Exception;
    const/16 v21, 0x4

    move/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    goto/16 :goto_1

    .line 328
    .end local v6    # "camcorderProfileTmp":Landroid/media/CamcorderProfile;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "hNTSC":I
    .restart local v9    # "hPAL":I
    .restart local v10    # "hPreviewMax":I
    .restart local v18    # "wNTSC":I
    .restart local v19    # "wPAL":I
    .restart local v20    # "wPreviewMax":I
    :cond_12
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 329
    .local v15, "s":Landroid/hardware/Camera$Size;
    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v10, :cond_14

    .line 330
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    .line 331
    iget v10, v15, Landroid/hardware/Camera$Size;->height:I

    .line 339
    :cond_13
    :goto_5
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    const/16 v23, 0x2e4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    const/16 v23, 0x2bc

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 340
    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    const/16 v23, 0x1f4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    const/16 v23, 0x1cc

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_15

    .line 341
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    .line 342
    iget v8, v15, Landroid/hardware/Camera$Size;->height:I

    .line 343
    goto/16 :goto_2

    .line 332
    :cond_14
    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_13

    .line 333
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    .line 334
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    .line 335
    iget v10, v15, Landroid/hardware/Camera$Size;->height:I

    goto :goto_5

    .line 343
    :cond_15
    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    const/16 v23, 0x258

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    const/16 v23, 0x230

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 344
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    .line 345
    iget v9, v15, Landroid/hardware/Camera$Size;->height:I

    goto/16 :goto_2

    .line 355
    .end local v15    # "s":Landroid/hardware/Camera$Size;
    .restart local v4    # "bMatchWH":Z
    .restart local v13    # "preferSize":Landroid/hardware/Camera$Size;
    :cond_16
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 356
    .restart local v15    # "s":Landroid/hardware/Camera$Size;
    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 357
    const/4 v4, 0x1

    .line 358
    const/16 v21, 0x0

    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    aput v22, v16, v21

    .line 359
    const/16 v21, 0x1

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    aput v22, v16, v21

    goto/16 :goto_3

    .line 377
    .end local v15    # "s":Landroid/hardware/Camera$Size;
    .restart local v11    # "isTP2825":Z
    .restart local v12    # "isTp2850":Z
    :pswitch_1
    const/16 v21, 0x0

    const/16 v22, 0x3c0

    aput v22, v16, v21

    .line 378
    const/16 v21, 0x1

    const/16 v22, 0x1e0

    aput v22, v16, v21

    goto/16 :goto_4

    .line 381
    :pswitch_2
    const/16 v21, 0x0

    const/16 v22, 0x3c0

    aput v22, v16, v21

    .line 382
    const/16 v21, 0x1

    const/16 v22, 0x240

    aput v22, v16, v21

    goto/16 :goto_4

    .line 388
    :pswitch_3
    const/16 v21, 0x0

    const/16 v22, 0x500

    aput v22, v16, v21

    .line 389
    const/16 v21, 0x1

    const/16 v22, 0x2d0

    aput v22, v16, v21

    .line 390
    sget v21, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v21, :pswitch_data_1

    .line 396
    const/16 v21, 0x0

    aget v22, v16, v21

    add-int/lit8 v22, v22, -0x10

    aput v22, v16, v21

    goto/16 :goto_4

    .line 403
    :pswitch_4
    const/16 v21, 0x0

    const/16 v22, 0x780

    aput v22, v16, v21

    .line 404
    const/16 v21, 0x1

    const/16 v22, 0x438

    aput v22, v16, v21

    goto/16 :goto_4

    .line 409
    :pswitch_5
    const/16 v21, 0x0

    const/16 v22, 0x500

    aput v22, v16, v21

    .line 410
    const/16 v21, 0x1

    const/16 v22, 0x2d0

    aput v22, v16, v21

    goto/16 :goto_4

    .line 414
    :pswitch_6
    const/16 v21, 0x0

    const/16 v22, 0x2d0

    aput v22, v16, v21

    .line 415
    const/16 v21, 0x1

    const/16 v22, 0xf0

    aput v22, v16, v21

    goto/16 :goto_4

    .line 419
    :pswitch_7
    const/16 v21, 0x0

    const/16 v22, 0x2d0

    aput v22, v16, v21

    .line 420
    const/16 v21, 0x1

    const/16 v22, 0x120

    aput v22, v16, v21

    goto/16 :goto_4

    .line 425
    :cond_17
    sget v21, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v21, :pswitch_data_2

    .line 467
    :pswitch_8
    sget-object v21, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/16 v22, 0x46

    aget v21, v21, v22

    if-nez v21, :cond_1a

    .line 468
    const/16 v21, 0x0

    aput v18, v16, v21

    .line 469
    const/16 v21, 0x1

    aput v8, v16, v21

    goto/16 :goto_4

    .line 428
    :pswitch_9
    sget-object v21, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/16 v22, 0x46

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_3

    :pswitch_a
    goto/16 :goto_4

    .line 430
    :pswitch_b
    invoke-static {}, Lcom/lsec/core/util/share/ShareHandler;->is6322()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 431
    const/16 v21, 0x0

    const/16 v22, 0x2d0

    aput v22, v16, v21

    .line 432
    const/16 v21, 0x1

    const/16 v22, 0xf0

    aput v22, v16, v21

    goto/16 :goto_4

    .line 434
    :cond_18
    const/16 v21, 0x0

    const/16 v22, 0x2d0

    aput v22, v16, v21

    .line 435
    const/16 v21, 0x1

    const/16 v22, 0x1e0

    aput v22, v16, v21

    goto/16 :goto_4

    .line 439
    :pswitch_c
    invoke-static {}, Lcom/lsec/core/util/share/ShareHandler;->is6322()Z

    move-result v21

    if-eqz v21, :cond_19

    .line 440
    const/16 v21, 0x0

    const/16 v22, 0x2d0

    aput v22, v16, v21

    .line 441
    const/16 v21, 0x1

    const/16 v22, 0x120

    aput v22, v16, v21

    goto/16 :goto_4

    .line 443
    :cond_19
    const/16 v21, 0x0

    const/16 v22, 0x2d0

    aput v22, v16, v21

    .line 444
    const/16 v21, 0x1

    const/16 v22, 0x240

    aput v22, v16, v21

    goto/16 :goto_4

    .line 449
    :pswitch_d
    const/16 v21, 0x0

    const/16 v22, 0x500

    aput v22, v16, v21

    .line 450
    const/16 v21, 0x1

    const/16 v22, 0x2d0

    aput v22, v16, v21

    goto/16 :goto_4

    .line 454
    :pswitch_e
    const/16 v21, 0x0

    const/16 v22, 0x2d0

    aput v22, v16, v21

    .line 455
    const/16 v21, 0x1

    const/16 v22, 0xf0

    aput v22, v16, v21

    goto/16 :goto_4

    .line 459
    :pswitch_f
    const/16 v21, 0x0

    const/16 v22, 0x2d0

    aput v22, v16, v21

    .line 460
    const/16 v21, 0x1

    const/16 v22, 0x120

    aput v22, v16, v21

    goto/16 :goto_4

    .line 471
    :cond_1a
    const/16 v21, 0x0

    aput v19, v16, v21

    .line 472
    const/16 v21, 0x1

    aput v9, v16, v21

    goto/16 :goto_4

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 390
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 425
    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_9
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 428
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static getSystemPropSize()[I
    .locals 10

    .prologue
    const/16 v9, 0xf0

    const/16 v8, 0x500

    const/16 v7, 0x2d0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 161
    sget-object v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy:[I

    if-eqz v3, :cond_1

    sget-object v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy:[I

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 162
    sget-object v2, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy:[I

    .line 250
    .local v2, "size":[I
    :cond_0
    :goto_0
    return-object v2

    .line 165
    .end local v2    # "size":[I
    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 166
    .restart local v2    # "size":[I
    aput v8, v2, v6

    .line 167
    aput v7, v2, v5

    .line 168
    sget v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    sget v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    sget v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_3

    .line 169
    :cond_2
    sget v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->mWidth_FourCamera360:I

    aput v3, v2, v6

    .line 170
    sget v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->mHeight_FourCamera360:I

    aput v3, v2, v5

    goto :goto_0

    .line 171
    :cond_3
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->isDvd9853()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 172
    aput v7, v2, v6

    .line 173
    const/16 v3, 0x1e0

    aput v3, v2, v5

    goto :goto_0

    .line 175
    :cond_4
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Main;->getBackCameraType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 176
    invoke-static {}, Lcom/lsec/core/util/share/ShareHandler;->isTp2825()Z

    move-result v0

    .line 177
    .local v0, "isTP2825":Z
    invoke-static {}, Lcom/lsec/core/util/share/ShareHandler;->isTp2850()Z

    move-result v1

    .line 178
    .local v1, "isTp2850":Z
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    .line 179
    :cond_5
    sget-object v3, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/16 v4, 0x46

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getFixWidth()I

    move-result v3

    aput v3, v2, v6

    .line 182
    const/16 v3, 0x1e0

    aput v3, v2, v5

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getFixWidth()I

    move-result v3

    aput v3, v2, v6

    .line 186
    const/16 v3, 0x240

    aput v3, v2, v5

    goto :goto_0

    .line 192
    :pswitch_2
    aput v8, v2, v6

    .line 193
    aput v7, v2, v5

    goto :goto_0

    .line 197
    :pswitch_3
    const/16 v3, 0x780

    aput v3, v2, v6

    .line 198
    const/16 v3, 0x438

    aput v3, v2, v5

    goto :goto_0

    .line 202
    :pswitch_4
    aput v8, v2, v6

    .line 203
    aput v7, v2, v5

    goto :goto_0

    .line 206
    :pswitch_5
    aput v7, v2, v6

    .line 207
    aput v9, v2, v5

    goto :goto_0

    .line 210
    :pswitch_6
    aput v7, v2, v6

    .line 211
    const/16 v3, 0x120

    aput v3, v2, v5

    goto :goto_0

    .line 215
    :cond_6
    sget-object v3, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/16 v4, 0x46

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    :pswitch_7
    goto/16 :goto_0

    .line 217
    :pswitch_8
    aput v7, v2, v6

    .line 218
    invoke-static {}, Lcom/lsec/core/util/share/ShareHandler;->is6322()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 219
    aput v9, v2, v5

    goto/16 :goto_0

    .line 221
    :cond_7
    const/16 v3, 0x1e0

    aput v3, v2, v5

    goto/16 :goto_0

    .line 225
    :pswitch_9
    aput v7, v2, v6

    .line 226
    invoke-static {}, Lcom/lsec/core/util/share/ShareHandler;->is6322()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 227
    const/16 v3, 0x120

    aput v3, v2, v5

    goto/16 :goto_0

    .line 229
    :cond_8
    const/16 v3, 0x240

    aput v3, v2, v5

    goto/16 :goto_0

    .line 234
    :pswitch_a
    aput v8, v2, v6

    .line 235
    aput v7, v2, v5

    goto/16 :goto_0

    .line 238
    :pswitch_b
    aput v7, v2, v6

    .line 239
    aput v9, v2, v5

    goto/16 :goto_0

    .line 242
    :pswitch_c
    aput v7, v2, v6

    .line 243
    const/16 v3, 0x120

    aput v3, v2, v5

    goto/16 :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 215
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getSystemPropSize2()[I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    sget-object v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy2:[I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy2:[I

    array-length v1, v1

    if-ne v1, v2, :cond_1

    .line 256
    sget-object v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mSizeDiy2:[I

    .line 266
    .local v0, "size":[I
    :cond_0
    :goto_0
    return-object v0

    .line 258
    .end local v0    # "size":[I
    :cond_1
    new-array v0, v2, [I

    .line 259
    .restart local v0    # "size":[I
    const/16 v1, 0x2d0

    aput v1, v0, v3

    .line 260
    const/16 v1, 0x1e0

    aput v1, v0, v4

    .line 261
    sget v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    sget v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    sget v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 262
    :cond_2
    sget v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mWidth_FourCamera360:I

    aput v1, v0, v3

    .line 263
    sget v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->mHeight_FourCamera360:I

    aput v1, v0, v4

    goto :goto_0
.end method

.method public static isDvd9853()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    sget v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 130
    sget v3, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v3, :pswitch_data_0

    .local v0, "external":I
    :cond_0
    move v1, v2

    .line 140
    :goto_0
    return v1

    .line 132
    .end local v0    # "external":I
    :pswitch_0
    const-string v3, "sys.syu.dvd_external"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 133
    .restart local v0    # "external":I
    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public static isVideoQualityExists(IILjava/util/List;)Z
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object v2, p2

    .line 91
    .local v2, "tmp":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v2, :cond_0

    .line 92
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 94
    .local v0, "camcorderProfile":Landroid/media/CamcorderProfile;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 102
    .end local v0    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 95
    .restart local v0    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .restart local v1    # "i":I
    :cond_1
    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v4, v3, :cond_2

    .line 96
    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v4, v3, :cond_2

    .line 97
    const/4 v3, 0x1

    goto :goto_1

    .line 94
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
