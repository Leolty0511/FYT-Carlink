.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final TRANSACTION_answer:I = 0x8

.field static final TRANSACTION_answerVideo:I = 0x7

.field static final TRANSACTION_conference:I = 0x12

.field static final TRANSACTION_createConnection:I = 0x3

.field static final TRANSACTION_createConnectionComplete:I = 0x4

.field static final TRANSACTION_createConnectionFailed:I = 0x5

.field static final TRANSACTION_disconnect:I = 0xb

.field static final TRANSACTION_hold:I = 0xd

.field static final TRANSACTION_mergeConference:I = 0x14

.field static final TRANSACTION_onCallAudioStateChanged:I = 0xf

.field static final TRANSACTION_onExtrasChanged:I = 0x19

.field static final TRANSACTION_onPostDialContinue:I = 0x16

.field static final TRANSACTION_playDtmfTone:I = 0x10

.field static final TRANSACTION_pullExternalCall:I = 0x17

.field static final TRANSACTION_reject:I = 0x9

.field static final TRANSACTION_rejectWithMessage:I = 0xa

.field static final TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final TRANSACTION_respondToRttUpgradeRequest:I = 0x1c

.field static final TRANSACTION_sendCallEvent:I = 0x18

.field static final TRANSACTION_silence:I = 0xc

.field static final TRANSACTION_splitFromConference:I = 0x13

.field static final TRANSACTION_startRtt:I = 0x1a

.field static final TRANSACTION_stopDtmfTone:I = 0x11

.field static final TRANSACTION_stopRtt:I = 0x1b

.field static final TRANSACTION_swapConference:I = 0x15

