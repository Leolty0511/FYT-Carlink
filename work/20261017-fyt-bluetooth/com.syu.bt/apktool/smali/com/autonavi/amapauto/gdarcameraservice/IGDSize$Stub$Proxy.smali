.class Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGDSize.java"

# interfaces
.implements Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 102
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getHeight()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDSize"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 147
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 148
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    move-result-object v4

    invoke-interface {v4}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    :goto_0
    return v2

    .line 150
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 154
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 153
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "com.autonavi.amapauto.gdarcameraservice.IGDSize"

    return-object v0
.end method

.method public getWidth()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDSize"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 122
    iget-object v4, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 123
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 124
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    move-result-object v4

    invoke-interface {v4}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;->getWidth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 133
    :goto_0
    return v2

    .line 126
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 130
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 129
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    throw v4
.end method
