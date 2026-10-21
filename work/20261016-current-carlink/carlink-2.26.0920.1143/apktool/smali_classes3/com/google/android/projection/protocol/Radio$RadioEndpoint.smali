.class public interface abstract Lcom/google/android/projection/protocol/Radio$RadioEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RadioEndpoint"
.end annotation


# virtual methods
.method public abstract sendActiveRadioResponse(IILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I
.end method

.method public abstract sendCancelResponse(II)I
.end method

.method public abstract sendChannelSpacingResponse(III)I
.end method

.method public abstract sendMuteResponse(IIZ)I
.end method

.method public abstract sendProgramListResponse(IIZLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$RadioStationInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract sendRadioSourceResponse(IZ)I
.end method

.method public abstract sendRadioStationInfoNotification(ILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I
.end method

.method public abstract sendScanResponse(IIZ)I
.end method

.method public abstract sendSeekResponse(II)I
.end method

.method public abstract sendStationPresetsResponse(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$StationPresetList;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract sendStepResponse(II)I
.end method

.method public abstract sendTrafficUpdateResponse(IILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$TrafficIncident;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract sendTuneResponse(II)I
.end method
