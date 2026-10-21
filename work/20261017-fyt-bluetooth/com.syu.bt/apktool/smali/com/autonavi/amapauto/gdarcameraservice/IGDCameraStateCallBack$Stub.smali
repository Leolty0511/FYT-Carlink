.class public abstract Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;
.super Landroid/os/Binder;
.source "IGDCameraStateCallBack.java"

# interfaces
.implements Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autonavi.amapauto.gdarcameraservice.IGDCameraStateCallBack"

.field static final TRANSACTION_onClosed:I = 0x4

.field static final TRANSACTION_onConnected:I = 0x1

.field static final TRANSACTION_onDisconnected:I = 0x2

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onOpened:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "com.autonavi.amapauto.gdarcameraservice.IGDCameraStateCallBack"

    invoke-virtual {p0, p0, v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const-string v1, "com.autonavi.amapauto.gdarcameraservice.IGDCameraStateCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    if-eqz v1, :cond_1

    .line 77
    check-cast v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;->sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z
    .locals 1
    .param p0, "impl"    # Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    .prologue
    .line 314
    sget-object v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;->sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 315
    sput-object p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub$Proxy;->sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    .line 316
    const/4 v0, 0x1

    .line 318
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
    .line 83
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x1

    .line 87
    const-string v3, "com.autonavi.amapauto.gdarcameraservice.IGDCameraStateCallBack"

    .line 88
    .local v3, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 92
    :sswitch_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :sswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->onConnected()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    :sswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->onDisconnected()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 111
    :sswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 120
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    sget-object v5, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;

    .line 127
    .local v1, "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->onOpened(Landroid/os/ParcelFileDescriptor;Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 117
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;
    .end local v2    # "_arg2":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 124
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;
    goto :goto_2

    .line 134
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;
    :sswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->onClosed(ILjava/lang/String;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 145
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->onError(ILjava/lang/String;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
