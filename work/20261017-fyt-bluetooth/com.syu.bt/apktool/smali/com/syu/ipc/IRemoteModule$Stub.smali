.class public abstract Lcom/syu/ipc/IRemoteModule$Stub;
.super Landroid/os/Binder;
.source "IRemoteModule.java"

# interfaces
.implements Lcom/syu/ipc/IRemoteModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/ipc/IRemoteModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/ipc/IRemoteModule$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.syu.ipc.IRemoteModule"

.field static final TRANSACTION_cmd:I = 0x1

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_register:I = 0x3

.field static final TRANSACTION_unregister:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.syu.ipc.IRemoteModule"

    invoke-virtual {p0, p0, v0}, Lcom/syu/ipc/IRemoteModule$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IRemoteModule;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.syu.ipc.IRemoteModule"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/syu/ipc/IRemoteModule;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/syu/ipc/IRemoteModule;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v9, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 50
    :sswitch_0
    const-string v10, "com.syu.ipc.IRemoteModule"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v10, "com.syu.ipc.IRemoteModule"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "cmdCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 56
    .local v4, "ints":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 57
    .local v2, "flts":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "strs":[Ljava/lang/String;
    invoke-virtual {p0, v1, v4, v2, v6}, Lcom/syu/ipc/IRemoteModule$Stub;->cmd(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v1    # "cmdCode":I
    .end local v2    # "flts":[F
    .end local v4    # "ints":[I
    .end local v6    # "strs":[Ljava/lang/String;
    :sswitch_2
    const-string v10, "com.syu.ipc.IRemoteModule"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 64
    .local v3, "getCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 65
    .restart local v4    # "ints":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 66
    .restart local v2    # "flts":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 67
    .restart local v6    # "strs":[Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v2, v6}, Lcom/syu/ipc/IRemoteModule$Stub;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v5

    .line 68
    .local v5, "result":Lcom/syu/ipc/ModuleObject;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v5, :cond_0

    .line 70
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v10, v5, Lcom/syu/ipc/ModuleObject;->ints:[I

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 72
    iget-object v10, v5, Lcom/syu/ipc/ModuleObject;->flts:[F

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 73
    iget-object v10, v5, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v2    # "flts":[F
    .end local v3    # "getCode":I
    .end local v4    # "ints":[I
    .end local v5    # "result":Lcom/syu/ipc/ModuleObject;
    .end local v6    # "strs":[Ljava/lang/String;
    :sswitch_3
    const-string v10, "com.syu.ipc.IRemoteModule"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/syu/ipc/IModuleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IModuleCallback;

    move-result-object v0

    .line 82
    .local v0, "callback":Lcom/syu/ipc/IModuleCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 83
    .local v8, "updateCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 84
    .local v7, "update":I
    invoke-virtual {p0, v0, v8, v7}, Lcom/syu/ipc/IRemoteModule$Stub;->register(Lcom/syu/ipc/IModuleCallback;II)V

    goto :goto_0

    .line 88
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    .end local v7    # "update":I
    .end local v8    # "updateCode":I
    :sswitch_4
    const-string v10, "com.syu.ipc.IRemoteModule"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/syu/ipc/IModuleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IModuleCallback;

    move-result-object v0

    .line 90
    .restart local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 91
    .restart local v8    # "updateCode":I
    invoke-virtual {p0, v0, v8}, Lcom/syu/ipc/IRemoteModule$Stub;->unregister(Lcom/syu/ipc/IModuleCallback;I)V

    goto/16 :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
