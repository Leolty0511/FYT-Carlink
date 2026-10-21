.class Landroid/telecom/VideoCallbackServant$2;
.super Lcom/android/internal/telecom/IVideoCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallbackServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method public constructor <init>(Landroid/telecom/VideoCallbackServant;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x4

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

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

.method public changePeerDimensions(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 6
    .line 7
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 8
    .line 9
    iget-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x3

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 6
    .line 7
    iget-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 6
    .line 7
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
