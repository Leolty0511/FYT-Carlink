package com.google.android.projection.protocol;

import android.util.Log;
import com.google.android.projection.common.UsedByNative;

/* JADX INFO: loaded from: classes3.dex */
public class MediaPlaybackStatus implements CarServiceProvider, MediaPlaybackStatusCallbacks {
    private static final boolean DBG = true;
    private static final String TAG = "AHU.MEDIA_PLAYBACK";
    private final MediaPlaybackStatusListener mListener;

    @UsedByNative
    private long mNativeMediaPlaybackStatus;

    public interface MediaPlaybackStatusListener {
        void onMediaMetadata(String str, String str2, String str3, byte[] bArr, String str4, int i2, int i3);

        void onMediaStatus(int i2, String str, int i3, boolean z2, boolean z3, boolean z4);
    }

    public MediaPlaybackStatus(MediaPlaybackStatusListener mediaPlaybackStatusListener) {
        this.mListener = mediaPlaybackStatusListener;
    }

    private native int nativeInit(int i2, long j2);

    private native int nativeReportAction(int i2);

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
        return this.mNativeMediaPlaybackStatus;
    }

    @Override // com.google.android.projection.protocol.MediaPlaybackStatusCallbacks
    public void mediaPlaybackMetadataCallback(String str, String str2, String str3, byte[] bArr, String str4, int i2, int i3) {
        Log.i("AHU.MEDIA_PLAYBACK", "Song: " + str);
        Log.i("AHU.MEDIA_PLAYBACK", "Album: " + str2);
        Log.i("AHU.MEDIA_PLAYBACK", "Artist: " + str3);
        Log.i("AHU.MEDIA_PLAYBACK", "Playlist: " + str4);
        Log.i("AHU.MEDIA_PLAYBACK", "Duration: " + i2);
        Log.i("AHU.MEDIA_PLAYBACK", "Ratings: " + i3);
        this.mListener.onMediaMetadata(str, str2, str3, bArr, str4, i2, i3);
    }

    @Override // com.google.android.projection.protocol.MediaPlaybackStatusCallbacks
    public void mediaPlaybackStatusCallback(int i2, String str, int i3, boolean z2, boolean z3, boolean z4) {
        Log.i("AHU.MEDIA_PLAYBACK", "State: " + i2);
        Log.i("AHU.MEDIA_PLAYBACK", "Source: " + str);
        Log.i("AHU.MEDIA_PLAYBACK", "Playback: " + i3);
        Log.i("AHU.MEDIA_PLAYBACK", "Shuffle: " + z2);
        Log.i("AHU.MEDIA_PLAYBACK", "Repeat: " + z3);
        Log.i("AHU.MEDIA_PLAYBACK", "Repeat One: " + z4);
        this.mListener.onMediaStatus(i2, str, i3, z2, z3, z4);
    }

    public int reportAction(int i2) {
        return nativeReportAction(i2);
    }
}
