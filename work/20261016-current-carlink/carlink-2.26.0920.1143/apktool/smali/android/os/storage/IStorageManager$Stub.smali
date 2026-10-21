.class public abstract Landroid/os/storage/IStorageManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/storage/IStorageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageManager"

.field static final TRANSACTION_addUserKeyAuth:I = 0x47

.field static final TRANSACTION_allocateBytes:I = 0x4f

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_createUserKey:I = 0x3e

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_destroyUserKey:I = 0x3f

.field static final TRANSACTION_destroyUserStorage:I = 0x44

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_fixateNewestUserKeyAuth:I = 0x48

.field static final TRANSACTION_forgetAllVolumes:I = 0x39

.field static final TRANSACTION_forgetVolume:I = 0x38

.field static final TRANSACTION_format:I = 0x32

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_fstrim:I = 0x49

.field static final TRANSACTION_getAllocatableBytes:I = 0x4e

.field static final TRANSACTION_getCacheQuotaBytes:I = 0x4c

.field static final TRANSACTION_getCacheSizeBytes:I = 0x4d

.field static final TRANSACTION_getDisks:I = 0x2d

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getField:I = 0x28

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPassword:I = 0x25

.field static final TRANSACTION_getPasswordType:I = 0x24

.field static final TRANSACTION_getPrimaryEmulatedStorageUuid:I = 0x66

.field static final TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeRecords:I = 0x2f

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_getVolumes:I = 0x2e

.field static final TRANSACTION_isConvertibleToFBE:I = 0x45

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_isUserKeyUnlocked:I = 0x42

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_lockUserKey:I = 0x41

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountProxyFileDescriptorBridge:I = 0x4a

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_openProxyFileDescriptor:I = 0x4b

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

.field static final TRANSACTION_prepareUserStorage:I = 0x43

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_resizeSecureContainer:I = 0x29

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_secdiscard:I = 0x50

.field static final TRANSACTION_setDebugFlags:I = 0x3d

.field static final TRANSACTION_setField:I = 0x27

.field static final TRANSACTION_setPrimaryEmulatedStorageUuid:I = 0x67

.field static final TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_setVolumeNickname:I = 0x36

.field static final TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unlockUserKey:I = 0x40

.field static final TRANSACTION_unmount:I = 0x31

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21

