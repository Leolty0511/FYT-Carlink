.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;
.super Landroid/telephony/mbms/MbmsDownloadSessionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

.field final synthetic val$subscriptionId:I

.field final synthetic val$uid:I


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IMbmsDownloadSessionCallback;II)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 8
    .line 9
    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    .line 10
    .line 11
    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onFileServicesUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 8
    .line 9
    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    .line 10
    .line 11
    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onMiddlewareReady()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onMiddlewareReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 8
    .line 9
    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    .line 10
    .line 11
    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
