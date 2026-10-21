package android.preference;

import android.app.NotificationManager;
import android.app.m;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.provider.Settings;
import android.util.Log;
import android.widget.SeekBar;
import com.android.internal.annotations.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public class SeekBarVolumizer implements SeekBar.OnSeekBarChangeListener, Handler.Callback {
    private static final int CHECK_RINGTONE_PLAYBACK_DELAY_MS = 1000;
    private static final int MSG_INIT_SAMPLE = 3;
    private static final int MSG_SET_STREAM_VOLUME = 0;
    private static final int MSG_START_SAMPLE = 1;
    private static final int MSG_STOP_SAMPLE = 2;
    private static final String TAG = "SeekBarVolumizer";
    private boolean mAffectedByRingerMode;
    private final AudioManager mAudioManager;
    private final Callback mCallback;
    private final Context mContext;
    private final Uri mDefaultUri;
    private Handler mHandler;
    private int mLastAudibleStreamVolume;
    private final int mMaxStreamVolume;
    private boolean mMuted;
    private final NotificationManager mNotificationManager;
    private boolean mNotificationOrRing;
    private int mOriginalStreamVolume;
    private final Receiver mReceiver;
    private int mRingerMode;

    @GuardedBy("this")
    private Ringtone mRingtone;
    private SeekBar mSeekBar;
    private final int mStreamType;
    private final H mUiHandler;
    private Observer mVolumeObserver;
    private int mZenMode;
    private int mLastProgress = -1;
    private int mVolumeBeforeMute = -1;

    public interface Callback {
        void onMuted(boolean z2, boolean z3);

        void onProgressChanged(SeekBar seekBar, int i2, boolean z2);

        void onSampleStarting(SeekBarVolumizer seekBarVolumizer);
    }

    public final class H extends Handler {
        private static final int UPDATE_SLIDER = 1;

        private H() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1 || SeekBarVolumizer.this.mSeekBar == null) {
                return;
            }
            SeekBarVolumizer.this.mLastProgress = message.arg1;
            SeekBarVolumizer.this.mLastAudibleStreamVolume = message.arg2;
            boolean zBooleanValue = ((Boolean) message.obj).booleanValue();
            if (zBooleanValue != SeekBarVolumizer.this.mMuted) {
                SeekBarVolumizer.this.mMuted = zBooleanValue;
                if (SeekBarVolumizer.this.mCallback != null) {
                    SeekBarVolumizer.this.mCallback.onMuted(SeekBarVolumizer.this.mMuted, SeekBarVolumizer.this.isZenMuted());
                }
            }
            SeekBarVolumizer.this.updateSeekBar();
        }

        public void postUpdateSlider(int i2, int i3, boolean z2) {
            obtainMessage(1, i2, i3, new Boolean(z2)).sendToTarget();
        }
    }

    public final class Observer extends ContentObserver {
        public Observer(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z2) {
            super.onChange(z2);
            SeekBarVolumizer.this.updateSlider();
        }
    }

    public final class Receiver extends BroadcastReceiver {
        private boolean mListening;

        private Receiver() {
        }

        private void updateVolumeSlider(int i2, int i3) {
            boolean zIsNotificationOrRing;
            boolean z2 = true;
            if (SeekBarVolumizer.this.mNotificationOrRing) {
                zIsNotificationOrRing = SeekBarVolumizer.isNotificationOrRing(i2);
            } else {
                zIsNotificationOrRing = i2 == SeekBarVolumizer.this.mStreamType;
            }
            if (SeekBarVolumizer.this.mSeekBar == null || !zIsNotificationOrRing || i3 == -1) {
                return;
            }
            if (!SeekBarVolumizer.this.mAudioManager.isStreamMute(SeekBarVolumizer.this.mStreamType) && i3 != 0) {
                z2 = false;
            }
            SeekBarVolumizer.this.mUiHandler.postUpdateSlider(i3, SeekBarVolumizer.this.mLastAudibleStreamVolume, z2);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (AudioManager.VOLUME_CHANGED_ACTION.equals(action)) {
                updateVolumeSlider(intent.getIntExtra(AudioManager.EXTRA_VOLUME_STREAM_TYPE, -1), intent.getIntExtra(AudioManager.EXTRA_VOLUME_STREAM_VALUE, -1));
                return;
            }
            if (AudioManager.INTERNAL_RINGER_MODE_CHANGED_ACTION.equals(action)) {
                if (SeekBarVolumizer.this.mNotificationOrRing) {
                    SeekBarVolumizer seekBarVolumizer = SeekBarVolumizer.this;
                    seekBarVolumizer.mRingerMode = seekBarVolumizer.mAudioManager.getRingerModeInternal();
                }
                if (SeekBarVolumizer.this.mAffectedByRingerMode) {
                    SeekBarVolumizer.this.updateSlider();
                    return;
                }
                return;
            }
            if (AudioManager.STREAM_DEVICES_CHANGED_ACTION.equals(action)) {
                int intExtra = intent.getIntExtra(AudioManager.EXTRA_VOLUME_STREAM_TYPE, -1);
                updateVolumeSlider(intExtra, SeekBarVolumizer.this.mAudioManager.getStreamVolume(intExtra));
            } else if (NotificationManager.ACTION_INTERRUPTION_FILTER_CHANGED.equals(action)) {
                SeekBarVolumizer seekBarVolumizer2 = SeekBarVolumizer.this;
                seekBarVolumizer2.mZenMode = seekBarVolumizer2.mNotificationManager.getZenMode();
                SeekBarVolumizer.this.updateSlider();
            }
        }

        public void setListening(boolean z2) {
            if (this.mListening == z2) {
                return;
            }
            this.mListening = z2;
            if (!z2) {
                SeekBarVolumizer.this.mContext.unregisterReceiver(this);
                return;
            }
            IntentFilter intentFilter = new IntentFilter(AudioManager.VOLUME_CHANGED_ACTION);
            intentFilter.addAction(AudioManager.INTERNAL_RINGER_MODE_CHANGED_ACTION);
            intentFilter.addAction(NotificationManager.ACTION_INTERRUPTION_FILTER_CHANGED);
            intentFilter.addAction(AudioManager.STREAM_DEVICES_CHANGED_ACTION);
            SeekBarVolumizer.this.mContext.registerReceiver(this, intentFilter);
        }
    }

    public SeekBarVolumizer(Context context, int i2, Uri uri, Callback callback) {
        this.mUiHandler = new H();
        this.mReceiver = new Receiver();
        this.mContext = context;
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        this.mAudioManager = audioManager;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        this.mNotificationManager = notificationManager;
        this.mStreamType = i2;
        this.mAffectedByRingerMode = audioManager.isStreamAffectedByRingerMode(i2);
        boolean zIsNotificationOrRing = isNotificationOrRing(i2);
        this.mNotificationOrRing = zIsNotificationOrRing;
        if (zIsNotificationOrRing) {
            this.mRingerMode = audioManager.getRingerModeInternal();
        }
        this.mZenMode = notificationManager.getZenMode();
        this.mMaxStreamVolume = audioManager.getStreamMaxVolume(i2);
        this.mCallback = callback;
        this.mOriginalStreamVolume = audioManager.getStreamVolume(i2);
        this.mLastAudibleStreamVolume = audioManager.getLastAudibleStreamVolume(i2);
        boolean zIsStreamMute = audioManager.isStreamMute(i2);
        this.mMuted = zIsStreamMute;
        if (callback != null) {
            callback.onMuted(zIsStreamMute, isZenMuted());
        }
        this.mDefaultUri = uri == null ? i2 == 2 ? Settings.System.DEFAULT_RINGTONE_URI : i2 == 5 ? Settings.System.DEFAULT_NOTIFICATION_URI : Settings.System.DEFAULT_ALARM_ALERT_URI : uri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNotificationOrRing(int i2) {
        return i2 == 2 || i2 == 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isZenMuted() {
        return (this.mNotificationOrRing && this.mZenMode == 3) || this.mZenMode == 2;
    }

    private void onInitSample() {
        synchronized (this) {
            Ringtone ringtone = RingtoneManager.getRingtone(this.mContext, this.mDefaultUri);
            this.mRingtone = ringtone;
            if (ringtone != null) {
                ringtone.setStreamType(this.mStreamType);
            }
        }
    }

    private void onStartSample() {
        if (isSamplePlaying()) {
            return;
        }
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onSampleStarting(this);
        }
        synchronized (this) {
            Ringtone ringtone = this.mRingtone;
            if (ringtone != null) {
                try {
                    ringtone.setAudioAttributes(new AudioAttributes.Builder(ringtone.getAudioAttributes()).setFlags(128).build());
                    this.mRingtone.play();
                } catch (Throwable th) {
                    Log.w(TAG, "Error playing ringtone, stream " + this.mStreamType, th);
                }
            }
        }
    }

    private void onStopSample() {
        synchronized (this) {
            Ringtone ringtone = this.mRingtone;
            if (ringtone != null) {
                ringtone.stop();
            }
        }
    }

    private void postSetVolume(int i2) {
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        this.mLastProgress = i2;
        handler.removeMessages(0);
        Handler handler2 = this.mHandler;
        handler2.sendMessage(handler2.obtainMessage(0));
    }

    private void postStartSample() {
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        handler.removeMessages(1);
        Handler handler2 = this.mHandler;
        handler2.sendMessageDelayed(handler2.obtainMessage(1), isSamplePlaying() ? 1000L : 0L);
    }

    private void postStopSample() {
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        handler.removeMessages(1);
        this.mHandler.removeMessages(2);
        Handler handler2 = this.mHandler;
        handler2.sendMessage(handler2.obtainMessage(2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSlider() {
        AudioManager audioManager;
        if (this.mSeekBar == null || (audioManager = this.mAudioManager) == null) {
            return;
        }
        this.mUiHandler.postUpdateSlider(audioManager.getStreamVolume(this.mStreamType), this.mAudioManager.getLastAudibleStreamVolume(this.mStreamType), this.mAudioManager.isStreamMute(this.mStreamType));
    }

    public void changeVolumeBy(int i2) {
        this.mSeekBar.incrementProgressBy(i2);
        postSetVolume(this.mSeekBar.getProgress());
        postStartSample();
        this.mVolumeBeforeMute = -1;
    }

    public SeekBar getSeekBar() {
        return this.mSeekBar;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            boolean z2 = this.mMuted;
            if (z2 && this.mLastProgress > 0) {
                this.mAudioManager.adjustStreamVolume(this.mStreamType, 100, 0);
            } else if (!z2 && this.mLastProgress == 0) {
                this.mAudioManager.adjustStreamVolume(this.mStreamType, -100, 0);
            }
            this.mAudioManager.setStreamVolume(this.mStreamType, this.mLastProgress, 1024);
        } else if (i2 == 1) {
            onStartSample();
        } else if (i2 == 2) {
            onStopSample();
        } else if (i2 != 3) {
            m.C(new StringBuilder("invalid SeekBarVolumizer message: "), message.what, TAG);
        } else {
            onInitSample();
        }
        return true;
    }

    public boolean isSamplePlaying() {
        boolean z2;
        synchronized (this) {
            Ringtone ringtone = this.mRingtone;
            z2 = ringtone != null && ringtone.isPlaying();
        }
        return z2;
    }

    public void muteVolume() {
        int i2 = this.mVolumeBeforeMute;
        if (i2 != -1) {
            this.mSeekBar.setProgress(i2, true);
            postSetVolume(this.mVolumeBeforeMute);
            postStartSample();
            this.mVolumeBeforeMute = -1;
            return;
        }
        this.mVolumeBeforeMute = this.mSeekBar.getProgress();
        this.mSeekBar.setProgress(0, true);
        postStopSample();
        postSetVolume(0);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        if (z2) {
            postSetVolume(i2);
        }
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onProgressChanged(seekBar, i2, z2);
        }
    }

    public void onRestoreInstanceState(VolumePreference.VolumeStore volumeStore) {
        int i2 = volumeStore.volume;
        if (i2 != -1) {
            this.mOriginalStreamVolume = volumeStore.originalVolume;
            this.mLastProgress = i2;
            postSetVolume(i2);
        }
    }

    public void onSaveInstanceState(VolumePreference.VolumeStore volumeStore) {
        int i2 = this.mLastProgress;
        if (i2 >= 0) {
            volumeStore.volume = i2;
            volumeStore.originalVolume = this.mOriginalStreamVolume;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        postStartSample();
    }

    public void revertVolume() {
        this.mAudioManager.setStreamVolume(this.mStreamType, this.mOriginalStreamVolume, 0);
    }

    public void setSeekBar(SeekBar seekBar) {
        SeekBar seekBar2 = this.mSeekBar;
        if (seekBar2 != null) {
            seekBar2.setOnSeekBarChangeListener(null);
        }
        this.mSeekBar = seekBar;
        seekBar.setOnSeekBarChangeListener(null);
        this.mSeekBar.setMax(this.mMaxStreamVolume);
        updateSeekBar();
        this.mSeekBar.setOnSeekBarChangeListener(this);
    }

    public void start() {
        if (this.mHandler != null) {
            return;
        }
        HandlerThread handlerThread = new HandlerThread("SeekBarVolumizer.CallbackHandler");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.mHandler = handler;
        handler.sendEmptyMessage(3);
        this.mVolumeObserver = new Observer(this.mHandler);
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.VOLUME_SETTINGS[this.mStreamType]), false, this.mVolumeObserver);
        this.mReceiver.setListening(true);
    }

    public void startSample() {
        postStartSample();
    }

    public void stop() {
        if (this.mHandler == null) {
            return;
        }
        postStopSample();
        this.mContext.getContentResolver().unregisterContentObserver(this.mVolumeObserver);
        this.mReceiver.setListening(false);
        this.mSeekBar.setOnSeekBarChangeListener(null);
        this.mHandler.getLooper().quitSafely();
        this.mHandler = null;
        this.mVolumeObserver = null;
    }

    public void stopSample() {
        postStopSample();
    }

    public void updateSeekBar() {
        boolean zIsZenMuted = isZenMuted();
        this.mSeekBar.setEnabled(!zIsZenMuted);
        if (zIsZenMuted) {
            this.mSeekBar.setProgress(this.mLastAudibleStreamVolume, true);
            return;
        }
        if (this.mNotificationOrRing && this.mRingerMode == 1) {
            this.mSeekBar.setProgress(0, true);
            return;
        }
        if (this.mMuted) {
            this.mSeekBar.setProgress(0, true);
            return;
        }
        SeekBar seekBar = this.mSeekBar;
        int i2 = this.mLastProgress;
        if (i2 <= -1) {
            i2 = this.mOriginalStreamVolume;
        }
        seekBar.setProgress(i2, true);
    }
}
