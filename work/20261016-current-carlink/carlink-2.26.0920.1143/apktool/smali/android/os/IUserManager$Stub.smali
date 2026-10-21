.class public abstract Landroid/os/IUserManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IUserManager"

.field static final TRANSACTION_canAddMoreManagedProfiles:I = 0x10

.field static final TRANSACTION_canHaveRestrictedProfile:I = 0x18

.field static final TRANSACTION_clearSeedAccountData:I = 0x2e

.field static final TRANSACTION_createProfileForUser:I = 0x3

.field static final TRANSACTION_createProfileForUserEvenWhenDisallowed:I = 0x32

.field static final TRANSACTION_createRestrictedProfile:I = 0x4

.field static final TRANSACTION_createUser:I = 0x2

.field static final TRANSACTION_evictCredentialEncryptionKey:I = 0x6

.field static final TRANSACTION_getApplicationRestrictions:I = 0x22

.field static final TRANSACTION_getApplicationRestrictionsForUser:I = 0x23

.field static final TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final TRANSACTION_getDefaultGuestRestrictions:I = 0x25

.field static final TRANSACTION_getManagedProfileBadge:I = 0x34

.field static final TRANSACTION_getPrimaryUser:I = 0xc

.field static final TRANSACTION_getProfileIds:I = 0xf

.field static final TRANSACTION_getProfileParent:I = 0x11

.field static final TRANSACTION_getProfiles:I = 0xe

.field static final TRANSACTION_getSeedAccountName:I = 0x2b

.field static final TRANSACTION_getSeedAccountOptions:I = 0x2d

.field static final TRANSACTION_getSeedAccountType:I = 0x2c

.field static final TRANSACTION_getUserAccount:I = 0x14

.field static final TRANSACTION_getUserCreationTime:I = 0x16

.field static final TRANSACTION_getUserHandle:I = 0x1a

.field static final TRANSACTION_getUserIcon:I = 0xb

.field static final TRANSACTION_getUserInfo:I = 0x13

.field static final TRANSACTION_getUserRestrictionSource:I = 0x1b

.field static final TRANSACTION_getUserRestrictionSources:I = 0x1c

.field static final TRANSACTION_getUserRestrictions:I = 0x1d

.field static final TRANSACTION_getUserSerialNumber:I = 0x19

.field static final TRANSACTION_getUsers:I = 0xd

.field static final TRANSACTION_hasBaseUserRestriction:I = 0x1e

.field static final TRANSACTION_hasUserRestriction:I = 0x1f

.field static final TRANSACTION_isDemoUser:I = 0x31

.field static final TRANSACTION_isManagedProfile:I = 0x30

.field static final TRANSACTION_isQuietModeEnabled:I = 0x28

.field static final TRANSACTION_isRestricted:I = 0x17

.field static final TRANSACTION_isSameProfileGroup:I = 0x12

.field static final TRANSACTION_isUserNameSet:I = 0x37

.field static final TRANSACTION_isUserRunning:I = 0x36

.field static final TRANSACTION_isUserUnlocked:I = 0x35

.field static final TRANSACTION_isUserUnlockingOrUnlocked:I = 0x33

.field static final TRANSACTION_markGuestForDeletion:I = 0x26

.field static final TRANSACTION_removeUser:I = 0x7

.field static final TRANSACTION_removeUserEvenWhenDisallowed:I = 0x8

.field static final TRANSACTION_setApplicationRestrictions:I = 0x21

.field static final TRANSACTION_setDefaultGuestRestrictions:I = 0x24

.field static final TRANSACTION_setQuietModeEnabled:I = 0x27

.field static final TRANSACTION_setSeedAccountData:I = 0x2a

.field static final TRANSACTION_setUserAccount:I = 0x15

.field static final TRANSACTION_setUserEnabled:I = 0x5

.field static final TRANSACTION_setUserIcon:I = 0xa

.field static final TRANSACTION_setUserName:I = 0x9

.field static final TRANSACTION_setUserRestriction:I = 0x20

