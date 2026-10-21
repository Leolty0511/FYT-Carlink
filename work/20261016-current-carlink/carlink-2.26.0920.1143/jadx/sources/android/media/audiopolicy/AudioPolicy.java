package android.media.audiopolicy;

import android.Manifest;
import android.accessibilityservice.c;
import android.app.m;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusInfo;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.media.IAudioService;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.util.Slog;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AudioPolicy {
    private static final boolean DEBUG = false;
    public static final int FOCUS_POLICY_DUCKING_DEFAULT = 0;
    public static final int FOCUS_POLICY_DUCKING_IN_APP = 0;
    public static final int FOCUS_POLICY_DUCKING_IN_POLICY = 1;
    private static final int MSG_FOCUS_ABANDON = 5;
    private static final int MSG_FOCUS_GRANT = 1;
    private static final int MSG_FOCUS_LOSS = 2;
    private static final int MSG_FOCUS_REQUEST = 4;
    private static final int MSG_MIX_STATE_UPDATE = 3;
    private static final int MSG_POLICY_STATUS_CHANGE = 0;
    public static final int POLICY_STATUS_REGISTERED = 2;
    public static final int POLICY_STATUS_UNREGISTERED = 1;
    private static final String TAG = "AudioPolicy";
    private static IAudioService sService;
    private AudioPolicyConfig mConfig;
    private Context mContext;
    private final EventHandler mEventHandler;
    private AudioPolicyFocusListener mFocusListener;
    private boolean mIsFocusPolicy;
    private final Object mLock;
    private final IAudioPolicyCallback mPolicyCb;
    private String mRegistrationId;
    private int mStatus;
    private AudioPolicyStatusListener mStatusListener;

    public static abstract class AudioPolicyFocusListener {
        public void onAudioFocusAbandon(AudioFocusInfo audioFocusInfo) {
        }

        public void onAudioFocusGrant(AudioFocusInfo audioFocusInfo, int i2) {
        }

        public void onAudioFocusLoss(AudioFocusInfo audioFocusInfo, boolean z2) {
        }

        public void onAudioFocusRequest(AudioFocusInfo audioFocusInfo, int i2) {
        }
    }

    public static abstract class AudioPolicyStatusListener {
        public void onMixStateUpdate(AudioMix audioMix) {
        }

        public void onStatusChange() {
        }
    }

    public static class Builder {
        private Context mContext;
        private AudioPolicyFocusListener mFocusListener;
        private Looper mLooper;
        private AudioPolicyStatusListener mStatusListener;
        private boolean mIsFocusPolicy = false;
        private ArrayList<AudioMix> mMixes = new ArrayList<>();

        public Builder(Context context) {
            this.mContext = context;
        }

        public Builder addMix(AudioMix audioMix) {
            if (audioMix == null) {
                throw new IllegalArgumentException("Illegal null AudioMix argument");
            }
            this.mMixes.add(audioMix);
            return this;
        }

        public AudioPolicy build() {
            if (this.mStatusListener != null) {
                Iterator<AudioMix> it = this.mMixes.iterator();
                while (it.hasNext()) {
                    it.next().mCallbackFlags |= 1;
                }
            }
            if (this.mIsFocusPolicy && this.mFocusListener == null) {
                throw new IllegalStateException("Cannot be a focus policy without an AudioPolicyFocusListener");
            }
            return new AudioPolicy(new AudioPolicyConfig(this.mMixes), this.mContext, this.mLooper, this.mFocusListener, this.mStatusListener, this.mIsFocusPolicy);
        }

        public void setAudioPolicyFocusListener(AudioPolicyFocusListener audioPolicyFocusListener) {
            this.mFocusListener = audioPolicyFocusListener;
        }

        public void setAudioPolicyStatusListener(AudioPolicyStatusListener audioPolicyStatusListener) {
            this.mStatusListener = audioPolicyStatusListener;
        }

        public Builder setIsAudioFocusPolicy(boolean z2) {
            this.mIsFocusPolicy = z2;
            return this;
        }

        public Builder setLooper(Looper looper) {
            if (looper == null) {
                throw new IllegalArgumentException("Illegal null Looper argument");
            }
            this.mLooper = looper;
            return this;
        }
    }

    public class EventHandler extends Handler {
        public EventHandler(AudioPolicy audioPolicy, Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                AudioPolicy.this.onPolicyStatusChange();
                return;
            }
            if (i2 == 1) {
                if (AudioPolicy.this.mFocusListener != null) {
                    AudioPolicy.this.mFocusListener.onAudioFocusGrant((AudioFocusInfo) message.obj, message.arg1);
                    return;
                }
                return;
            }
            if (i2 == 2) {
                if (AudioPolicy.this.mFocusListener != null) {
                    AudioPolicy.this.mFocusListener.onAudioFocusLoss((AudioFocusInfo) message.obj, message.arg1 != 0);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                if (AudioPolicy.this.mStatusListener != null) {
                    AudioPolicy.this.mStatusListener.onMixStateUpdate((AudioMix) message.obj);
                }
            } else {
                if (i2 == 4) {
                    if (AudioPolicy.this.mFocusListener != null) {
                        AudioPolicy.this.mFocusListener.onAudioFocusRequest((AudioFocusInfo) message.obj, message.arg1);
                        return;
                    } else {
                        Log.e(AudioPolicy.TAG, "Invalid null focus listener for focus request event");
                        return;
                    }
                }
                if (i2 != 5) {
                    m.C(new StringBuilder("Unknown event "), message.what, AudioPolicy.TAG);
                } else if (AudioPolicy.this.mFocusListener != null) {
                    AudioPolicy.this.mFocusListener.onAudioFocusAbandon((AudioFocusInfo) message.obj);
                } else {
                    Log.e(AudioPolicy.TAG, "Invalid null focus listener for focus abandon event");
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PolicyStatus {
    }

    private static String addressForTag(AudioMix audioMix) {
        return "addr=" + audioMix.getRegistration();
    }

    private void checkMixReadyToUse(AudioMix audioMix, boolean z2) {
        if (audioMix == null) {
            throw new IllegalArgumentException(z2 ? "Invalid null AudioMix for AudioTrack creation" : "Invalid null AudioMix for AudioRecord creation");
        }
        if (!this.mConfig.mMixes.contains(audioMix)) {
            throw new IllegalArgumentException("Invalid mix: not part of this policy");
        }
        if ((audioMix.getRouteFlags() & 2) != 2) {
            throw new IllegalArgumentException("Invalid AudioMix: not defined for loop back");
        }
        if (z2 && audioMix.getMixType() != 1) {
            throw new IllegalArgumentException("Invalid AudioMix: not defined for being a recording source");
        }
        if (!z2 && audioMix.getMixType() != 0) {
            throw new IllegalArgumentException("Invalid AudioMix: not defined for capturing playback");
        }
    }

    private static IAudioService getService() {
        IAudioService iAudioService = sService;
        if (iAudioService != null) {
            return iAudioService;
        }
        IAudioService iAudioServiceAsInterface = IAudioService.Stub.asInterface(ServiceManager.getService("audio"));
        sService = iAudioServiceAsInterface;
        return iAudioServiceAsInterface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPolicyStatusChange() {
        synchronized (this.mLock) {
            AudioPolicyStatusListener audioPolicyStatusListener = this.mStatusListener;
            if (audioPolicyStatusListener == null) {
                return;
            }
            audioPolicyStatusListener.onStatusChange();
        }
    }

    private boolean policyReadyToUse() {
        synchronized (this.mLock) {
            if (this.mStatus != 2) {
                Log.e(TAG, "Cannot use unregistered AudioPolicy");
                return false;
            }
            Context context = this.mContext;
            if (context == null) {
                Log.e(TAG, "Cannot use AudioPolicy without context");
                return false;
            }
            if (this.mRegistrationId == null) {
                Log.e(TAG, "Cannot use unregistered AudioPolicy");
                return false;
            }
            if (context.checkCallingOrSelfPermission(Manifest.permission.MODIFY_AUDIO_ROUTING) == 0) {
                return true;
            }
            Slog.w(TAG, "Cannot use AudioPolicy for pid " + Binder.getCallingPid() + " / uid " + Binder.getCallingUid() + ", needs MODIFY_AUDIO_ROUTING");
            return false;
        }
    }

    private void sendMsg(int i2) {
        EventHandler eventHandler = this.mEventHandler;
        if (eventHandler != null) {
            eventHandler.sendEmptyMessage(i2);
        }
    }

    public IAudioPolicyCallback cb() {
        return this.mPolicyCb;
    }

    public AudioRecord createAudioRecordSink(AudioMix audioMix) {
        if (!policyReadyToUse()) {
            Log.e(TAG, "Cannot create AudioRecord sink for AudioMix");
            return null;
        }
        checkMixReadyToUse(audioMix, false);
        return new AudioRecord(new AudioAttributes.Builder().setInternalCapturePreset(8).addTag(addressForTag(audioMix)).build(), new AudioFormat.Builder(audioMix.getFormat()).setChannelMask(AudioFormat.inChannelMaskFromOutChannelMask(audioMix.getFormat().getChannelMask())).build(), AudioRecord.getMinBufferSize(audioMix.getFormat().getSampleRate(), 12, audioMix.getFormat().getEncoding()), 0);
    }

    public AudioTrack createAudioTrackSource(AudioMix audioMix) {
        if (policyReadyToUse()) {
            checkMixReadyToUse(audioMix, true);
            return new AudioTrack(new AudioAttributes.Builder().setUsage(15).addTag(addressForTag(audioMix)).build(), audioMix.getFormat(), AudioTrack.getMinBufferSize(audioMix.getFormat().getSampleRate(), audioMix.getFormat().getChannelMask(), audioMix.getFormat().getEncoding()), 1, 0);
        }
        Log.e(TAG, "Cannot create AudioTrack source for AudioMix");
        return null;
    }

    public AudioPolicyConfig getConfig() {
        return this.mConfig;
    }

    public int getFocusDuckingBehavior() {
        return this.mConfig.mDuckingPolicy;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public boolean hasFocusListener() {
        return this.mFocusListener != null;
    }

    public boolean isFocusPolicy() {
        return this.mIsFocusPolicy;
    }

    public int setFocusDuckingBehavior(int i2) {
        int focusPropertiesForPolicy;
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException(c.d("Invalid ducking behavior ", i2));
        }
        synchronized (this.mLock) {
            if (this.mStatus != 2) {
                throw new IllegalStateException("Cannot change ducking behavior for unregistered policy");
            }
            if (i2 == 1 && this.mFocusListener == null) {
                throw new IllegalStateException("Cannot handle ducking without an audio focus listener");
            }
            try {
                focusPropertiesForPolicy = getService().setFocusPropertiesForPolicy(i2, cb());
                if (focusPropertiesForPolicy == 0) {
                    this.mConfig.mDuckingPolicy = i2;
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in setFocusPropertiesForPolicy for behavior", e2);
                return -1;
            }
        }
        return focusPropertiesForPolicy;
    }

    public void setRegistration(String str) {
        synchronized (this.mLock) {
            this.mRegistrationId = str;
            this.mConfig.setRegistration(str);
            if (str != null) {
                this.mStatus = 2;
            } else {
                this.mStatus = 1;
            }
        }
        sendMsg(0);
    }

    public String toLogFriendlyString() {
        StringBuilder sbU = c.u(new String("android.media.audiopolicy.AudioPolicy:\n"), "config=");
        sbU.append(this.mConfig.toLogFriendlyString());
        return sbU.toString();
    }

    private AudioPolicy(AudioPolicyConfig audioPolicyConfig, Context context, Looper looper, AudioPolicyFocusListener audioPolicyFocusListener, AudioPolicyStatusListener audioPolicyStatusListener, boolean z2) {
        this.mLock = new Object();
        this.mPolicyCb = new IAudioPolicyCallback.Stub() { // from class: android.media.audiopolicy.AudioPolicy.1
            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyAudioFocusAbandon(AudioFocusInfo audioFocusInfo) {
                AudioPolicy.this.sendMsg(5, audioFocusInfo, 0);
            }

            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyAudioFocusGrant(AudioFocusInfo audioFocusInfo, int i2) {
                AudioPolicy.this.sendMsg(1, audioFocusInfo, i2);
            }

            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyAudioFocusLoss(AudioFocusInfo audioFocusInfo, boolean z3) {
                AudioPolicy.this.sendMsg(2, audioFocusInfo, z3 ? 1 : 0);
            }

            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyAudioFocusRequest(AudioFocusInfo audioFocusInfo, int i2) {
                AudioPolicy.this.sendMsg(4, audioFocusInfo, i2);
            }

            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyMixStateUpdate(String str, int i2) {
                for (AudioMix audioMix : AudioPolicy.this.mConfig.getMixes()) {
                    if (audioMix.getRegistration().equals(str)) {
                        audioMix.mMixState = i2;
                        AudioPolicy.this.sendMsg(3, audioMix, 0);
                    }
                }
            }
        };
        this.mConfig = audioPolicyConfig;
        this.mStatus = 1;
        this.mContext = context;
        looper = looper == null ? Looper.getMainLooper() : looper;
        if (looper != null) {
            this.mEventHandler = new EventHandler(this, looper);
        } else {
            this.mEventHandler = null;
            Log.e(TAG, "No event handler due to looper without a thread");
        }
        this.mFocusListener = audioPolicyFocusListener;
        this.mStatusListener = audioPolicyStatusListener;
        this.mIsFocusPolicy = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMsg(int i2, Object obj, int i3) {
        EventHandler eventHandler = this.mEventHandler;
        if (eventHandler != null) {
            eventHandler.sendMessage(eventHandler.obtainMessage(i2, i3, 0, obj));
        }
    }
}
