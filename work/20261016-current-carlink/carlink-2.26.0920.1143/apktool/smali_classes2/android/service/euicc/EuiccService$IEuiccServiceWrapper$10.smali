.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IEraseSubscriptionsCallback;

.field final synthetic val$slotId:I


# direct methods
.method public constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$callback:Landroid/service/euicc/IEraseSubscriptionsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    .line 4
    .line 5
    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$slotId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/service/euicc/EuiccService;->onEraseSubscriptions(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :try_start_0
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$callback:Landroid/service/euicc/IEraseSubscriptionsCallback;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Landroid/service/euicc/IEraseSubscriptionsCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    return-void
.end method
