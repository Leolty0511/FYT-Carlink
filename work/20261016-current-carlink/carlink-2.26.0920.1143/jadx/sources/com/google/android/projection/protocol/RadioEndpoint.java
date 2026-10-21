package com.google.android.projection.protocol;

import com.google.android.projection.common.UsedByNative;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RadioEndpoint implements CarServiceProvider, RadioCallbacks, Radio.RadioEndpoint {
    private static final String TAG = "GAL";

    @UsedByNative
    private long mNativeRadioEndpoint;
    private Radio mRadio;

    public RadioEndpoint(Radio radio) {
        this.mRadio = radio;
    }

    private native int nativeInit(int i2, long j2);

    private native int nativeSendActiveRadioNotification(int i2, int i3, Radio.RadioStationInfo radioStationInfo);

    private native int nativeSendCancelRadioOperationsResponse(int i2, int i3);

    private native int nativeSendConfigureChannelSpacingResponse(int i2, int i3, int i4);

    private native int nativeSendGetProgramListResponse(int i2, int i3, boolean z2, Radio.RadioStationInfo[] radioStationInfoArr);

    private native int nativeSendGetStationPresetsResponse(Radio.StationPresetList[] stationPresetListArr);

    private native int nativeSendGetTrafficUpdateResponse(int i2, int i3, Radio.TrafficIncident[] trafficIncidentArr);

    private native int nativeSendMuteRadioResponse(int i2, int i3, boolean z2);

    private native int nativeSendRadioSourceResponse(int i2, boolean z2);

    private native int nativeSendRadioStationInfoNotification(int i2, Radio.RadioStationInfo radioStationInfo);

    private native int nativeSendScanStationsResponse(int i2, int i3, boolean z2);

    private native int nativeSendSeekStationResponse(int i2, int i3);

    private native int nativeSendStepChannelResponse(int i2, int i3);

    private native int nativeSendTuneToStationResponse(int i2, int i3);

    private native int nativeSetRadioConfiguration(Radio.RadioProperties[] radioPropertiesArr);

    private native void nativeShutdown();

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        if (nativeInit(i2, j2) != 0) {
            return false;
        }
        nativeSetRadioConfiguration((Radio.RadioProperties[]) this.mRadio.getRadioProperties().toArray(new Radio.RadioProperties[0]));
        return true;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeRadioEndpoint;
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onCancelRadioOperationsRequest(int i2) {
        return this.mRadio.cancel(i2);
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onConfigureChannelSpacingRequest(int i2, int i3) {
        return this.mRadio.configureChannelSpacing(i2, i3);
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public Radio.RadioState onGetCurrentRadioState() {
        return this.mRadio.getCurrentRadioState();
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onGetProgramListRequest(int i2) {
        return this.mRadio.getProgramList(i2);
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onGetTrafficUpdateRequest(int i2) {
        return this.mRadio.getTrafficUpdate(i2);
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onMuteRadioRequest(int i2, boolean z2) {
        return this.mRadio.mute(i2, z2);
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onRadioSourceRequest() {
        return this.mRadio.enableRadioSource();
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onScanStationsRequest(int i2, boolean z2, boolean z3, boolean z4) {
        return this.mRadio.scan(i2, z2, z3, z4);
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onSeekStationRequest(int i2, boolean z2, boolean z3) {
        return this.mRadio.seek(i2, z2, z3);
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onSelectActiveRadioRequest(int i2) {
        return this.mRadio.selectRadio(i2);
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onStepChannelRequest(int i2, boolean z2, boolean z3) {
        return this.mRadio.step(i2, z2, z3);
    }

    @Override // com.google.android.projection.protocol.RadioCallbacks
    public int onTuneToStationRequest(int i2, int i3, int i4) {
        return this.mRadio.tune(i2, i3, i4);
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendActiveRadioResponse(int i2, int i3, Radio.RadioStationInfo radioStationInfo) {
        return nativeSendActiveRadioNotification(i2, i3, radioStationInfo);
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendCancelResponse(int i2, int i3) {
        return nativeSendCancelRadioOperationsResponse(i2, i3);
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendChannelSpacingResponse(int i2, int i3, int i4) {
        return nativeSendConfigureChannelSpacingResponse(i2, i3, i4);
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendMuteResponse(int i2, int i3, boolean z2) {
        return nativeSendMuteRadioResponse(i2, i3, z2);
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendProgramListResponse(int i2, int i3, boolean z2, List<Radio.RadioStationInfo> list) {
        return nativeSendGetProgramListResponse(i2, i3, z2, (Radio.RadioStationInfo[]) list.toArray(new Radio.RadioStationInfo[0]));
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendRadioSourceResponse(int i2, boolean z2) {
        return nativeSendRadioSourceResponse(i2, z2);
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendRadioStationInfoNotification(int i2, Radio.RadioStationInfo radioStationInfo) {
        return nativeSendRadioStationInfoNotification(i2, radioStationInfo);
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendScanResponse(int i2, int i3, boolean z2) {
        return nativeSendScanStationsResponse(i2, i3, z2);
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendSeekResponse(int i2, int i3) {
        return nativeSendSeekStationResponse(i2, i3);
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendStationPresetsResponse(List<Radio.StationPresetList> list) {
        return nativeSendGetStationPresetsResponse((Radio.StationPresetList[]) list.toArray(new Radio.StationPresetList[0]));
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendStepResponse(int i2, int i3) {
        return nativeSendStepChannelResponse(0, i3);
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendTrafficUpdateResponse(int i2, int i3, List<Radio.TrafficIncident> list) {
        return nativeSendGetTrafficUpdateResponse(i2, i3, (Radio.TrafficIncident[]) list.toArray(new Radio.TrafficIncident[0]));
    }

    @Override // com.google.android.projection.protocol.Radio.RadioEndpoint
    public int sendTuneResponse(int i2, int i3) {
        return nativeSendTuneToStationResponse(i2, i3);
    }
}