.field static final TRANSACTION_waitForAsecScan:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.os.storage.IStorageManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
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
    const-string v0, "android.os.storage.IStorageManager"

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
    instance-of v1, v0, Landroid/os/storage/IStorageManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/os/storage/IStorageManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/storage/IStorageManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/os/storage/IStorageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10

    .line 1
    const/16 v0, 0x66

    .line 2
    .line 3
    const-string v1, "android.os.storage.IStorageManager"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p1, v0, :cond_d

    .line 7
    .line 8
    const/16 v0, 0x67

    .line 9
    .line 10
    if-eq p1, v0, :cond_c

    .line 11
    .line 12
    const v0, 0x5f4e5446

    .line 13
    .line 14
    .line 15
    if-eq p1, v0, :cond_b

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    packed-switch p1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    packed-switch p1, :pswitch_data_1

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->secdiscard(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    move-object v3, p0

    .line 63
    invoke-interface/range {v3 .. v8}, Landroid/os/storage/IStorageManager;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    .line 68
    .line 69
    return v2

    .line 70
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-interface {p0, p1, p4, p2}, Landroid/os/storage/IStorageManager;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    .line 86
    .line 87
    .line 88
    move-result-wide p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    .line 94
    .line 95
    return v2

    .line 96
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->getCacheSizeBytes(Ljava/lang/String;I)J

    .line 108
    .line 109
    .line 110
    move-result-wide p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    .line 116
    .line 117
    return v2

    .line 118
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    .line 130
    .line 131
    .line 132
    move-result-wide p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    .line 138
    .line 139
    return v2

    .line 140
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 148
    .line 149
    .line 150
    move-result p4

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    invoke-interface {p0, p1, p4, p2}, Landroid/os/storage/IStorageManager;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    .line 161
    .line 162
    if-eqz p1, :cond_0

    .line 163
    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    .line 173
    .line 174
    :goto_0
    return v2

    .line 175
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    .line 184
    .line 185
    if-eqz p1, :cond_1

    .line 186
    .line 187
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p3, v2}, Lcom/android/internal/os/AppFuseMount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    .line 196
    .line 197
    :goto_1
    return v2

    .line 198
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->fstrim(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    .line 210
    .line 211
    return v2

    .line 212
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    .line 224
    .line 225
    return v2

    .line 226
    :pswitch_9
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 234
    .line 235
    .line 236
    move-result p4

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    .line 250
    .line 251
    return v2

    .line 252
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->isConvertibleToFBE()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    .line 264
    .line 265
    return v2

    .line 266
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 274
    .line 275
    .line 276
    move-result p4

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    invoke-interface {p0, p1, p4, p2}, Landroid/os/storage/IStorageManager;->destroyUserStorage(Ljava/lang/String;II)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    .line 286
    .line 287
    return v2

    .line 288
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 296
    .line 297
    .line 298
    move-result p4

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/os/storage/IStorageManager;->prepareUserStorage(Ljava/lang/String;III)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    .line 312
    .line 313
    return v2

    .line 314
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    .line 330
    .line 331
    return v2

    .line 332
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    .line 344
    .line 345
    return v2

    .line 346
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 354
    .line 355
    .line 356
    move-result p4

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    .line 370
    .line 371
    return v2

    .line 372
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->destroyUserKey(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    .line 384
    .line 385
    return v2

    .line 386
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 394
    .line 395
    .line 396
    move-result p4

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 398
    .line 399
    .line 400
    move-result p2

    .line 401
    if-eqz p2, :cond_2

    .line 402
    .line 403
    move v0, v2

    .line 404
    :cond_2
    invoke-interface {p0, p1, p4, v0}, Landroid/os/storage/IStorageManager;->createUserKey(IIZ)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    .line 409
    .line 410
    return v2

    .line 411
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 419
    .line 420
    .line 421
    move-result p2

    .line 422
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    .line 427
    .line 428
    return v2

    .line 429
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->benchmark(Ljava/lang/String;)J

    .line 437
    .line 438
    .line 439
    move-result-wide p1

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 444
    .line 445
    .line 446
    return v2

    .line 447
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 455
    .line 456
    .line 457
    move-result-object p2

    .line 458
    invoke-static {p2}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    .line 459
    .line 460
    .line 461
    move-result-object p2

    .line 462
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    .line 467
    .line 468
    return v2

    .line 469
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    return v2

    .line 483
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->forgetAllVolumes()V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    .line 491
    .line 492
    return v2

    .line 493
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->forgetVolume(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    .line 505
    .line 506
    return v2

    .line 507
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 515
    .line 516
    .line 517
    move-result p4

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 519
    .line 520
    .line 521
    move-result p2

    .line 522
    invoke-interface {p0, p1, p4, p2}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    .line 527
    .line 528
    return v2

    .line 529
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object p2

    .line 540
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    .line 545
    .line 546
    return v2

    .line 547
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 555
    .line 556
    .line 557
    move-result p2

    .line 558
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->partitionMixed(Ljava/lang/String;I)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    .line 563
    .line 564
    return v2

    .line 565
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->partitionPrivate(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    .line 577
    .line 578
    return v2

    .line 579
    :pswitch_1c
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
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    .line 591
    .line 592
    return v2

    .line 593
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object p1

    .line 600
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->format(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    .line 605
    .line 606
    return v2

    .line 607
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object p1

    .line 614
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    .line 619
    .line 620
    return v2

    .line 621
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->mount(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    .line 633
    .line 634
    return v2

    .line 635
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 639
    .line 640
    .line 641
    move-result p1

    .line 642
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    .line 648
    .line 649
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 650
    .line 651
    .line 652
    return v2

    .line 653
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 657
    .line 658
    .line 659
    move-result p1

    .line 660
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    .line 661
    .line 662
    .line 663
    move-result-object p1

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    .line 666
    .line 667
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 668
    .line 669
    .line 670
    return v2

    .line 671
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->getDisks()[Landroid/os/storage/DiskInfo;

    .line 675
    .line 676
    .line 677
    move-result-object p1

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    .line 680
    .line 681
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 682
    .line 683
    .line 684
    return v2

    .line 685
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->waitForAsecScan()V

    .line 689
    .line 690
    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    .line 693
    .line 694
    return v2

    .line 695
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->runMaintenance()V

    .line 699
    .line 700
    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    .line 703
    .line 704
    return v2

    .line 705
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->lastMaintenance()J

    .line 709
    .line 710
    .line 711
    move-result-wide p1

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    .line 714
    .line 715
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 716
    .line 717
    .line 718
    return v2

    .line 719
    :pswitch_26
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
    move-result p4

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object p2

    .line 734
    invoke-interface {p0, p1, p4, p2}, Landroid/os/storage/IStorageManager;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    .line 735
    .line 736
    .line 737
    move-result p1

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    .line 740
    .line 741
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    .line 743
    .line 744
    return v2

    .line 745
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object p1

    .line 752
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object p1

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    .line 758
    .line 759
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    return v2

    .line 763
    :pswitch_28
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object p2

    .line 774
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    return v2

    .line 778
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->clearPassword()V

    .line 782
    .line 783
    .line 784
    return v2

    .line 785
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->getPassword()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    .line 794
    .line 795
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    return v2

    .line 799
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    .line 803
    .line 804
    .line 805
    move-result p1

    .line 806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    .line 808
    .line 809
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    .line 811
    .line 812
    return v2

    .line 813
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object p1

    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object p2

    .line 824
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .line 826
    .line 827
    move-result p1

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    .line 830
    .line 831
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    .line 833
    .line 834
    return v2

    .line 835
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object p1

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 843
    .line 844
    .line 845
    move-result p4

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object p2

    .line 850
    invoke-interface {p0, p1, p4, p2}, Landroid/os/storage/IStorageManager;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    .line 851
    .line 852
    .line 853
    move-result p1

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    .line 856
    .line 857
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    .line 859
    .line 860
    return v2

    .line 861
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object p1

    .line 868
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->verifyEncryptionPassword(Ljava/lang/String;)I

    .line 869
    .line 870
    .line 871
    move-result p1

    .line 872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    .line 874
    .line 875
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    .line 877
    .line 878
    return v2

    .line 879
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    .line 883
    .line 884
    .line 885
    move-result p1

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    .line 888
    .line 889
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    .line 891
    .line 892
    return v2

    .line 893
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object p1

    .line 900
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object p1

    .line 904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    .line 906
    .line 907
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    return v2

    .line 911
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 915
    .line 916
    .line 917
    move-result p1

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object p4

    .line 922
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 923
    .line 924
    .line 925
    move-result p2

    .line 926
    invoke-interface {p0, p1, p4, p2}, Landroid/os/storage/IStorageManager;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    .line 927
    .line 928
    .line 929
    move-result-object p1

    .line 930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    .line 932
    .line 933
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 934
    .line 935
    .line 936
    return v2

    .line 937
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 941
    .line 942
    .line 943
    move-result p1

    .line 944
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object p2

    .line 948
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->changeEncryptionPassword(ILjava/lang/String;)I

    .line 949
    .line 950
    .line 951
    move-result p1

    .line 952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    .line 954
    .line 955
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    .line 957
    .line 958
    return v2

    .line 959
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 963
    .line 964
    .line 965
    move-result p1

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object p2

    .line 970
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->encryptStorage(ILjava/lang/String;)I

    .line 971
    .line 972
    .line 973
    move-result p1

    .line 974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    .line 976
    .line 977
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    .line 979
    .line 980
    return v2

    .line 981
    :pswitch_34
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
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->decryptStorage(Ljava/lang/String;)I

    .line 989
    .line 990
    .line 991
    move-result p1

    .line 992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    .line 994
    .line 995
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    .line 997
    .line 998
    return v2

    .line 999
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->isExternalStorageEmulated()Z

    .line 1003
    .line 1004
    .line 1005
    move-result p1

    .line 1006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    .line 1011
    .line 1012
    return v2

    .line 1013
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object p1

    .line 1020
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object p1

    .line 1024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    return v2

    .line 1031
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object p1

    .line 1038
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->isObbMounted(Ljava/lang/String;)Z

    .line 1039
    .line 1040
    .line 1041
    move-result p1

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    .line 1047
    .line 1048
    return v2

    .line 1049
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object p1

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1057
    .line 1058
    .line 1059
    move-result p4

    .line 1060
    if-eqz p4, :cond_3

    .line 1061
    .line 1062
    move v0, v2

    .line 1063
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1064
    .line 1065
    .line 1066
    move-result-object p4

    .line 1067
    invoke-static {p4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    .line 1068
    .line 1069
    .line 1070
    move-result-object p4

    .line 1071
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1072
    .line 1073
    .line 1074
    move-result p2

    .line 1075
    invoke-interface {p0, p1, v0, p4, p2}, Landroid/os/storage/IStorageManager;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    .line 1080
    .line 1081
    return v2

    .line 1082
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v4

    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v5

    .line 1093
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v6

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1098
    .line 1099
    .line 1100
    move-result-object p1

    .line 1101
    invoke-static {p1}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v7

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1106
    .line 1107
    .line 1108
    move-result v8

    .line 1109
    move-object v3, p0

    .line 1110
    invoke-interface/range {v3 .. v8}, Landroid/os/storage/IStorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    .line 1115
    .line 1116
    return v2

    .line 1117
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->finishMediaUpdate()V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    .line 1125
    .line 1126
    return v2

    .line 1127
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1131
    .line 1132
    .line 1133
    move-result-object p1

    .line 1134
    invoke-static {p1}, Landroid/os/storage/IStorageShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageShutdownObserver;

    .line 1135
    .line 1136
    .line 1137
    move-result-object p1

    .line 1138
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->shutdown(Landroid/os/storage/IStorageShutdownObserver;)V

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    .line 1143
    .line 1144
    return v2

    .line 1145
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    .line 1147
    .line 1148
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->getSecureContainerList()[Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object p1

    .line 1152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    return v2

    .line 1159
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object p1

    .line 1166
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object p1

    .line 1170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    return v2

    .line 1177
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object p1

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1185
    .line 1186
    .line 1187
    move-result-object p2

    .line 1188
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    .line 1190
    .line 1191
    move-result p1

    .line 1192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    .line 1197
    .line 1198
    return v2

    .line 1199
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object p1

    .line 1206
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->isSecureContainerMounted(Ljava/lang/String;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result p1

    .line 1210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    .line 1215
    .line 1216
    return v2

    .line 1217
    :pswitch_40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object p1

    .line 1224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1225
    .line 1226
    .line 1227
    move-result p2

    .line 1228
    if-eqz p2, :cond_4

    .line 1229
    .line 1230
    move v0, v2

    .line 1231
    :cond_4
    invoke-interface {p0, p1, v0}, Landroid/os/storage/IStorageManager;->unmountSecureContainer(Ljava/lang/String;Z)I

    .line 1232
    .line 1233
    .line 1234
    move-result p1

    .line 1235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    .line 1240
    .line 1241
    return v2

    .line 1242
    :pswitch_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1246
    .line 1247
    .line 1248
    move-result-object p1

    .line 1249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object p4

    .line 1253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1254
    .line 1255
    .line 1256
    move-result v1

    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1258
    .line 1259
    .line 1260
    move-result p2

    .line 1261
    if-eqz p2, :cond_5

    .line 1262
    .line 1263
    move v0, v2

    .line 1264
    :cond_5
    invoke-interface {p0, p1, p4, v1, v0}, Landroid/os/storage/IStorageManager;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 1265
    .line 1266
    .line 1267
    move-result p1

    .line 1268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    .line 1273
    .line 1274
    return v2

    .line 1275
    :pswitch_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object p1

    .line 1282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1283
    .line 1284
    .line 1285
    move-result p2

    .line 1286
    if-eqz p2, :cond_6

    .line 1287
    .line 1288
    move v0, v2

    .line 1289
    :cond_6
    invoke-interface {p0, p1, v0}, Landroid/os/storage/IStorageManager;->destroySecureContainer(Ljava/lang/String;Z)I

    .line 1290
    .line 1291
    .line 1292
    move-result p1

    .line 1293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    .line 1298
    .line 1299
    return v2

    .line 1300
    :pswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object p1

    .line 1307
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->finalizeSecureContainer(Ljava/lang/String;)I

    .line 1308
    .line 1309
    .line 1310
    move-result p1

    .line 1311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    .line 1316
    .line 1317
    return v2

    .line 1318
    :pswitch_44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v4

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1326
    .line 1327
    .line 1328
    move-result v5

    .line 1329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v6

    .line 1333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v7

    .line 1337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1338
    .line 1339
    .line 1340
    move-result v8

    .line 1341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1342
    .line 1343
    .line 1344
    move-result p1

    .line 1345
    if-eqz p1, :cond_7

    .line 1346
    .line 1347
    move v9, v2

    .line 1348
    goto :goto_2

    .line 1349
    :cond_7
    move v9, v0

    .line 1350
    :goto_2
    move-object v3, p0

    .line 1351
    invoke-interface/range {v3 .. v9}, Landroid/os/storage/IStorageManager;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    .line 1352
    .line 1353
    .line 1354
    move-result p1

    .line 1355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    .line 1360
    .line 1361
    return v2

    .line 1362
    :pswitch_45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object p1

    .line 1369
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    .line 1370
    .line 1371
    .line 1372
    move-result-object p1

    .line 1373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    return v2

    .line 1380
    :pswitch_46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object p1

    .line 1387
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->getStorageUsers(Ljava/lang/String;)[I

    .line 1388
    .line 1389
    .line 1390
    move-result-object p1

    .line 1391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1395
    .line 1396
    .line 1397
    return v2

    .line 1398
    :pswitch_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object p1

    .line 1405
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->formatVolume(Ljava/lang/String;)I

    .line 1406
    .line 1407
    .line 1408
    move-result p1

    .line 1409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1413
    .line 1414
    .line 1415
    return v2

    .line 1416
    :pswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    move-result-object p1

    .line 1423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1424
    .line 1425
    .line 1426
    move-result p4

    .line 1427
    if-eqz p4, :cond_8

    .line 1428
    .line 1429
    move p4, v2

    .line 1430
    goto :goto_3

    .line 1431
    :cond_8
    move p4, v0

    .line 1432
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1433
    .line 1434
    .line 1435
    move-result p2

    .line 1436
    if-eqz p2, :cond_9

    .line 1437
    .line 1438
    move v0, v2

    .line 1439
    :cond_9
    invoke-interface {p0, p1, p4, v0}, Landroid/os/storage/IStorageManager;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    .line 1444
    .line 1445
    return v2

    .line 1446
    :pswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1450
    .line 1451
    .line 1452
    move-result-object p1

    .line 1453
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->mountVolume(Ljava/lang/String;)I

    .line 1454
    .line 1455
    .line 1456
    move-result p1

    .line 1457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    .line 1462
    .line 1463
    return v2

    .line 1464
    :pswitch_4a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    .line 1466
    .line 1467
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->isUsbMassStorageEnabled()Z

    .line 1468
    .line 1469
    .line 1470
    move-result p1

    .line 1471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    .line 1476
    .line 1477
    return v2

    .line 1478
    :pswitch_4b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1482
    .line 1483
    .line 1484
    move-result p1

    .line 1485
    if-eqz p1, :cond_a

    .line 1486
    .line 1487
    move v0, v2

    .line 1488
    :cond_a
    invoke-interface {p0, v0}, Landroid/os/storage/IStorageManager;->setUsbMassStorageEnabled(Z)V

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    .line 1493
    .line 1494
    return v2

    .line 1495
    :pswitch_4c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1496
    .line 1497
    .line 1498
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->isUsbMassStorageConnected()Z

    .line 1499
    .line 1500
    .line 1501
    move-result p1

    .line 1502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    .line 1507
    .line 1508
    return v2

    .line 1509
    :pswitch_4d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1513
    .line 1514
    .line 1515
    move-result-object p1

    .line 1516
    invoke-static {p1}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    .line 1517
    .line 1518
    .line 1519
    move-result-object p1

    .line 1520
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V

    .line 1521
    .line 1522
    .line 1523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    .line 1525
    .line 1526
    return v2

    .line 1527
    :pswitch_4e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1531
    .line 1532
    .line 1533
    move-result-object p1

    .line 1534
    invoke-static {p1}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    .line 1535
    .line 1536
    .line 1537
    move-result-object p1

    .line 1538
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->registerListener(Landroid/os/storage/IStorageEventListener;)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    .line 1543
    .line 1544
    return v2

    .line 1545
    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1546
    .line 1547
    .line 1548
    return v2

    .line 1549
    :cond_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object p1

    .line 1556
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1557
    .line 1558
    .line 1559
    move-result-object p2

    .line 1560
    invoke-static {p2}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    .line 1561
    .line 1562
    .line 1563
    move-result-object p2

    .line 1564
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->setPrimaryEmulatedStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    .line 1569
    .line 1570
    return v2

    .line 1571
    :cond_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    .line 1573
    .line 1574
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->getPrimaryEmulatedStorageUuid()Ljava/lang/String;

    .line 1575
    .line 1576
    .line 1577
    move-result-object p1

    .line 1578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1582
    .line 1583
    .line 1584
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
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
