.class Lcom/syu/ipc/IRemoteModule$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteModule.java"

# interfaces
.implements Lcom/syu/ipc/IRemoteModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/ipc/IRemoteModule$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 103
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cmd(I[I[F[Ljava/lang/String;)V
    .locals 5
    .param p1, "cmdCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 115
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.syu.ipc.IRemoteModule"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 118
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 119
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    return-void

    .line 122
    :catchall_0
    move-exception v2

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    throw v2
.end method

.method public get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;
    .locals 6
    .param p1, "getCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 134
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.syu.ipc.IRemoteModule"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 137
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 138
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    new-instance v2, Lcom/syu/ipc/ModuleObject;

    invoke-direct {v2}, Lcom/syu/ipc/ModuleObject;-><init>()V

    .line 143
    .local v2, "result":Lcom/syu/ipc/ModuleObject;
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, v2, Lcom/syu/ipc/ModuleObject;->ints:[I

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    iput-object v3, v2, Lcom/syu/ipc/ModuleObject;->flts:[F

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    return-object v2

    .line 147
    .end local v2    # "result":Lcom/syu/ipc/ModuleObject;
    :cond_0
    const/4 v2, 0x0

    .line 148
    .restart local v2    # "result":Lcom/syu/ipc/ModuleObject;
    goto :goto_0

    .end local v2    # "result":Lcom/syu/ipc/ModuleObject;
    :catchall_0
    move-exception v3

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    throw v3
.end method

.method public register(Lcom/syu/ipc/IModuleCallback;II)V
    .locals 5
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "updateCode"    # I
    .param p3, "update"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 159
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 161
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.syu.ipc.IRemoteModule"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/syu/ipc/IModuleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v2, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    return-void

    .line 162
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v2

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw v2
.end method

.method public unregister(Lcom/syu/ipc/IModuleCallback;I)V
    .locals 5
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "updateCode"    # I
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
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.syu.ipc.IRemoteModule"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/syu/ipc/IModuleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 180
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v2, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    return-void

    .line 179
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v2

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw v2
.end method
