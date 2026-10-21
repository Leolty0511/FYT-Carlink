.class public Landroid/os/AppPowerSaveConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AppPowerSaveConfig$ConfigType;
    }
.end annotation


# static fields
.field private static final APPCONFIG_FILENAME:Ljava/lang/String; = "appPowerSaveConfig.xml"

.field private static final AUTOLAUNCH_DEF:I

.field private static final AUTOLAUNCH_DEF_PROP:Ljava/lang/String; = "persist.sys.pwctl.auto"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/AppPowerSaveConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final MASK_ALARM:I = 0x2

.field public static final MASK_AUTOLAUNCH:I = 0x10

.field public static final MASK_LOCKSCRRENCLEANUP:I = 0x40

.field public static final MASK_NETWORK:I = 0x8

.field public static final MASK_NULL:I = 0x0

.field public static final MASK_OPTIMIZE:I = 0x1

.field public static final MASK_POWERCONSUMERTYPE:I = 0x80

.field public static final MASK_SECONDARYLAUNCH:I = 0x20

.field public static final MASK_WAKELOCK:I = 0x4

.field public static final POWER_CONSUMER_TYPE_ALARM:I = 0x1

.field public static final POWER_CONSUMER_TYPE_GPS:I = 0x4

.field public static final POWER_CONSUMER_TYPE_NONE:I = 0x0

.field public static final POWER_CONSUMER_TYPE_WAKELOCK:I = 0x2

.field private static final SECONDARYLAUNCH_DEF:I

.field private static final SECONDARYLAUNCH_DEF_PROP:Ljava/lang/String; = "persist.sys.pwctl.secondary"

.field static final TAG:Ljava/lang/String; = "PowerController.Config"

.field public static final VALUE_AUTO:I = 0x0

.field public static final VALUE_INVALID:I = -0x1

.field public static final VALUE_NO_OPTIMIZE:I = 0x2

.field public static final VALUE_OPTIMIZE:I = 0x1

.field private static final XML_ATTRIBUTE_PKG_ALARM:Ljava/lang/String; = "alarm"

.field private static final XML_ATTRIBUTE_PKG_AUTOLAUNCH:Ljava/lang/String; = "autolaunch"

.field private static final XML_ATTRIBUTE_PKG_LOCKSCREENCLEANUP:Ljava/lang/String; = "lockscreencleanup"

.field private static final XML_ATTRIBUTE_PKG_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTRIBUTE_PKG_NETWORK:Ljava/lang/String; = "network"

.field private static final XML_ATTRIBUTE_PKG_OPTIMIZE:Ljava/lang/String; = "optimize"

.field private static final XML_ATTRIBUTE_PKG_POWERCONSUMERTYPE:Ljava/lang/String; = "consumertype"

.field private static final XML_ATTRIBUTE_PKG_SECONDARYLAUNCH:Ljava/lang/String; = "secondarylaunch"

.field private static final XML_ATTRIBUTE_PKG_WAKELOCK:Ljava/lang/String; = "wakelock"

.field private static final XML_TAG_FILE:Ljava/lang/String; = "app_powersave_config"

.field private static final XML_TAG_PKG:Ljava/lang/String; = "package"

