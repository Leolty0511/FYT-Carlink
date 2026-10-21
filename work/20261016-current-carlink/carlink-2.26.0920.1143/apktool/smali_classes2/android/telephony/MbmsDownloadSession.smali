.class public Landroid/telephony/MbmsDownloadSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MbmsDownloadSession$DownloadStatus;
    }
.end annotation


# static fields
.field public static final DEFAULT_TOP_LEVEL_TEMP_DIRECTORY:Ljava/lang/String; = "androidMbmsTempFileRoot"

.field public static final EXTRA_MBMS_COMPLETED_FILE_URI:Ljava/lang/String; = "android.telephony.extra.MBMS_COMPLETED_FILE_URI"

.field public static final EXTRA_MBMS_DOWNLOAD_REQUEST:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

.field public static final EXTRA_MBMS_DOWNLOAD_RESULT:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

.field public static final EXTRA_MBMS_FILE_INFO:Ljava/lang/String; = "android.telephony.extra.MBMS_FILE_INFO"

.field private static final LOG_TAG:Ljava/lang/String; = "MbmsDownloadSession"

.field public static final MBMS_DOWNLOAD_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsDownload"

.field public static final RESULT_CANCELLED:I = 0x2

.field public static final RESULT_EXPIRED:I = 0x3

.field public static final RESULT_IO_ERROR:I = 0x4

.field public static final RESULT_SUCCESSFUL:I = 0x1

.field public static final STATUS_ACTIVELY_DOWNLOADING:I = 0x1

.field public static final STATUS_PENDING_DOWNLOAD:I = 0x2

.field public static final STATUS_PENDING_DOWNLOAD_WINDOW:I = 0x4

.field public static final STATUS_PENDING_REPAIR:I = 0x3

.field public static final STATUS_UNKNOWN:I

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field private final mInternalDownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/mbms/DownloadStateCallback;",
            "Landroid/telephony/mbms/InternalDownloadStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/mbms/vendor/IMbmsDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 6
    .line 7
    new-instance v0, Landroid/telephony/MbmsDownloadSession$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/telephony/MbmsDownloadSession$1;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    .line 28
    .line 29
    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iput p3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 32
    .line 33
    if-nez p4, :cond_0

    .line 34
    .line 35
    new-instance p4, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p4, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    new-instance p1, Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 45
    .line 46
    invoke-direct {p1, p2, p4}, Landroid/telephony/mbms/InternalDownloadSessionCallback;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;Landroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic access$000(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/telephony/MbmsDownloadSession;)I
    .locals 0

    iget p0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    return p0
.end method

