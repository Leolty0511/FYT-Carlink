.class public abstract Landroid/bluetooth/IBluetoothGattCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattCallback"

.field static final TRANSACTION_onCharacteristicRead:I = 0x6

.field static final TRANSACTION_onCharacteristicWrite:I = 0x7

.field static final TRANSACTION_onClientConnectionState:I = 0x2

.field static final TRANSACTION_onClientRegistered:I = 0x1

.field static final TRANSACTION_onConfigureMTU:I = 0xd

.field static final TRANSACTION_onConnectionUpdated:I = 0xe

.field static final TRANSACTION_onDescriptorRead:I = 0x9

.field static final TRANSACTION_onDescriptorWrite:I = 0xa

.field static final TRANSACTION_onExecuteWrite:I = 0x8

.field static final TRANSACTION_onNotify:I = 0xb

.field static final TRANSACTION_onPhyRead:I = 0x4

.field static final TRANSACTION_onPhyUpdate:I = 0x3

.field static final TRANSACTION_onReadRemoteRssi:I = 0xc

.field static final TRANSACTION_onSearchComplete:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    move-object v3, p0

    .line 41
    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothGattCallback;->onConnectionUpdated(Ljava/lang/String;IIII)V

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-interface {p0, p1, p3, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onConfigureMTU(Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-interface {p0, p1, p3, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onReadRemoteRssi(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-interface {p0, p1, p3, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onNotify(Ljava/lang/String;I[B)V

    .line 99
    .line 100
    .line 101
    return v2

    .line 102
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-interface {p0, p1, p3, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorWrite(Ljava/lang/String;II)V

    .line 118
    .line 119
    .line 120
    return v2

    .line 121
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorRead(Ljava/lang/String;II[B)V

    .line 141
    .line 142
    .line 143
    return v2

    .line 144
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onExecuteWrite(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    return v2

    .line 159
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    invoke-interface {p0, p1, p3, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;II)V

    .line 175
    .line 176
    .line 177
    return v2

    .line 178
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 190
    .line 191
    .line 192
    move-result p4

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicRead(Ljava/lang/String;II[B)V

    .line 198
    .line 199
    .line 200
    return v2

    .line 201
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    sget-object p3, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 209
    .line 210
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-interface {p0, p1, p3, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V

    .line 219
    .line 220
    .line 221
    return v2

    .line 222
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 230
    .line 231
    .line 232
    move-result p3

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 234
    .line 235
    .line 236
    move-result p4

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onPhyRead(Ljava/lang/String;III)V

    .line 242
    .line 243
    .line 244
    return v2

    .line 245
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 253
    .line 254
    .line 255
    move-result p3

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 257
    .line 258
    .line 259
    move-result p4

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onPhyUpdate(Ljava/lang/String;III)V

    .line 265
    .line 266
    .line 267
    return v2

    .line 268
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 276
    .line 277
    .line 278
    move-result p3

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 280
    .line 281
    .line 282
    move-result p4

    .line 283
    if-eqz p4, :cond_0

    .line 284
    .line 285
    move p4, v2

    .line 286
    goto :goto_0

    .line 287
    :cond_0
    const/4 p4, 0x0

    .line 288
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return v2

    .line 296
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onClientRegistered(II)V

    .line 308
    .line 309
    .line 310
    return v2

    .line 311
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    return v2

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
