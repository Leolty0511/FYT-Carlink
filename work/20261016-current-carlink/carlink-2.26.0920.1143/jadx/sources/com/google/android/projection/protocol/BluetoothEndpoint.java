package com.google.android.projection.protocol;

import com.google.android.projection.common.UsedByNative;

/* JADX INFO: loaded from: classes3.dex */
public class BluetoothEndpoint implements CarServiceProvider, BluetoothCallbacks {
    private final String mCarBluetoothAddress;
    private final BluetoothEventListener mListener;

    @UsedByNative
    private long mNativeBluetoothEndpoint;
    private final int[] mSupportedBluetoothPairingMethods;

    public interface BluetoothEventListener {
        void onAuthenticationResult(int i2);

        void onPairingRequest(String str, int i2);
    }

    public BluetoothEndpoint(BluetoothEventListener bluetoothEventListener, String str, int[] iArr) {
        this.mListener = bluetoothEventListener;
        this.mCarBluetoothAddress = str;
        this.mSupportedBluetoothPairingMethods = iArr;
    }

    private native int nativeInit(int i2, long j2);

    private native void nativeOnReadyForPairing(boolean z2);

    private native void nativeRequestDelayedPairing();

    private native void nativeSendAuthData(String str, int i2);

    private native void nativeSendBluetoothUnavailable();

    private native void nativeSetDeviceInfo(String str, int[] iArr);

    private native void nativeShutdown();

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        if (nativeInit(i2, j2) != 0) {
            return false;
        }
        nativeSetDeviceInfo(this.mCarBluetoothAddress, this.mSupportedBluetoothPairingMethods);
        return true;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeBluetoothEndpoint;
    }

    @Override // com.google.android.projection.protocol.BluetoothCallbacks
    public void onAuthenticationResult(int i2) {
        this.mListener.onAuthenticationResult(i2);
    }

    @Override // com.google.android.projection.protocol.BluetoothCallbacks
    public void onPairingRequest(String str, int i2) {
        this.mListener.onPairingRequest(str, i2);
    }

    public void onReadyForPairing(boolean z2) {
        nativeOnReadyForPairing(z2);
    }

    public void requestDelayedPairing() {
        nativeRequestDelayedPairing();
    }

    public void sendAuthData(String str, int i2) {
        nativeSendAuthData(str, i2);
    }

    public void sendBluetoothUnavailable() {
        nativeSendBluetoothUnavailable();
    }
}
