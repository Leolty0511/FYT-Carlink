.class public final enum Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;
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
    name = "WifiSecurityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final enum OPEN:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final OPEN_VALUE:I = 0x1

.field public static final enum UNKNOWN_SECURITY_MODE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final UNKNOWN_SECURITY_MODE_VALUE:I = 0x0

.field private static final VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final enum WEP_128:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final WEP_128_VALUE:I = 0x3

.field public static final enum WEP_64:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final WEP_64_VALUE:I = 0x2

.field public static final enum WPA2_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final WPA2_ENTERPRISE_VALUE:I = 0x18

.field public static final enum WPA2_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final WPA2_PERSONAL_VALUE:I = 0x8

.field public static final enum WPA2_WPA3_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final WPA2_WPA3_PERSONAL_VALUE:I = 0x28

.field public static final enum WPA3_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final WPA3_PERSONAL_VALUE:I = 0x20

.field public static final enum WPA_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final WPA_ENTERPRISE_VALUE:I = 0x14

.field public static final enum WPA_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final WPA_PERSONAL_VALUE:I = 0x4

.field public static final enum WPA_WPA2_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final WPA_WPA2_ENTERPRISE_VALUE:I = 0x1c

.field public static final enum WPA_WPA2_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

.field public static final WPA_WPA2_PERSONAL_VALUE:I = 0xc

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->UNKNOWN_SECURITY_MODE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->OPEN:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WEP_64:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WEP_128:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA2_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_WPA2_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA2_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_WPA2_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA3_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA2_WPA3_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_SECURITY_MODE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->UNKNOWN_SECURITY_MODE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 12
    .line 13
    const-string v1, "OPEN"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->OPEN:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 22
    .line 23
    const-string v1, "WEP_64"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WEP_64:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 32
    .line 33
    const-string v1, "WEP_128"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WEP_128:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 40
    .line 41
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 42
    .line 43
    const-string v1, "WPA_PERSONAL"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 50
    .line 51
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 52
    .line 53
    const-string v1, "WPA2_PERSONAL"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    const/16 v3, 0x8

    .line 57
    .line 58
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA2_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 62
    .line 63
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    const/16 v2, 0xc

    .line 67
    .line 68
    const-string v4, "WPA_WPA2_PERSONAL"

    .line 69
    .line 70
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_WPA2_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 74
    .line 75
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 76
    .line 77
    const/4 v1, 0x7

    .line 78
    const/16 v2, 0x14

    .line 79
    .line 80
    const-string v4, "WPA_ENTERPRISE"

    .line 81
    .line 82
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 86
    .line 87
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 88
    .line 89
    const-string v1, "WPA2_ENTERPRISE"

    .line 90
    .line 91
    const/16 v2, 0x18

    .line 92
    .line 93
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA2_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 97
    .line 98
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 99
    .line 100
    const/16 v1, 0x9

    .line 101
    .line 102
    const/16 v2, 0x1c

    .line 103
    .line 104
    const-string v3, "WPA_WPA2_ENTERPRISE"

    .line 105
    .line 106
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_WPA2_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 110
    .line 111
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 112
    .line 113
    const/16 v1, 0xa

    .line 114
    .line 115
    const/16 v2, 0x20

    .line 116
    .line 117
    const-string v3, "WPA3_PERSONAL"

    .line 118
    .line 119
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 120
    .line 121
    .line 122
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA3_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 123
    .line 124
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 125
    .line 126
    const/16 v1, 0xb

    .line 127
    .line 128
    const/16 v2, 0x28

    .line 129
    .line 130
    const-string v3, "WPA2_WPA3_PERSONAL"

    .line 131
    .line 132
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;-><init>(Ljava/lang/String;II)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA2_WPA3_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 136
    .line 137
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->$values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->$VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 142
    .line 143
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode$1;

    .line 144
    .line 145
    invoke-direct {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode$1;-><init>()V

    .line 146
    .line 147
    .line 148
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 149
    .line 150
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 155
    .line 156
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
    iput p3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;
    .locals 1

    .line 1
    if-eqz p0, :cond_b

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_a

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_9

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_8

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_7

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    if-eq p0, v0, :cond_6

    .line 18
    .line 19
    const/16 v0, 0xc

    .line 20
    .line 21
    if-eq p0, v0, :cond_5

    .line 22
    .line 23
    const/16 v0, 0x14

    .line 24
    .line 25
    if-eq p0, v0, :cond_4

    .line 26
    .line 27
    const/16 v0, 0x18

    .line 28
    .line 29
    if-eq p0, v0, :cond_3

    .line 30
    .line 31
    const/16 v0, 0x1c

    .line 32
    .line 33
    if-eq p0, v0, :cond_2

    .line 34
    .line 35
    const/16 v0, 0x20

    .line 36
    .line 37
    if-eq p0, v0, :cond_1

    .line 38
    .line 39
    const/16 v0, 0x28

    .line 40
    .line 41
    if-eq p0, v0, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA2_WPA3_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA3_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_2
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_WPA2_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_3
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA2_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_4
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_ENTERPRISE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_5
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_WPA2_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_6
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA2_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_7
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WPA_PERSONAL:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_8
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WEP_128:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_9
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->WEP_64:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_a
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->OPEN:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_b
    sget-object p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->UNKNOWN_SECURITY_MODE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 79
    .line 80
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->forNumber(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->$VALUES:[Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