.method public static synthetic access$200(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic access$500(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private bindAndInitialize()I
    .locals 3

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/telephony/MbmsDownloadSession$3;

    invoke-direct {v1, p0}, Landroid/telephony/MbmsDownloadSession$3;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    const-string v2, "android.telephony.action.EmbmsDownload"

    invoke-static {v0, v2, v1}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsDownloadSession;
    .locals 3

    .line 2
    sget-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Landroid/telephony/MbmsDownloadSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/MbmsDownloadSession;-><init>(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)V

    .line 4
    invoke-direct {v0}, Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    sget-object p2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    new-instance p2, Landroid/telephony/MbmsDownloadSession$2;

    invoke-direct {p2, p1, p0}, Landroid/telephony/MbmsDownloadSession$2;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;I)V

    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot have two active instances"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;Landroid/os/Handler;)Landroid/telephony/MbmsDownloadSession;
    .locals 1

    .line 1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsDownloadSession;->create(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsDownloadSession;

    move-result-object p0

    return-object p0
.end method

.method private deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Attempting to delete non-existent download token at "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    sget-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Couldn\'t delete download token at "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method private getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getHash()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ".download_token"

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v1, Ljava/io/File;

    .line 33
    .line 34
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private validateTempFileRootSanity(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v0, "Temp file root cannot be your files dir"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string v0, "Temp file root cannot be your cache dir"

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string v0, "Temp file root cannot be your data dir"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string v0, "Provided File is not a directory"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string v0, "Provided directory does not exist"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method private writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 4

    .line 1
    const-string v0, "Failed to create download token for request "

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    sget-object p1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "Download token "

    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " already exists"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    new-instance v2, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, " due to IOException "

    .line 96
    .line 97
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v2
.end method


# virtual methods
.method public cancelDownload(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/16 p1, 0x192

    .line 19
    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, v0, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Unknown download request."

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_1
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x3

    .line 44
    invoke-direct {p0, p1, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "Middleware not yet bound"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public close()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "Service already dead"

    .line 16
    .line 17
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 37
    .line 38
    invoke-interface {v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->dispose(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    :try_start_2
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string v3, "Remote exception while disposing of service"

    .line 47
    .line 48
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :goto_1
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 80
    .line 81
    .line 82
    throw v2
.end method

.method public download(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v2, "MbmsTempFileRootPrefs"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "mbms_temp_file_root"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Ljava/io/File;

    .line 30
    .line 31
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v4, "androidMbmsTempFileRoot"

    .line 38
    .line 39
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/telephony/MbmsDownloadSession;->setTempFileRootDirectory(Ljava/io/File;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->download(Landroid/telephony/mbms/DownloadRequest;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x3

    .line 61
    invoke-direct {p0, p1, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v0, "Middleware not yet bound"

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I

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
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string p2, "Middleware not yet bound"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public getTempFileRootDirectory()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "MbmsTempFileRootPrefs"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "mbms_temp_file_root"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    return-object v2
.end method

.method public listPendingDownloads()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget v1, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->listPendingDownloads(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object v0

    .line 18
    :catch_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    invoke-direct {p0, v0, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "Middleware not yet bound"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    new-instance v1, Landroid/telephony/mbms/InternalDownloadStateCallback;

    .line 12
    .line 13
    invoke-direct {v1, p2, p3}, Landroid/telephony/mbms/InternalDownloadStateCallback;-><init>(Landroid/telephony/mbms/DownloadStateCallback;Landroid/os/Handler;)V

    .line 14
    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p2}, Landroid/telephony/mbms/DownloadStateCallback;->getCallbackFilterFlags()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-interface {v0, p1, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/16 p2, 0x192

    .line 28
    .line 29
    if-eq p1, p2, :cond_0

    .line 30
    .line 31
    invoke-direct {p0, p1, p3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p2, "Unknown download request."

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_1
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    .line 51
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x3

    .line 55
    invoke-direct {p0, p1, p3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p2, "Middleware not yet bound"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public requestUpdateFileServices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iget v2, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 13
    .line 14
    invoke-interface {v0, v2, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->requestUpdateFileServices(ILjava/util/List;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p1, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    sget-object p1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Remote process died"

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x3

    .line 37
    invoke-direct {p0, p1, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v0, "Middleware not yet bound"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x192

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, p1, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Unknown download request."

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x3

    .line 40
    invoke-direct {p0, p1, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "Middleware not yet bound"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public setTempFileRootDirectory(Ljava/io/File;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->validateTempFileRootSanity(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_2
    iget v2, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 20
    .line 21
    invoke-interface {v0, v2, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->setTempFileRootDirectory(ILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-direct {p0, v0, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string v1, "MbmsTempFileRootPrefs"

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "mbms_temp_file_root"

    .line 44
    .line 45
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x3

    .line 59
    invoke-direct {p0, p1, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_1
    move-exception p1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Unable to canonicalize the provided path: "

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :catch_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v0, "Got IOException checking directory sanity"

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    const-string v0, "Middleware not yet bound"

    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1
.end method

.method public unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/telephony/mbms/InternalDownloadStateCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :try_start_1
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x192

    .line 27
    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    .line 30
    invoke-direct {p0, p1, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v0, "Unknown download request."

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :catch_0
    :try_start_2
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x3

    .line 48
    invoke-direct {p0, p1, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/telephony/mbms/InternalDownloadStateCallback;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/telephony/mbms/InternalDownloadStateCallback;->stop()V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void

    .line 65
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v0, "Middleware not yet bound"

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Landroid/telephony/mbms/InternalDownloadStateCallback;

    .line 81
    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/telephony/mbms/InternalDownloadStateCallback;->stop()V

    .line 85
    .line 86
    .line 87
    :cond_4
    throw p1
.end method
