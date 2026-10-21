.class public Landroid/telephony/SmsManagerEx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsManagerEx$FdnFilterImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_SUBSCRIPTION_ID:I = -0x3ea

.field public static final MMS_ERROR_FDN_CHECKED_CONTACRS:I = 0x9

.field private static final MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "SmsManagerEx"

.field private static final sInstance:Landroid/telephony/SmsManagerEx;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mFdnServiceManger:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;

.field private volatile mService:Lcom/android/internal/telephony/IMmsNetwork;

.field private mSubId:I

.field private mTelephonyManagerEx:Landroid/telephony/TelephonyManagerEx;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/telephony/SmsManagerEx;

    .line 2
    .line 3
    const/16 v1, -0x3ea

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/telephony/SmsManagerEx;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/telephony/SmsManagerEx;->sInstance:Landroid/telephony/SmsManagerEx;

    .line 9
    .line 10
    new-instance v0, Landroid/content/ComponentName;

    .line 11
    .line 12
    const-string v1, "com.android.mms.service"

    .line 13
    .line 14
    const-string v2, "com.android.mms.service.MmsNetworkService"

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroid/telephony/SmsManagerEx;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/telephony/SmsManagerEx$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/telephony/SmsManagerEx$1;-><init>(Landroid/telephony/SmsManagerEx;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/telephony/SmsManagerEx;->mConnection:Landroid/content/ServiceConnection;

    .line 10
    .line 11
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/telephony/TelephonyManagerEx;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManagerEx;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroid/telephony/SmsManagerEx;->mTelephonyManagerEx:Landroid/telephony/TelephonyManagerEx;

    .line 24
    .line 25
    iput p1, p0, Landroid/telephony/SmsManagerEx;->mSubId:I

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic access$000(Landroid/telephony/SmsManagerEx;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SmsManagerEx;->mSubId:I

    return p0
.end method

.method public static synthetic access$100(Landroid/telephony/SmsManagerEx;)Landroid/telephony/TelephonyManagerEx;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SmsManagerEx;->mTelephonyManagerEx:Landroid/telephony/TelephonyManagerEx;

    return-object p0
.end method

.method public static synthetic access$302(Landroid/telephony/SmsManagerEx;Lcom/android/internal/telephony/IMmsNetwork;)Lcom/android/internal/telephony/IMmsNetwork;
    .locals 0

    iput-object p1, p0, Landroid/telephony/SmsManagerEx;->mService:Lcom/android/internal/telephony/IMmsNetwork;

    return-object p1
.end method

.method private copyMessageToIcc([B[BII)I
    .locals 8

    .line 1
    const-string v0, "copyMessageToIcc subId:["

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManagerEx;->getISmsExService()Lcom/android/internal/telephony/ISmsEx;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    move v3, p4

    .line 17
    move v5, p3

    .line 18
    move-object v6, p2

    .line 19
    move-object v7, p1

    .line 20
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISmsEx;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-string p1, "SmsManagerEx"

    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p3, "]success:["

    .line 35
    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p3, "]"

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    :cond_0
    return v1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p2, "pdu is NULL"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public static getDefault()Landroid/telephony/SmsManagerEx;
    .locals 1

    sget-object v0, Landroid/telephony/SmsManagerEx;->sInstance:Landroid/telephony/SmsManagerEx;

    return-object v0
.end method

.method private static getISmsExService()Lcom/android/internal/telephony/ISmsEx;
    .locals 1

    .line 1
    const-string v0, "ismsEx"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/telephony/ISmsEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsEx;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static getPdu(Ljava/lang/String;Ljava/lang/String;ILandroid/text/format/Time;)[B
    .locals 1

    .line 1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne v0, p2, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getReceivedPdu(Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getSubActivity(I)Landroid/telephony/SmsManagerEx;
    .locals 1

    new-instance v0, Landroid/telephony/SmsManagerEx;

    invoke-direct {v0, p0}, Landroid/telephony/SmsManagerEx;-><init>(I)V

    return-object v0
.end method

.method private tryConnecting(Landroid/content/Context;)Z
    .locals 9

    .line 1
    const-string v0, "SmsManagerEx"

    .line 2
    .line 3
    const-string v1, "Connecting to MmsNetwork"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Landroid/telephony/SmsManagerEx;->mService:Lcom/android/internal/telephony/IMmsNetwork;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p1, "SmsManagerEx"

    .line 15
    .line 16
    const-string v0, "Already connected"

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return v1

    .line 23
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v2, Landroid/telephony/SmsManagerEx;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :try_start_1
    iget-object v3, p0, Landroid/telephony/SmsManagerEx;->mConnection:Landroid/content/ServiceConnection;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    const-string p1, "SmsManagerEx"

    .line 43
    .line 44
    const-string v0, "Failed to bind to MmsNetwork"

    .line 45
    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_2
    monitor-exit p0

    .line 50
    return v2

    .line 51
    :catch_0
    move-exception p1

    .line 52
    const-string v0, "SmsManagerEx"

    .line 53
    .line 54
    const-string v3, "Forbidden to bind to MmsNetwork"

    .line 55
    .line 56
    invoke-static {v0, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    const-wide/16 v5, 0xfa0

    .line 64
    .line 65
    add-long/2addr v3, v5

    .line 66
    :goto_0
    const-wide/16 v7, 0x0

    .line 67
    .line 68
    cmp-long p1, v5, v7

    .line 69
    .line 70
    if-lez p1, :cond_3

    .line 71
    .line 72
    :try_start_3
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception p1

    .line 77
    :try_start_4
    const-string v0, "SmsManagerEx"

    .line 78
    .line 79
    const-string v5, "Connection wait interrupted"

    .line 80
    .line 81
    invoke-static {v0, v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object p1, p0, Landroid/telephony/SmsManagerEx;->mService:Lcom/android/internal/telephony/IMmsNetwork;

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    monitor-exit p0

    .line 89
    return v1

    .line 90
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    sub-long v5, v3, v5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    monitor-exit p0

    .line 98
    return v2

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    throw p1
.end method


# virtual methods
.method public acquireNetwork(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 3

    .line 1
    const-string v0, "acquireNetwork"

    .line 2
    .line 3
    const-string v1, "SmsManagerEx"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/SmsManagerEx;->tryConnecting(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "acquireNetwork from mmsnetwork"

    .line 15
    .line 16
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroid/telephony/SmsManagerEx;->mService:Lcom/android/internal/telephony/IMmsNetwork;

    .line 20
    .line 21
    iget v0, p0, Landroid/telephony/SmsManagerEx;->mSubId:I

    .line 22
    .line 23
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {p1, p2, p3, v0, v2}, Lcom/android/internal/telephony/IMmsNetwork;->acquireNetwork(Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p3, "acquireNetwork exception "

    .line 36
    .line 37
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string p3, "releaseNetwork RemoteException "

    .line 55
    .line 56
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 70
    return p1
.end method

.method public checkFdnContact(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/16 v0, 0x40

    .line 10
    .line 11
    new-array v7, v0, [B

    .line 12
    .line 13
    iget-object v0, p0, Landroid/telephony/SmsManagerEx;->mFdnServiceManger:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;

    .line 18
    .line 19
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroid/telephony/SmsManagerEx;->mFdnServiceManger:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;

    .line 23
    .line 24
    new-instance v1, Landroid/telephony/SmsManagerEx$FdnFilterImpl;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v1, p0, v3}, Landroid/telephony/SmsManagerEx$FdnFilterImpl;-><init>(Landroid/telephony/SmsManagerEx;Landroid/telephony/SmsManagerEx$1;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->setFdnListner(Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroid/telephony/SmsManagerEx;->mFdnServiceManger:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;

    .line 42
    .line 43
    const v3, -0x1dfffff0

    .line 44
    .line 45
    .line 46
    iget p1, p0, Landroid/telephony/SmsManagerEx;->mSubId:I

    .line 47
    .line 48
    int-to-long v4, p1

    .line 49
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->process(Landroid/content/Context;IJLjava/util/List;[B)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/4 v0, 0x0

    .line 54
    const-string v1, "SmsManagerEx"

    .line 55
    .line 56
    if-lez p1, :cond_1

    .line 57
    .line 58
    const-string p1, "mService.process is ok and filtering is well"

    .line 59
    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    if-nez p1, :cond_2

    .line 65
    .line 66
    const-string p1, "mService.process is no need to filter or fdn disenable."

    .line 67
    .line 68
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const-string p1, "mService.process is end, and filtering is no match"

    .line 73
    .line 74
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    :goto_0
    const-string p1, "Sms checkFdnContacts is successful"

    .line 79
    .line 80
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return v0
.end method

.method public checkFdnContacts(Ljava/util/List;)[Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    new-array v10, v3, [Z

    .line 18
    .line 19
    const/16 v3, 0x40

    .line 20
    .line 21
    new-array v11, v3, [B

    .line 22
    .line 23
    iget-object v3, v0, Landroid/telephony/SmsManagerEx;->mFdnServiceManger:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    new-instance v3, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v3, v0, Landroid/telephony/SmsManagerEx;->mFdnServiceManger:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;

    .line 33
    .line 34
    new-instance v4, Landroid/telephony/SmsManagerEx$FdnFilterImpl;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-direct {v4, v0, v5}, Landroid/telephony/SmsManagerEx$FdnFilterImpl;-><init>(Landroid/telephony/SmsManagerEx;Landroid/telephony/SmsManagerEx$1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->setFdnListner(Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    .line 44
    .line 45
    const/4 v13, 0x1

    .line 46
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const/4 v14, 0x0

    .line 50
    move v15, v14

    .line 51
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const-string v9, "SmsManagerEx"

    .line 56
    .line 57
    if-ge v15, v3, :cond_3

    .line 58
    .line 59
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    const-string v3, "mService.process is begin"

    .line 67
    .line 68
    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v4, "destination --->["

    .line 74
    .line 75
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v4, "]"

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-object v3, v0, Landroid/telephony/SmsManagerEx;->mFdnServiceManger:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;

    .line 100
    .line 101
    const v5, -0x1dfffff0

    .line 102
    .line 103
    .line 104
    iget v4, v0, Landroid/telephony/SmsManagerEx;->mSubId:I

    .line 105
    .line 106
    int-to-long v6, v4

    .line 107
    move-object v4, v2

    .line 108
    move-object v8, v12

    .line 109
    move-object v13, v9

    .line 110
    move-object v9, v11

    .line 111
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->process(Landroid/content/Context;IJLjava/util/List;[B)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-lez v3, :cond_1

    .line 116
    .line 117
    const-string v3, "mService.process is ok and filtering is well"

    .line 118
    .line 119
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    aput-boolean v14, v10, v15

    .line 123
    .line 124
    :goto_1
    const/4 v3, 0x1

    .line 125
    goto :goto_2

    .line 126
    :cond_1
    if-nez v3, :cond_2

    .line 127
    .line 128
    const-string v3, "mService.process is no need to filter or fdn disenable."

    .line 129
    .line 130
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    aput-boolean v14, v10, v15

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    const-string v3, "mService.process is end, and filtering is no match"

    .line 137
    .line 138
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    const/4 v3, 0x1

    .line 142
    aput-boolean v3, v10, v15

    .line 143
    .line 144
    :goto_2
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    add-int/lit8 v15, v15, 0x1

    .line 148
    .line 149
    move v13, v3

    .line 150
    goto :goto_0

    .line 151
    :cond_3
    move-object v13, v9

    .line 152
    const-string v1, "Mms checkFdnContacts is successful"

    .line 153
    .line 154
    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    return-object v10
.end method

.method public copyMessageToIccEfWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)I
    .locals 1

    .line 1
    new-instance p1, Landroid/text/format/Time;

    .line 2
    .line 3
    const-string v0, "UTC"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p5, p6}, Landroid/text/format/Time;->set(J)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p3, p4, p1}, Landroid/telephony/SmsManagerEx;->getPdu(Ljava/lang/String;Ljava/lang/String;ILandroid/text/format/Time;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "SmsManagerEx"

    .line 18
    .line 19
    const-string p2, "copyMessageToIccEfWithResult ===> data is null ! "

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p2, 0x0

    .line 27
    invoke-direct {p0, p2, p1, p4, p7}, Landroid/telephony/SmsManagerEx;->copyMessageToIcc([B[BII)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public getIsVowifiConnected()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/android/ims/internal/IImsServiceEx;->getCurrentImsFeature()I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne v2, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "getIsVowifiConnected Exception:"

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "SmsManagerEx"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return v0
.end method

.method public getPrimaryCardPhoneId()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, -0x1

    .line 14
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "getPrimaryCardPhoneId Exception:"

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v2, "SmsManagerEx"

    .line 55
    .line 56
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    return v1
.end method

.method public releaseNetwork(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 4

    .line 1
    const-string v0, "releaseNetwork"

    .line 2
    .line 3
    const-string v1, "SmsManagerEx"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Landroid/telephony/SmsManagerEx;->mService:Lcom/android/internal/telephony/IMmsNetwork;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroid/telephony/SmsManagerEx;->mService:Lcom/android/internal/telephony/IMmsNetwork;

    .line 13
    .line 14
    iget v2, p0, Landroid/telephony/SmsManagerEx;->mSubId:I

    .line 15
    .line 16
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/IMmsNetwork;->releaseNetwork(Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v0, "releaseNetwork exception "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "releaseNetwork RemoteException "

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 63
    return p1
.end method
