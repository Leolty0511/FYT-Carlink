.class public abstract Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSessionListener"

.field static final TRANSACTION_callSessionConferenceExtendFailed:I = 0x12

.field static final TRANSACTION_callSessionConferenceExtendReceived:I = 0x13

.field static final TRANSACTION_callSessionConferenceExtended:I = 0x11

.field static final TRANSACTION_callSessionConferenceStateUpdated:I = 0x18

.field static final TRANSACTION_callSessionHandover:I = 0x1a

.field static final TRANSACTION_callSessionHandoverFailed:I = 0x1b

.field static final TRANSACTION_callSessionHeld:I = 0x5

.field static final TRANSACTION_callSessionHoldFailed:I = 0x6

.field static final TRANSACTION_callSessionHoldReceived:I = 0x7

.field static final TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x14

.field static final TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x15

.field static final TRANSACTION_callSessionMayHandover:I = 0x1c

.field static final TRANSACTION_callSessionMergeComplete:I = 0xc

.field static final TRANSACTION_callSessionMergeFailed:I = 0xd

.field static final TRANSACTION_callSessionMergeStarted:I = 0xb

.field static final TRANSACTION_callSessionMultipartyStateChanged:I = 0x1e

.field static final TRANSACTION_callSessionProgressing:I = 0x1

.field static final TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x16

.field static final TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x17

.field static final TRANSACTION_callSessionResumeFailed:I = 0x9

.field static final TRANSACTION_callSessionResumeReceived:I = 0xa

.field static final TRANSACTION_callSessionResumed:I = 0x8

.field static final TRANSACTION_callSessionRttMessageReceived:I = 0x22

.field static final TRANSACTION_callSessionRttModifyRequestReceived:I = 0x20

.field static final TRANSACTION_callSessionRttModifyResponseReceived:I = 0x21

.field static final TRANSACTION_callSessionStartFailed:I = 0x3

.field static final TRANSACTION_callSessionStarted:I = 0x2

.field static final TRANSACTION_callSessionSuppServiceReceived:I = 0x1f

.field static final TRANSACTION_callSessionTerminated:I = 0x4

.field static final TRANSACTION_callSessionTtyModeReceived:I = 0x1d

.field static final TRANSACTION_callSessionUpdateFailed:I = 0xf

.field static final TRANSACTION_callSessionUpdateReceived:I = 0x10

.field static final TRANSACTION_callSessionUpdated:I = 0xe

