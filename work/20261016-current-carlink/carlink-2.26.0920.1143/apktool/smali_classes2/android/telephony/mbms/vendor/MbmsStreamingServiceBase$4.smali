.class Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;
.super Landroid/telephony/mbms/StreamingServiceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

.field final synthetic val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

.field final synthetic val$subscriptionId:I

.field final synthetic val$uid:I


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IStreamingServiceCallback;II)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/StreamingServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBroadcastSignalStrengthUpdated(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onBroadcastSignalStrengthUpdated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    .line 8
    .line 9
    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    .line 10
    .line 11
    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    .line 8
    .line 9
    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    .line 10
    .line 11
    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onMediaDescriptionUpdated()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/telephony/mbms/IStreamingServiceCallback;->onMediaDescriptionUpdated()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    .line 8
    .line 9
    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    .line 10
    .line 11
    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onStreamMethodUpdated(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamMethodUpdated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    .line 8
    .line 9
    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    .line 10
    .line 11
    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onStreamStateUpdated(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamStateUpdated(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    .line 8
    .line 9
    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    .line 10
    .line 11
    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
