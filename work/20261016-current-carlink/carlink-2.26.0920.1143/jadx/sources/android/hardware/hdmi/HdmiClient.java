package android.hardware.hdmi;

import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class HdmiClient {
    private static final String TAG = "HdmiClient";
    private IHdmiVendorCommandListener mIHdmiVendorCommandListener;
    final IHdmiControlService mService;

    public HdmiClient(IHdmiControlService iHdmiControlService) {
        this.mService = iHdmiControlService;
    }

    private static IHdmiVendorCommandListener getListenerWrapper(final HdmiControlManager.VendorCommandListener vendorCommandListener) {
        return new IHdmiVendorCommandListener.Stub() { // from class: android.hardware.hdmi.HdmiClient.1
            @Override // android.hardware.hdmi.IHdmiVendorCommandListener
            public void onControlStateChanged(boolean z2, int i2) {
                vendorCommandListener.onControlStateChanged(z2, i2);
            }

            @Override // android.hardware.hdmi.IHdmiVendorCommandListener
            public void onReceived(int i2, int i3, byte[] bArr, boolean z2) {
                vendorCommandListener.onReceived(i2, i3, bArr, z2);
            }
        };
    }

    public HdmiDeviceInfo getActiveSource() {
        try {
            return this.mService.getActiveSource();
        } catch (RemoteException e2) {
            Log.e(TAG, "getActiveSource threw exception ", e2);
            return null;
        }
    }

    public abstract int getDeviceType();

    public void sendKeyEvent(int i2, boolean z2) {
        try {
            this.mService.sendKeyEvent(getDeviceType(), i2, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "sendKeyEvent threw exception ", e2);
        }
    }

    public void sendVendorCommand(int i2, byte[] bArr, boolean z2) {
        try {
            this.mService.sendVendorCommand(getDeviceType(), i2, bArr, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to send vendor command: ", e2);
        }
    }

    public void setVendorCommandListener(HdmiControlManager.VendorCommandListener vendorCommandListener) {
        if (vendorCommandListener == null) {
            throw new IllegalArgumentException("listener cannot be null");
        }
        if (this.mIHdmiVendorCommandListener != null) {
            throw new IllegalStateException("listener was already set");
        }
        try {
            IHdmiVendorCommandListener listenerWrapper = getListenerWrapper(vendorCommandListener);
            this.mService.addVendorCommandListener(listenerWrapper, getDeviceType());
            this.mIHdmiVendorCommandListener = listenerWrapper;
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to set vendor command listener: ", e2);
        }
    }
}
