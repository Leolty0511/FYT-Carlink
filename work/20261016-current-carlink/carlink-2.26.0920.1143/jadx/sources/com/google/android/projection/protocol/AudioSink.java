package com.google.android.projection.protocol;

import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Protos;

/* JADX INFO: loaded from: classes3.dex */
public class AudioSink implements CarServiceProvider, AudioSinkCallbacks {
    private static final int MAX_UNACKED_FRAMES = 24;
    private final AudioListener mAudioListener;

    @UsedByNative
    private long mNativeAudioSink;

    public interface AudioListener {
        void onAudioData(int i2, long j2, byte[] bArr);

        void onCodecConfig(byte[] bArr);

        void onSetUp(int i2);

        void onShutdown();

        void onStart(int i2);

        void onStop(int i2);
    }

    public AudioSink(AudioListener audioListener) {
        this.mAudioListener = audioListener;
    }

    private native void nativeAckFrames(int i2, int i3);

    private native void nativeAckFramesNew(int i2, long[] jArr);

    private native void nativeAddSupportedConfiguration(int i2, int i3, int i4);

    private native int nativeInit(int i2, long j2);

    private native void nativeSendUnderflowNotification(int i2);

    private native void nativeSetAudioType(int i2);

    private native void nativeSetCodecType(int i2);

    private native void nativeSetMaxUnackedFrames(int i2);

    private native void nativeShutdown();

    public void ackFrames(int i2, int i3) {
        nativeAckFrames(i2, i3);
    }

    public void addSupportedConfiguration(int i2, int i3, int i4) {
        nativeAddSupportedConfiguration(i2, i3, i4);
    }

    @Override // com.google.android.projection.protocol.AudioSinkCallbacks
    public int codecConfigCallback(byte[] bArr) {
        this.mAudioListener.onCodecConfig(bArr);
        return 0;
    }

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        boolean z2 = nativeInit(i2, j2) == 0;
        nativeSetMaxUnackedFrames(24);
        return z2;
    }

    @Override // com.google.android.projection.protocol.AudioSinkCallbacks
    public void dataAvailableCallback(int i2, long j2, byte[] bArr) {
        this.mAudioListener.onAudioData(i2, j2, bArr);
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        this.mAudioListener.onShutdown();
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeAudioSink;
    }

    @Override // com.google.android.projection.protocol.AudioSinkCallbacks
    public void playbackStartCallback(int i2) {
        this.mAudioListener.onStart(i2);
    }

    @Override // com.google.android.projection.protocol.AudioSinkCallbacks
    public void playbackStopCallback(int i2) {
        this.mAudioListener.onStop(i2);
    }

    public void sendUnderflowNotification(int i2) {
        nativeSendUnderflowNotification(i2);
    }

    public void setAudioType(Protos.AudioStreamType audioStreamType) {
        nativeSetAudioType(audioStreamType.getNumber());
    }

    public void setCodecType(Protos.MediaCodecType mediaCodecType) {
        nativeSetCodecType(mediaCodecType.getNumber());
    }

    @Override // com.google.android.projection.protocol.AudioSinkCallbacks
    public int setupCallback(int i2) {
        this.mAudioListener.onSetUp(i2);
        return 0;
    }

    public void ackFrames(int i2, long[] jArr) {
        nativeAckFramesNew(i2, jArr);
    }
}
