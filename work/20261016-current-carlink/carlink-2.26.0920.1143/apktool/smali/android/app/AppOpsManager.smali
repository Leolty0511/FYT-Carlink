.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final OPSTR_ANSWER_PHONE_CALLS:Ljava/lang/String; = "android:answer_phone_calls"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final OPSTR_INSTANT_APP_START_FOREGROUND:Ljava/lang/String; = "android:instant_app_start_foreground"

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final OPSTR_PICTURE_IN_PICTURE:Ljava/lang/String; = "android:picture_in_picture"

.field public static final OPSTR_POST_AUTORUN:Ljava/lang/String; = "android:post_autorun"

.field public static final OPSTR_PROCESS_OUTGOING_CALLS:Ljava/lang/String; = "android:process_outgoing_calls"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final OPSTR_READ_PHONE_NUMBERS:Ljava/lang/String; = "android:read_phone_numbers"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ANSWER_PHONE_CALLS:I = 0x45

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ACCESSIBILITY_VOLUME:I = 0x40

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_ACCOUNTS:I = 0x3e

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_INSTANT_APP_START_FOREGROUND:I = 0x44

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NONE:I = -0x1

.field public static final OP_PICTURE_IN_PICTURE:I = 0x43

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_AUTORUN:I = 0x46

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_PHONE_NUMBERS:I = 0x41

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_REQUEST_INSTALL_PACKAGES:I = 0x42

.field public static final OP_RUN_IN_BACKGROUND:I = 0x3f

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field private static final RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

