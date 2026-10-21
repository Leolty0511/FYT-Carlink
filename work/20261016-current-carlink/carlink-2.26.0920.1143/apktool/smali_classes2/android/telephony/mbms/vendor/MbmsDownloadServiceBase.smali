.class public Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.super Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;
    }
.end annotation


# instance fields
.field private final mDownloadCallbackBinderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/mbms/DownloadStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadCallbackDeathRecipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackBinderMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic access$000(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackBinderMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dispose(I)V
    .locals 0

    return-void
.end method

.method public download(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
    .locals 4

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;

    invoke-direct {v2, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;II)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IMbmsDownloadSessionCallback;II)V

    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->initialize(ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)I

    move-result p1

    return p1
.end method

.method public initialize(ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public listPendingDownloads(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAppCallbackDied(II)V
    .locals 0

    return-void
.end method

.method public registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I
    .locals 7

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3
    new-instance v0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;

    invoke-direct {v0, p0, v4, p1, p2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)V

    .line 4
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 6
    new-instance v6, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadStateCallback;IILandroid/telephony/mbms/DownloadRequest;)V

    .line 7
    iget-object p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p3, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p1, v6}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)I

    move-result p1

    return p1
.end method

.method public requestUpdateFileServices(ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setTempFileRootDirectory(ILjava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)I
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    .line 3
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    const-string v1, "Unknown callback"

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackBinderMap:Ljava/util/Map;

    .line 6
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/mbms/DownloadStateCallback;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)I

    move-result p1

    return p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
