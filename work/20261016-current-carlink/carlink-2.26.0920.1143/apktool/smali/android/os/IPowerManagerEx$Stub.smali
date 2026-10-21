.class public abstract Landroid/os/IPowerManagerEx$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IPowerManagerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManagerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManagerEx"

.field static final TRANSACTION_addAllowedAppInUltraSavingMode:I = 0x1f

.field static final TRANSACTION_delAllowedAppInUltraSavingMode:I = 0x20

.field static final TRANSACTION_forcePowerSaveMode:I = 0x8

.field static final TRANSACTION_getAllowedAppListInUltraSavingMode:I = 0x21

.field static final TRANSACTION_getAppNumWithSpecificConfig:I = 0x1e

.field static final TRANSACTION_getAppPowerSaveConfig:I = 0x19

.field static final TRANSACTION_getAppPowerSaveConfigWithType:I = 0x1a

.field static final TRANSACTION_getAutoLowPower_BattValue:I = 0xd

.field static final TRANSACTION_getAutoLowPower_Enable:I = 0xb

.field static final TRANSACTION_getAutoLowPower_ExitWithPower:I = 0xf

.field static final TRANSACTION_getAutoLowPower_Mode:I = 0x9

.field static final TRANSACTION_getPowerSaveMode:I = 0x5

.field static final TRANSACTION_getPrePowerSaveMode:I = 0x6

.field static final TRANSACTION_getSchedulePowerMode_EndTime:I = 0x17

.field static final TRANSACTION_getSchedulePowerMode_StartTime:I = 0x15

.field static final TRANSACTION_getSchedule_Enable:I = 0x11

.field static final TRANSACTION_getSchedule_Mode:I = 0x13

.field static final TRANSACTION_rebootAnimation:I = 0x2

.field static final TRANSACTION_scheduleButtonLightTimeout:I = 0x3

.field static final TRANSACTION_setAppPowerSaveConfig:I = 0x1b

.field static final TRANSACTION_setAppPowerSaveConfigListWithType:I = 0x1d

.field static final TRANSACTION_setAppPowerSaveConfigWithType:I = 0x1c

.field static final TRANSACTION_setAutoLowPower_BattValue:I = 0xe

.field static final TRANSACTION_setAutoLowPower_Enable:I = 0xc

.field static final TRANSACTION_setAutoLowPower_ExitWithPower:I = 0x10

.field static final TRANSACTION_setAutoLowPower_Mode:I = 0xa

.field static final TRANSACTION_setEventUserActivityNeeded:I = 0x4

.field static final TRANSACTION_setPowerSaveMode:I = 0x7

.field static final TRANSACTION_setSchedulePowerMode_EndTime:I = 0x18

.field static final TRANSACTION_setSchedulePowerMode_StartTime:I = 0x16

.field static final TRANSACTION_setSchedule_Enable:I = 0x12

.field static final TRANSACTION_setSchedule_Mode:I = 0x14

