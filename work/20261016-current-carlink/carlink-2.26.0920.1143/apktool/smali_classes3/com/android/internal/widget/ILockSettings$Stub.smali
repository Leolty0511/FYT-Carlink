.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final TRANSACTION_addEscrowToken:I = 0x17

.field static final TRANSACTION_checkCredential:I = 0x9

.field static final TRANSACTION_checkVoldPassword:I = 0xc

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getSeparateProfileChallengeEnabled:I = 0x10

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_getStrongAuthForUser:I = 0x16

.field static final TRANSACTION_havePassword:I = 0xe

.field static final TRANSACTION_havePattern:I = 0xd

.field static final TRANSACTION_isEscrowTokenActive:I = 0x19

.field static final TRANSACTION_registerStrongAuthTracker:I = 0x11

.field static final TRANSACTION_removeEscrowToken:I = 0x18

.field static final TRANSACTION_requireStrongAuth:I = 0x13

.field static final TRANSACTION_resetKeyStore:I = 0x8

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setLockCredential:I = 0x7

.field static final TRANSACTION_setLockCredentialWithToken:I = 0x1a

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setSeparateProfileChallengeEnabled:I = 0xf

.field static final TRANSACTION_setString:I = 0x3

.field static final TRANSACTION_systemReady:I = 0x14

.field static final TRANSACTION_unlockUserWithToken:I = 0x1b

.field static final TRANSACTION_unregisterStrongAuthTracker:I = 0x12

.field static final TRANSACTION_userPresent:I = 0x15

.field static final TRANSACTION_verifyCredential:I = 0xa

