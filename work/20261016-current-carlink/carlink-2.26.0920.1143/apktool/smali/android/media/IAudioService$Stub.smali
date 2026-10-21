.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x24

.field static final TRANSACTION_adjustStreamVolume:I = 0x2

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x1

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x1c

.field static final TRANSACTION_disableRingtoneSync:I = 0x49

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x37

.field static final TRANSACTION_dispatchFocusChange:I = 0x4b

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0x5

.field static final TRANSACTION_forceVolumeControlStream:I = 0x2a

.field static final TRANSACTION_getActivePlaybackConfigurations:I = 0x44

.field static final TRANSACTION_getActiveRecordingConfigurations:I = 0x41

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x26

.field static final TRANSACTION_getFocusRampTimeMs:I = 0x4a

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xb

.field static final TRANSACTION_getMode:I = 0x16

.field static final TRANSACTION_getRingerModeExternal:I = 0xf

.field static final TRANSACTION_getRingerModeInternal:I = 0x10

.field static final TRANSACTION_getRingtonePlayer:I = 0x2c

.field static final TRANSACTION_getSafeMediaVolumeEnabled:I = 0x38

.field static final TRANSACTION_getStreamMaxVolume:I = 0xa

.field static final TRANSACTION_getStreamMinVolume:I = 0x9

.field static final TRANSACTION_getStreamVolume:I = 0x8

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x2d

.field static final TRANSACTION_getVibrateSetting:I = 0x13

.field static final TRANSACTION_handleBluetoothA2dpDeviceConfigChange:I = 0x30

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x22

.field static final TRANSACTION_isBluetoothScoOn:I = 0x20

.field static final TRANSACTION_isCameraSoundForced:I = 0x32

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x3a

.field static final TRANSACTION_isMasterMute:I = 0x6

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x1e

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x36

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x35

.field static final TRANSACTION_isStreamMute:I = 0x4

.field static final TRANSACTION_isValidRingerMode:I = 0x11

.field static final TRANSACTION_loadSoundEffects:I = 0x19

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x34

.field static final TRANSACTION_playSoundEffect:I = 0x17

.field static final TRANSACTION_playSoundEffectVolume:I = 0x18

.field static final TRANSACTION_playerAttributes:I = 0x46

.field static final TRANSACTION_playerEvent:I = 0x47

.field static final TRANSACTION_playerHasOpPlayAudio:I = 0x4c

.field static final TRANSACTION_registerAudioPolicy:I = 0x3b

.field static final TRANSACTION_registerPlaybackCallback:I = 0x42

.field static final TRANSACTION_registerRecordingCallback:I = 0x3f

.field static final TRANSACTION_releasePlayer:I = 0x48

.field static final TRANSACTION_reloadAudioSettings:I = 0x1b

.field static final TRANSACTION_requestAudioFocus:I = 0x23

.field static final TRANSACTION_setAudioSwitch2iis:I = 0x4e

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x2f

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x21

.field static final TRANSACTION_setBluetoothScoOn:I = 0x1f

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x3d

.field static final TRANSACTION_setForceUseSpeaker:I = 0x4d

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x39

.field static final TRANSACTION_setMasterMute:I = 0x7

.field static final TRANSACTION_setMicrophoneMute:I = 0xc

.field static final TRANSACTION_setMode:I = 0x15

.field static final TRANSACTION_setRingerModeExternal:I = 0xd

.field static final TRANSACTION_setRingerModeInternal:I = 0xe

.field static final TRANSACTION_setRingtonePlayer:I = 0x2b

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x1d

.field static final TRANSACTION_setStreamVolume:I = 0x3

.field static final TRANSACTION_setVibrateSetting:I = 0x12

.field static final TRANSACTION_setVoiceSwitch2iis:I = 0x4f

.field static final TRANSACTION_setVolumeController:I = 0x33

.field static final TRANSACTION_setVolumePolicy:I = 0x3e

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x2e

.field static final TRANSACTION_shouldVibrate:I = 0x14

.field static final TRANSACTION_startBluetoothSco:I = 0x27

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x28

.field static final TRANSACTION_startWatchingRoutes:I = 0x31

.field static final TRANSACTION_stopBluetoothSco:I = 0x29

.field static final TRANSACTION_trackPlayer:I = 0x45

.field static final TRANSACTION_unloadSoundEffects:I = 0x1a

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x25

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x3c

