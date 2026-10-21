.class public final enum Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;
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
    name = "GalVerificationVendorExtensionMessageId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final enum GAL_VERIFICATION_AUDIO_FOCUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_AUDIO_FOCUS_VALUE:I = 0x8004

.field public static final enum GAL_VERIFICATION_BUG_REPORT_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_BUG_REPORT_REQUEST_VALUE:I = 0x8006

.field public static final enum GAL_VERIFICATION_BUG_REPORT_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_BUG_REPORT_RESPONSE_VALUE:I = 0x8007

.field public static final enum GAL_VERIFICATION_DISPLAY_INFORMATION_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_DISPLAY_INFORMATION_REQUEST_VALUE:I = 0x800a

.field public static final enum GAL_VERIFICATION_DISPLAY_INFORMATION_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_DISPLAY_INFORMATION_RESPONSE_VALUE:I = 0x800b

.field public static final enum GAL_VERIFICATION_INJECT_INPUT:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_INJECT_INPUT_VALUE:I = 0x8005

.field public static final enum GAL_VERIFICATION_MEDIA_SINK_STATUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_MEDIA_SINK_STATUS_VALUE:I = 0x8002

.field public static final enum GAL_VERIFICATION_SCREEN_CAPTURE_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_SCREEN_CAPTURE_REQUEST_VALUE:I = 0x8008

.field public static final enum GAL_VERIFICATION_SCREEN_CAPTURE_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_SCREEN_CAPTURE_RESPONSE_VALUE:I = 0x8009

.field public static final enum GAL_VERIFICATION_SET_SENSOR:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_SET_SENSOR_VALUE:I = 0x8001

.field public static final enum GAL_VERIFICATION_VIDEO_FOCUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field public static final GAL_VERIFICATION_VIDEO_FOCUS_VALUE:I = 0x8003

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;
    .locals 3

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_SET_SENSOR:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_MEDIA_SINK_STATUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_VIDEO_FOCUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_AUDIO_FOCUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_INJECT_INPUT:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_BUG_REPORT_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_BUG_REPORT_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_SCREEN_CAPTURE_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_SCREEN_CAPTURE_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_DISPLAY_INFORMATION_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_DISPLAY_INFORMATION_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x8001

    .line 5
    .line 6
    .line 7
    const-string v3, "GAL_VERIFICATION_SET_SENSOR"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_SET_SENSOR:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const v2, 0x8002

    .line 18
    .line 19
    .line 20
    const-string v3, "GAL_VERIFICATION_MEDIA_SINK_STATUS"

    .line 21
    .line 22
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_MEDIA_SINK_STATUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 26
    .line 27
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    const v2, 0x8003

    .line 31
    .line 32
    .line 33
    const-string v3, "GAL_VERIFICATION_VIDEO_FOCUS"

    .line 34
    .line 35
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_VIDEO_FOCUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    const v2, 0x8004

    .line 44
    .line 45
    .line 46
    const-string v3, "GAL_VERIFICATION_AUDIO_FOCUS"

    .line 47
    .line 48
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_AUDIO_FOCUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 52
    .line 53
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    const v2, 0x8005

    .line 57
    .line 58
    .line 59
    const-string v3, "GAL_VERIFICATION_INJECT_INPUT"

    .line 60
    .line 61
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_INJECT_INPUT:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 65
    .line 66
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 67
    .line 68
    const/4 v1, 0x5

    .line 69
    const v2, 0x8006

    .line 70
    .line 71
    .line 72
    const-string v3, "GAL_VERIFICATION_BUG_REPORT_REQUEST"

    .line 73
    .line 74
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_BUG_REPORT_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 78
    .line 79
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 80
    .line 81
    const/4 v1, 0x6

    .line 82
    const v2, 0x8007

    .line 83
    .line 84
    .line 85
    const-string v3, "GAL_VERIFICATION_BUG_REPORT_RESPONSE"

    .line 86
    .line 87
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_BUG_REPORT_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 91
    .line 92
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 93
    .line 94
    const/4 v1, 0x7

    .line 95
    const v2, 0x8008

    .line 96
    .line 97
    .line 98
    const-string v3, "GAL_VERIFICATION_SCREEN_CAPTURE_REQUEST"

    .line 99
    .line 100
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_SCREEN_CAPTURE_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 104
    .line 105
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 106
    .line 107
    const/16 v1, 0x8

    .line 108
    .line 109
    const v2, 0x8009

    .line 110
    .line 111
    .line 112
    const-string v3, "GAL_VERIFICATION_SCREEN_CAPTURE_RESPONSE"

    .line 113
    .line 114
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_SCREEN_CAPTURE_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 118
    .line 119
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 120
    .line 121
    const/16 v1, 0x9

    .line 122
    .line 123
    const v2, 0x800a

    .line 124
    .line 125
    .line 126
    const-string v3, "GAL_VERIFICATION_DISPLAY_INFORMATION_REQUEST"

    .line 127
    .line 128
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 129
    .line 130
    .line 131
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_DISPLAY_INFORMATION_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 132
    .line 133
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 134
    .line 135
    const/16 v1, 0xa

    .line 136
    .line 137
    const v2, 0x800b

    .line 138
    .line 139
    .line 140
    const-string v3, "GAL_VERIFICATION_DISPLAY_INFORMATION_RESPONSE"

    .line 141
    .line 142
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_DISPLAY_INFORMATION_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 146
    .line 147
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->$values()[Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->$VALUES:[Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 152
    .line 153
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId$1;

    .line 154
    .line 155
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId$1;-><init>()V

    .line 156
    .line 157
    .line 158
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 159
    .line 160
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->values()[Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sput-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->VALUES:[Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 165
    .line 166
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_DISPLAY_INFORMATION_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_DISPLAY_INFORMATION_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_SCREEN_CAPTURE_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_SCREEN_CAPTURE_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_BUG_REPORT_RESPONSE:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_BUG_REPORT_REQUEST:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_INJECT_INPUT:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_AUDIO_FOCUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_VIDEO_FOCUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_MEDIA_SINK_STATUS:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->GAL_VERIFICATION_SET_SENSOR:Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x8001
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
    const/16 v0, 0x32

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
            "Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->forNumber(I)Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->VALUES:[Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->$VALUES:[Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GalVerificationVendorExtensionMessageId;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
