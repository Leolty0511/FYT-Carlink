package android.media.session;

import android.accessibilityservice.c;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.MediaMetadata;
import android.media.MediaMetadataEditor;
import android.media.Rating;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.ArrayMap;
import android.util.Log;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
public class MediaSessionLegacyHelper {
    private static MediaSessionLegacyHelper sInstance;
    private Context mContext;
    private MediaSessionManager mSessionManager;
    private static final String TAG = "MediaSessionHelper";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static final Object sLock = new Object();
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private ArrayMap<PendingIntent, SessionHolder> mSessions = new ArrayMap<>();

    public static final class MediaButtonListener extends MediaSession.Callback {
        private final Context mContext;
        private final PendingIntent mPendingIntent;

        public MediaButtonListener(PendingIntent pendingIntent, Context context) {
            this.mPendingIntent = pendingIntent;
            this.mContext = context;
        }

        private void sendKeyEvent(int i2) {
            KeyEvent keyEvent = new KeyEvent(0, i2);
            Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON);
            intent.addFlags(268435456);
            intent.putExtra(Intent.EXTRA_KEY_EVENT, keyEvent);
            MediaSessionLegacyHelper.sendKeyEvent(this.mPendingIntent, this.mContext, intent);
            intent.putExtra(Intent.EXTRA_KEY_EVENT, new KeyEvent(1, i2));
            MediaSessionLegacyHelper.sendKeyEvent(this.mPendingIntent, this.mContext, intent);
            if (MediaSessionLegacyHelper.DEBUG) {
                StringBuilder sbS = c.s("Sent ", i2, " to pending intent ");
                sbS.append(this.mPendingIntent);
                Log.d(MediaSessionLegacyHelper.TAG, sbS.toString());
            }
        }

        @Override // android.media.session.MediaSession.Callback
        public void onFastForward() {
            sendKeyEvent(90);
        }

