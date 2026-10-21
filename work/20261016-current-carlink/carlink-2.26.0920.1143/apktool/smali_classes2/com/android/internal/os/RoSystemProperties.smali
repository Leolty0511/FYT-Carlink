.class public Lcom/android/internal/os/RoSystemProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONFIG_LOW_RAM:Z

.field public static final CONFIG_SMALL_BATTERY:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

.field public static final CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

.field public static final CRYPTO_BLOCK_ENCRYPTED:Z

.field public static final CRYPTO_ENCRYPTABLE:Z

.field public static final CRYPTO_ENCRYPTED:Z

.field public static final CRYPTO_FILE_ENCRYPTED:Z

.field public static final CRYPTO_STATE:Ljava/lang/String;

.field public static final CRYPTO_TYPE:Ljava/lang/String;

.field public static final DEBUGGABLE:Z

.field public static final FACTORYTEST:I

.field public static final FW_SYSTEM_USER_SPLIT:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "ro.debuggable"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    .line 15
    .line 16
    const-string v0, "ro.factorytest"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput v0, Lcom/android/internal/os/RoSystemProperties;->FACTORYTEST:I

    .line 23
    .line 24
    const-string v0, "ro.control_privapp_permissions"

    .line 25
    .line 26
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, "ro.config.low_ram"

    .line 33
    .line 34
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CONFIG_LOW_RAM:Z

    .line 39
    .line 40
    const-string v3, "ro.config.small_battery"

    .line 41
    .line 42
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CONFIG_SMALL_BATTERY:Z

    .line 47
    .line 48
    const-string v3, "ro.fw.system_user_split"

    .line 49
    .line 50
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->FW_SYSTEM_USER_SPLIT:Z

    .line 55
    .line 56
    const-string v3, "ro.crypto.state"

    .line 57
    .line 58
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    sput-object v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Ljava/lang/String;

    .line 63
    .line 64
    const-string v4, "ro.crypto.type"

    .line 65
    .line 66
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    sput-object v4, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_TYPE:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_1

    .line 77
    .line 78
    const-string/jumbo v5, "unsupported"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-nez v5, :cond_1

    .line 86
    .line 87
    move v5, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move v5, v1

    .line 90
    :goto_1
    sput-boolean v5, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTABLE:Z

    .line 91
    .line 92
    const-string v5, "encrypted"

    .line 93
    .line 94
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTED:Z

    .line 99
    .line 100
    const-string v3, "file"

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_FILE_ENCRYPTED:Z

    .line 107
    .line 108
    const-string v3, "block"

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_BLOCK_ENCRYPTED:Z

    .line 115
    .line 116
    const-string v3, "log"

    .line 117
    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    sput-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

    .line 123
    .line 124
    const-string v4, "enforce"

    .line 125
    .line 126
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    .line 131
    .line 132
    if-nez v3, :cond_2

    .line 133
    .line 134
    if-nez v0, :cond_2

    .line 135
    .line 136
    move v1, v2

    .line 137
    :cond_2
    sput-boolean v1, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 138
    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
