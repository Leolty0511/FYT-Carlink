package android.hardware.radio;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class TunerCallbackAdapter extends ITunerCallback.Stub {
    private static final String TAG = "BroadcastRadio.TunerCallbackAdapter";
    private final RadioTuner.Callback mCallback;
    private final Handler mHandler;

    public TunerCallbackAdapter(RadioTuner.Callback callback, Handler handler) {
        this.mCallback = callback;
        if (handler == null) {
            this.mHandler = new Handler(Looper.getMainLooper());
        } else {
            this.mHandler = handler;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAntennaState$5(boolean z2) {
        this.mCallback.onAntennaState(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackgroundScanAvailabilityChange$6(boolean z2) {
        this.mCallback.onBackgroundScanAvailabilityChange(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackgroundScanComplete$7() {
        this.mCallback.onBackgroundScanComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConfigurationChanged$1(RadioManager.BandConfig bandConfig) {
        this.mCallback.onConfigurationChanged(bandConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCurrentProgramInfoChanged$2(RadioManager.ProgramInfo programInfo) {
        this.mCallback.onProgramInfoChanged(programInfo);
        RadioMetadata metadata = programInfo.getMetadata();
        if (metadata != null) {
            this.mCallback.onMetadataChanged(metadata);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEmergencyAnnouncement$4(boolean z2) {
        this.mCallback.onEmergencyAnnouncement(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onError$0(int i2) {
        this.mCallback.onError(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onProgramListChanged$8() {
        this.mCallback.onProgramListChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTrafficAnnouncement$3(boolean z2) {
        this.mCallback.onTrafficAnnouncement(z2);
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onAntennaState(boolean z2) {
        this.mHandler.post(new d(this, z2, 3));
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onBackgroundScanAvailabilityChange(boolean z2) {
        this.mHandler.post(new d(this, z2, 1));
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onBackgroundScanComplete() {
        this.mHandler.post(new f(this, 1));
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onConfigurationChanged(RadioManager.BandConfig bandConfig) {
        this.mHandler.post(new c(this, bandConfig, 1));
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onCurrentProgramInfoChanged(RadioManager.ProgramInfo programInfo) {
        if (programInfo == null) {
            Log.e(TAG, "ProgramInfo must not be null");
        } else {
            this.mHandler.post(new c(this, programInfo, 0));
        }
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onEmergencyAnnouncement(boolean z2) {
        this.mHandler.post(new d(this, z2, 0));
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onError(final int i2) {
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f87b.lambda$onError$0(i2);
            }
        });
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onProgramListChanged() {
        this.mHandler.post(new f(this, 0));
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onTrafficAnnouncement(boolean z2) {
        this.mHandler.post(new d(this, z2, 2));
    }
}
