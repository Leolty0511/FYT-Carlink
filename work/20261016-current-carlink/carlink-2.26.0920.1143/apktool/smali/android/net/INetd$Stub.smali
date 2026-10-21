.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetd"

.field static final TRANSACTION_addPrivateDnsServer:I = 0x8

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_getMetricsReportingLevel:I = 0xe

.field static final TRANSACTION_getResolverInfo:I = 0x7

.field static final TRANSACTION_interfaceAddAddress:I = 0xb

.field static final TRANSACTION_interfaceDelAddress:I = 0xc

.field static final TRANSACTION_ipSecAddSecurityAssociation:I = 0x11

.field static final TRANSACTION_ipSecAllocateSpi:I = 0x10

.field static final TRANSACTION_ipSecApplyTransportModeTransform:I = 0x13

.field static final TRANSACTION_ipSecDeleteSecurityAssociation:I = 0x12

.field static final TRANSACTION_ipSecRemoveTransportModeTransform:I = 0x14

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0x4

.field static final TRANSACTION_removePrivateDnsServer:I = 0x9

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0x17

.field static final TRANSACTION_setMetricsReportingLevel:I = 0xf

.field static final TRANSACTION_setProcSysNet:I = 0xd

.field static final TRANSACTION_setResolverConfiguration:I = 0x6

.field static final TRANSACTION_socketDestroy:I = 0x5

.field static final TRANSACTION_tetherApplyDnsInterfaces:I = 0xa

.field static final TRANSACTION_wakeupAddInterface:I = 0x15

