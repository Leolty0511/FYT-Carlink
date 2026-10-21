.class public final enum Lcom/google/android/projection/proto/Protos$MediaMessageId;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaMessageId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$MediaMessageId;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final enum MEDIA_MESSAGE_ACK:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_ACK_VALUE:I = 0x8004

.field public static final enum MEDIA_MESSAGE_ACTION_TAKEN_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_ACTION_TAKEN_NOTIFICATION_VALUE:I = 0x800c

.field public static final enum MEDIA_MESSAGE_AUDIO_UNDERFLOW_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_AUDIO_UNDERFLOW_NOTIFICATION_VALUE:I = 0x800b

.field public static final enum MEDIA_MESSAGE_CODEC_CONFIG:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_CODEC_CONFIG_VALUE:I = 0x1

.field public static final enum MEDIA_MESSAGE_CONFIG:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_CONFIG_VALUE:I = 0x8003

.field public static final enum MEDIA_MESSAGE_DATA:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_DATA_VALUE:I = 0x0

.field public static final enum MEDIA_MESSAGE_MICROPHONE_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_MICROPHONE_REQUEST_VALUE:I = 0x8005

.field public static final enum MEDIA_MESSAGE_MICROPHONE_RESPONSE:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_MICROPHONE_RESPONSE_VALUE:I = 0x8006

.field public static final enum MEDIA_MESSAGE_SETUP:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_SETUP_VALUE:I = 0x8000

.field public static final enum MEDIA_MESSAGE_START:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_START_VALUE:I = 0x8001

.field public static final enum MEDIA_MESSAGE_STOP:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_STOP_VALUE:I = 0x8002

.field public static final enum MEDIA_MESSAGE_UPDATE_UI_CONFIG_REPLY:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_UPDATE_UI_CONFIG_REPLY_VALUE:I = 0x800a

.field public static final enum MEDIA_MESSAGE_UPDATE_UI_CONFIG_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_UPDATE_UI_CONFIG_REQUEST_VALUE:I = 0x8009

.field public static final enum MEDIA_MESSAGE_VIDEO_FOCUS_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_VIDEO_FOCUS_NOTIFICATION_VALUE:I = 0x8008

