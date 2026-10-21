.class public final enum Lcom/google/android/projection/protocol/Transport$StopReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StopReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/protocol/Transport$StopReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/protocol/Transport$StopReason;

.field public static final enum CONNECTION_DISCONNECTED:Lcom/google/android/projection/protocol/Transport$StopReason;

.field public static final enum CONNECTION_ERROR:Lcom/google/android/projection/protocol/Transport$StopReason;

.field public static final enum CONNECTION_TERMINATED:Lcom/google/android/projection/protocol/Transport$StopReason;

.field public static final enum HU_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

.field public static final enum MD_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

.field public static final enum PING_RTT_TOO_HIGH:Lcom/google/android/projection/protocol/Transport$StopReason;

.field public static final enum PING_TIMEOUT:Lcom/google/android/projection/protocol/Transport$StopReason;

.field public static final enum USER_SWITCH:Lcom/google/android/projection/protocol/Transport$StopReason;


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/protocol/Transport$StopReason;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_TERMINATED:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/protocol/Transport$StopReason;->MD_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/protocol/Transport$StopReason;->HU_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/protocol/Transport$StopReason;->USER_SWITCH:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/protocol/Transport$StopReason;->PING_TIMEOUT:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/protocol/Transport$StopReason;->PING_RTT_TOO_HIGH:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_DISCONNECTED:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_ERROR:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 2
    .line 3
    const-string v1, "CONNECTION_TERMINATED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/projection/protocol/Transport$StopReason;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_TERMINATED:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 12
    .line 13
    const-string v1, "MD_BYEBYE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/google/android/projection/protocol/Transport$StopReason;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->MD_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 22
    .line 23
    const-string v1, "HU_BYEBYE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/google/android/projection/protocol/Transport$StopReason;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->HU_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 32
    .line 33
    const-string v1, "USER_SWITCH"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/google/android/projection/protocol/Transport$StopReason;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->USER_SWITCH:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 40
    .line 41
    new-instance v0, Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 42
    .line 43
    const-string v1, "PING_TIMEOUT"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/google/android/projection/protocol/Transport$StopReason;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->PING_TIMEOUT:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 50
    .line 51
    new-instance v0, Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 52
    .line 53
    const-string v1, "PING_RTT_TOO_HIGH"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/google/android/projection/protocol/Transport$StopReason;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->PING_RTT_TOO_HIGH:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 60
    .line 61
    new-instance v0, Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 62
    .line 63
    const-string v1, "CONNECTION_DISCONNECTED"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/google/android/projection/protocol/Transport$StopReason;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_DISCONNECTED:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 70
    .line 71
    new-instance v0, Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 72
    .line 73
    const-string v1, "CONNECTION_ERROR"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/google/android/projection/protocol/Transport$StopReason;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_ERROR:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 80
    .line 81
    invoke-static {}, Lcom/google/android/projection/protocol/Transport$StopReason;->$values()[Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->$VALUES:[Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 86
    .line 87
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/protocol/Transport$StopReason;
    .locals 1

    const-class v0, Lcom/google/android/projection/protocol/Transport$StopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/protocol/Transport$StopReason;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/protocol/Transport$StopReason;
    .locals 1

    sget-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->$VALUES:[Lcom/google/android/projection/protocol/Transport$StopReason;

    invoke-virtual {v0}, [Lcom/google/android/projection/protocol/Transport$StopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/protocol/Transport$StopReason;

    return-object v0
.end method
