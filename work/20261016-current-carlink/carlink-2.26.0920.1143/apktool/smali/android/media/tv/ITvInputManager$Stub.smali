.class public abstract Landroid/media/tv/ITvInputManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/media/tv/ITvInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputManager"

.field static final TRANSACTION_acquireTvInputHardware:I = 0x25

.field static final TRANSACTION_addBlockedRating:I = 0xc

.field static final TRANSACTION_captureFrame:I = 0x28

.field static final TRANSACTION_createOverlayView:I = 0x18

.field static final TRANSACTION_createSession:I = 0xe

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x12

.field static final TRANSACTION_getAvailableTvStreamConfigList:I = 0x27

.field static final TRANSACTION_getBlockedRatings:I = 0xb

.field static final TRANSACTION_getDvbDeviceList:I = 0x2a

.field static final TRANSACTION_getHardwareList:I = 0x24

.field static final TRANSACTION_getTvContentRatingSystemList:I = 0x5

.field static final TRANSACTION_getTvInputInfo:I = 0x2

.field static final TRANSACTION_getTvInputList:I = 0x1

.field static final TRANSACTION_getTvInputState:I = 0x4

.field static final TRANSACTION_isParentalControlsEnabled:I = 0x8

.field static final TRANSACTION_isRatingBlocked:I = 0xa

.field static final TRANSACTION_isSingleSessionActive:I = 0x29

.field static final TRANSACTION_openDvbDevice:I = 0x2b

.field static final TRANSACTION_registerCallback:I = 0x6

.field static final TRANSACTION_relayoutOverlayView:I = 0x19

.field static final TRANSACTION_releaseSession:I = 0xf

.field static final TRANSACTION_releaseTvInputHardware:I = 0x26

.field static final TRANSACTION_removeBlockedRating:I = 0xd

.field static final TRANSACTION_removeOverlayView:I = 0x1a

.field static final TRANSACTION_requestChannelBrowsable:I = 0x2d

.field static final TRANSACTION_selectTrack:I = 0x16

.field static final TRANSACTION_sendAppPrivateCommand:I = 0x17

.field static final TRANSACTION_sendTvInputNotifyIntent:I = 0x2c

.field static final TRANSACTION_setCaptionEnabled:I = 0x15

.field static final TRANSACTION_setMainSession:I = 0x10

.field static final TRANSACTION_setParentalControlsEnabled:I = 0x9

.field static final TRANSACTION_setSurface:I = 0x11

.field static final TRANSACTION_setVolume:I = 0x13

.field static final TRANSACTION_startRecording:I = 0x22

.field static final TRANSACTION_stopRecording:I = 0x23

.field static final TRANSACTION_timeShiftEnablePositionTracking:I = 0x21

.field static final TRANSACTION_timeShiftPause:I = 0x1d

.field static final TRANSACTION_timeShiftPlay:I = 0x1c

.field static final TRANSACTION_timeShiftResume:I = 0x1e

.field static final TRANSACTION_timeShiftSeekTo:I = 0x1f

.field static final TRANSACTION_timeShiftSetPlaybackParams:I = 0x20

.field static final TRANSACTION_tune:I = 0x14

.field static final TRANSACTION_unblockContent:I = 0x1b

.field static final TRANSACTION_unregisterCallback:I = 0x7