.field public static final enum MEDIA_MESSAGE_VIDEO_FOCUS_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field public static final MEDIA_MESSAGE_VIDEO_FOCUS_REQUEST_VALUE:I = 0x8007

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$MediaMessageId;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$MediaMessageId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$MediaMessageId;
    .locals 3

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_DATA:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_CODEC_CONFIG:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_SETUP:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_START:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_STOP:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_CONFIG:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_ACK:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_MICROPHONE_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_MICROPHONE_RESPONSE:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_VIDEO_FOCUS_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_VIDEO_FOCUS_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_UPDATE_UI_CONFIG_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0xc

    .line 70
    .line 71
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_UPDATE_UI_CONFIG_REPLY:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    const/16 v1, 0xd

    .line 76
    .line 77
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_AUDIO_UNDERFLOW_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 78
    .line 79
    aput-object v2, v0, v1

    .line 80
    .line 81
    const/16 v1, 0xe

    .line 82
    .line 83
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_ACTION_TAKEN_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 84
    .line 85
    aput-object v2, v0, v1

    .line 86
    .line 87
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 2
    .line 3
    const-string v1, "MEDIA_MESSAGE_DATA"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_DATA:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 12
    .line 13
    const-string v1, "MEDIA_MESSAGE_CODEC_CONFIG"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_CODEC_CONFIG:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    const v2, 0x8000

    .line 25
    .line 26
    .line 27
    const-string v3, "MEDIA_MESSAGE_SETUP"

    .line 28
    .line 29
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_SETUP:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    const v2, 0x8001

    .line 38
    .line 39
    .line 40
    const-string v3, "MEDIA_MESSAGE_START"

    .line 41
    .line 42
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_START:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 46
    .line 47
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    const v2, 0x8002

    .line 51
    .line 52
    .line 53
    const-string v3, "MEDIA_MESSAGE_STOP"

    .line 54
    .line 55
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_STOP:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 59
    .line 60
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    const v2, 0x8003

    .line 64
    .line 65
    .line 66
    const-string v3, "MEDIA_MESSAGE_CONFIG"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_CONFIG:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 72
    .line 73
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const v2, 0x8004

    .line 77
    .line 78
    .line 79
    const-string v3, "MEDIA_MESSAGE_ACK"

    .line 80
    .line 81
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_ACK:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 85
    .line 86
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 87
    .line 88
    const/4 v1, 0x7

    .line 89
    const v2, 0x8005

    .line 90
    .line 91
    .line 92
    const-string v3, "MEDIA_MESSAGE_MICROPHONE_REQUEST"

    .line 93
    .line 94
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_MICROPHONE_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 98
    .line 99
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 100
    .line 101
    const/16 v1, 0x8

    .line 102
    .line 103
    const v2, 0x8006

    .line 104
    .line 105
    .line 106
    const-string v3, "MEDIA_MESSAGE_MICROPHONE_RESPONSE"

    .line 107
    .line 108
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_MICROPHONE_RESPONSE:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 112
    .line 113
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 114
    .line 115
    const/16 v1, 0x9

    .line 116
    .line 117
    const v2, 0x8007

    .line 118
    .line 119
    .line 120
    const-string v3, "MEDIA_MESSAGE_VIDEO_FOCUS_REQUEST"

    .line 121
    .line 122
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_VIDEO_FOCUS_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 126
    .line 127
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 128
    .line 129
    const/16 v1, 0xa

    .line 130
    .line 131
    const v2, 0x8008

    .line 132
    .line 133
    .line 134
    const-string v3, "MEDIA_MESSAGE_VIDEO_FOCUS_NOTIFICATION"

    .line 135
    .line 136
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 137
    .line 138
    .line 139
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_VIDEO_FOCUS_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 140
    .line 141
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 142
    .line 143
    const/16 v1, 0xb

    .line 144
    .line 145
    const v2, 0x8009

    .line 146
    .line 147
    .line 148
    const-string v3, "MEDIA_MESSAGE_UPDATE_UI_CONFIG_REQUEST"

    .line 149
    .line 150
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_UPDATE_UI_CONFIG_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 154
    .line 155
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 156
    .line 157
    const/16 v1, 0xc

    .line 158
    .line 159
    const v2, 0x800a

    .line 160
    .line 161
    .line 162
    const-string v3, "MEDIA_MESSAGE_UPDATE_UI_CONFIG_REPLY"

    .line 163
    .line 164
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_UPDATE_UI_CONFIG_REPLY:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 168
    .line 169
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 170
    .line 171
    const/16 v1, 0xd

    .line 172
    .line 173
    const v2, 0x800b

    .line 174
    .line 175
    .line 176
    const-string v3, "MEDIA_MESSAGE_AUDIO_UNDERFLOW_NOTIFICATION"

    .line 177
    .line 178
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 179
    .line 180
    .line 181
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_AUDIO_UNDERFLOW_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 182
    .line 183
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 184
    .line 185
    const/16 v1, 0xe

    .line 186
    .line 187
    const v2, 0x800c

    .line 188
    .line 189
    .line 190
    const-string v3, "MEDIA_MESSAGE_ACTION_TAKEN_NOTIFICATION"

    .line 191
    .line 192
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$MediaMessageId;-><init>(Ljava/lang/String;II)V

    .line 193
    .line 194
    .line 195
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_ACTION_TAKEN_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 196
    .line 197
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaMessageId;->$values()[Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->$VALUES:[Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 202
    .line 203
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaMessageId$1;

    .line 204
    .line 205
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$MediaMessageId$1;-><init>()V

    .line 206
    .line 207
    .line 208
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 209
    .line 210
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaMessageId;->values()[Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->VALUES:[Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 215
    .line 216
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$MediaMessageId;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_ACTION_TAKEN_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_AUDIO_UNDERFLOW_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_UPDATE_UI_CONFIG_REPLY:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_UPDATE_UI_CONFIG_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_VIDEO_FOCUS_NOTIFICATION:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_VIDEO_FOCUS_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_MICROPHONE_RESPONSE:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_MICROPHONE_REQUEST:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_8
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_ACK:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_9
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_CONFIG:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_a
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_STOP:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_b
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_START:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_c
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_SETUP:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_CODEC_CONFIG:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->MEDIA_MESSAGE_DATA:Lcom/google/android/projection/proto/Protos$MediaMessageId;

    .line 54
    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x8000
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

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    invoke-static {v0}, Landroid/renderscript/a;->j(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 8
    .line 9
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$MediaMessageId;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$MediaMessageId;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$MediaMessageId;->forNumber(I)Lcom/google/android/projection/proto/Protos$MediaMessageId;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$MediaMessageId;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaMessageId;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->VALUES:[Lcom/google/android/projection/proto/Protos$MediaMessageId;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$MediaMessageId;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$MediaMessageId;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->$VALUES:[Lcom/google/android/projection/proto/Protos$MediaMessageId;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$MediaMessageId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$MediaMessageId;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaMessageId;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaMessageId;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaMessageId;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
