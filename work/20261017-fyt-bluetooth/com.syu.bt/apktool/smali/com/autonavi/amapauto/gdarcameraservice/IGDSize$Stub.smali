.class public abstract Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;
.super Landroid/os/Binder;
.source "IGDSize.java"

# interfaces
.implements Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autonavi.amapauto.gdarcameraservice.IGDSize"

.field static final TRANSACTION_getHeight:I = 0x2

.field static final TRANSACTION_getWidth:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.autonavi.amapauto.gdarcameraservice.IGDSize"

    invoke-virtual {p0, p0, v0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const-string v1, "com.autonavi.amapauto.gdarcameraservice.IGDSize"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;->sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;)Z
    .locals 1
    .param p0, "impl"    # Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    .prologue
    .line 164
    sget-object v0, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;->sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 165
    sput-object p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub$Proxy;->sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;

    .line 166
    const/4 v0, 0x1

    .line 168
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
    .line 62
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v2, 0x1

    .line 66
    const-string v1, "com.autonavi.amapauto.gdarcameraservice.IGDSize"

    .line 67
    .local v1, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 71
    :sswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;->getWidth()I

    move-result v0

    .line 78
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v0    # "_result":I
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;->getHeight()I

    move-result v0

    .line 86
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
