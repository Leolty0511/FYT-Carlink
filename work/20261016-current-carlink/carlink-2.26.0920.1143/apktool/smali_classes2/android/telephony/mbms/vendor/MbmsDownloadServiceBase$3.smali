.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

.field final synthetic val$callback:Landroid/telephony/mbms/IDownloadStateCallback;

.field final synthetic val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic val$uid:I


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$uid:I

    iput-object p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    iput-object p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$callback:Landroid/telephony/mbms/IDownloadStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 2
    .line 3
    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$uid:I

    .line 4
    .line 5
    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/telephony/mbms/DownloadRequest;->getSubscriptionId()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->access$000(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$callback:Landroid/telephony/mbms/IDownloadStateCallback;

    .line 21
    .line 22
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->access$100(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$callback:Landroid/telephony/mbms/IDownloadStateCallback;

    .line 36
    .line 37
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void
.end method
