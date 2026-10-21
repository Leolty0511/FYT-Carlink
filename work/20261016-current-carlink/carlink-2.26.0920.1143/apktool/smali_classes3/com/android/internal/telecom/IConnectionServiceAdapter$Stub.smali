.class public abstract Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionServiceAdapter"

.field static final TRANSACTION_addConferenceCall:I = 0xd

.field static final TRANSACTION_addExistingConnection:I = 0x19

.field static final TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final TRANSACTION_onConnectionEvent:I = 0x1d

.field static final TRANSACTION_onPostDialChar:I = 0x10

.field static final TRANSACTION_onPostDialWait:I = 0xf

.field static final TRANSACTION_onRemoteRttRequest:I = 0x21

.field static final TRANSACTION_onRttInitiationFailure:I = 0x1f

.field static final TRANSACTION_onRttInitiationSuccess:I = 0x1e

.field static final TRANSACTION_onRttSessionRemotelyTerminated:I = 0x20

.field static final TRANSACTION_putExtras:I = 0x1a

.field static final TRANSACTION_queryRemoteConnectionServices:I = 0x11

.field static final TRANSACTION_removeCall:I = 0xe

.field static final TRANSACTION_removeExtras:I = 0x1b

.field static final TRANSACTION_setActive:I = 0x2

.field static final TRANSACTION_setAddress:I = 0x16

.field static final TRANSACTION_setAudioRoute:I = 0x1c

.field static final TRANSACTION_setCallerDisplayName:I = 0x17

.field static final TRANSACTION_setConferenceMergeFailed:I = 0xc

.field static final TRANSACTION_setConferenceableConnections:I = 0x18

.field static final TRANSACTION_setConnectionCapabilities:I = 0x9

.field static final TRANSACTION_setConnectionProperties:I = 0xa

.field static final TRANSACTION_setDialing:I = 0x4

.field static final TRANSACTION_setDisconnected:I = 0x6

.field static final TRANSACTION_setIsConferenced:I = 0xb

.field static final TRANSACTION_setIsVoipAudioMode:I = 0x14

.field static final TRANSACTION_setOnHold:I = 0x7

.field static final TRANSACTION_setPulling:I = 0x5

.field static final TRANSACTION_setRingbackRequested:I = 0x8

.field static final TRANSACTION_setRinging:I = 0x3

.field static final TRANSACTION_setStatusHints:I = 0x15

.field static final TRANSACTION_setVideoProvider:I = 0x12

