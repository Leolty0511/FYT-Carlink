.class Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraCoreService.java"

# interfaces
.implements Lcom/lsec/core/sharememory/ICameraCoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/sharememory/ICameraCoreService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/lsec/core/sharememory/ICameraCoreService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 124
    return-void
.end method


# virtual methods
.method public addExportMemoryFile(Landroid/os/ParcelFileDescriptor;III)V
    .locals 6
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 196
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.lsec.core.sharememory.ICameraCoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 197
    if-eqz p1, :cond_0

    .line 198
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 204
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v3, p0, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 208
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->getDefaultImpl()Lcom/lsec/core/sharememory/ICameraCoreService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 209
    invoke-static {}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->getDefaultImpl()Lcom/lsec/core/sharememory/ICameraCoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/lsec/core/sharememory/ICameraCoreService;->addExportMemoryFile(Landroid/os/ParcelFileDescriptor;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    :goto_1
    return-void

    .line 202
    .end local v2    # "_status":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v3

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 217
    throw v3

    .line 212
    .restart local v2    # "_status":Z
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "com.lsec.core.sharememory.ICameraCoreService"

    return-object v0
.end method

.method public isRecording()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "com.lsec.core.sharememory.ICameraCoreService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v1, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 141
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->getDefaultImpl()Lcom/lsec/core/sharememory/ICameraCoreService;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 142
    invoke-static {}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->getDefaultImpl()Lcom/lsec/core/sharememory/ICameraCoreService;

    move-result-object v4

    invoke-interface {v4}, Lcom/lsec/core/sharememory/ICameraCoreService;->isRecording()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    :goto_0
    return v2

    .line 144
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v2    # "_result":Z
    :cond_1
    move v2, v4

    .line 145
    goto :goto_1

    .line 147
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    throw v4
.end method

.method public startRecord(Ljava/lang/String;I)V
    .locals 6
    .param p1, "recordPath"    # Ljava/lang/String;
    .param p2, "recordSharpness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 158
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.lsec.core.sharememory.ICameraCoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v3, p0, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 162
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->getDefaultImpl()Lcom/lsec/core/sharememory/ICameraCoreService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 163
    invoke-static {}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->getDefaultImpl()Lcom/lsec/core/sharememory/ICameraCoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/lsec/core/sharememory/ICameraCoreService;->startRecord(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    :goto_0
    return-void

    .line 166
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 168
    .end local v2    # "_status":Z
    :catchall_0
    move-exception v3

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    throw v3
.end method

.method public stopRecord()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.lsec.core.sharememory.ICameraCoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 180
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->getDefaultImpl()Lcom/lsec/core/sharememory/ICameraCoreService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 181
    invoke-static {}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->getDefaultImpl()Lcom/lsec/core/sharememory/ICameraCoreService;

    move-result-object v3

    invoke-interface {v3}, Lcom/lsec/core/sharememory/ICameraCoreService;->stopRecord()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 186
    .end local v2    # "_status":Z
    :catchall_0
    move-exception v3

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    throw v3
.end method
