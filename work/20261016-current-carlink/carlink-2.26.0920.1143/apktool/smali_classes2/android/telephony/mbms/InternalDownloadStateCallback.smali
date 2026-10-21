.class public Landroid/telephony/mbms/InternalDownloadStateCallback;
.super Landroid/telephony/mbms/IDownloadStateCallback$Stub;
.source "SourceFile"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/DownloadStateCallback;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/DownloadStateCallback;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/telephony/mbms/IDownloadStateCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mIsStopped:Z

    .line 6
    .line 7
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mAppCallback:Landroid/telephony/mbms/DownloadStateCallback;

    .line 8
    .line 9
    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Landroid/telephony/mbms/InternalDownloadStateCallback;)Landroid/telephony/mbms/DownloadStateCallback;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mAppCallback:Landroid/telephony/mbms/DownloadStateCallback;

    return-object p0
.end method


# virtual methods
.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    iget-boolean v0, v8, Landroid/telephony/mbms/InternalDownloadStateCallback;->mIsStopped:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v9, v8, Landroid/telephony/mbms/InternalDownloadStateCallback;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v10, Landroid/telephony/mbms/InternalDownloadStateCallback$1;

    .line 10
    .line 11
    move-object v0, v10

    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move v4, p3

    .line 16
    move v5, p4

    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    move/from16 v7, p6

    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Landroid/telephony/mbms/InternalDownloadStateCallback$1;-><init>(Landroid/telephony/mbms/InternalDownloadStateCallback;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mIsStopped:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroid/telephony/mbms/InternalDownloadStateCallback$2;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/telephony/mbms/InternalDownloadStateCallback$2;-><init>(Landroid/telephony/mbms/InternalDownloadStateCallback;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mIsStopped:Z

    return-void
.end method
