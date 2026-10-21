.class public final enum Lcom/google/android/projection/proto/Protos$WifiSecurityMode;
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
    name = "WifiSecurityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$WifiSecurityMode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final enum OPEN:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final OPEN_VALUE:I = 0x1

.field public static final enum UNKNOWN_SECURITY_MODE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final UNKNOWN_SECURITY_MODE_VALUE:I = 0x0

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final enum WEP_128:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final WEP_128_VALUE:I = 0x3

.field public static final enum WEP_64:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final WEP_64_VALUE:I = 0x2

.field public static final enum WPA2_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final WPA2_ENTERPRISE_VALUE:I = 0x8

.field public static final enum WPA2_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final WPA2_PERSONAL_VALUE:I = 0x5

.field public static final enum WPA2_WPA3_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final WPA2_WPA3_PERSONAL_VALUE:I = 0xb

.field public static final enum WPA3_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final WPA3_PERSONAL_VALUE:I = 0xa

.field public static final enum WPA_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final WPA_ENTERPRISE_VALUE:I = 0x7

.field public static final enum WPA_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final WPA_PERSONAL_VALUE:I = 0x4

.field public static final enum WPA_WPA2_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final WPA_WPA2_ENTERPRISE_VALUE:I = 0x9

.field public static final enum WPA_WPA2_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public static final WPA_WPA2_PERSONAL_VALUE:I = 0x6

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$WifiSecurityMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$WifiSecurityMode;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->UNKNOWN_SECURITY_MODE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->OPEN:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WEP_64:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WEP_128:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA2_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_WPA2_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA2_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_WPA2_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA3_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA2_WPA3_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_SECURITY_MODE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->UNKNOWN_SECURITY_MODE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 12
    .line 13
    const-string v1, "OPEN"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->OPEN:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 22
    .line 23
    const-string v1, "WEP_64"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WEP_64:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 32
    .line 33
    const-string v1, "WEP_128"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WEP_128:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 40
    .line 41
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 42
    .line 43
    const-string v1, "WPA_PERSONAL"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 50
    .line 51
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 52
    .line 53
    const-string v1, "WPA2_PERSONAL"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA2_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 60
    .line 61
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 62
    .line 63
    const-string v1, "WPA_WPA2_PERSONAL"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_WPA2_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 70
    .line 71
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 72
    .line 73
    const-string v1, "WPA_ENTERPRISE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 80
    .line 81
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 82
    .line 83
    const-string v1, "WPA2_ENTERPRISE"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA2_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 91
    .line 92
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 93
    .line 94
    const-string v1, "WPA_WPA2_ENTERPRISE"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_WPA2_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 102
    .line 103
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 104
    .line 105
    const-string v1, "WPA3_PERSONAL"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA3_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 113
    .line 114
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 115
    .line 116
    const-string v1, "WPA2_WPA3_PERSONAL"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA2_WPA3_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 124
    .line 125
    invoke-static {}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->$values()[Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->$VALUES:[Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 130
    .line 131
    new-instance v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode$1;

    .line 132
    .line 133
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode$1;-><init>()V

    .line 134
    .line 135
    .line 136
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 137
    .line 138
    invoke-static {}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->values()[Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sput-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->VALUES:[Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 143
    .line 144
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$WifiSecurityMode;
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
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA2_WPA3_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA3_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_WPA2_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA2_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_ENTERPRISE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_WPA2_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA2_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WEP_128:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WEP_64:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->OPEN:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    sget-object p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->UNKNOWN_SECURITY_MODE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    const/16 v0, 0x29

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
            "Lcom/google/android/projection/proto/Protos$WifiSecurityMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$WifiSecurityMode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->forNumber(I)Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$WifiSecurityMode;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->VALUES:[Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$WifiSecurityMode;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$WifiSecurityMode;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->$VALUES:[Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
