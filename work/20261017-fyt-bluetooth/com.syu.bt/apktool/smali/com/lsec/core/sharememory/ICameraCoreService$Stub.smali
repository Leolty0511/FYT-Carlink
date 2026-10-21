.class public abstract Lcom/lsec/core/sharememory/ICameraCoreService$Stub;
.super Landroid/os/Binder;
.source "ICameraCoreService.java"

# interfaces
.implements Lcom/lsec/core/sharememory/ICameraCoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/sharememory/ICameraCoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lsec.core.sharememory.ICameraCoreService"

.field static final TRANSACTION_addExportMemoryFile:I = 0x4

.field static final TRANSACTION_isRecording:I = 0x1

.field static final TRANSACTION_startRecord:I = 0x2

.field static final TRANSACTION_stopRecord:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "com.lsec.core.sharememory.ICameraCoreService"

    invoke-virtual {p0, p0, v0}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lsec/core/sharememory/ICameraCoreService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-string v1, "com.lsec.core.sharememory.ICameraCoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lsec/core/sharememory/ICameraCoreService;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Lcom/lsec/core/sharememory/ICameraCoreService;

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Lcom/lsec/core/sharememory/ICameraCoreService;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;->sDefaultImpl:Lcom/lsec/core/sharememory/ICameraCoreService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lsec/core/sharememory/ICameraCoreService;)Z
    .locals 1
    .param p0, "impl"    # Lcom/lsec/core/sharememory/ICameraCoreService;

    .prologue
    .line 226
    sget-object v0, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;->sDefaultImpl:Lcom/lsec/core/sharememory/ICameraCoreService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 227
    sput-object p0, Lcom/lsec/core/sharememory/ICameraCoreService$Stub$Proxy;->sDefaultImpl:Lcom/lsec/core/sharememory/ICameraCoreService;

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 54
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 58
    const-string v5, "com.lsec.core.sharememory.ICameraCoreService"

    .line 59
    .local v5, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 63
    :sswitch_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :sswitch_1
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->isRecording()Z

    move-result v4

    .line 70
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_0

    move v6, v7

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 76
    .end local v4    # "_result":Z
    :sswitch_2
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->startRecord(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_3
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->stopRecord()V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    :sswitch_4
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 103
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lsec/core/sharememory/ICameraCoreService$Stub;->addExportMemoryFile(Landroid/os/ParcelFileDescriptor;III)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
