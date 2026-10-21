.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

.field final synthetic val$forceDeactivateSim:Z

.field final synthetic val$slotId:I


# direct methods
.method public constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$slotId:I

    iput-boolean p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$forceDeactivateSim:Z

    iput-object p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$callback:Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    .line 4
    .line 5
    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$slotId:I

    .line 6
    .line 7
    iget-boolean v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$forceDeactivateSim:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/service/euicc/EuiccService;->onGetDefaultDownloadableSubscriptionList(IZ)Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :try_start_0
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$callback:Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;->onComplete(Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    return-void
.end method
