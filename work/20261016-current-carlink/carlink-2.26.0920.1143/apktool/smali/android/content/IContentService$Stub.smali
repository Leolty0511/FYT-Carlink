.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addPeriodicSync:I = 0xf

.field static final TRANSACTION_addStatusChangeListener:I = 0x22

.field static final TRANSACTION_cancelRequest:I = 0x9

.field static final TRANSACTION_cancelSync:I = 0x7

.field static final TRANSACTION_cancelSyncAsUser:I = 0x8

.field static final TRANSACTION_getCache:I = 0x25

.field static final TRANSACTION_getCurrentSyncs:I = 0x18

.field static final TRANSACTION_getCurrentSyncsAsUser:I = 0x19

.field static final TRANSACTION_getIsSyncable:I = 0x11

.field static final TRANSACTION_getIsSyncableAsUser:I = 0x12

.field static final TRANSACTION_getMasterSyncAutomatically:I = 0x16

.field static final TRANSACTION_getMasterSyncAutomaticallyAsUser:I = 0x17

.field static final TRANSACTION_getPeriodicSyncs:I = 0xe

.field static final TRANSACTION_getSyncAdapterPackagesForAuthorityAsUser:I = 0x1c

.field static final TRANSACTION_getSyncAdapterTypes:I = 0x1a

.field static final TRANSACTION_getSyncAdapterTypesAsUser:I = 0x1b

.field static final TRANSACTION_getSyncAutomatically:I = 0xa

.field static final TRANSACTION_getSyncAutomaticallyAsUser:I = 0xb

.field static final TRANSACTION_getSyncStatus:I = 0x1e

.field static final TRANSACTION_getSyncStatusAsUser:I = 0x1f

.field static final TRANSACTION_isSyncActive:I = 0x1d

.field static final TRANSACTION_isSyncPending:I = 0x20

.field static final TRANSACTION_isSyncPendingAsUser:I = 0x21

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_putCache:I = 0x24

.field static final TRANSACTION_registerContentObserver:I = 0x2

.field static final TRANSACTION_removePeriodicSync:I = 0x10

.field static final TRANSACTION_removeStatusChangeListener:I = 0x23

.field static final TRANSACTION_requestSync:I = 0x4

.field static final TRANSACTION_setIsSyncable:I = 0x13

.field static final TRANSACTION_setMasterSyncAutomatically:I = 0x14

.field static final TRANSACTION_setMasterSyncAutomaticallyAsUser:I = 0x15

.field static final TRANSACTION_setSyncAutomatically:I = 0xc

.field static final TRANSACTION_setSyncAutomaticallyAsUser:I = 0xd

.field static final TRANSACTION_sync:I = 0x5

.field static final TRANSACTION_syncAsUser:I = 0x6