.field public static final _NUM_OP:I = 0x47

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method public static constructor <clinit>()V
    .locals 142

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/app/AppOpsManager;->RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

    .line 9
    .line 10
    const/16 v0, 0x46

    .line 11
    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 18
    .line 19
    const-string v2, "android:coarse_location"

    .line 20
    .line 21
    const-string v3, "android:fine_location"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const-string v6, "android:read_contacts"

    .line 26
    .line 27
    const-string v7, "android:write_contacts"

    .line 28
    .line 29
    const-string v8, "android:read_call_log"

    .line 30
    .line 31
    const-string v9, "android:write_call_log"

    .line 32
    .line 33
    const-string v10, "android:read_calendar"

    .line 34
    .line 35
    const-string v11, "android:write_calendar"

    .line 36
    .line 37
    const/4 v12, 0x0

    .line 38
    const/4 v13, 0x0

    .line 39
    const/4 v14, 0x0

    .line 40
    const-string v15, "android:call_phone"

    .line 41
    .line 42
    const-string v16, "android:read_sms"

    .line 43
    .line 44
    const/16 v17, 0x0

    .line 45
    .line 46
    const-string v18, "android:receive_sms"

    .line 47
    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    const-string v20, "android:receive_mms"

    .line 51
    .line 52
    const-string v21, "android:receive_wap_push"

    .line 53
    .line 54
    const-string v22, "android:send_sms"

    .line 55
    .line 56
    const/16 v23, 0x0

    .line 57
    .line 58
    const/16 v24, 0x0

    .line 59
    .line 60
    const-string v25, "android:write_settings"

    .line 61
    .line 62
    const-string v26, "android:system_alert_window"

    .line 63
    .line 64
    const/16 v27, 0x0

    .line 65
    .line 66
    const-string v28, "android:camera"

    .line 67
    .line 68
    const-string v29, "android:record_audio"

    .line 69
    .line 70
    const/16 v30, 0x0

    .line 71
    .line 72
    const/16 v31, 0x0

    .line 73
    .line 74
    const/16 v32, 0x0

    .line 75
    .line 76
    const/16 v33, 0x0

    .line 77
    .line 78
    const/16 v34, 0x0

    .line 79
    .line 80
    const/16 v35, 0x0

    .line 81
    .line 82
    const/16 v36, 0x0

    .line 83
    .line 84
    const/16 v37, 0x0

    .line 85
    .line 86
    const/16 v38, 0x0

    .line 87
    .line 88
    const/16 v39, 0x0

    .line 89
    .line 90
    const/16 v40, 0x0

    .line 91
    .line 92
    const/16 v41, 0x0

    .line 93
    .line 94
    const/16 v42, 0x0

    .line 95
    .line 96
    const-string v43, "android:monitor_location"

    .line 97
    .line 98
    const-string v44, "android:monitor_location_high_power"

    .line 99
    .line 100
    const-string v45, "android:get_usage_stats"

    .line 101
    .line 102
    const/16 v46, 0x0

    .line 103
    .line 104
    const/16 v47, 0x0

    .line 105
    .line 106
    const/16 v48, 0x0

    .line 107
    .line 108
    const-string v49, "android:activate_vpn"

    .line 109
    .line 110
    const/16 v50, 0x0

    .line 111
    .line 112
    const/16 v51, 0x0

    .line 113
    .line 114
    const/16 v52, 0x0

    .line 115
    .line 116
    const-string v53, "android:read_phone_state"

    .line 117
    .line 118
    const-string v54, "android:add_voicemail"

    .line 119
    .line 120
    const-string v55, "android:use_sip"

    .line 121
    .line 122
    const-string v56, "android:process_outgoing_calls"

    .line 123
    .line 124
    const-string v57, "android:use_fingerprint"

    .line 125
    .line 126
    const-string v58, "android:body_sensors"

    .line 127
    .line 128
    const-string v59, "android:read_cell_broadcasts"

    .line 129
    .line 130
    const-string v60, "android:mock_location"

    .line 131
    .line 132
    const-string v61, "android:read_external_storage"

    .line 133
    .line 134
    const-string v62, "android:write_external_storage"

    .line 135
    .line 136
    const/16 v63, 0x0

    .line 137
    .line 138
    const-string v64, "android:get_accounts"

    .line 139
    .line 140
    const/16 v65, 0x0

    .line 141
    .line 142
    const/16 v66, 0x0

    .line 143
    .line 144
    const-string v67, "android:read_phone_numbers"

    .line 145
    .line 146
    const/16 v68, 0x0

    .line 147
    .line 148
    const-string v69, "android:picture_in_picture"

    .line 149
    .line 150
    const-string v70, "android:instant_app_start_foreground"

    .line 151
    .line 152
    const-string v71, "android:answer_phone_calls"

    .line 153
    .line 154
    filled-new-array/range {v2 .. v71}, [Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 159
    .line 160
    const-string v2, "COARSE_LOCATION"

    .line 161
    .line 162
    const-string v3, "FINE_LOCATION"

    .line 163
    .line 164
    const-string v4, "GPS"

    .line 165
    .line 166
    const-string v5, "VIBRATE"

    .line 167
    .line 168
    const-string v6, "READ_CONTACTS"

    .line 169
    .line 170
    const-string v7, "WRITE_CONTACTS"

    .line 171
    .line 172
    const-string v8, "READ_CALL_LOG"

    .line 173
    .line 174
    const-string v9, "WRITE_CALL_LOG"

    .line 175
    .line 176
    const-string v10, "READ_CALENDAR"

    .line 177
    .line 178
    const-string v11, "WRITE_CALENDAR"

    .line 179
    .line 180
    const-string v12, "WIFI_SCAN"

    .line 181
    .line 182
    const-string v13, "POST_NOTIFICATION"

    .line 183
    .line 184
    const-string v14, "NEIGHBORING_CELLS"

    .line 185
    .line 186
    const-string v15, "CALL_PHONE"

    .line 187
    .line 188
    const-string v16, "READ_SMS"

    .line 189
    .line 190
    const-string v17, "WRITE_SMS"

    .line 191
    .line 192
    const-string v18, "RECEIVE_SMS"

    .line 193
    .line 194
    const-string v19, "RECEIVE_EMERGECY_SMS"

    .line 195
    .line 196
    const-string v20, "RECEIVE_MMS"

    .line 197
    .line 198
    const-string v21, "RECEIVE_WAP_PUSH"

    .line 199
    .line 200
    const-string v22, "SEND_SMS"

    .line 201
    .line 202
    const-string v23, "READ_ICC_SMS"

    .line 203
    .line 204
    const-string v24, "WRITE_ICC_SMS"

    .line 205
    .line 206
    const-string v25, "WRITE_SETTINGS"

    .line 207
    .line 208
    const-string v26, "SYSTEM_ALERT_WINDOW"

    .line 209
    .line 210
    const-string v27, "ACCESS_NOTIFICATIONS"

    .line 211
    .line 212
    const-string v28, "CAMERA"

    .line 213
    .line 214
    const-string v29, "RECORD_AUDIO"

    .line 215
    .line 216
    const-string v30, "PLAY_AUDIO"

    .line 217
    .line 218
    const-string v31, "READ_CLIPBOARD"

    .line 219
    .line 220
    const-string v32, "WRITE_CLIPBOARD"

    .line 221
    .line 222
    const-string v33, "TAKE_MEDIA_BUTTONS"

    .line 223
    .line 224
    const-string v34, "TAKE_AUDIO_FOCUS"

    .line 225
    .line 226
    const-string v35, "AUDIO_MASTER_VOLUME"

    .line 227
    .line 228
    const-string v36, "AUDIO_VOICE_VOLUME"

    .line 229
    .line 230
    const-string v37, "AUDIO_RING_VOLUME"

    .line 231
    .line 232
    const-string v38, "AUDIO_MEDIA_VOLUME"

    .line 233
    .line 234
    const-string v39, "AUDIO_ALARM_VOLUME"

    .line 235
    .line 236
    const-string v40, "AUDIO_NOTIFICATION_VOLUME"

    .line 237
    .line 238
    const-string v41, "AUDIO_BLUETOOTH_VOLUME"

    .line 239
    .line 240
    const-string v42, "WAKE_LOCK"

    .line 241
    .line 242
    const-string v43, "MONITOR_LOCATION"

    .line 243
    .line 244
    const-string v44, "MONITOR_HIGH_POWER_LOCATION"

    .line 245
    .line 246
    const-string v45, "GET_USAGE_STATS"

    .line 247
    .line 248
    const-string v46, "MUTE_MICROPHONE"

    .line 249
    .line 250
    const-string v47, "TOAST_WINDOW"

    .line 251
    .line 252
    const-string v48, "PROJECT_MEDIA"

    .line 253
    .line 254
    const-string v49, "ACTIVATE_VPN"

    .line 255
    .line 256
    const-string v50, "WRITE_WALLPAPER"

    .line 257
    .line 258
    const-string v51, "ASSIST_STRUCTURE"

    .line 259
    .line 260
    const-string v52, "ASSIST_SCREENSHOT"

    .line 261
    .line 262
    const-string v53, "OP_READ_PHONE_STATE"

    .line 263
    .line 264
    const-string v54, "ADD_VOICEMAIL"

    .line 265
    .line 266
    const-string v55, "USE_SIP"

    .line 267
    .line 268
    const-string v56, "PROCESS_OUTGOING_CALLS"

    .line 269
    .line 270
    const-string v57, "USE_FINGERPRINT"

    .line 271
    .line 272
    const-string v58, "BODY_SENSORS"

    .line 273
    .line 274
    const-string v59, "READ_CELL_BROADCASTS"

    .line 275
    .line 276
    const-string v60, "MOCK_LOCATION"

    .line 277
    .line 278
    const-string v61, "READ_EXTERNAL_STORAGE"

    .line 279
    .line 280
    const-string v62, "WRITE_EXTERNAL_STORAGE"

    .line 281
    .line 282
    const-string v63, "TURN_ON_SCREEN"

    .line 283
    .line 284
    const-string v64, "GET_ACCOUNTS"

    .line 285
    .line 286
    const-string v65, "RUN_IN_BACKGROUND"

    .line 287
    .line 288
    const-string v66, "AUDIO_ACCESSIBILITY_VOLUME"

    .line 289
    .line 290
    const-string v67, "READ_PHONE_NUMBERS"

    .line 291
    .line 292
    const-string v68, "REQUEST_INSTALL_PACKAGES"

    .line 293
    .line 294
    const-string v69, "PICTURE_IN_PICTURE"

    .line 295
    .line 296
    const-string v70, "INSTANT_APP_START_FOREGROUND"

    .line 297
    .line 298
    const-string v71, "ANSWER_PHONE_CALLS"

    .line 299
    .line 300
    filled-new-array/range {v2 .. v71}, [Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 305
    .line 306
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 307
    .line 308
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 309
    .line 310
    const/4 v4, 0x0

    .line 311
    const-string v5, "android.permission.VIBRATE"

    .line 312
    .line 313
    const-string v6, "android.permission.READ_CONTACTS"

    .line 314
    .line 315
    const-string v7, "android.permission.WRITE_CONTACTS"

    .line 316
    .line 317
    const-string v8, "android.permission.READ_CALL_LOG"

    .line 318
    .line 319
    const-string v9, "android.permission.WRITE_CALL_LOG"

    .line 320
    .line 321
    const-string v10, "android.permission.READ_CALENDAR"

    .line 322
    .line 323
    const-string v11, "android.permission.WRITE_CALENDAR"

    .line 324
    .line 325
    const-string v12, "android.permission.ACCESS_WIFI_STATE"

    .line 326
    .line 327
    const/4 v13, 0x0

    .line 328
    move-object/from16 v83, v13

    .line 329
    .line 330
    const/4 v14, 0x0

    .line 331
    move-object/from16 v84, v14

    .line 332
    .line 333
    const-string v15, "android.permission.CALL_PHONE"

    .line 334
    .line 335
    const-string v16, "android.permission.READ_SMS"

    .line 336
    .line 337
    const/16 v17, 0x0

    .line 338
    .line 339
    const-string v18, "android.permission.RECEIVE_SMS"

    .line 340
    .line 341
    const-string v19, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 342
    .line 343
    const-string v20, "android.permission.RECEIVE_MMS"

    .line 344
    .line 345
    const-string v21, "android.permission.RECEIVE_WAP_PUSH"

    .line 346
    .line 347
    const-string v22, "android.permission.SEND_SMS"

    .line 348
    .line 349
    const-string v23, "android.permission.READ_SMS"

    .line 350
    .line 351
    const/16 v24, 0x0

    .line 352
    .line 353
    const-string v25, "android.permission.WRITE_SETTINGS"

    .line 354
    .line 355
    const-string v26, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 356
    .line 357
    const-string v27, "android.permission.ACCESS_NOTIFICATIONS"

    .line 358
    .line 359
    const-string v28, "android.permission.CAMERA"

    .line 360
    .line 361
    const-string v29, "android.permission.RECORD_AUDIO"

    .line 362
    .line 363
    const/16 v30, 0x0

    .line 364
    .line 365
    move-object/from16 v100, v30

    .line 366
    .line 367
    const/16 v31, 0x0

    .line 368
    .line 369
    move-object/from16 v101, v31

    .line 370
    .line 371
    const/16 v32, 0x0

    .line 372
    .line 373
    move-object/from16 v102, v32

    .line 374
    .line 375
    const/16 v33, 0x0

    .line 376
    .line 377
    move-object/from16 v103, v33

    .line 378
    .line 379
    const/16 v34, 0x0

    .line 380
    .line 381
    move-object/from16 v104, v34

    .line 382
    .line 383
    const/16 v35, 0x0

    .line 384
    .line 385
    const/16 v36, 0x0

    .line 386
    .line 387
    const/16 v37, 0x0

    .line 388
    .line 389
    const/16 v38, 0x0

    .line 390
    .line 391
    const/16 v39, 0x0

    .line 392
    .line 393
    const/16 v40, 0x0

    .line 394
    .line 395
    const/16 v41, 0x0

    .line 396
    .line 397
    const-string v42, "android.permission.WAKE_LOCK"

    .line 398
    .line 399
    const/16 v43, 0x0

    .line 400
    .line 401
    const/16 v44, 0x0

    .line 402
    .line 403
    const-string v45, "android.permission.PACKAGE_USAGE_STATS"

    .line 404
    .line 405
    const/16 v46, 0x0

    .line 406
    .line 407
    const/16 v47, 0x0

    .line 408
    .line 409
    const/16 v48, 0x0

    .line 410
    .line 411
    move-object/from16 v118, v48

    .line 412
    .line 413
    const/16 v49, 0x0

    .line 414
    .line 415
    move-object/from16 v119, v49

    .line 416
    .line 417
    const/16 v50, 0x0

    .line 418
    .line 419
    const/16 v51, 0x0

    .line 420
    .line 421
    move-object/from16 v121, v51

    .line 422
    .line 423
    const/16 v52, 0x0

    .line 424
    .line 425
    move-object/from16 v122, v52

    .line 426
    .line 427
    const-string v53, "android.permission.READ_PHONE_STATE"

    .line 428
    .line 429
    const-string v54, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 430
    .line 431
    const-string v55, "android.permission.USE_SIP"

    .line 432
    .line 433
    const-string v56, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 434
    .line 435
    const-string v57, "android.permission.USE_FINGERPRINT"

    .line 436
    .line 437
    const-string v58, "android.permission.BODY_SENSORS"

    .line 438
    .line 439
    const-string v59, "android.permission.READ_CELL_BROADCASTS"

    .line 440
    .line 441
    const/16 v60, 0x0

    .line 442
    .line 443
    move-object/from16 v130, v60

    .line 444
    .line 445
    const-string v61, "android.permission.READ_EXTERNAL_STORAGE"

    .line 446
    .line 447
    const-string v62, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 448
    .line 449
    const/16 v63, 0x0

    .line 450
    .line 451
    move-object/from16 v133, v63

    .line 452
    .line 453
    const-string v64, "android.permission.GET_ACCOUNTS"

    .line 454
    .line 455
    const/16 v65, 0x0

    .line 456
    .line 457
    move-object/from16 v135, v65

    .line 458
    .line 459
    const/16 v66, 0x0

    .line 460
    .line 461
    const-string v67, "android.permission.READ_PHONE_NUMBERS"

    .line 462
    .line 463
    const-string v68, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 464
    .line 465
    const/16 v69, 0x0

    .line 466
    .line 467
    move-object/from16 v139, v69

    .line 468
    .line 469
    const-string v70, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    .line 470
    .line 471
    const-string v71, "android.permission.ANSWER_PHONE_CALLS"

    .line 472
    .line 473
    filled-new-array/range {v2 .. v71}, [Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 478
    .line 479
    const-string/jumbo v72, "no_share_location"

    .line 480
    .line 481
    .line 482
    const-string/jumbo v73, "no_share_location"

    .line 483
    .line 484
    .line 485
    const-string/jumbo v74, "no_share_location"

    .line 486
    .line 487
    .line 488
    const/16 v75, 0x0

    .line 489
    .line 490
    const/16 v76, 0x0

    .line 491
    .line 492
    const/16 v77, 0x0

    .line 493
    .line 494
    const-string/jumbo v78, "no_outgoing_calls"

    .line 495
    .line 496
    .line 497
    const-string/jumbo v79, "no_outgoing_calls"

    .line 498
    .line 499
    .line 500
    const/16 v80, 0x0

    .line 501
    .line 502
    const/16 v81, 0x0

    .line 503
    .line 504
    const-string/jumbo v82, "no_share_location"

    .line 505
    .line 506
    .line 507
    const/16 v85, 0x0

    .line 508
    .line 509
    const-string/jumbo v86, "no_sms"

    .line 510
    .line 511
    .line 512
    const-string/jumbo v87, "no_sms"

    .line 513
    .line 514
    .line 515
    const-string/jumbo v88, "no_sms"

    .line 516
    .line 517
    .line 518
    const/16 v89, 0x0

    .line 519
    .line 520
    const-string/jumbo v90, "no_sms"

    .line 521
    .line 522
    .line 523
    const/16 v91, 0x0

    .line 524
    .line 525
    const-string/jumbo v92, "no_sms"

    .line 526
    .line 527
    .line 528
    const-string/jumbo v93, "no_sms"

    .line 529
    .line 530
    .line 531
    const-string/jumbo v94, "no_sms"

    .line 532
    .line 533
    .line 534
    const/16 v95, 0x0

    .line 535
    .line 536
    const-string/jumbo v96, "no_create_windows"

    .line 537
    .line 538
    .line 539
    const/16 v97, 0x0

    .line 540
    .line 541
    const-string/jumbo v98, "no_camera"

    .line 542
    .line 543
    .line 544
    const-string/jumbo v99, "no_record_audio"

    .line 545
    .line 546
    .line 547
    const-string/jumbo v105, "no_adjust_volume"

    .line 548
    .line 549
    .line 550
    const-string/jumbo v106, "no_adjust_volume"

    .line 551
    .line 552
    .line 553
    const-string/jumbo v107, "no_adjust_volume"

    .line 554
    .line 555
    .line 556
    const-string/jumbo v108, "no_adjust_volume"

    .line 557
    .line 558
    .line 559
    const-string/jumbo v109, "no_adjust_volume"

    .line 560
    .line 561
    .line 562
    const-string/jumbo v110, "no_adjust_volume"

    .line 563
    .line 564
    .line 565
    const-string/jumbo v111, "no_adjust_volume"

    .line 566
    .line 567
    .line 568
    const/16 v112, 0x0

    .line 569
    .line 570
    const-string/jumbo v113, "no_share_location"

    .line 571
    .line 572
    .line 573
    const-string/jumbo v114, "no_share_location"

    .line 574
    .line 575
    .line 576
    const/16 v115, 0x0

    .line 577
    .line 578
    const-string/jumbo v116, "no_unmute_microphone"

    .line 579
    .line 580
    .line 581
    const-string/jumbo v117, "no_create_windows"

    .line 582
    .line 583
    .line 584
    const-string/jumbo v120, "no_wallpaper"

    .line 585
    .line 586
    .line 587
    const/16 v123, 0x0

    .line 588
    .line 589
    const/16 v124, 0x0

    .line 590
    .line 591
    const/16 v125, 0x0

    .line 592
    .line 593
    const/16 v126, 0x0

    .line 594
    .line 595
    const/16 v127, 0x0

    .line 596
    .line 597
    const/16 v128, 0x0

    .line 598
    .line 599
    const/16 v129, 0x0

    .line 600
    .line 601
    const/16 v131, 0x0

    .line 602
    .line 603
    const/16 v132, 0x0

    .line 604
    .line 605
    const/16 v134, 0x0

    .line 606
    .line 607
    const-string/jumbo v136, "no_adjust_volume"

    .line 608
    .line 609
    .line 610
    const/16 v137, 0x0

    .line 611
    .line 612
    const/16 v138, 0x0

    .line 613
    .line 614
    const/16 v140, 0x0

    .line 615
    .line 616
    const/16 v141, 0x0

    .line 617
    .line 618
    filled-new-array/range {v72 .. v141}, [Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    sput-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 623
    .line 624
    new-array v1, v0, [Z

    .line 625
    .line 626
    fill-array-data v1, :array_2

    .line 627
    .line 628
    .line 629
    sput-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 630
    .line 631
    new-array v1, v0, [I

    .line 632
    .line 633
    fill-array-data v1, :array_3

    .line 634
    .line 635
    .line 636
    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 637
    .line 638
    new-array v1, v0, [Z

    .line 639
    .line 640
    fill-array-data v1, :array_4

    .line 641
    .line 642
    .line 643
    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 644
    .line 645
    new-instance v1, Ljava/util/HashMap;

    .line 646
    .line 647
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 648
    .line 649
    .line 650
    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 651
    .line 652
    new-instance v1, Ljava/util/HashMap;

    .line 653
    .line 654
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 655
    .line 656
    .line 657
    sput-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 658
    .line 659
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 660
    .line 661
    invoke-static {v1, v0}, Landroid/app/AppOpsManagerWrapper;->addItem([II)[I

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    sput-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 666
    .line 667
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 668
    .line 669
    const/4 v1, 0x0

    .line 670
    invoke-static {v0, v1}, Landroid/app/AppOpsManagerWrapper;->addItem([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    sput-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 675
    .line 676
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 677
    .line 678
    const-string v2, "POST_AUTORUN"

    .line 679
    .line 680
    invoke-static {v0, v2}, Landroid/app/AppOpsManagerWrapper;->addItem([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    sput-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 685
    .line 686
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 687
    .line 688
    invoke-static {v0, v1}, Landroid/app/AppOpsManagerWrapper;->addItem([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    sput-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 693
    .line 694
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 695
    .line 696
    invoke-static {v0, v1}, Landroid/app/AppOpsManagerWrapper;->addItem([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    sput-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 701
    .line 702
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 703
    .line 704
    const/4 v1, 0x0

    .line 705
    invoke-static {v0, v1}, Landroid/app/AppOpsManagerWrapper;->addItem([ZZ)[Z

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    sput-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 710
    .line 711
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 712
    .line 713
    invoke-static {v0, v1}, Landroid/app/AppOpsManagerWrapper;->addItem([II)[I

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    sput-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 718
    .line 719
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 720
    .line 721
    invoke-static {v0, v1}, Landroid/app/AppOpsManagerWrapper;->addItem([ZZ)[Z

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    sput-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 726
    .line 727
    sget-object v2, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 728
    .line 729
    array-length v2, v2

    .line 730
    const-string v3, " should be 71"

    .line 731
    .line 732
    const/16 v4, 0x47

    .line 733
    .line 734
    if-ne v2, v4, :cond_b

    .line 735
    .line 736
    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 737
    .line 738
    array-length v2, v2

    .line 739
    if-ne v2, v4, :cond_a

    .line 740
    .line 741
    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 742
    .line 743
    array-length v2, v2

    .line 744
    if-ne v2, v4, :cond_9

    .line 745
    .line 746
    sget-object v2, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 747
    .line 748
    array-length v2, v2

    .line 749
    if-ne v2, v4, :cond_8

    .line 750
    .line 751
    sget-object v2, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 752
    .line 753
    array-length v2, v2

    .line 754
    if-ne v2, v4, :cond_7

    .line 755
    .line 756
    array-length v0, v0

    .line 757
    if-ne v0, v4, :cond_6

    .line 758
    .line 759
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 760
    .line 761
    array-length v0, v0

    .line 762
    if-ne v0, v4, :cond_5

    .line 763
    .line 764
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 765
    .line 766
    array-length v0, v0

    .line 767
    if-ne v0, v4, :cond_4

    .line 768
    .line 769
    move v0, v1

    .line 770
    :goto_0
    if-ge v0, v4, :cond_1

    .line 771
    .line 772
    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 773
    .line 774
    aget-object v2, v2, v0

    .line 775
    .line 776
    if-eqz v2, :cond_0

    .line 777
    .line 778
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 779
    .line 780
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 781
    .line 782
    .line 783
    move-result-object v5

    .line 784
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 788
    .line 789
    goto :goto_0

    .line 790
    :cond_1
    sget-object v0, Landroid/app/AppOpsManager;->RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

    .line 791
    .line 792
    array-length v2, v0

    .line 793
    :goto_1
    if-ge v1, v2, :cond_3

    .line 794
    .line 795
    aget v3, v0, v1

    .line 796
    .line 797
    sget-object v4, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 798
    .line 799
    aget-object v4, v4, v3

    .line 800
    .line 801
    if-eqz v4, :cond_2

    .line 802
    .line 803
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 804
    .line 805
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 813
    .line 814
    goto :goto_1

    .line 815
    :cond_3
    return-void

    .line 816
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 817
    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    .line 819
    .line 820
    const-string/jumbo v2, "sOpAllowSYstemRestrictionsBypass length "

    .line 821
    .line 822
    .line 823
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    sget-object v2, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 827
    .line 828
    array-length v2, v2

    .line 829
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    throw v0

    .line 837
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 838
    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    .line 840
    .line 841
    const-string/jumbo v2, "sOpRestrictions length "

    .line 842
    .line 843
    .line 844
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    sget-object v2, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 848
    .line 849
    array-length v2, v2

    .line 850
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    throw v0

    .line 858
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 859
    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    const-string/jumbo v2, "sOpDisableReset length "

    .line 863
    .line 864
    .line 865
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    sget-object v2, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 869
    .line 870
    array-length v2, v2

    .line 871
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    throw v0

    .line 879
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 880
    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    const-string/jumbo v2, "sOpDefaultMode length "

    .line 884
    .line 885
    .line 886
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    sget-object v2, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 890
    .line 891
    array-length v2, v2

    .line 892
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    throw v0

    .line 900
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 901
    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    .line 903
    .line 904
    const-string/jumbo v2, "sOpPerms length "

    .line 905
    .line 906
    .line 907
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    sget-object v2, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 911
    .line 912
    array-length v2, v2

    .line 913
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    throw v0

    .line 921
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 922
    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    .line 924
    .line 925
    const-string/jumbo v2, "sOpNames length "

    .line 926
    .line 927
    .line 928
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 932
    .line 933
    array-length v2, v2

    .line 934
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    throw v0

    .line 942
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 943
    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    .line 945
    .line 946
    const-string/jumbo v2, "sOpToString length "

    .line 947
    .line 948
    .line 949
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 953
    .line 954
    array-length v2, v2

    .line 955
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    throw v0

    .line 963
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 964
    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    .line 966
    .line 967
    const-string/jumbo v2, "sOpToSwitch length "

    .line 968
    .line 969
    .line 970
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    sget-object v2, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 974
    .line 975
    array-length v2, v2

    .line 976
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v1

    .line 980
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    throw v0

    .line 984
    nop

    .line 985
    :array_0
    .array-data 4
        0x4
        0x5
        0x3e
        0x8
        0x9
        0x14
        0x10
        0xe
        0x13
        0x12
        0x39
        0x3b
        0x3c
        0x0
        0x1
        0x33
        0x41
        0xd
        0x6
        0x7
        0x34
        0x35
        0x36
        0x45
        0x1b
        0x1a
        0x38
        0x19
        0x18
        0x17
        0x42
    .end array-data

    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x12
        0x13
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
    .end array-data

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    :array_2
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    nop

    .line 1235
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x3
        0x0
    .end array-data

    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " from uid "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not allowed to perform "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 2

    .line 1
    const-class v0, Landroid/app/AppOpsManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Binder;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sput-object p0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    :try_start_2
    monitor-exit v0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    throw p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p0
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean p0, v0, p0

    return p0
.end method

.method public static opAllowsReset(I)Z
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean p0, v0, p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static opToDefaultMode(I)I
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget p0, v0, p0

    return p0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "NONE"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-ge p0, v1, :cond_1

    .line 11
    .line 12
    aget-object p0, v0, p0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "Unknown("

    .line 16
    .line 17
    const-string v1, ")"

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    return-object p0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static opToSwitch(I)I
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget p0, v0, p0

    return p0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    aget-object p0, v0, p0

    .line 20
    .line 21
    return-object p0
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    :goto_0
    return p0
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, "Unknown operation string: "

    .line 22
    .line 23
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Unknown operation string: "

    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    return p2

    .line 11
    :cond_0
    new-instance p2, Ljava/lang/SecurityException;

    .line 12
    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    throw p1
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    throw p1
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Package "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 4
    .line 5
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, " does not belong to "

    .line 23
    .line 24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    throw p1
.end method

.method public finishOp(I)V
    .locals 2

    .line 4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    throw p1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    throw p1
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->isOperationActive(IILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    throw p1
.end method

.method public noteOp(I)I
    .locals 2

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 4

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Proxy package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or calling package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not allowed to perform "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteProxyOpNoThrow(ILjava/lang/String;)I
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4
    invoke-interface {v0, p1, v1, v2, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public resetAllModes()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    throw v0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 6
    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v4, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    throw p1
.end method

.method public setUidMode(III)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setUidMode(Ljava/lang/String;II)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;[Ljava/lang/String;)V

    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7

    .line 2
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    return-void
.end method

.method public setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p5

    .line 7
    move-object v5, p4

    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    throw p1
.end method

.method public startOp(I)I
    .locals 2

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/app/AppOpsManager$1;

    invoke-direct {v1, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 5
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    :try_start_1
    iget-object p3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {p3, p1, p2, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    throw p1
.end method