.field static final TRANSACTION_wakeupDelInterface:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.net.INetd"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
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
    const-string v0, "android.net.INetd"

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
    instance-of v1, v0, Landroid/net/INetd;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/net/INetd;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/INetd$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    move-object/from16 v13, p3

    .line 8
    .line 9
    const v1, 0x5f4e5446

    .line 10
    .line 11
    .line 12
    const-string v2, "android.net.INetd"

    .line 13
    .line 14
    const/16 v18, 0x1

    .line 15
    .line 16
    if-eq v0, v1, :cond_7

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :pswitch_0
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-interface {v15, v0, v1}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    return v18

    .line 45
    :pswitch_1
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-interface {v15, v0, v1, v2, v3}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    .line 69
    .line 70
    return v18

    .line 71
    :pswitch_2
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-interface {v15, v0, v1, v2, v3}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    .line 95
    .line 96
    return v18

    .line 97
    :pswitch_3
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v15, v0}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    .line 109
    .line 110
    return v18

    .line 111
    :pswitch_4
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    move-object/from16 v0, p0

    .line 139
    .line 140
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    .line 145
    .line 146
    return v18

    .line 147
    :pswitch_5
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    move-object/from16 v0, p0

    .line 171
    .line 172
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    .line 177
    .line 178
    return v18

    .line 179
    :pswitch_6
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 203
    .line 204
    .line 205
    move-result-wide v6

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    move-object v13, v0

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    move v14, v0

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    move v15, v0

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 242
    .line 243
    .line 244
    move-result v16

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 246
    .line 247
    .line 248
    move-result v17

    .line 249
    move-object/from16 v0, p0

    .line 250
    .line 251
    invoke-interface/range {v0 .. v17}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;[BILjava/lang/String;[BIIII)V

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    .line 256
    .line 257
    return v18

    .line 258
    :pswitch_7
    move-object v0, v14

    .line 259
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    move-object/from16 v0, p0

    .line 283
    .line 284
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecAllocateSpi(IILjava/lang/String;Ljava/lang/String;I)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    .line 290
    .line 291
    move-object/from16 v6, p3

    .line 292
    .line 293
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    .line 295
    .line 296
    return v18

    .line 297
    :pswitch_8
    move-object v6, v13

    .line 298
    move-object v0, v14

    .line 299
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    move-object/from16 v7, p0

    .line 307
    .line 308
    invoke-interface {v7, v0}, Landroid/net/INetd;->setMetricsReportingLevel(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    .line 313
    .line 314
    return v18

    .line 315
    :pswitch_9
    move-object v6, v13

    .line 316
    move-object v0, v14

    .line 317
    move-object v7, v15

    .line 318
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->getMetricsReportingLevel()I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    .line 330
    .line 331
    return v18

    .line 332
    :pswitch_a
    move-object v6, v13

    .line 333
    move-object v0, v14

    .line 334
    move-object v7, v15

    .line 335
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    move-object/from16 v0, p0

    .line 359
    .line 360
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    .line 365
    .line 366
    return v18

    .line 367
    :pswitch_b
    move-object v6, v13

    .line 368
    move-object v0, v14

    .line 369
    move-object v7, v15

    .line 370
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    invoke-interface {v7, v1, v2, v0}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    .line 390
    .line 391
    return v18

    .line 392
    :pswitch_c
    move-object v6, v13

    .line 393
    move-object v0, v14

    .line 394
    move-object v7, v15

    .line 395
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    invoke-interface {v7, v1, v2, v0}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    .line 415
    .line 416
    return v18

    .line 417
    :pswitch_d
    move-object v6, v13

    .line 418
    move-object v0, v14

    .line 419
    move-object v7, v15

    .line 420
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    .line 432
    .line 433
    return v18

    .line 434
    :pswitch_e
    move-object v6, v13

    .line 435
    move-object v0, v14

    .line 436
    move-object v7, v15

    .line 437
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-interface {v7, v0}, Landroid/net/INetd;->removePrivateDnsServer(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    .line 449
    .line 450
    return v18

    .line 451
    :pswitch_f
    move-object v6, v13

    .line 452
    move-object v0, v14

    .line 453
    move-object v7, v15

    .line 454
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-interface {v7, v1, v2, v3, v0}, Landroid/net/INetd;->addPrivateDnsServer(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    .line 478
    .line 479
    return v18

    .line 480
    :pswitch_10
    move-object v6, v13

    .line 481
    move-object v0, v14

    .line 482
    move-object v7, v15

    .line 483
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    const/4 v3, 0x0

    .line 495
    if-gez v2, :cond_0

    .line 496
    .line 497
    move-object v8, v3

    .line 498
    goto :goto_0

    .line 499
    :cond_0
    new-array v2, v2, [Ljava/lang/String;

    .line 500
    .line 501
    move-object v8, v2

    .line 502
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    if-gez v2, :cond_1

    .line 507
    .line 508
    move-object v9, v3

    .line 509
    goto :goto_1

    .line 510
    :cond_1
    new-array v2, v2, [Ljava/lang/String;

    .line 511
    .line 512
    move-object v9, v2

    .line 513
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-gez v2, :cond_2

    .line 518
    .line 519
    move-object v10, v3

    .line 520
    goto :goto_2

    .line 521
    :cond_2
    new-array v2, v2, [I

    .line 522
    .line 523
    move-object v10, v2

    .line 524
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    if-gez v0, :cond_3

    .line 529
    .line 530
    goto :goto_3

    .line 531
    :cond_3
    new-array v3, v0, [I

    .line 532
    .line 533
    :goto_3
    move-object v11, v3

    .line 534
    move-object/from16 v0, p0

    .line 535
    .line 536
    move-object v2, v8

    .line 537
    move-object v3, v9

    .line 538
    move-object v4, v10

    .line 539
    move-object v5, v11

    .line 540
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V

    .line 541
    .line 542
    .line 543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v6, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v6, v11}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 556
    .line 557
    .line 558
    return v18

    .line 559
    :pswitch_11
    move-object v6, v13

    .line 560
    move-object v0, v14

    .line 561
    move-object v7, v15

    .line 562
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-interface {v7, v1, v2, v3, v0}, Landroid/net/INetd;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    .line 586
    .line 587
    return v18

    .line 588
    :pswitch_12
    move-object v6, v13

    .line 589
    move-object v0, v14

    .line 590
    move-object v7, v15

    .line 591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 595
    .line 596
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    check-cast v1, [Landroid/net/UidRange;

    .line 601
    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-interface {v7, v1, v0}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRange;[I)V

    .line 607
    .line 608
    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    .line 611
    .line 612
    return v18

    .line 613
    :pswitch_13
    move-object v6, v13

    .line 614
    move-object v0, v14

    .line 615
    move-object v7, v15

    .line 616
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    if-eqz v2, :cond_4

    .line 624
    .line 625
    move/from16 v1, v18

    .line 626
    .line 627
    :cond_4
    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 628
    .line 629
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    check-cast v0, [Landroid/net/UidRange;

    .line 634
    .line 635
    invoke-interface {v7, v1, v0}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    .line 640
    .line 641
    return v18

    .line 642
    :pswitch_14
    move-object v6, v13

    .line 643
    move-object v0, v14

    .line 644
    move-object v7, v15

    .line 645
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    if-eqz v0, :cond_5

    .line 653
    .line 654
    move/from16 v1, v18

    .line 655
    .line 656
    :cond_5
    invoke-interface {v7, v1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    .line 665
    .line 666
    return v18

    .line 667
    :pswitch_15
    move-object v6, v13

    .line 668
    move-object v0, v14

    .line 669
    move-object v7, v15

    .line 670
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    if-eqz v3, :cond_6

    .line 682
    .line 683
    move/from16 v1, v18

    .line 684
    .line 685
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-interface {v7, v2, v1, v0}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    .line 698
    .line 699
    return v18

    .line 700
    :pswitch_16
    move-object v6, v13

    .line 701
    move-object v0, v14

    .line 702
    move-object v7, v15

    .line 703
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->isAlive()Z

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    .line 715
    .line 716
    return v18

    .line 717
    :cond_7
    move-object v6, v13

    .line 718
    move-object v7, v15

    .line 719
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    return v18

    .line 723
    :pswitch_data_0
    .packed-switch 0x1
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
