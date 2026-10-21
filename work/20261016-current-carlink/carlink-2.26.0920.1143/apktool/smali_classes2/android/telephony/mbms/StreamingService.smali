.class public Landroid/telephony/mbms/StreamingService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/StreamingService$StreamingStateChangeReason;,
        Landroid/telephony/mbms/StreamingService$StreamingState;
    }
.end annotation


# static fields
.field public static final BROADCAST_METHOD:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MbmsStreamingService"

.field public static final REASON_BY_USER_REQUEST:I = 0x1

.field public static final REASON_END_OF_SESSION:I = 0x2

.field public static final REASON_FREQUENCY_CONFLICT:I = 0x3

.field public static final REASON_LEFT_MBMS_BROADCAST_AREA:I = 0x6

.field public static final REASON_NONE:I = 0x0

.field public static final REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE:I = 0x5

.field public static final REASON_OUT_OF_MEMORY:I = 0x4

.field public static final STATE_STALLED:I = 0x3

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field public static final UNICAST_METHOD:I = 0x2


# instance fields
.field private final mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field private final mParentSession:Landroid/telephony/MbmsStreamingSession;

.field private mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

.field private final mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

.field private final mSubscriptionId:I


# direct methods
.method public constructor <init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    .line 5
    .line 6
    iput-object p3, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    .line 7
    .line 8
    iput-object p2, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    .line 11
    .line 12
    iput-object p5, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 13
    .line 14
    return-void
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    return-object v0
.end method

.method public getInfo()Landroid/telephony/mbms/StreamingServiceInfo;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    return-object v0
.end method

.method public getPlaybackUri()Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget v1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    .line 6
    .line 7
    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/telephony/mbms/ServiceInfo;->getServiceId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object v0

    .line 18
    :catch_0
    const-string v0, "MbmsStreamingService"

    .line 19
    .line 20
    const-string v1, "Remote process died"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 27
    .line 28
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    invoke-direct {p0, v1, v0}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v1, "No streaming service attached"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public stopStreaming()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget v1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    .line 6
    .line 7
    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/telephony/mbms/ServiceInfo;->getServiceId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->stopStreaming(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :catch_0
    :try_start_1
    const-string v0, "MbmsStreamingService"

    .line 25
    .line 26
    const-string v1, "Remote process died"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-direct {p0, v1, v0}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    return-void

    .line 40
    :goto_2
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v1, "No streaming service attached"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method
