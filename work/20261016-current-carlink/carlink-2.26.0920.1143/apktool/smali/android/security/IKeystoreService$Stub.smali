.class public abstract Landroid/security/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IKeystoreService"

.field static final TRANSACTION_abort:I = 0x1f

.field static final TRANSACTION_addAuthToken:I = 0x21

.field static final TRANSACTION_addRngEntropy:I = 0x17

.field static final TRANSACTION_attestDeviceIds:I = 0x25

.field static final TRANSACTION_attestKey:I = 0x24

.field static final TRANSACTION_begin:I = 0x1c

.field static final TRANSACTION_clear_uid:I = 0x16

.field static final TRANSACTION_del:I = 0x4

.field static final TRANSACTION_duplicate:I = 0x14

.field static final TRANSACTION_exist:I = 0x5

.field static final TRANSACTION_exportKey:I = 0x1b

.field static final TRANSACTION_finish:I = 0x1e

.field static final TRANSACTION_generate:I = 0xc

.field static final TRANSACTION_generateKey:I = 0x18

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getKeyCharacteristics:I = 0x19

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_get_pubkey:I = 0x10

.field static final TRANSACTION_getmtime:I = 0x13

.field static final TRANSACTION_grant:I = 0x11

.field static final TRANSACTION_importKey:I = 0x1a

.field static final TRANSACTION_import_key:I = 0xd

.field static final TRANSACTION_insert:I = 0x3

.field static final TRANSACTION_isEmpty:I = 0xb

.field static final TRANSACTION_isOperationAuthorized:I = 0x20

.field static final TRANSACTION_is_hardware_backed:I = 0x15

.field static final TRANSACTION_list:I = 0x6

.field static final TRANSACTION_lock:I = 0x9

.field static final TRANSACTION_onDeviceOffBody:I = 0x26

.field static final TRANSACTION_onUserAdded:I = 0x22

.field static final TRANSACTION_onUserPasswordChanged:I = 0x8

.field static final TRANSACTION_onUserRemoved:I = 0x23

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_sign:I = 0xe

.field static final TRANSACTION_ungrant:I = 0x12

.field static final TRANSACTION_unlock:I = 0xa

.field static final TRANSACTION_update:I = 0x1d

