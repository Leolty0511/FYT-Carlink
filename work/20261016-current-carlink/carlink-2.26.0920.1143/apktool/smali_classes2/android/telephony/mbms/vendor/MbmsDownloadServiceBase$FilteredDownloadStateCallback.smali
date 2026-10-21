.class abstract Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;
.super Landroid/telephony/mbms/DownloadStateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FilteredDownloadStateCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/telephony/mbms/IDownloadStateCallback;


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/IDownloadStateCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/telephony/mbms/DownloadStateCallback;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->mCallback:Landroid/telephony/mbms/IDownloadStateCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/telephony/mbms/DownloadStateCallback;->isFilterFlagSet(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->mCallback:Landroid/telephony/mbms/IDownloadStateCallback;

    .line 10
    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, p4

    .line 15
    move v6, p5

    .line 16
    move v7, p6

    .line 17
    invoke-interface/range {v1 .. v7}, Landroid/telephony/mbms/IDownloadStateCallback;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->onRemoteException(Landroid/os/RemoteException;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public abstract onRemoteException(Landroid/os/RemoteException;)V
.end method

.method public onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroid/telephony/mbms/DownloadStateCallback;->isFilterFlagSet(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->mCallback:Landroid/telephony/mbms/IDownloadStateCallback;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/mbms/IDownloadStateCallback;->onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->onRemoteException(Landroid/os/RemoteException;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
