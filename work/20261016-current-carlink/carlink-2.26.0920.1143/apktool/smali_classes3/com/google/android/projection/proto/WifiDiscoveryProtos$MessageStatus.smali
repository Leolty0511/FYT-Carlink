.class public final enum Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/WifiDiscoveryProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final enum STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE_VALUE:I = -0x9

.field public static final enum STATUS_INVALID_HOST:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_INVALID_HOST_VALUE:I = -0x7

.field public static final enum STATUS_NO_COMPATIBLE_VERSION:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_NO_COMPATIBLE_VERSION_VALUE:I = -0x1

.field public static final enum STATUS_NO_SUPPORTED_WIFI_CHANNELS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_NO_SUPPORTED_WIFI_CHANNELS_VALUE:I = -0x8

.field public static final enum STATUS_PHONE_WIFI_DISABLED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_PHONE_WIFI_DISABLED_VALUE:I = -0xa

.field public static final enum STATUS_PROJECTION_ALREADY_STARTED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_PROJECTION_ALREADY_STARTED_VALUE:I = -0x4

.field public static final enum STATUS_SUCCESS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_SUCCESS_VALUE:I = 0x0

.field public static final enum STATUS_UNSOLICITED_MESSAGE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_UNSOLICITED_MESSAGE_VALUE:I = 0x1

.field public static final enum STATUS_WIFI_DISABLED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_WIFI_DISABLED_VALUE:I = -0x5

.field public static final enum STATUS_WIFI_INACCESSIBLE_CHANNEL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_WIFI_INACCESSIBLE_CHANNEL_VALUE:I = -0x2

.field public static final enum STATUS_WIFI_INCORRECT_CREDENTIALS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_WIFI_INCORRECT_CREDENTIALS_VALUE:I = -0x3

.field public static final enum STATUS_WIFI_NETWORK_UNAVAILABLE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_WIFI_NETWORK_UNAVAILABLE_VALUE:I = -0xb

.field public static final enum STATUS_WIFI_NOT_YET_STARTED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field public static final STATUS_WIFI_NOT_YET_STARTED_VALUE:I = -0x6

.field private static final VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;
    .locals 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_UNSOLICITED_MESSAGE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_NO_COMPATIBLE_VERSION:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_INACCESSIBLE_CHANNEL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_INCORRECT_CREDENTIALS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_PROJECTION_ALREADY_STARTED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_DISABLED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_NOT_YET_STARTED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_INVALID_HOST:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_NO_SUPPORTED_WIFI_CHANNELS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_PHONE_WIFI_DISABLED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0xc

    .line 70
    .line 71
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_NETWORK_UNAVAILABLE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 2
    .line 3
    const-string v1, "STATUS_UNSOLICITED_MESSAGE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_UNSOLICITED_MESSAGE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 13
    .line 14
    const-string v1, "STATUS_SUCCESS"

    .line 15
    .line 16
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, -0x1

    .line 25
    const-string v3, "STATUS_NO_COMPATIBLE_VERSION"

    .line 26
    .line 27
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_NO_COMPATIBLE_VERSION:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    const/4 v2, -0x2

    .line 36
    const-string v3, "STATUS_WIFI_INACCESSIBLE_CHANNEL"

    .line 37
    .line 38
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_INACCESSIBLE_CHANNEL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 42
    .line 43
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    const/4 v2, -0x3

    .line 47
    const-string v3, "STATUS_WIFI_INCORRECT_CREDENTIALS"

    .line 48
    .line 49
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_INCORRECT_CREDENTIALS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 53
    .line 54
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    const/4 v2, -0x4

    .line 58
    const-string v3, "STATUS_PROJECTION_ALREADY_STARTED"

    .line 59
    .line 60
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_PROJECTION_ALREADY_STARTED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 64
    .line 65
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 66
    .line 67
    const/4 v1, 0x6

    .line 68
    const/4 v2, -0x5

    .line 69
    const-string v3, "STATUS_WIFI_DISABLED"

    .line 70
    .line 71
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_DISABLED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 75
    .line 76
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 77
    .line 78
    const/4 v1, 0x7

    .line 79
    const/4 v2, -0x6

    .line 80
    const-string v3, "STATUS_WIFI_NOT_YET_STARTED"

    .line 81
    .line 82
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_NOT_YET_STARTED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 86
    .line 87
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 88
    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    const/4 v2, -0x7

    .line 92
    const-string v3, "STATUS_INVALID_HOST"

    .line 93
    .line 94
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_INVALID_HOST:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 98
    .line 99
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 100
    .line 101
    const/16 v1, 0x9

    .line 102
    .line 103
    const/4 v2, -0x8

    .line 104
    const-string v3, "STATUS_NO_SUPPORTED_WIFI_CHANNELS"

    .line 105
    .line 106
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_NO_SUPPORTED_WIFI_CHANNELS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 110
    .line 111
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 112
    .line 113
    const/16 v1, 0xa

    .line 114
    .line 115
    const/16 v2, -0x9

    .line 116
    .line 117
    const-string v3, "STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE"

    .line 118
    .line 119
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 120
    .line 121
    .line 122
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 123
    .line 124
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 125
    .line 126
    const/16 v1, 0xb

    .line 127
    .line 128
    const/16 v2, -0xa

    .line 129
    .line 130
    const-string v3, "STATUS_PHONE_WIFI_DISABLED"

    .line 131
    .line 132
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_PHONE_WIFI_DISABLED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 136
    .line 137
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 138
    .line 139
    const/16 v1, 0xc

    .line 140
    .line 141
    const/16 v2, -0xb

    .line 142
    .line 143
    const-string v3, "STATUS_WIFI_NETWORK_UNAVAILABLE"

    .line 144
    .line 145
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;-><init>(Ljava/lang/String;II)V

    .line 146
    .line 147
    .line 148
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_NETWORK_UNAVAILABLE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 149
    .line 150
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->$values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->$VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 155
    .line 156
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus$1;

    .line 157
    .line 158
    invoke-direct {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus$1;-><init>()V

    .line 159
    .line 160
    .line 161
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 162
    .line 163
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 168
    .line 169
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
    iput p3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;
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
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_UNSOLICITED_MESSAGE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_NO_COMPATIBLE_VERSION:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_INACCESSIBLE_CHANNEL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_INCORRECT_CREDENTIALS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_PROJECTION_ALREADY_STARTED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_DISABLED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_NOT_YET_STARTED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_INVALID_HOST:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_NO_SUPPORTED_WIFI_CHANNELS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_PHONE_WIFI_DISABLED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_WIFI_NETWORK_UNAVAILABLE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch -0xb
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
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->forNumber(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->$VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
