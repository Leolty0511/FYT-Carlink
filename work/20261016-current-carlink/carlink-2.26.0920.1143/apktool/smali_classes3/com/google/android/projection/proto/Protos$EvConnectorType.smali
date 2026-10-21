.class public final enum Lcom/google/android/projection/proto/Protos$EvConnectorType;
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
    name = "EvConnectorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$EvConnectorType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field public static final enum EV_CONNECTOR_TYPE_CHADEMO:Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field public static final EV_CONNECTOR_TYPE_CHADEMO_VALUE:I = 0x3

.field public static final enum EV_CONNECTOR_TYPE_COMBO_1:Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field public static final EV_CONNECTOR_TYPE_COMBO_1_VALUE:I = 0x4

.field public static final enum EV_CONNECTOR_TYPE_COMBO_2:Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field public static final EV_CONNECTOR_TYPE_COMBO_2_VALUE:I = 0x5

.field public static final enum EV_CONNECTOR_TYPE_GBT:Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field public static final EV_CONNECTOR_TYPE_GBT_VALUE:I = 0x9

.field public static final enum EV_CONNECTOR_TYPE_J1772:Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field public static final EV_CONNECTOR_TYPE_J1772_VALUE:I = 0x1

.field public static final enum EV_CONNECTOR_TYPE_MENNEKES:Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field public static final EV_CONNECTOR_TYPE_MENNEKES_VALUE:I = 0x2

.field public static final enum EV_CONNECTOR_TYPE_OTHER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field public static final EV_CONNECTOR_TYPE_OTHER_VALUE:I = 0x65

.field public static final enum EV_CONNECTOR_TYPE_TESLA_HPWC:Lcom/google/android/projection/proto/Protos$EvConnectorType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EV_CONNECTOR_TYPE_TESLA_HPWC_VALUE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum EV_CONNECTOR_TYPE_TESLA_ROADSTER:Lcom/google/android/projection/proto/Protos$EvConnectorType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EV_CONNECTOR_TYPE_TESLA_ROADSTER_VALUE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum EV_CONNECTOR_TYPE_TESLA_SUPERCHARGER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field public static final EV_CONNECTOR_TYPE_TESLA_SUPERCHARGER_VALUE:I = 0x8

.field public static final enum EV_CONNECTOR_TYPE_UNKNOWN:Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field public static final EV_CONNECTOR_TYPE_UNKNOWN_VALUE:I

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$EvConnectorType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$EvConnectorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$EvConnectorType;
    .locals 3

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_UNKNOWN:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_J1772:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_MENNEKES:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_CHADEMO:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_COMBO_1:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_COMBO_2:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_TESLA_ROADSTER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_TESLA_HPWC:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_TESLA_SUPERCHARGER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_GBT:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_OTHER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

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
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 2
    .line 3
    const-string v1, "EV_CONNECTOR_TYPE_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_UNKNOWN:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 12
    .line 13
    const-string v1, "EV_CONNECTOR_TYPE_J1772"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_J1772:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 22
    .line 23
    const-string v1, "EV_CONNECTOR_TYPE_MENNEKES"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_MENNEKES:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 32
    .line 33
    const-string v1, "EV_CONNECTOR_TYPE_CHADEMO"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_CHADEMO:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 40
    .line 41
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 42
    .line 43
    const-string v1, "EV_CONNECTOR_TYPE_COMBO_1"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_COMBO_1:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 50
    .line 51
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 52
    .line 53
    const-string v1, "EV_CONNECTOR_TYPE_COMBO_2"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_COMBO_2:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 60
    .line 61
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 62
    .line 63
    const-string v1, "EV_CONNECTOR_TYPE_TESLA_ROADSTER"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_TESLA_ROADSTER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 70
    .line 71
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 72
    .line 73
    const-string v1, "EV_CONNECTOR_TYPE_TESLA_HPWC"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_TESLA_HPWC:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 80
    .line 81
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 82
    .line 83
    const-string v1, "EV_CONNECTOR_TYPE_TESLA_SUPERCHARGER"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_TESLA_SUPERCHARGER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 91
    .line 92
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 93
    .line 94
    const-string v1, "EV_CONNECTOR_TYPE_GBT"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_GBT:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 102
    .line 103
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 104
    .line 105
    const/16 v1, 0xa

    .line 106
    .line 107
    const/16 v2, 0x65

    .line 108
    .line 109
    const-string v3, "EV_CONNECTOR_TYPE_OTHER"

    .line 110
    .line 111
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$EvConnectorType;-><init>(Ljava/lang/String;II)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_OTHER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 115
    .line 116
    invoke-static {}, Lcom/google/android/projection/proto/Protos$EvConnectorType;->$values()[Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->$VALUES:[Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 121
    .line 122
    new-instance v0, Lcom/google/android/projection/proto/Protos$EvConnectorType$1;

    .line 123
    .line 124
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$EvConnectorType$1;-><init>()V

    .line 125
    .line 126
    .line 127
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 128
    .line 129
    invoke-static {}, Lcom/google/android/projection/proto/Protos$EvConnectorType;->values()[Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->VALUES:[Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 134
    .line 135
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$EvConnectorType;
    .locals 1

    .line 1
    const/16 v0, 0x65

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :pswitch_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_GBT:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_TESLA_SUPERCHARGER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_TESLA_HPWC:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_TESLA_ROADSTER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_COMBO_2:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_COMBO_1:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_CHADEMO:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_MENNEKES:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_8
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_J1772:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_9
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_UNKNOWN:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_OTHER:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    .line 41
    .line 42
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
    const/4 v0, 0x7

    .line 2
    invoke-static {v0}, Landroid/renderscript/a;->j(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 7
    .line 8
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$EvConnectorType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$EvConnectorType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$EvConnectorType;->forNumber(I)Lcom/google/android/projection/proto/Protos$EvConnectorType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$EvConnectorType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$EvConnectorType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->VALUES:[Lcom/google/android/projection/proto/Protos$EvConnectorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$EvConnectorType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$EvConnectorType;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->$VALUES:[Lcom/google/android/projection/proto/Protos$EvConnectorType;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$EvConnectorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$EvConnectorType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$EvConnectorType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$EvConnectorType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$EvConnectorType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
