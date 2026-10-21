.class public abstract Lcom/android/ims/internal/IImsServiceController$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsServiceController"

.field static final TRANSACTION_addRegistrationListener:I = 0x8

.field static final TRANSACTION_createCallProfile:I = 0xa

.field static final TRANSACTION_createCallSession:I = 0xb

.field static final TRANSACTION_createImsFeature:I = 0x1

.field static final TRANSACTION_endSession:I = 0x4

.field static final TRANSACTION_getConfigInterface:I = 0xe

.field static final TRANSACTION_getEcbmInterface:I = 0x11

.field static final TRANSACTION_getFeatureStatus:I = 0x7

.field static final TRANSACTION_getMultiEndpointInterface:I = 0x13

.field static final TRANSACTION_getPendingCallSession:I = 0xc

.field static final TRANSACTION_getUtInterface:I = 0xd

.field static final TRANSACTION_isConnected:I = 0x5

.field static final TRANSACTION_isOpened:I = 0x6

.field static final TRANSACTION_removeImsFeature:I = 0x2

.field static final TRANSACTION_removeRegistrationListener:I = 0x9

.field static final TRANSACTION_setUiTTYMode:I = 0x12

.field static final TRANSACTION_startSession:I = 0x3

.field static final TRANSACTION_turnOffIms:I = 0x10

.field static final TRANSACTION_turnOnIms:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.ims.internal.IImsServiceController"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;
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
    const-string v0, "com.android.ims.internal.IImsServiceController"

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
    instance-of v1, v0, Lcom/android/ims/internal/IImsServiceController;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/android/ims/internal/IImsServiceController;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.android.ims.internal.IImsServiceController"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->getMultiEndpointInterface(II)Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    .line 69
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    move-object v0, p2

    .line 74
    check-cast v0, Landroid/os/Message;

    .line 75
    .line 76
    :cond_1
    invoke-interface {p0, p1, p4, v1, v0}, Lcom/android/ims/internal/IImsServiceController;->setUiTTYMode(IIILandroid/os/Message;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->getEcbmInterface(II)Lcom/android/ims/internal/IImsEcbm;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 108
    .line 109
    .line 110
    return v2

    .line 111
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->turnOffIms(II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    .line 127
    .line 128
    return v2

    .line 129
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->turnOnIms(II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    .line 145
    .line 146
    return v2

    .line 147
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->getConfigInterface(II)Lcom/android/ims/internal/IImsConfig;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    .line 164
    .line 165
    if-eqz p1, :cond_3

    .line 166
    .line 167
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 172
    .line 173
    .line 174
    return v2

    .line 175
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->getUtInterface(II)Lcom/android/ims/internal/IImsUt;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    .line 192
    .line 193
    if-eqz p1, :cond_4

    .line 194
    .line 195
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 200
    .line 201
    .line 202
    return v2

    .line 203
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 211
    .line 212
    .line 213
    move-result p4

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-interface {p0, p1, p4, v1, p2}, Lcom/android/ims/internal/IImsServiceController;->getPendingCallSession(IIILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    .line 228
    .line 229
    if-eqz p1, :cond_5

    .line 230
    .line 231
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 236
    .line 237
    .line 238
    return v2

    .line 239
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_6

    .line 259
    .line 260
    sget-object p1, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 261
    .line 262
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Lcom/android/ims/ImsCallProfile;

    .line 267
    .line 268
    move-object v7, p1

    .line 269
    goto :goto_0

    .line 270
    :cond_6
    move-object v7, v0

    .line 271
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    move-object v3, p0

    .line 280
    invoke-interface/range {v3 .. v8}, Lcom/android/ims/internal/IImsServiceController;->createCallSession(IIILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    .line 286
    .line 287
    if-eqz p1, :cond_7

    .line 288
    .line 289
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 294
    .line 295
    .line 296
    return v2

    .line 297
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    move-object v3, p0

    .line 321
    invoke-interface/range {v3 .. v8}, Lcom/android/ims/internal/IImsServiceController;->createCallProfile(IIIII)Lcom/android/ims/ImsCallProfile;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    .line 327
    .line 328
    if-eqz p1, :cond_8

    .line 329
    .line 330
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, p3, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    .line 335
    .line 336
    goto :goto_1

    .line 337
    :cond_8
    const/4 p1, 0x0

    .line 338
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    .line 340
    .line 341
    :goto_1
    return v2

    .line 342
    :pswitch_a
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 350
    .line 351
    .line 352
    move-result p4

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    invoke-static {p2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    invoke-interface {p0, p1, p4, p2}, Lcom/android/ims/internal/IImsServiceController;->removeRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    .line 366
    .line 367
    return v2

    .line 368
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 376
    .line 377
    .line 378
    move-result p4

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    invoke-static {p2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    invoke-interface {p0, p1, p4, p2}, Lcom/android/ims/internal/IImsServiceController;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    .line 392
    .line 393
    return v2

    .line 394
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 402
    .line 403
    .line 404
    move-result p2

    .line 405
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->getFeatureStatus(II)I

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    .line 414
    .line 415
    return v2

    .line 416
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 424
    .line 425
    .line 426
    move-result p2

    .line 427
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->isOpened(II)Z

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    .line 436
    .line 437
    return v2

    .line 438
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 442
    .line 443
    .line 444
    move-result p1

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 446
    .line 447
    .line 448
    move-result p4

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 454
    .line 455
    .line 456
    move-result p2

    .line 457
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/android/ims/internal/IImsServiceController;->isConnected(IIII)Z

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    .line 466
    .line 467
    return v2

    .line 468
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 476
    .line 477
    .line 478
    move-result p4

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 480
    .line 481
    .line 482
    move-result p2

    .line 483
    invoke-interface {p0, p1, p4, p2}, Lcom/android/ims/internal/IImsServiceController;->endSession(III)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    .line 488
    .line 489
    return v2

    .line 490
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 498
    .line 499
    .line 500
    move-result p4

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    if-eqz v1, :cond_9

    .line 506
    .line 507
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 508
    .line 509
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    check-cast v0, Landroid/app/PendingIntent;

    .line 514
    .line 515
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 516
    .line 517
    .line 518
    move-result-object p2

    .line 519
    invoke-static {p2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    .line 520
    .line 521
    .line 522
    move-result-object p2

    .line 523
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/android/ims/internal/IImsServiceController;->startSession(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    .line 524
    .line 525
    .line 526
    move-result p1

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    .line 532
    .line 533
    return v2

    .line 534
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 538
    .line 539
    .line 540
    move-result p1

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 542
    .line 543
    .line 544
    move-result p4

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 546
    .line 547
    .line 548
    move-result-object p2

    .line 549
    invoke-static {p2}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 550
    .line 551
    .line 552
    move-result-object p2

    .line 553
    invoke-interface {p0, p1, p4, p2}, Lcom/android/ims/internal/IImsServiceController;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    .line 558
    .line 559
    return v2

    .line 560
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 564
    .line 565
    .line 566
    move-result p1

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 568
    .line 569
    .line 570
    move-result p4

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 572
    .line 573
    .line 574
    move-result-object p2

    .line 575
    invoke-static {p2}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 576
    .line 577
    .line 578
    move-result-object p2

    .line 579
    invoke-interface {p0, p1, p4, p2}, Lcom/android/ims/internal/IImsServiceController;->createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    .line 584
    .line 585
    return v2

    .line 586
    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    return v2

    .line 590
    nop

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
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
