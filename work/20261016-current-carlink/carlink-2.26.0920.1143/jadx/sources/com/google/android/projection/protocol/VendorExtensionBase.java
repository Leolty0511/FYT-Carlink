package com.google.android.projection.protocol;

import com.google.android.projection.common.UsedByNative;

/* JADX INFO: loaded from: classes3.dex */
public abstract class VendorExtensionBase implements CarServiceProvider {
    private static final boolean DBG = false;
    private static final String TAG = "AHU.VENDOR_EXTENSION";
    protected final int MESSAGE_SUCCESS = 0;

    @UsedByNative
    private long mNativeVendorExtensionBase;

    public VendorExtensionBase() {
        dbgLog("VendorExtensionBase");
    }

    private static void dbgLog(String str) {
    }

    private native void nativeInit(int i2, long j2);

    private native void nativeSend(byte[] bArr);

    private native void nativeShutdown();

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        dbgLog("init");
        nativeInit(i2, j2);
        return true;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        dbgLog("shutdown");
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeVendorExtensionBase;
    }

    @UsedByNative
    public abstract String[] getPackageWhitelist();

    @UsedByNative
    public abstract String getServiceName();

    @UsedByNative
    public abstract int onMessage(byte[] bArr);

    public void sendData(byte[] bArr) {
        dbgLog("sendData");
        nativeSend(bArr);
    }
}
