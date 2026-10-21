.class public interface abstract Landroid/telephony/mbms/vendor/IMbmsDownloadService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I
.end method

.method public abstract dispose(I)V
.end method

.method public abstract download(Landroid/telephony/mbms/DownloadRequest;)I
.end method

.method public abstract getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
.end method

.method public abstract initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
.end method

.method public abstract listPendingDownloads(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I
.end method

.method public abstract requestUpdateFileServices(ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I
.end method

.method public abstract setTempFileRootDirectory(ILjava/lang/String;)I
.end method

.method public abstract unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)I
.end method
