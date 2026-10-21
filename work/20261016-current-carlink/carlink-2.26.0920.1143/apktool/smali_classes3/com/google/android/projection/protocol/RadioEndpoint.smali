.class public Lcom/google/android/projection/protocol/RadioEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/RadioCallbacks;
.implements Lcom/google/android/projection/protocol/Radio$RadioEndpoint;


# static fields
.field private static final TAG:Ljava/lang/String; = "GAL"


# instance fields
.field private mNativeRadioEndpoint:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private mRadio:Lcom/google/android/projection/protocol/Radio;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/Radio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    .line 5
    .line 6
    return-void
.end method

.method private native nativeInit(IJ)I
.end method

.method private native nativeSendActiveRadioNotification(IILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I
.end method

.method private native nativeSendCancelRadioOperationsResponse(II)I
.end method

.method private native nativeSendConfigureChannelSpacingResponse(III)I
.end method

.method private native nativeSendGetProgramListResponse(IIZ[Lcom/google/android/projection/protocol/Radio$RadioStationInfo;)I
.end method

.method private native nativeSendGetStationPresetsResponse([Lcom/google/android/projection/protocol/Radio$StationPresetList;)I
.end method

.method private native nativeSendGetTrafficUpdateResponse(II[Lcom/google/android/projection/protocol/Radio$TrafficIncident;)I
.end method

.method private native nativeSendMuteRadioResponse(IIZ)I
.end method

.method private native nativeSendRadioSourceResponse(IZ)I
.end method

.method private native nativeSendRadioStationInfoNotification(ILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I
.end method

.method private native nativeSendScanStationsResponse(IIZ)I
.end method

.method private native nativeSendSeekStationResponse(II)I
.end method

.method private native nativeSendStepChannelResponse(II)I
.end method

.method private native nativeSendTuneToStationResponse(II)I
.end method

.method private native nativeSetRadioConfiguration([Lcom/google/android/projection/protocol/Radio$RadioProperties;)I
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public create(IJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeInit(IJ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/protocol/Radio;->getRadioProperties()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-array p2, p2, [Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 15
    .line 16
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, [Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSetRadioConfiguration([Lcom/google/android/projection/protocol/Radio$RadioProperties;)I

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    return p2
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeShutdown()V

    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mNativeRadioEndpoint:J

    return-wide v0
.end method

.method public onCancelRadioOperationsRequest(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/Radio;->cancel(I)I

    move-result p1

    return p1
.end method

.method public onConfigureChannelSpacingRequest(II)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/protocol/Radio;->configureChannelSpacing(II)I

    move-result p1

    return p1
.end method

.method public onGetCurrentRadioState()Lcom/google/android/projection/protocol/Radio$RadioState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0}, Lcom/google/android/projection/protocol/Radio;->getCurrentRadioState()Lcom/google/android/projection/protocol/Radio$RadioState;

    move-result-object v0

    return-object v0
.end method

.method public onGetProgramListRequest(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/Radio;->getProgramList(I)I

    move-result p1

    return p1
.end method

.method public onGetTrafficUpdateRequest(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/Radio;->getTrafficUpdate(I)I

    move-result p1

    return p1
.end method

.method public onMuteRadioRequest(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/protocol/Radio;->mute(IZ)I

    move-result p1

    return p1
.end method

.method public onRadioSourceRequest()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0}, Lcom/google/android/projection/protocol/Radio;->enableRadioSource()I

    move-result v0

    return v0
.end method

.method public onScanStationsRequest(IZZZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/Radio;->scan(IZZZ)I

    move-result p1

    return p1
.end method

.method public onSeekStationRequest(IZZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/projection/protocol/Radio;->seek(IZZ)I

    move-result p1

    return p1
.end method

.method public onSelectActiveRadioRequest(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/Radio;->selectRadio(I)I

    move-result p1

    return p1
.end method

.method public onStepChannelRequest(IZZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/projection/protocol/Radio;->step(IZZ)I

    move-result p1

    return p1
.end method

.method public onTuneToStationRequest(III)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioEndpoint;->mRadio:Lcom/google/android/projection/protocol/Radio;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/projection/protocol/Radio;->tune(III)I

    move-result p1

    return p1
.end method

.method public sendActiveRadioResponse(IILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendActiveRadioNotification(IILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I

    move-result p1

    return p1
.end method

.method public sendCancelResponse(II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendCancelRadioOperationsResponse(II)I

    move-result p1

    return p1
.end method

.method public sendChannelSpacingResponse(III)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendConfigureChannelSpacingResponse(III)I

    move-result p1

    return p1
.end method

.method public sendMuteResponse(IIZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendMuteRadioResponse(IIZ)I

    move-result p1

    return p1
.end method

.method public sendProgramListResponse(IIZLjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$RadioStationInfo;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 3
    .line 4
    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p4

    .line 8
    check-cast p4, [Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendGetProgramListResponse(IIZ[Lcom/google/android/projection/protocol/Radio$RadioStationInfo;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public sendRadioSourceResponse(IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendRadioSourceResponse(IZ)I

    move-result p1

    return p1
.end method

.method public sendRadioStationInfoNotification(ILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendRadioStationInfoNotification(ILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I

    move-result p1

    return p1
.end method

.method public sendScanResponse(IIZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendScanStationsResponse(IIZ)I

    move-result p1

    return p1
.end method

.method public sendSeekResponse(II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendSeekStationResponse(II)I

    move-result p1

    return p1
.end method

.method public sendStationPresetsResponse(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$StationPresetList;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/protocol/Radio$StationPresetList;

    .line 3
    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [Lcom/google/android/projection/protocol/Radio$StationPresetList;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendGetStationPresetsResponse([Lcom/google/android/projection/protocol/Radio$StationPresetList;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public sendStepResponse(II)I
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendStepChannelResponse(II)I

    move-result p1

    return p1
.end method

.method public sendTrafficUpdateResponse(IILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$TrafficIncident;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/protocol/Radio$TrafficIncident;

    .line 3
    .line 4
    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    check-cast p3, [Lcom/google/android/projection/protocol/Radio$TrafficIncident;

    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendGetTrafficUpdateResponse(II[Lcom/google/android/projection/protocol/Radio$TrafficIncident;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public sendTuneResponse(II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/RadioEndpoint;->nativeSendTuneToStationResponse(II)I

    move-result p1

    return p1
.end method
