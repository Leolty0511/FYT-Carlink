package com.google.android.projection.protocol;

import android.util.Log;
import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Protos;
import com.google.protobuf.InvalidProtocolBufferException;

/* JADX INFO: loaded from: classes3.dex */
public class PhoneStatus implements CarServiceProvider, PhoneStatusCallbacks {
    private static final boolean DBG = true;
    private static final String TAG = "AHU.PHONE_STATUS";
    private final PhoneStatusListener mListener;

    @UsedByNative
    private long mNativePhoneStatus;

    public interface PhoneStatusListener {
        void onPhoneStatus(Protos.PhoneStatus.Call[] callArr, int i2);
    }

    public PhoneStatus(PhoneStatusListener phoneStatusListener) {
        this.mListener = phoneStatusListener;
    }

    private native int nativeInit(int i2, long j2);

    private native int nativeReportAction(String str, String str2, int i2);

    private native void nativeShutdown();

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        return nativeInit(i2, j2) == 0;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativePhoneStatus;
    }

    public int input(String str, String str2, int i2) {
        return nativeReportAction(str, str2, i2);
    }

    @Override // com.google.android.projection.protocol.PhoneStatusCallbacks
    public int phoneStatusCallback(byte[] bArr) {
        try {
            Protos.PhoneStatus from = Protos.PhoneStatus.parseFrom(bArr);
            this.mListener.onPhoneStatus((Protos.PhoneStatus.Call[]) from.getCallsList().toArray(new Protos.PhoneStatus.Call[0]), from.getSignalStrength());
            return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
        } catch (InvalidProtocolBufferException e2) {
            Log.w("AHU.PHONE_STATUS", "Error parsing protocol buffer in callback", e2);
            return Protos.MessageStatus.STATUS_INVALID_INPUT.getNumber();
        }
    }
}
