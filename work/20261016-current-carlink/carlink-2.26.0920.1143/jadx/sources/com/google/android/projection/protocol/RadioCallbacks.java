package com.google.android.projection.protocol;

/* JADX INFO: loaded from: classes3.dex */
interface RadioCallbacks extends NativeCallback {
    int onCancelRadioOperationsRequest(int i2);

    int onConfigureChannelSpacingRequest(int i2, int i3);

    Radio.RadioState onGetCurrentRadioState();

    int onGetProgramListRequest(int i2);

    int onGetTrafficUpdateRequest(int i2);

    int onMuteRadioRequest(int i2, boolean z2);

    int onRadioSourceRequest();

    int onScanStationsRequest(int i2, boolean z2, boolean z3, boolean z4);

    int onSeekStationRequest(int i2, boolean z2, boolean z3);

    int onSelectActiveRadioRequest(int i2);

    int onStepChannelRequest(int i2, boolean z2, boolean z3);

    int onTuneToStationRequest(int i2, int i3, int i4);
}