.field static final TRANSACTION_updateTvInputInfo:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.media.tv.ITvInputManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManager;
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
    const-string v0, "android.media.tv.ITvInputManager"

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
    instance-of v1, v0, Landroid/media/tv/ITvInputManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/media/tv/ITvInputManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/media/tv/ITvInputManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "android.media.tv.ITvInputManager"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_17

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    .line 30
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    move-object v3, p1

    .line 35
    check-cast v3, Landroid/net/Uri;

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-interface {p0, v3, p1}, Landroid/media/tv/ITvInputManager;->requestChannelBrowsable(Landroid/net/Uri;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    .line 59
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    move-object v3, p1

    .line 64
    check-cast v3, Landroid/content/Intent;

    .line 65
    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-interface {p0, v3, p1}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    .line 75
    .line 76
    return v2

    .line 77
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    sget-object p1, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    .line 88
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    move-object v3, p1

    .line 93
    check-cast v3, Landroid/media/tv/DvbDeviceInfo;

    .line 94
    .line 95
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-interface {p0, v3, p1}, Landroid/media/tv/ITvInputManager;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return v2

    .line 119
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p0}, Landroid/media/tv/ITvInputManager;->getDvbDeviceList()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    return v2

    .line 133
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-interface {p0, p1}, Landroid/media/tv/ITvInputManager;->isSingleSessionActive(I)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    .line 149
    .line 150
    return v2

    .line 151
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 159
    .line 160
    .line 161
    move-result p4

    .line 162
    if-eqz p4, :cond_4

    .line 163
    .line 164
    sget-object p4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 165
    .line 166
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p4

    .line 170
    check-cast p4, Landroid/view/Surface;

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    move-object p4, v3

    .line 174
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    sget-object v0, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 181
    .line 182
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    move-object v3, v0

    .line 187
    check-cast v3, Landroid/media/tv/TvStreamConfig;

    .line 188
    .line 189
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    invoke-interface {p0, p1, p4, v3, p2}, Landroid/media/tv/ITvInputManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    .line 202
    .line 203
    return v2

    .line 204
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 223
    .line 224
    .line 225
    return v2

    .line 226
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 234
    .line 235
    .line 236
    move-result-object p4

    .line 237
    invoke-static {p4}, Landroid/media/tv/ITvInputHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;

    .line 238
    .line 239
    .line 240
    move-result-object p4

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    invoke-interface {p0, p1, p4, p2}, Landroid/media/tv/ITvInputManager;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    .line 250
    .line 251
    return v2

    .line 252
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 260
    .line 261
    .line 262
    move-result-object p4

    .line 263
    invoke-static {p4}, Landroid/media/tv/ITvInputHardwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardwareCallback;

    .line 264
    .line 265
    .line 266
    move-result-object p4

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_6

    .line 272
    .line 273
    sget-object v0, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 274
    .line 275
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Landroid/media/tv/TvInputInfo;

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_6
    move-object v0, v3

    .line 283
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/media/tv/ITvInputManager;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    .line 293
    .line 294
    if-eqz p1, :cond_7

    .line 295
    .line 296
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 301
    .line 302
    .line 303
    return v2

    .line 304
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-interface {p0}, Landroid/media/tv/ITvInputManager;->getHardwareList()Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 315
    .line 316
    .line 317
    return v2

    .line 318
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->stopRecording(Landroid/os/IBinder;I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    .line 334
    .line 335
    return v2

    .line 336
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 344
    .line 345
    .line 346
    move-result p4

    .line 347
    if-eqz p4, :cond_8

    .line 348
    .line 349
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 350
    .line 351
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object p4

    .line 355
    move-object v3, p4

    .line 356
    check-cast v3, Landroid/net/Uri;

    .line 357
    .line 358
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 359
    .line 360
    .line 361
    move-result p2

    .line 362
    invoke-interface {p0, p1, v3, p2}, Landroid/media/tv/ITvInputManager;->startRecording(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    .line 367
    .line 368
    return v2

    .line 369
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 377
    .line 378
    .line 379
    move-result p4

    .line 380
    if-eqz p4, :cond_9

    .line 381
    .line 382
    move v0, v2

    .line 383
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 384
    .line 385
    .line 386
    move-result p2

    .line 387
    invoke-interface {p0, p1, v0, p2}, Landroid/media/tv/ITvInputManager;->timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    .line 392
    .line 393
    return v2

    .line 394
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 402
    .line 403
    .line 404
    move-result p4

    .line 405
    if-eqz p4, :cond_a

    .line 406
    .line 407
    sget-object p4, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 408
    .line 409
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object p4

    .line 413
    move-object v3, p4

    .line 414
    check-cast v3, Landroid/media/PlaybackParams;

    .line 415
    .line 416
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 417
    .line 418
    .line 419
    move-result p2

    .line 420
    invoke-interface {p0, p1, v3, p2}, Landroid/media/tv/ITvInputManager;->timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    .line 425
    .line 426
    return v2

    .line 427
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 435
    .line 436
    .line 437
    move-result-wide v0

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 439
    .line 440
    .line 441
    move-result p2

    .line 442
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/media/tv/ITvInputManager;->timeShiftSeekTo(Landroid/os/IBinder;JI)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    .line 447
    .line 448
    return v2

    .line 449
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 457
    .line 458
    .line 459
    move-result p2

    .line 460
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->timeShiftResume(Landroid/os/IBinder;I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    .line 465
    .line 466
    return v2

    .line 467
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 475
    .line 476
    .line 477
    move-result p2

    .line 478
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->timeShiftPause(Landroid/os/IBinder;I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    .line 483
    .line 484
    return v2

    .line 485
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 493
    .line 494
    .line 495
    move-result p4

    .line 496
    if-eqz p4, :cond_b

    .line 497
    .line 498
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 499
    .line 500
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object p4

    .line 504
    move-object v3, p4

    .line 505
    check-cast v3, Landroid/net/Uri;

    .line 506
    .line 507
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 508
    .line 509
    .line 510
    move-result p2

    .line 511
    invoke-interface {p0, p1, v3, p2}, Landroid/media/tv/ITvInputManager;->timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    .line 516
    .line 517
    return v2

    .line 518
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object p4

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 530
    .line 531
    .line 532
    move-result p2

    .line 533
    invoke-interface {p0, p1, p4, p2}, Landroid/media/tv/ITvInputManager;->unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    .line 538
    .line 539
    return v2

    .line 540
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 548
    .line 549
    .line 550
    move-result p2

    .line 551
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->removeOverlayView(Landroid/os/IBinder;I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    .line 556
    .line 557
    return v2

    .line 558
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 566
    .line 567
    .line 568
    move-result p4

    .line 569
    if-eqz p4, :cond_c

    .line 570
    .line 571
    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 572
    .line 573
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object p4

    .line 577
    move-object v3, p4

    .line 578
    check-cast v3, Landroid/graphics/Rect;

    .line 579
    .line 580
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 581
    .line 582
    .line 583
    move-result p2

    .line 584
    invoke-interface {p0, p1, v3, p2}, Landroid/media/tv/ITvInputManager;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    .line 589
    .line 590
    return v2

    .line 591
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 599
    .line 600
    .line 601
    move-result-object p4

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_d

    .line 607
    .line 608
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 609
    .line 610
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    move-object v3, v0

    .line 615
    check-cast v3, Landroid/graphics/Rect;

    .line 616
    .line 617
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 618
    .line 619
    .line 620
    move-result p2

    .line 621
    invoke-interface {p0, p1, p4, v3, p2}, Landroid/media/tv/ITvInputManager;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    .line 626
    .line 627
    return v2

    .line 628
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 632
    .line 633
    .line 634
    move-result-object p1

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object p4

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    if-eqz v0, :cond_e

    .line 644
    .line 645
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 646
    .line 647
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    move-object v3, v0

    .line 652
    check-cast v3, Landroid/os/Bundle;

    .line 653
    .line 654
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 655
    .line 656
    .line 657
    move-result p2

    .line 658
    invoke-interface {p0, p1, p4, v3, p2}, Landroid/media/tv/ITvInputManager;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    .line 663
    .line 664
    return v2

    .line 665
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 669
    .line 670
    .line 671
    move-result-object p1

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 673
    .line 674
    .line 675
    move-result p4

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 681
    .line 682
    .line 683
    move-result p2

    .line 684
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/media/tv/ITvInputManager;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    .line 689
    .line 690
    return v2

    .line 691
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 699
    .line 700
    .line 701
    move-result p4

    .line 702
    if-eqz p4, :cond_f

    .line 703
    .line 704
    move v0, v2

    .line 705
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 706
    .line 707
    .line 708
    move-result p2

    .line 709
    invoke-interface {p0, p1, v0, p2}, Landroid/media/tv/ITvInputManager;->setCaptionEnabled(Landroid/os/IBinder;ZI)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    .line 714
    .line 715
    return v2

    .line 716
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 720
    .line 721
    .line 722
    move-result-object p1

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 724
    .line 725
    .line 726
    move-result p4

    .line 727
    if-eqz p4, :cond_10

    .line 728
    .line 729
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 730
    .line 731
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object p4

    .line 735
    check-cast p4, Landroid/net/Uri;

    .line 736
    .line 737
    goto :goto_3

    .line 738
    :cond_10
    move-object p4, v3

    .line 739
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    if-eqz v0, :cond_11

    .line 744
    .line 745
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 746
    .line 747
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    move-object v3, v0

    .line 752
    check-cast v3, Landroid/os/Bundle;

    .line 753
    .line 754
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 755
    .line 756
    .line 757
    move-result p2

    .line 758
    invoke-interface {p0, p1, p4, v3, p2}, Landroid/media/tv/ITvInputManager;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    .line 763
    .line 764
    return v2

    .line 765
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 773
    .line 774
    .line 775
    move-result p4

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 777
    .line 778
    .line 779
    move-result p2

    .line 780
    invoke-interface {p0, p1, p4, p2}, Landroid/media/tv/ITvInputManager;->setVolume(Landroid/os/IBinder;FI)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    .line 785
    .line 786
    return v2

    .line 787
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 795
    .line 796
    .line 797
    move-result v5

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 799
    .line 800
    .line 801
    move-result v6

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 803
    .line 804
    .line 805
    move-result v7

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 807
    .line 808
    .line 809
    move-result v8

    .line 810
    move-object v3, p0

    .line 811
    invoke-interface/range {v3 .. v8}, Landroid/media/tv/ITvInputManager;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    .line 816
    .line 817
    return v2

    .line 818
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 822
    .line 823
    .line 824
    move-result-object p1

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 826
    .line 827
    .line 828
    move-result p4

    .line 829
    if-eqz p4, :cond_12

    .line 830
    .line 831
    sget-object p4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 832
    .line 833
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object p4

    .line 837
    move-object v3, p4

    .line 838
    check-cast v3, Landroid/view/Surface;

    .line 839
    .line 840
    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 841
    .line 842
    .line 843
    move-result p2

    .line 844
    invoke-interface {p0, p1, v3, p2}, Landroid/media/tv/ITvInputManager;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    .line 849
    .line 850
    return v2

    .line 851
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 855
    .line 856
    .line 857
    move-result-object p1

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 859
    .line 860
    .line 861
    move-result p2

    .line 862
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->setMainSession(Landroid/os/IBinder;I)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    .line 867
    .line 868
    return v2

    .line 869
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 873
    .line 874
    .line 875
    move-result-object p1

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 877
    .line 878
    .line 879
    move-result p2

    .line 880
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->releaseSession(Landroid/os/IBinder;I)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    .line 885
    .line 886
    return v2

    .line 887
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 891
    .line 892
    .line 893
    move-result-object p1

    .line 894
    invoke-static {p1}, Landroid/media/tv/ITvInputClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputClient;

    .line 895
    .line 896
    .line 897
    move-result-object v4

    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v5

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 903
    .line 904
    .line 905
    move-result p1

    .line 906
    if-eqz p1, :cond_13

    .line 907
    .line 908
    move v6, v2

    .line 909
    goto :goto_4

    .line 910
    :cond_13
    move v6, v0

    .line 911
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 912
    .line 913
    .line 914
    move-result v7

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 916
    .line 917
    .line 918
    move-result v8

    .line 919
    move-object v3, p0

    .line 920
    invoke-interface/range {v3 .. v8}, Landroid/media/tv/ITvInputManager;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    .line 925
    .line 926
    return v2

    .line 927
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object p1

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 935
    .line 936
    .line 937
    move-result p2

    .line 938
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->removeBlockedRating(Ljava/lang/String;I)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    .line 943
    .line 944
    return v2

    .line 945
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object p1

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 953
    .line 954
    .line 955
    move-result p2

    .line 956
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->addBlockedRating(Ljava/lang/String;I)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    .line 961
    .line 962
    return v2

    .line 963
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 967
    .line 968
    .line 969
    move-result p1

    .line 970
    invoke-interface {p0, p1}, Landroid/media/tv/ITvInputManager;->getBlockedRatings(I)Ljava/util/List;

    .line 971
    .line 972
    .line 973
    move-result-object p1

    .line 974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    .line 976
    .line 977
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 978
    .line 979
    .line 980
    return v2

    .line 981
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object p1

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 989
    .line 990
    .line 991
    move-result p2

    .line 992
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->isRatingBlocked(Ljava/lang/String;I)Z

    .line 993
    .line 994
    .line 995
    move-result p1

    .line 996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    .line 998
    .line 999
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    .line 1001
    .line 1002
    return v2

    .line 1003
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1007
    .line 1008
    .line 1009
    move-result p1

    .line 1010
    if-eqz p1, :cond_14

    .line 1011
    .line 1012
    move v0, v2

    .line 1013
    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1014
    .line 1015
    .line 1016
    move-result p1

    .line 1017
    invoke-interface {p0, v0, p1}, Landroid/media/tv/ITvInputManager;->setParentalControlsEnabled(ZI)V

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    .line 1022
    .line 1023
    return v2

    .line 1024
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1028
    .line 1029
    .line 1030
    move-result p1

    .line 1031
    invoke-interface {p0, p1}, Landroid/media/tv/ITvInputManager;->isParentalControlsEnabled(I)Z

    .line 1032
    .line 1033
    .line 1034
    move-result p1

    .line 1035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    .line 1040
    .line 1041
    return v2

    .line 1042
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1046
    .line 1047
    .line 1048
    move-result-object p1

    .line 1049
    invoke-static {p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    .line 1050
    .line 1051
    .line 1052
    move-result-object p1

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1054
    .line 1055
    .line 1056
    move-result p2

    .line 1057
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    .line 1062
    .line 1063
    return v2

    .line 1064
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1068
    .line 1069
    .line 1070
    move-result-object p1

    .line 1071
    invoke-static {p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    .line 1072
    .line 1073
    .line 1074
    move-result-object p1

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1076
    .line 1077
    .line 1078
    move-result p2

    .line 1079
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    .line 1084
    .line 1085
    return v2

    .line 1086
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1090
    .line 1091
    .line 1092
    move-result p1

    .line 1093
    invoke-interface {p0, p1}, Landroid/media/tv/ITvInputManager;->getTvContentRatingSystemList(I)Ljava/util/List;

    .line 1094
    .line 1095
    .line 1096
    move-result-object p1

    .line 1097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1101
    .line 1102
    .line 1103
    return v2

    .line 1104
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1108
    .line 1109
    .line 1110
    move-result-object p1

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1112
    .line 1113
    .line 1114
    move-result p2

    .line 1115
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->getTvInputState(Ljava/lang/String;I)I

    .line 1116
    .line 1117
    .line 1118
    move-result p1

    .line 1119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    .line 1124
    .line 1125
    return v2

    .line 1126
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1130
    .line 1131
    .line 1132
    move-result p1

    .line 1133
    if-eqz p1, :cond_15

    .line 1134
    .line 1135
    sget-object p1, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1136
    .line 1137
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object p1

    .line 1141
    move-object v3, p1

    .line 1142
    check-cast v3, Landroid/media/tv/TvInputInfo;

    .line 1143
    .line 1144
    :cond_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1145
    .line 1146
    .line 1147
    move-result p1

    .line 1148
    invoke-interface {p0, v3, p1}, Landroid/media/tv/ITvInputManager;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    .line 1153
    .line 1154
    return v2

    .line 1155
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object p1

    .line 1162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1163
    .line 1164
    .line 1165
    move-result p2

    .line 1166
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputManager;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;

    .line 1167
    .line 1168
    .line 1169
    move-result-object p1

    .line 1170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    .line 1172
    .line 1173
    if-eqz p1, :cond_16

    .line 1174
    .line 1175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {p1, p3, v2}, Landroid/media/tv/TvInputInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1179
    .line 1180
    .line 1181
    goto :goto_5

    .line 1182
    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    .line 1184
    .line 1185
    :goto_5
    return v2

    .line 1186
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1190
    .line 1191
    .line 1192
    move-result p1

    .line 1193
    invoke-interface {p0, p1}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    .line 1194
    .line 1195
    .line 1196
    move-result-object p1

    .line 1197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1201
    .line 1202
    .line 1203
    return v2

    .line 1204
    :cond_17
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    return v2

    .line 1208
    nop

    .line 1209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