        @Override // android.media.session.MediaSession.Callback
        public boolean onMediaButtonEvent(Intent intent) {
            MediaSessionLegacyHelper.sendKeyEvent(this.mPendingIntent, this.mContext, intent);
            return true;
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPause() {
            sendKeyEvent(127);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlay() {
            sendKeyEvent(126);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onRewind() {
            sendKeyEvent(89);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToNext() {
            sendKeyEvent(87);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToPrevious() {
            sendKeyEvent(88);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onStop() {
            sendKeyEvent(86);
        }
    }

    public class SessionHolder {
        public SessionCallback mCb;
        public int mFlags;
        public MediaButtonListener mMediaButtonListener;
        public final PendingIntent mPi;
        public MediaSession.Callback mRccListener;
        public final MediaSession mSession;

        public class SessionCallback extends MediaSession.Callback {
            private SessionCallback() {
            }

            @Override // android.media.session.MediaSession.Callback
            public void onFastForward() {
                MediaButtonListener mediaButtonListener = SessionHolder.this.mMediaButtonListener;
                if (mediaButtonListener != null) {
                    mediaButtonListener.onFastForward();
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public boolean onMediaButtonEvent(Intent intent) {
                MediaButtonListener mediaButtonListener = SessionHolder.this.mMediaButtonListener;
                if (mediaButtonListener == null) {
                    return true;
                }
                mediaButtonListener.onMediaButtonEvent(intent);
                return true;
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPause() {
                MediaButtonListener mediaButtonListener = SessionHolder.this.mMediaButtonListener;
                if (mediaButtonListener != null) {
                    mediaButtonListener.onPause();
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlay() {
                MediaButtonListener mediaButtonListener = SessionHolder.this.mMediaButtonListener;
                if (mediaButtonListener != null) {
                    mediaButtonListener.onPlay();
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public void onRewind() {
                MediaButtonListener mediaButtonListener = SessionHolder.this.mMediaButtonListener;
                if (mediaButtonListener != null) {
                    mediaButtonListener.onRewind();
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSeekTo(long j2) {
                MediaSession.Callback callback = SessionHolder.this.mRccListener;
                if (callback != null) {
                    callback.onSeekTo(j2);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSetRating(Rating rating) {
                MediaSession.Callback callback = SessionHolder.this.mRccListener;
                if (callback != null) {
                    callback.onSetRating(rating);
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToNext() {
                MediaButtonListener mediaButtonListener = SessionHolder.this.mMediaButtonListener;
                if (mediaButtonListener != null) {
                    mediaButtonListener.onSkipToNext();
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToPrevious() {
                MediaButtonListener mediaButtonListener = SessionHolder.this.mMediaButtonListener;
                if (mediaButtonListener != null) {
                    mediaButtonListener.onSkipToPrevious();
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public void onStop() {
                MediaButtonListener mediaButtonListener = SessionHolder.this.mMediaButtonListener;
                if (mediaButtonListener != null) {
                    mediaButtonListener.onStop();
                }
            }
        }

        public SessionHolder(MediaSession mediaSession, PendingIntent pendingIntent) {
            this.mSession = mediaSession;
            this.mPi = pendingIntent;
        }

        public void update() {
            if (this.mMediaButtonListener == null && this.mRccListener == null) {
                this.mSession.setCallback(null);
                this.mSession.release();
                this.mCb = null;
                MediaSessionLegacyHelper.this.mSessions.remove(this.mPi);
                return;
            }
            if (this.mCb == null) {
                this.mCb = new SessionCallback();
                this.mSession.setCallback(this.mCb, new Handler(Looper.getMainLooper()));
            }
        }
    }

    private MediaSessionLegacyHelper(Context context) {
        this.mContext = context;
        if (context != null) {
            this.mSessionManager = (MediaSessionManager) context.getSystemService(Context.MEDIA_SESSION_SERVICE);
        } else {
            this.mSessionManager = null;
            Log.e(TAG, "context is null,set mSessionManager null.");
        }
    }

    public static MediaSessionLegacyHelper getHelper(Context context) {
        synchronized (sLock) {
            MediaSessionLegacyHelper mediaSessionLegacyHelper = sInstance;
            if (mediaSessionLegacyHelper == null || mediaSessionLegacyHelper.mSessionManager == null) {
                sInstance = new MediaSessionLegacyHelper(context.getApplicationContext());
            }
        }
        return sInstance;
    }

    private SessionHolder getHolder(PendingIntent pendingIntent, boolean z2) {
        SessionHolder sessionHolder = this.mSessions.get(pendingIntent);
        if (sessionHolder != null || !z2) {
            return sessionHolder;
        }
        MediaSession mediaSession = new MediaSession(this.mContext, "MediaSessionHelper-" + pendingIntent.getCreatorPackage());
        mediaSession.setActive(true);
        SessionHolder sessionHolder2 = new SessionHolder(mediaSession, pendingIntent);
        this.mSessions.put(pendingIntent, sessionHolder2);
        return sessionHolder2;
    }

    public static Bundle getOldMetadata(MediaMetadata mediaMetadata, int i2, int i3) {
        boolean z2 = (i2 == -1 || i3 == -1) ? false : true;
        Bundle bundle = new Bundle();
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_ALBUM)) {
            bundle.putString(String.valueOf(1), mediaMetadata.getString(MediaMetadata.METADATA_KEY_ALBUM));
        }
        if (z2 && mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_ART)) {
            bundle.putParcelable(String.valueOf(100), scaleBitmapIfTooBig(mediaMetadata.getBitmap(MediaMetadata.METADATA_KEY_ART), i2, i3));
        } else if (z2 && mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_ALBUM_ART)) {
            bundle.putParcelable(String.valueOf(100), scaleBitmapIfTooBig(mediaMetadata.getBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART), i2, i3));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_ALBUM_ARTIST)) {
            bundle.putString(String.valueOf(13), mediaMetadata.getString(MediaMetadata.METADATA_KEY_ALBUM_ARTIST));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_ARTIST)) {
            bundle.putString(String.valueOf(2), mediaMetadata.getString(MediaMetadata.METADATA_KEY_ARTIST));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_AUTHOR)) {
            bundle.putString(String.valueOf(3), mediaMetadata.getString(MediaMetadata.METADATA_KEY_AUTHOR));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_COMPILATION)) {
            bundle.putString(String.valueOf(15), mediaMetadata.getString(MediaMetadata.METADATA_KEY_COMPILATION));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_COMPOSER)) {
            bundle.putString(String.valueOf(4), mediaMetadata.getString(MediaMetadata.METADATA_KEY_COMPOSER));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_DATE)) {
            bundle.putString(String.valueOf(5), mediaMetadata.getString(MediaMetadata.METADATA_KEY_DATE));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_DISC_NUMBER)) {
            bundle.putLong(String.valueOf(14), mediaMetadata.getLong(MediaMetadata.METADATA_KEY_DISC_NUMBER));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_DURATION)) {
            bundle.putLong(String.valueOf(9), mediaMetadata.getLong(MediaMetadata.METADATA_KEY_DURATION));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_GENRE)) {
            bundle.putString(String.valueOf(6), mediaMetadata.getString(MediaMetadata.METADATA_KEY_GENRE));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_NUM_TRACKS)) {
            bundle.putLong(String.valueOf(10), mediaMetadata.getLong(MediaMetadata.METADATA_KEY_NUM_TRACKS));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_RATING)) {
            bundle.putParcelable(String.valueOf(101), mediaMetadata.getRating(MediaMetadata.METADATA_KEY_RATING));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_USER_RATING)) {
            bundle.putParcelable(String.valueOf(MediaMetadataEditor.RATING_KEY_BY_USER), mediaMetadata.getRating(MediaMetadata.METADATA_KEY_USER_RATING));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_TITLE)) {
            bundle.putString(String.valueOf(7), mediaMetadata.getString(MediaMetadata.METADATA_KEY_TITLE));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_TRACK_NUMBER)) {
            bundle.putLong(String.valueOf(0), mediaMetadata.getLong(MediaMetadata.METADATA_KEY_TRACK_NUMBER));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_WRITER)) {
            bundle.putString(String.valueOf(11), mediaMetadata.getString(MediaMetadata.METADATA_KEY_WRITER));
        }
        if (mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_YEAR)) {
            bundle.putLong(String.valueOf(8), mediaMetadata.getLong(MediaMetadata.METADATA_KEY_YEAR));
        }
        return bundle;
    }

    private static Bitmap scaleBitmapIfTooBig(Bitmap bitmap, int i2, int i3) {
        if (bitmap == null) {
            return bitmap;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= i2 && height <= i3) {
            return bitmap;
        }
        float f2 = width;
        float f3 = height;
        float fMin = Math.min(i2 / f2, i3 / f3);
        int iRound = Math.round(f2 * fMin);
        int iRound2 = Math.round(fMin * f3);
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound, iRound2, config);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        canvas.drawBitmap(bitmap, (Rect) null, new RectF(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight()), paint);
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendKeyEvent(PendingIntent pendingIntent, Context context, Intent intent) {
        try {
            pendingIntent.send(context, 0, intent);
        } catch (PendingIntent.CanceledException e2) {
            Log.e(TAG, "Error sending media key down event:", e2);
        }
    }

    public void addMediaButtonListener(PendingIntent pendingIntent, ComponentName componentName, Context context) {
        if (pendingIntent == null) {
            Log.w(TAG, "Pending intent was null, can't addMediaButtonListener.");
            return;
        }
        SessionHolder holder = getHolder(pendingIntent, true);
        if (holder == null) {
            return;
        }
        if (holder.mMediaButtonListener != null && DEBUG) {
            Log.d(TAG, "addMediaButtonListener already added " + pendingIntent);
        }
        holder.mMediaButtonListener = new MediaButtonListener(pendingIntent, context);
        int i2 = holder.mFlags | 1;
        holder.mFlags = i2;
        holder.mSession.setFlags(i2);
        holder.mSession.setMediaButtonReceiver(pendingIntent);
        holder.update();
        if (DEBUG) {
            Log.d(TAG, "addMediaButtonListener added " + pendingIntent);
        }
    }

    public void addRccListener(PendingIntent pendingIntent, MediaSession.Callback callback) {
        if (pendingIntent == null) {
            Log.w(TAG, "Pending intent was null, can't add rcc listener.");
            return;
        }
        SessionHolder holder = getHolder(pendingIntent, true);
        if (holder == null) {
            return;
        }
        MediaSession.Callback callback2 = holder.mRccListener;
        if (callback2 != null && callback2 == callback) {
            if (DEBUG) {
                Log.d(TAG, "addRccListener listener already added.");
                return;
            }
            return;
        }
        holder.mRccListener = callback;
        int i2 = holder.mFlags | 2;
        holder.mFlags = i2;
        holder.mSession.setFlags(i2);
        holder.update();
        if (DEBUG) {
            Log.d(TAG, "Added rcc listener for " + pendingIntent + ".");
        }
    }

    public MediaSession getSession(PendingIntent pendingIntent) {
        SessionHolder sessionHolder = this.mSessions.get(pendingIntent);
        if (sessionHolder == null) {
            return null;
        }
        return sessionHolder.mSession;
    }

    public boolean isGlobalPriorityActive() {
        MediaSessionManager mediaSessionManager = this.mSessionManager;
        if (mediaSessionManager != null) {
            return mediaSessionManager.isGlobalPriorityActive();
        }
        Log.w(TAG, "isGlobalPriorityActive mSessionManager is null.return false");
        return false;
    }

    public void removeMediaButtonListener(PendingIntent pendingIntent) {
        SessionHolder holder;
        if (pendingIntent == null || (holder = getHolder(pendingIntent, false)) == null || holder.mMediaButtonListener == null) {
            return;
        }
        int i2 = holder.mFlags & (-2);
        holder.mFlags = i2;
        holder.mSession.setFlags(i2);
        holder.mMediaButtonListener = null;
        holder.update();
        if (DEBUG) {
            Log.d(TAG, "removeMediaButtonListener removed " + pendingIntent);
        }
    }

    public void removeRccListener(PendingIntent pendingIntent) {
        SessionHolder holder;
        if (pendingIntent == null || (holder = getHolder(pendingIntent, false)) == null || holder.mRccListener == null) {
            return;
        }
        holder.mRccListener = null;
        int i2 = holder.mFlags & (-3);
        holder.mFlags = i2;
        holder.mSession.setFlags(i2);
        holder.update();
        if (DEBUG) {
            Log.d(TAG, "Removed rcc listener for " + pendingIntent + ".");
        }
    }

    public void sendAdjustVolumeBy(int i2, int i3, int i4) {
        MediaSessionManager mediaSessionManager = this.mSessionManager;
        if (mediaSessionManager == null) {
            Log.w(TAG, "sendAdjustVolumeBy mSessionManager is null");
            return;
        }
        mediaSessionManager.dispatchAdjustVolume(i2, i3, i4);
        if (DEBUG) {
            Log.d(TAG, "dispatched volume adjustment");
        }
    }

    public void sendMediaButtonEvent(KeyEvent keyEvent, boolean z2) {
        MediaSessionManager mediaSessionManager;
        if (keyEvent == null || (mediaSessionManager = this.mSessionManager) == null) {
            Log.w(TAG, "Tried to send a null key event. Ignoring.");
            return;
        }
        mediaSessionManager.dispatchMediaKeyEvent(keyEvent, z2);
        if (DEBUG) {
            Log.d(TAG, "dispatched media key " + keyEvent);
        }
    }

    public void sendVolumeKeyEvent(KeyEvent keyEvent, int i2, boolean z2) {
        MediaSessionManager mediaSessionManager;
        if (keyEvent == null || (mediaSessionManager = this.mSessionManager) == null) {
            Log.w(TAG, "Tried to send a null key event. Ignoring.");
        } else {
            mediaSessionManager.dispatchVolumeKeyEvent(keyEvent, i2, z2);
        }
    }
}
