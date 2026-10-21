package com.google.android.projection.sink.audio;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NativeAudioPlayerBase implements AudioFocusManager.FocusChangeListener {
    private static final String TAG = "AHU.NATIVE_AUDIO";
    private final AudioFocusManager mAudioFocusManager;
    private final MediaPlayer.OnCompletionListener mCompletionListener;
    private final MediaPlayer.OnErrorListener mErrorListener;
    private final MediaPlayer mPlayer;
    private volatile boolean mPlaying;

    public NativeAudioPlayerBase(AudioFocusManager audioFocusManager) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mPlayer = mediaPlayer;
        this.mPlaying = false;
        MediaPlayer.OnErrorListener onErrorListener = new MediaPlayer.OnErrorListener() { // from class: com.google.android.projection.sink.audio.NativeAudioPlayerBase.1
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer2, int i2, int i3) {
                Log.e("AHU.NATIVE_AUDIO", "audio error what " + i2 + " extra " + i3);
                return false;
            }
        };
        this.mErrorListener = onErrorListener;
        this.mCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: com.google.android.projection.sink.audio.NativeAudioPlayerBase.2
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer2) {
                Log.i("AHU.NATIVE_AUDIO", "native audio completed");
                NativeAudioPlayerBase.this.stop();
            }
        };
        this.mAudioFocusManager = audioFocusManager;
        mediaPlayer.setOnErrorListener(onErrorListener);
        mediaPlayer.setAudioStreamType(3);
    }

    public void doDuck() {
        this.mPlayer.setVolume(0.5f, 0.5f);
    }

    public AudioFocusManager getAudioFocusManager() {
        return this.mAudioFocusManager;
    }

    public void init(Context context, int i2, boolean z2) {
        this.mPlayer.setLooping(z2);
        this.mPlayer.setVolume(1.0f, 1.0f);
        if (!z2) {
            this.mPlayer.setOnCompletionListener(this.mCompletionListener);
        }
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = context.getResources().openRawResourceFd(i2);
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new RuntimeException("no res");
            }
            this.mPlayer.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getLength());
            assetFileDescriptorOpenRawResourceFd.close();
            this.mPlayer.prepare();
            this.mAudioFocusManager.registerFocusChangeListener(this);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean isPlaying() {
        return this.mPlaying;
    }

    public void pause() {
        Log.i("AHU.NATIVE_AUDIO", "native audio pause");
        this.mPlayer.pause();
    }

    public void play() {
        if (this.mPlaying) {
            Log.i("AHU.NATIVE_AUDIO", "native audio already playing");
            return;
        }
        Log.i("AHU.NATIVE_AUDIO", "native audio start playing");
        this.mPlaying = true;
        this.mPlayer.start();
    }

    public void release() {
        this.mPlayer.release();
    }

    public void resume() {
        Log.i("AHU.NATIVE_AUDIO", "native audio resume");
        this.mPlayer.start();
    }

    public void stop() {
        if (!this.mPlaying) {
            Log.i("AHU.NATIVE_AUDIO", "native audio already stopped");
            return;
        }
        Log.i("AHU.NATIVE_AUDIO", "native audio stopping");
        this.mPlaying = false;
        this.mPlayer.stop();
        try {
            this.mPlayer.prepare();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void undoDuck() {
        this.mPlayer.setVolume(1.0f, 1.0f);
    }
}
