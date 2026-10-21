package android.hardware.hdmi;

import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class HdmiPlaybackClient extends HdmiClient {
    private static final int ADDR_TV = 0;
    private static final String TAG = "HdmiPlaybackClient";

    public interface DisplayStatusCallback {
        void onComplete(int i2);
    }

    public interface OneTouchPlayCallback {
        void onComplete(int i2);
    }

    public HdmiPlaybackClient(IHdmiControlService iHdmiControlService) {
        super(iHdmiControlService);
    }

    private IHdmiControlCallback getCallbackWrapper(final OneTouchPlayCallback oneTouchPlayCallback) {
        return new IHdmiControlCallback.Stub() { // from class: android.hardware.hdmi.HdmiPlaybackClient.1
            @Override // android.hardware.hdmi.IHdmiControlCallback
            public void onComplete(int i2) {
                oneTouchPlayCallback.onComplete(i2);
            }
        };
    }

    @Override // android.hardware.hdmi.HdmiClient
    public int getDeviceType() {
        return 4;
    }

    public void oneTouchPlay(OneTouchPlayCallback oneTouchPlayCallback) {
        try {
            this.mService.oneTouchPlay(getCallbackWrapper(oneTouchPlayCallback));
        } catch (RemoteException e2) {
            Log.e(TAG, "oneTouchPlay threw exception ", e2);
        }
    }

    public void queryDisplayStatus(DisplayStatusCallback displayStatusCallback) {
        try {
            this.mService.queryDisplayStatus(getCallbackWrapper(displayStatusCallback));
        } catch (RemoteException e2) {
            Log.e(TAG, "queryDisplayStatus threw exception ", e2);
        }
    }

    public void sendStandby() {
        try {
            this.mService.sendStandby(getDeviceType(), HdmiDeviceInfo.idForCecDevice(0));
        } catch (RemoteException e2) {
            Log.e(TAG, "sendStandby threw exception ", e2);
        }
    }

    private IHdmiControlCallback getCallbackWrapper(final DisplayStatusCallback displayStatusCallback) {
        return new IHdmiControlCallback.Stub() { // from class: android.hardware.hdmi.HdmiPlaybackClient.2
            @Override // android.hardware.hdmi.IHdmiControlCallback
            public void onComplete(int i2) {
                displayStatusCallback.onComplete(i2);
            }
        };
    }
}