.field static final TRANSACTION_someUserHasSeedAccount:I = 0x2f

.field static final TRANSACTION_trySetQuietModeDisabled:I = 0x29


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.os.IUserManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;
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
    const-string v0, "android.os.IUserManager"

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
    instance-of v1, v0, Landroid/os/IUserManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/os/IUserManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/IUserManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/os/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "android.os.IUserManager"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_19

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
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->isUserNameSet(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->isUserUnlocked(I)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getManagedProfileBadge(I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    return v2

    .line 91
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    .line 107
    .line 108
    return v2

    .line 109
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result p4

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/os/IUserManager;->createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    .line 134
    .line 135
    if-eqz p1, :cond_0

    .line 136
    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    .line 146
    .line 147
    :goto_0
    return v2

    .line 148
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->isDemoUser(I)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    .line 164
    .line 165
    return v2

    .line 166
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->isManagedProfile(I)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    .line 182
    .line 183
    return v2

    .line 184
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    .line 204
    .line 205
    return v2

    .line 206
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {p0}, Landroid/os/IUserManager;->clearSeedAccountData()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    .line 214
    .line 215
    return v2

    .line 216
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-interface {p0}, Landroid/os/IUserManager;->getSeedAccountOptions()Landroid/os/PersistableBundle;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    .line 225
    .line 226
    if-eqz p1, :cond_1

    .line 227
    .line 228
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p3, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    .line 237
    .line 238
    :goto_1
    return v2

    .line 239
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-interface {p0}, Landroid/os/IUserManager;->getSeedAccountType()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return v2

    .line 253
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {p0}, Landroid/os/IUserManager;->getSeedAccountName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    return v2

    .line 267
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_2

    .line 287
    .line 288
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    .line 290
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    move-object v0, p1

    .line 295
    check-cast v0, Landroid/os/PersistableBundle;

    .line 296
    .line 297
    :cond_2
    move-object v7, v0

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-eqz p1, :cond_3

    .line 303
    .line 304
    move v8, v2

    .line 305
    goto :goto_2

    .line 306
    :cond_3
    move v8, v3

    .line 307
    :goto_2
    move-object v3, p0

    .line 308
    invoke-interface/range {v3 .. v8}, Landroid/os/IUserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 323
    .line 324
    .line 325
    move-result p4

    .line 326
    if-eqz p4, :cond_4

    .line 327
    .line 328
    sget-object p4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 329
    .line 330
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    move-object v0, p2

    .line 335
    check-cast v0, Landroid/content/IntentSender;

    .line 336
    .line 337
    :cond_4
    invoke-interface {p0, p1, v0}, Landroid/os/IUserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    .line 346
    .line 347
    return v2

    .line 348
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->isQuietModeEnabled(I)Z

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    .line 364
    .line 365
    return v2

    .line 366
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 374
    .line 375
    .line 376
    move-result p2

    .line 377
    if-eqz p2, :cond_5

    .line 378
    .line 379
    move v3, v2

    .line 380
    :cond_5
    invoke-interface {p0, p1, v3}, Landroid/os/IUserManager;->setQuietModeEnabled(IZ)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    .line 385
    .line 386
    return v2

    .line 387
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->markGuestForDeletion(I)Z

    .line 395
    .line 396
    .line 397
    move-result p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    .line 403
    .line 404
    return v2

    .line 405
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-interface {p0}, Landroid/os/IUserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    .line 414
    .line 415
    if-eqz p1, :cond_6

    .line 416
    .line 417
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 421
    .line 422
    .line 423
    goto :goto_3

    .line 424
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    .line 426
    .line 427
    :goto_3
    return v2

    .line 428
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 432
    .line 433
    .line 434
    move-result p1

    .line 435
    if-eqz p1, :cond_7

    .line 436
    .line 437
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 438
    .line 439
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    move-object v0, p1

    .line 444
    check-cast v0, Landroid/os/Bundle;

    .line 445
    .line 446
    :cond_7
    invoke-interface {p0, v0}, Landroid/os/IUserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    .line 451
    .line 452
    return v2

    .line 453
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 461
    .line 462
    .line 463
    move-result p2

    .line 464
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    .line 470
    .line 471
    if-eqz p1, :cond_8

    .line 472
    .line 473
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 477
    .line 478
    .line 479
    goto :goto_4

    .line 480
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    .line 482
    .line 483
    :goto_4
    return v2

    .line 484
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    .line 497
    .line 498
    if-eqz p1, :cond_9

    .line 499
    .line 500
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 504
    .line 505
    .line 506
    goto :goto_5

    .line 507
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    .line 509
    .line 510
    :goto_5
    return v2

    .line 511
    :pswitch_16
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
    if-eqz p4, :cond_a

    .line 523
    .line 524
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 525
    .line 526
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object p4

    .line 530
    move-object v0, p4

    .line 531
    check-cast v0, Landroid/os/Bundle;

    .line 532
    .line 533
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 534
    .line 535
    .line 536
    move-result p2

    .line 537
    invoke-interface {p0, p1, v0, p2}, Landroid/os/IUserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    .line 542
    .line 543
    return v2

    .line 544
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 552
    .line 553
    .line 554
    move-result p4

    .line 555
    if-eqz p4, :cond_b

    .line 556
    .line 557
    move v3, v2

    .line 558
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 559
    .line 560
    .line 561
    move-result p2

    .line 562
    invoke-interface {p0, p1, v3, p2}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    .line 567
    .line 568
    return v2

    .line 569
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object p1

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 577
    .line 578
    .line 579
    move-result p2

    .line 580
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 581
    .line 582
    .line 583
    move-result p1

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    .line 589
    .line 590
    return v2

    .line 591
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 599
    .line 600
    .line 601
    move-result p2

    .line 602
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    .line 603
    .line 604
    .line 605
    move-result p1

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    .line 608
    .line 609
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    .line 611
    .line 612
    return v2

    .line 613
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 617
    .line 618
    .line 619
    move-result p1

    .line 620
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    .line 626
    .line 627
    if-eqz p1, :cond_c

    .line 628
    .line 629
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 633
    .line 634
    .line 635
    goto :goto_6

    .line 636
    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    .line 638
    .line 639
    :goto_6
    return v2

    .line 640
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 648
    .line 649
    .line 650
    move-result p2

    .line 651
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    .line 657
    .line 658
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 659
    .line 660
    .line 661
    return v2

    .line 662
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object p1

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 670
    .line 671
    .line 672
    move-result p2

    .line 673
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->getUserRestrictionSource(Ljava/lang/String;I)I

    .line 674
    .line 675
    .line 676
    move-result p1

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    .line 679
    .line 680
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    .line 682
    .line 683
    return v2

    .line 684
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 688
    .line 689
    .line 690
    move-result p1

    .line 691
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getUserHandle(I)I

    .line 692
    .line 693
    .line 694
    move-result p1

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    .line 697
    .line 698
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    .line 700
    .line 701
    return v2

    .line 702
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 706
    .line 707
    .line 708
    move-result p1

    .line 709
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getUserSerialNumber(I)I

    .line 710
    .line 711
    .line 712
    move-result p1

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    .line 718
    .line 719
    return v2

    .line 720
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 724
    .line 725
    .line 726
    move-result p1

    .line 727
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->canHaveRestrictedProfile(I)Z

    .line 728
    .line 729
    .line 730
    move-result p1

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    .line 733
    .line 734
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    .line 736
    .line 737
    return v2

    .line 738
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    invoke-interface {p0}, Landroid/os/IUserManager;->isRestricted()Z

    .line 742
    .line 743
    .line 744
    move-result p1

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    .line 747
    .line 748
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    .line 750
    .line 751
    return v2

    .line 752
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 756
    .line 757
    .line 758
    move-result p1

    .line 759
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getUserCreationTime(I)J

    .line 760
    .line 761
    .line 762
    move-result-wide p1

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    .line 765
    .line 766
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 767
    .line 768
    .line 769
    return v2

    .line 770
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 774
    .line 775
    .line 776
    move-result p1

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object p2

    .line 781
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->setUserAccount(ILjava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    .line 786
    .line 787
    return v2

    .line 788
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 792
    .line 793
    .line 794
    move-result p1

    .line 795
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getUserAccount(I)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object p1

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    return v2

    .line 806
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 810
    .line 811
    .line 812
    move-result p1

    .line 813
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 814
    .line 815
    .line 816
    move-result-object p1

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    .line 819
    .line 820
    if-eqz p1, :cond_d

    .line 821
    .line 822
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 826
    .line 827
    .line 828
    goto :goto_7

    .line 829
    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    .line 831
    .line 832
    :goto_7
    return v2

    .line 833
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 837
    .line 838
    .line 839
    move-result p1

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 841
    .line 842
    .line 843
    move-result p2

    .line 844
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->isSameProfileGroup(II)Z

    .line 845
    .line 846
    .line 847
    move-result p1

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    .line 850
    .line 851
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    .line 853
    .line 854
    return v2

    .line 855
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 859
    .line 860
    .line 861
    move-result p1

    .line 862
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 863
    .line 864
    .line 865
    move-result-object p1

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    .line 868
    .line 869
    if-eqz p1, :cond_e

    .line 870
    .line 871
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 875
    .line 876
    .line 877
    goto :goto_8

    .line 878
    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    .line 880
    .line 881
    :goto_8
    return v2

    .line 882
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 886
    .line 887
    .line 888
    move-result p1

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 890
    .line 891
    .line 892
    move-result p2

    .line 893
    if-eqz p2, :cond_f

    .line 894
    .line 895
    move v3, v2

    .line 896
    :cond_f
    invoke-interface {p0, p1, v3}, Landroid/os/IUserManager;->canAddMoreManagedProfiles(IZ)Z

    .line 897
    .line 898
    .line 899
    move-result p1

    .line 900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    .line 902
    .line 903
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    .line 905
    .line 906
    return v2

    .line 907
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 911
    .line 912
    .line 913
    move-result p1

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 915
    .line 916
    .line 917
    move-result p2

    .line 918
    if-eqz p2, :cond_10

    .line 919
    .line 920
    move v3, v2

    .line 921
    :cond_10
    invoke-interface {p0, p1, v3}, Landroid/os/IUserManager;->getProfileIds(IZ)[I

    .line 922
    .line 923
    .line 924
    move-result-object p1

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    .line 927
    .line 928
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 929
    .line 930
    .line 931
    return v2

    .line 932
    :pswitch_29
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 940
    .line 941
    .line 942
    move-result p2

    .line 943
    if-eqz p2, :cond_11

    .line 944
    .line 945
    move v3, v2

    .line 946
    :cond_11
    invoke-interface {p0, p1, v3}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    .line 947
    .line 948
    .line 949
    move-result-object p1

    .line 950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    .line 952
    .line 953
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 954
    .line 955
    .line 956
    return v2

    .line 957
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 961
    .line 962
    .line 963
    move-result p1

    .line 964
    if-eqz p1, :cond_12

    .line 965
    .line 966
    move v3, v2

    .line 967
    :cond_12
    invoke-interface {p0, v3}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    .line 968
    .line 969
    .line 970
    move-result-object p1

    .line 971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    .line 973
    .line 974
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 975
    .line 976
    .line 977
    return v2

    .line 978
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    invoke-interface {p0}, Landroid/os/IUserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    .line 982
    .line 983
    .line 984
    move-result-object p1

    .line 985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    .line 987
    .line 988
    if-eqz p1, :cond_13

    .line 989
    .line 990
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 994
    .line 995
    .line 996
    goto :goto_9

    .line 997
    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    .line 999
    .line 1000
    :goto_9
    return v2

    .line 1001
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1005
    .line 1006
    .line 1007
    move-result p1

    .line 1008
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    .line 1009
    .line 1010
    .line 1011
    move-result-object p1

    .line 1012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    .line 1014
    .line 1015
    if-eqz p1, :cond_14

    .line 1016
    .line 1017
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1021
    .line 1022
    .line 1023
    goto :goto_a

    .line 1024
    :cond_14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    .line 1026
    .line 1027
    :goto_a
    return v2

    .line 1028
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1032
    .line 1033
    .line 1034
    move-result p1

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1036
    .line 1037
    .line 1038
    move-result p4

    .line 1039
    if-eqz p4, :cond_15

    .line 1040
    .line 1041
    sget-object p4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1042
    .line 1043
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object p2

    .line 1047
    move-object v0, p2

    .line 1048
    check-cast v0, Landroid/graphics/Bitmap;

    .line 1049
    .line 1050
    :cond_15
    invoke-interface {p0, p1, v0}, Landroid/os/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    .line 1055
    .line 1056
    return v2

    .line 1057
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1061
    .line 1062
    .line 1063
    move-result p1

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object p2

    .line 1068
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    .line 1073
    .line 1074
    return v2

    .line 1075
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1079
    .line 1080
    .line 1081
    move-result p1

    .line 1082
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->removeUserEvenWhenDisallowed(I)Z

    .line 1083
    .line 1084
    .line 1085
    move-result p1

    .line 1086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    .line 1091
    .line 1092
    return v2

    .line 1093
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1097
    .line 1098
    .line 1099
    move-result p1

    .line 1100
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->removeUser(I)Z

    .line 1101
    .line 1102
    .line 1103
    move-result p1

    .line 1104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1108
    .line 1109
    .line 1110
    return v2

    .line 1111
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1115
    .line 1116
    .line 1117
    move-result p1

    .line 1118
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->evictCredentialEncryptionKey(I)V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    .line 1123
    .line 1124
    return v2

    .line 1125
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1129
    .line 1130
    .line 1131
    move-result p1

    .line 1132
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->setUserEnabled(I)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    .line 1137
    .line 1138
    return v2

    .line 1139
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object p1

    .line 1146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1147
    .line 1148
    .line 1149
    move-result p2

    .line 1150
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    .line 1151
    .line 1152
    .line 1153
    move-result-object p1

    .line 1154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    .line 1156
    .line 1157
    if-eqz p1, :cond_16

    .line 1158
    .line 1159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1163
    .line 1164
    .line 1165
    goto :goto_b

    .line 1166
    :cond_16
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    .line 1168
    .line 1169
    :goto_b
    return v2

    .line 1170
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object p1

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1178
    .line 1179
    .line 1180
    move-result p4

    .line 1181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1182
    .line 1183
    .line 1184
    move-result v0

    .line 1185
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object p2

    .line 1189
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    .line 1190
    .line 1191
    .line 1192
    move-result-object p1

    .line 1193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    .line 1195
    .line 1196
    if-eqz p1, :cond_17

    .line 1197
    .line 1198
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1202
    .line 1203
    .line 1204
    goto :goto_c

    .line 1205
    :cond_17
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1206
    .line 1207
    .line 1208
    :goto_c
    return v2

    .line 1209
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object p1

    .line 1216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1217
    .line 1218
    .line 1219
    move-result p2

    .line 1220
    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    .line 1221
    .line 1222
    .line 1223
    move-result-object p1

    .line 1224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    .line 1226
    .line 1227
    if-eqz p1, :cond_18

    .line 1228
    .line 1229
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1233
    .line 1234
    .line 1235
    goto :goto_d

    .line 1236
    :cond_18
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    .line 1238
    .line 1239
    :goto_d
    return v2

    .line 1240
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1244
    .line 1245
    .line 1246
    move-result p1

    .line 1247
    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getCredentialOwnerProfile(I)I

    .line 1248
    .line 1249
    .line 1250
    move-result p1

    .line 1251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    .line 1256
    .line 1257
    return v2

    .line 1258
    :cond_19
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    return v2

    .line 1262
    nop

    .line 1263
    :pswitch_data_0
    .packed-switch 0x1
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
