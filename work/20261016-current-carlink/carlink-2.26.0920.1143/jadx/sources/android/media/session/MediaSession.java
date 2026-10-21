package android.media.session;

import android.app.PendingIntent;
import android.app.m;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ParceledListSlice;
import android.media.AudioAttributes;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.VolumeProvider;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import com.android.internal.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class MediaSession {
    public static final int FLAG_EXCLUSIVE_GLOBAL_PRIORITY = 65536;

    @Deprecated
    public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;

    @Deprecated
    public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;
    private static final String TAG = "MediaSession";
    private boolean mActive;
    private final ISession mBinder;
    private CallbackMessageHandler mCallback;
    private final CallbackStub mCbStub;
    private final MediaController mController;
    private final Object mLock;
    private final int mMaxBitmapSize;
    private PlaybackState mPlaybackState;
    private final Token mSessionToken;
    private VolumeProvider mVolumeProvider;

    public static abstract class Callback {
        private CallbackMessageHandler mHandler;
        private boolean mMediaPlayPauseKeyPending;
        private MediaSession mSession;

        /* JADX INFO: Access modifiers changed from: private */
        public void handleMediaPlayPauseKeySingleTapIfPending() {
            if (this.mMediaPlayPauseKeyPending) {
                this.mMediaPlayPauseKeyPending = false;
                this.mHandler.removeMessages(23);
                PlaybackState playbackState = this.mSession.mPlaybackState;
                long actions = playbackState == null ? 0L : playbackState.getActions();
                boolean z2 = playbackState != null && playbackState.getState() == 3;
                boolean z3 = (516 & actions) != 0;
                boolean z4 = (actions & 514) != 0;
                if (z2 && z4) {
                    onPause();
                } else {
                    if (z2 || !z3) {
                        return;
                    }
                    onPlay();
                }
            }
        }

        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public void onCustomAction(String str, Bundle bundle) {
        }

        public void onFastForward() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public boolean onMediaButtonEvent(Intent intent) {
            KeyEvent keyEvent;
            if (this.mSession != null && this.mHandler != null && Intent.ACTION_MEDIA_BUTTON.equals(intent.getAction()) && (keyEvent = (KeyEvent) intent.getParcelableExtra(Intent.EXTRA_KEY_EVENT)) != null && keyEvent.getAction() == 0) {
                PlaybackState playbackState = this.mSession.mPlaybackState;
                long actions = playbackState == null ? 0L : playbackState.getActions();
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 79 || keyCode == 85) {
                    if (keyEvent.getRepeatCount() > 0) {
                        handleMediaPlayPauseKeySingleTapIfPending();
                    } else if (this.mMediaPlayPauseKeyPending) {
                        this.mHandler.removeMessages(23);
                        this.mMediaPlayPauseKeyPending = false;
                        if ((actions & 32) != 0) {
                            onSkipToNext();
                        }
                    } else {
                        this.mMediaPlayPauseKeyPending = true;
                        this.mHandler.sendEmptyMessageDelayed(23, ViewConfiguration.getDoubleTapTimeout());
                    }
                    return true;
                }
                handleMediaPlayPauseKeySingleTapIfPending();
                int keyCode2 = keyEvent.getKeyCode();
                if (keyCode2 != 126) {
                    if (keyCode2 != 127) {
                        switch (keyCode2) {
                            case 86:
                                if ((actions & 1) != 0) {
                                    onStop();
                                    return true;
                                }
                                break;
                            case 87:
                                if ((actions & 32) != 0) {
                                    onSkipToNext();
                                    return true;
                                }
                                break;
                            case 88:
                                if ((actions & 16) != 0) {
                                    onSkipToPrevious();
                                    return true;
                                }
                                break;
                            case 89:
                                if ((actions & 8) != 0) {
                                    onRewind();
                                    return true;
                                }
                                break;
                            case 90:
                                if ((actions & 64) != 0) {
                                    onFastForward();
                                    return true;
                                }
                                break;
                        }
                    } else if ((actions & 2) != 0) {
                        onPause();
                        return true;
                    }
                } else if ((actions & 4) != 0) {
                    onPlay();
                    return true;
                }
            }
            return false;
        }

        public void onPause() {
        }

        public void onPlay() {
        }

        public void onPlayFromMediaId(String str, Bundle bundle) {
        }

        public void onPlayFromSearch(String str, Bundle bundle) {
        }

        public void onPlayFromUri(Uri uri, Bundle bundle) {
        }

        public void onPrepare() {
        }

        public void onPrepareFromMediaId(String str, Bundle bundle) {
        }

        public void onPrepareFromSearch(String str, Bundle bundle) {
        }

        public void onPrepareFromUri(Uri uri, Bundle bundle) {
        }

        public void onRewind() {
        }

        public void onSeekTo(long j2) {
        }

        public void onSetRating(Rating rating) {
        }

        public void onSkipToNext() {
        }

        public void onSkipToPrevious() {
        }

        public void onSkipToQueueItem(long j2) {
        }

        public void onStop() {
        }
    }

    public static class CallbackStub extends ISessionCallback.Stub {
        private WeakReference<MediaSession> mMediaSession;

        public CallbackStub(MediaSession mediaSession) {
            this.mMediaSession = new WeakReference<>(mediaSession);
        }

        @Override // android.media.session.ISessionCallback
        public void onAdjustVolume(int i2) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchAdjustVolume(i2);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.postCommand(str, bundle, resultReceiver);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onCustomAction(String str, Bundle bundle) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchCustomAction(str, bundle);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onFastForward() {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchFastForward();
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onMediaButton(Intent intent, int i2, ResultReceiver resultReceiver) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                try {
                    mediaSession.dispatchMediaButton(intent);
                } finally {
                    if (resultReceiver != null) {
                        resultReceiver.send(i2, null);
                    }
                }
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onNext() {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchNext();
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onPause() {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchPause();
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onPlay() {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchPlay();
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onPlayFromMediaId(String str, Bundle bundle) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchPlayFromMediaId(str, bundle);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onPlayFromSearch(String str, Bundle bundle) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchPlayFromSearch(str, bundle);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onPlayFromUri(Uri uri, Bundle bundle) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchPlayFromUri(uri, bundle);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onPrepare() {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchPrepare();
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onPrepareFromMediaId(String str, Bundle bundle) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchPrepareFromMediaId(str, bundle);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onPrepareFromSearch(String str, Bundle bundle) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchPrepareFromSearch(str, bundle);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onPrepareFromUri(Uri uri, Bundle bundle) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchPrepareFromUri(uri, bundle);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onPrevious() {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchPrevious();
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onRate(Rating rating) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchRate(rating);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onRewind() {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchRewind();
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onSeekTo(long j2) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchSeekTo(j2);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onSetVolumeTo(int i2) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchSetVolumeTo(i2);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onSkipToTrack(long j2) {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchSkipToItem(j2);
            }
        }

        @Override // android.media.session.ISessionCallback
        public void onStop() {
            MediaSession mediaSession = this.mMediaSession.get();
            if (mediaSession != null) {
                mediaSession.dispatchStop();
            }
        }
    }

    public static final class Command {
        public final String command;
        public final Bundle extras;
        public final ResultReceiver stub;

        public Command(String str, Bundle bundle, ResultReceiver resultReceiver) {
            this.command = str;
            this.extras = bundle;
            this.stub = resultReceiver;
        }
    }

    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator<QueueItem>() { // from class: android.media.session.MediaSession.QueueItem.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public QueueItem[] newArray(int i2) {
                return new QueueItem[i2];
            }
        };
        public static final int UNKNOWN_ID = -1;
        private final MediaDescription mDescription;
        private final long mId;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof QueueItem)) {
                return false;
            }
            QueueItem queueItem = (QueueItem) obj;
            return this.mId == queueItem.mId && Objects.equals(this.mDescription, queueItem.mDescription);
        }

        public MediaDescription getDescription() {
            return this.mDescription;
        }

        public long getQueueId() {
            return this.mId;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("MediaSession.QueueItem {Description=");
            sb.append(this.mDescription);
            sb.append(", Id=");
            return m.k(sb, this.mId, " }");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            this.mDescription.writeToParcel(parcel, i2);
            parcel.writeLong(this.mId);
        }

        public QueueItem(MediaDescription mediaDescription, long j2) {
            if (mediaDescription == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            }
            if (j2 == -1) {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.mDescription = mediaDescription;
            this.mId = j2;
        }

        private QueueItem(Parcel parcel) {
            this.mDescription = MediaDescription.CREATOR.createFromParcel(parcel);
            this.mId = parcel.readLong();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SessionFlags {
    }

    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator<Token>() { // from class: android.media.session.MediaSession.Token.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Token createFromParcel(Parcel parcel) {
                return new Token(ISessionController.Stub.asInterface(parcel.readStrongBinder()));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Token[] newArray(int i2) {
                return new Token[i2];
            }
        };
        private ISessionController mBinder;

        public Token(ISessionController iSessionController) {
            this.mBinder = iSessionController;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Token.class != obj.getClass()) {
                return false;
            }
            Token token = (Token) obj;
            ISessionController iSessionController = this.mBinder;
            if (iSessionController == null) {
                if (token.mBinder != null) {
                    return false;
                }
            } else if (!iSessionController.asBinder().equals(token.mBinder.asBinder())) {
                return false;
            }
            return true;
        }

        public ISessionController getBinder() {
            return this.mBinder;
        }

        public int hashCode() {
            ISessionController iSessionController = this.mBinder;
            return 31 + (iSessionController == null ? 0 : iSessionController.asBinder().hashCode());
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeStrongBinder(this.mBinder.asBinder());
        }
    }

    public MediaSession(Context context, String str) {
        this(context, str, UserHandle.myUserId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchAdjustVolume(int i2) {
        postToCallback(21, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchCustomAction(String str, Bundle bundle) {
        postToCallback(20, str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchFastForward() {
        postToCallback(16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchMediaButton(Intent intent) {
        postToCallback(2, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchNext() {
        postToCallback(14);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPause() {
        postToCallback(12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPlay() {
        postToCallback(7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPlayFromMediaId(String str, Bundle bundle) {
        postToCallback(8, str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPlayFromSearch(String str, Bundle bundle) {
        postToCallback(9, str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPlayFromUri(Uri uri, Bundle bundle) {
        postToCallback(10, uri, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPrepare() {
        postToCallback(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPrepareFromMediaId(String str, Bundle bundle) {
        postToCallback(4, str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPrepareFromSearch(String str, Bundle bundle) {
        postToCallback(5, str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPrepareFromUri(Uri uri, Bundle bundle) {
        postToCallback(6, uri, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPrevious() {
        postToCallback(15);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchRate(Rating rating) {
        postToCallback(19, rating);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchRewind() {
        postToCallback(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchSeekTo(long j2) {
        postToCallback(18, Long.valueOf(j2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchSetVolumeTo(int i2) {
        postToCallback(22, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchSkipToItem(long j2) {
        postToCallback(11, Long.valueOf(j2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchStop() {
        postToCallback(13);
    }

    public static boolean isActiveState(int i2) {
        switch (i2) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
                return true;
            case 7:
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        postToCallback(1, new Command(str, bundle, resultReceiver));
    }

    private void postToCallback(int i2) {
        postToCallback(i2, null);
    }

    public String getCallingPackage() {
        try {
            return this.mBinder.getCallingPackage();
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Dead object in getCallingPackage.", e2);
            return null;
        }
    }

    public MediaController getController() {
        return this.mController;
    }

    public Token getSessionToken() {
        return this.mSessionToken;
    }

    public boolean isActive() {
        return this.mActive;
    }

    public void notifyRemoteVolumeChanged(VolumeProvider volumeProvider) {
        synchronized (this.mLock) {
            if (volumeProvider != null) {
                if (volumeProvider == this.mVolumeProvider) {
                    try {
                        this.mBinder.setCurrentVolume(volumeProvider.getCurrentVolume());
                        return;
                    } catch (RemoteException e2) {
                        Log.e(TAG, "Error in notifyVolumeChanged", e2);
                        return;
                    }
                }
            }
            Log.w(TAG, "Received update from stale volume provider");
        }
    }

    public void release() {
        try {
            this.mBinder.destroy();
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error releasing session: ", e2);
        }
    }

    public void sendSessionEvent(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("event cannot be null or empty");
        }
        try {
            this.mBinder.sendEvent(str, bundle);
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Error sending event", e2);
        }
    }

    public void setActive(boolean z2) {
        if (this.mActive == z2) {
            return;
        }
        try {
            this.mBinder.setActive(z2);
            this.mActive = z2;
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Failure in setActive.", e2);
        }
    }

    public void setCallback(Callback callback) {
        setCallback(callback, null);
    }

    public void setExtras(Bundle bundle) {
        try {
            this.mBinder.setExtras(bundle);
        } catch (RemoteException e2) {
            Log.wtf("Dead object in setExtras.", e2);
        }
    }

    public void setFlags(int i2) {
        try {
            this.mBinder.setFlags(i2);
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Failure in setFlags.", e2);
        }
    }

    public void setMediaButtonReceiver(PendingIntent pendingIntent) {
        try {
            this.mBinder.setMediaButtonReceiver(pendingIntent);
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Failure in setMediaButtonReceiver.", e2);
        }
    }

    public void setMetadata(MediaMetadata mediaMetadata) {
        if (mediaMetadata != null) {
            mediaMetadata = new MediaMetadata.Builder(mediaMetadata, this.mMaxBitmapSize).build();
        }
        try {
            this.mBinder.setMetadata(mediaMetadata);
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Dead object in setPlaybackState.", e2);
        }
    }

    public void setPlaybackState(PlaybackState playbackState) {
        this.mPlaybackState = playbackState;
        try {
            this.mBinder.setPlaybackState(playbackState);
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Dead object in setPlaybackState.", e2);
        }
    }

    public void setPlaybackToLocal(AudioAttributes audioAttributes) {
        if (audioAttributes == null) {
            throw new IllegalArgumentException("Attributes cannot be null for local playback.");
        }
        try {
            this.mBinder.setPlaybackToLocal(audioAttributes);
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Failure in setPlaybackToLocal.", e2);
        }
    }

    public void setPlaybackToRemote(VolumeProvider volumeProvider) {
        if (volumeProvider == null) {
            throw new IllegalArgumentException("volumeProvider may not be null!");
        }
        synchronized (this.mLock) {
            this.mVolumeProvider = volumeProvider;
        }
        volumeProvider.setCallback(new VolumeProvider.Callback() { // from class: android.media.session.MediaSession.1
            @Override // android.media.VolumeProvider.Callback
            public void onVolumeChanged(VolumeProvider volumeProvider2) {
                MediaSession.this.notifyRemoteVolumeChanged(volumeProvider2);
            }
        });
        try {
            this.mBinder.setPlaybackToRemote(volumeProvider.getVolumeControl(), volumeProvider.getMaxVolume());
            this.mBinder.setCurrentVolume(volumeProvider.getCurrentVolume());
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Failure in setPlaybackToRemote.", e2);
        }
    }

    public void setQueue(List<QueueItem> list) {
        try {
            this.mBinder.setQueue(list == null ? null : new ParceledListSlice(list));
        } catch (RemoteException e2) {
            Log.wtf("Dead object in setQueue.", e2);
        }
    }

    public void setQueueTitle(CharSequence charSequence) {
        try {
            this.mBinder.setQueueTitle(charSequence);
        } catch (RemoteException e2) {
            Log.wtf("Dead object in setQueueTitle.", e2);
        }
    }

    public void setRatingType(int i2) {
        try {
            this.mBinder.setRatingType(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error in setRatingType.", e2);
        }
    }

    public void setSessionActivity(PendingIntent pendingIntent) {
        try {
            this.mBinder.setLaunchPendingIntent(pendingIntent);
        } catch (RemoteException e2) {
            Log.wtf(TAG, "Failure in setLaunchPendingIntent.", e2);
        }
    }

    public MediaSession(Context context, String str, int i2) {
        this.mLock = new Object();
        this.mActive = false;
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null.");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("tag cannot be null or empty");
        }
        this.mMaxBitmapSize = context.getResources().getDimensionPixelSize(R.dimen.config_mediaMetadataBitmapMaxSize);
        CallbackStub callbackStub = new CallbackStub(this);
        this.mCbStub = callbackStub;
        try {
            ISession iSessionCreateSession = ((MediaSessionManager) context.getSystemService(Context.MEDIA_SESSION_SERVICE)).createSession(callbackStub, str, i2);
            this.mBinder = iSessionCreateSession;
            Token token = new Token(iSessionCreateSession.getController());
            this.mSessionToken = token;
            this.mController = new MediaController(context, token);
        } catch (RemoteException e2) {
            throw new RuntimeException("Remote error creating session.", e2);
        }
    }

    private void postToCallback(int i2, Object obj) {
        postToCallback(i2, obj, null);
    }

    public void setCallback(Callback callback, Handler handler) {
        synchronized (this.mLock) {
            try {
                if (callback == null) {
                    CallbackMessageHandler callbackMessageHandler = this.mCallback;
                    if (callbackMessageHandler != null) {
                        callbackMessageHandler.mCallback.mSession = null;
                    }
                    this.mCallback = null;
                    return;
                }
                CallbackMessageHandler callbackMessageHandler2 = this.mCallback;
                if (callbackMessageHandler2 != null) {
                    callbackMessageHandler2.mCallback.mSession = null;
                }
                if (handler == null) {
                    handler = new Handler();
                }
                callback.mSession = this;
                this.mCallback = new CallbackMessageHandler(handler.getLooper(), callback);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public class CallbackMessageHandler extends Handler {
        private static final int MSG_ADJUST_VOLUME = 21;
        private static final int MSG_COMMAND = 1;
        private static final int MSG_CUSTOM_ACTION = 20;
        private static final int MSG_FAST_FORWARD = 16;
        private static final int MSG_MEDIA_BUTTON = 2;
        private static final int MSG_NEXT = 14;
        private static final int MSG_PAUSE = 12;
        private static final int MSG_PLAY = 7;
        private static final int MSG_PLAY_MEDIA_ID = 8;
        private static final int MSG_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT = 23;
        private static final int MSG_PLAY_SEARCH = 9;
        private static final int MSG_PLAY_URI = 10;
        private static final int MSG_PREPARE = 3;
        private static final int MSG_PREPARE_MEDIA_ID = 4;
        private static final int MSG_PREPARE_SEARCH = 5;
        private static final int MSG_PREPARE_URI = 6;
        private static final int MSG_PREVIOUS = 15;
        private static final int MSG_RATE = 19;
        private static final int MSG_REWIND = 17;
        private static final int MSG_SEEK_TO = 18;
        private static final int MSG_SET_VOLUME = 22;
        private static final int MSG_SKIP_TO_ITEM = 11;
        private static final int MSG_STOP = 13;
        private Callback mCallback;

        public CallbackMessageHandler(Looper looper, Callback callback) {
            super(looper, null, true);
            this.mCallback = callback;
            callback.mHandler = this;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            VolumeProvider volumeProvider;
            VolumeProvider volumeProvider2;
            switch (message.what) {
                case 1:
                    Command command = (Command) message.obj;
                    this.mCallback.onCommand(command.command, command.extras, command.stub);
                    return;
                case 2:
                    this.mCallback.onMediaButtonEvent((Intent) message.obj);
                    return;
                case 3:
                    this.mCallback.onPrepare();
                    return;
                case 4:
                    this.mCallback.onPrepareFromMediaId((String) message.obj, message.getData());
                    return;
                case 5:
                    this.mCallback.onPrepareFromSearch((String) message.obj, message.getData());
                    return;
                case 6:
                    this.mCallback.onPrepareFromUri((Uri) message.obj, message.getData());
                    return;
                case 7:
                    this.mCallback.onPlay();
                    return;
                case 8:
                    this.mCallback.onPlayFromMediaId((String) message.obj, message.getData());
                    return;
                case 9:
                    this.mCallback.onPlayFromSearch((String) message.obj, message.getData());
                    return;
                case 10:
                    this.mCallback.onPlayFromUri((Uri) message.obj, message.getData());
                    return;
                case 11:
                    this.mCallback.onSkipToQueueItem(((Long) message.obj).longValue());
                    return;
                case 12:
                    this.mCallback.onPause();
                    return;
                case 13:
                    this.mCallback.onStop();
                    return;
                case 14:
                    this.mCallback.onSkipToNext();
                    return;
                case 15:
                    this.mCallback.onSkipToPrevious();
                    return;
                case 16:
                    this.mCallback.onFastForward();
                    return;
                case 17:
                    this.mCallback.onRewind();
                    return;
                case 18:
                    this.mCallback.onSeekTo(((Long) message.obj).longValue());
                    return;
                case 19:
                    this.mCallback.onSetRating((Rating) message.obj);
                    return;
                case 20:
                    this.mCallback.onCustomAction((String) message.obj, message.getData());
                    return;
                case 21:
                    synchronized (MediaSession.this.mLock) {
                        volumeProvider = MediaSession.this.mVolumeProvider;
                        break;
                    }
                    if (volumeProvider != null) {
                        volumeProvider.onAdjustVolume(((Integer) message.obj).intValue());
                        return;
                    }
                    return;
                case 22:
                    synchronized (MediaSession.this.mLock) {
                        volumeProvider2 = MediaSession.this.mVolumeProvider;
                        break;
                    }
                    if (volumeProvider2 != null) {
                        volumeProvider2.onSetVolumeTo(((Integer) message.obj).intValue());
                        return;
                    }
                    return;
                case 23:
                    this.mCallback.handleMediaPlayPauseKeySingleTapIfPending();
                    return;
                default:
                    return;
            }
        }

        public void post(int i2, Object obj, Bundle bundle) {
            Message messageObtainMessage = obtainMessage(i2, obj);
            messageObtainMessage.setData(bundle);
            messageObtainMessage.sendToTarget();
        }

        public void post(int i2, Object obj) {
            obtainMessage(i2, obj).sendToTarget();
        }

        public void post(int i2) {
            post(i2, null);
        }

        public void post(int i2, Object obj, int i3) {
            obtainMessage(i2, i3, 0, obj).sendToTarget();
        }
    }

    private void postToCallback(int i2, Object obj, Bundle bundle) {
        synchronized (this.mLock) {
            CallbackMessageHandler callbackMessageHandler = this.mCallback;
            if (callbackMessageHandler != null) {
                callbackMessageHandler.post(i2, obj, bundle);
            }
        }
    }
}
