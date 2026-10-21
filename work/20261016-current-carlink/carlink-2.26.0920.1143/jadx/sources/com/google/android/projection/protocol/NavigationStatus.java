package com.google.android.projection.protocol;

import android.util.Log;
import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Protos;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;

/* JADX INFO: loaded from: classes3.dex */
public class NavigationStatus implements CarServiceProvider, NavigationStatusCallbacks {
    private static final String TAG = "AHU.NAVIGATION";
    private final int mColorDepthBits;
    private final int mHeight;
    private final int mInstrumentClusterType;
    private final NavigationStatusListener mListener;
    private final int mMinIntervalMs;

    @UsedByNative
    private long mNativeNavigationStatus;
    private final int mWidth;
    public static final int DISPLAY_DISTANCE_METERS = Protos.NavigationNextTurnDistanceEvent.DistanceUnits.METERS.getNumber();
    public static final int DISPLAY_DISTANCE_KILOMETERS = Protos.NavigationNextTurnDistanceEvent.DistanceUnits.KILOMETERS.getNumber();
    public static final int DISPLAY_DISTANCE_KILOMETERS_P1 = Protos.NavigationNextTurnDistanceEvent.DistanceUnits.KILOMETERS_P1.getNumber();
    public static final int DISPLAY_DISTANCE_MILES_P1 = Protos.NavigationNextTurnDistanceEvent.DistanceUnits.MILES_P1.getNumber();
    public static final int DISPLAY_DISTANCE_FEET = Protos.NavigationNextTurnDistanceEvent.DistanceUnits.FEET.getNumber();
    public static final int DISPLAY_DISTANCE_YARDS = Protos.NavigationNextTurnDistanceEvent.DistanceUnits.YARDS.getNumber();

    public interface NavigationStatusListener {
        void onNavigationCurrentPosition(Protos.NavigationCurrentPosition navigationCurrentPosition);

        void onNavigationState(Protos.NavigationState navigationState);

        void onNextTurn(String str, int i2, int i3, byte[] bArr, int i4, int i5);

        void onNextTurnDistance(int i2, int i3, int i4, int i5);

        void onStatus(int i2);
    }

    public NavigationStatus(NavigationStatusListener navigationStatusListener, int i2, Protos.NavigationStatusService.InstrumentClusterType instrumentClusterType, int i3, int i4, int i5) {
        this.mListener = navigationStatusListener;
        this.mMinIntervalMs = i2;
        this.mInstrumentClusterType = instrumentClusterType.getNumber();
        this.mHeight = i3;
        this.mWidth = i4;
        this.mColorDepthBits = i5;
    }

    private native int nativeInit(int i2, long j2, int i3, int i4, int i5, int i6, int i7);

    private native void nativeStart();

    private native void nativeStop();

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        if (nativeInit(i2, j2, this.mMinIntervalMs, this.mInstrumentClusterType, this.mHeight, this.mWidth, this.mColorDepthBits) != 0) {
            return false;
        }
        nativeStart();
        return true;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        nativeStop();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeNavigationStatus;
    }

    @Override // com.google.android.projection.protocol.NavigationStatusCallbacks
    public void navigationCurrentPositionCallback(byte[] bArr) {
        try {
            this.mListener.onNavigationCurrentPosition(Protos.NavigationCurrentPosition.parseFrom(bArr, ExtensionRegistryLite.getEmptyRegistry()));
        } catch (InvalidProtocolBufferException e2) {
            Log.e("AHU.NAVIGATION", "Error parsing protocol buffer in callback", e2);
            throw new IllegalArgumentException("Error parsing protocol buffer in callback", e2);
        }
    }

    @Override // com.google.android.projection.protocol.NavigationStatusCallbacks
    public void navigationNextTurnCallback(String str, int i2, int i3, byte[] bArr, int i4, int i5) {
        this.mListener.onNextTurn(str, i2, i3, bArr, i4, i5);
    }

    @Override // com.google.android.projection.protocol.NavigationStatusCallbacks
    public void navigationNextTurnDistanceCallback(int i2, int i3, int i4, int i5) {
        this.mListener.onNextTurnDistance(i2, i3, i4, i5);
    }

    @Override // com.google.android.projection.protocol.NavigationStatusCallbacks
    public void navigationStateCallback(byte[] bArr) {
        try {
            this.mListener.onNavigationState(Protos.NavigationState.parseFrom(bArr, ExtensionRegistryLite.getEmptyRegistry()));
        } catch (InvalidProtocolBufferException e2) {
            Log.e("AHU.NAVIGATION", "Error parsing protocol buffer in callback", e2);
            throw new IllegalArgumentException("Error parsing protocol buffer in callback: ", e2);
        }
    }

    @Override // com.google.android.projection.protocol.NavigationStatusCallbacks
    public void navigationStatusCallback(int i2) {
        this.mListener.onStatus(i2);
    }

    public void start() {
        nativeStart();
    }
}
