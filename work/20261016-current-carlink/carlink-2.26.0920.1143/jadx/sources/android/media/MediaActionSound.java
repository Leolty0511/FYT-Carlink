package android.media;

import android.accessibilityservice.c;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class MediaActionSound {
    public static final int FOCUS_COMPLETE = 1;
    private static final int NUM_MEDIA_SOUND_STREAMS = 1;
    public static final int SHUTTER_CLICK = 0;
    private static final String[] SOUND_FILES = {"/system/media/audio/ui/camera_click.ogg", "/system/media/audio/ui/camera_focus.ogg", "/system/media/audio/ui/VideoRecord.ogg", "/system/media/audio/ui/VideoStop.ogg"};
    public static final int START_VIDEO_RECORDING = 2;
    private static final int STATE_LOADED = 3;
    private static final int STATE_LOADING = 1;
    private static final int STATE_LOADING_PLAY_REQUESTED = 2;
    private static final int STATE_NOT_LOADED = 0;
    public static final int STOP_VIDEO_RECORDING = 3;
    private static final String TAG = "MediaActionSound";
    private SoundPool.OnLoadCompleteListener mLoadCompleteListener = new SoundPool.OnLoadCompleteListener() { // from class: android.media.MediaActionSound.1
        @Override // android.media.SoundPool.OnLoadCompleteListener
        public void onLoadComplete(SoundPool soundPool, int i2, int i3) {
            int i4 = 0;
            for (SoundState soundState : MediaActionSound.this.mSounds) {
                if (soundState.id == i2) {
                    synchronized (soundState) {
                        try {
                            if (i3 != 0) {
                                soundState.state = 0;
                                soundState.id = 0;
                                Log.e(MediaActionSound.TAG, "OnLoadCompleteListener() error: " + i3 + " loading sound: " + soundState.name);
                                return;
                            }
                            int i5 = soundState.state;
                            if (i5 == 1) {
                                soundState.state = 3;
                            } else if (i5 != 2) {
                                Log.e(MediaActionSound.TAG, "OnLoadCompleteListener() called in wrong state: " + soundState.state + " for sound: " + soundState.name);
                            } else {
                                i4 = soundState.id;
                                soundState.state = 3;
                            }
                            int i6 = i4;
                            if (i6 != 0) {
                                soundPool.play(i6, 1.0f, 1.0f, 0, 0, 1.0f);
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }
    };
    private SoundPool mSoundPool;
    private SoundState[] mSounds;

    public class SoundState {
        public final int name;
        public int id = 0;
        public int state = 0;

        public SoundState(int i2) {
            this.name = i2;
        }
    }

    public MediaActionSound() {
        SoundPool soundPoolBuild = new SoundPool.Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(13).setFlags(1).setContentType(4).build()).build();
        this.mSoundPool = soundPoolBuild;
        soundPoolBuild.setOnLoadCompleteListener(this.mLoadCompleteListener);
        this.mSounds = new SoundState[SOUND_FILES.length];
        int i2 = 0;
        while (true) {
            SoundState[] soundStateArr = this.mSounds;
            if (i2 >= soundStateArr.length) {
                return;
            }
            soundStateArr[i2] = new SoundState(i2);
            i2++;
        }
    }

    private int loadSound(SoundState soundState) {
        int iLoad = this.mSoundPool.load(SOUND_FILES[soundState.name], 1);
        if (iLoad > 0) {
            soundState.state = 1;
            soundState.id = iLoad;
        }
        return iLoad;
    }

    public void load(int i2) {
        if (i2 < 0 || i2 >= SOUND_FILES.length) {
            throw new RuntimeException(c.d("Unknown sound requested: ", i2));
        }
        SoundState soundState = this.mSounds[i2];
        synchronized (soundState) {
            if (soundState.state != 0) {
                Log.e(TAG, "load() called in wrong state: " + soundState + " for sound: " + i2);
            } else if (loadSound(soundState) <= 0) {
                Log.e(TAG, "load() error loading sound: " + i2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0063 A[Catch: all -> 0x0068, TryCatch #0 {, blocks: (B:8:0x0012, B:14:0x001c, B:20:0x0066, B:15:0x0038, B:19:0x0063, B:16:0x0048, B:18:0x0051), top: B:27:0x0012 }] */
    public void play(int i2) {
        if (i2 < 0 || i2 >= SOUND_FILES.length) {
            throw new RuntimeException(c.d("Unknown sound requested: ", i2));
        }
        SoundState soundState = this.mSounds[i2];
        synchronized (soundState) {
            int i3 = soundState.state;
            if (i3 == 0) {
                loadSound(soundState);
                if (loadSound(soundState) <= 0) {
                    Log.e(TAG, "play() error loading sound: " + i2);
                } else {
                    soundState.state = 2;
                }
            } else if (i3 == 1) {
                soundState.state = 2;
            } else if (i3 != 3) {
                Log.e(TAG, "play() called in wrong state: " + soundState.state + " for sound: " + i2);
            } else {
                this.mSoundPool.play(soundState.id, 1.0f, 1.0f, 0, 0, 1.0f);
            }
        }
    }

    public void release() {
        if (this.mSoundPool != null) {
            for (SoundState soundState : this.mSounds) {
                synchronized (soundState) {
                    soundState.state = 0;
                    soundState.id = 0;
                }
            }
            this.mSoundPool.release();
            this.mSoundPool = null;
        }
    }
}
