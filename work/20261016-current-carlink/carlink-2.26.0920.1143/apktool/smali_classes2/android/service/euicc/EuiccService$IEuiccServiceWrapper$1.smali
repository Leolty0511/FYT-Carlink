.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IDownloadSubscriptionCallback;

.field final synthetic val$forceDeactivateSim:Z

.field final synthetic val$slotId:I

.field final synthetic val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

.field final synthetic val$switchAfterDownload:Z


# direct methods
.method public constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iput-boolean p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$switchAfterDownload:Z

    iput-boolean p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$forceDeactivateSim:Z

    iput-object p6, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$callback:Landroid/service/euicc/IDownloadSubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    .line 4
    .line 5
    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$slotId:I

    .line 6
    .line 7
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 8
    .line 9
    iget-boolean v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$switchAfterDownload:Z

    .line 10
    .line 11
    iget-boolean v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$forceDeactivateSim:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/euicc/EuiccService;->onDownloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$callback:Landroid/service/euicc/IDownloadSubscriptionCallback;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroid/service/euicc/IDownloadSubscriptionCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    return-void
.end method
