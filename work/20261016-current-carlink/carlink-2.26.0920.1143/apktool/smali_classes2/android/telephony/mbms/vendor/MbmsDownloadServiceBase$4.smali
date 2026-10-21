.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;
.super Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic val$uid:I


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadStateCallback;IILandroid/telephony/mbms/DownloadRequest;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$uid:I

    iput-object p5, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    invoke-direct {p0, p2, p3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;-><init>(Landroid/telephony/mbms/IDownloadStateCallback;I)V

    return-void
.end method


# virtual methods
.method public onRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$uid:I

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    invoke-virtual {v1}, Landroid/telephony/mbms/DownloadRequest;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    return-void
.end method