.field static final TRANSACTION_unregisterPlaybackCallback:I = 0x43

.field static final TRANSACTION_unregisterRecordingCallback:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.media.IAudioService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
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
    const-string v0, "android.media.IAudioService"

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
    instance-of v1, v0, Landroid/media/IAudioService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/media/IAudioService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 14

    .line 1
    move-object v10, p0

    .line 2
    move v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v11, p3

    .line 6
    .line 7
    const v2, 0x5f4e5446

    .line 8
    .line 9
    .line 10
    const-string v3, "android.media.IAudioService"

    .line 11
    .line 12
    const/4 v12, 0x1

    .line 13
    if-eq v0, v2, :cond_1b

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0

    .line 25
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    move v4, v12

    .line 35
    :cond_0
    invoke-interface {p0, v4}, Landroid/media/IAudioService;->setVoiceSwitch2iis(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    return v12

    .line 42
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    move v4, v12

    .line 52
    :cond_1
    invoke-interface {p0, v4}, Landroid/media/IAudioService;->setAudioSwitch2iis(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    .line 57
    .line 58
    return v12

    .line 59
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    move v4, v12

    .line 73
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {p0, v0, v4, v2, v1}, Landroid/media/IAudioService;->setForceUseSpeaker(IZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    .line 86
    .line 87
    return v12

    .line 88
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    move v4, v12

    .line 102
    :cond_3
    invoke-interface {p0, v0, v4}, Landroid/media/IAudioService;->playerHasOpPlayAudio(IZ)V

    .line 103
    .line 104
    .line 105
    return v12

    .line 106
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    .line 117
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object v2, v0

    .line 122
    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 123
    .line 124
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {p0, v2, v0, v1}, Landroid/media/IAudioService;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    .line 145
    .line 146
    return v12

    .line 147
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_5

    .line 159
    .line 160
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    .line 162
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    move-object v2, v1

    .line 167
    check-cast v2, Landroid/media/AudioAttributes;

    .line 168
    .line 169
    :cond_5
    invoke-interface {p0, v0, v2}, Landroid/media/IAudioService;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    .line 178
    .line 179
    return v12

    .line 180
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->disableRingtoneSync(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    .line 192
    .line 193
    return v12

    .line 194
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->releasePlayer(I)V

    .line 202
    .line 203
    .line 204
    return v12

    .line 205
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-interface {p0, v0, v1}, Landroid/media/IAudioService;->playerEvent(II)V

    .line 217
    .line 218
    .line 219
    return v12

    .line 220
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_6

    .line 232
    .line 233
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    .line 235
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    move-object v2, v1

    .line 240
    check-cast v2, Landroid/media/AudioAttributes;

    .line 241
    .line 242
    :cond_6
    invoke-interface {p0, v0, v2}, Landroid/media/IAudioService;->playerAttributes(ILandroid/media/AudioAttributes;)V

    .line 243
    .line 244
    .line 245
    return v12

    .line 246
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_7

    .line 254
    .line 255
    sget-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 256
    .line 257
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    move-object v2, v0

    .line 262
    check-cast v2, Landroid/media/PlayerBase$PlayerIdCard;

    .line 263
    .line 264
    :cond_7
    invoke-interface {p0, v2}, Landroid/media/IAudioService;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    .line 273
    .line 274
    return v12

    .line 275
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-interface {p0}, Landroid/media/IAudioService;->getActivePlaybackConfigurations()Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 286
    .line 287
    .line 288
    return v12

    .line 289
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 301
    .line 302
    .line 303
    return v12

    .line 304
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    .line 320
    .line 321
    return v12

    .line 322
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-interface {p0}, Landroid/media/IAudioService;->getActiveRecordingConfigurations()Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 333
    .line 334
    .line 335
    return v12

    .line 336
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 348
    .line 349
    .line 350
    return v12

    .line 351
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    .line 367
    .line 368
    return v12

    .line 369
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_8

    .line 377
    .line 378
    sget-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 379
    .line 380
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    move-object v2, v0

    .line 385
    check-cast v2, Landroid/media/VolumePolicy;

    .line 386
    .line 387
    :cond_8
    invoke-interface {p0, v2}, Landroid/media/IAudioService;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    .line 392
    .line 393
    return v12

    .line 394
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-interface {p0, v0, v1}, Landroid/media/IAudioService;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    .line 418
    .line 419
    return v12

    .line 420
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 432
    .line 433
    .line 434
    return v12

    .line 435
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_9

    .line 443
    .line 444
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 445
    .line 446
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    move-object v2, v0

    .line 451
    check-cast v2, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 452
    .line 453
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    if-eqz v3, :cond_a

    .line 466
    .line 467
    move v3, v12

    .line 468
    goto :goto_0

    .line 469
    :cond_a
    move v3, v4

    .line 470
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    if-eqz v1, :cond_b

    .line 475
    .line 476
    move v4, v12

    .line 477
    :cond_b
    invoke-interface {p0, v2, v0, v3, v4}, Landroid/media/IAudioService;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZ)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    return v12

    .line 488
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-interface {p0}, Landroid/media/IAudioService;->isHdmiSystemAudioSupported()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    .line 500
    .line 501
    return v12

    .line 502
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-eqz v0, :cond_c

    .line 510
    .line 511
    move v4, v12

    .line 512
    :cond_c
    invoke-interface {p0, v4}, Landroid/media/IAudioService;->setHdmiSystemAudioSupported(Z)I

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    .line 521
    .line 522
    return v12

    .line 523
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->getSafeMediaVolumeEnabled(Ljava/lang/String;)Z

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    .line 539
    .line 540
    return v12

    .line 541
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    .line 553
    .line 554
    return v12

    .line 555
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->isStreamAffectedByMute(I)Z

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    .line 571
    .line 572
    return v12

    .line 573
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->isStreamAffectedByRingerMode(I)Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    .line 589
    .line 590
    return v12

    .line 591
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    if-eqz v1, :cond_d

    .line 607
    .line 608
    move v4, v12

    .line 609
    :cond_d
    invoke-interface {p0, v0, v4}, Landroid/media/IAudioService;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 610
    .line 611
    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    .line 614
    .line 615
    return v12

    .line 616
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    .line 632
    .line 633
    return v12

    .line 634
    :pswitch_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    invoke-interface {p0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    .line 646
    .line 647
    return v12

    .line 648
    :pswitch_1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-static {v0}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    .line 665
    .line 666
    if-eqz v0, :cond_e

    .line 667
    .line 668
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0, v11, v12}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 672
    .line 673
    .line 674
    goto :goto_1

    .line 675
    :cond_e
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    .line 677
    .line 678
    :goto_1
    return v12

    .line 679
    :pswitch_1f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-eqz v0, :cond_f

    .line 687
    .line 688
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 689
    .line 690
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    move-object v2, v0

    .line 695
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 696
    .line 697
    :cond_f
    invoke-interface {p0, v2}, Landroid/media/IAudioService;->handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    .line 702
    .line 703
    return v12

    .line 704
    :pswitch_20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    if-eqz v0, :cond_10

    .line 712
    .line 713
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 714
    .line 715
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    move-object v2, v0

    .line 720
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 721
    .line 722
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    invoke-interface {p0, v2, v0, v1}, Landroid/media/IAudioService;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    .line 739
    .line 740
    return v12

    .line 741
    :pswitch_21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 745
    .line 746
    .line 747
    move-result v2

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 749
    .line 750
    .line 751
    move-result v3

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v4

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v5

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v6

    .line 764
    move-object v0, p0

    .line 765
    move v1, v2

    .line 766
    move v2, v3

    .line 767
    move-object v3, v4

    .line 768
    move-object v4, v5

    .line 769
    move-object v5, v6

    .line 770
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    .line 775
    .line 776
    return v12

    .line 777
    :pswitch_22
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-interface {p0}, Landroid/media/IAudioService;->getUiSoundsStreamType()I

    .line 781
    .line 782
    .line 783
    move-result v0

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    .line 789
    .line 790
    return v12

    .line 791
    :pswitch_23
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    invoke-interface {p0}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    .line 800
    .line 801
    if-eqz v0, :cond_11

    .line 802
    .line 803
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    :cond_11
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 808
    .line 809
    .line 810
    return v12

    .line 811
    :pswitch_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-static {v0}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    .line 827
    .line 828
    return v12

    .line 829
    :pswitch_25
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 833
    .line 834
    .line 835
    move-result v0

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    invoke-interface {p0, v0, v1}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    .line 845
    .line 846
    return v12

    .line 847
    :pswitch_26
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    .line 859
    .line 860
    return v12

    .line 861
    :pswitch_27
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 869
    .line 870
    .line 871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    .line 873
    .line 874
    return v12

    .line 875
    :pswitch_28
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    invoke-interface {p0, v0, v1}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 887
    .line 888
    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    .line 891
    .line 892
    return v12

    .line 893
    :pswitch_29
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    invoke-interface {p0}, Landroid/media/IAudioService;->getCurrentAudioFocus()I

    .line 897
    .line 898
    .line 899
    move-result v0

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    .line 905
    .line 906
    return v12

    .line 907
    :pswitch_2a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    .line 919
    .line 920
    return v12

    .line 921
    :pswitch_2b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v3

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 937
    .line 938
    .line 939
    move-result v4

    .line 940
    if-eqz v4, :cond_12

    .line 941
    .line 942
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 943
    .line 944
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v2

    .line 948
    check-cast v2, Landroid/media/AudioAttributes;

    .line 949
    .line 950
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    invoke-interface {p0, v0, v3, v2, v1}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    .line 955
    .line 956
    .line 957
    move-result v0

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    .line 960
    .line 961
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    .line 963
    .line 964
    return v12

    .line 965
    :pswitch_2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    if-eqz v0, :cond_13

    .line 973
    .line 974
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 975
    .line 976
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    check-cast v0, Landroid/media/AudioAttributes;

    .line 981
    .line 982
    move-object v2, v0

    .line 983
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 984
    .line 985
    .line 986
    move-result v3

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    .line 996
    .line 997
    .line 998
    move-result-object v5

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v6

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v7

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1008
    .line 1009
    .line 1010
    move-result v8

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v9

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1020
    .line 1021
    .line 1022
    move-result v13

    .line 1023
    move-object v0, p0

    .line 1024
    move-object v1, v2

    .line 1025
    move v2, v3

    .line 1026
    move-object v3, v4

    .line 1027
    move-object v4, v5

    .line 1028
    move-object v5, v6

    .line 1029
    move-object v6, v7

    .line 1030
    move v7, v8

    .line 1031
    move-object v8, v9

    .line 1032
    move v9, v13

    .line 1033
    invoke-interface/range {v0 .. v9}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    .line 1034
    .line 1035
    .line 1036
    move-result v0

    .line 1037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    .line 1042
    .line 1043
    return v12

    .line 1044
    :pswitch_2d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    invoke-interface {p0}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    .line 1048
    .line 1049
    .line 1050
    move-result v0

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    .line 1056
    .line 1057
    return v12

    .line 1058
    :pswitch_2e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1062
    .line 1063
    .line 1064
    move-result v0

    .line 1065
    if-eqz v0, :cond_14

    .line 1066
    .line 1067
    move v4, v12

    .line 1068
    :cond_14
    invoke-interface {p0, v4}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    .line 1073
    .line 1074
    return v12

    .line 1075
    :pswitch_2f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    invoke-interface {p0}, Landroid/media/IAudioService;->isBluetoothScoOn()Z

    .line 1079
    .line 1080
    .line 1081
    move-result v0

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    .line 1087
    .line 1088
    return v12

    .line 1089
    :pswitch_30
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1093
    .line 1094
    .line 1095
    move-result v0

    .line 1096
    if-eqz v0, :cond_15

    .line 1097
    .line 1098
    move v4, v12

    .line 1099
    :cond_15
    invoke-interface {p0, v4}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    .line 1104
    .line 1105
    return v12

    .line 1106
    :pswitch_31
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    invoke-interface {p0}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z

    .line 1110
    .line 1111
    .line 1112
    move-result v0

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    .line 1118
    .line 1119
    return v12

    .line 1120
    :pswitch_32
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1124
    .line 1125
    .line 1126
    move-result v0

    .line 1127
    if-eqz v0, :cond_16

    .line 1128
    .line 1129
    move v4, v12

    .line 1130
    :cond_16
    invoke-interface {p0, v4}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    .line 1135
    .line 1136
    return v12

    .line 1137
    :pswitch_33
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1145
    .line 1146
    .line 1147
    move-result v1

    .line 1148
    if-eqz v1, :cond_17

    .line 1149
    .line 1150
    move v4, v12

    .line 1151
    :cond_17
    invoke-interface {p0, v0, v4}, Landroid/media/IAudioService;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 1152
    .line 1153
    .line 1154
    return v12

    .line 1155
    :pswitch_34
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    invoke-interface {p0}, Landroid/media/IAudioService;->reloadAudioSettings()V

    .line 1159
    .line 1160
    .line 1161
    return v12

    .line 1162
    :pswitch_35
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    invoke-interface {p0}, Landroid/media/IAudioService;->unloadSoundEffects()V

    .line 1166
    .line 1167
    .line 1168
    return v12

    .line 1169
    :pswitch_36
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    .line 1171
    .line 1172
    invoke-interface {p0}, Landroid/media/IAudioService;->loadSoundEffects()Z

    .line 1173
    .line 1174
    .line 1175
    move-result v0

    .line 1176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    .line 1181
    .line 1182
    return v12

    .line 1183
    :pswitch_37
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1187
    .line 1188
    .line 1189
    move-result v0

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 1191
    .line 1192
    .line 1193
    move-result v1

    .line 1194
    invoke-interface {p0, v0, v1}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V

    .line 1195
    .line 1196
    .line 1197
    return v12

    .line 1198
    :pswitch_38
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1202
    .line 1203
    .line 1204
    move-result v0

    .line 1205
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->playSoundEffect(I)V

    .line 1206
    .line 1207
    .line 1208
    return v12

    .line 1209
    :pswitch_39
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-interface {p0}, Landroid/media/IAudioService;->getMode()I

    .line 1213
    .line 1214
    .line 1215
    move-result v0

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    .line 1221
    .line 1222
    return v12

    .line 1223
    :pswitch_3a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1227
    .line 1228
    .line 1229
    move-result v0

    .line 1230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v2

    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v1

    .line 1238
    invoke-interface {p0, v0, v2, v1}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    .line 1243
    .line 1244
    return v12

    .line 1245
    :pswitch_3b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1249
    .line 1250
    .line 1251
    move-result v0

    .line 1252
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->shouldVibrate(I)Z

    .line 1253
    .line 1254
    .line 1255
    move-result v0

    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    .line 1261
    .line 1262
    return v12

    .line 1263
    :pswitch_3c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1267
    .line 1268
    .line 1269
    move-result v0

    .line 1270
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->getVibrateSetting(I)I

    .line 1271
    .line 1272
    .line 1273
    move-result v0

    .line 1274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    .line 1279
    .line 1280
    return v12

    .line 1281
    :pswitch_3d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1285
    .line 1286
    .line 1287
    move-result v0

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1289
    .line 1290
    .line 1291
    move-result v1

    .line 1292
    invoke-interface {p0, v0, v1}, Landroid/media/IAudioService;->setVibrateSetting(II)V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    .line 1297
    .line 1298
    return v12

    .line 1299
    :pswitch_3e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1303
    .line 1304
    .line 1305
    move-result v0

    .line 1306
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->isValidRingerMode(I)Z

    .line 1307
    .line 1308
    .line 1309
    move-result v0

    .line 1310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    .line 1315
    .line 1316
    return v12

    .line 1317
    :pswitch_3f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    .line 1319
    .line 1320
    invoke-interface {p0}, Landroid/media/IAudioService;->getRingerModeInternal()I

    .line 1321
    .line 1322
    .line 1323
    move-result v0

    .line 1324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    .line 1329
    .line 1330
    return v12

    .line 1331
    :pswitch_40
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1332
    .line 1333
    .line 1334
    invoke-interface {p0}, Landroid/media/IAudioService;->getRingerModeExternal()I

    .line 1335
    .line 1336
    .line 1337
    move-result v0

    .line 1338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    .line 1343
    .line 1344
    return v12

    .line 1345
    :pswitch_41
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1349
    .line 1350
    .line 1351
    move-result v0

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v1

    .line 1356
    invoke-interface {p0, v0, v1}, Landroid/media/IAudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    .line 1361
    .line 1362
    return v12

    .line 1363
    :pswitch_42
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1367
    .line 1368
    .line 1369
    move-result v0

    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v1

    .line 1374
    invoke-interface {p0, v0, v1}, Landroid/media/IAudioService;->setRingerModeExternal(ILjava/lang/String;)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    .line 1379
    .line 1380
    return v12

    .line 1381
    :pswitch_43
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1385
    .line 1386
    .line 1387
    move-result v0

    .line 1388
    if-eqz v0, :cond_18

    .line 1389
    .line 1390
    move v4, v12

    .line 1391
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v0

    .line 1395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1396
    .line 1397
    .line 1398
    move-result v1

    .line 1399
    invoke-interface {p0, v4, v0, v1}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    .line 1404
    .line 1405
    return v12

    .line 1406
    :pswitch_44
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1407
    .line 1408
    .line 1409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1410
    .line 1411
    .line 1412
    move-result v0

    .line 1413
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I

    .line 1414
    .line 1415
    .line 1416
    move-result v0

    .line 1417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    .line 1422
    .line 1423
    return v12

    .line 1424
    :pswitch_45
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1428
    .line 1429
    .line 1430
    move-result v0

    .line 1431
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    .line 1432
    .line 1433
    .line 1434
    move-result v0

    .line 1435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1439
    .line 1440
    .line 1441
    return v12

    .line 1442
    :pswitch_46
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1446
    .line 1447
    .line 1448
    move-result v0

    .line 1449
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    .line 1450
    .line 1451
    .line 1452
    move-result v0

    .line 1453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1457
    .line 1458
    .line 1459
    return v12

    .line 1460
    :pswitch_47
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1464
    .line 1465
    .line 1466
    move-result v0

    .line 1467
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->getStreamVolume(I)I

    .line 1468
    .line 1469
    .line 1470
    move-result v0

    .line 1471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    .line 1476
    .line 1477
    return v12

    .line 1478
    :pswitch_48
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1482
    .line 1483
    .line 1484
    move-result v0

    .line 1485
    if-eqz v0, :cond_19

    .line 1486
    .line 1487
    move v4, v12

    .line 1488
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1489
    .line 1490
    .line 1491
    move-result v0

    .line 1492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v2

    .line 1496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1497
    .line 1498
    .line 1499
    move-result v1

    .line 1500
    invoke-interface {p0, v4, v0, v2, v1}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    .line 1505
    .line 1506
    return v12

    .line 1507
    :pswitch_49
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-interface {p0}, Landroid/media/IAudioService;->isMasterMute()Z

    .line 1511
    .line 1512
    .line 1513
    move-result v0

    .line 1514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    .line 1519
    .line 1520
    return v12

    .line 1521
    :pswitch_4a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1525
    .line 1526
    .line 1527
    move-result v0

    .line 1528
    if-eqz v0, :cond_1a

    .line 1529
    .line 1530
    move v4, v12

    .line 1531
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v0

    .line 1535
    invoke-interface {p0, v4, v0}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    .line 1540
    .line 1541
    return v12

    .line 1542
    :pswitch_4b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1546
    .line 1547
    .line 1548
    move-result v0

    .line 1549
    invoke-interface {p0, v0}, Landroid/media/IAudioService;->isStreamMute(I)Z

    .line 1550
    .line 1551
    .line 1552
    move-result v0

    .line 1553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1557
    .line 1558
    .line 1559
    return v12

    .line 1560
    :pswitch_4c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1564
    .line 1565
    .line 1566
    move-result v0

    .line 1567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1568
    .line 1569
    .line 1570
    move-result v2

    .line 1571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1572
    .line 1573
    .line 1574
    move-result v3

    .line 1575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v1

    .line 1579
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1583
    .line 1584
    .line 1585
    return v12

    .line 1586
    :pswitch_4d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1590
    .line 1591
    .line 1592
    move-result v0

    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1594
    .line 1595
    .line 1596
    move-result v2

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1598
    .line 1599
    .line 1600
    move-result v3

    .line 1601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v1

    .line 1605
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    .line 1610
    .line 1611
    return v12

    .line 1612
    :pswitch_4e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    .line 1614
    .line 1615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1616
    .line 1617
    .line 1618
    move-result v2

    .line 1619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1620
    .line 1621
    .line 1622
    move-result v3

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1624
    .line 1625
    .line 1626
    move-result v4

    .line 1627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v5

    .line 1631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v6

    .line 1635
    move-object v0, p0

    .line 1636
    move v1, v2

    .line 1637
    move v2, v3

    .line 1638
    move v3, v4

    .line 1639
    move-object v4, v5

    .line 1640
    move-object v5, v6

    .line 1641
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1642
    .line 1643
    .line 1644
    return v12

    .line 1645
    :cond_1b
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1646
    .line 1647
    .line 1648
    return v12

    .line 1649
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
