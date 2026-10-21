package com.google.android.projection.protocol;

import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Protos;

/* JADX INFO: loaded from: classes3.dex */
public class AudioSource implements CarServiceProvider, AudioSourceCallbacks {
    private final AudioSourceListener mAudioSourceListener;
    private final Protos.MediaCodecType mMediaCodecType;

    @UsedByNative
    private long mNativeAudioSource;
    private volatile boolean mShuttingDown = false;

    public interface AudioSourceListener {
        void ackCallback(int i2, int i3);

        int microphoneRequestCallback(boolean z2, boolean z3, boolean z4, int i2);
    }

    public AudioSource(Protos.MediaCodecType mediaCodecType, AudioSourceListener audioSourceListener) {
        this.mMediaCodecType = mediaCodecType;
        this.mAudioSourceListener = audioSourceListener;
    }

    private native int nativeInit(int i2, long j2, int i3);

    private native void nativeSend(long j2, byte[] bArr);

    private native void nativeSetConfig(int i2, int i3, int i4);

    private native void nativeShutdown();

    @Override // com.google.android.projection.protocol.AudioSourceCallbacks
    public void ackCallback(int i2, int i3) {
        this.mAudioSourceListener.ackCallback(i2, i3);
    }

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        return nativeInit(i2, j2, this.mMediaCodecType.getNumber()) == 0;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        this.mShuttingDown = true;
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeAudioSource;
    }

    @Override // com.google.android.projection.protocol.AudioSourceCallbacks
    public int microphoneRequestCallback(boolean z2, boolean z3, boolean z4, int i2) {
        return this.mAudioSourceListener.microphoneRequestCallback(z2, z3, z4, i2);
    }

    public void send(long j2, byte[] bArr) {
        if (this.mShuttingDown) {
            return;
        }
        nativeSend(j2, bArr);
    }

    public void setConfig(int i2, int i3, int i4) {
        nativeSetConfig(i2, i3, i4);
    }
}
