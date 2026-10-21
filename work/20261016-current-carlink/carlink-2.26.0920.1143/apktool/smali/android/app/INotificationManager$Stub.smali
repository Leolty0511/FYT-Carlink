.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final TRANSACTION_addAutomaticZenRule:I = 0x51

.field static final TRANSACTION_applyAdjustmentFromAssistant:I = 0x36

.field static final TRANSACTION_applyAdjustmentsFromAssistant:I = 0x37

.field static final TRANSACTION_applyEnqueuedAdjustmentFromAssistant:I = 0x35

.field static final TRANSACTION_applyRestore:I = 0x57

.field static final TRANSACTION_areNotificationsEnabled:I = 0xb

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0xa

.field static final TRANSACTION_canShowBadge:I = 0x8

.field static final TRANSACTION_cancelAllNotifications:I = 0x1

.field static final TRANSACTION_cancelNotificationFromListener:I = 0x21

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x6

.field static final TRANSACTION_cancelNotificationsFromListener:I = 0x22

.field static final TRANSACTION_cancelToast:I = 0x4

.field static final TRANSACTION_clearData:I = 0x2

.field static final TRANSACTION_createNotificationChannelGroups:I = 0xd

.field static final TRANSACTION_createNotificationChannels:I = 0xe

.field static final TRANSACTION_createNotificationChannelsForPackage:I = 0xf

.field static final TRANSACTION_deleteNotificationChannel:I = 0x15

.field static final TRANSACTION_deleteNotificationChannelGroup:I = 0x1a

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x5

.field static final TRANSACTION_enqueueToast:I = 0x3

.field static final TRANSACTION_getActiveNotifications:I = 0x1d

.field static final TRANSACTION_getActiveNotificationsFromListener:I = 0x2a

.field static final TRANSACTION_getAppActiveNotifications:I = 0x58

.field static final TRANSACTION_getAutomaticZenRule:I = 0x4f

.field static final TRANSACTION_getBackupPayload:I = 0x56

.field static final TRANSACTION_getDeletedChannelCount:I = 0x19

.field static final TRANSACTION_getEffectsSuppressor:I = 0x39

.field static final TRANSACTION_getEnabledNotificationListenerPackages:I = 0x43

.field static final TRANSACTION_getEnabledNotificationListeners:I = 0x44

.field static final TRANSACTION_getHintsFromListener:I = 0x2d

.field static final TRANSACTION_getHistoricalNotifications:I = 0x1e

.field static final TRANSACTION_getInterruptionFilterFromListener:I = 0x2f

.field static final TRANSACTION_getNotificationChannel:I = 0x13

.field static final TRANSACTION_getNotificationChannelForPackage:I = 0x14

.field static final TRANSACTION_getNotificationChannelGroupForPackage:I = 0x11

.field static final TRANSACTION_getNotificationChannelGroups:I = 0x1b

.field static final TRANSACTION_getNotificationChannelGroupsForPackage:I = 0x10

.field static final TRANSACTION_getNotificationChannelGroupsFromPrivilegedListener:I = 0x34

.field static final TRANSACTION_getNotificationChannels:I = 0x16

.field static final TRANSACTION_getNotificationChannelsForPackage:I = 0x17

.field static final TRANSACTION_getNotificationChannelsFromPrivilegedListener:I = 0x33

.field static final TRANSACTION_getNotificationPolicy:I = 0x4a

.field static final TRANSACTION_getNumNotificationChannelsForPackage:I = 0x18

.field static final TRANSACTION_getPackageImportance:I = 0xc

.field static final TRANSACTION_getRuleInstanceCount:I = 0x55

.field static final TRANSACTION_getSnoozedNotificationsFromListener:I = 0x2b

.field static final TRANSACTION_getZenMode:I = 0x45

.field static final TRANSACTION_getZenModeConfig:I = 0x46

.field static final TRANSACTION_getZenRules:I = 0x50

.field static final TRANSACTION_isNotificationAssistantAccessGranted:I = 0x3e

.field static final TRANSACTION_isNotificationListenerAccessGranted:I = 0x3c

.field static final TRANSACTION_isNotificationListenerAccessGrantedForUser:I = 0x3d

.field static final TRANSACTION_isNotificationPolicyAccessGranted:I = 0x49

.field static final TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x4c

.field static final TRANSACTION_isSystemConditionProviderEnabled:I = 0x3b

.field static final TRANSACTION_matchesCallFilter:I = 0x3a

.field static final TRANSACTION_notifyConditions:I = 0x48

.field static final TRANSACTION_onlyHasDefaultChannel:I = 0x1c

.field static final TRANSACTION_registerListener:I = 0x1f

.field static final TRANSACTION_removeAutomaticZenRule:I = 0x53

.field static final TRANSACTION_removeAutomaticZenRules:I = 0x54

.field static final TRANSACTION_requestBindListener:I = 0x25

.field static final TRANSACTION_requestBindProvider:I = 0x27

.field static final TRANSACTION_requestHintsFromListener:I = 0x2c

.field static final TRANSACTION_requestInterruptionFilterFromListener:I = 0x2e

.field static final TRANSACTION_requestUnbindListener:I = 0x26

.field static final TRANSACTION_requestUnbindProvider:I = 0x28

.field static final TRANSACTION_setInterruptionFilter:I = 0x31

.field static final TRANSACTION_setNotificationAssistantAccessGranted:I = 0x40

.field static final TRANSACTION_setNotificationAssistantAccessGrantedForUser:I = 0x42

.field static final TRANSACTION_setNotificationListenerAccessGranted:I = 0x3f

.field static final TRANSACTION_setNotificationListenerAccessGrantedForUser:I = 0x41

.field static final TRANSACTION_setNotificationPolicy:I = 0x4b

.field static final TRANSACTION_setNotificationPolicyAccessGranted:I = 0x4d

