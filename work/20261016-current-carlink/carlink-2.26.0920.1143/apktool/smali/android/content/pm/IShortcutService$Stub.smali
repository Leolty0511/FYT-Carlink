.class public abstract Landroid/content/pm/IShortcutService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/content/pm/IShortcutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IShortcutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IShortcutService"

.field static final TRANSACTION_addDynamicShortcuts:I = 0x4

.field static final TRANSACTION_applyRestore:I = 0x15

.field static final TRANSACTION_createShortcutResultIntent:I = 0xa

.field static final TRANSACTION_disableShortcuts:I = 0xb

.field static final TRANSACTION_enableShortcuts:I = 0xc

.field static final TRANSACTION_getBackupPayload:I = 0x14

.field static final TRANSACTION_getDynamicShortcuts:I = 0x2

.field static final TRANSACTION_getIconMaxDimensions:I = 0x10

.field static final TRANSACTION_getManifestShortcuts:I = 0x3

.field static final TRANSACTION_getMaxShortcutCountPerActivity:I = 0xd

.field static final TRANSACTION_getPinnedShortcuts:I = 0x7

.field static final TRANSACTION_getRateLimitResetTime:I = 0xf

.field static final TRANSACTION_getRemainingCallCount:I = 0xe

.field static final TRANSACTION_isRequestPinItemSupported:I = 0x16

.field static final TRANSACTION_onApplicationActive:I = 0x13

.field static final TRANSACTION_removeAllDynamicShortcuts:I = 0x6

.field static final TRANSACTION_removeDynamicShortcuts:I = 0x5

.field static final TRANSACTION_reportShortcutUsed:I = 0x11

.field static final TRANSACTION_requestPinShortcut:I = 0x9

.field static final TRANSACTION_resetThrottling:I = 0x12

.field static final TRANSACTION_setDynamicShortcuts:I = 0x1

