.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final TRANSACTION_appPrivateCommand:I = 0x9

.field static final TRANSACTION_createOverlayView:I = 0xa

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final TRANSACTION_relayoutOverlayView:I = 0xb

.field static final TRANSACTION_release:I = 0x1

.field static final TRANSACTION_removeOverlayView:I = 0xc

.field static final TRANSACTION_selectTrack:I = 0x8

.field static final TRANSACTION_setCaptionEnabled:I = 0x7

.field static final TRANSACTION_setMain:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x3

.field static final TRANSACTION_setVolume:I = 0x5

.field static final TRANSACTION_startRecording:I = 0x14

.field static final TRANSACTION_stopRecording:I = 0x15

.field static final TRANSACTION_timeShiftEnablePositionTracking:I = 0x13

.field static final TRANSACTION_timeShiftPause:I = 0xf

.field static final TRANSACTION_timeShiftPlay:I = 0xe

.field static final TRANSACTION_timeShiftResume:I = 0x10

.field static final TRANSACTION_timeShiftSeekTo:I = 0x11

.field static final TRANSACTION_timeShiftSetPlaybackParams:I = 0x12

.field static final TRANSACTION_tune:I = 0x6

.field static final TRANSACTION_unblockContent:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.media.tv.ITvInputSession"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
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
    const-string v0, "android.media.tv.ITvInputSession"

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
    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/media/tv/ITvInputSession;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "android.media.tv.ITvInputSession"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_c

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
    invoke-interface {p0}, Landroid/media/tv/ITvInputSession;->stopRecording()V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    .line 37
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    move-object v3, p1

    .line 42
    check-cast v3, Landroid/net/Uri;

    .line 43
    .line 44
    :cond_0
    invoke-interface {p0, v3}, Landroid/media/tv/ITvInputSession;->startRecording(Landroid/net/Uri;)V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :pswitch_2
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
    move v0, v2

    .line 58
    :cond_1
    invoke-interface {p0, v0}, Landroid/media/tv/ITvInputSession;->timeShiftEnablePositionTracking(Z)V

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    sget-object p1, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 72
    .line 73
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    move-object v3, p1

    .line 78
    check-cast v3, Landroid/media/PlaybackParams;

    .line 79
    .line 80
    :cond_2
    invoke-interface {p0, v3}, Landroid/media/tv/ITvInputSession;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 81
    .line 82
    .line 83
    return v2

    .line 84
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 88
    .line 89
    .line 90
    move-result-wide p1

    .line 91
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSeekTo(J)V

    .line 92
    .line 93
    .line 94
    return v2

    .line 95
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0}, Landroid/media/tv/ITvInputSession;->timeShiftResume()V

    .line 99
    .line 100
    .line 101
    return v2

    .line 102
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p0}, Landroid/media/tv/ITvInputSession;->timeShiftPause()V

    .line 106
    .line 107
    .line 108
    return v2

    .line 109
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 119
    .line 120
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    move-object v3, p1

    .line 125
    check-cast v3, Landroid/net/Uri;

    .line 126
    .line 127
    :cond_3
    invoke-interface {p0, v3}, Landroid/media/tv/ITvInputSession;->timeShiftPlay(Landroid/net/Uri;)V

    .line 128
    .line 129
    .line 130
    return v2

    .line 131
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-interface {p0, p1}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v2

    .line 142
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p0}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V

    .line 146
    .line 147
    .line 148
    return v2

    .line 149
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_4

    .line 157
    .line 158
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    .line 160
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    move-object v3, p1

    .line 165
    check-cast v3, Landroid/graphics/Rect;

    .line 166
    .line 167
    :cond_4
    invoke-interface {p0, v3}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V

    .line 168
    .line 169
    .line 170
    return v2

    .line 171
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 179
    .line 180
    .line 181
    move-result p3

    .line 182
    if-eqz p3, :cond_5

    .line 183
    .line 184
    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 185
    .line 186
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    move-object v3, p2

    .line 191
    check-cast v3, Landroid/graphics/Rect;

    .line 192
    .line 193
    :cond_5
    invoke-interface {p0, p1, v3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 194
    .line 195
    .line 196
    return v2

    .line 197
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 205
    .line 206
    .line 207
    move-result p3

    .line 208
    if-eqz p3, :cond_6

    .line 209
    .line 210
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 211
    .line 212
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    move-object v3, p2

    .line 217
    check-cast v3, Landroid/os/Bundle;

    .line 218
    .line 219
    :cond_6
    invoke-interface {p0, p1, v3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 220
    .line 221
    .line 222
    return v2

    .line 223
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-interface {p0, p1, p2}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return v2

    .line 238
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_7

    .line 246
    .line 247
    move v0, v2

    .line 248
    :cond_7
    invoke-interface {p0, v0}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V

    .line 249
    .line 250
    .line 251
    return v2

    .line 252
    :pswitch_f
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
    if-eqz p1, :cond_8

    .line 260
    .line 261
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 262
    .line 263
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    check-cast p1, Landroid/net/Uri;

    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_8
    move-object p1, v3

    .line 271
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 272
    .line 273
    .line 274
    move-result p3

    .line 275
    if-eqz p3, :cond_9

    .line 276
    .line 277
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 278
    .line 279
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    move-object v3, p2

    .line 284
    check-cast v3, Landroid/os/Bundle;

    .line 285
    .line 286
    :cond_9
    invoke-interface {p0, p1, v3}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 287
    .line 288
    .line 289
    return v2

    .line 290
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    invoke-interface {p0, p1}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    .line 298
    .line 299
    .line 300
    return v2

    .line 301
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 309
    .line 310
    .line 311
    move-result p3

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 313
    .line 314
    .line 315
    move-result p2

    .line 316
    invoke-interface {p0, p1, p3, p2}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    .line 317
    .line 318
    .line 319
    return v2

    .line 320
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-eqz p1, :cond_a

    .line 328
    .line 329
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 330
    .line 331
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    move-object v3, p1

    .line 336
    check-cast v3, Landroid/view/Surface;

    .line 337
    .line 338
    :cond_a
    invoke-interface {p0, v3}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V

    .line 339
    .line 340
    .line 341
    return v2

    .line 342
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-eqz p1, :cond_b

    .line 350
    .line 351
    move v0, v2

    .line 352
    :cond_b
    invoke-interface {p0, v0}, Landroid/media/tv/ITvInputSession;->setMain(Z)V

    .line 353
    .line 354
    .line 355
    return v2

    .line 356
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {p0}, Landroid/media/tv/ITvInputSession;->release()V

    .line 360
    .line 361
    .line 362
    return v2

    .line 363
    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    return v2

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
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
