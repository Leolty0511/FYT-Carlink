.class public final enum Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;
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
    name = "WifiMessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final enum MESSAGE_WIFI_CONNECTION_REJECTION_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final MESSAGE_WIFI_CONNECTION_REJECTION_BT_VALUE:I = 0xa

.field public static final enum MESSAGE_WIFI_CONNECT_STATUS_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final MESSAGE_WIFI_CONNECT_STATUS_BT_VALUE:I = 0x6

.field public static final enum MESSAGE_WIFI_PING_REQUEST_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final MESSAGE_WIFI_PING_REQUEST_BT_VALUE:I = 0x8

.field public static final enum MESSAGE_WIFI_PING_RESPONSE_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final MESSAGE_WIFI_PING_RESPONSE_BT_VALUE:I = 0x9

.field public static final enum MESSAGE_WIFI_REQUEST_INFO_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final MESSAGE_WIFI_REQUEST_INFO_BT_VALUE:I = 0x2

.field public static final enum MESSAGE_WIFI_REQUEST_START_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final MESSAGE_WIFI_REQUEST_START_BT_VALUE:I = 0x1

.field public static final enum MESSAGE_WIFI_RESPONSE_INFO_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final MESSAGE_WIFI_RESPONSE_INFO_BT_VALUE:I = 0x3

.field public static final enum MESSAGE_WIFI_RESPONSE_START_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final MESSAGE_WIFI_RESPONSE_START_BT_VALUE:I = 0x7

.field public static final enum MESSAGE_WIFI_VERSION_REQUEST_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final MESSAGE_WIFI_VERSION_REQUEST_BT_VALUE:I = 0x4

.field public static final enum MESSAGE_WIFI_VERSION_RESPONSE_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field public static final MESSAGE_WIFI_VERSION_RESPONSE_BT_VALUE:I = 0x5

.field private static final VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_REQUEST_START_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_REQUEST_INFO_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_RESPONSE_INFO_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_VERSION_REQUEST_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_VERSION_RESPONSE_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_CONNECT_STATUS_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_RESPONSE_START_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_PING_REQUEST_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_PING_RESPONSE_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_CONNECTION_REJECTION_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 2
    .line 3
    const-string v1, "MESSAGE_WIFI_REQUEST_START_BT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_REQUEST_START_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 13
    .line 14
    const-string v1, "MESSAGE_WIFI_REQUEST_INFO_BT"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_REQUEST_INFO_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 23
    .line 24
    const-string v1, "MESSAGE_WIFI_RESPONSE_INFO_BT"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_RESPONSE_INFO_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 33
    .line 34
    const-string v1, "MESSAGE_WIFI_VERSION_REQUEST_BT"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_VERSION_REQUEST_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 43
    .line 44
    const-string v1, "MESSAGE_WIFI_VERSION_RESPONSE_BT"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_VERSION_RESPONSE_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 51
    .line 52
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 53
    .line 54
    const-string v1, "MESSAGE_WIFI_CONNECT_STATUS_BT"

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_CONNECT_STATUS_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 61
    .line 62
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 63
    .line 64
    const-string v1, "MESSAGE_WIFI_RESPONSE_START_BT"

    .line 65
    .line 66
    const/4 v3, 0x7

    .line 67
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_RESPONSE_START_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 71
    .line 72
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 73
    .line 74
    const-string v1, "MESSAGE_WIFI_PING_REQUEST_BT"

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_PING_REQUEST_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 82
    .line 83
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 84
    .line 85
    const-string v1, "MESSAGE_WIFI_PING_RESPONSE_BT"

    .line 86
    .line 87
    const/16 v3, 0x9

    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_PING_RESPONSE_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 93
    .line 94
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 95
    .line 96
    const-string v1, "MESSAGE_WIFI_CONNECTION_REJECTION_BT"

    .line 97
    .line 98
    const/16 v2, 0xa

    .line 99
    .line 100
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_CONNECTION_REJECTION_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 104
    .line 105
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->$values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->$VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 110
    .line 111
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType$1;

    .line 112
    .line 113
    invoke-direct {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType$1;-><init>()V

    .line 114
    .line 115
    .line 116
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 117
    .line 118
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 123
    .line 124
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
    iput p3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;
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
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_CONNECTION_REJECTION_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_PING_RESPONSE_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_PING_REQUEST_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_RESPONSE_START_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_CONNECT_STATUS_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_VERSION_RESPONSE_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_VERSION_REQUEST_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_RESPONSE_INFO_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_REQUEST_INFO_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_REQUEST_START_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 34
    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
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

    const/4 v1, 0x0

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
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->forNumber(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->$VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
