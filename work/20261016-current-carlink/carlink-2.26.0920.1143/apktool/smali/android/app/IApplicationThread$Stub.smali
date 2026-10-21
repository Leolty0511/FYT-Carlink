.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final TRANSACTION_attachAgent:I = 0x3c

.field static final TRANSACTION_bindApplication:I = 0xc

.field static final TRANSACTION_clearDnsCache:I = 0x25

.field static final TRANSACTION_dispatchPackageBroadcast:I = 0x21

.field static final TRANSACTION_dumpActivity:I = 0x24

.field static final TRANSACTION_dumpDbInfo:I = 0x2d

.field static final TRANSACTION_dumpGfxInfo:I = 0x2b

.field static final TRANSACTION_dumpHeap:I = 0x23

.field static final TRANSACTION_dumpMemInfo:I = 0x2a

.field static final TRANSACTION_dumpProvider:I = 0x2c

.field static final TRANSACTION_dumpService:I = 0x14

.field static final TRANSACTION_handleTrustStorageUpdate:I = 0x3b

.field static final TRANSACTION_notifyCleartextNetwork:I = 0x35

.field static final TRANSACTION_processInBackground:I = 0x11

.field static final TRANSACTION_profilerControl:I = 0x1b

.field static final TRANSACTION_requestAssistContextExtras:I = 0x2f

.field static final TRANSACTION_scheduleActivityConfigurationChanged:I = 0x17

.field static final TRANSACTION_scheduleActivityMovedToDisplay:I = 0x18

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x3d

.field static final TRANSACTION_scheduleBindService:I = 0x12

.field static final TRANSACTION_scheduleConfigurationChanged:I = 0xe

.field static final TRANSACTION_scheduleCrash:I = 0x22

.field static final TRANSACTION_scheduleCreateBackupAgent:I = 0x1d

.field static final TRANSACTION_scheduleCreateService:I = 0xa

.field static final TRANSACTION_scheduleDestroyActivity:I = 0x8

.field static final TRANSACTION_scheduleDestroyBackupAgent:I = 0x1e

.field static final TRANSACTION_scheduleEnterAnimationComplete:I = 0x34

.field static final TRANSACTION_scheduleExit:I = 0xd

.field static final TRANSACTION_scheduleInstallProvider:I = 0x32

.field static final TRANSACTION_scheduleLaunchActivity:I = 0x6

.field static final TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x3a

.field static final TRANSACTION_scheduleLowMemory:I = 0x16

.field static final TRANSACTION_scheduleMultiWindowModeChanged:I = 0x38

.field static final TRANSACTION_scheduleNewIntent:I = 0x7

.field static final TRANSACTION_scheduleOnNewActivityOptions:I = 0x1f

.field static final TRANSACTION_schedulePauseActivity:I = 0x1

.field static final TRANSACTION_schedulePictureInPictureModeChanged:I = 0x39

.field static final TRANSACTION_scheduleReceiver:I = 0x9

.field static final TRANSACTION_scheduleRegisteredReceiver:I = 0x15

.field static final TRANSACTION_scheduleRelaunchActivity:I = 0x19

.field static final TRANSACTION_scheduleResumeActivity:I = 0x4

.field static final TRANSACTION_scheduleSendResult:I = 0x5

.field static final TRANSACTION_scheduleServiceArgs:I = 0xf

.field static final TRANSACTION_scheduleSleeping:I = 0x1a

.field static final TRANSACTION_scheduleStopActivity:I = 0x2

.field static final TRANSACTION_scheduleStopService:I = 0xb

.field static final TRANSACTION_scheduleSuicide:I = 0x20

.field static final TRANSACTION_scheduleTranslucentConversionComplete:I = 0x30

.field static final TRANSACTION_scheduleTrimMemory:I = 0x29

.field static final TRANSACTION_scheduleUnbindService:I = 0x13

.field static final TRANSACTION_scheduleWindowVisibility:I = 0x3

.field static final TRANSACTION_setCoreSettings:I = 0x27

.field static final TRANSACTION_setHttpProxy:I = 0x26

.field static final TRANSACTION_setNetworkBlockSeq:I = 0x3e

.field static final TRANSACTION_setProcessState:I = 0x31

.field static final TRANSACTION_setSchedulingGroup:I = 0x1c

.field static final TRANSACTION_startBinderTracking:I = 0x36

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0x37

.field static final TRANSACTION_unstableProviderDied:I = 0x2e

.field static final TRANSACTION_updatePackageCompatibilityInfo:I = 0x28

.field static final TRANSACTION_updateTimePrefs:I = 0x33

