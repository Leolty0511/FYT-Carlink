.class Lcom/syu/ipc/IRemoteToolkit$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteToolkit.java"

# interfaces
.implements Lcom/syu/ipc/IRemoteToolkit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/ipc/IRemoteToolkit$Stub;
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/syu/ipc/IRemoteToolkit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 62
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/syu/ipc/IRemoteToolkit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;
    .locals 6
    .param p1, "moduleCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 72
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 75
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.syu.ipc.IRemoteToolkit"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v3, p0, Lcom/syu/ipc/IRemoteToolkit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 78
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/ipc/IRemoteModule$Stub;->asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IRemoteModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 81
    .local v2, "result":Lcom/syu/ipc/IRemoteModule;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 82
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 84
    return-object v2

    .line 80
    .end local v2    # "result":Lcom/syu/ipc/IRemoteModule;
    :catchall_0
    move-exception v3

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 82
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 83
    throw v3
.end method