.field static final TRANSACTION_setNotificationPolicyAccessGrantedForUser:I = 0x4e

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x9

.field static final TRANSACTION_setNotificationsShownFromListener:I = 0x29

.field static final TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x30

.field static final TRANSACTION_setShowBadge:I = 0x7

.field static final TRANSACTION_setZenMode:I = 0x47

.field static final TRANSACTION_snoozeNotificationUntilContextFromListener:I = 0x23

.field static final TRANSACTION_snoozeNotificationUntilFromListener:I = 0x24

.field static final TRANSACTION_unregisterListener:I = 0x20

.field static final TRANSACTION_unsnoozeNotificationFromAssistant:I = 0x38

.field static final TRANSACTION_updateAutomaticZenRule:I = 0x52

.field static final TRANSACTION_updateNotificationChannelForPackage:I = 0x12

.field static final TRANSACTION_updateNotificationChannelFromPrivilegedListener:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.app.INotificationManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
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
    const-string v0, "android.app.INotificationManager"

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
    instance-of v1, v0, Landroid/app/INotificationManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/app/INotificationManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/app/INotificationManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "android.app.INotificationManager"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_38

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
    move-result p2

    .line 30
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return v2

    .line 50
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->applyRestore([BI)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    .line 66
    .line 67
    return v2

    .line 68
    :pswitch_2
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
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getBackupPayload(I)[B

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    .line 97
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v0, p1

    .line 102
    check-cast v0, Landroid/content/ComponentName;

    .line 103
    .line 104
    :cond_1
    invoke-interface {p0, v0}, Landroid/app/INotificationManager;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    .line 113
    .line 114
    return v2

    .line 115
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    .line 131
    .line 132
    return v2

    .line 133
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    .line 149
    .line 150
    return v2

    .line 151
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 159
    .line 160
    .line 161
    move-result p4

    .line 162
    if-eqz p4, :cond_2

    .line 163
    .line 164
    sget-object p4, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 165
    .line 166
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    move-object v0, p2

    .line 171
    check-cast v0, Landroid/app/AutomaticZenRule;

    .line 172
    .line 173
    :cond_2
    invoke-interface {p0, p1, v0}, Landroid/app/INotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

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
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_3

    .line 192
    .line 193
    sget-object p1, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 194
    .line 195
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    move-object v0, p1

    .line 200
    check-cast v0, Landroid/app/AutomaticZenRule;

    .line 201
    .line 202
    :cond_3
    invoke-interface {p0, v0}, Landroid/app/INotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return v2

    .line 213
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {p0}, Landroid/app/INotificationManager;->getZenRules()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 224
    .line 225
    .line 226
    return v2

    .line 227
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    .line 240
    .line 241
    if-eqz p1, :cond_4

    .line 242
    .line 243
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, p3, v2}, Landroid/app/AutomaticZenRule;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    .line 252
    .line 253
    :goto_1
    return v2

    .line 254
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 262
    .line 263
    .line 264
    move-result p4

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    if-eqz p2, :cond_5

    .line 270
    .line 271
    move v3, v2

    .line 272
    :cond_5
    invoke-interface {p0, p1, p4, v3}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    .line 277
    .line 278
    return v2

    .line 279
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    if-eqz p2, :cond_6

    .line 291
    .line 292
    move v3, v2

    .line 293
    :cond_6
    invoke-interface {p0, p1, v3}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    .line 298
    .line 299
    return v2

    .line 300
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    .line 316
    .line 317
    return v2

    .line 318
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 326
    .line 327
    .line 328
    move-result p4

    .line 329
    if-eqz p4, :cond_7

    .line 330
    .line 331
    sget-object p4, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 332
    .line 333
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    move-object v0, p2

    .line 338
    check-cast v0, Landroid/app/NotificationManager$Policy;

    .line 339
    .line 340
    :cond_7
    invoke-interface {p0, p1, v0}, Landroid/app/INotificationManager;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    .line 345
    .line 346
    return v2

    .line 347
    :pswitch_e
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
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    .line 360
    .line 361
    if-eqz p1, :cond_8

    .line 362
    .line 363
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, p3, v2}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 367
    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    .line 372
    .line 373
    :goto_2
    return v2

    .line 374
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    .line 390
    .line 391
    return v2

    .line 392
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 400
    .line 401
    .line 402
    move-result-object p3

    .line 403
    invoke-static {p3}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    .line 404
    .line 405
    .line 406
    move-result-object p3

    .line 407
    sget-object p4, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 408
    .line 409
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    check-cast p2, [Landroid/service/notification/Condition;

    .line 414
    .line 415
    invoke-interface {p0, p1, p3, p2}, Landroid/app/INotificationManager;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    .line 416
    .line 417
    .line 418
    return v2

    .line 419
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 427
    .line 428
    .line 429
    move-result p3

    .line 430
    if-eqz p3, :cond_9

    .line 431
    .line 432
    sget-object p3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 433
    .line 434
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object p3

    .line 438
    move-object v0, p3

    .line 439
    check-cast v0, Landroid/net/Uri;

    .line 440
    .line 441
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    invoke-interface {p0, p1, v0, p2}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    return v2

    .line 449
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-interface {p0}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    .line 458
    .line 459
    if-eqz p1, :cond_a

    .line 460
    .line 461
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1, p3, v2}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 465
    .line 466
    .line 467
    goto :goto_3

    .line 468
    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    .line 470
    .line 471
    :goto_3
    return v2

    .line 472
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-interface {p0}, Landroid/app/INotificationManager;->getZenMode()I

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    .line 484
    .line 485
    return v2

    .line 486
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 501
    .line 502
    .line 503
    return v2

    .line 504
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-interface {p0}, Landroid/app/INotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 515
    .line 516
    .line 517
    return v2

    .line 518
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 522
    .line 523
    .line 524
    move-result p1

    .line 525
    if-eqz p1, :cond_b

    .line 526
    .line 527
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 528
    .line 529
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    move-object v0, p1

    .line 534
    check-cast v0, Landroid/content/ComponentName;

    .line 535
    .line 536
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 537
    .line 538
    .line 539
    move-result p1

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 541
    .line 542
    .line 543
    move-result p2

    .line 544
    if-eqz p2, :cond_c

    .line 545
    .line 546
    move v3, v2

    .line 547
    :cond_c
    invoke-interface {p0, v0, p1, v3}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    .line 552
    .line 553
    return v2

    .line 554
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    if-eqz p1, :cond_d

    .line 562
    .line 563
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 564
    .line 565
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    move-object v0, p1

    .line 570
    check-cast v0, Landroid/content/ComponentName;

    .line 571
    .line 572
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 573
    .line 574
    .line 575
    move-result p1

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 577
    .line 578
    .line 579
    move-result p2

    .line 580
    if-eqz p2, :cond_e

    .line 581
    .line 582
    move v3, v2

    .line 583
    :cond_e
    invoke-interface {p0, v0, p1, v3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    .line 588
    .line 589
    return v2

    .line 590
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 594
    .line 595
    .line 596
    move-result p1

    .line 597
    if-eqz p1, :cond_f

    .line 598
    .line 599
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 600
    .line 601
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    move-object v0, p1

    .line 606
    check-cast v0, Landroid/content/ComponentName;

    .line 607
    .line 608
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 609
    .line 610
    .line 611
    move-result p1

    .line 612
    if-eqz p1, :cond_10

    .line 613
    .line 614
    move v3, v2

    .line 615
    :cond_10
    invoke-interface {p0, v0, v3}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    .line 620
    .line 621
    return v2

    .line 622
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 626
    .line 627
    .line 628
    move-result p1

    .line 629
    if-eqz p1, :cond_11

    .line 630
    .line 631
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 632
    .line 633
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object p1

    .line 637
    move-object v0, p1

    .line 638
    check-cast v0, Landroid/content/ComponentName;

    .line 639
    .line 640
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 641
    .line 642
    .line 643
    move-result p1

    .line 644
    if-eqz p1, :cond_12

    .line 645
    .line 646
    move v3, v2

    .line 647
    :cond_12
    invoke-interface {p0, v0, v3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    .line 652
    .line 653
    return v2

    .line 654
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 658
    .line 659
    .line 660
    move-result p1

    .line 661
    if-eqz p1, :cond_13

    .line 662
    .line 663
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 664
    .line 665
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object p1

    .line 669
    move-object v0, p1

    .line 670
    check-cast v0, Landroid/content/ComponentName;

    .line 671
    .line 672
    :cond_13
    invoke-interface {p0, v0}, Landroid/app/INotificationManager;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    .line 673
    .line 674
    .line 675
    move-result p1

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    .line 678
    .line 679
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    .line 681
    .line 682
    return v2

    .line 683
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 687
    .line 688
    .line 689
    move-result p1

    .line 690
    if-eqz p1, :cond_14

    .line 691
    .line 692
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 693
    .line 694
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    move-object v0, p1

    .line 699
    check-cast v0, Landroid/content/ComponentName;

    .line 700
    .line 701
    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 702
    .line 703
    .line 704
    move-result p1

    .line 705
    invoke-interface {p0, v0, p1}, Landroid/app/INotificationManager;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    .line 706
    .line 707
    .line 708
    move-result p1

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    .line 711
    .line 712
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    .line 714
    .line 715
    return v2

    .line 716
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 720
    .line 721
    .line 722
    move-result p1

    .line 723
    if-eqz p1, :cond_15

    .line 724
    .line 725
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 726
    .line 727
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object p1

    .line 731
    move-object v0, p1

    .line 732
    check-cast v0, Landroid/content/ComponentName;

    .line 733
    .line 734
    :cond_15
    invoke-interface {p0, v0}, Landroid/app/INotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

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
    :pswitch_1d
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
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    .line 753
    .line 754
    .line 755
    move-result p1

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    .line 758
    .line 759
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    .line 761
    .line 762
    return v2

    .line 763
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 767
    .line 768
    .line 769
    move-result p1

    .line 770
    if-eqz p1, :cond_16

    .line 771
    .line 772
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 773
    .line 774
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object p1

    .line 778
    move-object v0, p1

    .line 779
    check-cast v0, Landroid/os/Bundle;

    .line 780
    .line 781
    :cond_16
    invoke-interface {p0, v0}, Landroid/app/INotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z

    .line 782
    .line 783
    .line 784
    move-result p1

    .line 785
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    .line 787
    .line 788
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    .line 790
    .line 791
    return v2

    .line 792
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    invoke-interface {p0}, Landroid/app/INotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    .line 796
    .line 797
    .line 798
    move-result-object p1

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    .line 801
    .line 802
    if-eqz p1, :cond_17

    .line 803
    .line 804
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {p1, p3, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 808
    .line 809
    .line 810
    goto :goto_4

    .line 811
    :cond_17
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    .line 813
    .line 814
    :goto_4
    return v2

    .line 815
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 819
    .line 820
    .line 821
    move-result-object p1

    .line 822
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 823
    .line 824
    .line 825
    move-result-object p1

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object p2

    .line 830
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    .line 835
    .line 836
    return v2

    .line 837
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 841
    .line 842
    .line 843
    move-result-object p1

    .line 844
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    sget-object p4, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 849
    .line 850
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 851
    .line 852
    .line 853
    move-result-object p2

    .line 854
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    .line 859
    .line 860
    return v2

    .line 861
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 865
    .line 866
    .line 867
    move-result-object p1

    .line 868
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 869
    .line 870
    .line 871
    move-result-object p1

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 873
    .line 874
    .line 875
    move-result p4

    .line 876
    if-eqz p4, :cond_18

    .line 877
    .line 878
    sget-object p4, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 879
    .line 880
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object p2

    .line 884
    move-object v0, p2

    .line 885
    check-cast v0, Landroid/service/notification/Adjustment;

    .line 886
    .line 887
    :cond_18
    invoke-interface {p0, p1, v0}, Landroid/app/INotificationManager;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    .line 892
    .line 893
    return v2

    .line 894
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 898
    .line 899
    .line 900
    move-result-object p1

    .line 901
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 902
    .line 903
    .line 904
    move-result-object p1

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 906
    .line 907
    .line 908
    move-result p4

    .line 909
    if-eqz p4, :cond_19

    .line 910
    .line 911
    sget-object p4, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 912
    .line 913
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object p2

    .line 917
    move-object v0, p2

    .line 918
    check-cast v0, Landroid/service/notification/Adjustment;

    .line 919
    .line 920
    :cond_19
    invoke-interface {p0, p1, v0}, Landroid/app/INotificationManager;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    .line 925
    .line 926
    return v2

    .line 927
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 931
    .line 932
    .line 933
    move-result-object p1

    .line 934
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 935
    .line 936
    .line 937
    move-result-object p1

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object p4

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 943
    .line 944
    .line 945
    move-result v1

    .line 946
    if-eqz v1, :cond_1a

    .line 947
    .line 948
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 949
    .line 950
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object p2

    .line 954
    move-object v0, p2

    .line 955
    check-cast v0, Landroid/os/UserHandle;

    .line 956
    .line 957
    :cond_1a
    invoke-interface {p0, p1, p4, v0}, Landroid/app/INotificationManager;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    .line 958
    .line 959
    .line 960
    move-result-object p1

    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    .line 963
    .line 964
    if-eqz p1, :cond_1b

    .line 965
    .line 966
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 970
    .line 971
    .line 972
    goto :goto_5

    .line 973
    :cond_1b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    .line 975
    .line 976
    :goto_5
    return v2

    .line 977
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 981
    .line 982
    .line 983
    move-result-object p1

    .line 984
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 985
    .line 986
    .line 987
    move-result-object p1

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object p4

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 993
    .line 994
    .line 995
    move-result v1

    .line 996
    if-eqz v1, :cond_1c

    .line 997
    .line 998
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 999
    .line 1000
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object p2

    .line 1004
    move-object v0, p2

    .line 1005
    check-cast v0, Landroid/os/UserHandle;

    .line 1006
    .line 1007
    :cond_1c
    invoke-interface {p0, p1, p4, v0}, Landroid/app/INotificationManager;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    .line 1008
    .line 1009
    .line 1010
    move-result-object p1

    .line 1011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    .line 1013
    .line 1014
    if-eqz p1, :cond_1d

    .line 1015
    .line 1016
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1020
    .line 1021
    .line 1022
    goto :goto_6

    .line 1023
    :cond_1d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    .line 1025
    .line 1026
    :goto_6
    return v2

    .line 1027
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1031
    .line 1032
    .line 1033
    move-result-object p1

    .line 1034
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1035
    .line 1036
    .line 1037
    move-result-object p1

    .line 1038
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object p4

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1043
    .line 1044
    .line 1045
    move-result v1

    .line 1046
    if-eqz v1, :cond_1e

    .line 1047
    .line 1048
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1049
    .line 1050
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    check-cast v1, Landroid/os/UserHandle;

    .line 1055
    .line 1056
    goto :goto_7

    .line 1057
    :cond_1e
    move-object v1, v0

    .line 1058
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1059
    .line 1060
    .line 1061
    move-result v3

    .line 1062
    if-eqz v3, :cond_1f

    .line 1063
    .line 1064
    sget-object v0, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1065
    .line 1066
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    move-result-object p2

    .line 1070
    move-object v0, p2

    .line 1071
    check-cast v0, Landroid/app/NotificationChannel;

    .line 1072
    .line 1073
    :cond_1f
    invoke-interface {p0, p1, p4, v1, v0}, Landroid/app/INotificationManager;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    .line 1078
    .line 1079
    return v2

    .line 1080
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object p1

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1088
    .line 1089
    .line 1090
    move-result p2

    .line 1091
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;I)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    .line 1096
    .line 1097
    return v2

    .line 1098
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1102
    .line 1103
    .line 1104
    move-result-object p1

    .line 1105
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1106
    .line 1107
    .line 1108
    move-result-object p1

    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1110
    .line 1111
    .line 1112
    move-result p2

    .line 1113
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    .line 1118
    .line 1119
    return v2

    .line 1120
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1124
    .line 1125
    .line 1126
    move-result-object p1

    .line 1127
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1128
    .line 1129
    .line 1130
    move-result-object p1

    .line 1131
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    .line 1132
    .line 1133
    .line 1134
    move-result p1

    .line 1135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    .line 1140
    .line 1141
    return v2

    .line 1142
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p1

    .line 1149
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1150
    .line 1151
    .line 1152
    move-result-object p1

    .line 1153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1154
    .line 1155
    .line 1156
    move-result p2

    .line 1157
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    .line 1162
    .line 1163
    return v2

    .line 1164
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1168
    .line 1169
    .line 1170
    move-result-object p1

    .line 1171
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1172
    .line 1173
    .line 1174
    move-result-object p1

    .line 1175
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    .line 1176
    .line 1177
    .line 1178
    move-result p1

    .line 1179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    .line 1184
    .line 1185
    return v2

    .line 1186
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1190
    .line 1191
    .line 1192
    move-result-object p1

    .line 1193
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1194
    .line 1195
    .line 1196
    move-result-object p1

    .line 1197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1198
    .line 1199
    .line 1200
    move-result p2

    .line 1201
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    .line 1206
    .line 1207
    return v2

    .line 1208
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1212
    .line 1213
    .line 1214
    move-result-object p1

    .line 1215
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1216
    .line 1217
    .line 1218
    move-result-object p1

    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1220
    .line 1221
    .line 1222
    move-result p2

    .line 1223
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    .line 1224
    .line 1225
    .line 1226
    move-result-object p1

    .line 1227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    .line 1229
    .line 1230
    if-eqz p1, :cond_20

    .line 1231
    .line 1232
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1236
    .line 1237
    .line 1238
    goto :goto_8

    .line 1239
    :cond_20
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    .line 1241
    .line 1242
    :goto_8
    return v2

    .line 1243
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1247
    .line 1248
    .line 1249
    move-result-object p1

    .line 1250
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1251
    .line 1252
    .line 1253
    move-result-object p1

    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object p4

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1259
    .line 1260
    .line 1261
    move-result p2

    .line 1262
    invoke-interface {p0, p1, p4, p2}, Landroid/app/INotificationManager;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    .line 1263
    .line 1264
    .line 1265
    move-result-object p1

    .line 1266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    .line 1268
    .line 1269
    if-eqz p1, :cond_21

    .line 1270
    .line 1271
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1275
    .line 1276
    .line 1277
    goto :goto_9

    .line 1278
    :cond_21
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    .line 1280
    .line 1281
    :goto_9
    return v2

    .line 1282
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1286
    .line 1287
    .line 1288
    move-result-object p1

    .line 1289
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1290
    .line 1291
    .line 1292
    move-result-object p1

    .line 1293
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object p2

    .line 1297
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    .line 1302
    .line 1303
    return v2

    .line 1304
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1308
    .line 1309
    .line 1310
    move-result-object p1

    .line 1311
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    .line 1312
    .line 1313
    .line 1314
    move-result-object p1

    .line 1315
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    .line 1320
    .line 1321
    return v2

    .line 1322
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1326
    .line 1327
    .line 1328
    move-result p1

    .line 1329
    if-eqz p1, :cond_22

    .line 1330
    .line 1331
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1332
    .line 1333
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    move-result-object p1

    .line 1337
    move-object v0, p1

    .line 1338
    check-cast v0, Landroid/content/ComponentName;

    .line 1339
    .line 1340
    :cond_22
    invoke-interface {p0, v0}, Landroid/app/INotificationManager;->requestBindProvider(Landroid/content/ComponentName;)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    .line 1345
    .line 1346
    return v2

    .line 1347
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1351
    .line 1352
    .line 1353
    move-result-object p1

    .line 1354
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1355
    .line 1356
    .line 1357
    move-result-object p1

    .line 1358
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    .line 1363
    .line 1364
    return v2

    .line 1365
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1369
    .line 1370
    .line 1371
    move-result p1

    .line 1372
    if-eqz p1, :cond_23

    .line 1373
    .line 1374
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1375
    .line 1376
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object p1

    .line 1380
    move-object v0, p1

    .line 1381
    check-cast v0, Landroid/content/ComponentName;

    .line 1382
    .line 1383
    :cond_23
    invoke-interface {p0, v0}, Landroid/app/INotificationManager;->requestBindListener(Landroid/content/ComponentName;)V

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    .line 1388
    .line 1389
    return v2

    .line 1390
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1394
    .line 1395
    .line 1396
    move-result-object p1

    .line 1397
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1398
    .line 1399
    .line 1400
    move-result-object p1

    .line 1401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object p4

    .line 1405
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1406
    .line 1407
    .line 1408
    move-result-wide v0

    .line 1409
    invoke-interface {p0, p1, p4, v0, v1}, Landroid/app/INotificationManager;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    .line 1414
    .line 1415
    return v2

    .line 1416
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1420
    .line 1421
    .line 1422
    move-result-object p1

    .line 1423
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1424
    .line 1425
    .line 1426
    move-result-object p1

    .line 1427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object p4

    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object p2

    .line 1435
    invoke-interface {p0, p1, p4, p2}, Landroid/app/INotificationManager;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    .line 1440
    .line 1441
    return v2

    .line 1442
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1446
    .line 1447
    .line 1448
    move-result-object p1

    .line 1449
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1450
    .line 1451
    .line 1452
    move-result-object p1

    .line 1453
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object p2

    .line 1457
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    .line 1462
    .line 1463
    return v2

    .line 1464
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1468
    .line 1469
    .line 1470
    move-result-object p1

    .line 1471
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1472
    .line 1473
    .line 1474
    move-result-object p1

    .line 1475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object p4

    .line 1479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1484
    .line 1485
    .line 1486
    move-result p2

    .line 1487
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/app/INotificationManager;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    .line 1492
    .line 1493
    return v2

    .line 1494
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1498
    .line 1499
    .line 1500
    move-result-object p1

    .line 1501
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1502
    .line 1503
    .line 1504
    move-result-object p1

    .line 1505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1506
    .line 1507
    .line 1508
    move-result p2

    .line 1509
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    .line 1514
    .line 1515
    return v2

    .line 1516
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1520
    .line 1521
    .line 1522
    move-result-object p1

    .line 1523
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 1524
    .line 1525
    .line 1526
    move-result-object p1

    .line 1527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1528
    .line 1529
    .line 1530
    move-result p4

    .line 1531
    if-eqz p4, :cond_24

    .line 1532
    .line 1533
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1534
    .line 1535
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object p4

    .line 1539
    move-object v0, p4

    .line 1540
    check-cast v0, Landroid/content/ComponentName;

    .line 1541
    .line 1542
    :cond_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1543
    .line 1544
    .line 1545
    move-result p2

    .line 1546
    invoke-interface {p0, p1, v0, p2}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    .line 1551
    .line 1552
    return v2

    .line 1553
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object p1

    .line 1560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1561
    .line 1562
    .line 1563
    move-result p2

    .line 1564
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    .line 1565
    .line 1566
    .line 1567
    move-result-object p1

    .line 1568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1572
    .line 1573
    .line 1574
    return v2

    .line 1575
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1579
    .line 1580
    .line 1581
    move-result-object p1

    .line 1582
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    .line 1583
    .line 1584
    .line 1585
    move-result-object p1

    .line 1586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1590
    .line 1591
    .line 1592
    return v2

    .line 1593
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object p1

    .line 1600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1601
    .line 1602
    .line 1603
    move-result p2

    .line 1604
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    .line 1605
    .line 1606
    .line 1607
    move-result p1

    .line 1608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1612
    .line 1613
    .line 1614
    return v2

    .line 1615
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1616
    .line 1617
    .line 1618
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1619
    .line 1620
    .line 1621
    move-result-object p1

    .line 1622
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 1623
    .line 1624
    .line 1625
    move-result-object p1

    .line 1626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    .line 1628
    .line 1629
    if-eqz p1, :cond_25

    .line 1630
    .line 1631
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1635
    .line 1636
    .line 1637
    goto :goto_a

    .line 1638
    :cond_25
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    .line 1640
    .line 1641
    :goto_a
    return v2

    .line 1642
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1643
    .line 1644
    .line 1645
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1646
    .line 1647
    .line 1648
    move-result-object p1

    .line 1649
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1650
    .line 1651
    .line 1652
    move-result-object p2

    .line 1653
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    .line 1658
    .line 1659
    return v2

    .line 1660
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object p1

    .line 1667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1668
    .line 1669
    .line 1670
    move-result p2

    .line 1671
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getDeletedChannelCount(Ljava/lang/String;I)I

    .line 1672
    .line 1673
    .line 1674
    move-result p1

    .line 1675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    .line 1677
    .line 1678
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1679
    .line 1680
    .line 1681
    return v2

    .line 1682
    :pswitch_40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1686
    .line 1687
    .line 1688
    move-result-object p1

    .line 1689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1690
    .line 1691
    .line 1692
    move-result p4

    .line 1693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1694
    .line 1695
    .line 1696
    move-result p2

    .line 1697
    if-eqz p2, :cond_26

    .line 1698
    .line 1699
    move v3, v2

    .line 1700
    :cond_26
    invoke-interface {p0, p1, p4, v3}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    .line 1701
    .line 1702
    .line 1703
    move-result p1

    .line 1704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1708
    .line 1709
    .line 1710
    return v2

    .line 1711
    :pswitch_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    .line 1713
    .line 1714
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1715
    .line 1716
    .line 1717
    move-result-object p1

    .line 1718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1719
    .line 1720
    .line 1721
    move-result p4

    .line 1722
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1723
    .line 1724
    .line 1725
    move-result p2

    .line 1726
    if-eqz p2, :cond_27

    .line 1727
    .line 1728
    move p2, v2

    .line 1729
    goto :goto_b

    .line 1730
    :cond_27
    move p2, v3

    .line 1731
    :goto_b
    invoke-interface {p0, p1, p4, p2}, Landroid/app/INotificationManager;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    .line 1732
    .line 1733
    .line 1734
    move-result-object p1

    .line 1735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1736
    .line 1737
    .line 1738
    if-eqz p1, :cond_28

    .line 1739
    .line 1740
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1744
    .line 1745
    .line 1746
    goto :goto_c

    .line 1747
    :cond_28
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1748
    .line 1749
    .line 1750
    :goto_c
    return v2

    .line 1751
    :pswitch_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    .line 1753
    .line 1754
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object p1

    .line 1758
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getNotificationChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 1759
    .line 1760
    .line 1761
    move-result-object p1

    .line 1762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    .line 1764
    .line 1765
    if-eqz p1, :cond_29

    .line 1766
    .line 1767
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    .line 1769
    .line 1770
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1771
    .line 1772
    .line 1773
    goto :goto_d

    .line 1774
    :cond_29
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    .line 1776
    .line 1777
    :goto_d
    return v2

    .line 1778
    :pswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1779
    .line 1780
    .line 1781
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1782
    .line 1783
    .line 1784
    move-result-object p1

    .line 1785
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1786
    .line 1787
    .line 1788
    move-result-object p2

    .line 1789
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    .line 1791
    .line 1792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    .line 1794
    .line 1795
    return v2

    .line 1796
    :pswitch_44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1800
    .line 1801
    .line 1802
    move-result-object p1

    .line 1803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1804
    .line 1805
    .line 1806
    move-result p4

    .line 1807
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v0

    .line 1811
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1812
    .line 1813
    .line 1814
    move-result p2

    .line 1815
    if-eqz p2, :cond_2a

    .line 1816
    .line 1817
    move p2, v2

    .line 1818
    goto :goto_e

    .line 1819
    :cond_2a
    move p2, v3

    .line 1820
    :goto_e
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    .line 1821
    .line 1822
    .line 1823
    move-result-object p1

    .line 1824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    .line 1826
    .line 1827
    if-eqz p1, :cond_2b

    .line 1828
    .line 1829
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1830
    .line 1831
    .line 1832
    invoke-virtual {p1, p3, v2}, Landroid/app/NotificationChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1833
    .line 1834
    .line 1835
    goto :goto_f

    .line 1836
    :cond_2b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1837
    .line 1838
    .line 1839
    :goto_f
    return v2

    .line 1840
    :pswitch_45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1841
    .line 1842
    .line 1843
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1844
    .line 1845
    .line 1846
    move-result-object p1

    .line 1847
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1848
    .line 1849
    .line 1850
    move-result-object p2

    .line 1851
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 1852
    .line 1853
    .line 1854
    move-result-object p1

    .line 1855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1856
    .line 1857
    .line 1858
    if-eqz p1, :cond_2c

    .line 1859
    .line 1860
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1861
    .line 1862
    .line 1863
    invoke-virtual {p1, p3, v2}, Landroid/app/NotificationChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1864
    .line 1865
    .line 1866
    goto :goto_10

    .line 1867
    :cond_2c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1868
    .line 1869
    .line 1870
    :goto_10
    return v2

    .line 1871
    :pswitch_46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1872
    .line 1873
    .line 1874
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1875
    .line 1876
    .line 1877
    move-result-object p1

    .line 1878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1879
    .line 1880
    .line 1881
    move-result p4

    .line 1882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1883
    .line 1884
    .line 1885
    move-result v1

    .line 1886
    if-eqz v1, :cond_2d

    .line 1887
    .line 1888
    sget-object v0, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1889
    .line 1890
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1891
    .line 1892
    .line 1893
    move-result-object p2

    .line 1894
    move-object v0, p2

    .line 1895
    check-cast v0, Landroid/app/NotificationChannel;

    .line 1896
    .line 1897
    :cond_2d
    invoke-interface {p0, p1, p4, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 1898
    .line 1899
    .line 1900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1901
    .line 1902
    .line 1903
    return v2

    .line 1904
    :pswitch_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    .line 1906
    .line 1907
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1908
    .line 1909
    .line 1910
    move-result-object p1

    .line 1911
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1912
    .line 1913
    .line 1914
    move-result-object p4

    .line 1915
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1916
    .line 1917
    .line 1918
    move-result p2

    .line 1919
    invoke-interface {p0, p1, p4, p2}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    .line 1920
    .line 1921
    .line 1922
    move-result-object p1

    .line 1923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    .line 1925
    .line 1926
    if-eqz p1, :cond_2e

    .line 1927
    .line 1928
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1929
    .line 1930
    .line 1931
    invoke-virtual {p1, p3, v2}, Landroid/app/NotificationChannelGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1932
    .line 1933
    .line 1934
    goto :goto_11

    .line 1935
    :cond_2e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    .line 1937
    .line 1938
    :goto_11
    return v2

    .line 1939
    :pswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    .line 1941
    .line 1942
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1943
    .line 1944
    .line 1945
    move-result-object p1

    .line 1946
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1947
    .line 1948
    .line 1949
    move-result p4

    .line 1950
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1951
    .line 1952
    .line 1953
    move-result p2

    .line 1954
    if-eqz p2, :cond_2f

    .line 1955
    .line 1956
    move p2, v2

    .line 1957
    goto :goto_12

    .line 1958
    :cond_2f
    move p2, v3

    .line 1959
    :goto_12
    invoke-interface {p0, p1, p4, p2}, Landroid/app/INotificationManager;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    .line 1960
    .line 1961
    .line 1962
    move-result-object p1

    .line 1963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1964
    .line 1965
    .line 1966
    if-eqz p1, :cond_30

    .line 1967
    .line 1968
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {p1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1972
    .line 1973
    .line 1974
    goto :goto_13

    .line 1975
    :cond_30
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1976
    .line 1977
    .line 1978
    :goto_13
    return v2

    .line 1979
    :pswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1980
    .line 1981
    .line 1982
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1983
    .line 1984
    .line 1985
    move-result-object p1

    .line 1986
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1987
    .line 1988
    .line 1989
    move-result p4

    .line 1990
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1991
    .line 1992
    .line 1993
    move-result v1

    .line 1994
    if-eqz v1, :cond_31

    .line 1995
    .line 1996
    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 1997
    .line 1998
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1999
    .line 2000
    .line 2001
    move-result-object p2

    .line 2002
    move-object v0, p2

    .line 2003
    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 2004
    .line 2005
    :cond_31
    invoke-interface {p0, p1, p4, v0}, Landroid/app/INotificationManager;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 2006
    .line 2007
    .line 2008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2009
    .line 2010
    .line 2011
    return v2

    .line 2012
    :pswitch_4a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2016
    .line 2017
    .line 2018
    move-result-object p1

    .line 2019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2020
    .line 2021
    .line 2022
    move-result p4

    .line 2023
    if-eqz p4, :cond_32

    .line 2024
    .line 2025
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 2026
    .line 2027
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2028
    .line 2029
    .line 2030
    move-result-object p2

    .line 2031
    move-object v0, p2

    .line 2032
    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 2033
    .line 2034
    :cond_32
    invoke-interface {p0, p1, v0}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 2035
    .line 2036
    .line 2037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2038
    .line 2039
    .line 2040
    return v2

    .line 2041
    :pswitch_4b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2045
    .line 2046
    .line 2047
    move-result-object p1

    .line 2048
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2049
    .line 2050
    .line 2051
    move-result p4

    .line 2052
    if-eqz p4, :cond_33

    .line 2053
    .line 2054
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 2055
    .line 2056
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2057
    .line 2058
    .line 2059
    move-result-object p2

    .line 2060
    move-object v0, p2

    .line 2061
    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 2062
    .line 2063
    :cond_33
    invoke-interface {p0, p1, v0}, Landroid/app/INotificationManager;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2067
    .line 2068
    .line 2069
    return v2

    .line 2070
    :pswitch_4c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2074
    .line 2075
    .line 2076
    move-result-object p1

    .line 2077
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getPackageImportance(Ljava/lang/String;)I

    .line 2078
    .line 2079
    .line 2080
    move-result p1

    .line 2081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2082
    .line 2083
    .line 2084
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2085
    .line 2086
    .line 2087
    return v2

    .line 2088
    :pswitch_4d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2089
    .line 2090
    .line 2091
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2092
    .line 2093
    .line 2094
    move-result-object p1

    .line 2095
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->areNotificationsEnabled(Ljava/lang/String;)Z

    .line 2096
    .line 2097
    .line 2098
    move-result p1

    .line 2099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2100
    .line 2101
    .line 2102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    .line 2104
    .line 2105
    return v2

    .line 2106
    :pswitch_4e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2107
    .line 2108
    .line 2109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2110
    .line 2111
    .line 2112
    move-result-object p1

    .line 2113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2114
    .line 2115
    .line 2116
    move-result p2

    .line 2117
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    .line 2118
    .line 2119
    .line 2120
    move-result p1

    .line 2121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2122
    .line 2123
    .line 2124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2125
    .line 2126
    .line 2127
    return v2

    .line 2128
    :pswitch_4f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    .line 2130
    .line 2131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2132
    .line 2133
    .line 2134
    move-result-object p1

    .line 2135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2136
    .line 2137
    .line 2138
    move-result p4

    .line 2139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2140
    .line 2141
    .line 2142
    move-result p2

    .line 2143
    if-eqz p2, :cond_34

    .line 2144
    .line 2145
    move v3, v2

    .line 2146
    :cond_34
    invoke-interface {p0, p1, p4, v3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 2147
    .line 2148
    .line 2149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2150
    .line 2151
    .line 2152
    return v2

    .line 2153
    :pswitch_50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2154
    .line 2155
    .line 2156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2157
    .line 2158
    .line 2159
    move-result-object p1

    .line 2160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2161
    .line 2162
    .line 2163
    move-result p2

    .line 2164
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->canShowBadge(Ljava/lang/String;I)Z

    .line 2165
    .line 2166
    .line 2167
    move-result p1

    .line 2168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2169
    .line 2170
    .line 2171
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2172
    .line 2173
    .line 2174
    return v2

    .line 2175
    :pswitch_51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2176
    .line 2177
    .line 2178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2179
    .line 2180
    .line 2181
    move-result-object p1

    .line 2182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2183
    .line 2184
    .line 2185
    move-result p4

    .line 2186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2187
    .line 2188
    .line 2189
    move-result p2

    .line 2190
    if-eqz p2, :cond_35

    .line 2191
    .line 2192
    move v3, v2

    .line 2193
    :cond_35
    invoke-interface {p0, p1, p4, v3}, Landroid/app/INotificationManager;->setShowBadge(Ljava/lang/String;IZ)V

    .line 2194
    .line 2195
    .line 2196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    .line 2198
    .line 2199
    return v2

    .line 2200
    :pswitch_52
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2201
    .line 2202
    .line 2203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2204
    .line 2205
    .line 2206
    move-result-object p1

    .line 2207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2208
    .line 2209
    .line 2210
    move-result-object p4

    .line 2211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2212
    .line 2213
    .line 2214
    move-result v0

    .line 2215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2216
    .line 2217
    .line 2218
    move-result p2

    .line 2219
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2220
    .line 2221
    .line 2222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2223
    .line 2224
    .line 2225
    return v2

    .line 2226
    :pswitch_53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2227
    .line 2228
    .line 2229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2230
    .line 2231
    .line 2232
    move-result-object v4

    .line 2233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2234
    .line 2235
    .line 2236
    move-result-object v5

    .line 2237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2238
    .line 2239
    .line 2240
    move-result-object v6

    .line 2241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2242
    .line 2243
    .line 2244
    move-result v7

    .line 2245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2246
    .line 2247
    .line 2248
    move-result p1

    .line 2249
    if-eqz p1, :cond_36

    .line 2250
    .line 2251
    sget-object p1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2252
    .line 2253
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2254
    .line 2255
    .line 2256
    move-result-object p1

    .line 2257
    move-object v0, p1

    .line 2258
    check-cast v0, Landroid/app/Notification;

    .line 2259
    .line 2260
    :cond_36
    move-object v8, v0

    .line 2261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2262
    .line 2263
    .line 2264
    move-result v9

    .line 2265
    move-object v3, p0

    .line 2266
    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 2267
    .line 2268
    .line 2269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2270
    .line 2271
    .line 2272
    return v2

    .line 2273
    :pswitch_54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    .line 2275
    .line 2276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2277
    .line 2278
    .line 2279
    move-result-object p1

    .line 2280
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2281
    .line 2282
    .line 2283
    move-result-object p2

    .line 2284
    invoke-static {p2}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    .line 2285
    .line 2286
    .line 2287
    move-result-object p2

    .line 2288
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V

    .line 2289
    .line 2290
    .line 2291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2292
    .line 2293
    .line 2294
    return v2

    .line 2295
    :pswitch_55
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2296
    .line 2297
    .line 2298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2299
    .line 2300
    .line 2301
    move-result-object p1

    .line 2302
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2303
    .line 2304
    .line 2305
    move-result-object p4

    .line 2306
    invoke-static {p4}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    .line 2307
    .line 2308
    .line 2309
    move-result-object p4

    .line 2310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2311
    .line 2312
    .line 2313
    move-result p2

    .line 2314
    invoke-interface {p0, p1, p4, p2}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 2315
    .line 2316
    .line 2317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2318
    .line 2319
    .line 2320
    return v2

    .line 2321
    :pswitch_56
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2322
    .line 2323
    .line 2324
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2325
    .line 2326
    .line 2327
    move-result-object p1

    .line 2328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2329
    .line 2330
    .line 2331
    move-result p4

    .line 2332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2333
    .line 2334
    .line 2335
    move-result p2

    .line 2336
    if-eqz p2, :cond_37

    .line 2337
    .line 2338
    move v3, v2

    .line 2339
    :cond_37
    invoke-interface {p0, p1, p4, v3}, Landroid/app/INotificationManager;->clearData(Ljava/lang/String;IZ)V

    .line 2340
    .line 2341
    .line 2342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2343
    .line 2344
    .line 2345
    return v2

    .line 2346
    :pswitch_57
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2347
    .line 2348
    .line 2349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2350
    .line 2351
    .line 2352
    move-result-object p1

    .line 2353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2354
    .line 2355
    .line 2356
    move-result p2

    .line 2357
    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V

    .line 2358
    .line 2359
    .line 2360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2361
    .line 2362
    .line 2363
    return v2

    .line 2364
    :cond_38
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2365
    .line 2366
    .line 2367
    return v2

    .line 2368
    nop

    .line 2369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
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
