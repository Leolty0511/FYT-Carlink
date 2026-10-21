.class public Landroid/telephony/mbms/InternalStreamingSessionCallback;
.super Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;
.source "SourceFile"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    .line 6
    .line 7
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 8
    .line 9
    iput-object p2, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Landroid/telephony/mbms/InternalStreamingSessionCallback;)Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    return-object p0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroid/telephony/mbms/InternalStreamingSessionCallback$1;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onMiddlewareReady()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onStreamingServicesUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/StreamingServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    return-void
.end method