.field static final TRANSACTION_verify:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.security.IKeystoreService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
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
    const-string v0, "android.security.IKeystoreService"

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
    instance-of v1, v0, Landroid/security/IKeystoreService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/security/IKeystoreService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/security/IKeystoreService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/security/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "android.security.IKeystoreService"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_11

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
    invoke-interface {p0}, Landroid/security/IKeystoreService;->onDeviceOffBody()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    sget-object p1, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    .line 44
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    move-object v3, p1

    .line 49
    check-cast v3, Landroid/security/keymaster/KeymasterArguments;

    .line 50
    .line 51
    :cond_0
    new-instance p1, Landroid/security/keymaster/KeymasterCertificateChain;

    .line 52
    .line 53
    invoke-direct {p1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, v3, p1}, Landroid/security/IKeystoreService;->attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p3, v2}, Landroid/security/keymaster/KeymasterCertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 81
    .line 82
    .line 83
    move-result p4

    .line 84
    if-eqz p4, :cond_1

    .line 85
    .line 86
    sget-object p4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    .line 88
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    move-object v3, p2

    .line 93
    check-cast v3, Landroid/security/keymaster/KeymasterArguments;

    .line 94
    .line 95
    :cond_1
    new-instance p2, Landroid/security/keymaster/KeymasterCertificateChain;

    .line 96
    .line 97
    invoke-direct {p2}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0, p1, v3, p2}, Landroid/security/IKeystoreService;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p3, v2}, Landroid/security/keymaster/KeymasterCertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    .line 115
    .line 116
    return v2

    .line 117
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->onUserRemoved(I)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .line 133
    .line 134
    return v2

    .line 135
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded(II)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    .line 155
    .line 156
    return v2

    .line 157
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->addAuthToken([B)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->isOperationAuthorized(Landroid/os/IBinder;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    .line 191
    .line 192
    return v2

    .line 193
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->abort(Landroid/os/IBinder;)I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    .line 209
    .line 210
    return v2

    .line 211
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result p4

    .line 222
    if-eqz p4, :cond_2

    .line 223
    .line 224
    sget-object p4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 225
    .line 226
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p4

    .line 230
    move-object v3, p4

    .line 231
    check-cast v3, Landroid/security/keymaster/KeymasterArguments;

    .line 232
    .line 233
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 234
    .line 235
    .line 236
    move-result-object p4

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-interface {p0, p1, v3, p4, p2}, Landroid/security/IKeystoreService;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    .line 247
    .line 248
    if-eqz p1, :cond_3

    .line 249
    .line 250
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p3, v2}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 254
    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    .line 259
    .line 260
    :goto_0
    return v2

    .line 261
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 269
    .line 270
    .line 271
    move-result p4

    .line 272
    if-eqz p4, :cond_4

    .line 273
    .line 274
    sget-object p4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 275
    .line 276
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p4

    .line 280
    move-object v3, p4

    .line 281
    check-cast v3, Landroid/security/keymaster/KeymasterArguments;

    .line 282
    .line 283
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    invoke-interface {p0, p1, v3, p2}, Landroid/security/IKeystoreService;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    .line 293
    .line 294
    if-eqz p1, :cond_5

    .line 295
    .line 296
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p3, v2}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    .line 305
    .line 306
    :goto_1
    return v2

    .line 307
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-eqz p1, :cond_6

    .line 327
    .line 328
    move v7, v2

    .line 329
    goto :goto_2

    .line 330
    :cond_6
    move v7, v0

    .line 331
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_7

    .line 336
    .line 337
    sget-object p1, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 338
    .line 339
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    move-object v3, p1

    .line 344
    check-cast v3, Landroid/security/keymaster/KeymasterArguments;

    .line 345
    .line 346
    :cond_7
    move-object v8, v3

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 348
    .line 349
    .line 350
    move-result-object v9

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 352
    .line 353
    .line 354
    move-result v10

    .line 355
    move-object v3, p0

    .line 356
    invoke-interface/range {v3 .. v10}, Landroid/security/IKeystoreService;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    .line 362
    .line 363
    if-eqz p1, :cond_8

    .line 364
    .line 365
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1, p3, v2}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    .line 374
    .line 375
    :goto_3
    return v2

    .line 376
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    if-eqz p1, :cond_9

    .line 392
    .line 393
    sget-object p1, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 394
    .line 395
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    check-cast p1, Landroid/security/keymaster/KeymasterBlob;

    .line 400
    .line 401
    move-object v6, p1

    .line 402
    goto :goto_4

    .line 403
    :cond_9
    move-object v6, v3

    .line 404
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-eqz p1, :cond_a

    .line 409
    .line 410
    sget-object p1, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 411
    .line 412
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    move-object v3, p1

    .line 417
    check-cast v3, Landroid/security/keymaster/KeymasterBlob;

    .line 418
    .line 419
    :cond_a
    move-object v7, v3

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    move-object v3, p0

    .line 425
    invoke-interface/range {v3 .. v8}, Landroid/security/IKeystoreService;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    .line 431
    .line 432
    if-eqz p1, :cond_b

    .line 433
    .line 434
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, p3, v2}, Landroid/security/keymaster/ExportResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 438
    .line 439
    .line 440
    goto :goto_5

    .line 441
    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    .line 443
    .line 444
    :goto_5
    return v2

    .line 445
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-eqz p1, :cond_c

    .line 457
    .line 458
    sget-object p1, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 459
    .line 460
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    move-object v3, p1

    .line 465
    check-cast v3, Landroid/security/keymaster/KeymasterArguments;

    .line 466
    .line 467
    :cond_c
    move-object v5, v3

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 469
    .line 470
    .line 471
    move-result v6

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 477
    .line 478
    .line 479
    move-result v8

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    new-instance p1, Landroid/security/keymaster/KeyCharacteristics;

    .line 485
    .line 486
    invoke-direct {p1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 487
    .line 488
    .line 489
    move-object v3, p0

    .line 490
    move-object v10, p1

    .line 491
    invoke-interface/range {v3 .. v10}, Landroid/security/IKeystoreService;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    .line 492
    .line 493
    .line 494
    move-result p2

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1, p3, v2}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 505
    .line 506
    .line 507
    return v2

    .line 508
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    if-eqz p1, :cond_d

    .line 520
    .line 521
    sget-object p1, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 522
    .line 523
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    check-cast p1, Landroid/security/keymaster/KeymasterBlob;

    .line 528
    .line 529
    move-object v5, p1

    .line 530
    goto :goto_6

    .line 531
    :cond_d
    move-object v5, v3

    .line 532
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 533
    .line 534
    .line 535
    move-result p1

    .line 536
    if-eqz p1, :cond_e

    .line 537
    .line 538
    sget-object p1, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 539
    .line 540
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    move-object v3, p1

    .line 545
    check-cast v3, Landroid/security/keymaster/KeymasterBlob;

    .line 546
    .line 547
    :cond_e
    move-object v6, v3

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 549
    .line 550
    .line 551
    move-result v7

    .line 552
    new-instance p1, Landroid/security/keymaster/KeyCharacteristics;

    .line 553
    .line 554
    invoke-direct {p1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 555
    .line 556
    .line 557
    move-object v3, p0

    .line 558
    move-object v8, p1

    .line 559
    invoke-interface/range {v3 .. v8}, Landroid/security/IKeystoreService;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    .line 560
    .line 561
    .line 562
    move-result p2

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p1, p3, v2}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 573
    .line 574
    .line 575
    return v2

    .line 576
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 584
    .line 585
    .line 586
    move-result p1

    .line 587
    if-eqz p1, :cond_f

    .line 588
    .line 589
    sget-object p1, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 590
    .line 591
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    move-object v3, p1

    .line 596
    check-cast v3, Landroid/security/keymaster/KeymasterArguments;

    .line 597
    .line 598
    :cond_f
    move-object v5, v3

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 600
    .line 601
    .line 602
    move-result-object v6

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 604
    .line 605
    .line 606
    move-result v7

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 608
    .line 609
    .line 610
    move-result v8

    .line 611
    new-instance p1, Landroid/security/keymaster/KeyCharacteristics;

    .line 612
    .line 613
    invoke-direct {p1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 614
    .line 615
    .line 616
    move-object v3, p0

    .line 617
    move-object v9, p1

    .line 618
    invoke-interface/range {v3 .. v9}, Landroid/security/IKeystoreService;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    .line 619
    .line 620
    .line 621
    move-result p2

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    .line 624
    .line 625
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {p1, p3, v2}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 632
    .line 633
    .line 634
    return v2

    .line 635
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 639
    .line 640
    .line 641
    move-result-object p1

    .line 642
    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->addRngEntropy([B)I

    .line 643
    .line 644
    .line 645
    move-result p1

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    .line 648
    .line 649
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    .line 651
    .line 652
    return v2

    .line 653
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 657
    .line 658
    .line 659
    move-result-wide p1

    .line 660
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->clear_uid(J)I

    .line 661
    .line 662
    .line 663
    move-result p1

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    .line 666
    .line 667
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    .line 669
    .line 670
    return v2

    .line 671
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object p1

    .line 678
    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    move-result p1

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    .line 687
    .line 688
    return v2

    .line 689
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 697
    .line 698
    .line 699
    move-result p4

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 705
    .line 706
    .line 707
    move-result p2

    .line 708
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/security/IKeystoreService;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I

    .line 709
    .line 710
    .line 711
    move-result p1

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    .line 714
    .line 715
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    .line 717
    .line 718
    return v2

    .line 719
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object p1

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 727
    .line 728
    .line 729
    move-result p2

    .line 730
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;I)J

    .line 731
    .line 732
    .line 733
    move-result-wide p1

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    .line 736
    .line 737
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 738
    .line 739
    .line 740
    return v2

    .line 741
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object p1

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 749
    .line 750
    .line 751
    move-result p2

    .line 752
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I

    .line 753
    .line 754
    .line 755
    move-result p1

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    .line 758
    .line 759
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    .line 761
    .line 762
    return v2

    .line 763
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object p1

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 771
    .line 772
    .line 773
    move-result p2

    .line 774
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object p1

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    .line 780
    .line 781
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    return v2

    .line 785
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->get_pubkey(Ljava/lang/String;)[B

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    .line 798
    .line 799
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 800
    .line 801
    .line 802
    return v2

    .line 803
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object p1

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 811
    .line 812
    .line 813
    move-result-object p4

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 815
    .line 816
    .line 817
    move-result-object p2

    .line 818
    invoke-interface {p0, p1, p4, p2}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I

    .line 819
    .line 820
    .line 821
    move-result p1

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    .line 824
    .line 825
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    .line 827
    .line 828
    return v2

    .line 829
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object p1

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 837
    .line 838
    .line 839
    move-result-object p2

    .line 840
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B

    .line 841
    .line 842
    .line 843
    move-result-object p1

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    .line 846
    .line 847
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 848
    .line 849
    .line 850
    return v2

    .line 851
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object p1

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 859
    .line 860
    .line 861
    move-result-object p4

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 867
    .line 868
    .line 869
    move-result p2

    .line 870
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I

    .line 871
    .line 872
    .line 873
    move-result p1

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    .line 876
    .line 877
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    .line 879
    .line 880
    return v2

    .line 881
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v4

    .line 888
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 889
    .line 890
    .line 891
    move-result v5

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 893
    .line 894
    .line 895
    move-result v6

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 897
    .line 898
    .line 899
    move-result v7

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 901
    .line 902
    .line 903
    move-result v8

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 905
    .line 906
    .line 907
    move-result p1

    .line 908
    if-eqz p1, :cond_10

    .line 909
    .line 910
    sget-object p1, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 911
    .line 912
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object p1

    .line 916
    move-object v3, p1

    .line 917
    check-cast v3, Landroid/security/KeystoreArguments;

    .line 918
    .line 919
    :cond_10
    move-object v9, v3

    .line 920
    move-object v3, p0

    .line 921
    invoke-interface/range {v3 .. v9}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    .line 922
    .line 923
    .line 924
    move-result p1

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    .line 927
    .line 928
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    .line 930
    .line 931
    return v2

    .line 932
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 936
    .line 937
    .line 938
    move-result p1

    .line 939
    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->isEmpty(I)I

    .line 940
    .line 941
    .line 942
    move-result p1

    .line 943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    .line 945
    .line 946
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    .line 948
    .line 949
    return v2

    .line 950
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 954
    .line 955
    .line 956
    move-result p1

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object p2

    .line 961
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->unlock(ILjava/lang/String;)I

    .line 962
    .line 963
    .line 964
    move-result p1

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    .line 967
    .line 968
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    .line 970
    .line 971
    return v2

    .line 972
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 976
    .line 977
    .line 978
    move-result p1

    .line 979
    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->lock(I)I

    .line 980
    .line 981
    .line 982
    move-result p1

    .line 983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    .line 985
    .line 986
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    .line 988
    .line 989
    return v2

    .line 990
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 994
    .line 995
    .line 996
    move-result p1

    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object p2

    .line 1001
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I

    .line 1002
    .line 1003
    .line 1004
    move-result p1

    .line 1005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    .line 1010
    .line 1011
    return v2

    .line 1012
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-interface {p0}, Landroid/security/IKeystoreService;->reset()I

    .line 1016
    .line 1017
    .line 1018
    move-result p1

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    .line 1024
    .line 1025
    return v2

    .line 1026
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object p1

    .line 1033
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1034
    .line 1035
    .line 1036
    move-result p2

    .line 1037
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object p1

    .line 1041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    return v2

    .line 1048
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object p1

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1056
    .line 1057
    .line 1058
    move-result p2

    .line 1059
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I

    .line 1060
    .line 1061
    .line 1062
    move-result p1

    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    .line 1068
    .line 1069
    return v2

    .line 1070
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object p1

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1078
    .line 1079
    .line 1080
    move-result p2

    .line 1081
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I

    .line 1082
    .line 1083
    .line 1084
    move-result p1

    .line 1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    .line 1090
    .line 1091
    return v2

    .line 1092
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object p1

    .line 1099
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1100
    .line 1101
    .line 1102
    move-result-object p4

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1104
    .line 1105
    .line 1106
    move-result v0

    .line 1107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1108
    .line 1109
    .line 1110
    move-result p2

    .line 1111
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    .line 1112
    .line 1113
    .line 1114
    move-result p1

    .line 1115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    .line 1120
    .line 1121
    return v2

    .line 1122
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object p1

    .line 1129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1130
    .line 1131
    .line 1132
    move-result p2

    .line 1133
    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;I)[B

    .line 1134
    .line 1135
    .line 1136
    move-result-object p1

    .line 1137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1141
    .line 1142
    .line 1143
    return v2

    .line 1144
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1148
    .line 1149
    .line 1150
    move-result p1

    .line 1151
    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->getState(I)I

    .line 1152
    .line 1153
    .line 1154
    move-result p1

    .line 1155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    .line 1160
    .line 1161
    return v2

    .line 1162
    :cond_11
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    return v2

    .line 1166
    nop

    .line 1167
    :pswitch_data_0
    .packed-switch 0x1
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
