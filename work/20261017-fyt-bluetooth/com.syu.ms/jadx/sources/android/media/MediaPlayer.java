package android.media;

import android.app.backup.FullBackup;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetFileDescriptor;
import android.net.Proxy;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.InetSocketAddress;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class MediaPlayer implements SubtitleController.Listener {
    public static final boolean APPLY_METADATA_FILTER = true;
    public static final boolean BYPASS_METADATA_FILTER = false;
    private static final String IMEDIA_PLAYER = "android.media.IMediaPlayer";
    private static final int INVOKE_ID_ADD_EXTERNAL_SOURCE = 2;
    private static final int INVOKE_ID_ADD_EXTERNAL_SOURCE_FD = 3;
    private static final int INVOKE_ID_DESELECT_TRACK = 5;
    private static final int INVOKE_ID_GET_TRACK_INFO = 1;
    private static final int INVOKE_ID_SELECT_TRACK = 4;
    private static final int INVOKE_ID_SET_VIDEO_SCALE_MODE = 6;
    private static final int MEDIA_BUFFERING_UPDATE = 3;
    private static final int MEDIA_ERROR = 100;
    public static final int MEDIA_ERROR_IO = -1004;
    public static final int MEDIA_ERROR_MALFORMED = -1007;
    public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_ERROR_TIMED_OUT = -110;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    public static final int MEDIA_ERROR_UNSUPPORTED = -1010;
    private static final int MEDIA_INFO = 200;
    public static final int MEDIA_INFO_BAD_INTERLEAVING = 800;
    public static final int MEDIA_INFO_BUFFERING_END = 702;
    public static final int MEDIA_INFO_BUFFERING_START = 701;
    public static final int MEDIA_INFO_EXTERNAL_METADATA_UPDATE = 803;
    public static final int MEDIA_INFO_METADATA_UPDATE = 802;
    public static final int MEDIA_INFO_NOT_SEEKABLE = 801;
    public static final int MEDIA_INFO_STARTED_AS_NEXT = 2;
    public static final int MEDIA_INFO_SUBTITLE_TIMED_OUT = 902;
    public static final int MEDIA_INFO_TIMED_TEXT_ERROR = 900;
    public static final int MEDIA_INFO_UNKNOWN = 1;
    public static final int MEDIA_INFO_UNSUPPORTED_SUBTITLE = 901;
    public static final int MEDIA_INFO_VIDEO_RENDERING_START = 3;
    public static final int MEDIA_INFO_VIDEO_TRACK_LAGGING = 700;
    public static final String MEDIA_MIMETYPE_TEXT_SUBRIP = "application/x-subrip";
    public static final String MEDIA_MIMETYPE_TEXT_VTT = "text/vtt";
    private static final int MEDIA_NOP = 0;
    private static final int MEDIA_PAUSED = 7;
    private static final int MEDIA_PLAYBACK_COMPLETE = 2;
    private static final int MEDIA_PREPARED = 1;
    private static final int MEDIA_SEEK_COMPLETE = 4;
    private static final int MEDIA_SET_VIDEO_SIZE = 5;
    private static final int MEDIA_SKIPPED = 9;
    private static final int MEDIA_STARTED = 6;
    private static final int MEDIA_STOPPED = 8;
    private static final int MEDIA_SUBTITLE_DATA = 201;
    private static final int MEDIA_TIMED_TEXT = 99;
    public static final boolean METADATA_ALL = false;
    public static final boolean METADATA_UPDATE_ONLY = true;
    private static final String TAG = "MediaPlayer";
    private static final String TAGFYT = "MediaPlayerFyt";
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT = 1;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING = 2;
    private static int mPid;
    private static String mProcName;
    private static IAudioService sService;
    private EventHandler mEventHandler;
    private SubtitleTrack[] mInbandSubtitleTracks;
    private int mListenerContext;
    private int mNativeContext;
    private int mNativeSurfaceTexture;
    private OnBufferingUpdateListener mOnBufferingUpdateListener;
    private OnCompletionListener mOnCompletionListener;
    private OnErrorListener mOnErrorListener;
    private OnInfoListener mOnInfoListener;
    private OnPreparedListener mOnPreparedListener;
    private OnSeekCompleteListener mOnSeekCompleteListener;
    private OnSubtitleDataListener mOnSubtitleDataListener;
    private OnTimedTextListener mOnTimedTextListener;
    private OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    private Vector<InputStream> mOpenSubtitleSources;
    private Vector<SubtitleTrack> mOutOfBandSubtitleTracks;
    private boolean mScreenOnWhilePlaying;
    private boolean mStayAwake;
    private SubtitleController mSubtitleController;
    private SurfaceHolder mSurfaceHolder;
    private TimeProvider mTimeProvider;
    private PowerManager.WakeLock mWakeLock = null;
    private boolean debugmediaplayer = true;
    private int mSelectedSubtitleTrackIndex = -1;
    private OnSubtitleDataListener mSubtitleDataListener = new OnSubtitleDataListener() { // from class: android.media.MediaPlayer.1
        @Override // android.media.MediaPlayer.OnSubtitleDataListener
        public void onSubtitleData(MediaPlayer mediaPlayer, SubtitleData subtitleData) {
            SubtitleTrack subtitleTrack;
            int trackIndex = subtitleData.getTrackIndex();
            if (trackIndex < MediaPlayer.this.mInbandSubtitleTracks.length && (subtitleTrack = MediaPlayer.this.mInbandSubtitleTracks[trackIndex]) != null) {
                try {
                    long startTimeUs = subtitleData.getStartTimeUs() + 1;
                    subtitleTrack.onData(new String(subtitleData.getData(), "UTF-8"), true, startTimeUs);
                    subtitleTrack.setRunDiscardTimeMs(startTimeUs, (subtitleData.getStartTimeUs() + subtitleData.getDurationUs()) / 1000);
                } catch (UnsupportedEncodingException e2) {
                    Log.w(MediaPlayer.TAG, "subtitle data for track " + trackIndex + " is not UTF-8 encoded: " + e2);
                }
            }
        }
    };
    private Context mProxyContext = null;
    private ProxyReceiver mProxyReceiver = null;

    public class EventHandler extends Handler {
        private MediaPlayer mMediaPlayer;

        public EventHandler(MediaPlayer mediaPlayer, Looper looper) {
            super(looper);
            this.mMediaPlayer = mediaPlayer;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.mMediaPlayer.mNativeContext == 0) {
                Log.w(MediaPlayer.TAG, "mediaplayer went away with unhandled events");
                return;
            }
            int i2 = message.what;
            if (i2 == 99) {
                if (MediaPlayer.this.mOnTimedTextListener == null) {
                    return;
                }
                Object obj = message.obj;
                if (obj == null) {
                    MediaPlayer.this.mOnTimedTextListener.onTimedText(this.mMediaPlayer, null);
                    return;
                } else {
                    if (obj instanceof Parcel) {
                        Parcel parcel = (Parcel) obj;
                        TimedText timedText = new TimedText(parcel);
                        parcel.recycle();
                        MediaPlayer.this.mOnTimedTextListener.onTimedText(this.mMediaPlayer, timedText);
                        return;
                    }
                    return;
                }
            }
            if (i2 == 100) {
                Log.e(MediaPlayer.TAG, "Error (" + message.arg1 + "," + message.arg2 + ")");
                boolean zOnError = MediaPlayer.this.mOnErrorListener != null ? MediaPlayer.this.mOnErrorListener.onError(this.mMediaPlayer, message.arg1, message.arg2) : false;
                if (MediaPlayer.this.mOnCompletionListener != null && !zOnError) {
                    MediaPlayer.this.mOnCompletionListener.onCompletion(this.mMediaPlayer);
                }
                MediaPlayer.this.stayAwake(false);
                return;
            }
            if (i2 == 200) {
                int i3 = message.arg1;
                if (i3 != 700) {
                    if (i3 == 802) {
                        MediaPlayer.this.scanInternalSubtitleTracks();
                    } else if (i3 == 803) {
                    }
                    message.arg1 = MediaPlayer.MEDIA_INFO_METADATA_UPDATE;
                    MediaPlayer.this.mSubtitleController.selectDefaultTrack();
                } else {
                    Log.i(MediaPlayer.TAG, "Info (" + message.arg1 + "," + message.arg2 + ")");
                }
                if (MediaPlayer.this.mOnInfoListener != null) {
                    MediaPlayer.this.mOnInfoListener.onInfo(this.mMediaPlayer, message.arg1, message.arg2);
                    return;
                }
                return;
            }
            if (i2 == 201) {
                if (MediaPlayer.this.mOnSubtitleDataListener == null) {
                    return;
                }
                Object obj2 = message.obj;
                if (obj2 instanceof Parcel) {
                    Parcel parcel2 = (Parcel) obj2;
                    SubtitleData subtitleData = new SubtitleData(parcel2);
                    parcel2.recycle();
                    MediaPlayer.this.mOnSubtitleDataListener.onSubtitleData(this.mMediaPlayer, subtitleData);
                    return;
                }
                return;
            }
            switch (i2) {
                case 0:
                    return;
                case 1:
                    MediaPlayer.this.scanInternalSubtitleTracks();
                    if (MediaPlayer.this.mOnPreparedListener != null) {
                        MediaPlayer.this.mOnPreparedListener.onPrepared(this.mMediaPlayer);
                        return;
                    }
                    return;
                case 2:
                    int pid = MediaPlayer.getPid();
                    String procName = MediaPlayer.getProcName();
                    IAudioService service = MediaPlayer.getService();
                    if (MediaPlayer.this.debugmediaplayer) {
                        Log.e(MediaPlayer.TAGFYT, ">>> mediaplayer  handleMessage   >>>>>>>  pid =  " + pid + "mMyProcName=" + procName);
                    }
                    try {
                        service.sendToSyuServiceAudioInformation(0, null, null, new String[]{MediaPlayer.mProcName, "stop"});
                        break;
                    } catch (RemoteException e2) {
                        Log.e(MediaPlayer.TAG, "Dead object in start", e2);
                    }
                    if (MediaPlayer.this.mOnCompletionListener != null) {
                        MediaPlayer.this.mOnCompletionListener.onCompletion(this.mMediaPlayer);
                    }
                    MediaPlayer.this.stayAwake(false);
                    return;
                case 3:
                    if (MediaPlayer.this.mOnBufferingUpdateListener != null) {
                        MediaPlayer.this.mOnBufferingUpdateListener.onBufferingUpdate(this.mMediaPlayer, message.arg1);
                        return;
                    }
                    return;
                case 4:
                    if (MediaPlayer.this.mOnSeekCompleteListener != null) {
                        MediaPlayer.this.mOnSeekCompleteListener.onSeekComplete(this.mMediaPlayer);
                    }
                    break;
                case 5:
                    if (MediaPlayer.this.mOnVideoSizeChangedListener != null) {
                        MediaPlayer.this.mOnVideoSizeChangedListener.onVideoSizeChanged(this.mMediaPlayer, message.arg1, message.arg2);
                        return;
                    }
                    return;
                case 6:
                case 7:
                    if (MediaPlayer.this.mTimeProvider != null) {
                        MediaPlayer.this.mTimeProvider.onPaused(message.what == 7);
                        return;
                    }
                    return;
                case 8:
                    if (MediaPlayer.this.mTimeProvider != null) {
                        MediaPlayer.this.mTimeProvider.onStopped();
                        return;
                    }
                    return;
                case 9:
                    break;
                default:
                    Log.e(MediaPlayer.TAG, "Unknown message type " + message.what);
                    return;
            }
            if (MediaPlayer.this.mTimeProvider != null) {
                MediaPlayer.this.mTimeProvider.onSeekComplete(this.mMediaPlayer);
            }
        }
    }

    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(MediaPlayer mediaPlayer, int i2);
    }

    public interface OnCompletionListener {
        void onCompletion(MediaPlayer mediaPlayer);
    }

    public interface OnErrorListener {
        boolean onError(MediaPlayer mediaPlayer, int i2, int i3);
    }

    public interface OnInfoListener {
        boolean onInfo(MediaPlayer mediaPlayer, int i2, int i3);
    }

    public interface OnPreparedListener {
        void onPrepared(MediaPlayer mediaPlayer);
    }

    public interface OnSeekCompleteListener {
        void onSeekComplete(MediaPlayer mediaPlayer);
    }

    public interface OnSubtitleDataListener {
        void onSubtitleData(MediaPlayer mediaPlayer, SubtitleData subtitleData);
    }

    public interface OnTimedTextListener {
        void onTimedText(MediaPlayer mediaPlayer, TimedText timedText);
    }

    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3);
    }

    public class ProxyReceiver extends BroadcastReceiver {
        private ProxyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(Proxy.PROXY_CHANGE_ACTION)) {
                MediaPlayer.this.handleProxyBroadcast(intent);
            }
        }
    }

    public static class TimeProvider implements OnSeekCompleteListener, MediaTimeProvider {
        private static final long MAX_EARLY_CALLBACK_US = 1000;
        private static final long MAX_NS_WITHOUT_POSITION_CHECK = 5000000000L;
        private static final int NOTIFY = 1;
        private static final int NOTIFY_SEEK = 3;
        private static final int NOTIFY_STOP = 2;
        private static final int NOTIFY_TIME = 0;
        private static final int REFRESH_AND_NOTIFY_TIME = 1;
        private static final String TAG = "MTP";
        private static final long TIME_ADJUSTMENT_RATE = 2;
        private Handler mEventHandler;
        private HandlerThread mHandlerThread;
        private long mLastNanoTime;
        private long mLastReportedTime;
        private long mLastTimeUs;
        private MediaTimeProvider.OnMediaTimeListener[] mListeners;
        private MediaPlayer mPlayer;
        private boolean mRefresh;
        private long mTimeAdjustment;
        private long[] mTimes;
        private boolean mPaused = true;
        private boolean mStopped = true;
        private boolean mPausing = false;
        private boolean mSeeking = false;
        public boolean DEBUG = false;

        public class EventHandler extends Handler {
            public EventHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    int i2 = message.arg1;
                    if (i2 == 0) {
                        TimeProvider.this.notifyTimedEvent(false);
                        return;
                    }
                    if (i2 == 1) {
                        TimeProvider.this.notifyTimedEvent(true);
                    } else if (i2 == 2) {
                        TimeProvider.this.notifyStop();
                    } else {
                        if (i2 != 3) {
                            return;
                        }
                        TimeProvider.this.notifySeek();
                    }
                }
            }
        }

        public TimeProvider(MediaPlayer mediaPlayer) {
            this.mLastTimeUs = 0L;
            this.mRefresh = false;
            this.mPlayer = mediaPlayer;
            try {
                getCurrentTimeUs(true, false);
            } catch (IllegalStateException unused) {
                this.mRefresh = true;
            }
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null && (looperMyLooper = Looper.getMainLooper()) == null) {
                HandlerThread handlerThread = new HandlerThread("MediaPlayerMTPEventThread", -2);
                this.mHandlerThread = handlerThread;
                handlerThread.start();
                looperMyLooper = this.mHandlerThread.getLooper();
            }
            this.mEventHandler = new EventHandler(looperMyLooper);
            this.mListeners = new MediaTimeProvider.OnMediaTimeListener[0];
            this.mTimes = new long[0];
            this.mLastTimeUs = 0L;
            this.mTimeAdjustment = 0L;
        }

        private long getEstimatedTime(long j2, boolean z2) {
            if (this.mPaused) {
                this.mLastReportedTime = this.mLastTimeUs + this.mTimeAdjustment;
            } else {
                long j3 = (j2 - this.mLastNanoTime) / 1000;
                long j4 = this.mLastTimeUs + j3;
                this.mLastReportedTime = j4;
                long j5 = this.mTimeAdjustment;
                if (j5 > 0) {
                    long j6 = j5 - (j3 / 2);
                    if (j6 <= 0) {
                        this.mTimeAdjustment = 0L;
                    } else {
                        this.mLastReportedTime = j4 + j6;
                    }
                }
            }
            return this.mLastReportedTime;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void notifySeek() {
            try {
                this.mSeeking = false;
                try {
                    long currentTimeUs = getCurrentTimeUs(true, false);
                    if (this.DEBUG) {
                        Log.d(TAG, "onSeekComplete at " + currentTimeUs);
                    }
                    for (MediaTimeProvider.OnMediaTimeListener onMediaTimeListener : this.mListeners) {
                        if (onMediaTimeListener == null) {
                            break;
                        }
                        onMediaTimeListener.onSeek(currentTimeUs);
                    }
                } catch (IllegalStateException unused) {
                    if (this.DEBUG) {
                        Log.d(TAG, "onSeekComplete but no player");
                    }
                    this.mPausing = true;
                    notifyTimedEvent(false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void notifyStop() {
            for (MediaTimeProvider.OnMediaTimeListener onMediaTimeListener : this.mListeners) {
                if (onMediaTimeListener == null) {
                    break;
                }
                onMediaTimeListener.onStop();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void notifyTimedEvent(boolean z2) {
            long currentTimeUs;
            try {
                currentTimeUs = getCurrentTimeUs(z2, true);
            } catch (IllegalStateException unused) {
                this.mRefresh = true;
                this.mPausing = true;
                currentTimeUs = getCurrentTimeUs(z2, true);
            }
            if (this.mSeeking) {
                return;
            }
            if (this.DEBUG) {
                StringBuilder sb = new StringBuilder();
                sb.append("notifyTimedEvent(");
                sb.append(this.mLastTimeUs);
                sb.append(" -> ");
                sb.append(currentTimeUs);
                sb.append(") from {");
                boolean z3 = true;
                for (long j2 : this.mTimes) {
                    if (j2 != -1) {
                        if (!z3) {
                            sb.append(", ");
                        }
                        sb.append(j2);
                        z3 = false;
                    }
                }
                sb.append("}");
                Log.d(TAG, sb.toString());
            }
            Vector vector = new Vector();
            long j3 = currentTimeUs;
            int i2 = 0;
            while (true) {
                long[] jArr = this.mTimes;
                if (i2 >= jArr.length) {
                    break;
                }
                MediaTimeProvider.OnMediaTimeListener[] onMediaTimeListenerArr = this.mListeners;
                if (onMediaTimeListenerArr[i2] == null) {
                    break;
                }
                if (jArr[i2] > -1) {
                    if (jArr[i2] <= 1000 + currentTimeUs) {
                        vector.add(onMediaTimeListenerArr[i2]);
                        if (this.DEBUG) {
                            Log.d(TAG, Environment.MEDIA_REMOVED);
                        }
                        this.mTimes[i2] = -1;
                    } else if (j3 == currentTimeUs || jArr[i2] < j3) {
                        j3 = jArr[i2];
                    }
                }
                i2++;
            }
            if (j3 <= currentTimeUs || this.mPaused) {
                this.mEventHandler.removeMessages(1);
            } else {
                if (this.DEBUG) {
                    Log.d(TAG, "scheduling for " + j3 + " and " + currentTimeUs);
                }
                scheduleNotification(0, j3 - currentTimeUs);
            }
            Iterator it = vector.iterator();
            while (it.hasNext()) {
                ((MediaTimeProvider.OnMediaTimeListener) it.next()).onTimedEvent(currentTimeUs);
            }
        }

        private int registerListener(MediaTimeProvider.OnMediaTimeListener onMediaTimeListener) {
            MediaTimeProvider.OnMediaTimeListener[] onMediaTimeListenerArr;
            int i2 = 0;
            while (true) {
                onMediaTimeListenerArr = this.mListeners;
                if (i2 >= onMediaTimeListenerArr.length || onMediaTimeListenerArr[i2] == onMediaTimeListener || onMediaTimeListenerArr[i2] == null) {
                    break;
                }
                i2++;
            }
            if (i2 >= onMediaTimeListenerArr.length) {
                int i3 = i2 + 1;
                MediaTimeProvider.OnMediaTimeListener[] onMediaTimeListenerArr2 = new MediaTimeProvider.OnMediaTimeListener[i3];
                long[] jArr = new long[i3];
                System.arraycopy(onMediaTimeListenerArr, 0, onMediaTimeListenerArr2, 0, onMediaTimeListenerArr.length);
                long[] jArr2 = this.mTimes;
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
                this.mListeners = onMediaTimeListenerArr2;
                this.mTimes = jArr;
            }
            MediaTimeProvider.OnMediaTimeListener[] onMediaTimeListenerArr3 = this.mListeners;
            if (onMediaTimeListenerArr3[i2] == null) {
                onMediaTimeListenerArr3[i2] = onMediaTimeListener;
                this.mTimes[i2] = -1;
            }
            return i2;
        }

        private void scheduleNotification(int i2, long j2) {
            if (this.mSeeking && (i2 == 0 || i2 == 1)) {
                return;
            }
            if (this.DEBUG) {
                Log.v(TAG, "scheduleNotification " + i2 + " in " + j2);
            }
            this.mEventHandler.removeMessages(1);
            this.mEventHandler.sendMessageDelayed(this.mEventHandler.obtainMessage(1, i2, 0), (int) (j2 / 1000));
        }

        @Override // android.media.MediaTimeProvider
        public void cancelNotifications(MediaTimeProvider.OnMediaTimeListener onMediaTimeListener) {
            synchronized (this) {
                int i2 = 0;
                while (true) {
                    MediaTimeProvider.OnMediaTimeListener[] onMediaTimeListenerArr = this.mListeners;
                    if (i2 >= onMediaTimeListenerArr.length) {
                        break;
                    }
                    if (onMediaTimeListenerArr[i2] == onMediaTimeListener) {
                        int i3 = i2 + 1;
                        System.arraycopy(onMediaTimeListenerArr, i3, onMediaTimeListenerArr, i2, (onMediaTimeListenerArr.length - i2) - 1);
                        long[] jArr = this.mTimes;
                        System.arraycopy(jArr, i3, jArr, i2, (jArr.length - i2) - 1);
                        MediaTimeProvider.OnMediaTimeListener[] onMediaTimeListenerArr2 = this.mListeners;
                        onMediaTimeListenerArr2[onMediaTimeListenerArr2.length - 1] = null;
                        long[] jArr2 = this.mTimes;
                        jArr2[jArr2.length - 1] = -1;
                        break;
                    }
                    if (onMediaTimeListenerArr[i2] == null) {
                        break;
                    } else {
                        i2++;
                    }
                }
                scheduleNotification(0, 0L);
            }
        }

        public void close() {
            this.mEventHandler.removeMessages(1);
            HandlerThread handlerThread = this.mHandlerThread;
            if (handlerThread != null) {
                handlerThread.quitSafely();
                this.mHandlerThread = null;
            }
        }

        public void finalize() {
            HandlerThread handlerThread = this.mHandlerThread;
            if (handlerThread != null) {
                handlerThread.quitSafely();
            }
        }

        /* JADX WARN: Code duplicated, block: B:33:0x0081 A[Catch: all -> 0x00b6, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0007, B:7:0x0009, B:9:0x000b, B:11:0x0011, B:34:0x0083, B:35:0x0087, B:15:0x001f, B:19:0x0036, B:21:0x003c, B:25:0x004c, B:26:0x0060, B:28:0x0066, B:30:0x006e, B:32:0x0078, B:33:0x0081, B:38:0x008a, B:40:0x008e, B:42:0x0099, B:43:0x00b1, B:44:0x00b3, B:46:0x00b5), top: B:50:0x0001, inners: #1 }] */
        @Override // android.media.MediaTimeProvider
        public long getCurrentTimeUs(boolean z2, boolean z3) {
            synchronized (this) {
                if (this.mPaused && !z2) {
                    return this.mLastReportedTime;
                }
                long jNanoTime = System.nanoTime();
                if (z2 || jNanoTime >= this.mLastNanoTime + MAX_NS_WITHOUT_POSITION_CHECK) {
                    try {
                        this.mLastTimeUs = ((long) this.mPlayer.getCurrentPosition()) * 1000;
                        this.mPaused = !this.mPlayer.isPlaying();
                        if (this.DEBUG) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(this.mPaused ? "paused" : "playing");
                            sb.append(" at ");
                            sb.append(this.mLastTimeUs);
                            Log.v(TAG, sb.toString());
                        }
                        this.mLastNanoTime = jNanoTime;
                        if (z3) {
                            long j2 = this.mLastTimeUs;
                            long j3 = this.mLastReportedTime;
                            if (j2 < j3) {
                                long j4 = j3 - j2;
                                this.mTimeAdjustment = j4;
                                if (j4 > 1000000) {
                                    this.mStopped = false;
                                    this.mSeeking = true;
                                    scheduleNotification(3, 0L);
                                }
                            } else {
                                this.mTimeAdjustment = 0L;
                            }
                        } else {
                            this.mTimeAdjustment = 0L;
                        }
                    } catch (IllegalStateException e2) {
                        if (!this.mPausing) {
                            throw e2;
                        }
                        this.mPausing = false;
                        getEstimatedTime(jNanoTime, z3);
                        this.mPaused = true;
                        if (this.DEBUG) {
                            Log.d(TAG, "illegal state, but pausing: estimating at " + this.mLastReportedTime);
                        }
                        return this.mLastReportedTime;
                    }
                }
                return getEstimatedTime(jNanoTime, z3);
            }
        }

        @Override // android.media.MediaTimeProvider
        public void notifyAt(long j2, MediaTimeProvider.OnMediaTimeListener onMediaTimeListener) {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "notifyAt " + j2);
                }
                this.mTimes[registerListener(onMediaTimeListener)] = j2;
                scheduleNotification(0, 0L);
            }
        }

        public void onNewPlayer() {
            if (this.mRefresh) {
                synchronized (this) {
                    this.mStopped = false;
                    this.mSeeking = true;
                    scheduleNotification(3, 0L);
                }
            }
        }

        public void onPaused(boolean z2) {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "onPaused: " + z2);
                }
                if (this.mStopped) {
                    this.mStopped = false;
                    this.mSeeking = true;
                    scheduleNotification(3, 0L);
                } else {
                    this.mPausing = z2;
                    this.mSeeking = false;
                    scheduleNotification(1, 0L);
                }
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            synchronized (this) {
                this.mStopped = false;
                this.mSeeking = true;
                scheduleNotification(3, 0L);
            }
        }

        public void onStopped() {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "onStopped");
                }
                this.mPaused = true;
                this.mStopped = true;
                this.mSeeking = false;
                scheduleNotification(2, 0L);
            }
        }

        @Override // android.media.MediaTimeProvider
        public void scheduleUpdate(MediaTimeProvider.OnMediaTimeListener onMediaTimeListener) {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "scheduleUpdate");
                }
                int iRegisterListener = registerListener(onMediaTimeListener);
                if (this.mStopped) {
                    scheduleNotification(2, 0L);
                } else {
                    this.mTimes[iRegisterListener] = 0;
                    scheduleNotification(0, 0L);
                }
            }
        }
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
        mPid = 0;
        mProcName = null;
    }

    public MediaPlayer() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            this.mEventHandler = new EventHandler(this, looperMyLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new EventHandler(this, mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }
        this.mTimeProvider = new TimeProvider(this);
        this.mOutOfBandSubtitleTracks = new Vector<>();
        this.mOpenSubtitleSources = new Vector<>();
        this.mInbandSubtitleTracks = new SubtitleTrack[0];
        Log.e(TAG, "myProcessID= (" + Process.myPid() + ")");
        native_setup(new WeakReference(this));
    }

    private native void _pause();

    private native void _release();

    private native void _reset();

    private native void _setDataSource(FileDescriptor fileDescriptor, long j2, long j3);

    private native void _setDataSource(String str, String[] strArr, String[] strArr2);

    private native void _setVideoSurface(Surface surface);

    private native void _start();

    private native void _stop();

    private static boolean availableMimeTypeForExternalSource(String str) {
        return str == MEDIA_MIMETYPE_TEXT_SUBRIP;
    }

    public static MediaPlayer create(Context context, Uri uri) {
        return create(context, uri, null);
    }

    private void disableProxyListener() {
        if (this.mProxyReceiver == null) {
            return;
        }
        Context applicationContext = this.mProxyContext.getApplicationContext();
        if (applicationContext != null) {
            applicationContext.unregisterReceiver(this.mProxyReceiver);
        }
        this.mProxyReceiver = null;
        this.mProxyContext = null;
    }

    private TrackInfo[] getInbandTrackInfo() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IMEDIA_PLAYER);
            parcelObtain.writeInt(1);
            invoke(parcelObtain, parcelObtain2);
            return (TrackInfo[]) parcelObtain2.createTypedArray(TrackInfo.CREATOR);
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getPid() {
        if (mPid == 0) {
            mPid = Process.myPid();
        }
        return mPid;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getProcName() {
        if (mProcName == null) {
            try {
                mProcName = getService().procName(mPid);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in AudioTrack", e2);
            }
        }
        return mProcName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IAudioService getService() {
        IAudioService iAudioService = sService;
        if (iAudioService != null) {
            return iAudioService;
        }
        IAudioService iAudioServiceAsInterface = IAudioService.Stub.asInterface(ServiceManager.getService(Context.AUDIO_SERVICE));
        sService = iAudioServiceAsInterface;
        return iAudioServiceAsInterface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleProxyBroadcast(Intent intent) {
        ProxyProperties proxyProperties = (ProxyProperties) intent.getExtra(Proxy.EXTRA_PROXY_INFO);
        if (proxyProperties == null || proxyProperties.getHost() == null) {
            updateProxyConfig(null);
        } else {
            updateProxyConfig(proxyProperties);
        }
    }

    private boolean isVideoScalingModeSupported(int i2) {
        return i2 == 1 || i2 == 2;
    }

    private final native void native_finalize();

    private final native boolean native_getMetadata(boolean z2, boolean z3, Parcel parcel);

    private static final native void native_init();

    private final native int native_invoke(Parcel parcel, Parcel parcel2);

    public static native int native_pullBatteryData(Parcel parcel);

    private final native int native_setMetadataFilter(Parcel parcel);

    private final native int native_setRetransmitEndpoint(String str, int i2);

    private final native void native_setup(Object obj);

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        MediaPlayer mediaPlayer = (MediaPlayer) ((WeakReference) obj).get();
        if (mediaPlayer == null) {
            return;
        }
        if (i2 == 200 && i3 == 2) {
            mediaPlayer.start();
        }
        EventHandler eventHandler = mediaPlayer.mEventHandler;
        if (eventHandler != null) {
            mediaPlayer.mEventHandler.sendMessage(eventHandler.obtainMessage(i2, i3, i4, obj2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scanInternalSubtitleTracks() {
        if (this.mSubtitleController == null) {
            Log.e(TAG, "Should have subtitle controller already set");
            return;
        }
        TrackInfo[] inbandTrackInfo = getInbandTrackInfo();
        SubtitleTrack[] subtitleTrackArr = new SubtitleTrack[inbandTrackInfo.length];
        for (int i2 = 0; i2 < inbandTrackInfo.length; i2++) {
            if (inbandTrackInfo[i2].getTrackType() == 4) {
                SubtitleTrack[] subtitleTrackArr2 = this.mInbandSubtitleTracks;
                if (i2 < subtitleTrackArr2.length) {
                    subtitleTrackArr[i2] = subtitleTrackArr2[i2];
                } else {
                    subtitleTrackArr[i2] = this.mSubtitleController.addTrack(inbandTrackInfo[i2].getFormat());
                }
            }
        }
        this.mInbandSubtitleTracks = subtitleTrackArr;
        this.mSubtitleController.selectDefaultTrack();
    }

    private void selectOrDeselectInbandTrack(int i2, boolean z2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IMEDIA_PLAYER);
            parcelObtain.writeInt(z2 ? 4 : 5);
            parcelObtain.writeInt(i2);
            invoke(parcelObtain, parcelObtain2);
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    private void selectOrDeselectTrack(int i2, boolean z2) {
        SubtitleTrack subtitleTrack;
        SubtitleTrack[] subtitleTrackArr = this.mInbandSubtitleTracks;
        if (i2 < subtitleTrackArr.length) {
            subtitleTrack = subtitleTrackArr[i2];
        } else {
            subtitleTrack = i2 < subtitleTrackArr.length + this.mOutOfBandSubtitleTracks.size() ? this.mOutOfBandSubtitleTracks.get(i2 - this.mInbandSubtitleTracks.length) : null;
        }
        SubtitleController subtitleController = this.mSubtitleController;
        if (subtitleController == null || subtitleTrack == null) {
            selectOrDeselectInbandTrack(i2, z2);
            return;
        }
        if (z2) {
            subtitleController.selectTrack(subtitleTrack);
        } else if (subtitleController.getSelectedTrack() == subtitleTrack) {
            this.mSubtitleController.selectTrack(null);
        } else {
            Log.w(TAG, "trying to deselect track that was not selected");
        }
    }

    private void setupProxyListener(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Proxy.PROXY_CHANGE_ACTION);
        this.mProxyReceiver = new ProxyReceiver();
        this.mProxyContext = context;
        Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(this.mProxyReceiver, intentFilter);
        if (intentRegisterReceiver != null) {
            handleProxyBroadcast(intentRegisterReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stayAwake(boolean z2) {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (z2 && !wakeLock.isHeld()) {
                this.mWakeLock.acquire();
            } else if (!z2 && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
        }
        this.mStayAwake = z2;
        updateSurfaceScreenOn();
    }

    private native void updateProxyConfig(ProxyProperties proxyProperties);

    private void updateSurfaceScreenOn() {
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.setKeepScreenOn(this.mScreenOnWhilePlaying && this.mStayAwake);
        }
    }

    public void addSubtitleSource(final InputStream inputStream, final MediaFormat mediaFormat) {
        synchronized (this.mOpenSubtitleSources) {
            this.mOpenSubtitleSources.add(inputStream);
        }
        final HandlerThread handlerThread = new HandlerThread("SubtitleReadThread", 9);
        handlerThread.start();
        new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: android.media.MediaPlayer.2
            private int addTrack() {
                SubtitleTrack subtitleTrackAddTrack;
                if (inputStream == null || MediaPlayer.this.mSubtitleController == null || (subtitleTrackAddTrack = MediaPlayer.this.mSubtitleController.addTrack(mediaFormat)) == null) {
                    return MediaPlayer.MEDIA_INFO_UNSUPPORTED_SUBTITLE;
                }
                Scanner scanner = new Scanner(inputStream, "UTF-8");
                String next = scanner.useDelimiter("\\A").next();
                synchronized (MediaPlayer.this.mOpenSubtitleSources) {
                    MediaPlayer.this.mOpenSubtitleSources.remove(inputStream);
                }
                scanner.close();
                MediaPlayer.this.mOutOfBandSubtitleTracks.add(subtitleTrackAddTrack);
                subtitleTrackAddTrack.onData(next, true, -1L);
                return MediaPlayer.MEDIA_INFO_EXTERNAL_METADATA_UPDATE;
            }

            @Override // java.lang.Runnable
            public void run() {
                int iAddTrack = addTrack();
                if (MediaPlayer.this.mEventHandler != null) {
                    MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(200, iAddTrack, 0, null));
                }
                handlerThread.getLooper().quitSafely();
            }
        });
    }

    public void addTimedTextSource(String str, String str2) throws IOException {
        if (!availableMimeTypeForExternalSource(str2)) {
            throw new IllegalArgumentException("Illegal mimeType for timed text source: " + str2);
        }
        File file = new File(str);
        if (!file.exists()) {
            throw new IOException(str);
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        addTimedTextSource(fileInputStream.getFD(), str2);
        fileInputStream.close();
    }

    public native void attachAuxEffect(int i2);

    public void deselectTrack(int i2) {
        selectOrDeselectTrack(i2, false);
    }

    public void finalize() {
        native_finalize();
    }

    public native int getAudioSessionId();

    public native int getCurrentPosition();

    public native int getDuration();

    public MediaTimeProvider getMediaTimeProvider() {
        if (this.mTimeProvider == null) {
            this.mTimeProvider = new TimeProvider(this);
        }
        return this.mTimeProvider;
    }

    public Metadata getMetadata(boolean z2, boolean z3) {
        Parcel parcelObtain = Parcel.obtain();
        Metadata metadata = new Metadata();
        if (!native_getMetadata(z2, z3, parcelObtain)) {
            parcelObtain.recycle();
            return null;
        }
        if (metadata.parse(parcelObtain)) {
            return metadata;
        }
        parcelObtain.recycle();
        return null;
    }

    public TrackInfo[] getTrackInfo() {
        TrackInfo[] inbandTrackInfo = getInbandTrackInfo();
        TrackInfo[] trackInfoArr = new TrackInfo[inbandTrackInfo.length + this.mOutOfBandSubtitleTracks.size()];
        System.arraycopy(inbandTrackInfo, 0, trackInfoArr, 0, inbandTrackInfo.length);
        int length = inbandTrackInfo.length;
        Iterator<SubtitleTrack> it = this.mOutOfBandSubtitleTracks.iterator();
        while (it.hasNext()) {
            trackInfoArr[length] = new TrackInfo(4, it.next().getFormat());
            length++;
        }
        return trackInfoArr;
    }

    public native int getVideoHeight();

    public native int getVideoWidth();

    public void invoke(Parcel parcel, Parcel parcel2) {
        int iNative_invoke = native_invoke(parcel, parcel2);
        parcel2.setDataPosition(0);
        if (iNative_invoke == 0) {
            return;
        }
        throw new RuntimeException("failure code: " + iNative_invoke);
    }

    public native boolean isLooping();

    public native boolean isPlaying();

    public Parcel newRequest() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IMEDIA_PLAYER);
        return parcelObtain;
    }

    @Override // android.media.SubtitleController.Listener
    public void onSubtitleTrackSelected(SubtitleTrack subtitleTrack) {
        int i2 = this.mSelectedSubtitleTrackIndex;
        int i3 = 0;
        if (i2 >= 0) {
            try {
                selectOrDeselectInbandTrack(i2, false);
            } catch (IllegalStateException unused) {
            }
            this.mSelectedSubtitleTrackIndex = -1;
        }
        setOnSubtitleDataListener(null);
        if (subtitleTrack == null) {
            return;
        }
        while (true) {
            SubtitleTrack[] subtitleTrackArr = this.mInbandSubtitleTracks;
            if (i3 >= subtitleTrackArr.length) {
                return;
            }
            if (subtitleTrackArr[i3] == subtitleTrack) {
                Log.v(TAG, "Selecting subtitle track " + i3);
                this.mSelectedSubtitleTrackIndex = i3;
                try {
                    selectOrDeselectInbandTrack(i3, true);
                } catch (IllegalStateException unused2) {
                }
                setOnSubtitleDataListener(this.mSubtitleDataListener);
                return;
            }
            i3++;
        }
    }

    public void pause() {
        stayAwake(false);
        IAudioService service = getService();
        int pid = getPid();
        String procName = getProcName();
        if (this.debugmediaplayer) {
            Log.e(TAGFYT, ">>> mediaplayer  pause   >>>>>>>  pid =  " + pid + "mMyProcName=" + procName);
        }
        try {
            service.sendToSyuServiceAudioInformation(0, null, null, new String[]{mProcName, "pause"});
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in start", e2);
        }
        _pause();
    }

    public native void prepare();

    public native void prepareAsync();

    public void release() {
        stayAwake(false);
        updateSurfaceScreenOn();
        this.mOnPreparedListener = null;
        this.mOnBufferingUpdateListener = null;
        this.mOnCompletionListener = null;
        this.mOnSeekCompleteListener = null;
        this.mOnErrorListener = null;
        this.mOnInfoListener = null;
        this.mOnVideoSizeChangedListener = null;
        this.mOnTimedTextListener = null;
        TimeProvider timeProvider = this.mTimeProvider;
        if (timeProvider != null) {
            timeProvider.close();
            this.mTimeProvider = null;
        }
        this.mOnSubtitleDataListener = null;
        _release();
    }

    public void reset() {
        this.mSelectedSubtitleTrackIndex = -1;
        synchronized (this.mOpenSubtitleSources) {
            Iterator<InputStream> it = this.mOpenSubtitleSources.iterator();
            while (it.hasNext()) {
                try {
                    it.next().close();
                } catch (IOException unused) {
                }
            }
            this.mOpenSubtitleSources.clear();
        }
        this.mOutOfBandSubtitleTracks.clear();
        this.mInbandSubtitleTracks = new SubtitleTrack[0];
        SubtitleController subtitleController = this.mSubtitleController;
        if (subtitleController != null) {
            subtitleController.reset();
        }
        TimeProvider timeProvider = this.mTimeProvider;
        if (timeProvider != null) {
            timeProvider.close();
            this.mTimeProvider = null;
        }
        stayAwake(false);
        _reset();
        EventHandler eventHandler = this.mEventHandler;
        if (eventHandler != null) {
            eventHandler.removeCallbacksAndMessages(null);
        }
        disableProxyListener();
    }

    public native void seekTo(int i2);

    public void selectTrack(int i2) {
        selectOrDeselectTrack(i2, true);
    }

    public native void setAudioSessionId(int i2);

    public native void setAudioStreamType(int i2);

    public native void setAuxEffectSendLevel(float f2);

    public void setDataSource(Context context, Uri uri) {
        setDataSource(context, uri, (Map<String, String>) null);
    }

    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
        _setVideoSurface(surfaceHolder != null ? surfaceHolder.getSurface() : null);
        updateSurfaceScreenOn();
    }

    public native void setLooping(boolean z2);

    public int setMetadataFilter(Set<Integer> set, Set<Integer> set2) {
        Parcel parcelNewRequest = newRequest();
        int iDataSize = parcelNewRequest.dataSize() + ((set.size() + 1 + 1 + set2.size()) * 4);
        if (parcelNewRequest.dataCapacity() < iDataSize) {
            parcelNewRequest.setDataCapacity(iDataSize);
        }
        parcelNewRequest.writeInt(set.size());
        Iterator<Integer> it = set.iterator();
        while (it.hasNext()) {
            parcelNewRequest.writeInt(it.next().intValue());
        }
        parcelNewRequest.writeInt(set2.size());
        Iterator<Integer> it2 = set2.iterator();
        while (it2.hasNext()) {
            parcelNewRequest.writeInt(it2.next().intValue());
        }
        return native_setMetadataFilter(parcelNewRequest);
    }

    public native void setNextMediaPlayer(MediaPlayer mediaPlayer);

    public void setOnBufferingUpdateListener(OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnBufferingUpdateListener = onBufferingUpdateListener;
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnPreparedListener(OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnSubtitleDataListener(OnSubtitleDataListener onSubtitleDataListener) {
        this.mOnSubtitleDataListener = onSubtitleDataListener;
    }

    public void setOnTimedTextListener(OnTimedTextListener onTimedTextListener) {
        this.mOnTimedTextListener = onTimedTextListener;
    }

    public void setOnVideoSizeChangedListener(OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public void setRetransmitEndpoint(InetSocketAddress inetSocketAddress) {
        String hostAddress;
        int port;
        if (inetSocketAddress != null) {
            hostAddress = inetSocketAddress.getAddress().getHostAddress();
            port = inetSocketAddress.getPort();
        } else {
            hostAddress = null;
            port = 0;
        }
        int iNative_setRetransmitEndpoint = native_setRetransmitEndpoint(hostAddress, port);
        if (iNative_setRetransmitEndpoint == 0) {
            return;
        }
        throw new IllegalArgumentException("Illegal re-transmit endpoint; native ret " + iNative_setRetransmitEndpoint);
    }

    public void setScreenOnWhilePlaying(boolean z2) {
        if (this.mScreenOnWhilePlaying != z2) {
            if (z2 && this.mSurfaceHolder == null) {
                Log.w(TAG, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = z2;
            updateSurfaceScreenOn();
        }
    }

    public void setSubtitleAnchor(SubtitleController subtitleController, SubtitleController.Anchor anchor) {
        this.mSubtitleController = subtitleController;
        subtitleController.setAnchor(anchor);
    }

    public void setSurface(Surface surface) {
        if (this.mScreenOnWhilePlaying && surface != null) {
            Log.w(TAG, "setScreenOnWhilePlaying(true) is ineffective for Surface");
        }
        this.mSurfaceHolder = null;
        _setVideoSurface(surface);
        updateSurfaceScreenOn();
    }

    public void setVideoScalingMode(int i2) {
        if (!isVideoScalingModeSupported(i2)) {
            throw new IllegalArgumentException("Scaling mode " + i2 + " is not supported");
        }
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IMEDIA_PLAYER);
            parcelObtain.writeInt(6);
            parcelObtain.writeInt(i2);
            invoke(parcelObtain, parcelObtain2);
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    public void setVolume(float f2) {
        setVolume(f2, f2);
    }

    public native void setVolume(float f2, float f3);

    public void setWakeMode(Context context, int i2) {
        boolean z2;
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
                z2 = true;
                this.mWakeLock.release();
            } else {
                z2 = false;
            }
            this.mWakeLock = null;
        } else {
            z2 = false;
        }
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService(Context.POWER_SERVICE)).newWakeLock(i2 | 536870912, MediaPlayer.class.getName());
        this.mWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
        if (z2) {
            this.mWakeLock.acquire();
        }
    }

    public void start() {
        stayAwake(true);
        IAudioService service = getService();
        int pid = getPid();
        String procName = getProcName();
        if (this.debugmediaplayer) {
            Log.e(TAGFYT, ">>> mediaplayer  start   >>>>>>>  pid =  " + pid + "mMyProcName=" + procName);
        }
        try {
            service.sendToSyuServiceAudioInformation(0, null, null, new String[]{mProcName, "play"});
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in start", e2);
        }
        _start();
    }

    public void stop() {
        stayAwake(false);
        IAudioService service = getService();
        int pid = getPid();
        String procName = getProcName();
        if (this.debugmediaplayer) {
            Log.e(TAGFYT, ">>> mediaplayer  stop   >>>>>>>  pid =  " + pid + "mMyProcName=" + procName);
        }
        try {
            service.sendToSyuServiceAudioInformation(0, null, null, new String[]{mProcName, "stop"});
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in start", e2);
        }
        _stop();
    }

    public static MediaPlayer create(Context context, Uri uri, SurfaceHolder surfaceHolder) {
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            mediaPlayer.setDataSource(context, uri);
            if (surfaceHolder != null) {
                mediaPlayer.setDisplay(surfaceHolder);
            }
            mediaPlayer.prepare();
            return mediaPlayer;
        } catch (IOException e2) {
            Log.d(TAG, "create failed:", e2);
            return null;
        } catch (IllegalArgumentException e3) {
            Log.d(TAG, "create failed:", e3);
            return null;
        } catch (SecurityException e4) {
            Log.d(TAG, "create failed:", e4);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0057  */
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        disableProxyListener();
        String scheme = uri.getScheme();
        if (scheme == null || scheme.equals(ContentResolver.SCHEME_FILE)) {
            setDataSource(uri.getPath());
            return;
        }
        AutoCloseable autoCloseable = null;
        try {
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                    assetFileDescriptorOpenAssetFileDescriptor.close();
                }
            } else {
                if (assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength() < 0) {
                    setDataSource(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
                } else {
                    setDataSource(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor(), assetFileDescriptorOpenAssetFileDescriptor.getStartOffset(), assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength());
                }
                assetFileDescriptorOpenAssetFileDescriptor.close();
            }
        } catch (IOException unused) {
            if (0 != 0) {
                autoCloseable.close();
            }
            Log.d(TAG, "Couldn't open file on client side, trying server side");
            setDataSource(uri.toString(), map);
            if (!scheme.equalsIgnoreCase("http") || scheme.equalsIgnoreCase("https")) {
                setupProxyListener(context);
            }
        } catch (SecurityException unused2) {
            if (0 != 0) {
                autoCloseable.close();
            }
            Log.d(TAG, "Couldn't open file on client side, trying server side");
            setDataSource(uri.toString(), map);
            if (scheme.equalsIgnoreCase("http")) {
            }
            setupProxyListener(context);
        } catch (Throwable th) {
            if (0 != 0) {
                autoCloseable.close();
            }
            throw th;
        }
    }

    public static MediaPlayer create(Context context, int i2) {
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = context.getResources().openRawResourceFd(i2);
            if (assetFileDescriptorOpenRawResourceFd == null) {
                return null;
            }
            MediaPlayer mediaPlayer = new MediaPlayer();
            mediaPlayer.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getLength());
            assetFileDescriptorOpenRawResourceFd.close();
            mediaPlayer.prepare();
            return mediaPlayer;
        } catch (IOException e2) {
            Log.d(TAG, "create failed:", e2);
            return null;
        } catch (IllegalArgumentException e3) {
            Log.d(TAG, "create failed:", e3);
            return null;
        } catch (SecurityException e4) {
            Log.d(TAG, "create failed:", e4);
            return null;
        }
    }

    public static class TrackInfo implements Parcelable {
        public static final Parcelable.Creator<TrackInfo> CREATOR = new Parcelable.Creator<TrackInfo>() { // from class: android.media.MediaPlayer.TrackInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TrackInfo createFromParcel(Parcel parcel) {
                return new TrackInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TrackInfo[] newArray(int i2) {
                return new TrackInfo[i2];
            }
        };
        public static final int MEDIA_TRACK_TYPE_AUDIO = 2;
        public static final int MEDIA_TRACK_TYPE_SUBTITLE = 4;
        public static final int MEDIA_TRACK_TYPE_TIMEDTEXT = 3;
        public static final int MEDIA_TRACK_TYPE_UNKNOWN = 0;
        public static final int MEDIA_TRACK_TYPE_VIDEO = 1;
        public final MediaFormat mFormat;
        public final int mTrackType;

        public TrackInfo(Parcel parcel) {
            int i2 = parcel.readInt();
            this.mTrackType = i2;
            String string = parcel.readString();
            if (i2 == 3) {
                this.mFormat = MediaFormat.createSubtitleFormat(MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP, string);
                return;
            }
            if (i2 != 4) {
                MediaFormat mediaFormat = new MediaFormat();
                this.mFormat = mediaFormat;
                mediaFormat.setString("language", string);
            } else {
                MediaFormat mediaFormatCreateSubtitleFormat = MediaFormat.createSubtitleFormat(MediaPlayer.MEDIA_MIMETYPE_TEXT_VTT, string);
                this.mFormat = mediaFormatCreateSubtitleFormat;
                mediaFormatCreateSubtitleFormat.setInteger(MediaFormat.KEY_IS_AUTOSELECT, parcel.readInt());
                mediaFormatCreateSubtitleFormat.setInteger(MediaFormat.KEY_IS_DEFAULT, parcel.readInt());
                mediaFormatCreateSubtitleFormat.setInteger(MediaFormat.KEY_IS_FORCED_SUBTITLE, parcel.readInt());
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public MediaFormat getFormat() {
            int i2 = this.mTrackType;
            if (i2 == 3 || i2 == 4) {
                return this.mFormat;
            }
            return null;
        }

        public String getLanguage() {
            String string = this.mFormat.getString("language");
            return string == null ? "und" : string;
        }

        public int getTrackType() {
            return this.mTrackType;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mTrackType);
            parcel.writeString(getLanguage());
            if (this.mTrackType == 4) {
                parcel.writeInt(this.mFormat.getInteger(MediaFormat.KEY_IS_AUTOSELECT));
                parcel.writeInt(this.mFormat.getInteger(MediaFormat.KEY_IS_DEFAULT));
                parcel.writeInt(this.mFormat.getInteger(MediaFormat.KEY_IS_FORCED_SUBTITLE));
            }
        }

        public TrackInfo(int i2, MediaFormat mediaFormat) {
            this.mTrackType = i2;
            this.mFormat = mediaFormat;
        }
    }

    public void addTimedTextSource(Context context, Uri uri, String str) throws IOException {
        String scheme = uri.getScheme();
        if (scheme != null && !scheme.equals(ContentResolver.SCHEME_FILE)) {
            AutoCloseable autoCloseable = null;
            try {
                AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
                if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                    addTimedTextSource(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor(), str);
                    assetFileDescriptorOpenAssetFileDescriptor.close();
                    return;
                } else {
                    if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                        assetFileDescriptorOpenAssetFileDescriptor.close();
                        return;
                    }
                    return;
                }
            } catch (IOException unused) {
                if (0 == 0) {
                    return;
                }
                autoCloseable.close();
                return;
            } catch (SecurityException unused2) {
                if (0 == 0) {
                    return;
                }
                autoCloseable.close();
                return;
            } catch (Throwable th) {
                if (0 != 0) {
                    autoCloseable.close();
                }
                throw th;
            }
        }
        addTimedTextSource(uri.getPath(), str);
    }

    public void setDataSource(String str) throws IOException {
        setDataSource(str, (String[]) null, (String[]) null);
    }

    public void setDataSource(String str, Map<String, String> map) throws IOException {
        String[] strArr;
        String[] strArr2 = null;
        if (map != null) {
            strArr2 = new String[map.size()];
            strArr = new String[map.size()];
            int i2 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                strArr2[i2] = entry.getKey();
                strArr[i2] = entry.getValue();
                i2++;
            }
        } else {
            strArr = null;
        }
        setDataSource(str, strArr2, strArr);
    }

    public void addTimedTextSource(FileDescriptor fileDescriptor, String str) {
        addTimedTextSource(fileDescriptor, 0L, 576460752303423487L, str);
    }

    public void addTimedTextSource(FileDescriptor fileDescriptor, long j2, long j3, String str) {
        if (availableMimeTypeForExternalSource(str)) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken(IMEDIA_PLAYER);
                parcelObtain.writeInt(3);
                parcelObtain.writeFileDescriptor(fileDescriptor);
                parcelObtain.writeLong(j2);
                parcelObtain.writeLong(j3);
                parcelObtain.writeString(str);
                invoke(parcelObtain, parcelObtain2);
                return;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
        throw new IllegalArgumentException("Illegal mimeType for timed text source: " + str);
    }

    private void setDataSource(String str, String[] strArr, String[] strArr2) throws IOException {
        disableProxyListener();
        Uri uri = Uri.parse(str);
        if (ContentResolver.SCHEME_FILE.equals(uri.getScheme())) {
            str = uri.getPath();
        }
        File file = new File(str);
        if (file.exists()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            setDataSource(fileInputStream.getFD());
            fileInputStream.close();
            return;
        }
        _setDataSource(str, strArr, strArr2);
    }

    public void setDataSource(FileDescriptor fileDescriptor) {
        setDataSource(fileDescriptor, 0L, 576460752303423487L);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j2, long j3) {
        disableProxyListener();
        _setDataSource(fileDescriptor, j2, j3);
    }
}
