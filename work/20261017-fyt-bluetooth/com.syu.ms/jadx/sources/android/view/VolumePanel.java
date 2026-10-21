package android.view;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.AudioService;
import android.media.AudioSystem;
import android.media.RingtoneManager;
import android.media.ToneGenerator;
import android.media.VolumeController;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.os.Vibrator;
import android.util.Log;
import android.widget.ImageView;
import android.widget.SeekBar;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class VolumePanel extends Handler implements SeekBar.OnSeekBarChangeListener, View.OnClickListener, VolumeController {
    private static final int BEEP_DURATION = 150;
    private static final int FREE_DELAY = 10000;
    private static boolean LOGD = false;
    private static final int MAX_VOLUME = 100;
    private static final int MSG_DISPLAY_SAFE_VOLUME_WARNING = 11;
    private static final int MSG_FREE_RESOURCES = 1;
    private static final int MSG_MUTE_CHANGED = 7;
    private static final int MSG_PLAY_SOUND = 2;
    private static final int MSG_REMOTE_VOLUME_CHANGED = 8;
    private static final int MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN = 9;
    private static final int MSG_RINGER_MODE_CHANGED = 6;
    private static final int MSG_SLIDER_VISIBILITY_CHANGED = 10;
    private static final int MSG_STOP_SOUNDS = 3;
    private static final int MSG_TIMEOUT = 5;
    private static final int MSG_VIBRATE = 4;
    private static final int MSG_VOLUME_CHANGED = 0;
    public static final int PLAY_SOUND_DELAY = 300;
    private static final int STREAM_MASTER = -100;
    private static final String TAG = "VolumePanel";
    private static final int TIMEOUT_DELAY = 3000;
    public static final int VIBRATE_DELAY = 300;
    private static final int VIBRATE_DURATION = 300;
    private static AlertDialog sConfirmSafeVolumeDialog;
    private int mActiveStreamType = -1;
    private AudioManager mAudioManager;
    public AudioService mAudioService;
    public Context mContext;
    private final Dialog mDialog;
    private final View mDivider;
    private final View mMoreButton;
    private final ViewGroup mPanel;
    private final boolean mPlayMasterStreamTones;
    private boolean mRingIsSilent;
    private boolean mShowCombinedVolumes;
    private final ViewGroup mSliderGroup;
    private HashMap<Integer, StreamControl> mStreamControls;
    private ToneGenerator[] mToneGenerators;
    private Vibrator mVibrator;
    private final View mView;
    private boolean mVoiceCapable;
    private static final StreamResources[] STREAMS = {StreamResources.BluetoothSCOStream, StreamResources.RingerStream, StreamResources.VoiceStream, StreamResources.MediaStream, StreamResources.NotificationStream, StreamResources.AlarmStream, StreamResources.MasterStream, StreamResources.RemoteStream};
    private static Object sConfirmSafeVolumeLock = new Object();

    public class StreamControl {
        public ViewGroup group;
        public ImageView icon;
        public int iconMuteRes;
        public int iconRes;
        public SeekBar seekbarView;
        public int streamType;

        private StreamControl() {
        }
    }

    public enum StreamResources {
        BluetoothSCOStream(6, 17040426, 17302175, 17302175, false),
        RingerStream(2, 17040427, 17302183, 17302185, false),
        VoiceStream(0, 17040428, 17302181, 17302181, false),
        AlarmStream(4, 17040423, 17302173, 17302174, false),
        MediaStream(3, 17040429, 17302189, 17302191, true),
        NotificationStream(5, 17040430, 17302177, 17302179, true),
        MasterStream(-100, 17040429, 17302189, 17302191, false),
        RemoteStream(AudioService.STREAM_REMOTE_MUSIC, 17040429, 17302317, 17302305, false);

        public int descRes;
        public int iconMuteRes;
        public int iconRes;
        public boolean show;
        public int streamType;

        StreamResources(int i2, int i3, int i4, int i5, boolean z2) {
            this.streamType = i2;
            this.descRes = i3;
            this.iconRes = i4;
            this.iconMuteRes = i5;
            this.show = z2;
        }
    }

    public static class WarningDialogReceiver extends BroadcastReceiver implements DialogInterface.OnDismissListener {
        private final Context mContext;
        private final Dialog mDialog;
        private final VolumePanel mVolumePanel;

        public WarningDialogReceiver(Context context, Dialog dialog, VolumePanel volumePanel) {
            this.mContext = context;
            this.mDialog = dialog;
            this.mVolumePanel = volumePanel;
            context.registerReceiver(this, new IntentFilter(Intent.ACTION_CLOSE_SYSTEM_DIALOGS));
        }

        private void cleanUp() throws Throwable {
            synchronized (VolumePanel.sConfirmSafeVolumeLock) {
                AlertDialog unused = VolumePanel.sConfirmSafeVolumeDialog = null;
            }
            this.mVolumePanel.forceTimeout();
            this.mVolumePanel.updateStates();
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) throws Throwable {
            this.mContext.unregisterReceiver(this);
            cleanUp();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Throwable {
            this.mDialog.cancel();
            cleanUp();
        }
    }

    public VolumePanel(Context context, AudioService audioService) {
        this.mContext = context;
        this.mAudioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        this.mAudioService = audioService;
        boolean z2 = context.getResources().getBoolean(17891344);
        if (z2) {
            int i2 = 0;
            while (true) {
                StreamResources[] streamResourcesArr = STREAMS;
                if (i2 >= streamResourcesArr.length) {
                    break;
                }
                StreamResources streamResources = streamResourcesArr[i2];
                streamResources.show = streamResources.streamType == -100;
                i2++;
            }
        }
        View viewInflate = ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(17367225, (ViewGroup) null);
        this.mView = viewInflate;
        viewInflate.setOnTouchListener(new View.OnTouchListener() { // from class: android.view.VolumePanel.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                VolumePanel.this.resetTimeout();
                return false;
            }
        });
        this.mPanel = (ViewGroup) viewInflate.findViewById(16909165);
        this.mSliderGroup = (ViewGroup) viewInflate.findViewById(16909166);
        ImageView imageView = (ImageView) viewInflate.findViewById(16909168);
        this.mMoreButton = imageView;
        ImageView imageView2 = (ImageView) viewInflate.findViewById(16909167);
        this.mDivider = imageView2;
        Dialog dialog = new Dialog(context, 16974604) { // from class: android.view.VolumePanel.2
            @Override // android.app.Dialog
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (!isShowing() || motionEvent.getAction() != 4 || VolumePanel.sConfirmSafeVolumeDialog != null) {
                    return false;
                }
                VolumePanel.this.forceTimeout();
                return true;
            }
        };
        this.mDialog = dialog;
        dialog.setTitle("Volume control");
        dialog.setContentView(viewInflate);
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: android.view.VolumePanel.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                VolumePanel.this.mActiveStreamType = -1;
                VolumePanel.this.mAudioManager.forceVolumeControlStream(VolumePanel.this.mActiveStreamType);
            }
        });
        Window window = dialog.getWindow();
        window.setGravity(48);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.token = null;
        attributes.f207y = this.mContext.getResources().getDimensionPixelOffset(17104975);
        attributes.type = WindowManager.LayoutParams.TYPE_VOLUME_OVERLAY;
        attributes.width = -2;
        attributes.height = -2;
        window.setAttributes(attributes);
        window.addFlags(262184);
        this.mToneGenerators = new ToneGenerator[AudioSystem.getNumStreamTypes()];
        this.mVibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
        boolean z3 = SystemProperties.getBoolean("ro.voice.capable", false);
        this.mVoiceCapable = z3;
        boolean z4 = (z3 || z2) ? false : true;
        this.mShowCombinedVolumes = z4;
        if (z4) {
            imageView.setOnClickListener(this);
        } else {
            imageView.setVisibility(8);
            imageView2.setVisibility(8);
        }
        this.mPlayMasterStreamTones = context.getResources().getBoolean(17891344) && this.mContext.getResources().getBoolean(17891345);
        listenToRingerMode();
    }

    private void addOtherVolumes() throws Throwable {
        if (!this.mShowCombinedVolumes) {
            return;
        }
        int i2 = 0;
        while (true) {
            StreamResources[] streamResourcesArr = STREAMS;
            if (i2 >= streamResourcesArr.length) {
                return;
            }
            int i3 = streamResourcesArr[i2].streamType;
            if (streamResourcesArr[i2].show && i3 != this.mActiveStreamType) {
                StreamControl streamControl = this.mStreamControls.get(Integer.valueOf(i3));
                this.mSliderGroup.addView(streamControl.group);
                updateSlider(streamControl);
            }
            i2++;
        }
    }

    private void collapse() {
        this.mMoreButton.setVisibility(0);
        this.mDivider.setVisibility(0);
        int childCount = this.mSliderGroup.getChildCount();
        for (int i2 = 1; i2 < childCount; i2++) {
            this.mSliderGroup.getChildAt(i2).setVisibility(8);
        }
    }

    private void createSliders() throws Throwable {
        LayoutInflater layoutInflater = (LayoutInflater) this.mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        this.mStreamControls = new HashMap<>(STREAMS.length);
        Resources resources = this.mContext.getResources();
        int i2 = 0;
        while (true) {
            StreamResources[] streamResourcesArr = STREAMS;
            if (i2 >= streamResourcesArr.length) {
                return;
            }
            StreamResources streamResources = streamResourcesArr[i2];
            int i3 = streamResources.streamType;
            if (this.mVoiceCapable && streamResources == StreamResources.NotificationStream) {
                streamResources = StreamResources.RingerStream;
            }
            StreamControl streamControl = new StreamControl();
            streamControl.streamType = i3;
            ViewGroup viewGroup = (ViewGroup) layoutInflater.inflate(17367226, (ViewGroup) null);
            streamControl.group = viewGroup;
            viewGroup.setTag(streamControl);
            ImageView imageView = (ImageView) streamControl.group.findViewById(16909169);
            streamControl.icon = imageView;
            imageView.setTag(streamControl);
            streamControl.icon.setContentDescription(resources.getString(streamResources.descRes));
            int i4 = streamResources.iconRes;
            streamControl.iconRes = i4;
            streamControl.iconMuteRes = streamResources.iconMuteRes;
            streamControl.icon.setImageResource(i4);
            SeekBar seekBar = (SeekBar) streamControl.group.findViewById(16909066);
            streamControl.seekbarView = seekBar;
            seekBar.setMax(getStreamMaxVolume(i3) + ((i3 == 6 || i3 == 0) ? 1 : 0));
            streamControl.seekbarView.setOnSeekBarChangeListener(this);
            streamControl.seekbarView.setTag(streamControl);
            this.mStreamControls.put(Integer.valueOf(i3), streamControl);
            i2++;
        }
    }

    private void expand() {
        int childCount = this.mSliderGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            this.mSliderGroup.getChildAt(i2).setVisibility(0);
        }
        this.mMoreButton.setVisibility(4);
        this.mDivider.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forceTimeout() {
        removeMessages(5);
        sendMessageDelayed(obtainMessage(5), 250L);
    }

    private ToneGenerator getOrCreateToneGenerator(int i2) {
        ToneGenerator toneGenerator;
        if (i2 == -100) {
            if (!this.mPlayMasterStreamTones) {
                return null;
            }
            i2 = 1;
        }
        synchronized (this) {
            ToneGenerator[] toneGeneratorArr = this.mToneGenerators;
            if (toneGeneratorArr[i2] == null) {
                try {
                    toneGeneratorArr[i2] = new ToneGenerator(i2, 100);
                } catch (RuntimeException e2) {
                    if (LOGD) {
                        Log.d(TAG, "ToneGenerator constructor failed with RuntimeException: " + e2);
                    }
                }
                toneGenerator = this.mToneGenerators[i2];
            } else {
                toneGenerator = this.mToneGenerators[i2];
            }
            throw th;
        }
        return toneGenerator;
    }

    private int getStreamMaxVolume(int i2) {
        if (i2 == -100) {
            return this.mAudioManager.getMasterMaxVolume();
        }
        return i2 == -200 ? this.mAudioService.getRemoteStreamMaxVolume() : this.mAudioManager.getStreamMaxVolume(i2);
    }

    private int getStreamVolume(int i2) {
        if (i2 == -100) {
            return this.mAudioManager.getMasterVolume();
        }
        return i2 == -200 ? this.mAudioService.getRemoteStreamVolume() : this.mAudioManager.getStreamVolume(i2);
    }

    private boolean isExpanded() {
        return this.mMoreButton.getVisibility() != 0;
    }

    private boolean isMuted(int i2) {
        if (i2 == -100) {
            return this.mAudioManager.isMasterMute();
        }
        if (i2 == -200) {
            return this.mAudioService.getRemoteStreamVolume() <= 0;
        }
        return this.mAudioManager.isStreamMute(i2);
    }

    private void listenToRingerMode() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(AudioManager.RINGER_MODE_CHANGED_ACTION);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: android.view.VolumePanel.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (AudioManager.RINGER_MODE_CHANGED_ACTION.equals(intent.getAction())) {
                    VolumePanel.this.removeMessages(6);
                    VolumePanel volumePanel = VolumePanel.this;
                    volumePanel.sendMessage(volumePanel.obtainMessage(6));
                }
            }
        }, intentFilter);
    }

    private void reorderSliders(int i2) throws Throwable {
        this.mSliderGroup.removeAllViews();
        StreamControl streamControl = this.mStreamControls.get(Integer.valueOf(i2));
        if (streamControl == null) {
            Log.e(TAG, "Missing stream type! - " + i2);
            this.mActiveStreamType = -1;
        } else {
            this.mSliderGroup.addView(streamControl.group);
            this.mActiveStreamType = i2;
            streamControl.group.setVisibility(0);
            updateSlider(streamControl);
        }
        addOtherVolumes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetTimeout() {
        removeMessages(5);
        sendMessageDelayed(obtainMessage(5), 3000L);
    }

    private void setMusicIcon(int i2, int i3) throws Throwable {
        StreamControl streamControl = this.mStreamControls.get(3);
        if (streamControl != null) {
            streamControl.iconRes = i2;
            streamControl.iconMuteRes = i3;
            streamControl.icon.setImageResource(isMuted(streamControl.streamType) ? streamControl.iconMuteRes : streamControl.iconRes);
        }
    }

    private void setStreamVolume(int i2, int i3, int i4) {
        if (i2 == -100) {
            this.mAudioManager.setMasterVolume(i3, i4);
        } else if (i2 == -200) {
            this.mAudioService.setRemoteStreamVolume(i3);
        } else {
            this.mAudioManager.setStreamVolume(i2, i3, i4);
        }
    }

    private void updateSlider(StreamControl streamControl) throws Throwable {
        streamControl.seekbarView.setProgress(getStreamVolume(streamControl.streamType));
        boolean zIsMuted = isMuted(streamControl.streamType);
        streamControl.icon.setImageDrawable(null);
        streamControl.icon.setImageResource(zIsMuted ? streamControl.iconMuteRes : streamControl.iconRes);
        int i2 = streamControl.streamType;
        if ((i2 == 2 || i2 == 5) && this.mAudioManager.getRingerMode() == 1) {
            streamControl.icon.setImageResource(17302187);
        }
        int i3 = streamControl.streamType;
        if (i3 == -200) {
            streamControl.seekbarView.setEnabled(true);
        } else if ((i3 == this.mAudioManager.getMasterStreamType() || !zIsMuted) && sConfirmSafeVolumeDialog == null) {
            streamControl.seekbarView.setEnabled(true);
        } else {
            streamControl.seekbarView.setEnabled(false);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) throws Throwable {
        switch (message.what) {
            case 0:
                onVolumeChanged(message.arg1, message.arg2);
                return;
            case 1:
                onFreeResources();
                return;
            case 2:
                onPlaySound(message.arg1, message.arg2);
                return;
            case 3:
                onStopSounds();
                return;
            case 4:
                onVibrate();
                return;
            case 5:
                if (this.mDialog.isShowing()) {
                    this.mDialog.dismiss();
                    this.mActiveStreamType = -1;
                }
                synchronized (sConfirmSafeVolumeLock) {
                    AlertDialog alertDialog = sConfirmSafeVolumeDialog;
                    if (alertDialog != null) {
                        alertDialog.dismiss();
                    }
                    break;
                }
                return;
            case 6:
                if (this.mDialog.isShowing()) {
                    updateStates();
                    return;
                }
                return;
            case 7:
                onMuteChanged(message.arg1, message.arg2);
                return;
            case 8:
                onRemoteVolumeChanged(message.arg1, message.arg2);
                return;
            case 9:
                onRemoteVolumeUpdateIfShown();
                return;
            case 10:
                onSliderVisibilityChanged(message.arg1, message.arg2);
                return;
            case 11:
                onDisplaySafeVolumeWarning(message.arg1);
                return;
            default:
                return;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.mMoreButton) {
            expand();
        }
        resetTimeout();
    }

    public void onDisplaySafeVolumeWarning(int i2) throws Throwable {
        if ((i2 & 1) != 0 || this.mDialog.isShowing()) {
            synchronized (sConfirmSafeVolumeLock) {
                if (sConfirmSafeVolumeDialog != null) {
                    return;
                }
                AlertDialog alertDialogCreate = new AlertDialog.Builder(this.mContext).setMessage(17040770).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: android.view.VolumePanel.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        VolumePanel.this.mAudioService.disableSafeMediaVolume();
                    }
                }).setNegativeButton(R.string.no, (DialogInterface.OnClickListener) null).setIconAttribute(R.attr.alertDialogIcon).create();
                sConfirmSafeVolumeDialog = alertDialogCreate;
                sConfirmSafeVolumeDialog.setOnDismissListener(new WarningDialogReceiver(this.mContext, alertDialogCreate, this));
                sConfirmSafeVolumeDialog.getWindow().setType(WindowManager.LayoutParams.TYPE_KEYGUARD_DIALOG);
                sConfirmSafeVolumeDialog.show();
                updateStates();
            }
        }
        resetTimeout();
    }

    public void onFreeResources() {
        synchronized (this) {
            for (int length = this.mToneGenerators.length - 1; length >= 0; length--) {
                ToneGenerator[] toneGeneratorArr = this.mToneGenerators;
                if (toneGeneratorArr[length] != null) {
                    toneGeneratorArr[length].release();
                }
                this.mToneGenerators[length] = null;
            }
        }
    }

    public void onMuteChanged(int i2, int i3) throws Throwable {
        if (LOGD) {
            Log.d(TAG, "onMuteChanged(streamType: " + i2 + ", flags: " + i3 + ")");
        }
        StreamControl streamControl = this.mStreamControls.get(Integer.valueOf(i2));
        if (streamControl != null) {
            streamControl.icon.setImageResource(isMuted(streamControl.streamType) ? streamControl.iconMuteRes : streamControl.iconRes);
        }
        onVolumeChanged(i2, i3);
    }

    public void onPlaySound(int i2, int i3) {
        if (hasMessages(3)) {
            removeMessages(3);
            onStopSounds();
        }
        synchronized (this) {
            ToneGenerator orCreateToneGenerator = getOrCreateToneGenerator(i2);
            if (orCreateToneGenerator != null) {
                orCreateToneGenerator.startTone(24);
                sendMessageDelayed(obtainMessage(3), 150L);
            }
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        Object tag = seekBar.getTag();
        if (z2 && (tag instanceof StreamControl)) {
            StreamControl streamControl = (StreamControl) tag;
            if (getStreamVolume(streamControl.streamType) != i2) {
                setStreamVolume(streamControl.streamType, i2, 0);
            }
        }
        resetTimeout();
    }

    public void onRemoteVolumeChanged(int i2, int i3) {
        if (LOGD) {
            Log.d(TAG, "onRemoteVolumeChanged(stream:" + i2 + ", flags: " + i3 + ")");
        }
        if ((i3 & 1) != 0 || this.mDialog.isShowing()) {
            synchronized (this) {
                if (this.mActiveStreamType != -200) {
                    reorderSliders(AudioService.STREAM_REMOTE_MUSIC);
                }
                onShowVolumeChanged(AudioService.STREAM_REMOTE_MUSIC, i3);
            }
        } else if (LOGD) {
            Log.d(TAG, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI");
        }
        if ((i3 & 4) != 0 && !this.mRingIsSilent) {
            removeMessages(2);
            sendMessageDelayed(obtainMessage(2, i2, i3), 300L);
        }
        if ((i3 & 8) != 0) {
            removeMessages(2);
            removeMessages(4);
            onStopSounds();
        }
        removeMessages(1);
        sendMessageDelayed(obtainMessage(1), 10000L);
        resetTimeout();
    }

    public void onRemoteVolumeUpdateIfShown() throws Throwable {
        if (LOGD) {
            Log.d(TAG, "onRemoteVolumeUpdateIfShown()");
        }
        if (this.mDialog.isShowing() && this.mActiveStreamType == -200 && this.mStreamControls != null) {
            onShowVolumeChanged(AudioService.STREAM_REMOTE_MUSIC, 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007d  */
    public void onShowVolumeChanged(int i2, int i3) throws Throwable {
        int streamVolume = getStreamVolume(i2);
        this.mRingIsSilent = false;
        if (LOGD) {
            Log.d(TAG, "onShowVolumeChanged(streamType: " + i2 + ", flags: " + i3 + "), index: " + streamVolume);
        }
        int streamMaxVolume = getStreamMaxVolume(i2);
        if (i2 != -200) {
            if (i2 == 0) {
                streamVolume++;
                streamMaxVolume++;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        if (i2 == 6) {
                            streamVolume++;
                            streamMaxVolume++;
                        }
                    } else if (RingtoneManager.getActualDefaultRingtoneUri(this.mContext, 2) == null) {
                        this.mRingIsSilent = true;
                    }
                } else if ((this.mAudioManager.getDevicesForStream(3) & AudioSystem.DEVICE_OUT_ALL_A2DP) != 0) {
                    setMusicIcon(17302175, 17302176);
                } else {
                    setMusicIcon(17302189, 17302191);
                }
            } else if (RingtoneManager.getActualDefaultRingtoneUri(this.mContext, 1) == null) {
                this.mRingIsSilent = true;
            }
        } else if (LOGD) {
            Log.d(TAG, "showing remote volume " + streamVolume + " over " + streamMaxVolume);
        }
        StreamControl streamControl = this.mStreamControls.get(Integer.valueOf(i2));
        if (streamControl != null) {
            if (streamControl.seekbarView.getMax() != streamMaxVolume) {
                streamControl.seekbarView.setMax(streamMaxVolume);
            }
            streamControl.seekbarView.setProgress(streamVolume);
            if ((i3 & 32) == 0 && ((i2 == this.mAudioManager.getMasterStreamType() || i2 == -200 || !isMuted(i2)) && sConfirmSafeVolumeDialog == null)) {
                streamControl.seekbarView.setEnabled(true);
            } else {
                streamControl.seekbarView.setEnabled(false);
            }
        }
        if (!this.mDialog.isShowing()) {
            this.mAudioManager.forceVolumeControlStream(i2 == -200 ? -1 : i2);
            this.mDialog.setContentView(this.mView);
            if (this.mShowCombinedVolumes) {
                collapse();
            }
            this.mDialog.show();
        }
        if (i2 == -200 || (i3 & 16) == 0 || !this.mAudioService.isStreamAffectedByRingerMode(i2) || this.mAudioManager.getRingerMode() != 1) {
            return;
        }
        sendMessageDelayed(obtainMessage(4), 300L);
    }

    public synchronized void onSliderVisibilityChanged(int i2, int i3) {
        if (LOGD) {
            Log.d(TAG, "onSliderVisibilityChanged(stream=" + i2 + ", visi=" + i3 + ")");
        }
        boolean z2 = i3 == 1;
        for (int length = STREAMS.length - 1; length >= 0; length--) {
            StreamResources streamResources = STREAMS[length];
            if (streamResources.streamType == i2) {
                streamResources.show = z2;
                if (!z2 && this.mActiveStreamType == i2) {
                    this.mActiveStreamType = -1;
                    break;
                } else {
                    break;
                    break;
                }
            }
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onStopSounds() {
        synchronized (this) {
            for (int numStreamTypes = AudioSystem.getNumStreamTypes() - 1; numStreamTypes >= 0; numStreamTypes--) {
                ToneGenerator toneGenerator = this.mToneGenerators[numStreamTypes];
                if (toneGenerator != null) {
                    toneGenerator.stopTone();
                }
            }
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        Object tag = seekBar.getTag();
        if ((tag instanceof StreamControl) && ((StreamControl) tag).streamType == -200) {
            seekBar.setProgress(getStreamVolume(AudioService.STREAM_REMOTE_MUSIC));
        }
    }

    public void onVibrate() {
        if (this.mAudioManager.getRingerMode() != 1) {
            return;
        }
        this.mVibrator.vibrate(300L);
    }

    public void onVolumeChanged(int i2, int i3) {
        if (LOGD) {
            Log.d(TAG, "onVolumeChanged(streamType: " + i2 + ", flags: " + i3 + ")");
        }
        if ((i3 & 1) != 0) {
            synchronized (this) {
                if (this.mActiveStreamType != i2) {
                    reorderSliders(i2);
                }
                onShowVolumeChanged(i2, i3);
            }
        }
        if ((i3 & 4) != 0 && !this.mRingIsSilent) {
            removeMessages(2);
            sendMessageDelayed(obtainMessage(2, i2, i3), 300L);
        }
        if ((i3 & 8) != 0) {
            removeMessages(2);
            removeMessages(4);
            onStopSounds();
        }
        removeMessages(1);
        sendMessageDelayed(obtainMessage(1), 10000L);
        resetTimeout();
    }

    public void postDisplaySafeVolumeWarning(int i2) {
        if (hasMessages(11)) {
            return;
        }
        obtainMessage(11, i2, 0).sendToTarget();
    }

    @Override // android.media.VolumeController
    public void postHasNewRemotePlaybackInfo() {
        if (hasMessages(9)) {
            return;
        }
        obtainMessage(9).sendToTarget();
    }

    public void postMasterMuteChanged(int i2) {
        postMuteChanged(-100, i2);
    }

    public void postMasterVolumeChanged(int i2) {
        postVolumeChanged(-100, i2);
    }

    public void postMuteChanged(int i2, int i3) {
        if (hasMessages(0)) {
            return;
        }
        synchronized (this) {
            if (this.mStreamControls == null) {
                createSliders();
            }
        }
        removeMessages(1);
        obtainMessage(7, i2, i3).sendToTarget();
    }

    @Override // android.media.VolumeController
    public void postRemoteSliderVisibility(boolean z2) {
        obtainMessage(10, AudioService.STREAM_REMOTE_MUSIC, z2 ? 1 : 0).sendToTarget();
    }

    @Override // android.media.VolumeController
    public void postRemoteVolumeChanged(int i2, int i3) {
        if (hasMessages(8)) {
            return;
        }
        synchronized (this) {
            if (this.mStreamControls == null) {
                createSliders();
            }
        }
        removeMessages(1);
        obtainMessage(8, i2, i3).sendToTarget();
    }

    public void postVolumeChanged(int i2, int i3) {
        if (hasMessages(0)) {
            return;
        }
        synchronized (this) {
            if (this.mStreamControls == null) {
                createSliders();
            }
        }
        removeMessages(1);
        obtainMessage(0, i2, i3).sendToTarget();
    }

    public void setLayoutDirection(int i2) {
        this.mPanel.setLayoutDirection(i2);
        updateStates();
    }

    public void updateStates() throws Throwable {
        int childCount = this.mSliderGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            updateSlider((StreamControl) this.mSliderGroup.getChildAt(i2).getTag());
        }
    }
}
