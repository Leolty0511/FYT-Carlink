.class public Lcom/lsec/core/frame/camera/MyCamera;
.super Ljava/lang/Object;
.source "MyCamera.java"


# static fields
.field public static QUALITY_CVBSN:I

.field public static QUALITY_CVBSP:I

.field public static mCameraInst:Lcom/lsec/core/frame/camera/MyCamera;

.field public static mInterfaceCamera:Lcom/lsec/core/util/InterfaceCamera;


# instance fields
.field private bIsPreview:Z

.field public bShutDown:Z

.field public mCamera:Landroid/hardware/Camera;

.field public mParameters:Landroid/hardware/Camera$Parameters;

.field runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfHolder;

.field runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/lsec/core/frame/camera/MyCamera;->mCameraInst:Lcom/lsec/core/frame/camera/MyCamera;

    .line 32
    sput-object v0, Lcom/lsec/core/frame/camera/MyCamera;->mInterfaceCamera:Lcom/lsec/core/util/InterfaceCamera;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->bIsPreview:Z

    .line 29
    iput-boolean v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->bShutDown:Z

    .line 84
    iput-object v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfHolder;

    .line 102
    iput-object v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;

    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lsec/core/frame/camera/MyCamera;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/lsec/core/frame/camera/MyCamera;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lsec/core/frame/camera/MyCamera;->mCameraInst:Lcom/lsec/core/frame/camera/MyCamera;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/lsec/core/frame/camera/MyCamera;

    invoke-direct {v0}, Lcom/lsec/core/frame/camera/MyCamera;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/camera/MyCamera;->mCameraInst:Lcom/lsec/core/frame/camera/MyCamera;

    .line 42
    :cond_0
    sget-object v0, Lcom/lsec/core/frame/camera/MyCamera;->mCameraInst:Lcom/lsec/core/frame/camera/MyCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setSystemProp()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 161
    sget v3, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v3, :pswitch_data_0

    .line 171
    .local v0, "height":Ljava/lang/String;
    .local v1, "size":[I
    .local v2, "width":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-void

    .line 164
    .end local v0    # "height":Ljava/lang/String;
    .end local v1    # "size":[I
    .end local v2    # "width":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getSystemPropSize()[I

    move-result-object v1

    .line 165
    .restart local v1    # "size":[I
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    aget v6, v1, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .restart local v2    # "width":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    aget v6, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "height":Ljava/lang/String;
    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setSystemProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "width"    # Ljava/lang/String;
    .param p1, "height"    # Ljava/lang/String;
    .param p2, "str_cvbs"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v1, "sys.fyt.cvbs."

    .line 190
    .local v1, "strCvbs":Ljava/lang/String;
    const-string v2, "sys.fyt.platform"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "plat":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const-string v2, "ro.fyt.platform"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    const-string v2, "6315"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "6316"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 195
    :cond_1
    sget v2, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    sget v2, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6

    .line 196
    :cond_2
    const-string v1, "sys.fyt.cvbs_2."

    .line 203
    :cond_3
    :goto_0
    sget-object v2, Lcom/lsec/core/frame/camera/MyCameraUtil;->strCvbs:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 204
    sget-object v1, Lcom/lsec/core/frame/camera/MyCameraUtil;->strCvbs:Ljava/lang/String;

    .line 206
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 207
    move-object v1, p2

    .line 211
    :cond_5
    const-string v2, "HJT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "strCvbs:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget v2, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v2, :pswitch_data_0

    .line 227
    :goto_1
    :pswitch_0
    return-void

    .line 197
    :cond_6
    sget v2, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    .line 198
    const-string v1, "sys.fyt.cvbs."

    .line 199
    goto :goto_0

    :cond_7
    const-string v2, "6318"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 215
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "trim_width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "trim_height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "scaler_trim.w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "scaler_trim.h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "scaler_trim.x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "scaler_trim.y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setSystemProp2()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 174
    sget v3, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v3, :pswitch_data_0

    .line 184
    .local v0, "height":Ljava/lang/String;
    .local v1, "size":[I
    .local v2, "width":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-void

    .line 177
    .end local v0    # "height":Ljava/lang/String;
    .end local v1    # "size":[I
    .end local v2    # "width":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getSystemPropSize2()[I

    move-result-object v1

    .line 178
    .restart local v1    # "size":[I
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    aget v6, v1, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .restart local v2    # "width":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    aget v6, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .restart local v0    # "height":Ljava/lang/String;
    const-string v3, "sys.fyt.cvbs."

    invoke-static {v2, v0, v3}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method initCamera(I)Z
    .locals 8
    .param p1, "cameraId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    :try_start_0
    iget-object v4, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 232
    iget-object v4, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/lsec/core/frame/camera/MyCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 233
    iget-object v4, p0, Lcom/lsec/core/frame/camera/MyCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v4, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v2

    .line 236
    :cond_1
    iget-object v4, p0, Lcom/lsec/core/frame/camera/MyCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p1, v4}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getPreviewSize(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v1

    .line 237
    .local v1, "sizePreview":[I
    if-eqz v1, :cond_0

    .line 241
    iget-object v4, p0, Lcom/lsec/core/frame/camera/MyCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 242
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    .line 243
    sget v4, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    if-ne v4, v3, :cond_2

    .line 244
    iget-object v5, p0, Lcom/lsec/core/frame/camera/MyCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "mirror-preview"

    sget-object v4, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/16 v7, 0x18

    aget v4, v4, v7

    if-ne v4, v3, :cond_4

    const-string v4, "true"

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_2
    iget-object v4, p0, Lcom/lsec/core/frame/camera/MyCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v5, 0x0

    aget v5, v1, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 248
    sget-object v4, Lcom/lsec/core/frame/camera/MyCamera;->mInterfaceCamera:Lcom/lsec/core/util/InterfaceCamera;

    if-eqz v4, :cond_3

    .line 249
    sget-object v4, Lcom/lsec/core/frame/camera/MyCamera;->mInterfaceCamera:Lcom/lsec/core/util/InterfaceCamera;

    invoke-interface {v4}, Lcom/lsec/core/util/InterfaceCamera;->setPreviewFormat()V

    .line 251
    :cond_3
    iget-object v4, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/lsec/core/frame/camera/MyCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    move v2, v3

    .line 252
    goto :goto_0

    .line 244
    :cond_4
    const-string v4, "false"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 254
    .end local v1    # "sizePreview":[I
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCameraOpen()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraPreview()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->bIsPreview:Z

    return v0
.end method

.method public open(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp()V

    .line 70
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0000 MyCamera  open(int cameraId)  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lsec/core/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/camera/MyCamera;->open_actual(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    .line 72
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0001 MyCamera  open(int cameraId)  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lsec/core/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public open_actual(I)Landroid/hardware/Camera;
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    .line 47
    :try_start_0
    sget v3, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v3, :pswitch_data_0

    .line 53
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 54
    .local v2, "mNumberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 55
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 64
    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v1    # "i":I
    .end local v2    # "mNumberOfCameras":I
    :goto_1
    const/4 v3, 0x0

    :goto_2
    return-object v3

    .line 50
    :pswitch_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    goto :goto_2

    .line 56
    .restart local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .restart local v1    # "i":I
    .restart local v2    # "mNumberOfCameras":I
    :cond_0
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 57
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, p1, :cond_1

    .line 58
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2

    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v1    # "i":I
    .end local v2    # "mNumberOfCameras":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPreview(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "idVideo"    # I
    .param p3, "iDegree"    # I

    .prologue
    .line 105
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sput p2, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 107
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->bShutDown:Z

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;->stopRun()V

    .line 113
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;

    invoke-direct {v1, p1}, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;

    .line 114
    iget-object v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfTexture;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreview(Landroid/view/SurfaceHolder;II)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "idVideo"    # I
    .param p3, "iDegree"    # I

    .prologue
    .line 87
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sput p2, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 89
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->bShutDown:Z

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfHolder;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfHolder;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfHolder;->stopRun()V

    .line 94
    :cond_0
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera  startPreView(holder, int idVideo, int iDegree)  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lsec/core/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfHolder;

    invoke-direct {v1, p1}, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfHolder;-><init>(Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfHolder;

    .line 96
    iget-object v1, p0, Lcom/lsec/core/frame/camera/MyCamera;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfHolder;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera/Runnable_setPreviewSurfHolder;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public shutDown()V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->bShutDown:Z

    .line 142
    const-string v0, "camera"

    const-string v1, "MyCamera  shutDown() "

    invoke-static {v0, v1}, Lcom/lsec/core/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 146
    iget-boolean v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->bIsPreview:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 148
    const-string v0, "camera"

    const-string v1, " MyCamera  shutDown()  ====== >> mCamera.stopPreview()"

    invoke-static {v0, v1}, Lcom/lsec/core/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->bIsPreview:Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startPreView()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-object v2, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 122
    iget-boolean v2, p0, Lcom/lsec/core/frame/camera/MyCamera;->bIsPreview:Z

    if-nez v2, :cond_1

    .line 124
    :try_start_0
    sget-object v2, Lcom/lsec/core/frame/camera/MyCamera;->mInterfaceCamera:Lcom/lsec/core/util/InterfaceCamera;

    if-eqz v2, :cond_0

    .line 125
    sget-object v2, Lcom/lsec/core/frame/camera/MyCamera;->mInterfaceCamera:Lcom/lsec/core/util/InterfaceCamera;

    invoke-interface {v2}, Lcom/lsec/core/util/InterfaceCamera;->setCameraCallBack()V

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lsec/core/frame/camera/MyCamera;->bIsPreview:Z

    .line 129
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyCamera  startPreView() bIsPreview "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/lsec/core/frame/camera/MyCamera;->bIsPreview:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mCamera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lsec/core/frame/camera/MyCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lsec/core/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_1
    :goto_0
    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera  startPreView() Exception  bIsPreview "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/lsec/core/frame/camera/MyCamera;->bIsPreview:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lsec/core/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    goto :goto_0
.end method
