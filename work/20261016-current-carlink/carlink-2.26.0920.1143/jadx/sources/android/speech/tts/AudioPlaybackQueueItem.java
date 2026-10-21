package android.speech.tts;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.ConditionVariable;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
class AudioPlaybackQueueItem extends PlaybackQueueItem {
    private static final String TAG = "TTS.AudioQueueItem";
    private final TextToSpeechService.AudioOutputParams mAudioParams;
    private final Context mContext;
    private final ConditionVariable mDone;
    private volatile boolean mFinished;
    private MediaPlayer mPlayer;
    private final Uri mUri;

    public AudioPlaybackQueueItem(TextToSpeechService.UtteranceProgressDispatcher utteranceProgressDispatcher, Object obj, Context context, Uri uri, TextToSpeechService.AudioOutputParams audioOutputParams) {
        super(utteranceProgressDispatcher, obj);
        this.mContext = context;
        this.mUri = uri;
        this.mAudioParams = audioOutputParams;
        this.mDone = new ConditionVariable();
        this.mPlayer = null;
        this.mFinished = false;
    }

    private static final float clip(float f2, float f3, float f4) {
        if (f2 < f3) {
            return f3;
        }
        return f2 < f4 ? f2 : f4;
    }

    private void finish() {
        try {
            this.mPlayer.stop();
        } catch (IllegalStateException unused) {
        }
        this.mPlayer.release();
    }

    private static void setupVolume(MediaPlayer mediaPlayer, float f2, float f3) {
        float f4;
        float fClip = clip(f2, 0.0f, 1.0f);
        float fClip2 = clip(f3, -1.0f, 1.0f);
        if (fClip2 > 0.0f) {
            float f5 = (1.0f - fClip2) * fClip;
            f4 = fClip;
            fClip = f5;
        } else {
            f4 = fClip2 < 0.0f ? (fClip2 + 1.0f) * fClip : fClip;
        }
        mediaPlayer.setVolume(fClip, f4);
    }

    @Override // android.speech.tts.PlaybackQueueItem, java.lang.Runnable
    public void run() {
        TextToSpeechService.UtteranceProgressDispatcher dispatcher = getDispatcher();
        dispatcher.dispatchOnStart();
        TextToSpeechService.AudioOutputParams audioOutputParams = this.mAudioParams;
        int i2 = audioOutputParams.mSessionId;
        Context context = this.mContext;
        Uri uri = this.mUri;
        AudioAttributes audioAttributes = audioOutputParams.mAudioAttributes;
        if (i2 <= 0) {
            i2 = 0;
        }
        MediaPlayer mediaPlayerCreate = MediaPlayer.create(context, uri, null, audioAttributes, i2);
        this.mPlayer = mediaPlayerCreate;
        if (mediaPlayerCreate == null) {
            dispatcher.dispatchOnError(-5);
            return;
        }
        try {
            mediaPlayerCreate.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: android.speech.tts.AudioPlaybackQueueItem.1
                @Override // android.media.MediaPlayer.OnErrorListener
                public boolean onError(MediaPlayer mediaPlayer, int i3, int i4) {
                    Log.w(AudioPlaybackQueueItem.TAG, "Audio playback error: " + i3 + ", " + i4);
                    AudioPlaybackQueueItem.this.mDone.open();
                    return true;
                }
            });
            this.mPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: android.speech.tts.AudioPlaybackQueueItem.2
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    AudioPlaybackQueueItem.this.mFinished = true;
                    AudioPlaybackQueueItem.this.mDone.open();
                }
            });
            MediaPlayer mediaPlayer = this.mPlayer;
            TextToSpeechService.AudioOutputParams audioOutputParams2 = this.mAudioParams;
            setupVolume(mediaPlayer, audioOutputParams2.mVolume, audioOutputParams2.mPan);
            this.mPlayer.start();
            this.mDone.block();
            finish();
        } catch (IllegalArgumentException e2) {
            Log.w(TAG, "MediaPlayer failed", e2);
            this.mDone.open();
        }
        if (this.mFinished) {
            dispatcher.dispatchOnSuccess();
        } else {
            dispatcher.dispatchOnStop();
        }
    }

    @Override // android.speech.tts.PlaybackQueueItem
    public void stop(int i2) {
        this.mDone.open();
    }
}