.field private static mDefConfig:[I

.field public static mMaskArray:[I


# instance fields
.field public alarm:I

.field public autoLaunch:I

.field public lockscreenCleanup:I

.field public network:I

.field public optimize:I

.field public powerConsumerType:I

.field public secondaryLaunch:I

.field public wakelock:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Landroid/os/AppPowerSaveConfig;->mMaskArray:[I

    .line 9
    .line 10
    const-string/jumbo v1, "persist.sys.pwctl.auto"

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sput v1, Landroid/os/AppPowerSaveConfig;->AUTOLAUNCH_DEF:I

    .line 19
    .line 20
    const-string/jumbo v3, "persist.sys.pwctl.secondary"

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sput v2, Landroid/os/AppPowerSaveConfig;->SECONDARYLAUNCH_DEF:I

    .line 28
    .line 29
    new-array v0, v0, [I

    .line 30
    .line 31
    fill-array-data v0, :array_1

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroid/os/AppPowerSaveConfig;->mDefConfig:[I

    .line 35
    .line 36
    sget-object v3, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_AUTOLAUNCH:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 37
    .line 38
    iget v3, v3, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 39
    .line 40
    aput v1, v0, v3

    .line 41
    .line 42
    sget-object v0, Landroid/os/AppPowerSaveConfig;->mDefConfig:[I

    .line 43
    .line 44
    sget-object v1, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_SECONDARYLAUNCH:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 45
    .line 46
    iget v1, v1, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 47
    .line 48
    aput v2, v0, v1

    .line 49
    .line 50
    new-instance v0, Landroid/os/AppPowerSaveConfig$1;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/os/AppPowerSaveConfig$1;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Landroid/os/AppPowerSaveConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->optimize:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 4
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 5
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->network:I

    .line 6
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 7
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 8
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 9
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->powerConsumerType:I

    .line 10
    :goto_0
    sget-object v1, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_MAX:Landroid/os/AppPowerSaveConfig$ConfigType;

    iget v1, v1, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    if-ge v0, v1, :cond_0

    .line 11
    sget-object v1, Landroid/os/AppPowerSaveConfig;->mDefConfig:[I

    aget v1, v1, v0

    invoke-static {p0, v0, v1}, Landroid/os/AppPowerSaveConfig;->setConfigWithType(Landroid/os/AppPowerSaveConfig;II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->optimize:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 15
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 16
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->network:I

    .line 17
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 18
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 19
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 20
    iput v0, p0, Landroid/os/AppPowerSaveConfig;->powerConsumerType:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/AppPowerSaveConfig;->optimize:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/AppPowerSaveConfig;->network:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/AppPowerSaveConfig;->powerConsumerType:I

    return-void
.end method

.method public static ConfigType2Str(I)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "TYPE_OPTIMIZE"

    .line 2
    .line 3
    const-string v1, "TYPE_ALARM"

    .line 4
    .line 5
    const-string v2, "TYPE_WAKELOCK"

    .line 6
    .line 7
    const-string v3, "TYPE_NETWORK"

    .line 8
    .line 9
    const-string v4, "TYPE_AUTOLAUNCH"

    .line 10
    .line 11
    const-string v5, "TYPE_SECONDARYLAUNCH"

    .line 12
    .line 13
    const-string v6, "TYPE_LOCKSCREENCLEANUP"

    .line 14
    .line 15
    const-string v7, "TYPE_POWERCONSUMERTYPE"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-ltz p0, :cond_0

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    if-ge p0, v1, :cond_0

    .line 26
    .line 27
    aget-object p0, v0, p0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    const-string v0, "Unknown type: "

    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static ConfigValue2Str(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "VALUE_OPTIMIZE"

    .line 2
    .line 3
    const-string v1, "VALUE_NO_OPTIMIZE"

    .line 4
    .line 5
    const-string v2, "VALUE_AUTO"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ltz p0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-ge p0, v1, :cond_0

    .line 15
    .line 16
    aget-object p0, v0, p0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string v0, "Unknown value: "

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static getConfigValue(Landroid/os/AppPowerSaveConfig;I)I
    .locals 1

    .line 1
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_OPTIMIZE:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 2
    .line 3
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroid/os/AppPowerSaveConfig;->optimize:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_ALARM:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 11
    .line 12
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iget p0, p0, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_WAKELOCK:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 20
    .line 21
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    iget p0, p0, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 26
    .line 27
    return p0

    .line 28
    :cond_2
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_NETWORK:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 29
    .line 30
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 31
    .line 32
    if-ne p1, v0, :cond_3

    .line 33
    .line 34
    iget p0, p0, Landroid/os/AppPowerSaveConfig;->network:I

    .line 35
    .line 36
    return p0

    .line 37
    :cond_3
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_AUTOLAUNCH:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 38
    .line 39
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 40
    .line 41
    if-ne p1, v0, :cond_4

    .line 42
    .line 43
    iget p0, p0, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 44
    .line 45
    return p0

    .line 46
    :cond_4
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_SECONDARYLAUNCH:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 47
    .line 48
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 49
    .line 50
    if-ne p1, v0, :cond_5

    .line 51
    .line 52
    iget p0, p0, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 53
    .line 54
    return p0

    .line 55
    :cond_5
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_LOCKSCREENCLEANUP:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 56
    .line 57
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 58
    .line 59
    if-ne p1, v0, :cond_6

    .line 60
    .line 61
    iget p0, p0, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 62
    .line 63
    return p0

    .line 64
    :cond_6
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_POWERCONSUMERTYPE:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 65
    .line 66
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 67
    .line 68
    if-ne p1, v0, :cond_7

    .line 69
    .line 70
    iget p0, p0, Landroid/os/AppPowerSaveConfig;->powerConsumerType:I

    .line 71
    .line 72
    return p0

    .line 73
    :cond_7
    const/4 p0, -0x1

    .line 74
    return p0
.end method

.method public static getDefaultValue(I)I
    .locals 1

    sget-object v0, Landroid/os/AppPowerSaveConfig;->mDefConfig:[I

    aget p0, v0, p0

    return p0
.end method

.method public static isDefault(II)Z
    .locals 1

    sget-object v0, Landroid/os/AppPowerSaveConfig;->mDefConfig:[I

    aget p0, v0, p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readConfig(Ljava/util/Map;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/AppPowerSaveConfig;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "Failed parsing "

    .line 2
    .line 3
    const-string v1, "exception at last,e: "

    .line 4
    .line 5
    const-string v2, "Fail to close stream "

    .line 6
    .line 7
    const-string v3, "PowerController.Config"

    .line 8
    .line 9
    new-instance v4, Landroid/util/AtomicFile;

    .line 10
    .line 11
    new-instance v5, Ljava/io/File;

    .line 12
    .line 13
    new-instance v6, Ljava/io/File;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    const-string/jumbo v8, "system"

    .line 20
    .line 21
    .line 22
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v7, "appPowerSaveConfig.xml"

    .line 26
    .line 27
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    :try_start_0
    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v4

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v8, ">>>file not found,"

    .line 43
    .line 44
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-object v4, v5

    .line 58
    :goto_0
    const/4 v6, 0x0

    .line 59
    if-nez v4, :cond_0

    .line 60
    .line 61
    new-instance v4, Landroid/util/AtomicFile;

    .line 62
    .line 63
    new-instance v8, Ljava/io/File;

    .line 64
    .line 65
    new-instance v9, Ljava/io/File;

    .line 66
    .line 67
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    const-string v11, "etc"

    .line 72
    .line 73
    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v4, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 80
    .line 81
    .line 82
    :try_start_1
    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 83
    .line 84
    .line 85
    move-result-object v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    goto :goto_1

    .line 87
    :catch_1
    move-exception p0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, ">>>default file not found,"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return v6

    .line 106
    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    const-string v8, "UTF-8"

    .line 111
    .line 112
    invoke-interface {v7, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 116
    .line 117
    .line 118
    move-result v8
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    move-object v9, v5

    .line 120
    move-object v10, v9

    .line 121
    :goto_2
    const/4 v11, 0x1

    .line 122
    if-eq v8, v11, :cond_4

    .line 123
    .line 124
    const/4 v11, 0x2

    .line 125
    const-string/jumbo v12, "package"

    .line 126
    .line 127
    .line 128
    if-eq v8, v11, :cond_2

    .line 129
    .line 130
    const/4 v11, 0x3

    .line 131
    if-eq v8, v11, :cond_1

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :cond_1
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_3

    .line 144
    .line 145
    invoke-interface {p0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-object v10, v5

    .line 149
    goto :goto_3

    .line 150
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-eqz v8, :cond_3

    .line 159
    .line 160
    new-instance v10, Landroid/os/AppPowerSaveConfig;

    .line 161
    .line 162
    invoke-direct {v10}, Landroid/os/AppPowerSaveConfig;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string/jumbo v8, "name"

    .line 166
    .line 167
    .line 168
    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    const-string/jumbo v8, "optimize"

    .line 173
    .line 174
    .line 175
    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    iput v8, v10, Landroid/os/AppPowerSaveConfig;->optimize:I

    .line 184
    .line 185
    const-string v8, "alarm"

    .line 186
    .line 187
    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    iput v8, v10, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 196
    .line 197
    const-string/jumbo v8, "wakelock"

    .line 198
    .line 199
    .line 200
    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    iput v8, v10, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 209
    .line 210
    const-string/jumbo v8, "network"

    .line 211
    .line 212
    .line 213
    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    iput v8, v10, Landroid/os/AppPowerSaveConfig;->network:I

    .line 222
    .line 223
    const-string v8, "autolaunch"

    .line 224
    .line 225
    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    iput v8, v10, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 234
    .line 235
    const-string/jumbo v8, "secondarylaunch"

    .line 236
    .line 237
    .line 238
    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    iput v8, v10, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 247
    .line 248
    const-string/jumbo v8, "lockscreencleanup"

    .line 249
    .line 250
    .line 251
    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    iput v8, v10, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 260
    .line 261
    const-string v8, "consumertype"

    .line 262
    .line 263
    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    iput v8, v10, Landroid/os/AppPowerSaveConfig;->powerConsumerType:I

    .line 272
    .line 273
    :cond_3
    :goto_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 274
    .line 275
    .line 276
    move-result v8
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    goto/16 :goto_2

    .line 278
    .line 279
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 280
    .line 281
    .line 282
    return v11

    .line 283
    :catch_2
    move-exception p0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    return v6

    .line 300
    :catch_3
    move-exception p0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    return v6

    .line 317
    :catchall_0
    move-exception p0

    .line 318
    goto/16 :goto_4

    .line 319
    .line 320
    :catch_4
    move-exception p0

    .line 321
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 337
    .line 338
    .line 339
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 340
    .line 341
    .line 342
    return v6

    .line 343
    :catch_5
    move-exception p0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    return v6

    .line 360
    :catch_6
    move-exception p0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    return v6

    .line 377
    :catch_7
    move-exception p0

    .line 378
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 394
    .line 395
    .line 396
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 397
    .line 398
    .line 399
    return v6

    .line 400
    :catch_8
    move-exception p0

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    return v6

    .line 417
    :catch_9
    move-exception p0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    return v6

    .line 434
    :catch_a
    move-exception p0

    .line 435
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 451
    .line 452
    .line 453
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 454
    .line 455
    .line 456
    return v6

    .line 457
    :catch_b
    move-exception p0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object p0

    .line 470
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    return v6

    .line 474
    :catch_c
    move-exception p0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    return v6

    .line 491
    :catch_d
    move-exception p0

    .line 492
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p0

    .line 507
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 508
    .line 509
    .line 510
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    .line 511
    .line 512
    .line 513
    return v6

    .line 514
    :catch_e
    move-exception p0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object p0

    .line 527
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    return v6

    .line 531
    :catch_f
    move-exception p0

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .line 546
    .line 547
    return v6

    .line 548
    :catch_10
    move-exception p0

    .line 549
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object p0

    .line 564
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 565
    .line 566
    .line 567
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    .line 568
    .line 569
    .line 570
    return v6

    .line 571
    :catch_11
    move-exception p0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p0

    .line 584
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    return v6

    .line 588
    :catch_12
    move-exception p0

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object p0

    .line 601
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .line 603
    .line 604
    return v6

    .line 605
    :catch_13
    move-exception p0

    .line 606
    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object p0

    .line 621
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 622
    .line 623
    .line 624
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14

    .line 625
    .line 626
    .line 627
    return v6

    .line 628
    :catch_14
    move-exception p0

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object p0

    .line 641
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .line 643
    .line 644
    return v6

    .line 645
    :catch_15
    move-exception p0

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object p0

    .line 658
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .line 660
    .line 661
    return v6

    .line 662
    :goto_4
    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_16

    .line 663
    .line 664
    .line 665
    throw p0

    .line 666
    :catch_16
    move-exception p0

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object p0

    .line 679
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    return v6

    .line 683
    :catch_17
    move-exception p0

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    .line 685
    .line 686
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object p0

    .line 696
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    return v6
.end method

.method public static setConfigWithType(Landroid/os/AppPowerSaveConfig;II)Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_POWERCONSUMERTYPE:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 2
    .line 3
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iput p2, p0, Landroid/os/AppPowerSaveConfig;->powerConsumerType:I

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    if-ltz p2, :cond_9

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-le p2, v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_OPTIMIZE:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 18
    .line 19
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    iput p2, p0, Landroid/os/AppPowerSaveConfig;->optimize:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_ALARM:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 27
    .line 28
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 29
    .line 30
    if-ne p1, v0, :cond_3

    .line 31
    .line 32
    iput p2, p0, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_WAKELOCK:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 36
    .line 37
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 38
    .line 39
    if-ne p1, v0, :cond_4

    .line 40
    .line 41
    iput p2, p0, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_NETWORK:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 45
    .line 46
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 47
    .line 48
    if-ne p1, v0, :cond_5

    .line 49
    .line 50
    iput p2, p0, Landroid/os/AppPowerSaveConfig;->network:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_AUTOLAUNCH:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 54
    .line 55
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 56
    .line 57
    if-ne p1, v0, :cond_6

    .line 58
    .line 59
    iput p2, p0, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_SECONDARYLAUNCH:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 63
    .line 64
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 65
    .line 66
    if-ne p1, v0, :cond_7

    .line 67
    .line 68
    iput p2, p0, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_7
    sget-object v0, Landroid/os/AppPowerSaveConfig$ConfigType;->TYPE_LOCKSCREENCLEANUP:Landroid/os/AppPowerSaveConfig$ConfigType;

    .line 72
    .line 73
    iget v0, v0, Landroid/os/AppPowerSaveConfig$ConfigType;->value:I

    .line 74
    .line 75
    if-ne p1, v0, :cond_8

    .line 76
    .line 77
    iput p2, p0, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 78
    .line 79
    :cond_8
    :goto_0
    return v1

    .line 80
    :cond_9
    :goto_1
    const/4 p0, 0x0

    .line 81
    return p0
.end method

.method public static writeConfig(Ljava/util/Map;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/AppPowerSaveConfig;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "package"

    .line 2
    .line 3
    .line 4
    const-string v1, "app_powersave_config"

    .line 5
    .line 6
    const-string v2, "PowerController.Config"

    .line 7
    .line 8
    new-instance v3, Landroid/util/AtomicFile;

    .line 9
    .line 10
    new-instance v4, Ljava/io/File;

    .line 11
    .line 12
    new-instance v5, Ljava/io/File;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    const-string/jumbo v7, "system"

    .line 19
    .line 20
    .line 21
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v6, "appPowerSaveConfig.xml"

    .line 25
    .line 26
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    .line 38
    .line 39
    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v7, "utf-8"

    .line 43
    .line 44
    .line 45
    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v6, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Ljava/util/Map$Entry;

    .line 78
    .line 79
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Landroid/os/AppPowerSaveConfig;

    .line 90
    .line 91
    invoke-virtual {v7}, Landroid/os/AppPowerSaveConfig;->isReset()Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {v6, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    const-string/jumbo v10, "name"

    .line 102
    .line 103
    .line 104
    invoke-interface {v6, v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    .line 106
    .line 107
    const-string/jumbo v9, "optimize"

    .line 108
    .line 109
    .line 110
    iget v10, v7, Landroid/os/AppPowerSaveConfig;->optimize:I

    .line 111
    .line 112
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    .line 118
    .line 119
    const-string v9, "alarm"

    .line 120
    .line 121
    iget v10, v7, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 122
    .line 123
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    .line 129
    .line 130
    const-string/jumbo v9, "wakelock"

    .line 131
    .line 132
    .line 133
    iget v10, v7, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 134
    .line 135
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    .line 141
    .line 142
    const-string/jumbo v9, "network"

    .line 143
    .line 144
    .line 145
    iget v10, v7, Landroid/os/AppPowerSaveConfig;->network:I

    .line 146
    .line 147
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    .line 153
    .line 154
    const-string v9, "autolaunch"

    .line 155
    .line 156
    iget v10, v7, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 157
    .line 158
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    .line 164
    .line 165
    const-string/jumbo v9, "secondarylaunch"

    .line 166
    .line 167
    .line 168
    iget v10, v7, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 169
    .line 170
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    .line 176
    .line 177
    const-string/jumbo v9, "lockscreencleanup"

    .line 178
    .line 179
    .line 180
    iget v10, v7, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 181
    .line 182
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    .line 188
    .line 189
    const-string v9, "consumertype"

    .line 190
    .line 191
    iget v7, v7, Landroid/os/AppPowerSaveConfig;->powerConsumerType:I

    .line 192
    .line 193
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-interface {v6, v8, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    .line 199
    .line 200
    invoke-interface {v6, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_1
    invoke-interface {v6, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    .line 207
    .line 208
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    .line 213
    .line 214
    const/4 p0, 0x1

    .line 215
    return p0

    .line 216
    :catch_0
    move-exception p0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v1, "Failed to write state, restoring backup.exp:\n"

    .line 220
    .line 221
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 235
    .line 236
    .line 237
    return v4

    .line 238
    :catch_1
    move-exception p0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v1, "Failed to write state: "

    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    return v4
.end method

.method private static writeItem(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string/jumbo p2, "null"

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_6

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-le v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 11
    .line 12
    if-ltz v0, :cond_6

    .line 13
    .line 14
    if-le v0, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget v0, p0, Landroid/os/AppPowerSaveConfig;->network:I

    .line 18
    .line 19
    if-ltz v0, :cond_6

    .line 20
    .line 21
    if-le v0, v2, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget v0, p0, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 25
    .line 26
    if-ltz v0, :cond_6

    .line 27
    .line 28
    if-le v0, v2, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget v0, p0, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 32
    .line 33
    if-ltz v0, :cond_6

    .line 34
    .line 35
    if-le v0, v2, :cond_4

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    iget v0, p0, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 39
    .line 40
    if-ltz v0, :cond_6

    .line 41
    .line 42
    if-le v0, v2, :cond_5

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_5
    const/4 v0, 0x1

    .line 46
    return v0

    .line 47
    :cond_6
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PowerController.Config"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "{ optimize: "

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v2, p0, Landroid/os/AppPowerSaveConfig;->optimize:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", alarm: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 27
    .line 28
    invoke-static {v2}, Landroid/os/AppPowerSaveConfig;->ConfigValue2Str(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "("

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v3, p0, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "), wakelock: "

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v3, p0, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 51
    .line 52
    invoke-static {v3}, Landroid/os/AppPowerSaveConfig;->ConfigValue2Str(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v3, p0, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, "), network: "

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v3, p0, Landroid/os/AppPowerSaveConfig;->network:I

    .line 73
    .line 74
    invoke-static {v3}, Landroid/os/AppPowerSaveConfig;->ConfigValue2Str(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v3, p0, Landroid/os/AppPowerSaveConfig;->network:I

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, "), autoLaunch: "

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v3, p0, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 95
    .line 96
    invoke-static {v3}, Landroid/os/AppPowerSaveConfig;->ConfigValue2Str(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget v3, p0, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 107
    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v3, "), secondaryLaunch: "

    .line 112
    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v3, p0, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 117
    .line 118
    invoke-static {v3}, Landroid/os/AppPowerSaveConfig;->ConfigValue2Str(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v3, p0, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v3, "), lockscreenCleanup: "

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v3, p0, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 139
    .line 140
    invoke-static {v3}, Landroid/os/AppPowerSaveConfig;->ConfigValue2Str(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget v2, p0, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v2, ") }"

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/os/AppPowerSaveConfig;->optimize:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/os/AppPowerSaveConfig;->alarm:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/os/AppPowerSaveConfig;->wakelock:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/os/AppPowerSaveConfig;->network:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/os/AppPowerSaveConfig;->autoLaunch:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/os/AppPowerSaveConfig;->secondaryLaunch:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroid/os/AppPowerSaveConfig;->lockscreenCleanup:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroid/os/AppPowerSaveConfig;->powerConsumerType:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
