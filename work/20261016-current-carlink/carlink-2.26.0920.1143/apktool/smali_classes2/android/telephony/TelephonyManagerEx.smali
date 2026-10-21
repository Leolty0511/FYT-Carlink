.class public Landroid/telephony/TelephonyManagerEx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManagerEx$SmsBlockRecorder;,
        Landroid/telephony/TelephonyManagerEx$CallBlockRecorder;
    }
.end annotation


# static fields
.field private static final BLACKLIST_ACTION_NAME:Ljava/lang/String; = "com.sprd.blacklist.action"

.field private static final BLACKLIST_CALL_RECORD_URI:Ljava/lang/String; = "content://com.sprd.providers.block/block_recorded"

.field private static final BLACKLIST_NUMBER_URI:Ljava/lang/String; = "content://com.android.blockednumber/blocked"

.field private static final BLACKLIST_PACKAGE_NAME:Ljava/lang/String; = "com.sprd.firewall"

.field private static final BLACKLIST_SMS_RECORD_URI:Ljava/lang/String; = "content://com.sprd.providers.block/sms_block_recorded"

.field public static final BlOCK_NUMBER_CONTENT_URI:Landroid/net/Uri;

.field private static final CALL_SELECT:I = 0x2

.field private static final CALL_SHIFT:I = 0x1

.field private static final LTE_INDICATOR:Ljava/lang/String; = "L"

.field private static final RADIO_MODEM_CAPABILITY:Ljava/lang/String; = "persist.radio.modem.config"

.field private static final SIM_ENABLED_PROPERTY:Ljava/lang/String; = "persist.radio.sim_enabled"

.field public static final SMS_SELECT:I = 0x1

.field public static final SMS_SHIFT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManagerEx"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSubId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.android.blockednumber/blocked"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/telephony/TelephonyManagerEx;->BlOCK_NUMBER_CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Landroid/telephony/TelephonyManagerEx;->mSubId:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    iput-object p2, p0, Landroid/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Landroid/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method public static checkSimlockLocked(I)Z
    .locals 0

    invoke-static {p0}, Landroid/telephony/TelephonyManagerEx;->getSimStateFromProperty(I)Lcom/android/internal/telephony/IccCardConstantsEx$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardConstantsEx$State;->isSimlockLocked()Z

    move-result p0

    return p0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManagerEx;
    .locals 1

    .line 1
    const-string v0, "phone_ex"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/telephony/TelephonyManagerEx;

    .line 8
    .line 9
    return-object p0
.end method

