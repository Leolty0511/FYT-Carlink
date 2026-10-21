.class Landroid/printservice/PrintService$1;
.super Landroid/printservice/IPrintService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/printservice/PrintService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/printservice/PrintService;


# direct methods
.method public constructor <init>(Landroid/printservice/PrintService;)V
    .locals 0

    iput-object p1, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-direct {p0}, Landroid/printservice/IPrintService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createPrinterDiscoverySession()V
    .locals 2

    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public destroyPrinterDiscoverySession()V
    .locals 2

    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x7

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setClient(Landroid/printservice/IPrintServiceClient;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xb

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public startPrinterDiscovery(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public stopPrinterDiscovery()V
    .locals 2

    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