.field static final TRANSACTION_verifyTiedProfileChallenge:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.internal.widget.ILockSettings"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
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
    const-string v0, "com.android.internal.widget.ILockSettings"

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
    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.android.internal.widget.ILockSettings"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_6

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-interface {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->unlockUserWithToken(J[BI)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    move-object v3, p0

    .line 68
    invoke-interface/range {v3 .. v10}, Lcom/android/internal/widget/ILockSettings;->setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    .line 77
    .line 78
    return v2

    .line 79
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-interface {p0, v0, v1, p1}, Lcom/android/internal/widget/ILockSettings;->isEscrowTokenActive(JI)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    .line 99
    .line 100
    return v2

    .line 101
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-interface {p0, v0, v1, p1}, Lcom/android/internal/widget/ILockSettings;->removeEscrowToken(JI)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    .line 121
    .line 122
    return v2

    .line 123
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->addEscrowToken([BI)J

    .line 135
    .line 136
    .line 137
    move-result-wide p1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    .line 143
    .line 144
    return v2

    .line 145
    :pswitch_5
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
    invoke-interface {p0, p1}, Lcom/android/internal/widget/ILockSettings;->getStrongAuthForUser(I)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    .line 161
    .line 162
    return v2

    .line 163
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-interface {p0, p1}, Lcom/android/internal/widget/ILockSettings;->userPresent(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    .line 175
    .line 176
    return v2

    .line 177
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p0}, Lcom/android/internal/widget/ILockSettings;->systemReady()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    .line 185
    .line 186
    return v2

    .line 187
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    .line 203
    .line 204
    return v2

    .line 205
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {p1}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-interface {p0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    .line 221
    .line 222
    return v2

    .line 223
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p1}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-interface {p0, p1}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    .line 239
    .line 240
    return v2

    .line 241
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    invoke-interface {p0, p1}, Lcom/android/internal/widget/ILockSettings;->getSeparateProfileChallengeEnabled(I)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    .line 257
    .line 258
    return v2

    .line 259
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 267
    .line 268
    .line 269
    move-result p4

    .line 270
    if-eqz p4, :cond_0

    .line 271
    .line 272
    move v0, v2

    .line 273
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-interface {p0, p1, v0, p2}, Lcom/android/internal/widget/ILockSettings;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    .line 282
    .line 283
    return v2

    .line 284
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-interface {p0, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    .line 300
    .line 301
    return v2

    .line 302
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    invoke-interface {p0, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    .line 318
    .line 319
    return v2

    .line 320
    :pswitch_f
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
    invoke-interface {p0, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    .line 336
    .line 337
    return v2

    .line 338
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 350
    .line 351
    .line 352
    move-result-wide v6

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    move-object v3, p0

    .line 358
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/ILockSettings;->verifyTiedProfileChallenge(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    .line 364
    .line 365
    if-eqz p1, :cond_1

    .line 366
    .line 367
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, p3, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 371
    .line 372
    .line 373
    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    .line 376
    .line 377
    :goto_0
    return v2

    .line 378
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 390
    .line 391
    .line 392
    move-result-wide v6

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    move-object v3, p0

    .line 398
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/ILockSettings;->verifyCredential(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    .line 404
    .line 405
    if-eqz p1, :cond_2

    .line 406
    .line 407
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, p3, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 411
    .line 412
    .line 413
    goto :goto_1

    .line 414
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    .line 416
    .line 417
    :goto_1
    return v2

    .line 418
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 426
    .line 427
    .line 428
    move-result p4

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    invoke-static {p2}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 438
    .line 439
    .line 440
    move-result-object p2

    .line 441
    invoke-interface {p0, p1, p4, v1, p2}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    .line 447
    .line 448
    if-eqz p1, :cond_3

    .line 449
    .line 450
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p1, p3, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 454
    .line 455
    .line 456
    goto :goto_2

    .line 457
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    .line 459
    .line 460
    :goto_2
    return v2

    .line 461
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 465
    .line 466
    .line 467
    move-result p1

    .line 468
    invoke-interface {p0, p1}, Lcom/android/internal/widget/ILockSettings;->resetKeyStore(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    .line 473
    .line 474
    return v2

    .line 475
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 491
    .line 492
    .line 493
    move-result v7

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 495
    .line 496
    .line 497
    move-result v8

    .line 498
    move-object v3, p0

    .line 499
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Ljava/lang/String;ILjava/lang/String;II)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    .line 504
    .line 505
    return v2

    .line 506
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p4

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 518
    .line 519
    .line 520
    move-result p2

    .line 521
    invoke-interface {p0, p1, p4, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    return v2

    .line 532
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 540
    .line 541
    .line 542
    move-result-wide v0

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 544
    .line 545
    .line 546
    move-result p2

    .line 547
    invoke-interface {p0, p1, v0, v1, p2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    .line 548
    .line 549
    .line 550
    move-result-wide p1

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 555
    .line 556
    .line 557
    return v2

    .line 558
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

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
    if-eqz p4, :cond_4

    .line 570
    .line 571
    move v0, v2

    .line 572
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 573
    .line 574
    .line 575
    move-result p2

    .line 576
    invoke-interface {p0, p1, v0, p2}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    .line 577
    .line 578
    .line 579
    move-result p1

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    .line 585
    .line 586
    return v2

    .line 587
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p4

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 599
    .line 600
    .line 601
    move-result p2

    .line 602
    invoke-interface {p0, p1, p4, p2}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    .line 607
    .line 608
    return v2

    .line 609
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 617
    .line 618
    .line 619
    move-result-wide v0

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 621
    .line 622
    .line 623
    move-result p2

    .line 624
    invoke-interface {p0, p1, v0, v1, p2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    .line 629
    .line 630
    return v2

    .line 631
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object p1

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 639
    .line 640
    .line 641
    move-result p4

    .line 642
    if-eqz p4, :cond_5

    .line 643
    .line 644
    move v0, v2

    .line 645
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 646
    .line 647
    .line 648
    move-result p2

    .line 649
    invoke-interface {p0, p1, v0, p2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    .line 654
    .line 655
    return v2

    .line 656
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    return v2

    .line 660
    nop

    .line 661
    :pswitch_data_0
    .packed-switch 0x1
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