.field static final TRANSACTION_updateShortcuts:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.content.pm.IShortcutService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;
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
    const-string v0, "android.content.pm.IShortcutService"

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
    instance-of v1, v0, Landroid/content/pm/IShortcutService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/content/pm/IShortcutService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/content/pm/IShortcutService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/content/pm/IShortcutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "android.content.pm.IShortcutService"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_b

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->isRequestPinItemSupported(II)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->applyRestore([BI)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    .line 57
    .line 58
    return v2

    .line 59
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-interface {p0, p1}, Landroid/content/pm/IShortcutService;->getBackupPayload(I)[B

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 74
    .line 75
    .line 76
    return v2

    .line 77
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->onApplicationActive(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    .line 93
    .line 94
    return v2

    .line 95
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    .line 103
    .line 104
    return v2

    .line 105
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-interface {p0, p1, p4, p2}, Landroid/content/pm/IShortcutService;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    .line 125
    .line 126
    return v2

    .line 127
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->getIconMaxDimensions(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    .line 147
    .line 148
    return v2

    .line 149
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->getRateLimitResetTime(Ljava/lang/String;I)J

    .line 161
    .line 162
    .line 163
    move-result-wide p1

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    .line 169
    .line 170
    return v2

    .line 171
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->getRemainingCallCount(Ljava/lang/String;I)I

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
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    .line 213
    .line 214
    return v2

    .line 215
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    move-result-object p4

    .line 226
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 227
    .line 228
    .line 229
    move-result-object p4

    .line 230
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 231
    .line 232
    .line 233
    move-result-object p4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    invoke-interface {p0, p1, p4, p2}, Landroid/content/pm/IShortcutService;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
    move-result-object v4

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_0

    .line 269
    .line 270
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 271
    .line 272
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    move-object v3, p1

    .line 277
    check-cast v3, Ljava/lang/CharSequence;

    .line 278
    .line 279
    :cond_0
    move-object v6, v3

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    move-object v3, p0

    .line 289
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IShortcutService;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    .line 294
    .line 295
    return v2

    .line 296
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 304
    .line 305
    .line 306
    move-result p4

    .line 307
    if-eqz p4, :cond_1

    .line 308
    .line 309
    sget-object p4, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 310
    .line 311
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p4

    .line 315
    move-object v3, p4

    .line 316
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 317
    .line 318
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 319
    .line 320
    .line 321
    move-result p2

    .line 322
    invoke-interface {p0, p1, v3, p2}, Landroid/content/pm/IShortcutService;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    .line 328
    .line 329
    if-eqz p1, :cond_2

    .line 330
    .line 331
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, p3, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 335
    .line 336
    .line 337
    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    .line 340
    .line 341
    :goto_0
    return v2

    .line 342
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 350
    .line 351
    .line 352
    move-result p4

    .line 353
    if-eqz p4, :cond_3

    .line 354
    .line 355
    sget-object p4, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 356
    .line 357
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object p4

    .line 361
    check-cast p4, Landroid/content/pm/ShortcutInfo;

    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_3
    move-object p4, v3

    .line 365
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_4

    .line 370
    .line 371
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 372
    .line 373
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    move-object v3, v0

    .line 378
    check-cast v3, Landroid/content/IntentSender;

    .line 379
    .line 380
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 381
    .line 382
    .line 383
    move-result p2

    .line 384
    invoke-interface {p0, p1, p4, v3, p2}, Landroid/content/pm/IShortcutService;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    .line 393
    .line 394
    return v2

    .line 395
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 403
    .line 404
    .line 405
    move-result p4

    .line 406
    if-eqz p4, :cond_5

    .line 407
    .line 408
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 409
    .line 410
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object p4

    .line 414
    move-object v3, p4

    .line 415
    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 416
    .line 417
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 418
    .line 419
    .line 420
    move-result p2

    .line 421
    invoke-interface {p0, p1, v3, p2}, Landroid/content/pm/IShortcutService;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    .line 430
    .line 431
    return v2

    .line 432
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 440
    .line 441
    .line 442
    move-result p2

    .line 443
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    .line 449
    .line 450
    if-eqz p1, :cond_6

    .line 451
    .line 452
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 456
    .line 457
    .line 458
    goto :goto_2

    .line 459
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    .line 461
    .line 462
    :goto_2
    return v2

    .line 463
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result p2

    .line 474
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->removeAllDynamicShortcuts(Ljava/lang/String;I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    .line 479
    .line 480
    return v2

    .line 481
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    move-result-object p4

    .line 492
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 493
    .line 494
    .line 495
    move-result-object p4

    .line 496
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 497
    .line 498
    .line 499
    move-result-object p4

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 501
    .line 502
    .line 503
    move-result p2

    .line 504
    invoke-interface {p0, p1, p4, p2}, Landroid/content/pm/IShortcutService;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    .line 509
    .line 510
    return v2

    .line 511
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 519
    .line 520
    .line 521
    move-result p4

    .line 522
    if-eqz p4, :cond_7

    .line 523
    .line 524
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 525
    .line 526
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object p4

    .line 530
    move-object v3, p4

    .line 531
    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 532
    .line 533
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 534
    .line 535
    .line 536
    move-result p2

    .line 537
    invoke-interface {p0, p1, v3, p2}, Landroid/content/pm/IShortcutService;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    .line 538
    .line 539
    .line 540
    move-result p1

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    .line 543
    .line 544
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    .line 546
    .line 547
    return v2

    .line 548
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 556
    .line 557
    .line 558
    move-result p2

    .line 559
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    .line 565
    .line 566
    if-eqz p1, :cond_8

    .line 567
    .line 568
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 572
    .line 573
    .line 574
    goto :goto_3

    .line 575
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    .line 577
    .line 578
    :goto_3
    return v2

    .line 579
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 587
    .line 588
    .line 589
    move-result p2

    .line 590
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IShortcutService;->getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    .line 596
    .line 597
    if-eqz p1, :cond_9

    .line 598
    .line 599
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 603
    .line 604
    .line 605
    goto :goto_4

    .line 606
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    .line 608
    .line 609
    :goto_4
    return v2

    .line 610
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 618
    .line 619
    .line 620
    move-result p4

    .line 621
    if-eqz p4, :cond_a

    .line 622
    .line 623
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 624
    .line 625
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object p4

    .line 629
    move-object v3, p4

    .line 630
    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 631
    .line 632
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 633
    .line 634
    .line 635
    move-result p2

    .line 636
    invoke-interface {p0, p1, v3, p2}, Landroid/content/pm/IShortcutService;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    .line 637
    .line 638
    .line 639
    move-result p1

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    .line 642
    .line 643
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    .line 645
    .line 646
    return v2

    .line 647
    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    return v2

    .line 651
    :pswitch_data_0
    .packed-switch 0x1
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