.field static final TRANSACTION_unregisterContentObserver:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.content.IContentService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
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
    const-string v0, "android.content.IContentService"

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
    instance-of v1, v0, Landroid/content/IContentService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/content/IContentService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/content/IContentService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "android.content.IContentService"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_2e

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    if-eqz p4, :cond_0

    .line 31
    .line 32
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    .line 34
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    move-object v3, p4

    .line 39
    check-cast v3, Landroid/net/Uri;

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-interface {p0, p1, v3, p2}, Landroid/content/IContentService;->getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return v2

    .line 65
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-eqz p4, :cond_2

    .line 77
    .line 78
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    .line 80
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    check-cast p4, Landroid/net/Uri;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move-object p4, v3

    .line 88
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 95
    .line 96
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v3, v0

    .line 101
    check-cast v3, Landroid/os/Bundle;

    .line 102
    .line 103
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-interface {p0, p1, p4, v3, p2}, Landroid/content/IContentService;->putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    .line 112
    .line 113
    return v2

    .line 114
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-interface {p0, p1}, Landroid/content/IContentService;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    .line 130
    .line 131
    return v2

    .line 132
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-static {p2}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-interface {p0, p1, p2}, Landroid/content/IContentService;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    .line 152
    .line 153
    return v2

    .line 154
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_4

    .line 162
    .line 163
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 164
    .line 165
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Landroid/accounts/Account;

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    move-object p1, v3

    .line 173
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p4

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 184
    .line 185
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    move-object v3, v0

    .line 190
    check-cast v3, Landroid/content/ComponentName;

    .line 191
    .line 192
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    invoke-interface {p0, p1, p4, v3, p2}, Landroid/content/IContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    .line 205
    .line 206
    return v2

    .line 207
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_6

    .line 215
    .line 216
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 217
    .line 218
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, Landroid/accounts/Account;

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_6
    move-object p1, v3

    .line 226
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p4

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 237
    .line 238
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    move-object v3, p2

    .line 243
    check-cast v3, Landroid/content/ComponentName;

    .line 244
    .line 245
    :cond_7
    invoke-interface {p0, p1, p4, v3}, Landroid/content/IContentService;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    .line 254
    .line 255
    return v2

    .line 256
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-eqz p1, :cond_8

    .line 264
    .line 265
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 266
    .line 267
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    check-cast p1, Landroid/accounts/Account;

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_8
    move-object p1, v3

    .line 275
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p4

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_9

    .line 284
    .line 285
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 286
    .line 287
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    move-object v3, v1

    .line 292
    check-cast v3, Landroid/content/ComponentName;

    .line 293
    .line 294
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    invoke-interface {p0, p1, p4, v3, p2}, Landroid/content/IContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    .line 304
    .line 305
    if-eqz p1, :cond_a

    .line 306
    .line 307
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, p3, v2}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    .line 316
    .line 317
    :goto_5
    return v2

    .line 318
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-eqz p1, :cond_b

    .line 326
    .line 327
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 328
    .line 329
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    check-cast p1, Landroid/accounts/Account;

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_b
    move-object p1, v3

    .line 337
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p4

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_c

    .line 346
    .line 347
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 348
    .line 349
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    move-object v3, p2

    .line 354
    check-cast v3, Landroid/content/ComponentName;

    .line 355
    .line 356
    :cond_c
    invoke-interface {p0, p1, p4, v3}, Landroid/content/IContentService;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    .line 362
    .line 363
    if-eqz p1, :cond_d

    .line 364
    .line 365
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1, p3, v2}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 369
    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    .line 374
    .line 375
    :goto_7
    return v2

    .line 376
    :pswitch_8
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
    if-eqz p1, :cond_e

    .line 384
    .line 385
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 386
    .line 387
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    check-cast p1, Landroid/accounts/Account;

    .line 392
    .line 393
    goto :goto_8

    .line 394
    :cond_e
    move-object p1, v3

    .line 395
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p4

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_f

    .line 404
    .line 405
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 406
    .line 407
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object p2

    .line 411
    move-object v3, p2

    .line 412
    check-cast v3, Landroid/content/ComponentName;

    .line 413
    .line 414
    :cond_f
    invoke-interface {p0, p1, p4, v3}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    .line 423
    .line 424
    return v2

    .line 425
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 433
    .line 434
    .line 435
    move-result p2

    .line 436
    invoke-interface {p0, p1, p2}, Landroid/content/IContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    return v2

    .line 447
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    invoke-interface {p0, p1}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 462
    .line 463
    .line 464
    return v2

    .line 465
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-interface {p0}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 476
    .line 477
    .line 478
    return v2

    .line 479
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 483
    .line 484
    .line 485
    move-result p1

    .line 486
    invoke-interface {p0, p1}, Landroid/content/IContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 494
    .line 495
    .line 496
    return v2

    .line 497
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-interface {p0}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 508
    .line 509
    .line 510
    return v2

    .line 511
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    invoke-interface {p0, p1}, Landroid/content/IContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    .line 527
    .line 528
    return v2

    .line 529
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-interface {p0}, Landroid/content/IContentService;->getMasterSyncAutomatically()Z

    .line 533
    .line 534
    .line 535
    move-result p1

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    .line 541
    .line 542
    return v2

    .line 543
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 547
    .line 548
    .line 549
    move-result p1

    .line 550
    if-eqz p1, :cond_10

    .line 551
    .line 552
    move v0, v2

    .line 553
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 554
    .line 555
    .line 556
    move-result p1

    .line 557
    invoke-interface {p0, v0, p1}, Landroid/content/IContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    .line 562
    .line 563
    return v2

    .line 564
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    if-eqz p1, :cond_11

    .line 572
    .line 573
    move v0, v2

    .line 574
    :cond_11
    invoke-interface {p0, v0}, Landroid/content/IContentService;->setMasterSyncAutomatically(Z)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    .line 579
    .line 580
    return v2

    .line 581
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 585
    .line 586
    .line 587
    move-result p1

    .line 588
    if-eqz p1, :cond_12

    .line 589
    .line 590
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 591
    .line 592
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    move-object v3, p1

    .line 597
    check-cast v3, Landroid/accounts/Account;

    .line 598
    .line 599
    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 604
    .line 605
    .line 606
    move-result p2

    .line 607
    invoke-interface {p0, v3, p1, p2}, Landroid/content/IContentService;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    .line 612
    .line 613
    return v2

    .line 614
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 618
    .line 619
    .line 620
    move-result p1

    .line 621
    if-eqz p1, :cond_13

    .line 622
    .line 623
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 624
    .line 625
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    move-object v3, p1

    .line 630
    check-cast v3, Landroid/accounts/Account;

    .line 631
    .line 632
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object p1

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 637
    .line 638
    .line 639
    move-result p2

    .line 640
    invoke-interface {p0, v3, p1, p2}, Landroid/content/IContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    .line 641
    .line 642
    .line 643
    move-result p1

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    .line 649
    .line 650
    return v2

    .line 651
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 655
    .line 656
    .line 657
    move-result p1

    .line 658
    if-eqz p1, :cond_14

    .line 659
    .line 660
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 661
    .line 662
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object p1

    .line 666
    move-object v3, p1

    .line 667
    check-cast v3, Landroid/accounts/Account;

    .line 668
    .line 669
    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    invoke-interface {p0, v3, p1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

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
    :pswitch_15
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
    if-eqz p1, :cond_15

    .line 692
    .line 693
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 694
    .line 695
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object p1

    .line 699
    check-cast p1, Landroid/accounts/Account;

    .line 700
    .line 701
    goto :goto_9

    .line 702
    :cond_15
    move-object p1, v3

    .line 703
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object p4

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    if-eqz v0, :cond_16

    .line 712
    .line 713
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 714
    .line 715
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object p2

    .line 719
    move-object v3, p2

    .line 720
    check-cast v3, Landroid/os/Bundle;

    .line 721
    .line 722
    :cond_16
    invoke-interface {p0, p1, p4, v3}, Landroid/content/IContentService;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    .line 727
    .line 728
    return v2

    .line 729
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 733
    .line 734
    .line 735
    move-result p1

    .line 736
    if-eqz p1, :cond_17

    .line 737
    .line 738
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 739
    .line 740
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object p1

    .line 744
    check-cast p1, Landroid/accounts/Account;

    .line 745
    .line 746
    move-object v5, p1

    .line 747
    goto :goto_a

    .line 748
    :cond_17
    move-object v5, v3

    .line 749
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v6

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 754
    .line 755
    .line 756
    move-result p1

    .line 757
    if-eqz p1, :cond_18

    .line 758
    .line 759
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 760
    .line 761
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object p1

    .line 765
    move-object v3, p1

    .line 766
    check-cast v3, Landroid/os/Bundle;

    .line 767
    .line 768
    :cond_18
    move-object v7, v3

    .line 769
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 770
    .line 771
    .line 772
    move-result-wide v8

    .line 773
    move-object v4, p0

    .line 774
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentService;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    .line 779
    .line 780
    return v2

    .line 781
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 785
    .line 786
    .line 787
    move-result p1

    .line 788
    if-eqz p1, :cond_19

    .line 789
    .line 790
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 791
    .line 792
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    check-cast p1, Landroid/accounts/Account;

    .line 797
    .line 798
    goto :goto_b

    .line 799
    :cond_19
    move-object p1, v3

    .line 800
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object p4

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    if-eqz v0, :cond_1a

    .line 809
    .line 810
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 811
    .line 812
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object p2

    .line 816
    move-object v3, p2

    .line 817
    check-cast v3, Landroid/content/ComponentName;

    .line 818
    .line 819
    :cond_1a
    invoke-interface {p0, p1, p4, v3}, Landroid/content/IContentService;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    .line 820
    .line 821
    .line 822
    move-result-object p1

    .line 823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    .line 825
    .line 826
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 827
    .line 828
    .line 829
    return v2

    .line 830
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 834
    .line 835
    .line 836
    move-result p1

    .line 837
    if-eqz p1, :cond_1b

    .line 838
    .line 839
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 840
    .line 841
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object p1

    .line 845
    move-object v3, p1

    .line 846
    check-cast v3, Landroid/accounts/Account;

    .line 847
    .line 848
    :cond_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object p1

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 853
    .line 854
    .line 855
    move-result p4

    .line 856
    if-eqz p4, :cond_1c

    .line 857
    .line 858
    move v0, v2

    .line 859
    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 860
    .line 861
    .line 862
    move-result p2

    .line 863
    invoke-interface {p0, v3, p1, v0, p2}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    .line 868
    .line 869
    return v2

    .line 870
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 874
    .line 875
    .line 876
    move-result p1

    .line 877
    if-eqz p1, :cond_1d

    .line 878
    .line 879
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 880
    .line 881
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object p1

    .line 885
    move-object v3, p1

    .line 886
    check-cast v3, Landroid/accounts/Account;

    .line 887
    .line 888
    :cond_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object p1

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 893
    .line 894
    .line 895
    move-result p2

    .line 896
    if-eqz p2, :cond_1e

    .line 897
    .line 898
    move v0, v2

    .line 899
    :cond_1e
    invoke-interface {p0, v3, p1, v0}, Landroid/content/IContentService;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    .line 904
    .line 905
    return v2

    .line 906
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 910
    .line 911
    .line 912
    move-result p1

    .line 913
    if-eqz p1, :cond_1f

    .line 914
    .line 915
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 916
    .line 917
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-result-object p1

    .line 921
    move-object v3, p1

    .line 922
    check-cast v3, Landroid/accounts/Account;

    .line 923
    .line 924
    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object p1

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 929
    .line 930
    .line 931
    move-result p2

    .line 932
    invoke-interface {p0, v3, p1, p2}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 933
    .line 934
    .line 935
    move-result p1

    .line 936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    .line 938
    .line 939
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    .line 941
    .line 942
    return v2

    .line 943
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 947
    .line 948
    .line 949
    move-result p1

    .line 950
    if-eqz p1, :cond_20

    .line 951
    .line 952
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 953
    .line 954
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object p1

    .line 958
    move-object v3, p1

    .line 959
    check-cast v3, Landroid/accounts/Account;

    .line 960
    .line 961
    :cond_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object p1

    .line 965
    invoke-interface {p0, v3, p1}, Landroid/content/IContentService;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 966
    .line 967
    .line 968
    move-result p1

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    .line 971
    .line 972
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    .line 974
    .line 975
    return v2

    .line 976
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 980
    .line 981
    .line 982
    move-result p1

    .line 983
    if-eqz p1, :cond_21

    .line 984
    .line 985
    sget-object p1, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 986
    .line 987
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object p1

    .line 991
    move-object v3, p1

    .line 992
    check-cast v3, Landroid/content/SyncRequest;

    .line 993
    .line 994
    :cond_21
    invoke-interface {p0, v3}, Landroid/content/IContentService;->cancelRequest(Landroid/content/SyncRequest;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    .line 999
    .line 1000
    return v2

    .line 1001
    :pswitch_1d
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
    if-eqz p1, :cond_22

    .line 1009
    .line 1010
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1011
    .line 1012
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object p1

    .line 1016
    check-cast p1, Landroid/accounts/Account;

    .line 1017
    .line 1018
    goto :goto_c

    .line 1019
    :cond_22
    move-object p1, v3

    .line 1020
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object p4

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1025
    .line 1026
    .line 1027
    move-result v0

    .line 1028
    if-eqz v0, :cond_23

    .line 1029
    .line 1030
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1031
    .line 1032
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    move-object v3, v0

    .line 1037
    check-cast v3, Landroid/content/ComponentName;

    .line 1038
    .line 1039
    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1040
    .line 1041
    .line 1042
    move-result p2

    .line 1043
    invoke-interface {p0, p1, p4, v3, p2}, Landroid/content/IContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    .line 1048
    .line 1049
    return v2

    .line 1050
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1054
    .line 1055
    .line 1056
    move-result p1

    .line 1057
    if-eqz p1, :cond_24

    .line 1058
    .line 1059
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1060
    .line 1061
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object p1

    .line 1065
    check-cast p1, Landroid/accounts/Account;

    .line 1066
    .line 1067
    goto :goto_d

    .line 1068
    :cond_24
    move-object p1, v3

    .line 1069
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object p4

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1074
    .line 1075
    .line 1076
    move-result v0

    .line 1077
    if-eqz v0, :cond_25

    .line 1078
    .line 1079
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1080
    .line 1081
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object p2

    .line 1085
    move-object v3, p2

    .line 1086
    check-cast v3, Landroid/content/ComponentName;

    .line 1087
    .line 1088
    :cond_25
    invoke-interface {p0, p1, p4, v3}, Landroid/content/IContentService;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    .line 1093
    .line 1094
    return v2

    .line 1095
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1099
    .line 1100
    .line 1101
    move-result p1

    .line 1102
    if-eqz p1, :cond_26

    .line 1103
    .line 1104
    sget-object p1, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1105
    .line 1106
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object p1

    .line 1110
    move-object v3, p1

    .line 1111
    check-cast v3, Landroid/content/SyncRequest;

    .line 1112
    .line 1113
    :cond_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1114
    .line 1115
    .line 1116
    move-result p1

    .line 1117
    invoke-interface {p0, v3, p1}, Landroid/content/IContentService;->syncAsUser(Landroid/content/SyncRequest;I)V

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    .line 1122
    .line 1123
    return v2

    .line 1124
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1128
    .line 1129
    .line 1130
    move-result p1

    .line 1131
    if-eqz p1, :cond_27

    .line 1132
    .line 1133
    sget-object p1, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1134
    .line 1135
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object p1

    .line 1139
    move-object v3, p1

    .line 1140
    check-cast v3, Landroid/content/SyncRequest;

    .line 1141
    .line 1142
    :cond_27
    invoke-interface {p0, v3}, Landroid/content/IContentService;->sync(Landroid/content/SyncRequest;)V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    .line 1147
    .line 1148
    return v2

    .line 1149
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1153
    .line 1154
    .line 1155
    move-result p1

    .line 1156
    if-eqz p1, :cond_28

    .line 1157
    .line 1158
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1159
    .line 1160
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object p1

    .line 1164
    check-cast p1, Landroid/accounts/Account;

    .line 1165
    .line 1166
    goto :goto_e

    .line 1167
    :cond_28
    move-object p1, v3

    .line 1168
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object p4

    .line 1172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1173
    .line 1174
    .line 1175
    move-result v0

    .line 1176
    if-eqz v0, :cond_29

    .line 1177
    .line 1178
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1179
    .line 1180
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object p2

    .line 1184
    move-object v3, p2

    .line 1185
    check-cast v3, Landroid/os/Bundle;

    .line 1186
    .line 1187
    :cond_29
    invoke-interface {p0, p1, p4, v3}, Landroid/content/IContentService;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    .line 1192
    .line 1193
    return v2

    .line 1194
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1198
    .line 1199
    .line 1200
    move-result p1

    .line 1201
    if-eqz p1, :cond_2a

    .line 1202
    .line 1203
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1204
    .line 1205
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object p1

    .line 1209
    move-object v3, p1

    .line 1210
    check-cast v3, Landroid/net/Uri;

    .line 1211
    .line 1212
    :cond_2a
    move-object v5, v3

    .line 1213
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1214
    .line 1215
    .line 1216
    move-result-object p1

    .line 1217
    invoke-static {p1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v6

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1222
    .line 1223
    .line 1224
    move-result p1

    .line 1225
    if-eqz p1, :cond_2b

    .line 1226
    .line 1227
    move v7, v2

    .line 1228
    goto :goto_f

    .line 1229
    :cond_2b
    move v7, v0

    .line 1230
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1231
    .line 1232
    .line 1233
    move-result v8

    .line 1234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1235
    .line 1236
    .line 1237
    move-result v9

    .line 1238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1239
    .line 1240
    .line 1241
    move-result v10

    .line 1242
    move-object v4, p0

    .line 1243
    invoke-interface/range {v4 .. v10}, Landroid/content/IContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIII)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    .line 1248
    .line 1249
    return v2

    .line 1250
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1254
    .line 1255
    .line 1256
    move-result p1

    .line 1257
    if-eqz p1, :cond_2c

    .line 1258
    .line 1259
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1260
    .line 1261
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object p1

    .line 1265
    move-object v3, p1

    .line 1266
    check-cast v3, Landroid/net/Uri;

    .line 1267
    .line 1268
    :cond_2c
    move-object v5, v3

    .line 1269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1270
    .line 1271
    .line 1272
    move-result p1

    .line 1273
    if-eqz p1, :cond_2d

    .line 1274
    .line 1275
    move v6, v2

    .line 1276
    goto :goto_10

    .line 1277
    :cond_2d
    move v6, v0

    .line 1278
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1279
    .line 1280
    .line 1281
    move-result-object p1

    .line 1282
    invoke-static {p1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v7

    .line 1286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1287
    .line 1288
    .line 1289
    move-result v8

    .line 1290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1291
    .line 1292
    .line 1293
    move-result v9

    .line 1294
    move-object v4, p0

    .line 1295
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    .line 1300
    .line 1301
    return v2

    .line 1302
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1306
    .line 1307
    .line 1308
    move-result-object p1

    .line 1309
    invoke-static {p1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    .line 1310
    .line 1311
    .line 1312
    move-result-object p1

    .line 1313
    invoke-interface {p0, p1}, Landroid/content/IContentService;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    .line 1318
    .line 1319
    return v2

    .line 1320
    :cond_2e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1321
    .line 1322
    .line 1323
    return v2

    .line 1324
    nop

    .line 1325
    :pswitch_data_0
    .packed-switch 0x1
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
