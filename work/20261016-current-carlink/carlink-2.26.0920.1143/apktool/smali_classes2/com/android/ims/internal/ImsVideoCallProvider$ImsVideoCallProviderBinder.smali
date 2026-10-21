.class final Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImsVideoCallProviderBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProvider;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/ImsVideoCallProvider$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;-><init>(Lcom/android/ims/internal/ImsVideoCallProvider;)V

    return-void
.end method


# virtual methods
.method public requestCallDataUsage()V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x7

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

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

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

.method public setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setCamera(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x2

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

.method public setDeviceOrientation(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setZoom(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
