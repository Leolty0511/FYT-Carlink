.class public Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;
.super Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose(I)V
    .locals 0

    return-void
.end method

.method public getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I
    .locals 4

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;

    invoke-direct {v2, p0, v0, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;II)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IMbmsStreamingSessionCallback;II)V

    invoke-virtual {p0, v1, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->initialize(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)I

    move-result p1

    return p1
.end method

.method public initialize(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public onAppCallbackDied(II)V
    .locals 0

    return-void
.end method

.method public requestUpdateStreamingServices(ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
    .locals 4

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;

    invoke-direct {v2, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;II)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;

    invoke-direct {v1, p0, p3, v0, p1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IStreamingServiceCallback;II)V

    invoke-virtual {p0, p1, p2, v1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/StreamingServiceCallback;)I

    move-result p1

    return p1
.end method

.method public startStreaming(ILjava/lang/String;Landroid/telephony/mbms/StreamingServiceCallback;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public stopStreaming(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