.field static final TRANSACTION_callSessionUssdMessageReceived:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;
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
    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

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
    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSessionListener;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/android/ims/internal/IImsCallSessionListener;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.android.ims.internal.IImsCallSessionListener"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_1a

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :pswitch_2
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_0

    .line 49
    .line 50
    sget-object p3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    .line 52
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    move-object v0, p2

    .line 57
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 58
    .line 59
    :cond_0
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRttModifyRequestReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 60
    .line 61
    .line 62
    return v2

    .line 63
    :pswitch_3
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_1

    .line 72
    .line 73
    sget-object p3, Lcom/android/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    .line 75
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    move-object v0, p2

    .line 80
    check-cast v0, Lcom/android/ims/ImsSuppServiceNotification;

    .line 81
    .line 82
    :cond_1
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :pswitch_4
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    move p2, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const/4 p2, 0x0

    .line 99
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V

    .line 100
    .line 101
    .line 102
    return v2

    .line 103
    :pswitch_5
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V

    .line 112
    .line 113
    .line 114
    return v2

    .line 115
    :pswitch_6
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-interface {p0, p1, p3, p2}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMayHandover(Lcom/android/ims/internal/IImsCallSession;II)V

    .line 128
    .line 129
    .line 130
    return v2

    .line 131
    :pswitch_7
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 136
    .line 137
    .line 138
    move-result p3

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 140
    .line 141
    .line 142
    move-result p4

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    sget-object v0, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 150
    .line 151
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    move-object v0, p2

    .line 156
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 157
    .line 158
    :cond_3
    invoke-interface {p0, p1, p3, p4, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 159
    .line 160
    .line 161
    return v2

    .line 162
    :pswitch_8
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 171
    .line 172
    .line 173
    move-result p4

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    sget-object v0, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 181
    .line 182
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    move-object v0, p2

    .line 187
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 188
    .line 189
    :cond_4
    invoke-interface {p0, p1, p3, p4, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 190
    .line 191
    .line 192
    return v2

    .line 193
    :pswitch_9
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 198
    .line 199
    .line 200
    move-result p3

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-interface {p0, p1, p3, p2}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return v2

    .line 209
    :pswitch_a
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 214
    .line 215
    .line 216
    move-result p3

    .line 217
    if-eqz p3, :cond_5

    .line 218
    .line 219
    sget-object p3, Lcom/android/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 220
    .line 221
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    move-object v0, p2

    .line 226
    check-cast v0, Lcom/android/ims/ImsConferenceState;

    .line 227
    .line 228
    :cond_5
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 229
    .line 230
    .line 231
    return v2

    .line 232
    :pswitch_b
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 237
    .line 238
    .line 239
    move-result p3

    .line 240
    if-eqz p3, :cond_6

    .line 241
    .line 242
    sget-object p3, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 243
    .line 244
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    move-object v0, p2

    .line 249
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 250
    .line 251
    :cond_6
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 252
    .line 253
    .line 254
    return v2

    .line 255
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 267
    .line 268
    .line 269
    return v2

    .line 270
    :pswitch_d
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    if-eqz p3, :cond_7

    .line 279
    .line 280
    sget-object p3, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 281
    .line 282
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    move-object v0, p2

    .line 287
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 288
    .line 289
    :cond_7
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 290
    .line 291
    .line 292
    return v2

    .line 293
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 305
    .line 306
    .line 307
    return v2

    .line 308
    :pswitch_f
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 313
    .line 314
    .line 315
    move-result-object p3

    .line 316
    invoke-static {p3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    .line 317
    .line 318
    .line 319
    move-result-object p3

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 321
    .line 322
    .line 323
    move-result p4

    .line 324
    if-eqz p4, :cond_8

    .line 325
    .line 326
    sget-object p4, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 327
    .line 328
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    move-object v0, p2

    .line 333
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 334
    .line 335
    :cond_8
    invoke-interface {p0, p1, p3, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 336
    .line 337
    .line 338
    return v2

    .line 339
    :pswitch_10
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 344
    .line 345
    .line 346
    move-result p3

    .line 347
    if-eqz p3, :cond_9

    .line 348
    .line 349
    sget-object p3, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 350
    .line 351
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object p2

    .line 355
    move-object v0, p2

    .line 356
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 357
    .line 358
    :cond_9
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 359
    .line 360
    .line 361
    return v2

    .line 362
    :pswitch_11
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 367
    .line 368
    .line 369
    move-result-object p3

    .line 370
    invoke-static {p3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    .line 371
    .line 372
    .line 373
    move-result-object p3

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 375
    .line 376
    .line 377
    move-result p4

    .line 378
    if-eqz p4, :cond_a

    .line 379
    .line 380
    sget-object p4, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 381
    .line 382
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    move-object v0, p2

    .line 387
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 388
    .line 389
    :cond_a
    invoke-interface {p0, p1, p3, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 390
    .line 391
    .line 392
    return v2

    .line 393
    :pswitch_12
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 398
    .line 399
    .line 400
    move-result p3

    .line 401
    if-eqz p3, :cond_b

    .line 402
    .line 403
    sget-object p3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 404
    .line 405
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    move-object v0, p2

    .line 410
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 411
    .line 412
    :cond_b
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 413
    .line 414
    .line 415
    return v2

    .line 416
    :pswitch_13
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 421
    .line 422
    .line 423
    move-result p3

    .line 424
    if-eqz p3, :cond_c

    .line 425
    .line 426
    sget-object p3, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 427
    .line 428
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    move-object v0, p2

    .line 433
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 434
    .line 435
    :cond_c
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 436
    .line 437
    .line 438
    return v2

    .line 439
    :pswitch_14
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 444
    .line 445
    .line 446
    move-result p3

    .line 447
    if-eqz p3, :cond_d

    .line 448
    .line 449
    sget-object p3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 450
    .line 451
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    move-object v0, p2

    .line 456
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 457
    .line 458
    :cond_d
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 459
    .line 460
    .line 461
    return v2

    .line 462
    :pswitch_15
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 467
    .line 468
    .line 469
    move-result p3

    .line 470
    if-eqz p3, :cond_e

    .line 471
    .line 472
    sget-object p3, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 473
    .line 474
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object p2

    .line 478
    move-object v0, p2

    .line 479
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 480
    .line 481
    :cond_e
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 482
    .line 483
    .line 484
    return v2

    .line 485
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 497
    .line 498
    .line 499
    return v2

    .line 500
    :pswitch_17
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 505
    .line 506
    .line 507
    move-result-object p3

    .line 508
    invoke-static {p3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    .line 509
    .line 510
    .line 511
    move-result-object p3

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 513
    .line 514
    .line 515
    move-result p4

    .line 516
    if-eqz p4, :cond_f

    .line 517
    .line 518
    sget-object p4, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 519
    .line 520
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object p2

    .line 524
    move-object v0, p2

    .line 525
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 526
    .line 527
    :cond_f
    invoke-interface {p0, p1, p3, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 528
    .line 529
    .line 530
    return v2

    .line 531
    :pswitch_18
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 532
    .line 533
    .line 534
    move-result-object p1

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 536
    .line 537
    .line 538
    move-result p3

    .line 539
    if-eqz p3, :cond_10

    .line 540
    .line 541
    sget-object p3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 542
    .line 543
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object p2

    .line 547
    move-object v0, p2

    .line 548
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 549
    .line 550
    :cond_10
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 551
    .line 552
    .line 553
    return v2

    .line 554
    :pswitch_19
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 559
    .line 560
    .line 561
    move-result p3

    .line 562
    if-eqz p3, :cond_11

    .line 563
    .line 564
    sget-object p3, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 565
    .line 566
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object p2

    .line 570
    move-object v0, p2

    .line 571
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 572
    .line 573
    :cond_11
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 574
    .line 575
    .line 576
    return v2

    .line 577
    :pswitch_1a
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 582
    .line 583
    .line 584
    move-result p3

    .line 585
    if-eqz p3, :cond_12

    .line 586
    .line 587
    sget-object p3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 588
    .line 589
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object p2

    .line 593
    move-object v0, p2

    .line 594
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 595
    .line 596
    :cond_12
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 597
    .line 598
    .line 599
    return v2

    .line 600
    :pswitch_1b
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 605
    .line 606
    .line 607
    move-result p3

    .line 608
    if-eqz p3, :cond_13

    .line 609
    .line 610
    sget-object p3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 611
    .line 612
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object p2

    .line 616
    move-object v0, p2

    .line 617
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 618
    .line 619
    :cond_13
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 620
    .line 621
    .line 622
    return v2

    .line 623
    :pswitch_1c
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 624
    .line 625
    .line 626
    move-result-object p1

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 628
    .line 629
    .line 630
    move-result p3

    .line 631
    if-eqz p3, :cond_14

    .line 632
    .line 633
    sget-object p3, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 634
    .line 635
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object p2

    .line 639
    move-object v0, p2

    .line 640
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 641
    .line 642
    :cond_14
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 643
    .line 644
    .line 645
    return v2

    .line 646
    :pswitch_1d
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 651
    .line 652
    .line 653
    move-result p3

    .line 654
    if-eqz p3, :cond_15

    .line 655
    .line 656
    sget-object p3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 657
    .line 658
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object p2

    .line 662
    move-object v0, p2

    .line 663
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 664
    .line 665
    :cond_15
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 666
    .line 667
    .line 668
    return v2

    .line 669
    :pswitch_1e
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 674
    .line 675
    .line 676
    move-result p3

    .line 677
    if-eqz p3, :cond_16

    .line 678
    .line 679
    sget-object p3, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 680
    .line 681
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object p2

    .line 685
    move-object v0, p2

    .line 686
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 687
    .line 688
    :cond_16
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 689
    .line 690
    .line 691
    return v2

    .line 692
    :pswitch_1f
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 697
    .line 698
    .line 699
    move-result p3

    .line 700
    if-eqz p3, :cond_17

    .line 701
    .line 702
    sget-object p3, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 703
    .line 704
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object p2

    .line 708
    move-object v0, p2

    .line 709
    check-cast v0, Lcom/android/ims/ImsReasonInfo;

    .line 710
    .line 711
    :cond_17
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 712
    .line 713
    .line 714
    return v2

    .line 715
    :pswitch_20
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 720
    .line 721
    .line 722
    move-result p3

    .line 723
    if-eqz p3, :cond_18

    .line 724
    .line 725
    sget-object p3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 726
    .line 727
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object p2

    .line 731
    move-object v0, p2

    .line 732
    check-cast v0, Lcom/android/ims/ImsCallProfile;

    .line 733
    .line 734
    :cond_18
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 735
    .line 736
    .line 737
    return v2

    .line 738
    :pswitch_21
    invoke-static {p2, v1}, Landroid/renderscript/a;->b(Landroid/os/Parcel;Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 743
    .line 744
    .line 745
    move-result p3

    .line 746
    if-eqz p3, :cond_19

    .line 747
    .line 748
    sget-object p3, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 749
    .line 750
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object p2

    .line 754
    move-object v0, p2

    .line 755
    check-cast v0, Lcom/android/ims/ImsStreamMediaProfile;

    .line 756
    .line 757
    :cond_19
    invoke-interface {p0, p1, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 758
    .line 759
    .line 760
    return v2

    .line 761
    :cond_1a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    return v2

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
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
