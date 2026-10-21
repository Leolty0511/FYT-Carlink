.class public abstract Landroid/media/midi/IMidiManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/media/midi/IMidiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiManager"

.field static final TRANSACTION_closeDevice:I = 0x6

.field static final TRANSACTION_getDeviceStatus:I = 0xa

.field static final TRANSACTION_getDevices:I = 0x1

.field static final TRANSACTION_getServiceDeviceInfo:I = 0x9

.field static final TRANSACTION_openBluetoothDevice:I = 0x5

.field static final TRANSACTION_openDevice:I = 0x4

.field static final TRANSACTION_registerDeviceServer:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x2

.field static final TRANSACTION_setDeviceStatus:I = 0xb

.field static final TRANSACTION_unregisterDeviceServer:I = 0x8

.field static final TRANSACTION_unregisterListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.media.midi.IMidiManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;
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
    const-string v0, "android.media.midi.IMidiManager"

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
    instance-of v1, v0, Landroid/media/midi/IMidiManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/media/midi/IMidiManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/media/midi/IMidiManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/media/midi/IMidiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 14

    .line 1
    move-object v8, p0

    .line 2
    move v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v9, p3

    .line 6
    .line 7
    const v2, 0x5f4e5446

    .line 8
    .line 9
    .line 10
    const-string v3, "android.media.midi.IMidiManager"

    .line 11
    .line 12
    const/4 v10, 0x1

    .line 13
    if-eq v0, v2, :cond_8

    .line 14
    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0

    .line 25
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    sget-object v2, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    .line 44
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v2, v1

    .line 49
    check-cast v2, Landroid/media/midi/MidiDeviceStatus;

    .line 50
    .line 51
    :cond_0
    invoke-interface {p0, v0, v2}, Landroid/media/midi/IMidiManager;->setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    .line 56
    .line 57
    return v10

    .line 58
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    sget-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    .line 69
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v2, v0

    .line 74
    check-cast v2, Landroid/media/midi/MidiDeviceInfo;

    .line 75
    .line 76
    :cond_1
    invoke-interface {p0, v2}, Landroid/media/midi/IMidiManager;->getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v9, v10}, Landroid/media/midi/MidiDeviceStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return v10

    .line 96
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {p0, v0, v1}, Landroid/media/midi/IMidiManager;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    .line 113
    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v9, v10}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    .line 125
    .line 126
    :goto_1
    return v10

    .line 127
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {p0, v0}, Landroid/media/midi/IMidiManager;->unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    .line 143
    .line 144
    return v10

    .line 145
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_4

    .line 177
    .line 178
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 179
    .line 180
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/os/Bundle;

    .line 185
    .line 186
    move-object v12, v0

    .line 187
    goto :goto_2

    .line 188
    :cond_4
    move-object v12, v2

    .line 189
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    move-object v0, p0

    .line 194
    move-object v1, v3

    .line 195
    move v2, v4

    .line 196
    move v3, v5

    .line 197
    move-object v4, v6

    .line 198
    move-object v5, v7

    .line 199
    move-object v6, v12

    .line 200
    move v7, v13

    .line 201
    invoke-interface/range {v0 .. v7}, Landroid/media/midi/IMidiManager;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    .line 207
    .line 208
    if-eqz v0, :cond_5

    .line 209
    .line 210
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v9, v10}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    .line 219
    .line 220
    :goto_3
    return v10

    .line 221
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-interface {p0, v0, v1}, Landroid/media/midi/IMidiManager;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    .line 237
    .line 238
    return v10

    .line 239
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_6

    .line 251
    .line 252
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 253
    .line 254
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 259
    .line 260
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v1}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-interface {p0, v0, v2, v1}, Landroid/media/midi/IMidiManager;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    .line 273
    .line 274
    return v10

    .line 275
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_7

    .line 287
    .line 288
    sget-object v2, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    .line 290
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    check-cast v2, Landroid/media/midi/MidiDeviceInfo;

    .line 295
    .line 296
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-static {v1}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-interface {p0, v0, v2, v1}, Landroid/media/midi/IMidiManager;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    .line 309
    .line 310
    return v10

    .line 311
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-static {v1}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-interface {p0, v0, v1}, Landroid/media/midi/IMidiManager;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    .line 331
    .line 332
    return v10

    .line 333
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-static {v1}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-interface {p0, v0, v1}, Landroid/media/midi/IMidiManager;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    .line 353
    .line 354
    return v10

    .line 355
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-interface {p0}, Landroid/media/midi/IMidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 366
    .line 367
    .line 368
    return v10

    .line 369
    :cond_8
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return v10

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
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
