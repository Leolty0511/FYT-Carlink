.class public final enum Landroid/os/AppPowerSaveConfig$ConfigType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AppPowerSaveConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/AppPowerSaveConfig$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/AppPowerSaveConfig$ConfigType;

.field public static final enum TYPE_ALARM:Landroid/os/AppPowerSaveConfig$ConfigType;

.field public static final enum TYPE_AUTOLAUNCH:Landroid/os/AppPowerSaveConfig$ConfigType;

.field public static final enum TYPE_LOCKSCREENCLEANUP:Landroid/os/AppPowerSaveConfig$ConfigType;

.field public static final enum TYPE_MAX:Landroid/os/AppPowerSaveConfig$ConfigType;

.field public static final enum TYPE_NETWORK:Landroid/os/AppPowerSaveConfig$ConfigType;

.field public static final enum TYPE_NULL:Landroid/os/AppPowerSaveConfig$ConfigType;

.field public static final enum TYPE_OPTIMIZE:Landroid/os/AppPowerSaveConfig$ConfigType;

.field public static final enum TYPE_POWERCONSUMERTYPE:Landroid/os/AppPowerSaveConfig$ConfigType;

.field public static final enum TYPE_SECONDARYLAUNCH:Landroid/os/AppPowerSaveConfig$ConfigType;

.field public static final enum TYPE_WAKELOCK:Landroid/os/AppPowerSaveConfig$ConfigType;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "TYPE_NULL"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Landroid/os/AppPowerSaveConfig$ConfigType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_NULL:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 11
    .line 12
    new-instance v1, Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 13
    .line 14
    const-string v2, "TYPE_OPTIMIZE"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v3}, Landroid/os/AppPowerSaveConfig$ConfigType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_OPTIMIZE:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 21
    .line 22
    new-instance v2, Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 23
    .line 24
    const-string v5, "TYPE_ALARM"

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v4}, Landroid/os/AppPowerSaveConfig$ConfigType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_ALARM:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 31
    .line 32
    new-instance v5, Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 33
    .line 34
    const-string v7, "TYPE_WAKELOCK"

    .line 35
    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v6}, Landroid/os/AppPowerSaveConfig$ConfigType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v5, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_WAKELOCK:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 41
    .line 42
    new-instance v7, Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 43
    .line 44
    const-string v9, "TYPE_NETWORK"

    .line 45
    .line 46
    const/4 v10, 0x4

    .line 47
    invoke-direct {v7, v9, v10, v8}, Landroid/os/AppPowerSaveConfig$ConfigType;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_NETWORK:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 51
    .line 52
    new-instance v9, Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 53
    .line 54
    const-string v11, "TYPE_AUTOLAUNCH"

    .line 55
    .line 56
    const/4 v12, 0x5

    .line 57
    invoke-direct {v9, v11, v12, v10}, Landroid/os/AppPowerSaveConfig$ConfigType;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v9, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_AUTOLAUNCH:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 61
    .line 62
    new-instance v11, Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 63
    .line 64
    const-string v13, "TYPE_SECONDARYLAUNCH"

    .line 65
    .line 66
    const/4 v14, 0x6

    .line 67
    invoke-direct {v11, v13, v14, v12}, Landroid/os/AppPowerSaveConfig$ConfigType;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v11, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_SECONDARYLAUNCH:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 71
    .line 72
    new-instance v13, Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 73
    .line 74
    const-string v15, "TYPE_LOCKSCREENCLEANUP"

    .line 75
    .line 76
    const/4 v12, 0x7

    .line 77
    invoke-direct {v13, v15, v12, v14}, Landroid/os/AppPowerSaveConfig$ConfigType;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    sput-object v13, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_LOCKSCREENCLEANUP:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 81
    .line 82
    new-instance v15, Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 83
    .line 84
    const-string v14, "TYPE_POWERCONSUMERTYPE"

    .line 85
    .line 86
    const/16 v10, 0x8

    .line 87
    .line 88
    invoke-direct {v15, v14, v10, v12}, Landroid/os/AppPowerSaveConfig$ConfigType;-><init>(Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    sput-object v15, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_POWERCONSUMERTYPE:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 92
    .line 93
    new-instance v14, Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 94
    .line 95
    const-string v12, "TYPE_MAX"

    .line 96
    .line 97
    const/16 v8, 0x9

    .line 98
    .line 99
    invoke-direct {v14, v12, v8, v10}, Landroid/os/AppPowerSaveConfig$ConfigType;-><init>(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    sput-object v14, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_MAX:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 103
    .line 104
    const/16 v12, 0xa

    .line 105
    .line 106
    new-array v12, v12, [Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 107
    .line 108
    aput-object v0, v12, v3

    .line 109
    .line 110
    aput-object v1, v12, v4

    .line 111
    .line 112
    aput-object v2, v12, v6

    .line 113
    .line 114
    const/4 v0, 0x3

    .line 115
    aput-object v5, v12, v0

    .line 116
    .line 117
    const/4 v0, 0x4

    .line 118
    aput-object v7, v12, v0

    .line 119
    .line 120
    const/4 v0, 0x5

    .line 121
    aput-object v9, v12, v0

    .line 122
    .line 123
    const/4 v0, 0x6

    .line 124
    aput-object v11, v12, v0

    .line 125
    .line 126
    const/4 v0, 0x7

    .line 127
    aput-object v13, v12, v0

    .line 128
    .line 129
    aput-object v15, v12, v10

    .line 130
    .line 131
    aput-object v14, v12, v8

    .line 132
    .line 133
    sput-object v12, Landroid/os/AppPowerSaveConfig$ConfigType;->$VALUES:[Landroid/os/AppPowerSaveConfig$ConfigType;

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
    iput p3, p0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/AppPowerSaveConfig$ConfigType;
    .locals 1

    const-class v0, Landroid/os/AppPowerSaveConfig$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/os/AppPowerSaveConfig$ConfigType;

    return-object p0
.end method

.method public static values()[Landroid/os/AppPowerSaveConfig$ConfigType;
    .locals 1

    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->$VALUES:[Landroid/os/AppPowerSaveConfig$ConfigType;

    invoke-virtual {v0}, [Landroid/os/AppPowerSaveConfig$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/AppPowerSaveConfig$ConfigType;

    return-object v0
.end method