.field static final TRANSACTION_setVideoState:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
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
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

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
    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_2c

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
    move-result p3

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    .line 34
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    move-object v3, p2

    .line 39
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 40
    .line 41
    :cond_0
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-eqz p3, :cond_1

    .line 57
    .line 58
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    .line 60
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    move-object v3, p2

    .line 65
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 66
    .line 67
    :cond_1
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    if-eqz p4, :cond_2

    .line 87
    .line 88
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 89
    .line 90
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    move-object v3, p2

    .line 95
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 96
    .line 97
    :cond_2
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    if-eqz p3, :cond_3

    .line 113
    .line 114
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 115
    .line 116
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    move-object v3, p2

    .line 121
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 122
    .line 123
    :cond_3
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 124
    .line 125
    .line 126
    return v2

    .line 127
    :pswitch_4
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 139
    .line 140
    .line 141
    move-result p4

    .line 142
    if-eqz p4, :cond_4

    .line 143
    .line 144
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 145
    .line 146
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p4

    .line 150
    check-cast p4, Landroid/os/Bundle;

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    move-object p4, v3

    .line 154
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_5

    .line 159
    .line 160
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    .line 162
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    move-object v3, p2

    .line 167
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 168
    .line 169
    :cond_5
    invoke-interface {p0, p1, p3, p4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 170
    .line 171
    .line 172
    return v2

    .line 173
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 185
    .line 186
    .line 187
    move-result p4

    .line 188
    if-eqz p4, :cond_6

    .line 189
    .line 190
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    .line 192
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    move-object v3, p2

    .line 197
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 198
    .line 199
    :cond_6
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAudioRoute(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 200
    .line 201
    .line 202
    return v2

    .line 203
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 215
    .line 216
    .line 217
    move-result p4

    .line 218
    if-eqz p4, :cond_7

    .line 219
    .line 220
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 221
    .line 222
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    move-object v3, p2

    .line 227
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 228
    .line 229
    :cond_7
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 230
    .line 231
    .line 232
    return v2

    .line 233
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 241
    .line 242
    .line 243
    move-result p3

    .line 244
    if-eqz p3, :cond_8

    .line 245
    .line 246
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 247
    .line 248
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p3

    .line 252
    check-cast p3, Landroid/os/Bundle;

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_8
    move-object p3, v3

    .line 256
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 257
    .line 258
    .line 259
    move-result p4

    .line 260
    if-eqz p4, :cond_9

    .line 261
    .line 262
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 263
    .line 264
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    move-object v3, p2

    .line 269
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 270
    .line 271
    :cond_9
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 272
    .line 273
    .line 274
    return v2

    .line 275
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 283
    .line 284
    .line 285
    move-result p3

    .line 286
    if-eqz p3, :cond_a

    .line 287
    .line 288
    sget-object p3, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    .line 290
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p3

    .line 294
    check-cast p3, Landroid/telecom/ParcelableConnection;

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_a
    move-object p3, v3

    .line 298
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 299
    .line 300
    .line 301
    move-result p4

    .line 302
    if-eqz p4, :cond_b

    .line 303
    .line 304
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 305
    .line 306
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    move-object v3, p2

    .line 311
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 312
    .line 313
    :cond_b
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 314
    .line 315
    .line 316
    return v2

    .line 317
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 325
    .line 326
    .line 327
    move-result-object p3

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 329
    .line 330
    .line 331
    move-result p4

    .line 332
    if-eqz p4, :cond_c

    .line 333
    .line 334
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 335
    .line 336
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    move-object v3, p2

    .line 341
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 342
    .line 343
    :cond_c
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 344
    .line 345
    .line 346
    return v2

    .line 347
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p3

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 359
    .line 360
    .line 361
    move-result p4

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_d

    .line 367
    .line 368
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 369
    .line 370
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    move-object v3, p2

    .line 375
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 376
    .line 377
    :cond_d
    invoke-interface {p0, p1, p3, p4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 378
    .line 379
    .line 380
    return v2

    .line 381
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 389
    .line 390
    .line 391
    move-result p3

    .line 392
    if-eqz p3, :cond_e

    .line 393
    .line 394
    sget-object p3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 395
    .line 396
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p3

    .line 400
    check-cast p3, Landroid/net/Uri;

    .line 401
    .line 402
    goto :goto_3

    .line 403
    :cond_e
    move-object p3, v3

    .line 404
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 405
    .line 406
    .line 407
    move-result p4

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_f

    .line 413
    .line 414
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 415
    .line 416
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object p2

    .line 420
    move-object v3, p2

    .line 421
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 422
    .line 423
    :cond_f
    invoke-interface {p0, p1, p3, p4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V

    .line 424
    .line 425
    .line 426
    return v2

    .line 427
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 435
    .line 436
    .line 437
    move-result p3

    .line 438
    if-eqz p3, :cond_10

    .line 439
    .line 440
    sget-object p3, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 441
    .line 442
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object p3

    .line 446
    check-cast p3, Landroid/telecom/StatusHints;

    .line 447
    .line 448
    goto :goto_4

    .line 449
    :cond_10
    move-object p3, v3

    .line 450
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 451
    .line 452
    .line 453
    move-result p4

    .line 454
    if-eqz p4, :cond_11

    .line 455
    .line 456
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 457
    .line 458
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object p2

    .line 462
    move-object v3, p2

    .line 463
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 464
    .line 465
    :cond_11
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V

    .line 466
    .line 467
    .line 468
    return v2

    .line 469
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 477
    .line 478
    .line 479
    move-result p3

    .line 480
    if-eqz p3, :cond_12

    .line 481
    .line 482
    move v0, v2

    .line 483
    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 484
    .line 485
    .line 486
    move-result p3

    .line 487
    if-eqz p3, :cond_13

    .line 488
    .line 489
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 490
    .line 491
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object p2

    .line 495
    move-object v3, p2

    .line 496
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 497
    .line 498
    :cond_13
    invoke-interface {p0, p1, v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 499
    .line 500
    .line 501
    return v2

    .line 502
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 510
    .line 511
    .line 512
    move-result p3

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 514
    .line 515
    .line 516
    move-result p4

    .line 517
    if-eqz p4, :cond_14

    .line 518
    .line 519
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 520
    .line 521
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object p2

    .line 525
    move-object v3, p2

    .line 526
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 527
    .line 528
    :cond_14
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 529
    .line 530
    .line 531
    return v2

    .line 532
    :pswitch_f
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 540
    .line 541
    .line 542
    move-result-object p3

    .line 543
    invoke-static {p3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    .line 544
    .line 545
    .line 546
    move-result-object p3

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 548
    .line 549
    .line 550
    move-result p4

    .line 551
    if-eqz p4, :cond_15

    .line 552
    .line 553
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 554
    .line 555
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object p2

    .line 559
    move-object v3, p2

    .line 560
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 561
    .line 562
    :cond_15
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V

    .line 563
    .line 564
    .line 565
    return v2

    .line 566
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    invoke-static {p1}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 578
    .line 579
    .line 580
    move-result p3

    .line 581
    if-eqz p3, :cond_16

    .line 582
    .line 583
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 584
    .line 585
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object p2

    .line 589
    move-object v3, p2

    .line 590
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 591
    .line 592
    :cond_16
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Landroid/telecom/Logging/Session$Info;)V

    .line 593
    .line 594
    .line 595
    return v2

    .line 596
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
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
    move-result p3

    .line 607
    int-to-char p3, p3

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 609
    .line 610
    .line 611
    move-result p4

    .line 612
    if-eqz p4, :cond_17

    .line 613
    .line 614
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 615
    .line 616
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object p2

    .line 620
    move-object v3, p2

    .line 621
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 622
    .line 623
    :cond_17
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 624
    .line 625
    .line 626
    return v2

    .line 627
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object p3

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 639
    .line 640
    .line 641
    move-result p4

    .line 642
    if-eqz p4, :cond_18

    .line 643
    .line 644
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 645
    .line 646
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object p2

    .line 650
    move-object v3, p2

    .line 651
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 652
    .line 653
    :cond_18
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 654
    .line 655
    .line 656
    return v2

    .line 657
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object p1

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 665
    .line 666
    .line 667
    move-result p3

    .line 668
    if-eqz p3, :cond_19

    .line 669
    .line 670
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 671
    .line 672
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object p2

    .line 676
    move-object v3, p2

    .line 677
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 678
    .line 679
    :cond_19
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 680
    .line 681
    .line 682
    return v2

    .line 683
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object p1

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 691
    .line 692
    .line 693
    move-result p3

    .line 694
    if-eqz p3, :cond_1a

    .line 695
    .line 696
    sget-object p3, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 697
    .line 698
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object p3

    .line 702
    check-cast p3, Landroid/telecom/ParcelableConference;

    .line 703
    .line 704
    goto :goto_5

    .line 705
    :cond_1a
    move-object p3, v3

    .line 706
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 707
    .line 708
    .line 709
    move-result p4

    .line 710
    if-eqz p4, :cond_1b

    .line 711
    .line 712
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 713
    .line 714
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object p2

    .line 718
    move-object v3, p2

    .line 719
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 720
    .line 721
    :cond_1b
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V

    .line 722
    .line 723
    .line 724
    return v2

    .line 725
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 733
    .line 734
    .line 735
    move-result p3

    .line 736
    if-eqz p3, :cond_1c

    .line 737
    .line 738
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 739
    .line 740
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object p2

    .line 744
    move-object v3, p2

    .line 745
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 746
    .line 747
    :cond_1c
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 748
    .line 749
    .line 750
    return v2

    .line 751
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object p1

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object p3

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 763
    .line 764
    .line 765
    move-result p4

    .line 766
    if-eqz p4, :cond_1d

    .line 767
    .line 768
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 769
    .line 770
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object p2

    .line 774
    move-object v3, p2

    .line 775
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 776
    .line 777
    :cond_1d
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object p1

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 789
    .line 790
    .line 791
    move-result p3

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 793
    .line 794
    .line 795
    move-result p4

    .line 796
    if-eqz p4, :cond_1e

    .line 797
    .line 798
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 799
    .line 800
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object p2

    .line 804
    move-object v3, p2

    .line 805
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 806
    .line 807
    :cond_1e
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 808
    .line 809
    .line 810
    return v2

    .line 811
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object p1

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 819
    .line 820
    .line 821
    move-result p3

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 823
    .line 824
    .line 825
    move-result p4

    .line 826
    if-eqz p4, :cond_1f

    .line 827
    .line 828
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 829
    .line 830
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object p2

    .line 834
    move-object v3, p2

    .line 835
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 836
    .line 837
    :cond_1f
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 838
    .line 839
    .line 840
    return v2

    .line 841
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 849
    .line 850
    .line 851
    move-result p3

    .line 852
    if-eqz p3, :cond_20

    .line 853
    .line 854
    move v0, v2

    .line 855
    :cond_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 856
    .line 857
    .line 858
    move-result p3

    .line 859
    if-eqz p3, :cond_21

    .line 860
    .line 861
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 862
    .line 863
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object p2

    .line 867
    move-object v3, p2

    .line 868
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 869
    .line 870
    :cond_21
    invoke-interface {p0, p1, v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 871
    .line 872
    .line 873
    return v2

    .line 874
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object p1

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 882
    .line 883
    .line 884
    move-result p3

    .line 885
    if-eqz p3, :cond_22

    .line 886
    .line 887
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 888
    .line 889
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object p2

    .line 893
    move-object v3, p2

    .line 894
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 895
    .line 896
    :cond_22
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 897
    .line 898
    .line 899
    return v2

    .line 900
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object p1

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 908
    .line 909
    .line 910
    move-result p3

    .line 911
    if-eqz p3, :cond_23

    .line 912
    .line 913
    sget-object p3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 914
    .line 915
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object p3

    .line 919
    check-cast p3, Landroid/telecom/DisconnectCause;

    .line 920
    .line 921
    goto :goto_6

    .line 922
    :cond_23
    move-object p3, v3

    .line 923
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 924
    .line 925
    .line 926
    move-result p4

    .line 927
    if-eqz p4, :cond_24

    .line 928
    .line 929
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 930
    .line 931
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object p2

    .line 935
    move-object v3, p2

    .line 936
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 937
    .line 938
    :cond_24
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V

    .line 939
    .line 940
    .line 941
    return v2

    .line 942
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object p1

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 950
    .line 951
    .line 952
    move-result p3

    .line 953
    if-eqz p3, :cond_25

    .line 954
    .line 955
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 956
    .line 957
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object p2

    .line 961
    move-object v3, p2

    .line 962
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 963
    .line 964
    :cond_25
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 965
    .line 966
    .line 967
    return v2

    .line 968
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object p1

    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 976
    .line 977
    .line 978
    move-result p3

    .line 979
    if-eqz p3, :cond_26

    .line 980
    .line 981
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 982
    .line 983
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object p2

    .line 987
    move-object v3, p2

    .line 988
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 989
    .line 990
    :cond_26
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 991
    .line 992
    .line 993
    return v2

    .line 994
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object p1

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1002
    .line 1003
    .line 1004
    move-result p3

    .line 1005
    if-eqz p3, :cond_27

    .line 1006
    .line 1007
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1008
    .line 1009
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object p2

    .line 1013
    move-object v3, p2

    .line 1014
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 1015
    .line 1016
    :cond_27
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 1017
    .line 1018
    .line 1019
    return v2

    .line 1020
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object p1

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1028
    .line 1029
    .line 1030
    move-result p3

    .line 1031
    if-eqz p3, :cond_28

    .line 1032
    .line 1033
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1034
    .line 1035
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    move-result-object p2

    .line 1039
    move-object v3, p2

    .line 1040
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 1041
    .line 1042
    :cond_28
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 1043
    .line 1044
    .line 1045
    return v2

    .line 1046
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object p1

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1054
    .line 1055
    .line 1056
    move-result p3

    .line 1057
    if-eqz p3, :cond_29

    .line 1058
    .line 1059
    sget-object p3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1060
    .line 1061
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object p3

    .line 1065
    check-cast p3, Landroid/telecom/ConnectionRequest;

    .line 1066
    .line 1067
    goto :goto_7

    .line 1068
    :cond_29
    move-object p3, v3

    .line 1069
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1070
    .line 1071
    .line 1072
    move-result p4

    .line 1073
    if-eqz p4, :cond_2a

    .line 1074
    .line 1075
    sget-object p4, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1076
    .line 1077
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object p4

    .line 1081
    check-cast p4, Landroid/telecom/ParcelableConnection;

    .line 1082
    .line 1083
    goto :goto_8

    .line 1084
    :cond_2a
    move-object p4, v3

    .line 1085
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1086
    .line 1087
    .line 1088
    move-result v0

    .line 1089
    if-eqz v0, :cond_2b

    .line 1090
    .line 1091
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1092
    .line 1093
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1094
    .line 1095
    .line 1096
    move-result-object p2

    .line 1097
    move-object v3, p2

    .line 1098
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 1099
    .line 1100
    :cond_2b
    invoke-interface {p0, p1, p3, p4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 1101
    .line 1102
    .line 1103
    return v2

    .line 1104
    :cond_2c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    return v2

    .line 1108
    nop

    .line 1109
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
