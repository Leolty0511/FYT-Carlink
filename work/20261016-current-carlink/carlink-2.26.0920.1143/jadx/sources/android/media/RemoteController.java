package android.media;

import android.accessibilityservice.c;
import android.app.ActivityManager;
import android.app.m;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.session.MediaController;
import android.media.session.MediaSessionLegacyHelper;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.UserHandle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class RemoteController {
    private static final boolean DEBUG = false;
    private static final int MAX_BITMAP_DIMENSION = 512;
    private static final int MSG_CLIENT_CHANGE = 0;
    private static final int MSG_NEW_MEDIA_METADATA = 2;
    private static final int MSG_NEW_PLAYBACK_STATE = 1;
    public static final int POSITION_SYNCHRONIZATION_CHECK = 1;
    public static final int POSITION_SYNCHRONIZATION_NONE = 0;
    private static final int SENDMSG_NOOP = 1;
    private static final int SENDMSG_QUEUE = 2;
    private static final int SENDMSG_REPLACE = 0;
    private static final String TAG = "RemoteController";
    private static final Object mInfoLock = new Object();
    private int mArtworkHeight;
    private int mArtworkWidth;
    private final Context mContext;
    private MediaController mCurrentSession;
    private boolean mEnabled;
    private final EventHandler mEventHandler;
    private boolean mIsRegistered;
    private PlaybackInfo mLastPlaybackInfo;
    private final int mMaxBitmapDimension;
    private MetadataEditor mMetadataEditor;
    private OnClientUpdateListener mOnClientUpdateListener;
    private MediaController.Callback mSessionCb;
    private MediaSessionManager.OnActiveSessionsChangedListener mSessionListener;
    private MediaSessionManager mSessionManager;

    public class EventHandler extends Handler {
        public EventHandler(RemoteController remoteController, Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                RemoteController.this.onClientChange(message.arg2 == 1);
                return;
            }
            if (i2 == 1) {
                RemoteController.this.onNewPlaybackState((PlaybackState) message.obj);
            } else if (i2 != 2) {
                m.C(new StringBuilder("unknown event "), message.what, RemoteController.TAG);
            } else {
                RemoteController.this.onNewMediaMetadata((MediaMetadata) message.obj);
            }
        }
    }

    public class MediaControllerCallback extends MediaController.Callback {
        private MediaControllerCallback() {
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            RemoteController.this.onNewMediaMetadata(mediaMetadata);
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            RemoteController.this.onNewPlaybackState(playbackState);
        }
    }

    public class MetadataEditor extends MediaMetadataEditor {
        public MetadataEditor() {
        }

        private void cleanupBitmapFromBundle(int i2) {
            if (MediaMetadataEditor.METADATA_KEYS_TYPE.get(i2, -1) == 2) {
                this.mEditorMetadata.remove(String.valueOf(i2));
            }
        }

        @Override // android.media.MediaMetadataEditor
        public synchronized void apply() {
            Rating rating;
            if (this.mMetadataChanged) {
                synchronized (RemoteController.mInfoLock) {
                    if (RemoteController.this.mCurrentSession != null && this.mEditorMetadata.containsKey(String.valueOf(MediaMetadataEditor.RATING_KEY_BY_USER)) && (rating = (Rating) getObject(MediaMetadataEditor.RATING_KEY_BY_USER, null)) != null) {
                        RemoteController.this.mCurrentSession.getTransportControls().setRating(rating);
                    }
                }
                this.mApplied = false;
            }
        }

        public MetadataEditor(Bundle bundle, long j2) {
            this.mEditorMetadata = bundle;
            this.mEditableKeys = j2;
            Bitmap bitmap = (Bitmap) bundle.getParcelable(String.valueOf(100));
            this.mEditorArtwork = bitmap;
            if (bitmap != null) {
                cleanupBitmapFromBundle(100);
            }
            this.mMetadataChanged = true;
            this.mArtworkChanged = true;
            this.mApplied = false;
        }
    }

    public interface OnClientUpdateListener {
        void onClientChange(boolean z2);

        void onClientMetadataUpdate(MetadataEditor metadataEditor);

        void onClientPlaybackStateUpdate(int i2);

        void onClientPlaybackStateUpdate(int i2, long j2, long j3, float f2);

        void onClientTransportControlUpdate(int i2);
    }

    public static class PlaybackInfo {
        long mCurrentPosMs;
        float mSpeed;
        int mState;
        long mStateChangeTimeMs;

        public PlaybackInfo(int i2, long j2, long j3, float f2) {
            this.mState = i2;
            this.mStateChangeTimeMs = j2;
            this.mCurrentPosMs = j3;
            this.mSpeed = f2;
        }
    }

    public class TopTransportSessionListener implements MediaSessionManager.OnActiveSessionsChangedListener {
        private TopTransportSessionListener() {
        }

        @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
        public void onActiveSessionsChanged(List<MediaController> list) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                MediaController mediaController = list.get(i2);
                if ((mediaController.getFlags() & 2) != 0) {
                    RemoteController.this.updateController(mediaController);
                    return;
                }
            }
            RemoteController.this.updateController(null);
        }
    }

    public RemoteController(Context context, OnClientUpdateListener onClientUpdateListener) {
        this(context, onClientUpdateListener, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClientChange(boolean z2) {
        OnClientUpdateListener onClientUpdateListener;
        synchronized (mInfoLock) {
            onClientUpdateListener = this.mOnClientUpdateListener;
            this.mMetadataEditor = null;
        }
        if (onClientUpdateListener != null) {
            onClientUpdateListener.onClientChange(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewMediaMetadata(MediaMetadata mediaMetadata) {
        OnClientUpdateListener onClientUpdateListener;
        MetadataEditor metadataEditor;
        if (mediaMetadata == null) {
            return;
        }
        synchronized (mInfoLock) {
            onClientUpdateListener = this.mOnClientUpdateListener;
            MediaController mediaController = this.mCurrentSession;
            metadataEditor = new MetadataEditor(MediaSessionLegacyHelper.getOldMetadata(mediaMetadata, this.mArtworkWidth, this.mArtworkHeight), mediaController != null && mediaController.getRatingType() != 0 ? 268435457L : 0L);
            this.mMetadataEditor = metadataEditor;
        }
        if (onClientUpdateListener != null) {
            onClientUpdateListener.onClientMetadataUpdate(metadataEditor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewPlaybackState(PlaybackState playbackState) {
        OnClientUpdateListener onClientUpdateListener;
        synchronized (mInfoLock) {
            onClientUpdateListener = this.mOnClientUpdateListener;
        }
        if (onClientUpdateListener != null) {
            int rccStateFromState = playbackState == null ? 0 : PlaybackState.getRccStateFromState(playbackState.getState());
            if (playbackState == null || playbackState.getPosition() == -1) {
                onClientUpdateListener.onClientPlaybackStateUpdate(rccStateFromState);
            } else {
                onClientUpdateListener.onClientPlaybackStateUpdate(rccStateFromState, playbackState.getLastPositionUpdateTime(), playbackState.getPosition(), playbackState.getPlaybackSpeed());
            }
            if (playbackState != null) {
                onClientUpdateListener.onClientTransportControlUpdate(PlaybackState.getRccControlFlagsFromActions(playbackState.getActions()));
            }
        }
    }

    private static void sendMsg(Handler handler, int i2, int i3, int i4, int i5, Object obj, int i6) {
        if (handler == null) {
            m.p("null event handler, will not deliver message ", i2, TAG);
            return;
        }
        if (i3 == 0) {
            handler.removeMessages(i2);
        } else if (i3 == 1 && handler.hasMessages(i2)) {
            return;
        }
        handler.sendMessageDelayed(handler.obtainMessage(i2, i4, i5, obj), i6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateController(MediaController mediaController) {
        synchronized (mInfoLock) {
            try {
                if (mediaController == null) {
                    MediaController mediaController2 = this.mCurrentSession;
                    if (mediaController2 != null) {
                        mediaController2.unregisterCallback(this.mSessionCb);
                        this.mCurrentSession = null;
                        sendMsg(this.mEventHandler, 0, 0, 0, 1, null, 0);
                    }
                } else if (this.mCurrentSession == null || !mediaController.getSessionToken().equals(this.mCurrentSession.getSessionToken())) {
                    MediaController mediaController3 = this.mCurrentSession;
                    if (mediaController3 != null) {
                        mediaController3.unregisterCallback(this.mSessionCb);
                    }
                    sendMsg(this.mEventHandler, 0, 0, 0, 0, null, 0);
                    this.mCurrentSession = mediaController;
                    mediaController.registerCallback(this.mSessionCb, this.mEventHandler);
                    sendMsg(this.mEventHandler, 1, 0, 0, 0, mediaController.getPlaybackState(), 0);
                    sendMsg(this.mEventHandler, 2, 0, 0, 0, mediaController.getMetadata(), 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean clearArtworkConfiguration() {
        return setArtworkConfiguration(false, -1, -1);
    }

    public MetadataEditor editMetadata() {
        MetadataEditor metadataEditor = new MetadataEditor();
        metadataEditor.mEditorMetadata = new Bundle();
        metadataEditor.mEditorArtwork = null;
        metadataEditor.mMetadataChanged = true;
        metadataEditor.mArtworkChanged = true;
        metadataEditor.mEditableKeys = 0L;
        return metadataEditor;
    }

    public long getEstimatedMediaPosition() {
        PlaybackState playbackState;
        synchronized (mInfoLock) {
            MediaController mediaController = this.mCurrentSession;
            if (mediaController == null || (playbackState = mediaController.getPlaybackState()) == null) {
                return -1L;
            }
            return playbackState.getPosition();
        }
    }

    public OnClientUpdateListener getUpdateListener() {
        return this.mOnClientUpdateListener;
    }

    public boolean seekTo(long j2) {
        if (!this.mEnabled) {
            Log.e(TAG, "Cannot use seekTo() from a disabled RemoteController");
            return false;
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("illegal negative time value");
        }
        synchronized (mInfoLock) {
            MediaController mediaController = this.mCurrentSession;
            if (mediaController != null) {
                mediaController.getTransportControls().seekTo(j2);
            }
        }
        return true;
    }

    public boolean sendMediaKeyEvent(KeyEvent keyEvent) {
        if (!KeyEvent.isMediaKey(keyEvent.getKeyCode())) {
            throw new IllegalArgumentException("not a media key event");
        }
        synchronized (mInfoLock) {
            MediaController mediaController = this.mCurrentSession;
            if (mediaController == null) {
                return false;
            }
            return mediaController.dispatchMediaButtonEvent(keyEvent);
        }
    }

    public boolean setArtworkConfiguration(boolean z2, int i2, int i3) {
        synchronized (mInfoLock) {
            try {
                if (!z2) {
                    this.mArtworkWidth = -1;
                    this.mArtworkHeight = -1;
                } else {
                    if (i2 <= 0 || i3 <= 0) {
                        throw new IllegalArgumentException("Invalid dimensions");
                    }
                    int i4 = this.mMaxBitmapDimension;
                    if (i2 > i4) {
                        i2 = i4;
                    }
                    if (i3 > i4) {
                        i3 = i4;
                    }
                    this.mArtworkWidth = i2;
                    this.mArtworkHeight = i3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    public boolean setSynchronizationMode(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException(c.d("Unknown synchronization mode ", i2));
        }
        if (this.mIsRegistered) {
            return true;
        }
        Log.e(TAG, "Cannot set synchronization mode on an unregistered RemoteController");
        return false;
    }

    public void startListeningToSessions() {
        ComponentName componentName = new ComponentName(this.mContext, this.mOnClientUpdateListener.getClass());
        this.mSessionManager.addOnActiveSessionsChangedListener(this.mSessionListener, componentName, UserHandle.myUserId(), Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : null);
        this.mSessionListener.onActiveSessionsChanged(this.mSessionManager.getActiveSessions(componentName));
    }

    public void stopListeningToSessions() {
        this.mSessionManager.removeOnActiveSessionsChangedListener(this.mSessionListener);
    }

    public RemoteController(Context context, OnClientUpdateListener onClientUpdateListener, Looper looper) {
        this.mSessionCb = new MediaControllerCallback();
        this.mIsRegistered = false;
        this.mArtworkWidth = -1;
        this.mArtworkHeight = -1;
        this.mEnabled = true;
        if (context == null) {
            throw new IllegalArgumentException("Invalid null Context");
        }
        if (onClientUpdateListener == null) {
            throw new IllegalArgumentException("Invalid null OnClientUpdateListener");
        }
        if (looper != null) {
            this.mEventHandler = new EventHandler(this, looper);
        } else {
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                throw new IllegalArgumentException("Calling thread not associated with a looper");
            }
            this.mEventHandler = new EventHandler(this, looperMyLooper);
        }
        this.mOnClientUpdateListener = onClientUpdateListener;
        this.mContext = context;
        this.mSessionManager = (MediaSessionManager) context.getSystemService(Context.MEDIA_SESSION_SERVICE);
        this.mSessionListener = new TopTransportSessionListener();
        if (ActivityManager.isLowRamDeviceStatic()) {
            this.mMaxBitmapDimension = 512;
        } else {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            this.mMaxBitmapDimension = Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
    }

    public boolean setArtworkConfiguration(int i2, int i3) {
        return setArtworkConfiguration(true, i2, i3);
    }
}
