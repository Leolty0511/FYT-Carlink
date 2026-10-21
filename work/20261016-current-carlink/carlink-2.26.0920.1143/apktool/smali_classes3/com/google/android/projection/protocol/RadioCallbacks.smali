.class interface abstract Lcom/google/android/projection/protocol/RadioCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/NativeCallback;


# virtual methods
.method public abstract onCancelRadioOperationsRequest(I)I
.end method

.method public abstract onConfigureChannelSpacingRequest(II)I
.end method

.method public abstract onGetCurrentRadioState()Lcom/google/android/projection/protocol/Radio$RadioState;
.end method

.method public abstract onGetProgramListRequest(I)I
.end method

.method public abstract onGetTrafficUpdateRequest(I)I
.end method

.method public abstract onMuteRadioRequest(IZ)I
.end method

.method public abstract onRadioSourceRequest()I
.end method

.method public abstract onScanStationsRequest(IZZZ)I
.end method

.method public abstract onSeekStationRequest(IZZ)I
.end method

.method public abstract onSelectActiveRadioRequest(I)I
.end method

.method public abstract onStepChannelRequest(IZZ)I
.end method

.method public abstract onTuneToStationRequest(III)I
.end method
