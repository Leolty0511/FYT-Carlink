.class public abstract Landroid/nfc/INfcTag$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/INfcTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcTag$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcTag"

.field static final TRANSACTION_canMakeReadOnly:I = 0x10

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_formatNdef:I = 0xb

.field static final TRANSACTION_getExtendedLengthApdusSupported:I = 0x12

.field static final TRANSACTION_getMaxTransceiveLength:I = 0x11

.field static final TRANSACTION_getTechList:I = 0x3

.field static final TRANSACTION_getTimeout:I = 0xe

.field static final TRANSACTION_isNdef:I = 0x4

.field static final TRANSACTION_isPresent:I = 0x5

.field static final TRANSACTION_ndefIsWritable:I = 0xa

.field static final TRANSACTION_ndefMakeReadOnly:I = 0x9

.field static final TRANSACTION_ndefRead:I = 0x7

.field static final TRANSACTION_ndefWrite:I = 0x8

.field static final TRANSACTION_reconnect:I = 0x2

.field static final TRANSACTION_rediscover:I = 0xc

.field static final TRANSACTION_resetTimeouts:I = 0xf

.field static final TRANSACTION_setTimeout:I = 0xd

.field static final TRANSACTION_transceive:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.nfc.INfcTag"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;
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
    const-string v0, "android.nfc.INfcTag"

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
    instance-of v1, v0, Landroid/nfc/INfcTag;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/nfc/INfcTag;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/nfc/INfcTag$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/nfc/INfcTag$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "android.nfc.INfcTag"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_5

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
    invoke-interface {p0}, Landroid/nfc/INfcTag;->getExtendedLengthApdusSupported()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->getMaxTransceiveLength(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    return v2

    .line 50
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->canMakeReadOnly(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    return v2

    .line 68
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0}, Landroid/nfc/INfcTag;->resetTimeouts()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    .line 76
    .line 77
    return v2

    .line 78
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->getTimeout(I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    .line 94
    .line 95
    return v2

    .line 96
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-interface {p0, p1, p2}, Landroid/nfc/INfcTag;->setTimeout(II)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    .line 116
    .line 117
    return v2

    .line 118
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->rediscover(I)Landroid/nfc/Tag;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    .line 131
    .line 132
    if-eqz p1, :cond_0

    .line 133
    .line 134
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p3, v2}, Landroid/nfc/Tag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    .line 143
    .line 144
    :goto_0
    return v2

    .line 145
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-interface {p0, p1, p2}, Landroid/nfc/INfcTag;->formatNdef(I[B)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    .line 165
    .line 166
    return v2

    .line 167
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->ndefIsWritable(I)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    .line 183
    .line 184
    return v2

    .line 185
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    .line 201
    .line 202
    return v2

    .line 203
    :pswitch_a
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
    if-eqz p4, :cond_1

    .line 215
    .line 216
    sget-object p4, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 217
    .line 218
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    check-cast p2, Landroid/nfc/NdefMessage;

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_1
    const/4 p2, 0x0

    .line 226
    :goto_1
    invoke-interface {p0, p1, p2}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    .line 235
    .line 236
    return v2

    .line 237
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->ndefRead(I)Landroid/nfc/NdefMessage;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    .line 250
    .line 251
    if-eqz p1, :cond_2

    .line 252
    .line 253
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p3, v2}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    .line 262
    .line 263
    :goto_2
    return v2

    .line 264
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 272
    .line 273
    .line 274
    move-result-object p4

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 276
    .line 277
    .line 278
    move-result p2

    .line 279
    if-eqz p2, :cond_3

    .line 280
    .line 281
    move p2, v2

    .line 282
    goto :goto_3

    .line 283
    :cond_3
    move p2, v0

    .line 284
    :goto_3
    invoke-interface {p0, p1, p4, p2}, Landroid/nfc/INfcTag;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    .line 290
    .line 291
    if-eqz p1, :cond_4

    .line 292
    .line 293
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p3, v2}, Landroid/nfc/TransceiveResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    .line 302
    .line 303
    :goto_4
    return v2

    .line 304
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->isPresent(I)Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    .line 320
    .line 321
    return v2

    .line 322
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->isNdef(I)Z

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    .line 338
    .line 339
    return v2

    .line 340
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->getTechList(I)[I

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 355
    .line 356
    .line 357
    return v2

    .line 358
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    invoke-interface {p0, p1}, Landroid/nfc/INfcTag;->reconnect(I)I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    .line 374
    .line 375
    return v2

    .line 376
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 384
    .line 385
    .line 386
    move-result p2

    .line 387
    invoke-interface {p0, p1, p2}, Landroid/nfc/INfcTag;->connect(II)I

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    .line 396
    .line 397
    return v2

    .line 398
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    return v2

    .line 402
    nop

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
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
