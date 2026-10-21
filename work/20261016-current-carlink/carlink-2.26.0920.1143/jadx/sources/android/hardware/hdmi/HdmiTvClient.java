package android.hardware.hdmi;

import android.accessibilityservice.c;
import android.os.RemoteException;
import android.util.Log;
import java.util.Collections;
import java.util.List;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public final class HdmiTvClient extends HdmiClient {
    private static final String TAG = "HdmiTvClient";
    public static final int VENDOR_DATA_SIZE = 16;

    public interface HdmiMhlVendorCommandListener {
        void onReceived(int i2, int i3, int i4, byte[] bArr);
    }

    public interface InputChangeListener {
        void onChanged(HdmiDeviceInfo hdmiDeviceInfo);
    }

    public interface SelectCallback {
        void onComplete(int i2);
    }

    public HdmiTvClient(IHdmiControlService iHdmiControlService) {
        super(iHdmiControlService);
    }

    private void checkTimerRecordingSourceType(int i2) {
        if (i2 != 1 && i2 != 2 && i2 != 3) {
            throw new IllegalArgumentException(c.d("Invalid source type:", i2));
        }
    }

    public static HdmiTvClient create(IHdmiControlService iHdmiControlService) {
        return new HdmiTvClient(iHdmiControlService);
    }

    private static IHdmiControlCallback getCallbackWrapper(final SelectCallback selectCallback) {
        return new IHdmiControlCallback.Stub() { // from class: android.hardware.hdmi.HdmiTvClient.1
            @Override // android.hardware.hdmi.IHdmiControlCallback
            public void onComplete(int i2) {
                selectCallback.onComplete(i2);
            }
        };
    }

    private static IHdmiInputChangeListener getListenerWrapper(final InputChangeListener inputChangeListener) {
        return new IHdmiInputChangeListener.Stub() { // from class: android.hardware.hdmi.HdmiTvClient.2
            @Override // android.hardware.hdmi.IHdmiInputChangeListener
            public void onChanged(HdmiDeviceInfo hdmiDeviceInfo) {
                inputChangeListener.onChanged(hdmiDeviceInfo);
            }
        };
    }

    public void clearTimerRecording(int i2, int i3, HdmiTimerRecordSources.TimerRecordSource timerRecordSource) {
        if (timerRecordSource == null) {
            throw new IllegalArgumentException("source must not be null.");
        }
        checkTimerRecordingSourceType(i3);
        try {
            byte[] bArr = new byte[timerRecordSource.getDataSize()];
            timerRecordSource.toByteArray(bArr, 0);
            this.mService.clearTimerRecording(i2, i3, bArr);
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to start record: ", e2);
        }
    }

    public void deviceSelect(int i2, SelectCallback selectCallback) {
        if (selectCallback == null) {
            throw new IllegalArgumentException("callback must not be null.");
        }
        try {
            this.mService.deviceSelect(i2, getCallbackWrapper(selectCallback));
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to select device: ", e2);
        }
    }

    public List<HdmiDeviceInfo> getDeviceList() {
        try {
            return this.mService.getDeviceList();
        } catch (RemoteException e2) {
            Log.e("TAG", "Failed to call getDeviceList():", e2);
            return Collections.emptyList();
        }
    }

    @Override // android.hardware.hdmi.HdmiClient
    public int getDeviceType() {
        return 0;
    }

    public void portSelect(int i2, SelectCallback selectCallback) {
        if (selectCallback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        try {
            this.mService.portSelect(i2, getCallbackWrapper(selectCallback));
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to select port: ", e2);
        }
    }

    public void sendMhlVendorCommand(int i2, int i3, int i4, byte[] bArr) {
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("Invalid vendor command data.");
        }
        if (i3 < 0 || i3 >= 16) {
            throw new IllegalArgumentException(c.d("Invalid offset:", i3));
        }
        if (i4 < 0 || i3 + i4 > 16) {
            throw new IllegalArgumentException(c.d("Invalid length:", i4));
        }
        try {
            this.mService.sendMhlVendorCommand(i2, i3, i4, bArr);
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to send vendor command: ", e2);
        }
    }

    public void sendStandby(int i2) {
        try {
            this.mService.sendStandby(getDeviceType(), i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "sendStandby threw exception ", e2);
        }
    }

    public void setHdmiMhlVendorCommandListener(HdmiMhlVendorCommandListener hdmiMhlVendorCommandListener) {
        if (hdmiMhlVendorCommandListener == null) {
            throw new IllegalArgumentException("listener must not be null.");
        }
        try {
            this.mService.addHdmiMhlVendorCommandListener(getListenerWrapper(hdmiMhlVendorCommandListener));
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to set hdmi mhl vendor command listener: ", e2);
        }
    }

    public void setInputChangeListener(InputChangeListener inputChangeListener) {
        if (inputChangeListener == null) {
            throw new IllegalArgumentException("listener must not be null.");
        }
        try {
            this.mService.setInputChangeListener(getListenerWrapper(inputChangeListener));
        } catch (RemoteException e2) {
            Log.e("TAG", "Failed to set InputChangeListener:", e2);
        }
    }

    public void setRecordListener(HdmiRecordListener hdmiRecordListener) {
        if (hdmiRecordListener == null) {
            throw new IllegalArgumentException("listener must not be null.");
        }
        try {
            this.mService.setHdmiRecordListener(getListenerWrapper(hdmiRecordListener));
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to set record listener.", e2);
        }
    }

    public void setSystemAudioMode(boolean z2, SelectCallback selectCallback) {
        try {
            this.mService.setSystemAudioMode(z2, getCallbackWrapper(selectCallback));
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to set system audio mode:", e2);
        }
    }

    public void setSystemAudioMute(boolean z2) {
        try {
            this.mService.setSystemAudioMute(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to set mute: ", e2);
        }
    }

    public void setSystemAudioVolume(int i2, int i3, int i4) {
        try {
            this.mService.setSystemAudioVolume(i2, i3, i4);
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to set volume: ", e2);
        }
    }

    public void startOneTouchRecord(int i2, HdmiRecordSources.RecordSource recordSource) {
        if (recordSource == null) {
            throw new IllegalArgumentException("source must not be null.");
        }
        try {
            byte[] bArr = new byte[recordSource.getDataSize(true)];
            recordSource.toByteArray(true, bArr, 0);
            this.mService.startOneTouchRecord(i2, bArr);
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to start record: ", e2);
        }
    }

    public void startTimerRecording(int i2, int i3, HdmiTimerRecordSources.TimerRecordSource timerRecordSource) {
        if (timerRecordSource == null) {
            throw new IllegalArgumentException("source must not be null.");
        }
        checkTimerRecordingSourceType(i3);
        try {
            byte[] bArr = new byte[timerRecordSource.getDataSize()];
            timerRecordSource.toByteArray(bArr, 0);
            this.mService.startTimerRecording(i2, i3, bArr);
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to start record: ", e2);
        }
    }

    public void stopOneTouchRecord(int i2) {
        try {
            this.mService.stopOneTouchRecord(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to stop record: ", e2);
        }
    }

    private static IHdmiRecordListener getListenerWrapper(final HdmiRecordListener hdmiRecordListener) {
        return new IHdmiRecordListener.Stub() { // from class: android.hardware.hdmi.HdmiTvClient.3
            @Override // android.hardware.hdmi.IHdmiRecordListener
            public byte[] getOneTouchRecordSource(int i2) {
                HdmiRecordSources.RecordSource recordSourceOnOneTouchRecordSourceRequested = hdmiRecordListener.onOneTouchRecordSourceRequested(i2);
                if (recordSourceOnOneTouchRecordSourceRequested == null) {
                    return EmptyArray.BYTE;
                }
                byte[] bArr = new byte[recordSourceOnOneTouchRecordSourceRequested.getDataSize(true)];
                recordSourceOnOneTouchRecordSourceRequested.toByteArray(true, bArr, 0);
                return bArr;
            }

            @Override // android.hardware.hdmi.IHdmiRecordListener
            public void onClearTimerRecordingResult(int i2, int i3) {
                hdmiRecordListener.onClearTimerRecordingResult(i2, i3);
            }

            @Override // android.hardware.hdmi.IHdmiRecordListener
            public void onOneTouchRecordResult(int i2, int i3) {
                hdmiRecordListener.onOneTouchRecordResult(i2, i3);
            }

            @Override // android.hardware.hdmi.IHdmiRecordListener
            public void onTimerRecordingResult(int i2, int i3) {
                hdmiRecordListener.onTimerRecordingResult(i2, HdmiRecordListener.TimerStatusData.parseFrom(i3));
            }
        };
    }

    private IHdmiMhlVendorCommandListener getListenerWrapper(final HdmiMhlVendorCommandListener hdmiMhlVendorCommandListener) {
        return new IHdmiMhlVendorCommandListener.Stub() { // from class: android.hardware.hdmi.HdmiTvClient.4
            @Override // android.hardware.hdmi.IHdmiMhlVendorCommandListener
            public void onReceived(int i2, int i3, int i4, byte[] bArr) {
                hdmiMhlVendorCommandListener.onReceived(i2, i3, i4, bArr);
            }
        };
    }
}
