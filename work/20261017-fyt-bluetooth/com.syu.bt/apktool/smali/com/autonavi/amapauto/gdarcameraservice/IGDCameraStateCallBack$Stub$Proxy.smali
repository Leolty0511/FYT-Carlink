.class Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGDCameraStateCallBack.java"

# interfaces
.implements Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 166
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "com.autonavi.amapauto.gdarcameraservice.IGDCameraStateCallBack"

    return-object v0
.end method

.method public onClosed(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.autonavi.amapauto.gdarcameraservice.IGDCameraStateCallBack"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 270
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 271
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;->onClosed(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 276
    .end local v2    # "_status":Z
    :catchall_0
    move-exception v3

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    throw v3
.end method

.method public onConnected()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.autonavi.amapauto.gdarcameraservice.IGDCameraStateCallBack"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 185
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 186
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;->onConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 191
    .end local v2    # "_status":Z
    :catchall_0
    move-exception v3

    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    throw v3
.end method

.method public onDisconnected()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.autonavi.amapauto.gdarcameraservice.IGDCameraStateCallBack"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 206
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 207
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;->onDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    :goto_0
    return-void

    .line 210
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 212
    .end local v2    # "_status":Z
    :catchall_0
    move-exception v3

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw v3
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.autonavi.amapauto.gdarcameraservice.IGDCameraStateCallBack"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 295
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 296
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;->onError(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 301
    .end local v2    # "_status":Z
    :catchall_0
    move-exception v3

    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    throw v3
.end method

.method public onOpened(Landroid/os/ParcelFileDescriptor;Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;Ljava/lang/String;)V
    .locals 6
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "arCameraOpenResultParam"    # Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;
    .param p3, "memoryfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.autonavi.amapauto.gdarcameraservice.IGDCameraStateCallBack"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    if-eqz p1, :cond_0

    .line 230
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 236
    :goto_0
    if-eqz p2, :cond_1

    .line 237
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->writeToParcel(Landroid/os/Parcel;I)V

    .line 243
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 245
    .local v2, "_status":Z
    if-nez v2, :cond_2

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 246
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;->onOpened(Landroid/os/ParcelFileDescriptor;Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    :goto_2
    return-void

    .line 234
    .end local v2    # "_status":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v3

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    throw v3

    .line 241
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 249
    .restart local v2    # "_status":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2
.end method
