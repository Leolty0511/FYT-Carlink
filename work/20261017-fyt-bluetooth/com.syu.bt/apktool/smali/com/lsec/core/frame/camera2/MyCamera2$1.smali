.class Lcom/lsec/core/frame/camera2/MyCamera2$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "MyCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/camera2/MyCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/camera2/MyCamera2;


# direct methods
.method constructor <init>(Lcom/lsec/core/frame/camera2/MyCamera2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    .line 120
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 167
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera2  onDisconnected(CameraDevice cameraDevice)  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-static {v2}, Lcom/lsec/core/frame/camera2/MyCamera2;->access$0(Lcom/lsec/core/frame/camera2/MyCamera2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mGDCameraStateCallBack:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "AUT"

    const-string v1, "mGDCameraStateCallBack.onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mGDCameraStateCallBack:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    invoke-interface {v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-static {v0}, Lcom/lsec/core/frame/camera2/MyCamera2;->access$1(Lcom/lsec/core/frame/camera2/MyCamera2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 180
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 181
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lsec/core/frame/camera2/MyCamera2;->access$2(Lcom/lsec/core/frame/camera2/MyCamera2;Landroid/hardware/camera2/CameraDevice;)V

    .line 182
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 186
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera2  onError(CameraDevice cameraDevice, error)  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-static {v2}, Lcom/lsec/core/frame/camera2/MyCamera2;->access$0(Lcom/lsec/core/frame/camera2/MyCamera2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mGDCameraStateCallBack:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "AUT"

    const-string v1, "mGDCameraStateCallBack.onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mGDCameraStateCallBack:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-static {v0}, Lcom/lsec/core/frame/camera2/MyCamera2;->access$1(Lcom/lsec/core/frame/camera2/MyCamera2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 199
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 200
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lsec/core/frame/camera2/MyCamera2;->access$2(Lcom/lsec/core/frame/camera2/MyCamera2;Landroid/hardware/camera2/CameraDevice;)V

    .line 201
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 12
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 124
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera2  onOpened(CameraDevice cameraDevice)  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-static {v2}, Lcom/lsec/core/frame/camera2/MyCamera2;->access$0(Lcom/lsec/core/frame/camera2/MyCamera2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-static {v0}, Lcom/lsec/core/frame/camera2/MyCamera2;->access$1(Lcom/lsec/core/frame/camera2/MyCamera2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 126
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-static {v0, p1}, Lcom/lsec/core/frame/camera2/MyCamera2;->access$2(Lcom/lsec/core/frame/camera2/MyCamera2;Landroid/hardware/camera2/CameraDevice;)V

    .line 127
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-virtual {v0}, Lcom/lsec/core/frame/camera2/MyCamera2;->configure()V

    .line 129
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCamera2Interface:Lcom/lsec/core/frame/camera2/MyCamera2Interface;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCamera2Interface:Lcom/lsec/core/frame/camera2/MyCamera2Interface;

    invoke-interface {v0}, Lcom/lsec/core/frame/camera2/MyCamera2Interface;->onOpened()V

    .line 132
    :cond_0
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getSystemPropSize()[I

    move-result-object v9

    .line 133
    .local v9, "size":[I
    aget v0, v9, v3

    const/16 v1, 0x3de

    if-ne v0, v1, :cond_1

    .line 134
    const/16 v0, 0x3c0

    aput v0, v9, v3

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mGDCameraStateCallBack:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-boolean v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->bShareMemory2Other:Z

    if-eqz v0, :cond_3

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mHeader:[B

    invoke-static {v0}, Lcom/autonavi/amapauto/gdarcameraservice/utils/SharedMemUtils;->initHeader([B)V

    .line 138
    const-string v0, "GD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2memory-x:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v9, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2memory-y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v9, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    const-string v1, "CameraService"

    aget v2, v9, v3

    aget v3, v9, v7

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    invoke-static {v1, v2}, Lcom/lsec/core/sharememory/MemoryFileHelper;->createMemoryFile(Ljava/lang/String;I)Landroid/os/MemoryFile;

    move-result-object v1

    iput-object v1, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mMemoryFile:Landroid/os/MemoryFile;

    .line 140
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v1, v1, Lcom/lsec/core/frame/camera2/MyCamera2;->mMemoryFile:Landroid/os/MemoryFile;

    invoke-static {v1}, Lcom/lsec/core/sharememory/MemoryFileHelper;->getParcelFileDescriptor(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 146
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v0, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mGDCameraStateCallBack:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    if-eqz v0, :cond_5

    .line 147
    const/4 v0, 0x0

    aget v0, v9, v0

    sget v1, Lcom/lsec/core/frame/camera2/MyCamera2;->l_offset:I

    sub-int/2addr v0, v1

    sget v1, Lcom/lsec/core/frame/camera2/MyCamera2;->r_offset:I

    sub-int v4, v0, v1

    .line 148
    .local v4, "w_img":I
    const/4 v0, 0x1

    aget v0, v9, v0

    sget v1, Lcom/lsec/core/frame/camera2/MyCamera2;->t_offset:I

    sub-int/2addr v0, v1

    sget v1, Lcom/lsec/core/frame/camera2/MyCamera2;->b_offset:I

    sub-int v5, v0, v1

    .line 149
    .local v5, "h_img":I
    sget v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mWidth_FourCamera360:I

    if-ne v4, v0, :cond_4

    sget v0, Lcom/lsec/core/frame/camera/MyCameraUtil;->mHeight_FourCamera360:I

    if-ne v5, v0, :cond_4

    .line 151
    const/16 v0, 0x780

    if-le v5, v0, :cond_4

    .line 152
    shr-int/lit8 v5, v5, 0x2

    .line 156
    :cond_4
    mul-int v0, v4, v5

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v6, v0, 0x2

    .line 157
    .local v6, "size_img":I
    const-string v0, "GD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2ParcelFile-x:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2ParcelFile-y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v10, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mGDCameraStateCallBack:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    iget-object v11, v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/lsec/core/frame/camera2/MyCamera2$1;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-static {v7}, Lcom/lsec/core/frame/camera2/MyCamera2;->access$0(Lcom/lsec/core/frame/camera2/MyCamera2;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;-><init>(IIIIIILjava/lang/String;)V

    const-string v1, "CameraService"

    invoke-interface {v10, v11, v0, v1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;->onOpened(Landroid/os/ParcelFileDescriptor;Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v4    # "w_img":I
    .end local v5    # "h_img":I
    .end local v6    # "size_img":I
    :cond_5
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v8

    .line 161
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
