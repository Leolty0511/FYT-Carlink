package android.media;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteController {
    private static final boolean DEBUG = false;
    private static final int MAX_BITMAP_DIMENSION = 512;
    private static final int MSG_CLIENT_CHANGE = 4;
    private static final int MSG_DISPLAY_ENABLE = 5;
    private static final int MSG_NEW_METADATA = 3;
    private static final int MSG_NEW_PENDING_INTENT = 0;
    private static final int MSG_NEW_PLAYBACK_INFO = 1;
    private static final int MSG_NEW_TRANSPORT_INFO = 2;
    public static final int POSITION_SYNCHRONIZATION_CHECK = 1;
    public static final int POSITION_SYNCHRONIZATION_NONE = 0;
    private static final int SENDMSG_NOOP = 1;
    private static final int SENDMSG_QUEUE = 2;
    private static final int SENDMSG_REPLACE = 0;
    private static final String TAG = "RemoteController";
    private static final int TRANSPORT_UNKNOWN = 0;
    private static final Object mGenLock = new Object();
    private static final Object mInfoLock = new Object();
    private int mArtworkHeight;
    private int mArtworkWidth;
    private final AudioManager mAudioManager;
    private int mClientGenerationIdCurrent;
    private PendingIntent mClientPendingIntentCurrent;
    private final Context mContext;
    private boolean mEnabled;
    private final EventHandler mEventHandler;
    private boolean mIsRegistered;
    private PlaybackInfo mLastPlaybackInfo;
    private final int mMaxBitmapDimension;
    private MetadataEditor mMetadataEditor;
    private OnClientUpdateListener mOnClientUpdateListener;
    private final RcDisplay mRcd;

    public class EventHandler extends Handler {
        public EventHandler(RemoteController remoteController, Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                RemoteController.this.onNewPendingIntent(message.arg1, (PendingIntent) message.obj);
                return;
            }
            if (i2 == 1) {
                RemoteController.this.onNewPlaybackInfo(message.arg1, (PlaybackInfo) message.obj);
                return;
            }
            if (i2 == 2) {
                RemoteController.this.onNewTransportInfo(message.arg1, message.arg2);
                return;
            }
            if (i2 == 3) {
                RemoteController.this.onNewMetadata(message.arg1, (Bundle) message.obj);
                return;
            }
            if (i2 == 4) {
                RemoteController.this.onClientChange(message.arg1, message.arg2 == 1);
                return;
            }
            if (i2 == 5) {
                RemoteController.this.onDisplayEnable(message.arg1 == 1);
                return;
            }
            Log.e(RemoteController.TAG, "unknown event " + message.what);
        }
    }

    public class MetadataEditor extends MediaMetadataEditor {
        public MetadataEditor() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cleanupBitmapFromBundle(int i2) {
            if (MediaMetadataEditor.METADATA_KEYS_TYPE.get(i2, -1) == 2) {
                this.mEditorMetadata.remove(String.valueOf(i2));
            }
        }

        @Override // android.media.MediaMetadataEditor
        public synchronized void apply() {
            int i2;
            if (this.mMetadataChanged) {
                synchronized (RemoteController.mGenLock) {
                    i2 = RemoteController.this.mClientGenerationIdCurrent;
                }
                synchronized (RemoteController.mInfoLock) {
                    if (this.mEditorMetadata.containsKey(String.valueOf(MediaMetadataEditor.RATING_KEY_BY_USER))) {
                        RemoteController.this.mAudioManager.updateRemoteControlClientMetadata(i2, MediaMetadataEditor.RATING_KEY_BY_USER, (Rating) getObject(MediaMetadataEditor.RATING_KEY_BY_USER, null));
                    } else {
                        Log.e(RemoteController.TAG, "no metadata to apply");
                    }
                    this.mApplied = false;
                }
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
        public long mCurrentPosMs;
        public float mSpeed;
        public int mState;
        public long mStateChangeTimeMs;

        public PlaybackInfo(int i2, long j2, long j3, float f2) {
            this.mState = i2;
            this.mStateChangeTimeMs = j2;
            this.mCurrentPosMs = j3;
            this.mSpeed = f2;
        }
    }

    public static class RcDisplay extends IRemoteControlDisplay.Stub {
        private final WeakReference<RemoteController> mController;

        public RcDisplay(RemoteController remoteController) {
            this.mController = new WeakReference<>(remoteController);
        }

        @Override // android.media.IRemoteControlDisplay
        public void setAllMetadata(int i2, Bundle bundle, Bitmap bitmap) {
            RemoteController remoteController = this.mController.get();
            if (remoteController == null) {
                return;
            }
            if (bundle == null && bitmap == null) {
                return;
            }
            synchronized (RemoteController.mGenLock) {
                if (remoteController.mClientGenerationIdCurrent != i2) {
                    return;
                }
                if (bundle == null) {
                    bundle = new Bundle(1);
                }
                Bundle bundle2 = bundle;
                if (bitmap != null) {
                    bundle2.putParcelable(String.valueOf(100), bitmap);
                }
                RemoteController.sendMsg(remoteController.mEventHandler, 3, 2, i2, 0, bundle2, 0);
            }
        }

        @Override // android.media.IRemoteControlDisplay
        public void setArtwork(int i2, Bitmap bitmap) {
            RemoteController remoteController = this.mController.get();
            if (remoteController == null) {
                return;
            }
            synchronized (RemoteController.mGenLock) {
                if (remoteController.mClientGenerationIdCurrent != i2) {
                    return;
                }
                Bundle bundle = new Bundle(1);
                bundle.putParcelable(String.valueOf(100), bitmap);
                RemoteController.sendMsg(remoteController.mEventHandler, 3, 2, i2, 0, bundle, 0);
            }
        }

        @Override // android.media.IRemoteControlDisplay
        public void setCurrentClientId(int i2, PendingIntent pendingIntent, boolean z2) {
            boolean z3;
            RemoteController remoteController = this.mController.get();
            if (remoteController == null) {
                return;
            }
            boolean z4 = false;
            synchronized (RemoteController.mGenLock) {
                if (remoteController.mClientGenerationIdCurrent != i2) {
                    remoteController.mClientGenerationIdCurrent = i2;
                    z4 = true;
                }
                z3 = z4;
            }
            if (pendingIntent != null) {
                RemoteController.sendMsg(remoteController.mEventHandler, 0, 0, i2, 0, pendingIntent, 0);
            }
            if (z3 || z2) {
                RemoteController.sendMsg(remoteController.mEventHandler, 4, 0, i2, z2 ? 1 : 0, null, 0);
            }
        }

        @Override // android.media.IRemoteControlDisplay
        public void setEnabled(boolean z2) {
            RemoteController remoteController = this.mController.get();
            if (remoteController == null) {
                return;
            }
            RemoteController.sendMsg(remoteController.mEventHandler, 5, 0, z2 ? 1 : 0, 0, null, 0);
        }

        @Override // android.media.IRemoteControlDisplay
        public void setMetadata(int i2, Bundle bundle) {
            RemoteController remoteController = this.mController.get();
            if (remoteController == null || bundle == null) {
                return;
            }
            synchronized (RemoteController.mGenLock) {
                if (remoteController.mClientGenerationIdCurrent != i2) {
                    return;
                }
                RemoteController.sendMsg(remoteController.mEventHandler, 3, 2, i2, 0, bundle, 0);
            }
        }

        @Override // android.media.IRemoteControlDisplay
        public void setPlaybackState(int i2, int i3, long j2, long j3, float f2) {
            RemoteController remoteController = this.mController.get();
            if (remoteController == null) {
                return;
            }
            synchronized (RemoteController.mGenLock) {
                if (remoteController.mClientGenerationIdCurrent != i2) {
                    return;
                }
                RemoteController.sendMsg(remoteController.mEventHandler, 1, 0, i2, 0, new PlaybackInfo(i3, j2, j3, f2), 0);
            }
        }

        @Override // android.media.IRemoteControlDisplay
        public void setTransportControlInfo(int i2, int i3, int i4) {
            RemoteController remoteController = this.mController.get();
            if (remoteController == null) {
                return;
            }
            synchronized (RemoteController.mGenLock) {
                if (remoteController.mClientGenerationIdCurrent != i2) {
                    return;
                }
                RemoteController.sendMsg(remoteController.mEventHandler, 2, 0, i2, i3, null, 0);
            }
        }
    }

    public RemoteController(Context context, OnClientUpdateListener onClientUpdateListener) {
        this(context, onClientUpdateListener, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClientChange(int i2, boolean z2) {
        OnClientUpdateListener onClientUpdateListener;
        synchronized (mGenLock) {
            if (this.mClientGenerationIdCurrent != i2) {
                return;
            }
            synchronized (mInfoLock) {
                onClientUpdateListener = this.mOnClientUpdateListener;
                this.mMetadataEditor = null;
            }
            if (onClientUpdateListener != null) {
                onClientUpdateListener.onClientChange(z2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDisplayEnable(boolean z2) {
        int i2;
        synchronized (mInfoLock) {
            this.mEnabled = z2;
        }
        if (z2) {
            return;
        }
        synchronized (mGenLock) {
            i2 = this.mClientGenerationIdCurrent;
        }
        sendMsg(this.mEventHandler, 1, 0, i2, 0, new PlaybackInfo(1, SystemClock.elapsedRealtime(), 0L, 0.0f), 0);
        sendMsg(this.mEventHandler, 2, 0, i2, 0, null, 0);
        Bundle bundle = new Bundle(3);
        bundle.putString(String.valueOf(7), ProxyProperties.LOCAL_EXCL_LIST);
        bundle.putString(String.valueOf(2), ProxyProperties.LOCAL_EXCL_LIST);
        bundle.putLong(String.valueOf(9), 0L);
        sendMsg(this.mEventHandler, 3, 2, i2, 0, bundle, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewMetadata(int i2, Bundle bundle) {
        OnClientUpdateListener onClientUpdateListener;
        MetadataEditor metadataEditor;
        Bundle bundle2;
        synchronized (mGenLock) {
            if (this.mClientGenerationIdCurrent != i2) {
                return;
            }
            long j2 = bundle.getLong(String.valueOf(MediaMetadataEditor.KEY_EDITABLE_MASK), 0L);
            if (j2 != 0) {
                bundle.remove(String.valueOf(MediaMetadataEditor.KEY_EDITABLE_MASK));
            }
            synchronized (mInfoLock) {
                onClientUpdateListener = this.mOnClientUpdateListener;
                MetadataEditor metadataEditor2 = this.mMetadataEditor;
                if (metadataEditor2 == null || (bundle2 = metadataEditor2.mEditorMetadata) == null) {
                    this.mMetadataEditor = new MetadataEditor(bundle, j2);
                } else {
                    if (bundle2 != bundle) {
                        bundle2.putAll(bundle);
                    }
                    this.mMetadataEditor.putBitmap(100, (Bitmap) bundle.getParcelable(String.valueOf(100)));
                    this.mMetadataEditor.cleanupBitmapFromBundle(100);
                }
                metadataEditor = this.mMetadataEditor;
            }
            if (onClientUpdateListener != null) {
                onClientUpdateListener.onClientMetadataUpdate(metadataEditor);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewPendingIntent(int i2, PendingIntent pendingIntent) {
        synchronized (mGenLock) {
            if (this.mClientGenerationIdCurrent != i2) {
                return;
            }
            synchronized (mInfoLock) {
                this.mClientPendingIntentCurrent = pendingIntent;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewPlaybackInfo(int i2, PlaybackInfo playbackInfo) {
        OnClientUpdateListener onClientUpdateListener;
        synchronized (mGenLock) {
            if (this.mClientGenerationIdCurrent != i2) {
                return;
            }
            synchronized (mInfoLock) {
                onClientUpdateListener = this.mOnClientUpdateListener;
                this.mLastPlaybackInfo = playbackInfo;
            }
            if (onClientUpdateListener != null) {
                long j2 = playbackInfo.mCurrentPosMs;
                if (j2 == RemoteControlClient.PLAYBACK_POSITION_ALWAYS_UNKNOWN) {
                    onClientUpdateListener.onClientPlaybackStateUpdate(playbackInfo.mState);
                } else {
                    onClientUpdateListener.onClientPlaybackStateUpdate(playbackInfo.mState, playbackInfo.mStateChangeTimeMs, j2, playbackInfo.mSpeed);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewTransportInfo(int i2, int i3) {
        OnClientUpdateListener onClientUpdateListener;
        synchronized (mGenLock) {
            if (this.mClientGenerationIdCurrent != i2) {
                return;
            }
            synchronized (mInfoLock) {
                onClientUpdateListener = this.mOnClientUpdateListener;
            }
            if (onClientUpdateListener != null) {
                onClientUpdateListener.onClientTransportControlUpdate(i3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendMsg(Handler handler, int i2, int i3, int i4, int i5, Object obj, int i6) {
        if (handler == null) {
            Log.e(TAG, "null event handler, will not deliver message " + i2);
            return;
        }
        if (i3 == 0) {
            handler.removeMessages(i2);
        } else if (i3 == 1 && handler.hasMessages(i2)) {
            return;
        }
        handler.sendMessageDelayed(handler.obtainMessage(i2, i4, i5, obj), i6);
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

    public int[] getArtworkSize() {
        int[] iArr;
        synchronized (mInfoLock) {
            iArr = new int[]{this.mArtworkWidth, this.mArtworkHeight};
        }
        return iArr;
    }

    public long getEstimatedMediaPosition() {
        PlaybackInfo playbackInfo = this.mLastPlaybackInfo;
        if (playbackInfo == null) {
            return -1L;
        }
        if (!RemoteControlClient.playbackPositionShouldMove(playbackInfo.mState)) {
            return this.mLastPlaybackInfo.mCurrentPosMs;
        }
        long j2 = this.mLastPlaybackInfo.mCurrentPosMs;
        if (j2 < 0) {
            return -1L;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        PlaybackInfo playbackInfo2 = this.mLastPlaybackInfo;
        return j2 + ((long) ((jElapsedRealtime - playbackInfo2.mStateChangeTimeMs) * playbackInfo2.mSpeed));
    }

    public RcDisplay getRcDisplay() {
        return this.mRcd;
    }

    public String getRemoteControlClientPackageName() {
        PendingIntent pendingIntent = this.mClientPendingIntentCurrent;
        if (pendingIntent != null) {
            return pendingIntent.getCreatorPackage();
        }
        return null;
    }

    public OnClientUpdateListener getUpdateListener() {
        return this.mOnClientUpdateListener;
    }

    public boolean seekTo(long j2) {
        int i2;
        if (!this.mEnabled) {
            Log.e(TAG, "Cannot use seekTo() from a disabled RemoteController");
            return false;
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("illegal negative time value");
        }
        synchronized (mGenLock) {
            i2 = this.mClientGenerationIdCurrent;
        }
        this.mAudioManager.setRemoteControlClientPlaybackPosition(i2, j2);
        return true;
    }

    public boolean sendMediaKeyEvent(KeyEvent keyEvent) {
        if (!MediaFocusControl.isMediaKeyCode(keyEvent.getKeyCode())) {
            throw new IllegalArgumentException("not a media key event");
        }
        synchronized (mInfoLock) {
            if (!this.mIsRegistered) {
                Log.e(TAG, "Cannot use sendMediaKeyEvent() from an unregistered RemoteController");
                return false;
            }
            if (!this.mEnabled) {
                Log.e(TAG, "Cannot use sendMediaKeyEvent() from a disabled RemoteController");
                return false;
            }
            PendingIntent pendingIntent = this.mClientPendingIntentCurrent;
            if (pendingIntent == null) {
                Log.i(TAG, "No-op when sending key click, no receiver right now");
                return false;
            }
            Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON);
            intent.putExtra(Intent.EXTRA_KEY_EVENT, keyEvent);
            try {
                pendingIntent.send(this.mContext, 0, intent);
                return true;
            } catch (PendingIntent.CanceledException e2) {
                Log.e(TAG, "Error sending intent for media button down: ", e2);
                return false;
            }
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
                if (this.mIsRegistered) {
                    this.mAudioManager.remoteControlDisplayUsesBitmapSize(this.mRcd, this.mArtworkWidth, this.mArtworkHeight);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    public void setIsRegistered(boolean z2) {
        synchronized (mInfoLock) {
            this.mIsRegistered = z2;
        }
    }

    public boolean setSynchronizationMode(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("Unknown synchronization mode " + i2);
        }
        if (this.mIsRegistered) {
            this.mAudioManager.remoteControlDisplayWantsPlaybackPositionSync(this.mRcd, 1 == i2);
            return true;
        }
        Log.e(TAG, "Cannot set synchronization mode on an unregistered RemoteController");
        return false;
    }

    public RemoteController(Context context, OnClientUpdateListener onClientUpdateListener, Looper looper) {
        this.mClientGenerationIdCurrent = 0;
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
        this.mRcd = new RcDisplay(this);
        this.mAudioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
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