.field static final TRANSACTION_unhold:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.internal.telecom.IConnectionService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
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
    const-string v0, "com.android.internal.telecom.IConnectionService"

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
    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/android/internal/telecom/IConnectionService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.android.internal.telecom.IConnectionService"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_2b

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
    sget-object p3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    .line 34
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    check-cast p3, Landroid/os/ParcelFileDescriptor;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object p3, v3

    .line 42
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    if-eqz p4, :cond_1

    .line 47
    .line 48
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    .line 50
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move-object p4, v3

    .line 58
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 65
    .line 66
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    move-object v3, p2

    .line 71
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 72
    .line 73
    :cond_2
    invoke-interface {p0, p1, p3, p4, v3}, Lcom/android/internal/telecom/IConnectionService;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    .line 74
    .line 75
    .line 76
    return v2

    .line 77
    :pswitch_1
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
    move-result p3

    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 91
    .line 92
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    move-object v3, p2

    .line 97
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 98
    .line 99
    :cond_3
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 100
    .line 101
    .line 102
    return v2

    .line 103
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    if-eqz p3, :cond_4

    .line 115
    .line 116
    sget-object p3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 117
    .line 118
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    check-cast p3, Landroid/os/ParcelFileDescriptor;

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    move-object p3, v3

    .line 126
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 127
    .line 128
    .line 129
    move-result p4

    .line 130
    if-eqz p4, :cond_5

    .line 131
    .line 132
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 133
    .line 134
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p4

    .line 138
    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    move-object p4, v3

    .line 142
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 149
    .line 150
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    move-object v3, p2

    .line 155
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 156
    .line 157
    :cond_6
    invoke-interface {p0, p1, p3, p4, v3}, Lcom/android/internal/telecom/IConnectionService;->startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    .line 158
    .line 159
    .line 160
    return v2

    .line 161
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    if-eqz p3, :cond_7

    .line 173
    .line 174
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 175
    .line 176
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    check-cast p3, Landroid/os/Bundle;

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_7
    move-object p3, v3

    .line 184
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 185
    .line 186
    .line 187
    move-result p4

    .line 188
    if-eqz p4, :cond_8

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
    :cond_8
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionService;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 200
    .line 201
    .line 202
    return v2

    .line 203
    :pswitch_4
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

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
    if-eqz p4, :cond_9

    .line 219
    .line 220
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 221
    .line 222
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p4

    .line 226
    check-cast p4, Landroid/os/Bundle;

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_9
    move-object p4, v3

    .line 230
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_a

    .line 235
    .line 236
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

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
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 244
    .line 245
    :cond_a
    invoke-interface {p0, p1, p3, p4, v3}, Lcom/android/internal/telecom/IConnectionService;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 246
    .line 247
    .line 248
    return v2

    .line 249
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 257
    .line 258
    .line 259
    move-result p3

    .line 260
    if-eqz p3, :cond_b

    .line 261
    .line 262
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 263
    .line 264
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

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
    :cond_b
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 272
    .line 273
    .line 274
    return v2

    .line 275
    :pswitch_6
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
    if-eqz p3, :cond_c

    .line 287
    .line 288
    move v0, v2

    .line 289
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 290
    .line 291
    .line 292
    move-result p3

    .line 293
    if-eqz p3, :cond_d

    .line 294
    .line 295
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 296
    .line 297
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    move-object v3, p2

    .line 302
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 303
    .line 304
    :cond_d
    invoke-interface {p0, p1, v0, v3}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 305
    .line 306
    .line 307
    return v2

    .line 308
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 316
    .line 317
    .line 318
    move-result p3

    .line 319
    if-eqz p3, :cond_e

    .line 320
    .line 321
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 322
    .line 323
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object p2

    .line 327
    move-object v3, p2

    .line 328
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 329
    .line 330
    :cond_e
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 331
    .line 332
    .line 333
    return v2

    .line 334
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 342
    .line 343
    .line 344
    move-result p3

    .line 345
    if-eqz p3, :cond_f

    .line 346
    .line 347
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 348
    .line 349
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    move-object v3, p2

    .line 354
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 355
    .line 356
    :cond_f
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 357
    .line 358
    .line 359
    return v2

    .line 360
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 368
    .line 369
    .line 370
    move-result p3

    .line 371
    if-eqz p3, :cond_10

    .line 372
    .line 373
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 374
    .line 375
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    move-object v3, p2

    .line 380
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 381
    .line 382
    :cond_10
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 383
    .line 384
    .line 385
    return v2

    .line 386
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p3

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 398
    .line 399
    .line 400
    move-result p4

    .line 401
    if-eqz p4, :cond_11

    .line 402
    .line 403
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 404
    .line 405
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    move-object v3, p2

    .line 410
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 411
    .line 412
    :cond_11
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 413
    .line 414
    .line 415
    return v2

    .line 416
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 424
    .line 425
    .line 426
    move-result p3

    .line 427
    if-eqz p3, :cond_12

    .line 428
    .line 429
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 430
    .line 431
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    move-object v3, p2

    .line 436
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 437
    .line 438
    :cond_12
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 439
    .line 440
    .line 441
    return v2

    .line 442
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 450
    .line 451
    .line 452
    move-result p3

    .line 453
    int-to-char p3, p3

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 455
    .line 456
    .line 457
    move-result p4

    .line 458
    if-eqz p4, :cond_13

    .line 459
    .line 460
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 461
    .line 462
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object p2

    .line 466
    move-object v3, p2

    .line 467
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 468
    .line 469
    :cond_13
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 470
    .line 471
    .line 472
    return v2

    .line 473
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 481
    .line 482
    .line 483
    move-result p3

    .line 484
    if-eqz p3, :cond_14

    .line 485
    .line 486
    sget-object p3, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 487
    .line 488
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object p3

    .line 492
    check-cast p3, Landroid/telecom/CallAudioState;

    .line 493
    .line 494
    goto :goto_6

    .line 495
    :cond_14
    move-object p3, v3

    .line 496
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 497
    .line 498
    .line 499
    move-result p4

    .line 500
    if-eqz p4, :cond_15

    .line 501
    .line 502
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 503
    .line 504
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object p2

    .line 508
    move-object v3, p2

    .line 509
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 510
    .line 511
    :cond_15
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V

    .line 512
    .line 513
    .line 514
    return v2

    .line 515
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 523
    .line 524
    .line 525
    move-result p3

    .line 526
    if-eqz p3, :cond_16

    .line 527
    .line 528
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 529
    .line 530
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object p2

    .line 534
    move-object v3, p2

    .line 535
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 536
    .line 537
    :cond_16
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 538
    .line 539
    .line 540
    return v2

    .line 541
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 549
    .line 550
    .line 551
    move-result p3

    .line 552
    if-eqz p3, :cond_17

    .line 553
    .line 554
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 555
    .line 556
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object p2

    .line 560
    move-object v3, p2

    .line 561
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 562
    .line 563
    :cond_17
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 564
    .line 565
    .line 566
    return v2

    .line 567
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 575
    .line 576
    .line 577
    move-result p3

    .line 578
    if-eqz p3, :cond_18

    .line 579
    .line 580
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 581
    .line 582
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object p2

    .line 586
    move-object v3, p2

    .line 587
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 588
    .line 589
    :cond_18
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->silence(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 590
    .line 591
    .line 592
    return v2

    .line 593
    :pswitch_11
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 601
    .line 602
    .line 603
    move-result p3

    .line 604
    if-eqz p3, :cond_19

    .line 605
    .line 606
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 607
    .line 608
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object p2

    .line 612
    move-object v3, p2

    .line 613
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 614
    .line 615
    :cond_19
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 616
    .line 617
    .line 618
    return v2

    .line 619
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object p3

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 631
    .line 632
    .line 633
    move-result p4

    .line 634
    if-eqz p4, :cond_1a

    .line 635
    .line 636
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 637
    .line 638
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object p2

    .line 642
    move-object v3, p2

    .line 643
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 644
    .line 645
    :cond_1a
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionService;->rejectWithMessage(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 646
    .line 647
    .line 648
    return v2

    .line 649
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object p1

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 657
    .line 658
    .line 659
    move-result p3

    .line 660
    if-eqz p3, :cond_1b

    .line 661
    .line 662
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 663
    .line 664
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object p2

    .line 668
    move-object v3, p2

    .line 669
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 670
    .line 671
    :cond_1b
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 672
    .line 673
    .line 674
    return v2

    .line 675
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object p1

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 683
    .line 684
    .line 685
    move-result p3

    .line 686
    if-eqz p3, :cond_1c

    .line 687
    .line 688
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 689
    .line 690
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object p2

    .line 694
    move-object v3, p2

    .line 695
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 696
    .line 697
    :cond_1c
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 698
    .line 699
    .line 700
    return v2

    .line 701
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object p1

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 709
    .line 710
    .line 711
    move-result p3

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 713
    .line 714
    .line 715
    move-result p4

    .line 716
    if-eqz p4, :cond_1d

    .line 717
    .line 718
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 719
    .line 720
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object p2

    .line 724
    move-object v3, p2

    .line 725
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 726
    .line 727
    :cond_1d
    invoke-interface {p0, p1, p3, v3}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 728
    .line 729
    .line 730
    return v2

    .line 731
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object p1

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 739
    .line 740
    .line 741
    move-result p3

    .line 742
    if-eqz p3, :cond_1e

    .line 743
    .line 744
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 745
    .line 746
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object p2

    .line 750
    move-object v3, p2

    .line 751
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 752
    .line 753
    :cond_1e
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 754
    .line 755
    .line 756
    return v2

    .line 757
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 761
    .line 762
    .line 763
    move-result p1

    .line 764
    if-eqz p1, :cond_1f

    .line 765
    .line 766
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 767
    .line 768
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 773
    .line 774
    move-object v5, p1

    .line 775
    goto :goto_7

    .line 776
    :cond_1f
    move-object v5, v3

    .line 777
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v6

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 782
    .line 783
    .line 784
    move-result p1

    .line 785
    if-eqz p1, :cond_20

    .line 786
    .line 787
    sget-object p1, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 788
    .line 789
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object p1

    .line 793
    check-cast p1, Landroid/telecom/ConnectionRequest;

    .line 794
    .line 795
    move-object v7, p1

    .line 796
    goto :goto_8

    .line 797
    :cond_20
    move-object v7, v3

    .line 798
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 799
    .line 800
    .line 801
    move-result p1

    .line 802
    if-eqz p1, :cond_21

    .line 803
    .line 804
    move v8, v2

    .line 805
    goto :goto_9

    .line 806
    :cond_21
    move v8, v0

    .line 807
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 808
    .line 809
    .line 810
    move-result p1

    .line 811
    if-eqz p1, :cond_22

    .line 812
    .line 813
    sget-object p1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 814
    .line 815
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object p1

    .line 819
    move-object v3, p1

    .line 820
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 821
    .line 822
    :cond_22
    move-object v9, v3

    .line 823
    move-object v4, p0

    .line 824
    invoke-interface/range {v4 .. v9}, Lcom/android/internal/telecom/IConnectionService;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V

    .line 825
    .line 826
    .line 827
    return v2

    .line 828
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object p1

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 836
    .line 837
    .line 838
    move-result p3

    .line 839
    if-eqz p3, :cond_23

    .line 840
    .line 841
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 842
    .line 843
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object p2

    .line 847
    move-object v3, p2

    .line 848
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 849
    .line 850
    :cond_23
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->createConnectionComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 851
    .line 852
    .line 853
    return v2

    .line 854
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 858
    .line 859
    .line 860
    move-result p1

    .line 861
    if-eqz p1, :cond_24

    .line 862
    .line 863
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 864
    .line 865
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object p1

    .line 869
    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 870
    .line 871
    move-object v5, p1

    .line 872
    goto :goto_a

    .line 873
    :cond_24
    move-object v5, v3

    .line 874
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v6

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 879
    .line 880
    .line 881
    move-result p1

    .line 882
    if-eqz p1, :cond_25

    .line 883
    .line 884
    sget-object p1, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 885
    .line 886
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object p1

    .line 890
    check-cast p1, Landroid/telecom/ConnectionRequest;

    .line 891
    .line 892
    move-object v7, p1

    .line 893
    goto :goto_b

    .line 894
    :cond_25
    move-object v7, v3

    .line 895
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 896
    .line 897
    .line 898
    move-result p1

    .line 899
    if-eqz p1, :cond_26

    .line 900
    .line 901
    move v8, v2

    .line 902
    goto :goto_c

    .line 903
    :cond_26
    move v8, v0

    .line 904
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 905
    .line 906
    .line 907
    move-result p1

    .line 908
    if-eqz p1, :cond_27

    .line 909
    .line 910
    move v9, v2

    .line 911
    goto :goto_d

    .line 912
    :cond_27
    move v9, v0

    .line 913
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 914
    .line 915
    .line 916
    move-result p1

    .line 917
    if-eqz p1, :cond_28

    .line 918
    .line 919
    sget-object p1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 920
    .line 921
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object p1

    .line 925
    move-object v3, p1

    .line 926
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 927
    .line 928
    :cond_28
    move-object v10, v3

    .line 929
    move-object v4, p0

    .line 930
    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telecom/IConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 931
    .line 932
    .line 933
    return v2

    .line 934
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 938
    .line 939
    .line 940
    move-result-object p1

    .line 941
    invoke-static {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 942
    .line 943
    .line 944
    move-result-object p1

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 946
    .line 947
    .line 948
    move-result p3

    .line 949
    if-eqz p3, :cond_29

    .line 950
    .line 951
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 952
    .line 953
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object p2

    .line 957
    move-object v3, p2

    .line 958
    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 959
    .line 960
    :cond_29
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 961
    .line 962
    .line 963
    return v2

    .line 964
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 968
    .line 969
    .line 970
    move-result-object p1

    .line 971
    invoke-static {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

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
    if-eqz p3, :cond_2a

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
    :cond_2a
    invoke-interface {p0, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 991
    .line 992
    .line 993
    return v2

    .line 994
    :cond_2b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    return v2

    .line 998
    nop

    .line 999
    :pswitch_data_0
    .packed-switch 0x1
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
