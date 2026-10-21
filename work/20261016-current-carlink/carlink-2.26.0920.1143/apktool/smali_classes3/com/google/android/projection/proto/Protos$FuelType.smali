.class public final enum Lcom/google/android/projection/proto/Protos$FuelType;
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
    name = "FuelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$FuelType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final enum FUEL_TYPE_BIODIESEL:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_BIODIESEL_VALUE:I = 0x5

.field public static final enum FUEL_TYPE_CNG:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_CNG_VALUE:I = 0x8

.field public static final enum FUEL_TYPE_DIESEL_1:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_DIESEL_1_VALUE:I = 0x3

.field public static final enum FUEL_TYPE_DIESEL_2:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_DIESEL_2_VALUE:I = 0x4

.field public static final enum FUEL_TYPE_E85:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_E85_VALUE:I = 0x6

.field public static final enum FUEL_TYPE_ELECTRIC:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_ELECTRIC_VALUE:I = 0xa

.field public static final enum FUEL_TYPE_HYDROGEN:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_HYDROGEN_VALUE:I = 0xb

.field public static final enum FUEL_TYPE_LEADED:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_LEADED_VALUE:I = 0x2

.field public static final enum FUEL_TYPE_LNG:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_LNG_VALUE:I = 0x9

.field public static final enum FUEL_TYPE_LPG:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_LPG_VALUE:I = 0x7

.field public static final enum FUEL_TYPE_OTHER:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_OTHER_VALUE:I = 0xc

.field public static final enum FUEL_TYPE_UNKNOWN:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_UNKNOWN_VALUE:I = 0x0

.field public static final enum FUEL_TYPE_UNLEADED:Lcom/google/android/projection/proto/Protos$FuelType;

.field public static final FUEL_TYPE_UNLEADED_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$FuelType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$FuelType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$FuelType;
    .locals 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$FuelType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_UNKNOWN:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_UNLEADED:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_LEADED:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_DIESEL_1:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_DIESEL_2:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_BIODIESEL:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_E85:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_LPG:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_CNG:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_LNG:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_ELECTRIC:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_HYDROGEN:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0xc

    .line 70
    .line 71
    sget-object v2, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_OTHER:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 2
    .line 3
    const-string v1, "FUEL_TYPE_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_UNKNOWN:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 12
    .line 13
    const-string v1, "FUEL_TYPE_UNLEADED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_UNLEADED:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 22
    .line 23
    const-string v1, "FUEL_TYPE_LEADED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_LEADED:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 32
    .line 33
    const-string v1, "FUEL_TYPE_DIESEL_1"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_DIESEL_1:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 40
    .line 41
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 42
    .line 43
    const-string v1, "FUEL_TYPE_DIESEL_2"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_DIESEL_2:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 50
    .line 51
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 52
    .line 53
    const-string v1, "FUEL_TYPE_BIODIESEL"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_BIODIESEL:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 60
    .line 61
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 62
    .line 63
    const-string v1, "FUEL_TYPE_E85"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_E85:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 70
    .line 71
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 72
    .line 73
    const-string v1, "FUEL_TYPE_LPG"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_LPG:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 80
    .line 81
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 82
    .line 83
    const-string v1, "FUEL_TYPE_CNG"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_CNG:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 91
    .line 92
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 93
    .line 94
    const-string v1, "FUEL_TYPE_LNG"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_LNG:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 102
    .line 103
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 104
    .line 105
    const-string v1, "FUEL_TYPE_ELECTRIC"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_ELECTRIC:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 113
    .line 114
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 115
    .line 116
    const-string v1, "FUEL_TYPE_HYDROGEN"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_HYDROGEN:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 124
    .line 125
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType;

    .line 126
    .line 127
    const-string v1, "FUEL_TYPE_OTHER"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$FuelType;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_OTHER:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 135
    .line 136
    invoke-static {}, Lcom/google/android/projection/proto/Protos$FuelType;->$values()[Lcom/google/android/projection/proto/Protos$FuelType;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->$VALUES:[Lcom/google/android/projection/proto/Protos$FuelType;

    .line 141
    .line 142
    new-instance v0, Lcom/google/android/projection/proto/Protos$FuelType$1;

    .line 143
    .line 144
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$FuelType$1;-><init>()V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 148
    .line 149
    invoke-static {}, Lcom/google/android/projection/proto/Protos$FuelType;->values()[Lcom/google/android/projection/proto/Protos$FuelType;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    sput-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->VALUES:[Lcom/google/android/projection/proto/Protos$FuelType;

    .line 154
    .line 155
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$FuelType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$FuelType;
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
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_OTHER:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_HYDROGEN:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_ELECTRIC:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_LNG:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_CNG:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_LPG:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_E85:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_BIODIESEL:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_DIESEL_2:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_DIESEL_1:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_LEADED:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_UNLEADED:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    sget-object p0, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_UNKNOWN:Lcom/google/android/projection/proto/Protos$FuelType;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
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
    const/4 v0, 0x6

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
            "Lcom/google/android/projection/proto/Protos$FuelType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$FuelType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$FuelType;->forNumber(I)Lcom/google/android/projection/proto/Protos$FuelType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$FuelType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$FuelType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->VALUES:[Lcom/google/android/projection/proto/Protos$FuelType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$FuelType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$FuelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$FuelType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$FuelType;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$FuelType;->$VALUES:[Lcom/google/android/projection/proto/Protos$FuelType;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$FuelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$FuelType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$FuelType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$FuelType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$FuelType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