.field static final TRANSACTION_shutdownForAlarm:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.os.IPowerManagerEx"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManagerEx;
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
    const-string v0, "android.os.IPowerManagerEx"

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
    instance-of v1, v0, Landroid/os/IPowerManagerEx;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/os/IPowerManagerEx;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/IPowerManagerEx$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/os/IPowerManagerEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "android.os.IPowerManagerEx"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_9

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
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getAllowedAppListInUltraSavingMode()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p0, p1}, Landroid/os/IPowerManagerEx;->delAllowedAppInUltraSavingMode(Ljava/lang/String;)Z

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p0, p1}, Landroid/os/IPowerManagerEx;->addAllowedAppInUltraSavingMode(Ljava/lang/String;)Z

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-interface {p0, p1, p2}, Landroid/os/IPowerManagerEx;->getAppNumWithSpecificConfig(II)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    return v2

    .line 90
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 98
    .line 99
    .line 100
    move-result p4

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-interface {p0, p1, p4, p2}, Landroid/os/IPowerManagerEx;->setAppPowerSaveConfigListWithType(Ljava/util/List;II)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    .line 114
    .line 115
    return v2

    .line 116
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-interface {p0, p1, p4, p2}, Landroid/os/IPowerManagerEx;->setAppPowerSaveConfigWithType(Ljava/lang/String;II)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    .line 140
    .line 141
    return v2

    .line 142
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result p4

    .line 153
    if-eqz p4, :cond_0

    .line 154
    .line 155
    sget-object p4, Landroid/os/AppPowerSaveConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 156
    .line 157
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    check-cast p2, Landroid/os/AppPowerSaveConfig;

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_0
    const/4 p2, 0x0

    .line 165
    :goto_0
    invoke-interface {p0, p1, p2}, Landroid/os/IPowerManagerEx;->setAppPowerSaveConfig(Ljava/lang/String;Landroid/os/AppPowerSaveConfig;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    .line 174
    .line 175
    return v2

    .line 176
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    invoke-interface {p0, p1, p2}, Landroid/os/IPowerManagerEx;->getAppPowerSaveConfigWithType(Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    .line 196
    .line 197
    return v2

    .line 198
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-interface {p0, p1}, Landroid/os/IPowerManagerEx;->getAppPowerSaveConfig(Ljava/lang/String;)Landroid/os/AppPowerSaveConfig;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    .line 211
    .line 212
    if-eqz p1, :cond_1

    .line 213
    .line 214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, p3, v2}, Landroid/os/AppPowerSaveConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    .line 223
    .line 224
    :goto_1
    return v2

    .line 225
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    invoke-interface {p0, p1, p2}, Landroid/os/IPowerManagerEx;->setSchedulePowerMode_EndTime(II)Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    .line 245
    .line 246
    return v2

    .line 247
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getSchedulePowerMode_EndTime()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    .line 259
    .line 260
    return v2

    .line 261
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    invoke-interface {p0, p1, p2}, Landroid/os/IPowerManagerEx;->setSchedulePowerMode_StartTime(II)Z

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    .line 281
    .line 282
    return v2

    .line 283
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getSchedulePowerMode_StartTime()I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    .line 295
    .line 296
    return v2

    .line 297
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    invoke-interface {p0, p1}, Landroid/os/IPowerManagerEx;->setSchedule_Mode(I)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    .line 313
    .line 314
    return v2

    .line 315
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getSchedule_Mode()I

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    .line 327
    .line 328
    return v2

    .line 329
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_2

    .line 337
    .line 338
    move v0, v2

    .line 339
    :cond_2
    invoke-interface {p0, v0}, Landroid/os/IPowerManagerEx;->setSchedule_Enable(Z)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    .line 348
    .line 349
    return v2

    .line 350
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getSchedule_Enable()Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    .line 362
    .line 363
    return v2

    .line 364
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-eqz p1, :cond_3

    .line 372
    .line 373
    move v0, v2

    .line 374
    :cond_3
    invoke-interface {p0, v0}, Landroid/os/IPowerManagerEx;->setAutoLowPower_ExitWithPower(Z)Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    .line 383
    .line 384
    return v2

    .line 385
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getAutoLowPower_ExitWithPower()Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    .line 397
    .line 398
    return v2

    .line 399
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    invoke-interface {p0, p1}, Landroid/os/IPowerManagerEx;->setAutoLowPower_BattValue(I)Z

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    .line 415
    .line 416
    return v2

    .line 417
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getAutoLowPower_BattValue()I

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    .line 429
    .line 430
    return v2

    .line 431
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    if-eqz p1, :cond_4

    .line 439
    .line 440
    move v0, v2

    .line 441
    :cond_4
    invoke-interface {p0, v0}, Landroid/os/IPowerManagerEx;->setAutoLowPower_Enable(Z)Z

    .line 442
    .line 443
    .line 444
    move-result p1

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    .line 450
    .line 451
    return v2

    .line 452
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getAutoLowPower_Enable()Z

    .line 456
    .line 457
    .line 458
    move-result p1

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    .line 464
    .line 465
    return v2

    .line 466
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    invoke-interface {p0, p1}, Landroid/os/IPowerManagerEx;->setAutoLowPower_Mode(I)Z

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    .line 482
    .line 483
    return v2

    .line 484
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getAutoLowPower_Mode()I

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    .line 496
    .line 497
    return v2

    .line 498
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    if-eqz p1, :cond_5

    .line 506
    .line 507
    move v0, v2

    .line 508
    :cond_5
    invoke-interface {p0, v0}, Landroid/os/IPowerManagerEx;->forcePowerSaveMode(Z)Z

    .line 509
    .line 510
    .line 511
    move-result p1

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    .line 517
    .line 518
    return v2

    .line 519
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 523
    .line 524
    .line 525
    move-result p1

    .line 526
    invoke-interface {p0, p1}, Landroid/os/IPowerManagerEx;->setPowerSaveMode(I)Z

    .line 527
    .line 528
    .line 529
    move-result p1

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    .line 535
    .line 536
    return v2

    .line 537
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getPrePowerSaveMode()I

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    .line 549
    .line 550
    return v2

    .line 551
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->getPowerSaveMode()I

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    .line 563
    .line 564
    return v2

    .line 565
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 569
    .line 570
    .line 571
    move-result p1

    .line 572
    if-eqz p1, :cond_6

    .line 573
    .line 574
    move v0, v2

    .line 575
    :cond_6
    invoke-interface {p0, v0}, Landroid/os/IPowerManagerEx;->setEventUserActivityNeeded(Z)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    .line 580
    .line 581
    return v2

    .line 582
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 586
    .line 587
    .line 588
    move-result-wide p1

    .line 589
    invoke-interface {p0, p1, p2}, Landroid/os/IPowerManagerEx;->scheduleButtonLightTimeout(J)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    .line 594
    .line 595
    return v2

    .line 596
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-interface {p0}, Landroid/os/IPowerManagerEx;->rebootAnimation()V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    .line 604
    .line 605
    return v2

    .line 606
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    if-eqz p1, :cond_7

    .line 614
    .line 615
    move p1, v2

    .line 616
    goto :goto_2

    .line 617
    :cond_7
    move p1, v0

    .line 618
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 619
    .line 620
    .line 621
    move-result p2

    .line 622
    if-eqz p2, :cond_8

    .line 623
    .line 624
    move v0, v2

    .line 625
    :cond_8
    invoke-interface {p0, p1, v0}, Landroid/os/IPowerManagerEx;->shutdownForAlarm(ZZ)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    .line 630
    .line 631
    return v2

    .line 632
    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    return v2

    .line 636
    nop

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
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
