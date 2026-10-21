package android.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.ParceledListSlice;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.Rating;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaController {
    private static final int MSG_DESTROYED = 8;
    private static final int MSG_EVENT = 1;
    private static final int MSG_UPDATE_EXTRAS = 7;
    private static final int MSG_UPDATE_METADATA = 3;
    private static final int MSG_UPDATE_PLAYBACK_STATE = 2;
    private static final int MSG_UPDATE_QUEUE = 5;
    private static final int MSG_UPDATE_QUEUE_TITLE = 6;
    private static final int MSG_UPDATE_VOLUME = 4;
    private static final String TAG = "MediaController";
    private final ArrayList<MessageHandler> mCallbacks;
    private boolean mCbRegistered;
    private final CallbackStub mCbStub;
    private final Context mContext;
    private final Object mLock;
    private String mPackageName;
    private final ISessionController mSessionBinder;
    private String mTag;
    private final MediaSession.Token mToken;
    private final TransportControls mTransportControls;

    public static abstract class Callback {
        public void onAudioInfoChanged(PlaybackInfo playbackInfo) {
        }

        public void onExtrasChanged(Bundle bundle) {
        }

        public void onMetadataChanged(MediaMetadata mediaMetadata) {
        }

        public void onPlaybackStateChanged(PlaybackState playbackState) {
        }

        public void onQueueChanged(List<MediaSession.QueueItem> list) {
        }

        public void onQueueTitleChanged(CharSequence charSequence) {
        }

        public void onSessionDestroyed() {
        }

        public void onSessionEvent(String str, Bundle bundle) {
        }
    }

    public static final class CallbackStub extends ISessionControllerCallback.Stub {
        private final WeakReference<MediaController> mController;

        public CallbackStub(MediaController mediaController) {
            this.mController = new WeakReference<>(mediaController);
        }

        @Override // android.media.session.ISessionControllerCallback
        public void onEvent(String str, Bundle bundle) {
            MediaController mediaController = this.mController.get();
            if (mediaController != null) {
                mediaController.postMessage(1, str, bundle);
            }
        }

        @Override // android.media.session.ISessionControllerCallback
        public void onExtrasChanged(Bundle bundle) {
            MediaController mediaController = this.mController.get();
            if (mediaController != null) {
                mediaController.postMessage(7, bundle, null);
            }
        }

        @Override // android.media.session.ISessionControllerCallback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            MediaController mediaController = this.mController.get();
            if (mediaController != null) {
                mediaController.postMessage(3, mediaMetadata, null);
            }
        }

        @Override // android.media.session.ISessionControllerCallback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            MediaController mediaController = this.mController.get();
            if (mediaController != null) {
                mediaController.postMessage(2, playbackState, null);
            }
        }

        @Override // android.media.session.ISessionControllerCallback
        public void onQueueChanged(ParceledListSlice parceledListSlice) {
            List list = parceledListSlice == null ? null : parceledListSlice.getList();
            MediaController mediaController = this.mController.get();
            if (mediaController != null) {
                mediaController.postMessage(5, list, null);
            }
        }

        @Override // android.media.session.ISessionControllerCallback
        public void onQueueTitleChanged(CharSequence charSequence) {
            MediaController mediaController = this.mController.get();
            if (mediaController != null) {
                mediaController.postMessage(6, charSequence, null);
            }
        }

        @Override // android.media.session.ISessionControllerCallback
        public void onSessionDestroyed() {
            MediaController mediaController = this.mController.get();
            if (mediaController != null) {
                mediaController.postMessage(8, null, null);
            }
        }

        @Override // android.media.session.ISessionControllerCallback
        public void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) {
            MediaController mediaController = this.mController.get();
            if (mediaController != null) {
                mediaController.postMessage(4, new PlaybackInfo(parcelableVolumeInfo.volumeType, parcelableVolumeInfo.audioAttrs, parcelableVolumeInfo.controlType, parcelableVolumeInfo.maxVolume, parcelableVolumeInfo.currentVolume), null);
            }
        }
    }

    public static final class MessageHandler extends Handler {
        private final Callback mCallback;
        private boolean mRegistered;

        public MessageHandler(Looper looper, Callback callback) {
            super(looper, null, true);
            this.mRegistered = false;
            this.mCallback = callback;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.mRegistered) {
                switch (message.what) {
                    case 1:
                        this.mCallback.onSessionEvent((String) message.obj, message.getData());
                        break;
                    case 2:
                        this.mCallback.onPlaybackStateChanged((PlaybackState) message.obj);
                        break;
                    case 3:
                        this.mCallback.onMetadataChanged((MediaMetadata) message.obj);
                        break;
                    case 4:
                        this.mCallback.onAudioInfoChanged((PlaybackInfo) message.obj);
                        break;
                    case 5:
                        this.mCallback.onQueueChanged((List) message.obj);
                        break;
                    case 6:
                        this.mCallback.onQueueTitleChanged((CharSequence) message.obj);
                        break;
                    case 7:
                        this.mCallback.onExtrasChanged((Bundle) message.obj);
                        break;
                    case 8:
                        this.mCallback.onSessionDestroyed();
                        break;
                }
            }
        }

        public void post(int i2, Object obj, Bundle bundle) {
            Message messageObtainMessage = obtainMessage(i2, obj);
            messageObtainMessage.setData(bundle);
            messageObtainMessage.sendToTarget();
        }
    }

    public static final class PlaybackInfo {
        public static final int PLAYBACK_TYPE_LOCAL = 1;
        public static final int PLAYBACK_TYPE_REMOTE = 2;
        private final AudioAttributes mAudioAttrs;
        private final int mCurrentVolume;
        private final int mMaxVolume;
        private final int mVolumeControl;
        private final int mVolumeType;

        public PlaybackInfo(int i2, AudioAttributes audioAttributes, int i3, int i4, int i5) {
            this.mVolumeType = i2;
            this.mAudioAttrs = audioAttributes;
            this.mVolumeControl = i3;
            this.mMaxVolume = i4;
            this.mCurrentVolume = i5;
        }

        public AudioAttributes getAudioAttributes() {
            return this.mAudioAttrs;
        }

        public int getCurrentVolume() {
            return this.mCurrentVolume;
        }

        public int getMaxVolume() {
            return this.mMaxVolume;
        }

        public int getPlaybackType() {
            return this.mVolumeType;
        }

        public int getVolumeControl() {
            return this.mVolumeControl;
        }
    }

    public final class TransportControls {
        private static final String TAG = "TransportController";

        public void fastForward() {
            try {
                MediaController.this.mSessionBinder.fastForward();
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling fastForward.", e2);
            }
        }

        public void pause() {
            try {
                MediaController.this.mSessionBinder.pause();
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling pause.", e2);
            }
        }

        public void play() {
            try {
                MediaController.this.mSessionBinder.play();
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling play.", e2);
            }
        }

        public void playFromMediaId(String str, Bundle bundle) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("You must specify a non-empty String for playFromMediaId.");
            }
            try {
                MediaController.this.mSessionBinder.playFromMediaId(str, bundle);
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling play(" + str + ").", e2);
            }
        }

        public void playFromSearch(String str, Bundle bundle) {
            if (str == null) {
                str = "";
            }
            try {
                MediaController.this.mSessionBinder.playFromSearch(str, bundle);
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling play(" + str + ").", e2);
            }
        }

        public void playFromUri(Uri uri, Bundle bundle) {
            if (uri == null || Uri.EMPTY.equals(uri)) {
                throw new IllegalArgumentException("You must specify a non-empty Uri for playFromUri.");
            }
            try {
                MediaController.this.mSessionBinder.playFromUri(uri, bundle);
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling play(" + uri + ").", e2);
            }
        }

        public void prepare() {
            try {
                MediaController.this.mSessionBinder.prepare();
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling prepare.", e2);
            }
        }

        public void prepareFromMediaId(String str, Bundle bundle) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("You must specify a non-empty String for prepareFromMediaId.");
            }
            try {
                MediaController.this.mSessionBinder.prepareFromMediaId(str, bundle);
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling prepare(" + str + ").", e2);
            }
        }

        public void prepareFromSearch(String str, Bundle bundle) {
            if (str == null) {
                str = "";
            }
            try {
                MediaController.this.mSessionBinder.prepareFromSearch(str, bundle);
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling prepare(" + str + ").", e2);
            }
        }

        public void prepareFromUri(Uri uri, Bundle bundle) {
            if (uri == null || Uri.EMPTY.equals(uri)) {
                throw new IllegalArgumentException("You must specify a non-empty Uri for prepareFromUri.");
            }
            try {
                MediaController.this.mSessionBinder.prepareFromUri(uri, bundle);
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling prepare(" + uri + ").", e2);
            }
        }

        public void rewind() {
            try {
                MediaController.this.mSessionBinder.rewind();
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling rewind.", e2);
            }
        }

        public void seekTo(long j2) {
            try {
                MediaController.this.mSessionBinder.seekTo(j2);
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling seekTo.", e2);
            }
        }

        public void sendCustomAction(PlaybackState.CustomAction customAction, Bundle bundle) {
            if (customAction == null) {
                throw new IllegalArgumentException("CustomAction cannot be null.");
            }
            sendCustomAction(customAction.getAction(), bundle);
        }

        public void setRating(Rating rating) {
            try {
                MediaController.this.mSessionBinder.rate(rating);
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling rate.", e2);
            }
        }

        public void skipToNext() {
            try {
                MediaController.this.mSessionBinder.next();
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling next.", e2);
            }
        }

        public void skipToPrevious() {
            try {
                MediaController.this.mSessionBinder.previous();
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling previous.", e2);
            }
        }

        public void skipToQueueItem(long j2) {
            try {
                MediaController.this.mSessionBinder.skipToQueueItem(j2);
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling skipToItem(" + j2 + ").", e2);
            }
        }

        public void stop() {
            try {
                MediaController.this.mSessionBinder.stop();
            } catch (RemoteException e2) {
                Log.wtf(TAG, "Error calling stop.", e2);
            }
        }

        private TransportControls() {
        }

        public void sendCustomAction(String str, Bundle bundle) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    MediaController.this.mSessionBinder.sendCustomAction(str, bundle);
                    return;
                } catch (RemoteException e2) {
                    Log.d(TAG, "Dead object in sendCustomAction.", e2);
                    return;
                }
            }
            throw new IllegalArgumentException("CustomAction cannot be null.");
        }
    }

    public MediaController(Context context, ISessionController iSessionController) {
        this.mCbStub = new CallbackStub(this);
        this.mCallbacks = new ArrayList<>();
        this.mLock = new Object();
        this.mCbRegistered = false;
        if (iSessionController == null) {
            throw new IllegalArgumentException("Session token cannot be null");
        }
        if (context == null) {
            throw new IllegalArgumentException("Context cannot be null");
        }
        this.mSessionBinder = iSessionController;
        this.mTransportControls = new TransportControls();
        this.mToken = new MediaSession.Token(iSessionController);
        this.mContext = context;
    }

    private void addCallbackLocked(Callback callback, Handler handler) {
        if (getHandlerForCallbackLocked(callback) != null) {
            Log.w(TAG, "Callback is already added, ignoring");
            return;
        }
        MessageHandler messageHandler = new MessageHandler(handler.getLooper(), callback);
        this.mCallbacks.add(messageHandler);
        messageHandler.mRegistered = true;
        if (this.mCbRegistered) {
            return;
        }
        try {
            this.mSessionBinder.registerCallbackListener(this.mCbStub);
            this.mCbRegistered = true;
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in registerCallback", e2);
        }
    }

    private MessageHandler getHandlerForCallbackLocked(Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("Callback cannot be null");
        }
        for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
            MessageHandler messageHandler = this.mCallbacks.get(size);
            if (callback == messageHandler.mCallback) {
                return messageHandler;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void postMessage(int i2, Object obj, Bundle bundle) {
        synchronized (this.mLock) {
            for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
                this.mCallbacks.get(size).post(i2, obj, bundle);
            }
        }
    }

    private boolean removeCallbackLocked(Callback callback) {
        boolean z2 = false;
        for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
            MessageHandler messageHandler = this.mCallbacks.get(size);
            if (callback == messageHandler.mCallback) {
                this.mCallbacks.remove(size);
                messageHandler.mRegistered = false;
                z2 = true;
            }
        }
        if (this.mCbRegistered && this.mCallbacks.size() == 0) {
            try {
                this.mSessionBinder.unregisterCallbackListener(this.mCbStub);
            } catch (RemoteException unused) {
                Log.e(TAG, "Dead object in removeCallbackLocked");
            }
            this.mCbRegistered = false;
        }
        return z2;
    }

    public void adjustVolume(int i2, int i3) {
        try {
            this.mSessionBinder.adjustVolume(i2, i3, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling adjustVolumeBy.", e2);
        }
    }

    public boolean controlsSameSession(MediaController mediaController) {
        return mediaController != null && this.mSessionBinder.asBinder() == mediaController.getSessionBinder().asBinder();
    }

    public boolean dispatchMediaButtonEvent(KeyEvent keyEvent) {
        if (keyEvent == null) {
            throw new IllegalArgumentException("KeyEvent may not be null");
        }
        if (!KeyEvent.isMediaKey(keyEvent.getKeyCode())) {
            return false;
        }
        try {
            return this.mSessionBinder.sendMediaButton(keyEvent);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public Bundle getExtras() {
        try {
            return this.mSessionBinder.getExtras();
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling getExtras", e2);
            return null;
        }
    }

    public long getFlags() {
        try {
            return this.mSessionBinder.getFlags();
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling getFlags.", e2);
            return 0L;
        }
    }

    public MediaMetadata getMetadata() {
        try {
            return this.mSessionBinder.getMetadata();
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling getMetadata.", e2);
            return null;
        }
    }

    public String getPackageName() {
        if (this.mPackageName == null) {
            try {
                this.mPackageName = this.mSessionBinder.getPackageName();
            } catch (RemoteException e2) {
                Log.d(TAG, "Dead object in getPackageName.", e2);
            }
        }
        return this.mPackageName;
    }

    public PlaybackInfo getPlaybackInfo() {
        try {
            ParcelableVolumeInfo volumeAttributes = this.mSessionBinder.getVolumeAttributes();
            return new PlaybackInfo(volumeAttributes.volumeType, volumeAttributes.audioAttrs, volumeAttributes.controlType, volumeAttributes.maxVolume, volumeAttributes.currentVolume);
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling getAudioInfo.", e2);
            return null;
        }
    }

    public PlaybackState getPlaybackState() {
        try {
            return this.mSessionBinder.getPlaybackState();
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling getPlaybackState.", e2);
            return null;
        }
    }

    public List<MediaSession.QueueItem> getQueue() {
        try {
            ParceledListSlice queue = this.mSessionBinder.getQueue();
            if (queue != null) {
                return queue.getList();
            }
            return null;
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling getQueue.", e2);
            return null;
        }
    }

    public CharSequence getQueueTitle() {
        try {
            return this.mSessionBinder.getQueueTitle();
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling getQueueTitle", e2);
            return null;
        }
    }

    public int getRatingType() {
        try {
            return this.mSessionBinder.getRatingType();
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling getRatingType.", e2);
            return 0;
        }
    }

    public PendingIntent getSessionActivity() {
        try {
            return this.mSessionBinder.getLaunchPendingIntent();
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling getPendingIntent.", e2);
            return null;
        }
    }

    public ISessionController getSessionBinder() {
        return this.mSessionBinder;
    }

    public MediaSession.Token getSessionToken() {
        return this.mToken;
    }

    public String getTag() {
        if (this.mTag == null) {
            try {
                this.mTag = this.mSessionBinder.getTag();
            } catch (RemoteException e2) {
                Log.d(TAG, "Dead object in getTag.", e2);
            }
        }
        return this.mTag;
    }

    public TransportControls getTransportControls() {
        return this.mTransportControls;
    }

    public void registerCallback(Callback callback) {
        registerCallback(callback, null);
    }

    public void sendCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("command cannot be null or empty");
        }
        try {
            this.mSessionBinder.sendCommand(str, bundle, resultReceiver);
        } catch (RemoteException e2) {
            Log.d(TAG, "Dead object in sendCommand.", e2);
        }
    }

    public void setVolumeTo(int i2, int i3) {
        try {
            this.mSessionBinder.setVolumeTo(i2, i3, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error calling setVolumeTo.", e2);
        }
    }

    public void unregisterCallback(Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        synchronized (this.mLock) {
            removeCallbackLocked(callback);
        }
    }

    public void registerCallback(Callback callback, Handler handler) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        if (handler == null) {
            handler = new Handler();
        }
        synchronized (this.mLock) {
            addCallbackLocked(callback, handler);
        }
    }

    public MediaController(Context context, MediaSession.Token token) {
        this(context, token.getBinder());
    }
}