.method private static getDefaultSubscription()I
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .line 1
    const-string v0, "phone"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;
    .locals 1

    .line 1
    const-string v0, "phone_ex"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyEx;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public static getSimStateEx(I)I
    .locals 0

    invoke-static {p0}, Landroid/telephony/TelephonyManagerEx;->getSimStateFromProperty(I)Lcom/android/internal/telephony/IccCardConstantsEx$State;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method private static getSimStateFromProperty(I)Lcom/android/internal/telephony/IccCardConstantsEx$State;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 2
    .line 3
    const-string v1, "gsm.sim.state"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-static {p0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/IccCardConstantsEx$State;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    return-object v0
.end method

.method private getSubId()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/telephony/TelephonyManagerEx;->mSubId:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/telephony/TelephonyManagerEx;->getDefaultSubscription()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :cond_0
    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoEx;
    .locals 1

    .line 1
    const-string v0, "iphonesubinfoEx"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfoEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfoEx;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static isBatteryLow()Z
    .locals 1

    invoke-static {}, Landroid/telephony/LowBatteryCallUtils;->getInstance()Landroid/telephony/LowBatteryCallUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/LowBatteryCallUtils;->isBatteryLow()Z

    move-result v0

    return v0
.end method

.method public static isDeviceSupportLte()Z
    .locals 2

    .line 1
    const-string v0, "persist.radio.modem.config"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "L"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "TelephonyManagerEx"

    .line 28
    .line 29
    const-string v1, "isDeviceSupportLte TRUE"

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public static showLowBatteryChangeToVideoDialog(Landroid/telecom/Call;)V
    .locals 1

    invoke-static {}, Landroid/telephony/LowBatteryCallUtils;->getInstance()Landroid/telephony/LowBatteryCallUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/LowBatteryCallUtils;->showLowBatteryChangeToVideoDialog(Landroid/telecom/Call;)V

    return-void
.end method

.method public static showLowBatteryDialDialog(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 1

    invoke-static {}, Landroid/telephony/LowBatteryCallUtils;->getInstance()Landroid/telephony/LowBatteryCallUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/LowBatteryCallUtils;->showLowBatteryDialDialog(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static showLowBatteryInCallDialog(Landroid/content/Context;Landroid/telecom/Call;)V
    .locals 1

    invoke-static {}, Landroid/telephony/LowBatteryCallUtils;->getInstance()Landroid/telephony/LowBatteryCallUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/LowBatteryCallUtils;->showLowBatteryInCallDialog(Landroid/content/Context;Landroid/telecom/Call;)V

    return-void
.end method


# virtual methods
.method public checkIsBlackNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, "checkIsBlackCallNumber"

    .line 2
    .line 3
    const-string v1, "TelephonyManagerEx"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string p1, "original_number"

    .line 13
    .line 14
    const-string v0, "block_type"

    .line 15
    .line 16
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    sget-object v3, Landroid/telephony/TelephonyManagerEx;->BlOCK_NUMBER_CONTENT_URI:Landroid/net/Uri;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    :cond_0
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v4, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 67
    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 72
    .line 73
    .line 74
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    if-nez v3, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 84
    .line 85
    :catch_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const-string p1, "black number cursor == null"

    .line 90
    .line 91
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :goto_1
    const/4 p1, 0x0

    .line 95
    return p1
.end method

.method public checkIsBlockCallNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "checkIsBlackCallNumber"

    .line 2
    .line 3
    const-string v1, "TelephonyManagerEx"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 p1, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    const-string v0, "block_type"

    .line 17
    .line 18
    const-string v8, "original_number"

    .line 19
    .line 20
    filled-new-array {v0, v8}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    sget-object v3, Landroid/provider/BlockedNumberContract$BlockedNumbers;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {p2, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    and-int/2addr v1, v3

    .line 65
    if-ne v1, v3, :cond_2

    .line 66
    .line 67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    :cond_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const-string p2, "Query black list cursor is null."

    .line 82
    .line 83
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    :goto_0
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 89
    .line 90
    .line 91
    :cond_4
    return p1

    .line 92
    :goto_1
    if-eqz v2, :cond_5

    .line 93
    .line 94
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 95
    .line 96
    .line 97
    :cond_5
    throw p1
.end method

.method public checkIsBlockSMSNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "checkIsBlockSMSNumber"

    .line 2
    .line 3
    const-string v1, "TelephonyManagerEx"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 p1, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    const-string v0, "block_type"

    .line 17
    .line 18
    const-string v8, "original_number"

    .line 19
    .line 20
    filled-new-array {v0, v8}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    sget-object v3, Landroid/provider/BlockedNumberContract$BlockedNumbers;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {p2, v3}, Landroid/telephony/PhoneNumberUtilsEx;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    and-int/2addr v1, v3

    .line 65
    if-ne v1, v3, :cond_2

    .line 66
    .line 67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :cond_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const-string p2, "Query black list cursor is null."

    .line 81
    .line 82
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    :goto_0
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 88
    .line 89
    .line 90
    :cond_4
    return p1

    .line 91
    :goto_1
    if-eqz v2, :cond_5

    .line 92
    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 94
    .line 95
    .line 96
    :cond_5
    throw p1
.end method

.method public createForSubscriptionId(I)Landroid/telephony/TelephonyManagerEx;
    .locals 2

    new-instance v0, Landroid/telephony/TelephonyManagerEx;

    iget-object v1, p0, Landroid/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public createManageBlockedNumbersIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprd.blacklist.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCellLocationForPhone(I)Landroid/telephony/CellLocation;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephonyEx;->getCellLocationForPhone(I)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-static {p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/telephony/CellLocation;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    return-object p1

    .line 29
    :catch_0
    return-object v0
.end method

.method public getDataEnabledDuringVolteCall()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "data_enable_during_volte_calls"

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_0
    return v1
.end method

.method public getIccFdnEnabled(I)Z
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyEx;->getIccFdnEnabledForSubscriber(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIntFromSharedPreference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephonyEx;->getIntFromSharedPreference(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string p2, "NullPointerException getIntFromSharedPreference"

    .line 14
    .line 15
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    const-string p2, "RemoteException getIntFromSharedPreference"

    .line 21
    .line 22
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 p1, -0x1

    .line 26
    return p1
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoEx;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfoEx;->getIsimDomainForSubscriber(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    return-object v0
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoEx;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfoEx;->getIsimImpiForSubscriber(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    return-object v0
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoEx;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfoEx;->getIsimImpuForSubscriber(I)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    return-object v0
.end method

.method public getIsimIst(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoEx;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfoEx;->getIsimIstForSubscriber(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    return-object v0
.end method

.method public getIsimPcscf(I)[Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoEx;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfoEx;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    return-object v0
.end method

.method public getLTECapabilityForPhone(I)Z
    .locals 2

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephonyEx;->getLTECapabilityForPhone(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    const-string v1, "NullPointerException  calling getLTECapabilityForPhone"

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_1
    move-exception p1

    .line 22
    const-string v1, "RemoteException calling getLTECapabilityForPhone"

    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public getLTECapabilityForSubId(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManagerEx;->getLTECapabilityForPhone(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getOriginalServiceProviderName(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephonyEx;->getOriginalServiceProviderName(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string v1, "NullPointerException getOriginalServiceProviderName"

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    const-string v1, "RemoteException getOriginalServiceProviderName"

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public getPnnHomeName(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephonyEx;->getPnnHomeName(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string v1, "NullPointerException calling getPnnHomeName"

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    const-string v1, "RemoteException calling getPnnHomeName"

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public getSmsc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManagerEx;->getSmscForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmscForSubscriber(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getOpPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephonyEx;->getSmscForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    const-string v1, "getSmscForSubscriber NullPointerException"

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception p1

    .line 26
    const-string v1, "getSmscForSubscriber RemoteException"

    .line 27
    .line 28
    invoke-static {v0, v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public getStringFromSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephonyEx;->getStringFromSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string p2, "NullPointerException getStringFromSharedPreference"

    .line 14
    .line 15
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    const-string p2, "RemoteException getStringFromSharedPreference"

    .line 21
    .line 22
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    const-string p1, ""

    .line 26
    .line 27
    return-object p1
.end method

.method public isCallFireWallInstalled()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "com.sprd.firewall"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    move v0, v3

    .line 17
    :catch_0
    :cond_0
    return v0
.end method

.method public isRadioOn(I)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getOpPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    const-string v0, "TelephonyManagerEx"

    .line 18
    .line 19
    const-string v1, "Error calling ITelephony#isRadioOn"

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public isRedundantWapPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const-string v6, "number_value"

    .line 9
    .line 10
    const-string/jumbo v7, "sms_content"

    .line 11
    .line 12
    .line 13
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v1, Landroid/telephony/TelephonyManagerEx$SmsBlockRecorder;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    :cond_0
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p2, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    const-string p1, "TelephonyManagerEx"

    .line 63
    .line 64
    const-string p2, "found redundant wap push record."

    .line 65
    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-nez v1, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 86
    .line 87
    .line 88
    :cond_3
    return p1
.end method

.method public isRingtongUriAvailable(Landroid/net/Uri;)Z
    .locals 2

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephonyEx;->isRingtongUriAvailable(Landroid/net/Uri;)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string v1, "IllegalStateException  calling getRingtoneUri"

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    const-string v1, "NullPointerException  calling getRingtoneUri"

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_2
    move-exception p1

    .line 27
    const-string v1, "RemoteException calling getRingtoneUri"

    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public isSimEnabled(I)Z
    .locals 2

    .line 1
    const-string v0, "persist.radio.sim_enabled"

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "0"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    return p1
.end method

.method public isUsimCard(I)Z
    .locals 2

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephonyEx;->isUsimCard(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string v1, "NullPointerException  calling isUsimCard"

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    const-string v1, "RemoteException calling isUsimCard"

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public putToBlockList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    const-string v3, "original_number"

    .line 17
    .line 18
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p2, "min_match"

    .line 22
    .line 23
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v2, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "block_type"

    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    .line 38
    .line 39
    const-string p2, "name"

    .line 40
    .line 41
    invoke-virtual {v2, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    const-string p2, "black number putToBlockList:exception"

    .line 46
    .line 47
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    :try_start_1
    sget-object p2, Landroid/telephony/TelephonyManagerEx;->BlOCK_NUMBER_CONTENT_URI:Landroid/net/Uri;

    .line 51
    .line 52
    invoke-virtual {p1, p2, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    goto :goto_1

    .line 57
    :catch_1
    const-string p1, "black number putToBlockList: provider == null"

    .line 58
    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    :goto_1
    if-eqz p1, :cond_0

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_2

    .line 67
    :cond_0
    const/4 p1, 0x0

    .line 68
    :goto_2
    return p1
.end method

.method public putToBlockListCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManagerEx;->isCallFireWallInstalled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "TelephonyManagerEx"

    .line 8
    .line 9
    const-string/jumbo p2, "sprd callfirewall is not installed, no call block list"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v0, Ljava/util/Date;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 33
    .line 34
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    move-object v0, p1

    .line 47
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    const-string v1, "display_name"

    .line 60
    .line 61
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v2, -0x1

    .line 66
    if-eq v1, v2, :cond_2

    .line 67
    .line 68
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_2
    const-string v1, ""

    .line 79
    .line 80
    :goto_0
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    .line 84
    .line 85
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    .line 86
    .line 87
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "number_value"

    .line 91
    .line 92
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string p2, "block_date"

    .line 96
    .line 97
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    .line 103
    .line 104
    const-string p2, "name"

    .line 105
    .line 106
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object p2, Landroid/telephony/TelephonyManagerEx$CallBlockRecorder;->CONTENT_URI:Landroid/net/Uri;

    .line 110
    .line 111
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catch_1
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_2
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :goto_1
    return-void
.end method

.method public putToSmsBlackList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManagerEx;->isCallFireWallInstalled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "TelephonyManagerEx"

    .line 8
    .line 9
    const-string/jumbo p2, "sprd callfirewall is not installed, no sms block list"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Landroid/content/ContentValues;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "number_value"

    .line 27
    .line 28
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo p2, "sms_content"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p2, "block_date"

    .line 38
    .line 39
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    .line 45
    .line 46
    sget-object p2, Landroid/telephony/TelephonyManagerEx$SmsBlockRecorder;->CONTENT_URI:Landroid/net/Uri;

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public setDataEnabledDuringVolteCall(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "data_enable_during_volte_calls"

    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setLine1NumberForDisplayForSubscriberEx(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyEx;->setLine1NumberForDisplayForSubscriberEx(ILjava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string p2, "NullPointerException calling ITelephony#setLine1NumberForDisplayForSubscriberEx"

    .line 14
    .line 15
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    const-string p2, "RemoteException calling ITelephony#setLine1NumberForDisplayForSubscriberEx"

    .line 21
    .line 22
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public setSimEnabled(IZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string v0, "1"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "0"

    .line 7
    .line 8
    :goto_0
    const-string v1, "persist.radio.sim_enabled"

    .line 9
    .line 10
    invoke-static {p1, v1, v0}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyEx;->setSimEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    const-string p2, "TelephonyManagerEx"

    .line 25
    .line 26
    const-string v0, "Error calling ITelephonyEx#setSimEnabled"

    .line 27
    .line 28
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_1
    return-void
.end method

.method public setSmsc(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManagerEx;->setSmscForSubscriber(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setSmscForSubscriber(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    const-string v0, "TelephonyManagerEx"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/android/internal/telephony/ITelephonyEx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephonyEx;->setSmscForSubscriber(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    const-string/jumbo p2, "setSmscForSubscriber NullPointerException"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p1

    .line 23
    const-string/jumbo p2, "setSmscForSubscriber RemoteException"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method
