.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

.field final synthetic val$forceDeactivateSim:Z

.field final synthetic val$iccid:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method public constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$iccid:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$forceDeactivateSim:Z

    iput-object p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    .line 4
    .line 5
    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$slotId:I

    .line 6
    .line 7
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$iccid:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$forceDeactivateSim:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/service/euicc/EuiccService;->onSwitchToSubscription(ILjava/lang/String;Z)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :try_start_0
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroid/service/euicc/ISwitchToSubscriptionCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    return-void
.end method
