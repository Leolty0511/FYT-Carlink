.class public abstract Lcom/syu/ipc/IRemote$Stub;
.super Landroid/os/Binder;
.source "IRemote.java"

# interfaces
.implements Lcom/syu/ipc/IRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/ipc/IRemote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/ipc/IRemote$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.syu.ipc.IRemote"

.field static final TRANSACTION_cmd:I = 0x1

.field static final TRANSACTION_getAF:I = 0x6

.field static final TRANSACTION_getAI:I = 0x5

.field static final TRANSACTION_getAS:I = 0x7

.field static final TRANSACTION_getF:I = 0x3

.field static final TRANSACTION_getI:I = 0x2

.field static final TRANSACTION_getS:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.syu.ipc.IRemote"

    invoke-virtual {p0, p0, v0}, Lcom/syu/ipc/IRemote$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IRemote;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const-string v1, "com.syu.ipc.IRemote"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/syu/ipc/IRemote;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/syu/ipc/IRemote;

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Lcom/syu/ipc/IRemote$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/syu/ipc/IRemote$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 57
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

    .line 62
    sparse-switch p1, :sswitch_data_0

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 64
    :sswitch_0
    const-string v10, "com.syu.ipc.IRemote"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :sswitch_1
    const-string v10, "com.syu.ipc.IRemote"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, "cmdCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 71
    .local v5, "ints":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 72
    .local v3, "flts":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "strs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v5, v3, v7}, Lcom/syu/ipc/IRemote$Stub;->cmd(I[I[F[Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v2    # "cmdCode":I
    .end local v3    # "flts":[F
    .end local v5    # "ints":[I
    .end local v7    # "strs":[Ljava/lang/String;
    :sswitch_2
    const-string v10, "com.syu.ipc.IRemote"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 80
    .local v4, "getCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 81
    .restart local v5    # "ints":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 82
    .restart local v3    # "flts":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 83
    .restart local v7    # "strs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v5, v3, v7}, Lcom/syu/ipc/IRemote$Stub;->getI(I[I[F[Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0    # "_result":I
    .end local v3    # "flts":[F
    .end local v4    # "getCode":I
    .end local v5    # "ints":[I
    .end local v7    # "strs":[Ljava/lang/String;
    :sswitch_3
    const-string v10, "com.syu.ipc.IRemote"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    .restart local v4    # "getCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 92
    .restart local v5    # "ints":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 93
    .restart local v3    # "flts":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 94
    .restart local v7    # "strs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v5, v3, v7}, Lcom/syu/ipc/IRemote$Stub;->getF(I[I[F[Ljava/lang/String;)F

    move-result v0

    .line 95
    .local v0, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 100
    .end local v0    # "_result":F
    .end local v3    # "flts":[F
    .end local v4    # "getCode":I
    .end local v5    # "ints":[I
    .end local v7    # "strs":[Ljava/lang/String;
    :sswitch_4
    const-string v10, "com.syu.ipc.IRemote"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 102
    .restart local v4    # "getCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 103
    .restart local v5    # "ints":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 104
    .restart local v3    # "flts":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 105
    .restart local v7    # "strs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v5, v3, v7}, Lcom/syu/ipc/IRemote$Stub;->getS(I[I[F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    .end local v0    # "_result":Ljava/lang/String;
    .end local v3    # "flts":[F
    .end local v4    # "getCode":I
    .end local v5    # "ints":[I
    .end local v7    # "strs":[Ljava/lang/String;
    :sswitch_5
    const-string v10, "com.syu.ipc.IRemote"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 113
    .restart local v4    # "getCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 114
    .restart local v5    # "ints":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 115
    .restart local v3    # "flts":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 116
    .restart local v7    # "strs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v5, v3, v7}, Lcom/syu/ipc/IRemote$Stub;->getAI(I[I[F[Ljava/lang/String;)[I

    move-result-object v0

    .line 117
    .local v0, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "_result":[I
    .end local v3    # "flts":[F
    .end local v4    # "getCode":I
    .end local v5    # "ints":[I
    .end local v7    # "strs":[Ljava/lang/String;
    :sswitch_6
    const-string v10, "com.syu.ipc.IRemote"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    .restart local v4    # "getCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 125
    .restart local v5    # "ints":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 126
    .restart local v3    # "flts":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 127
    .restart local v7    # "strs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v5, v3, v7}, Lcom/syu/ipc/IRemote$Stub;->getAF(I[I[F[Ljava/lang/String;)[F

    move-result-object v0

    .line 128
    .local v0, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    .line 133
    .end local v0    # "_result":[F
    .end local v3    # "flts":[F
    .end local v4    # "getCode":I
    .end local v5    # "ints":[I
    .end local v7    # "strs":[Ljava/lang/String;
    :sswitch_7
    const-string v10, "com.syu.ipc.IRemote"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 135
    .restart local v4    # "getCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 136
    .restart local v5    # "ints":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 137
    .restart local v3    # "flts":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 138
    .restart local v7    # "strs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v5, v3, v7}, Lcom/syu/ipc/IRemote$Stub;->getAS(I[I[F[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v3    # "flts":[F
    .end local v4    # "getCode":I
    .end local v5    # "ints":[I
    .end local v7    # "strs":[Ljava/lang/String;
    :sswitch_8
    const-string v10, "com.syu.ipc.IRemote"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/syu/ipc/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/ICallback;

    move-result-object v1

    .line 146
    .local v1, "cb":Lcom/syu/ipc/ICallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 147
    .local v8, "updateCode":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    move v6, v9

    .line 148
    .local v6, "now":Z
    :goto_1
    invoke-virtual {p0, v1, v8, v6}, Lcom/syu/ipc/IRemote$Stub;->registerCallback(Lcom/syu/ipc/ICallback;IZ)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 147
    .end local v6    # "now":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 153
    .end local v1    # "cb":Lcom/syu/ipc/ICallback;
    .end local v8    # "updateCode":I
    :sswitch_9
    const-string v10, "com.syu.ipc.IRemote"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/syu/ipc/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/ICallback;

    move-result-object v1

    .line 156
    .restart local v1    # "cb":Lcom/syu/ipc/ICallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 157
    .restart local v8    # "updateCode":I
    invoke-virtual {p0, v1, v8}, Lcom/syu/ipc/IRemote$Stub;->unregisterCallback(Lcom/syu/ipc/ICallback;I)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 62
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
