.class public final enum Lcom/google/android/projection/proto/Protos$UserSwitchStatus;
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
    name = "UserSwitchStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$UserSwitchStatus;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final enum ERROR_BT_CLOSED_AFTER_START:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final ERROR_BT_CLOSED_AFTER_START_VALUE:I = -0x3

.field public static final enum ERROR_BT_CLOSED_BEFORE_START:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final ERROR_BT_CLOSED_BEFORE_START_VALUE:I = -0x2

.field public static final enum ERROR_HU_INTERNAL:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final ERROR_HU_INTERNAL_VALUE:I = -0x7

.field public static final enum ERROR_INCOMPATIBLE_PHONE_PROTOCOL_VERSION:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final ERROR_INCOMPATIBLE_PHONE_PROTOCOL_VERSION_VALUE:I = -0x4

.field public static final enum ERROR_INVALID_REQUEST:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final ERROR_INVALID_REQUEST_VALUE:I = -0x8

.field public static final enum ERROR_MULTIPLE_USER_SWITCH_REQUEST:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final ERROR_MULTIPLE_USER_SWITCH_REQUEST_VALUE:I = -0x6

.field public static final enum ERROR_NO_RFCOMM_CONNECTION:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final ERROR_NO_RFCOMM_CONNECTION_VALUE:I = -0x1

.field public static final enum ERROR_PHONE_UNABLE_TO_CONNECT_WIFI:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final ERROR_PHONE_UNABLE_TO_CONNECT_WIFI_VALUE:I = -0x5

.field public static final enum ERROR_REQUEST_TIMEOUT:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final ERROR_REQUEST_TIMEOUT_VALUE:I = -0x9

.field public static final enum STATUS_OK:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field public static final STATUS_OK_VALUE:I

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$UserSwitchStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$UserSwitchStatus;
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->STATUS_OK:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_NO_RFCOMM_CONNECTION:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_BT_CLOSED_BEFORE_START:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_BT_CLOSED_AFTER_START:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_INCOMPATIBLE_PHONE_PROTOCOL_VERSION:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_PHONE_UNABLE_TO_CONNECT_WIFI:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_MULTIPLE_USER_SWITCH_REQUEST:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_HU_INTERNAL:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_INVALID_REQUEST:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_REQUEST_TIMEOUT:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

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
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 2
    .line 3
    const-string v1, "STATUS_OK"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->STATUS_OK:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, -0x1

    .line 15
    const-string v3, "ERROR_NO_RFCOMM_CONNECTION"

    .line 16
    .line 17
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_NO_RFCOMM_CONNECTION:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    const/4 v2, -0x2

    .line 26
    const-string v3, "ERROR_BT_CLOSED_BEFORE_START"

    .line 27
    .line 28
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_BT_CLOSED_BEFORE_START:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    const/4 v2, -0x3

    .line 37
    const-string v3, "ERROR_BT_CLOSED_AFTER_START"

    .line 38
    .line 39
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_BT_CLOSED_AFTER_START:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 43
    .line 44
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    const/4 v2, -0x4

    .line 48
    const-string v3, "ERROR_INCOMPATIBLE_PHONE_PROTOCOL_VERSION"

    .line 49
    .line 50
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_INCOMPATIBLE_PHONE_PROTOCOL_VERSION:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 54
    .line 55
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    const/4 v2, -0x5

    .line 59
    const-string v3, "ERROR_PHONE_UNABLE_TO_CONNECT_WIFI"

    .line 60
    .line 61
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_PHONE_UNABLE_TO_CONNECT_WIFI:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 65
    .line 66
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 67
    .line 68
    const/4 v1, 0x6

    .line 69
    const/4 v2, -0x6

    .line 70
    const-string v3, "ERROR_MULTIPLE_USER_SWITCH_REQUEST"

    .line 71
    .line 72
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;-><init>(Ljava/lang/String;II)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_MULTIPLE_USER_SWITCH_REQUEST:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 76
    .line 77
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 78
    .line 79
    const/4 v1, 0x7

    .line 80
    const/4 v2, -0x7

    .line 81
    const-string v3, "ERROR_HU_INTERNAL"

    .line 82
    .line 83
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;-><init>(Ljava/lang/String;II)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_HU_INTERNAL:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 87
    .line 88
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 89
    .line 90
    const/16 v1, 0x8

    .line 91
    .line 92
    const/4 v2, -0x8

    .line 93
    const-string v3, "ERROR_INVALID_REQUEST"

    .line 94
    .line 95
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;-><init>(Ljava/lang/String;II)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_INVALID_REQUEST:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 99
    .line 100
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 101
    .line 102
    const/16 v1, 0x9

    .line 103
    .line 104
    const/16 v2, -0x9

    .line 105
    .line 106
    const-string v3, "ERROR_REQUEST_TIMEOUT"

    .line 107
    .line 108
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_REQUEST_TIMEOUT:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 112
    .line 113
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->$values()[Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->$VALUES:[Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 118
    .line 119
    new-instance v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus$1;

    .line 120
    .line 121
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus$1;-><init>()V

    .line 122
    .line 123
    .line 124
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 125
    .line 126
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->values()[Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->VALUES:[Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 131
    .line 132
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$UserSwitchStatus;
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
    sget-object p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->STATUS_OK:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_NO_RFCOMM_CONNECTION:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_BT_CLOSED_BEFORE_START:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_BT_CLOSED_AFTER_START:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_INCOMPATIBLE_PHONE_PROTOCOL_VERSION:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_PHONE_UNABLE_TO_CONNECT_WIFI:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_MULTIPLE_USER_SWITCH_REQUEST:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_HU_INTERNAL:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_INVALID_REQUEST:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->ERROR_REQUEST_TIMEOUT:Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    .line 34
    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch -0x9
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
    const/16 v0, 0x19

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
            "Lcom/google/android/projection/proto/Protos$UserSwitchStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$UserSwitchStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->forNumber(I)Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$UserSwitchStatus;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->VALUES:[Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$UserSwitchStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$UserSwitchStatus;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->$VALUES:[Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$UserSwitchStatus;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$UserSwitchStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