.field static final TRANSACTION_updateTimeZone:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.app.IApplicationThread"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
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
    const-string v0, "android.app.IApplicationThread"

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
    instance-of v1, v0, Landroid/app/IApplicationThread;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/app/IApplicationThread;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/app/IApplicationThread$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 24

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    const v2, 0x5f4e5446

    .line 8
    .line 9
    .line 10
    const-string v3, "android.app.IApplicationThread"

    .line 11
    .line 12
    const/16 v19, 0x1

    .line 13
    .line 14
    if-eq v0, v2, :cond_57

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-interface {v15, v0, v1}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V

    .line 34
    .line 35
    .line 36
    return v19

    .line 37
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    .line 48
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v4, v0

    .line 53
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    :cond_0
    invoke-interface {v15, v4}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 56
    .line 57
    .line 58
    return v19

    .line 59
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v19

    .line 70
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface/range {p0 .. p0}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V

    .line 74
    .line 75
    .line 76
    return v19

    .line 77
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-interface {v15, v0, v1}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 93
    .line 94
    .line 95
    return v19

    .line 96
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    move/from16 v2, v19

    .line 110
    .line 111
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 118
    .line 119
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v4, v1

    .line 124
    check-cast v4, Landroid/content/res/Configuration;

    .line 125
    .line 126
    :cond_2
    invoke-interface {v15, v0, v2, v4}, Landroid/app/IApplicationThread;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    .line 127
    .line 128
    .line 129
    return v19

    .line 130
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_3

    .line 142
    .line 143
    move/from16 v2, v19

    .line 144
    .line 145
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_4

    .line 150
    .line 151
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    .line 153
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move-object v4, v1

    .line 158
    check-cast v4, Landroid/content/res/Configuration;

    .line 159
    .line 160
    :cond_4
    invoke-interface {v15, v0, v2, v4}, Landroid/app/IApplicationThread;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    .line 161
    .line 162
    .line 163
    return v19

    .line 164
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_5

    .line 172
    .line 173
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    .line 175
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    move-object v4, v0

    .line 180
    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 181
    .line 182
    :cond_5
    invoke-interface {v15, v4}, Landroid/app/IApplicationThread;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 183
    .line 184
    .line 185
    return v19

    .line 186
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-interface/range {p0 .. p0}, Landroid/app/IApplicationThread;->startBinderTracking()V

    .line 190
    .line 191
    .line 192
    return v19

    .line 193
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V

    .line 201
    .line 202
    .line 203
    return v19

    .line 204
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 212
    .line 213
    .line 214
    return v19

    .line 215
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V

    .line 223
    .line 224
    .line 225
    return v19

    .line 226
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_6

    .line 234
    .line 235
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 236
    .line 237
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    move-object v4, v0

    .line 242
    check-cast v4, Landroid/content/pm/ProviderInfo;

    .line 243
    .line 244
    :cond_6
    invoke-interface {v15, v4}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 245
    .line 246
    .line 247
    return v19

    .line 248
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->setProcessState(I)V

    .line 256
    .line 257
    .line 258
    return v19

    .line 259
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_7

    .line 271
    .line 272
    move/from16 v2, v19

    .line 273
    .line 274
    :cond_7
    invoke-interface {v15, v0, v2}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 275
    .line 276
    .line 277
    return v19

    .line 278
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    move-object/from16 v0, p0

    .line 302
    .line 303
    move-object v1, v2

    .line 304
    move-object v2, v3

    .line 305
    move v3, v4

    .line 306
    move v4, v5

    .line 307
    move v5, v6

    .line 308
    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 309
    .line 310
    .line 311
    return v19

    .line 312
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 320
    .line 321
    .line 322
    return v19

    .line 323
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_8

    .line 331
    .line 332
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 333
    .line 334
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    move-object v4, v0

    .line 339
    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 340
    .line 341
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-interface {v15, v4, v0}, Landroid/app/IApplicationThread;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return v19

    .line 349
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_9

    .line 357
    .line 358
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 359
    .line 360
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    move-object v4, v0

    .line 365
    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 366
    .line 367
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-interface {v15, v4, v0, v1}, Landroid/app/IApplicationThread;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    return v19

    .line 379
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_a

    .line 387
    .line 388
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 389
    .line 390
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    move-object v4, v0

    .line 395
    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 396
    .line 397
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-interface {v15, v4, v0}, Landroid/app/IApplicationThread;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    return v19

    .line 405
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_b

    .line 413
    .line 414
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 415
    .line 416
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 421
    .line 422
    move-object v3, v0

    .line 423
    goto :goto_0

    .line 424
    :cond_b
    move-object v3, v4

    .line 425
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-eqz v0, :cond_c

    .line 430
    .line 431
    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 432
    .line 433
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Landroid/os/Debug$MemoryInfo;

    .line 438
    .line 439
    move-object v4, v0

    .line 440
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-eqz v0, :cond_d

    .line 445
    .line 446
    move/from16 v5, v19

    .line 447
    .line 448
    goto :goto_1

    .line 449
    :cond_d
    move v5, v2

    .line 450
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-eqz v0, :cond_e

    .line 455
    .line 456
    move/from16 v6, v19

    .line 457
    .line 458
    goto :goto_2

    .line 459
    :cond_e
    move v6, v2

    .line 460
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-eqz v0, :cond_f

    .line 465
    .line 466
    move/from16 v7, v19

    .line 467
    .line 468
    goto :goto_3

    .line 469
    :cond_f
    move v7, v2

    .line 470
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-eqz v0, :cond_10

    .line 475
    .line 476
    move/from16 v8, v19

    .line 477
    .line 478
    goto :goto_4

    .line 479
    :cond_10
    move v8, v2

    .line 480
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-eqz v0, :cond_11

    .line 485
    .line 486
    move/from16 v9, v19

    .line 487
    .line 488
    goto :goto_5

    .line 489
    :cond_11
    move v9, v2

    .line 490
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    move-object/from16 v0, p0

    .line 495
    .line 496
    move-object v1, v3

    .line 497
    move-object v2, v4

    .line 498
    move v3, v5

    .line 499
    move v4, v6

    .line 500
    move v5, v7

    .line 501
    move v6, v8

    .line 502
    move v7, v9

    .line 503
    move-object v8, v10

    .line 504
    invoke-interface/range {v0 .. v8}, Landroid/app/IApplicationThread;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    return v19

    .line 508
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 516
    .line 517
    .line 518
    return v19

    .line 519
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    if-eqz v2, :cond_12

    .line 531
    .line 532
    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 533
    .line 534
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    move-object v4, v1

    .line 539
    check-cast v4, Landroid/content/res/CompatibilityInfo;

    .line 540
    .line 541
    :cond_12
    invoke-interface {v15, v0, v4}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 542
    .line 543
    .line 544
    return v19

    .line 545
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-eqz v0, :cond_13

    .line 553
    .line 554
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 555
    .line 556
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    move-object v4, v0

    .line 561
    check-cast v4, Landroid/os/Bundle;

    .line 562
    .line 563
    :cond_13
    invoke-interface {v15, v4}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 564
    .line 565
    .line 566
    return v19

    .line 567
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    if-eqz v5, :cond_14

    .line 587
    .line 588
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 589
    .line 590
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    move-object v4, v1

    .line 595
    check-cast v4, Landroid/net/Uri;

    .line 596
    .line 597
    :cond_14
    invoke-interface {v15, v0, v2, v3, v4}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 598
    .line 599
    .line 600
    return v19

    .line 601
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-interface/range {p0 .. p0}, Landroid/app/IApplicationThread;->clearDnsCache()V

    .line 605
    .line 606
    .line 607
    return v19

    .line 608
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    if-eqz v0, :cond_15

    .line 616
    .line 617
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 618
    .line 619
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    move-object v4, v0

    .line 624
    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 625
    .line 626
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-interface {v15, v4, v0, v2, v1}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    return v19

    .line 642
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    if-eqz v0, :cond_16

    .line 650
    .line 651
    move/from16 v3, v19

    .line 652
    .line 653
    goto :goto_6

    .line 654
    :cond_16
    move v3, v2

    .line 655
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-eqz v0, :cond_17

    .line 660
    .line 661
    move/from16 v5, v19

    .line 662
    .line 663
    goto :goto_7

    .line 664
    :cond_17
    move v5, v2

    .line 665
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    if-eqz v0, :cond_18

    .line 670
    .line 671
    move/from16 v6, v19

    .line 672
    .line 673
    goto :goto_8

    .line 674
    :cond_18
    move v6, v2

    .line 675
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v7

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    if-eqz v0, :cond_19

    .line 684
    .line 685
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 686
    .line 687
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 692
    .line 693
    move-object v8, v0

    .line 694
    goto :goto_9

    .line 695
    :cond_19
    move-object v8, v4

    .line 696
    :goto_9
    move-object/from16 v0, p0

    .line 697
    .line 698
    move v1, v3

    .line 699
    move v2, v5

    .line 700
    move v3, v6

    .line 701
    move-object v4, v7

    .line 702
    move-object v5, v8

    .line 703
    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 704
    .line 705
    .line 706
    return v19

    .line 707
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    return v19

    .line 718
    :pswitch_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 722
    .line 723
    .line 724
    move-result v0

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    invoke-interface {v15, v0, v1}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    return v19

    .line 733
    :pswitch_1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    invoke-interface/range {p0 .. p0}, Landroid/app/IApplicationThread;->scheduleSuicide()V

    .line 737
    .line 738
    .line 739
    return v19

    .line 740
    :pswitch_1f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 748
    .line 749
    .line 750
    move-result v2

    .line 751
    if-eqz v2, :cond_1a

    .line 752
    .line 753
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 754
    .line 755
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    move-object v4, v1

    .line 760
    check-cast v4, Landroid/os/Bundle;

    .line 761
    .line 762
    :cond_1a
    invoke-interface {v15, v0, v4}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 763
    .line 764
    .line 765
    return v19

    .line 766
    :pswitch_20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    if-eqz v0, :cond_1b

    .line 774
    .line 775
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 776
    .line 777
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 782
    .line 783
    goto :goto_a

    .line 784
    :cond_1b
    move-object v0, v4

    .line 785
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    if-eqz v2, :cond_1c

    .line 790
    .line 791
    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 792
    .line 793
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    move-object v4, v1

    .line 798
    check-cast v4, Landroid/content/res/CompatibilityInfo;

    .line 799
    .line 800
    :cond_1c
    invoke-interface {v15, v0, v4}, Landroid/app/IApplicationThread;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 801
    .line 802
    .line 803
    return v19

    .line 804
    :pswitch_21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 808
    .line 809
    .line 810
    move-result v0

    .line 811
    if-eqz v0, :cond_1d

    .line 812
    .line 813
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 814
    .line 815
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 820
    .line 821
    goto :goto_b

    .line 822
    :cond_1d
    move-object v0, v4

    .line 823
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 824
    .line 825
    .line 826
    move-result v2

    .line 827
    if-eqz v2, :cond_1e

    .line 828
    .line 829
    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 830
    .line 831
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v2

    .line 835
    move-object v4, v2

    .line 836
    check-cast v4, Landroid/content/res/CompatibilityInfo;

    .line 837
    .line 838
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 839
    .line 840
    .line 841
    move-result v1

    .line 842
    invoke-interface {v15, v0, v4, v1}, Landroid/app/IApplicationThread;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 843
    .line 844
    .line 845
    return v19

    .line 846
    :pswitch_22
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->setSchedulingGroup(I)V

    .line 854
    .line 855
    .line 856
    return v19

    .line 857
    :pswitch_23
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-eqz v0, :cond_1f

    .line 865
    .line 866
    move/from16 v2, v19

    .line 867
    .line 868
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    if-eqz v0, :cond_20

    .line 873
    .line 874
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 875
    .line 876
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    move-object v4, v0

    .line 881
    check-cast v4, Landroid/app/ProfilerInfo;

    .line 882
    .line 883
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 884
    .line 885
    .line 886
    move-result v0

    .line 887
    invoke-interface {v15, v2, v4, v0}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 888
    .line 889
    .line 890
    return v19

    .line 891
    :pswitch_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 899
    .line 900
    .line 901
    move-result v1

    .line 902
    if-eqz v1, :cond_21

    .line 903
    .line 904
    move/from16 v2, v19

    .line 905
    .line 906
    :cond_21
    invoke-interface {v15, v0, v2}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 907
    .line 908
    .line 909
    return v19

    .line 910
    :pswitch_25
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 914
    .line 915
    .line 916
    move-result-object v3

    .line 917
    sget-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 918
    .line 919
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 920
    .line 921
    .line 922
    move-result-object v5

    .line 923
    sget-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 924
    .line 925
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 926
    .line 927
    .line 928
    move-result-object v6

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 930
    .line 931
    .line 932
    move-result v7

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-eqz v0, :cond_22

    .line 938
    .line 939
    move/from16 v8, v19

    .line 940
    .line 941
    goto :goto_c

    .line 942
    :cond_22
    move v8, v2

    .line 943
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 944
    .line 945
    .line 946
    move-result v0

    .line 947
    if-eqz v0, :cond_23

    .line 948
    .line 949
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 950
    .line 951
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    check-cast v0, Landroid/content/res/Configuration;

    .line 956
    .line 957
    move-object v9, v0

    .line 958
    goto :goto_d

    .line 959
    :cond_23
    move-object v9, v4

    .line 960
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 961
    .line 962
    .line 963
    move-result v0

    .line 964
    if-eqz v0, :cond_24

    .line 965
    .line 966
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 967
    .line 968
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    check-cast v0, Landroid/content/res/Configuration;

    .line 973
    .line 974
    move-object v10, v0

    .line 975
    goto :goto_e

    .line 976
    :cond_24
    move-object v10, v4

    .line 977
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 978
    .line 979
    .line 980
    move-result v0

    .line 981
    if-eqz v0, :cond_25

    .line 982
    .line 983
    move/from16 v11, v19

    .line 984
    .line 985
    goto :goto_f

    .line 986
    :cond_25
    move v11, v2

    .line 987
    :goto_f
    move-object/from16 v0, p0

    .line 988
    .line 989
    move-object v1, v3

    .line 990
    move-object v2, v5

    .line 991
    move-object v3, v6

    .line 992
    move v4, v7

    .line 993
    move v5, v8

    .line 994
    move-object v6, v9

    .line 995
    move-object v7, v10

    .line 996
    move v8, v11

    .line 997
    invoke-interface/range {v0 .. v8}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 998
    .line 999
    .line 1000
    return v19

    .line 1001
    :pswitch_26
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1009
    .line 1010
    .line 1011
    move-result v2

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1013
    .line 1014
    .line 1015
    move-result v3

    .line 1016
    if-eqz v3, :cond_26

    .line 1017
    .line 1018
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1019
    .line 1020
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    move-object v4, v1

    .line 1025
    check-cast v4, Landroid/content/res/Configuration;

    .line 1026
    .line 1027
    :cond_26
    invoke-interface {v15, v0, v2, v4}, Landroid/app/IApplicationThread;->scheduleActivityMovedToDisplay(Landroid/os/IBinder;ILandroid/content/res/Configuration;)V

    .line 1028
    .line 1029
    .line 1030
    return v19

    .line 1031
    :pswitch_27
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1039
    .line 1040
    .line 1041
    move-result v2

    .line 1042
    if-eqz v2, :cond_27

    .line 1043
    .line 1044
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1045
    .line 1046
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v1

    .line 1050
    move-object v4, v1

    .line 1051
    check-cast v4, Landroid/content/res/Configuration;

    .line 1052
    .line 1053
    :cond_27
    invoke-interface {v15, v0, v4}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 1054
    .line 1055
    .line 1056
    return v19

    .line 1057
    :pswitch_28
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-interface/range {p0 .. p0}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    .line 1061
    .line 1062
    .line 1063
    return v19

    .line 1064
    :pswitch_29
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v0

    .line 1071
    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v3

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1076
    .line 1077
    .line 1078
    move-result v0

    .line 1079
    if-eqz v0, :cond_28

    .line 1080
    .line 1081
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1082
    .line 1083
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    check-cast v0, Landroid/content/Intent;

    .line 1088
    .line 1089
    move-object v5, v0

    .line 1090
    goto :goto_10

    .line 1091
    :cond_28
    move-object v5, v4

    .line 1092
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1093
    .line 1094
    .line 1095
    move-result v6

    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v7

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    if-eqz v0, :cond_29

    .line 1105
    .line 1106
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1107
    .line 1108
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    check-cast v0, Landroid/os/Bundle;

    .line 1113
    .line 1114
    move-object v8, v0

    .line 1115
    goto :goto_11

    .line 1116
    :cond_29
    move-object v8, v4

    .line 1117
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1118
    .line 1119
    .line 1120
    move-result v0

    .line 1121
    if-eqz v0, :cond_2a

    .line 1122
    .line 1123
    move/from16 v9, v19

    .line 1124
    .line 1125
    goto :goto_12

    .line 1126
    :cond_2a
    move v9, v2

    .line 1127
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1128
    .line 1129
    .line 1130
    move-result v0

    .line 1131
    if-eqz v0, :cond_2b

    .line 1132
    .line 1133
    move/from16 v10, v19

    .line 1134
    .line 1135
    goto :goto_13

    .line 1136
    :cond_2b
    move v10, v2

    .line 1137
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1138
    .line 1139
    .line 1140
    move-result v11

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1142
    .line 1143
    .line 1144
    move-result v12

    .line 1145
    move-object/from16 v0, p0

    .line 1146
    .line 1147
    move-object v1, v3

    .line 1148
    move-object v2, v5

    .line 1149
    move v3, v6

    .line 1150
    move-object v4, v7

    .line 1151
    move-object v5, v8

    .line 1152
    move v6, v9

    .line 1153
    move v7, v10

    .line 1154
    move v8, v11

    .line 1155
    move v9, v12

    .line 1156
    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 1157
    .line 1158
    .line 1159
    return v19

    .line 1160
    :pswitch_2a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1164
    .line 1165
    .line 1166
    move-result v0

    .line 1167
    if-eqz v0, :cond_2c

    .line 1168
    .line 1169
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1170
    .line 1171
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    move-object v4, v0

    .line 1176
    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 1177
    .line 1178
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v1

    .line 1186
    invoke-interface {v15, v4, v0, v1}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    return v19

    .line 1190
    :pswitch_2b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1198
    .line 1199
    .line 1200
    move-result v2

    .line 1201
    if-eqz v2, :cond_2d

    .line 1202
    .line 1203
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1204
    .line 1205
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    move-object v4, v1

    .line 1210
    check-cast v4, Landroid/content/Intent;

    .line 1211
    .line 1212
    :cond_2d
    invoke-interface {v15, v0, v4}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 1213
    .line 1214
    .line 1215
    return v19

    .line 1216
    :pswitch_2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v0

    .line 1223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1224
    .line 1225
    .line 1226
    move-result v3

    .line 1227
    if-eqz v3, :cond_2e

    .line 1228
    .line 1229
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1230
    .line 1231
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v3

    .line 1235
    move-object v4, v3

    .line 1236
    check-cast v4, Landroid/content/Intent;

    .line 1237
    .line 1238
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1239
    .line 1240
    .line 1241
    move-result v3

    .line 1242
    if-eqz v3, :cond_2f

    .line 1243
    .line 1244
    move/from16 v2, v19

    .line 1245
    .line 1246
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1247
    .line 1248
    .line 1249
    move-result v1

    .line 1250
    invoke-interface {v15, v0, v4, v2, v1}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 1251
    .line 1252
    .line 1253
    return v19

    .line 1254
    :pswitch_2d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    .line 1256
    .line 1257
    invoke-interface/range {p0 .. p0}, Landroid/app/IApplicationThread;->processInBackground()V

    .line 1258
    .line 1259
    .line 1260
    return v19

    .line 1261
    :pswitch_2e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    invoke-interface/range {p0 .. p0}, Landroid/app/IApplicationThread;->updateTimeZone()V

    .line 1265
    .line 1266
    .line 1267
    return v19

    .line 1268
    :pswitch_2f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1276
    .line 1277
    .line 1278
    move-result v2

    .line 1279
    if-eqz v2, :cond_30

    .line 1280
    .line 1281
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 1282
    .line 1283
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v1

    .line 1287
    move-object v4, v1

    .line 1288
    check-cast v4, Landroid/content/pm/ParceledListSlice;

    .line 1289
    .line 1290
    :cond_30
    invoke-interface {v15, v0, v4}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    .line 1291
    .line 1292
    .line 1293
    return v19

    .line 1294
    :pswitch_30
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1298
    .line 1299
    .line 1300
    move-result v0

    .line 1301
    if-eqz v0, :cond_31

    .line 1302
    .line 1303
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1304
    .line 1305
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v0

    .line 1309
    move-object v4, v0

    .line 1310
    check-cast v4, Landroid/content/res/Configuration;

    .line 1311
    .line 1312
    :cond_31
    invoke-interface {v15, v4}, Landroid/app/IApplicationThread;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1313
    .line 1314
    .line 1315
    return v19

    .line 1316
    :pswitch_31
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    invoke-interface/range {p0 .. p0}, Landroid/app/IApplicationThread;->scheduleExit()V

    .line 1320
    .line 1321
    .line 1322
    return v19

    .line 1323
    :pswitch_32
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v3

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1331
    .line 1332
    .line 1333
    move-result v0

    .line 1334
    if-eqz v0, :cond_32

    .line 1335
    .line 1336
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1337
    .line 1338
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1343
    .line 1344
    move-object v5, v0

    .line 1345
    goto :goto_14

    .line 1346
    :cond_32
    move-object v5, v4

    .line 1347
    :goto_14
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1348
    .line 1349
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v6

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1354
    .line 1355
    .line 1356
    move-result v0

    .line 1357
    if-eqz v0, :cond_33

    .line 1358
    .line 1359
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1360
    .line 1361
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v0

    .line 1365
    check-cast v0, Landroid/content/ComponentName;

    .line 1366
    .line 1367
    move-object v7, v0

    .line 1368
    goto :goto_15

    .line 1369
    :cond_33
    move-object v7, v4

    .line 1370
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    if-eqz v0, :cond_34

    .line 1375
    .line 1376
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1377
    .line 1378
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v0

    .line 1382
    check-cast v0, Landroid/app/ProfilerInfo;

    .line 1383
    .line 1384
    move-object v8, v0

    .line 1385
    goto :goto_16

    .line 1386
    :cond_34
    move-object v8, v4

    .line 1387
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1388
    .line 1389
    .line 1390
    move-result v0

    .line 1391
    if-eqz v0, :cond_35

    .line 1392
    .line 1393
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1394
    .line 1395
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    check-cast v0, Landroid/os/Bundle;

    .line 1400
    .line 1401
    move-object v9, v0

    .line 1402
    goto :goto_17

    .line 1403
    :cond_35
    move-object v9, v4

    .line 1404
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v0

    .line 1408
    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v10

    .line 1412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v0

    .line 1416
    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v11

    .line 1420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1421
    .line 1422
    .line 1423
    move-result v12

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1425
    .line 1426
    .line 1427
    move-result v0

    .line 1428
    if-eqz v0, :cond_36

    .line 1429
    .line 1430
    move/from16 v13, v19

    .line 1431
    .line 1432
    goto :goto_18

    .line 1433
    :cond_36
    move v13, v2

    .line 1434
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1435
    .line 1436
    .line 1437
    move-result v0

    .line 1438
    if-eqz v0, :cond_37

    .line 1439
    .line 1440
    move/from16 v14, v19

    .line 1441
    .line 1442
    goto :goto_19

    .line 1443
    :cond_37
    move v14, v2

    .line 1444
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1445
    .line 1446
    .line 1447
    move-result v0

    .line 1448
    if-eqz v0, :cond_38

    .line 1449
    .line 1450
    move/from16 v16, v19

    .line 1451
    .line 1452
    goto :goto_1a

    .line 1453
    :cond_38
    move/from16 v16, v2

    .line 1454
    .line 1455
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1456
    .line 1457
    .line 1458
    move-result v0

    .line 1459
    if-eqz v0, :cond_39

    .line 1460
    .line 1461
    move/from16 v17, v19

    .line 1462
    .line 1463
    goto :goto_1b

    .line 1464
    :cond_39
    move/from16 v17, v2

    .line 1465
    .line 1466
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1467
    .line 1468
    .line 1469
    move-result v0

    .line 1470
    if-eqz v0, :cond_3a

    .line 1471
    .line 1472
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1473
    .line 1474
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v0

    .line 1478
    check-cast v0, Landroid/content/res/Configuration;

    .line 1479
    .line 1480
    move-object/from16 v20, v0

    .line 1481
    .line 1482
    goto :goto_1c

    .line 1483
    :cond_3a
    move-object/from16 v20, v4

    .line 1484
    .line 1485
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1486
    .line 1487
    .line 1488
    move-result v0

    .line 1489
    if-eqz v0, :cond_3b

    .line 1490
    .line 1491
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1492
    .line 1493
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v0

    .line 1497
    check-cast v0, Landroid/content/res/CompatibilityInfo;

    .line 1498
    .line 1499
    move-object/from16 v21, v0

    .line 1500
    .line 1501
    goto :goto_1d

    .line 1502
    :cond_3b
    move-object/from16 v21, v4

    .line 1503
    .line 1504
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v0

    .line 1508
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v0

    .line 1512
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v22

    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1517
    .line 1518
    .line 1519
    move-result v0

    .line 1520
    if-eqz v0, :cond_3c

    .line 1521
    .line 1522
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1523
    .line 1524
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v0

    .line 1528
    check-cast v0, Landroid/os/Bundle;

    .line 1529
    .line 1530
    move-object/from16 v23, v0

    .line 1531
    .line 1532
    goto :goto_1e

    .line 1533
    :cond_3c
    move-object/from16 v23, v4

    .line 1534
    .line 1535
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v18

    .line 1539
    move-object/from16 v0, p0

    .line 1540
    .line 1541
    move-object v1, v3

    .line 1542
    move-object v2, v5

    .line 1543
    move-object v3, v6

    .line 1544
    move-object v4, v7

    .line 1545
    move-object v5, v8

    .line 1546
    move-object v6, v9

    .line 1547
    move-object v7, v10

    .line 1548
    move-object v8, v11

    .line 1549
    move v9, v12

    .line 1550
    move v10, v13

    .line 1551
    move v11, v14

    .line 1552
    move/from16 v12, v16

    .line 1553
    .line 1554
    move/from16 v13, v17

    .line 1555
    .line 1556
    move-object/from16 v14, v20

    .line 1557
    .line 1558
    move-object/from16 v15, v21

    .line 1559
    .line 1560
    move-object/from16 v16, v22

    .line 1561
    .line 1562
    move-object/from16 v17, v23

    .line 1563
    .line 1564
    invoke-interface/range {v0 .. v18}, Landroid/app/IApplicationThread;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1565
    .line 1566
    .line 1567
    return v19

    .line 1568
    :pswitch_33
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v0

    .line 1575
    move-object/from16 v15, p0

    .line 1576
    .line 1577
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V

    .line 1578
    .line 1579
    .line 1580
    return v19

    .line 1581
    :pswitch_34
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    .line 1583
    .line 1584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v0

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1589
    .line 1590
    .line 1591
    move-result v2

    .line 1592
    if-eqz v2, :cond_3d

    .line 1593
    .line 1594
    sget-object v2, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1595
    .line 1596
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v2

    .line 1600
    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 1601
    .line 1602
    goto :goto_1f

    .line 1603
    :cond_3d
    move-object v2, v4

    .line 1604
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1605
    .line 1606
    .line 1607
    move-result v3

    .line 1608
    if-eqz v3, :cond_3e

    .line 1609
    .line 1610
    sget-object v3, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1611
    .line 1612
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v3

    .line 1616
    move-object v4, v3

    .line 1617
    check-cast v4, Landroid/content/res/CompatibilityInfo;

    .line 1618
    .line 1619
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1620
    .line 1621
    .line 1622
    move-result v1

    .line 1623
    invoke-interface {v15, v0, v2, v4, v1}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 1624
    .line 1625
    .line 1626
    return v19

    .line 1627
    :pswitch_35
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    .line 1629
    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1631
    .line 1632
    .line 1633
    move-result v0

    .line 1634
    if-eqz v0, :cond_3f

    .line 1635
    .line 1636
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1637
    .line 1638
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v0

    .line 1642
    check-cast v0, Landroid/content/Intent;

    .line 1643
    .line 1644
    move-object v3, v0

    .line 1645
    goto :goto_20

    .line 1646
    :cond_3f
    move-object v3, v4

    .line 1647
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1648
    .line 1649
    .line 1650
    move-result v0

    .line 1651
    if-eqz v0, :cond_40

    .line 1652
    .line 1653
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1654
    .line 1655
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v0

    .line 1659
    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 1660
    .line 1661
    move-object v5, v0

    .line 1662
    goto :goto_21

    .line 1663
    :cond_40
    move-object v5, v4

    .line 1664
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1665
    .line 1666
    .line 1667
    move-result v0

    .line 1668
    if-eqz v0, :cond_41

    .line 1669
    .line 1670
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1671
    .line 1672
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v0

    .line 1676
    check-cast v0, Landroid/content/res/CompatibilityInfo;

    .line 1677
    .line 1678
    move-object v6, v0

    .line 1679
    goto :goto_22

    .line 1680
    :cond_41
    move-object v6, v4

    .line 1681
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1682
    .line 1683
    .line 1684
    move-result v7

    .line 1685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v8

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1690
    .line 1691
    .line 1692
    move-result v0

    .line 1693
    if-eqz v0, :cond_42

    .line 1694
    .line 1695
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1696
    .line 1697
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v0

    .line 1701
    check-cast v0, Landroid/os/Bundle;

    .line 1702
    .line 1703
    move-object v9, v0

    .line 1704
    goto :goto_23

    .line 1705
    :cond_42
    move-object v9, v4

    .line 1706
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1707
    .line 1708
    .line 1709
    move-result v0

    .line 1710
    if-eqz v0, :cond_43

    .line 1711
    .line 1712
    move/from16 v10, v19

    .line 1713
    .line 1714
    goto :goto_24

    .line 1715
    :cond_43
    move v10, v2

    .line 1716
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1717
    .line 1718
    .line 1719
    move-result v11

    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1721
    .line 1722
    .line 1723
    move-result v12

    .line 1724
    move-object/from16 v0, p0

    .line 1725
    .line 1726
    move-object v1, v3

    .line 1727
    move-object v2, v5

    .line 1728
    move-object v3, v6

    .line 1729
    move v4, v7

    .line 1730
    move-object v5, v8

    .line 1731
    move-object v6, v9

    .line 1732
    move v7, v10

    .line 1733
    move v8, v11

    .line 1734
    move v9, v12

    .line 1735
    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 1736
    .line 1737
    .line 1738
    return v19

    .line 1739
    :pswitch_36
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v0

    .line 1746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1747
    .line 1748
    .line 1749
    move-result v3

    .line 1750
    if-eqz v3, :cond_44

    .line 1751
    .line 1752
    move/from16 v2, v19

    .line 1753
    .line 1754
    :cond_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1755
    .line 1756
    .line 1757
    move-result v1

    .line 1758
    invoke-interface {v15, v0, v2, v1}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 1759
    .line 1760
    .line 1761
    return v19

    .line 1762
    :pswitch_37
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    .line 1764
    .line 1765
    sget-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1766
    .line 1767
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v0

    .line 1771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v3

    .line 1775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1776
    .line 1777
    .line 1778
    move-result v1

    .line 1779
    if-eqz v1, :cond_45

    .line 1780
    .line 1781
    move/from16 v2, v19

    .line 1782
    .line 1783
    :cond_45
    invoke-interface {v15, v0, v3, v2}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V

    .line 1784
    .line 1785
    .line 1786
    return v19

    .line 1787
    :pswitch_38
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    .line 1789
    .line 1790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1791
    .line 1792
    .line 1793
    move-result v0

    .line 1794
    if-eqz v0, :cond_46

    .line 1795
    .line 1796
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1797
    .line 1798
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v0

    .line 1802
    check-cast v0, Landroid/content/Intent;

    .line 1803
    .line 1804
    move-object v3, v0

    .line 1805
    goto :goto_25

    .line 1806
    :cond_46
    move-object v3, v4

    .line 1807
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v5

    .line 1811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1812
    .line 1813
    .line 1814
    move-result v6

    .line 1815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1816
    .line 1817
    .line 1818
    move-result v0

    .line 1819
    if-eqz v0, :cond_47

    .line 1820
    .line 1821
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1822
    .line 1823
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v0

    .line 1827
    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 1828
    .line 1829
    move-object v7, v0

    .line 1830
    goto :goto_26

    .line 1831
    :cond_47
    move-object v7, v4

    .line 1832
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1833
    .line 1834
    .line 1835
    move-result v0

    .line 1836
    if-eqz v0, :cond_48

    .line 1837
    .line 1838
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1839
    .line 1840
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v0

    .line 1844
    check-cast v0, Landroid/content/res/Configuration;

    .line 1845
    .line 1846
    move-object v8, v0

    .line 1847
    goto :goto_27

    .line 1848
    :cond_48
    move-object v8, v4

    .line 1849
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1850
    .line 1851
    .line 1852
    move-result v0

    .line 1853
    if-eqz v0, :cond_49

    .line 1854
    .line 1855
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1856
    .line 1857
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v0

    .line 1861
    check-cast v0, Landroid/content/res/Configuration;

    .line 1862
    .line 1863
    move-object v9, v0

    .line 1864
    goto :goto_28

    .line 1865
    :cond_49
    move-object v9, v4

    .line 1866
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1867
    .line 1868
    .line 1869
    move-result v0

    .line 1870
    if-eqz v0, :cond_4a

    .line 1871
    .line 1872
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1873
    .line 1874
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v0

    .line 1878
    check-cast v0, Landroid/content/res/CompatibilityInfo;

    .line 1879
    .line 1880
    move-object v10, v0

    .line 1881
    goto :goto_29

    .line 1882
    :cond_4a
    move-object v10, v4

    .line 1883
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v11

    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v0

    .line 1891
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v12

    .line 1895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1896
    .line 1897
    .line 1898
    move-result v13

    .line 1899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1900
    .line 1901
    .line 1902
    move-result v0

    .line 1903
    if-eqz v0, :cond_4b

    .line 1904
    .line 1905
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1906
    .line 1907
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1908
    .line 1909
    .line 1910
    move-result-object v0

    .line 1911
    check-cast v0, Landroid/os/Bundle;

    .line 1912
    .line 1913
    move-object v14, v0

    .line 1914
    goto :goto_2a

    .line 1915
    :cond_4b
    move-object v14, v4

    .line 1916
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1917
    .line 1918
    .line 1919
    move-result v0

    .line 1920
    if-eqz v0, :cond_4c

    .line 1921
    .line 1922
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1923
    .line 1924
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v0

    .line 1928
    check-cast v0, Landroid/os/PersistableBundle;

    .line 1929
    .line 1930
    move-object/from16 v16, v0

    .line 1931
    .line 1932
    goto :goto_2b

    .line 1933
    :cond_4c
    move-object/from16 v16, v4

    .line 1934
    .line 1935
    :goto_2b
    sget-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1936
    .line 1937
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v17

    .line 1941
    sget-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1942
    .line 1943
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v18

    .line 1947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1948
    .line 1949
    .line 1950
    move-result v0

    .line 1951
    if-eqz v0, :cond_4d

    .line 1952
    .line 1953
    move/from16 v20, v19

    .line 1954
    .line 1955
    goto :goto_2c

    .line 1956
    :cond_4d
    move/from16 v20, v2

    .line 1957
    .line 1958
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1959
    .line 1960
    .line 1961
    move-result v0

    .line 1962
    if-eqz v0, :cond_4e

    .line 1963
    .line 1964
    move/from16 v21, v19

    .line 1965
    .line 1966
    goto :goto_2d

    .line 1967
    :cond_4e
    move/from16 v21, v2

    .line 1968
    .line 1969
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1970
    .line 1971
    .line 1972
    move-result v0

    .line 1973
    if-eqz v0, :cond_4f

    .line 1974
    .line 1975
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1976
    .line 1977
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v0

    .line 1981
    check-cast v0, Landroid/app/ProfilerInfo;

    .line 1982
    .line 1983
    move-object/from16 v22, v0

    .line 1984
    .line 1985
    goto :goto_2e

    .line 1986
    :cond_4f
    move-object/from16 v22, v4

    .line 1987
    .line 1988
    :goto_2e
    move-object/from16 v0, p0

    .line 1989
    .line 1990
    move-object v1, v3

    .line 1991
    move-object v2, v5

    .line 1992
    move v3, v6

    .line 1993
    move-object v4, v7

    .line 1994
    move-object v5, v8

    .line 1995
    move-object v6, v9

    .line 1996
    move-object v7, v10

    .line 1997
    move-object v8, v11

    .line 1998
    move-object v9, v12

    .line 1999
    move v10, v13

    .line 2000
    move-object v11, v14

    .line 2001
    move-object/from16 v12, v16

    .line 2002
    .line 2003
    move-object/from16 v13, v17

    .line 2004
    .line 2005
    move-object/from16 v14, v18

    .line 2006
    .line 2007
    move/from16 v15, v20

    .line 2008
    .line 2009
    move/from16 v16, v21

    .line 2010
    .line 2011
    move-object/from16 v17, v22

    .line 2012
    .line 2013
    invoke-interface/range {v0 .. v17}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 2014
    .line 2015
    .line 2016
    return v19

    .line 2017
    :pswitch_39
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2018
    .line 2019
    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v0

    .line 2024
    sget-object v2, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2025
    .line 2026
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 2027
    .line 2028
    .line 2029
    move-result-object v1

    .line 2030
    move-object/from16 v6, p0

    .line 2031
    .line 2032
    invoke-interface {v6, v0, v1}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2033
    .line 2034
    .line 2035
    return v19

    .line 2036
    :pswitch_3a
    move-object v6, v15

    .line 2037
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2038
    .line 2039
    .line 2040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v0

    .line 2044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2045
    .line 2046
    .line 2047
    move-result v3

    .line 2048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2049
    .line 2050
    .line 2051
    move-result v5

    .line 2052
    if-eqz v5, :cond_50

    .line 2053
    .line 2054
    move/from16 v2, v19

    .line 2055
    .line 2056
    :cond_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2057
    .line 2058
    .line 2059
    move-result v5

    .line 2060
    if-eqz v5, :cond_51

    .line 2061
    .line 2062
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2063
    .line 2064
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v1

    .line 2068
    move-object v4, v1

    .line 2069
    check-cast v4, Landroid/os/Bundle;

    .line 2070
    .line 2071
    :cond_51
    invoke-interface {v6, v0, v3, v2, v4}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 2072
    .line 2073
    .line 2074
    return v19

    .line 2075
    :pswitch_3b
    move-object v6, v15

    .line 2076
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    .line 2078
    .line 2079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2080
    .line 2081
    .line 2082
    move-result-object v0

    .line 2083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2084
    .line 2085
    .line 2086
    move-result v1

    .line 2087
    if-eqz v1, :cond_52

    .line 2088
    .line 2089
    move/from16 v2, v19

    .line 2090
    .line 2091
    :cond_52
    invoke-interface {v6, v0, v2}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 2092
    .line 2093
    .line 2094
    return v19

    .line 2095
    :pswitch_3c
    move-object v6, v15

    .line 2096
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    .line 2098
    .line 2099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2100
    .line 2101
    .line 2102
    move-result-object v0

    .line 2103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2104
    .line 2105
    .line 2106
    move-result v3

    .line 2107
    if-eqz v3, :cond_53

    .line 2108
    .line 2109
    move/from16 v2, v19

    .line 2110
    .line 2111
    :cond_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2112
    .line 2113
    .line 2114
    move-result v1

    .line 2115
    invoke-interface {v6, v0, v2, v1}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 2116
    .line 2117
    .line 2118
    return v19

    .line 2119
    :pswitch_3d
    move-object v6, v15

    .line 2120
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2121
    .line 2122
    .line 2123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2124
    .line 2125
    .line 2126
    move-result-object v3

    .line 2127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2128
    .line 2129
    .line 2130
    move-result v0

    .line 2131
    if-eqz v0, :cond_54

    .line 2132
    .line 2133
    move/from16 v4, v19

    .line 2134
    .line 2135
    goto :goto_2f

    .line 2136
    :cond_54
    move v4, v2

    .line 2137
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2138
    .line 2139
    .line 2140
    move-result v0

    .line 2141
    if-eqz v0, :cond_55

    .line 2142
    .line 2143
    move/from16 v5, v19

    .line 2144
    .line 2145
    goto :goto_30

    .line 2146
    :cond_55
    move v5, v2

    .line 2147
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2148
    .line 2149
    .line 2150
    move-result v7

    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2152
    .line 2153
    .line 2154
    move-result v0

    .line 2155
    if-eqz v0, :cond_56

    .line 2156
    .line 2157
    move/from16 v8, v19

    .line 2158
    .line 2159
    goto :goto_31

    .line 2160
    :cond_56
    move v8, v2

    .line 2161
    :goto_31
    move-object/from16 v0, p0

    .line 2162
    .line 2163
    move-object v1, v3

    .line 2164
    move v2, v4

    .line 2165
    move v3, v5

    .line 2166
    move v4, v7

    .line 2167
    move v5, v8

    .line 2168
    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 2169
    .line 2170
    .line 2171
    return v19

    .line 2172
    :cond_57
    move-object/from16 v0, p3

    .line 2173
    .line 2174
    move-object v6, v15

    .line 2175
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2176
    .line 2177
    .line 2178
    return v19

    .line 2179
    :pswitch_data_0
    .packed-switch 0x1
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
