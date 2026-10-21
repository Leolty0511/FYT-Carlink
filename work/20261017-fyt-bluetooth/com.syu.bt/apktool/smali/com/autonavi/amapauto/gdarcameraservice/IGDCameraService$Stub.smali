.class public abstract Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;
.super Landroid/os/Binder;
.source "IGDCameraService.java"

# interfaces
.implements Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

.field static final TRANSACTION_closeCamera:I = 0x9

.field static final TRANSACTION_getRecommendSize:I = 0x4

.field static final TRANSACTION_initCamera:I = 0x7

.field static final TRANSACTION_isCameraConnected:I = 0x5

.field static final TRANSACTION_isCameraOpened:I = 0x6

.field static final TRANSACTION_isSupportArNavi:I = 0x3

.field static final TRANSACTION_openCamera:I = 0x8

.field static final TRANSACTION_registerCameraStateCallback:I = 0x1

.field static final TRANSACTION_unInitCamera:I = 0xa

.field static final TRANSACTION_unregisterCameraStateCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 136
    const-string v0, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {p0, p0, v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const-string v1, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 148
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    if-eqz v1, :cond_1

    .line 149
    check-cast v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    goto :goto_0

    .line 151
    :cond_1
    new-instance v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;
    .locals 1

    .prologue
    .line 621
    sget-object v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;)Z
    .locals 1
    .param p0, "impl"    # Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    .prologue
    .line 614
    sget-object v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 615
    sput-object p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    .line 616
    const/4 v0, 0x1

    .line 618
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
    .line 155
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 159
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    .line 160
    .local v4, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 164
    :sswitch_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :sswitch_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v1

    .line 174
    .local v1, "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->registerCameraStateCallback(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z

    move-result v3

    .line 175
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 181
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
    .end local v3    # "_result":Z
    :sswitch_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

    move-result-object v1

    .line 186
    .restart local v1    # "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->unregisterCameraStateCallback(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z

    move-result v3

    .line 187
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 193
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
    .end local v3    # "_result":Z
    :sswitch_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->isSupportArNavi(Ljava/lang/String;)Z

    move-result v3

    .line 197
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 203
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_4
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getRecommendSize(Ljava/lang/String;)Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    move-result-object v3

    .line 207
    .local v3, "_result":Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 213
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    :sswitch_5
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->isCameraConnected(Ljava/lang/String;)Z

    move-result v3

    .line 217
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_6
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->isCameraOpened(Ljava/lang/String;)Z

    move-result v3

    .line 227
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_7
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    .line 238
    sget-object v7, Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;

    .line 244
    .local v1, "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    .line 245
    sget-object v7, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 250
    .local v2, "_arg2":Landroid/view/Surface;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->initCamera(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;Landroid/view/Surface;)Z

    move-result v3

    .line 251
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v1    # "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;
    .end local v2    # "_arg2":Landroid/view/Surface;
    .end local v3    # "_result":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;
    goto :goto_2

    .line 248
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/view/Surface;
    goto :goto_3

    .line 257
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;
    .end local v2    # "_arg2":Landroid/view/Surface;
    :sswitch_8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->openCamera(Ljava/lang/String;)Z

    move-result v3

    .line 261
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 267
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_9
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->closeCamera(Ljava/lang/String;)Z

    move-result v3

    .line 271
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_a
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->unInitCamera(Ljava/lang/String;)Z

    move-result v3

    .line 281
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
