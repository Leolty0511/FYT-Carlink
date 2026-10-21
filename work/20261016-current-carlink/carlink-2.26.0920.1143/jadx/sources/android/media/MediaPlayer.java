package android.media;

import android.accessibilityservice.c;
import android.app.ActivityThread;
import android.app.Application;
import android.app.backup.FullBackup;
import android.app.m;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.provider.Settings;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Log;
import android.util.Pair;
import android.util.TimeUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.android.internal.telephony.IccCardConstants;
import com.android.internal.util.Preconditions;
import com.syu.ipc.IRemoteToolkit;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.URL;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.UUID;
import java.util.Vector;
import libcore.io.IoBridge;
import libcore.io.Libcore;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes.dex */
public class MediaPlayer extends PlayerBase implements SubtitleController.Listener, VolumeAutomation {
    public static final boolean APPLY_METADATA_FILTER = true;
    public static final boolean BYPASS_METADATA_FILTER = false;
    private static final String IMEDIA_PLAYER = "android.media.IMediaPlayer";
    private static final int INVOKE_ID_ADD_EXTERNAL_SOURCE = 2;
    private static final int INVOKE_ID_ADD_EXTERNAL_SOURCE_FD = 3;
    private static final int INVOKE_ID_DESELECT_TRACK = 5;
    private static final int INVOKE_ID_GET_SELECTED_TRACK = 7;
    private static final int INVOKE_ID_GET_TRACK_INFO = 1;
    private static final int INVOKE_ID_SELECT_TRACK = 4;
    private static final int INVOKE_ID_SET_VIDEO_SCALE_MODE = 6;
    private static final int KEY_PARAMETER_AUDIO_ATTRIBUTES = 1400;
    private static final int KEY_PARAMETER_DRM_NEEDCONSUME = 1500;
    private static final int MEDIA_BUFFERING_UPDATE = 3;
    private static final int MEDIA_DRM_INFO = 210;
    private static final int MEDIA_ERROR = 100;
    public static final int MEDIA_ERROR_IO = -1004;
    public static final int MEDIA_ERROR_MALFORMED = -1007;
    public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_ERROR_SYSTEM = Integer.MIN_VALUE;
    public static final int MEDIA_ERROR_TIMED_OUT = -110;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    public static final int MEDIA_ERROR_UNSUPPORTED = -1010;
    private static final int MEDIA_INFO = 200;
    public static final int MEDIA_INFO_AUDIO_NOT_PLAYING = 804;
    public static final int MEDIA_INFO_BAD_INTERLEAVING = 800;
    public static final int MEDIA_INFO_BUFFERING_END = 702;
    public static final int MEDIA_INFO_BUFFERING_START = 701;
    public static final int MEDIA_INFO_EXTERNAL_METADATA_UPDATE = 803;
    public static final int MEDIA_INFO_METADATA_UPDATE = 802;
    public static final int MEDIA_INFO_NETWORK_BANDWIDTH = 703;
    public static final int MEDIA_INFO_NOT_SEEKABLE = 801;
    public static final int MEDIA_INFO_STARTED_AS_NEXT = 2;
    public static final int MEDIA_INFO_SUBTITLE_TIMED_OUT = 902;
    public static final int MEDIA_INFO_TIMED_TEXT_ERROR = 900;
    public static final int MEDIA_INFO_UNKNOWN = 1;
    public static final int MEDIA_INFO_UNSUPPORTED_SUBTITLE = 901;
    public static final int MEDIA_INFO_VIDEO_NOT_PLAYING = 805;
    public static final int MEDIA_INFO_VIDEO_RENDERING_START = 3;
    public static final int MEDIA_INFO_VIDEO_TRACK_LAGGING = 700;
    private static final int MEDIA_META_DATA = 202;
    public static final String MEDIA_MIMETYPE_TEXT_CEA_608 = "text/cea-608";
    public static final String MEDIA_MIMETYPE_TEXT_CEA_708 = "text/cea-708";
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
    public static final int PLAYBACK_RATE_AUDIO_MODE_DEFAULT = 0;
    public static final int PLAYBACK_RATE_AUDIO_MODE_RESAMPLE = 2;
    public static final int PLAYBACK_RATE_AUDIO_MODE_STRETCH = 1;
    public static final int PREPARE_DRM_STATUS_PREPARATION_ERROR = 3;
    public static final int PREPARE_DRM_STATUS_PROVISIONING_NETWORK_ERROR = 1;
    public static final int PREPARE_DRM_STATUS_PROVISIONING_SERVER_ERROR = 2;
    public static final int PREPARE_DRM_STATUS_SUCCESS = 0;
    public static final int SEEK_CLOSEST = 3;
    public static final int SEEK_CLOSEST_SYNC = 2;
    public static final int SEEK_NEXT_SYNC = 1;
    public static final int SEEK_PREVIOUS_SYNC = 0;
    private static final String TAG = "MediaPlayer";
    private static final String TAGFYT = "MediaPlayerFyt";
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT = 1;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING = 2;
    private static int mPid;
    private static String mProcName;
    private static IRemoteToolkit sService;
    private boolean debugmediaplayer;
    private boolean mActiveDrmScheme;
    private boolean mBypassInterruptionPolicy;
    private boolean mDrmConfigAllowed;
    private DrmInfo mDrmInfo;
    private boolean mDrmInfoResolved;
    private final Object mDrmLock;
    private MediaDrm mDrmObj;
    private boolean mDrmProvisioningInProgress;
    private ProvisioningThread mDrmProvisioningThread;
    private byte[] mDrmSessionId;
    private UUID mDrmUUID;
    private EventHandler mEventHandler;
    private BitSet mInbandTrackIndices;
    private Vector<Pair<Integer, SubtitleTrack>> mIndexTrackPairs;
    private int mListenerContext;
    private long mNativeContext;
    private long mNativeSurfaceTexture;
    private OnBufferingUpdateListener mOnBufferingUpdateListener;
    private final OnCompletionListener mOnCompletionInternalListener;
    private OnCompletionListener mOnCompletionListener;
    private OnDrmConfigHelper mOnDrmConfigHelper;
    private OnDrmInfoHandlerDelegate mOnDrmInfoHandlerDelegate;
    private OnDrmPreparedHandlerDelegate mOnDrmPreparedHandlerDelegate;
    private OnErrorListener mOnErrorListener;
    private OnInfoListener mOnInfoListener;
    private OnPreparedListener mOnPreparedListener;
    private OnSeekCompleteListener mOnSeekCompleteListener;
    private OnSubtitleDataListener mOnSubtitleDataListener;
    private OnTimedMetaDataAvailableListener mOnTimedMetaDataAvailableListener;
    private OnTimedTextListener mOnTimedTextListener;
    private OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    private Vector<InputStream> mOpenSubtitleSources;
    private boolean mPrepareDrmInProgress;
    private boolean mScreenOnWhilePlaying;
    private int mSelectedSubtitleTrackIndex;
    private boolean mStayAwake;
    private int mStreamType;
    private SubtitleController mSubtitleController;
    private OnSubtitleDataListener mSubtitleDataListener;
    private SurfaceHolder mSurfaceHolder;
    private TimeProvider mTimeProvider;
    private int mUsage;
    private PowerManager.WakeLock mWakeLock;

    public static final class DrmInfo {
        private Map<UUID, byte[]> mapPssh;
        private UUID[] supportedSchemes;

        private String arrToHex(byte[] bArr) {
            String string = "0x";
            for (byte b2 : bArr) {
                StringBuilder sbR = c.r(string);
                sbR.append(String.format("%02x", Byte.valueOf(b2)));
                string = sbR.toString();
            }
            return string;
        }

        private UUID bytesToUUID(byte[] bArr) {
            long j2 = 0;
            long j3 = 0;
            for (int i2 = 0; i2 < 8; i2++) {
                int i3 = (7 - i2) * 8;
                j2 |= (((long) bArr[i2]) & 255) << i3;
                j3 |= (((long) bArr[i2 + 8]) & 255) << i3;
            }
            return new UUID(j2, j3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DrmInfo makeCopy() {
            return new DrmInfo(this.mapPssh, this.supportedSchemes);
        }

        private Map<UUID, byte[]> parsePSSH(byte[] bArr, int i2) {
            int i3;
            byte b2;
            HashMap map = new HashMap();
            int i4 = i2;
            int i5 = 0;
            int i6 = 0;
            while (i4 > 0) {
                if (i4 < 16) {
                    Log.w(MediaPlayer.TAG, String.format("parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d", Integer.valueOf(i4), Integer.valueOf(i2)));
                    return null;
                }
                int i7 = i5 + 16;
                UUID uuidBytesToUUID = bytesToUUID(Arrays.copyOfRange(bArr, i5, i7));
                int i8 = i4 - 16;
                if (i8 < 4) {
                    Log.w(MediaPlayer.TAG, String.format("parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d", Integer.valueOf(i8), Integer.valueOf(i2)));
                    return null;
                }
                int i9 = i7 + 4;
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i7, i9);
                if (ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN) {
                    i3 = ((bArrCopyOfRange[2] & 255) << 16) | ((bArrCopyOfRange[3] & 255) << 24) | ((bArrCopyOfRange[1] & 255) << 8);
                    b2 = bArrCopyOfRange[0];
                } else {
                    i3 = ((bArrCopyOfRange[1] & 255) << 16) | ((bArrCopyOfRange[0] & 255) << 24) | ((bArrCopyOfRange[2] & 255) << 8);
                    b2 = bArrCopyOfRange[3];
                }
                int i10 = i3 | (b2 & 255);
                int i11 = i8 - 4;
                if (i11 < i10) {
                    Log.w(MediaPlayer.TAG, String.format("parsePSSH: len is too short to parse data: (%d < %d) pssh: %d", Integer.valueOf(i11), Integer.valueOf(i10), Integer.valueOf(i2)));
                    return null;
                }
                int i12 = i9 + i10;
                byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, i9, i12);
                i4 = i11 - i10;
                Log.v(MediaPlayer.TAG, String.format("parsePSSH[%d]: <%s, %s> pssh: %d", Integer.valueOf(i6), uuidBytesToUUID, arrToHex(bArrCopyOfRange2), Integer.valueOf(i2)));
                i6++;
                map.put(uuidBytesToUUID, bArrCopyOfRange2);
                i5 = i12;
            }
            return map;
        }

        public Map<UUID, byte[]> getPssh() {
            return this.mapPssh;
        }

        public UUID[] getSupportedSchemes() {
            return this.supportedSchemes;
        }

        private DrmInfo(Map<UUID, byte[]> map, UUID[] uuidArr) {
            this.mapPssh = map;
            this.supportedSchemes = uuidArr;
        }

        private DrmInfo(Parcel parcel) {
            Log.v(MediaPlayer.TAG, "DrmInfo(" + parcel + ") size " + parcel.dataSize());
            int i2 = parcel.readInt();
            byte[] bArr = new byte[i2];
            parcel.readByteArray(bArr);
            Log.v(MediaPlayer.TAG, "DrmInfo() PSSH: " + arrToHex(bArr));
            this.mapPssh = parsePSSH(bArr, i2);
            Log.v(MediaPlayer.TAG, "DrmInfo() PSSH: " + this.mapPssh);
            int i3 = parcel.readInt();
            this.supportedSchemes = new UUID[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                byte[] bArr2 = new byte[16];
                parcel.readByteArray(bArr2);
                this.supportedSchemes[i4] = bytesToUUID(bArr2);
                StringBuilder sbS = c.s("DrmInfo() supportedScheme[", i4, "]: ");
                sbS.append(this.supportedSchemes[i4]);
                Log.v(MediaPlayer.TAG, sbS.toString());
            }
            Log.v(MediaPlayer.TAG, "DrmInfo() Parcel psshsize: " + i2 + " supportedDRMsCount: " + i3);
        }
    }

    public class EventHandler extends Handler {
        private MediaPlayer mMediaPlayer;

        public EventHandler(MediaPlayer mediaPlayer, Looper looper) {
            super(looper);
            this.mMediaPlayer = mediaPlayer;
        }

        /* JADX WARN: Code duplicated, block: B:148:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:88:0x0186  */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            OnDrmInfoHandlerDelegate onDrmInfoHandlerDelegate;
            OnInfoListener onInfoListener;
            if (this.mMediaPlayer.mNativeContext == 0) {
                Log.w(MediaPlayer.TAG, "mediaplayer went away with unhandled events");
                return;
            }
            int i2 = message.what;
            DrmInfo drmInfoMakeCopy = null;
            if (i2 == 99) {
                OnTimedTextListener onTimedTextListener = MediaPlayer.this.mOnTimedTextListener;
                if (onTimedTextListener == null) {
                    return;
                }
                Object obj = message.obj;
                if (obj == null) {
                    onTimedTextListener.onTimedText(this.mMediaPlayer, null);
                    return;
                } else {
                    if (obj instanceof Parcel) {
                        Parcel parcel = (Parcel) obj;
                        TimedText timedText = new TimedText(parcel);
                        parcel.recycle();
                        onTimedTextListener.onTimedText(this.mMediaPlayer, timedText);
                        return;
                    }
                    return;
                }
            }
            if (i2 == 100) {
                Log.e(MediaPlayer.TAG, "Error (" + message.arg1 + "," + message.arg2 + ")");
                OnErrorListener onErrorListener = MediaPlayer.this.mOnErrorListener;
                boolean zOnError = onErrorListener != null ? onErrorListener.onError(this.mMediaPlayer, message.arg1, message.arg2) : false;
                MediaPlayer.this.mOnCompletionInternalListener.onCompletion(this.mMediaPlayer);
                OnCompletionListener onCompletionListener = MediaPlayer.this.mOnCompletionListener;
                if (onCompletionListener != null && !zOnError) {
                    onCompletionListener.onCompletion(this.mMediaPlayer);
                }
                MediaPlayer.this.stayAwake(false);
                return;
            }
            if (i2 == 210) {
                Log.v(MediaPlayer.TAG, "MEDIA_DRM_INFO " + MediaPlayer.this.mOnDrmInfoHandlerDelegate);
                Object obj2 = message.obj;
                if (obj2 == null) {
                    Log.w(MediaPlayer.TAG, "MEDIA_DRM_INFO msg.obj=NULL");
                    return;
                }
                if (!(obj2 instanceof Parcel)) {
                    Log.w(MediaPlayer.TAG, "MEDIA_DRM_INFO msg.obj of unexpected type " + message.obj);
                    return;
                }
                synchronized (MediaPlayer.this.mDrmLock) {
                    if (MediaPlayer.this.mOnDrmInfoHandlerDelegate != null && MediaPlayer.this.mDrmInfo != null) {
                        drmInfoMakeCopy = MediaPlayer.this.mDrmInfo.makeCopy();
                    }
                    onDrmInfoHandlerDelegate = MediaPlayer.this.mOnDrmInfoHandlerDelegate;
                }
                if (onDrmInfoHandlerDelegate != null) {
                    onDrmInfoHandlerDelegate.notifyClient(drmInfoMakeCopy);
                    return;
                }
                return;
            }
            switch (i2) {
                case 0:
                    return;
                case 1:
                    try {
                        MediaPlayer.this.scanInternalSubtitleTracks();
                        break;
                    } catch (RuntimeException unused) {
                        sendMessage(obtainMessage(100, 1, MediaPlayer.MEDIA_ERROR_UNSUPPORTED, null));
                    }
                    OnPreparedListener onPreparedListener = MediaPlayer.this.mOnPreparedListener;
                    if (onPreparedListener != null) {
                        onPreparedListener.onPrepared(this.mMediaPlayer);
                        return;
                    }
                    return;
                case 2:
                    MediaPlayer.this.fytNotifyService("stop");
                    MediaPlayer.this.mOnCompletionInternalListener.onCompletion(this.mMediaPlayer);
                    OnCompletionListener onCompletionListener2 = MediaPlayer.this.mOnCompletionListener;
                    if (onCompletionListener2 != null) {
                        onCompletionListener2.onCompletion(this.mMediaPlayer);
                    }
                    MediaPlayer.this.stayAwake(false);
                    return;
                case 3:
                    OnBufferingUpdateListener onBufferingUpdateListener = MediaPlayer.this.mOnBufferingUpdateListener;
                    if (onBufferingUpdateListener != null) {
                        onBufferingUpdateListener.onBufferingUpdate(this.mMediaPlayer, message.arg1);
                        return;
                    }
                    return;
                case 4:
                    OnSeekCompleteListener onSeekCompleteListener = MediaPlayer.this.mOnSeekCompleteListener;
                    if (onSeekCompleteListener != null) {
                        onSeekCompleteListener.onSeekComplete(this.mMediaPlayer);
                    }
                    break;
                case 5:
                    OnVideoSizeChangedListener onVideoSizeChangedListener = MediaPlayer.this.mOnVideoSizeChangedListener;
                    if (onVideoSizeChangedListener != null) {
                        onVideoSizeChangedListener.onVideoSizeChanged(this.mMediaPlayer, message.arg1, message.arg2);
                        return;
                    }
                    return;
                case 6:
                case 7:
                    TimeProvider timeProvider = MediaPlayer.this.mTimeProvider;
                    if (timeProvider != null) {
                        timeProvider.onPaused(message.what == 7);
                        return;
                    }
                    return;
                case 8:
                    TimeProvider timeProvider2 = MediaPlayer.this.mTimeProvider;
                    if (timeProvider2 != null) {
                        timeProvider2.onStopped();
                        return;
                    }
                    return;
                case 9:
                    break;
                default:
                    switch (i2) {
                        case 200:
                            int i3 = message.arg1;
                            if (i3 != 802) {
                                if (i3 != 803) {
                                    switch (i3) {
                                        case 700:
                                            Log.i(MediaPlayer.TAG, "Info (" + message.arg1 + "," + message.arg2 + ")");
                                            break;
                                        case 701:
                                        case 702:
                                            TimeProvider timeProvider3 = MediaPlayer.this.mTimeProvider;
                                            if (timeProvider3 != null) {
                                                timeProvider3.onBuffering(message.arg1 == 701);
                                            }
                                            break;
                                    }
                                }
                                onInfoListener = MediaPlayer.this.mOnInfoListener;
                                if (onInfoListener != null) {
                                    onInfoListener.onInfo(this.mMediaPlayer, message.arg1, message.arg2);
                                    return;
                                }
                                return;
                            }
                            try {
                                MediaPlayer.this.scanInternalSubtitleTracks();
                            } catch (RuntimeException unused2) {
                                sendMessage(obtainMessage(100, 1, MediaPlayer.MEDIA_ERROR_UNSUPPORTED, null));
                            }
                            break;
                            message.arg1 = 802;
                            if (MediaPlayer.this.mSubtitleController != null) {
                                MediaPlayer.this.mSubtitleController.selectDefaultTrack();
                            }
                            onInfoListener = MediaPlayer.this.mOnInfoListener;
                            if (onInfoListener != null) {
                                onInfoListener.onInfo(this.mMediaPlayer, message.arg1, message.arg2);
                                return;
                            }
                            return;
                        case 201:
                            OnSubtitleDataListener onSubtitleDataListener = MediaPlayer.this.mOnSubtitleDataListener;
                            if (onSubtitleDataListener == null) {
                                return;
                            }
                            Object obj3 = message.obj;
                            if (obj3 instanceof Parcel) {
                                Parcel parcel2 = (Parcel) obj3;
                                SubtitleData subtitleData = new SubtitleData(parcel2);
                                parcel2.recycle();
                                onSubtitleDataListener.onSubtitleData(this.mMediaPlayer, subtitleData);
                                return;
                            }
                            return;
                        case 202:
                            OnTimedMetaDataAvailableListener onTimedMetaDataAvailableListener = MediaPlayer.this.mOnTimedMetaDataAvailableListener;
                            if (onTimedMetaDataAvailableListener == null) {
                                return;
                            }
                            Object obj4 = message.obj;
                            if (obj4 instanceof Parcel) {
                                Parcel parcel3 = (Parcel) obj4;
                                TimedMetaData timedMetaDataCreateTimedMetaDataFromParcel = TimedMetaData.createTimedMetaDataFromParcel(parcel3);
                                parcel3.recycle();
                                onTimedMetaDataAvailableListener.onTimedMetaDataAvailable(this.mMediaPlayer, timedMetaDataCreateTimedMetaDataFromParcel);
                                return;
                            }
                            return;
                        default:
                            m.C(new StringBuilder("Unknown message type "), message.what, MediaPlayer.TAG);
                            return;
                    }
            }
            TimeProvider timeProvider4 = MediaPlayer.this.mTimeProvider;
            if (timeProvider4 != null) {
                timeProvider4.onSeekComplete(this.mMediaPlayer);
            }
        }
    }

    public static final class MetricsConstants {
        public static final String CODEC_AUDIO = "android.media.mediaplayer.audio.codec";
        public static final String CODEC_VIDEO = "android.media.mediaplayer.video.codec";
        public static final String DURATION = "android.media.mediaplayer.durationMs";
        public static final String ERRORS = "android.media.mediaplayer.err";
        public static final String ERROR_CODE = "android.media.mediaplayer.errcode";
        public static final String FRAMES = "android.media.mediaplayer.frames";
        public static final String FRAMES_DROPPED = "android.media.mediaplayer.dropped";
        public static final String HEIGHT = "android.media.mediaplayer.height";
        public static final String MIME_TYPE_AUDIO = "android.media.mediaplayer.audio.mime";
        public static final String MIME_TYPE_VIDEO = "android.media.mediaplayer.video.mime";
        public static final String PLAYING = "android.media.mediaplayer.playingMs";
        public static final String WIDTH = "android.media.mediaplayer.width";

        private MetricsConstants() {
        }
    }

    public static final class NoDrmSchemeException extends MediaDrmException {
        public NoDrmSchemeException(String str) {
            super(str);
        }
    }

    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(MediaPlayer mediaPlayer, int i2);
    }

    public interface OnCompletionListener {
        void onCompletion(MediaPlayer mediaPlayer);
    }

    public interface OnDrmConfigHelper {
        void onDrmConfig(MediaPlayer mediaPlayer);
    }

    public class OnDrmInfoHandlerDelegate {
        private Handler mHandler;
        private MediaPlayer mMediaPlayer;
        private OnDrmInfoListener mOnDrmInfoListener;

        public OnDrmInfoHandlerDelegate(MediaPlayer mediaPlayer, OnDrmInfoListener onDrmInfoListener, Handler handler) {
            this.mMediaPlayer = mediaPlayer;
            this.mOnDrmInfoListener = onDrmInfoListener;
            if (handler != null) {
                this.mHandler = handler;
            }
        }

        public void notifyClient(final DrmInfo drmInfo) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: android.media.MediaPlayer.OnDrmInfoHandlerDelegate.1
                    @Override // java.lang.Runnable
                    public void run() {
                        OnDrmInfoHandlerDelegate.this.mOnDrmInfoListener.onDrmInfo(OnDrmInfoHandlerDelegate.this.mMediaPlayer, drmInfo);
                    }
                });
            } else {
                this.mOnDrmInfoListener.onDrmInfo(this.mMediaPlayer, drmInfo);
            }
        }
    }

    public interface OnDrmInfoListener {
        void onDrmInfo(MediaPlayer mediaPlayer, DrmInfo drmInfo);
    }

    public class OnDrmPreparedHandlerDelegate {
        private Handler mHandler;
        private MediaPlayer mMediaPlayer;
        private OnDrmPreparedListener mOnDrmPreparedListener;

        public OnDrmPreparedHandlerDelegate(MediaPlayer mediaPlayer, OnDrmPreparedListener onDrmPreparedListener, Handler handler) {
            this.mMediaPlayer = mediaPlayer;
            this.mOnDrmPreparedListener = onDrmPreparedListener;
            if (handler != null) {
                this.mHandler = handler;
            } else if (MediaPlayer.this.mEventHandler != null) {
                this.mHandler = MediaPlayer.this.mEventHandler;
            } else {
                Log.e(MediaPlayer.TAG, "OnDrmPreparedHandlerDelegate: Unexpected null mEventHandler");
            }
        }

        public void notifyClient(final int i2) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: android.media.MediaPlayer.OnDrmPreparedHandlerDelegate.1
                    @Override // java.lang.Runnable
                    public void run() {
                        OnDrmPreparedHandlerDelegate.this.mOnDrmPreparedListener.onDrmPrepared(OnDrmPreparedHandlerDelegate.this.mMediaPlayer, i2);
                    }
                });
            } else {
                Log.e(MediaPlayer.TAG, "OnDrmPreparedHandlerDelegate:notifyClient: Unexpected null mHandler");
            }
        }
    }

    public interface OnDrmPreparedListener {
        void onDrmPrepared(MediaPlayer mediaPlayer, int i2);
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

    public interface OnTimedMetaDataAvailableListener {
        void onTimedMetaDataAvailable(MediaPlayer mediaPlayer, TimedMetaData timedMetaData);
    }

    public interface OnTimedTextListener {
        void onTimedText(MediaPlayer mediaPlayer, TimedText timedText);
    }

    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaybackRateAudioMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PrepareDrmStatusCode {
    }

    public static final class ProvisioningNetworkErrorException extends MediaDrmException {
        public ProvisioningNetworkErrorException(String str) {
            super(str);
        }
    }

    public static final class ProvisioningServerErrorException extends MediaDrmException {
        public ProvisioningServerErrorException(String str) {
            super(str);
        }
    }

    public class ProvisioningThread extends Thread {
        public static final int TIMEOUT_MS = 60000;
        private Object drmLock;
        private boolean finished;
        private MediaPlayer mediaPlayer;
        private OnDrmPreparedHandlerDelegate onDrmPreparedHandlerDelegate;
        private int status;
        private String urlStr;
        private UUID uuid;

        private ProvisioningThread() {
        }

        public ProvisioningThread initialize(MediaDrm.ProvisionRequest provisionRequest, UUID uuid, MediaPlayer mediaPlayer) {
            this.drmLock = mediaPlayer.mDrmLock;
            this.onDrmPreparedHandlerDelegate = mediaPlayer.mOnDrmPreparedHandlerDelegate;
            this.mediaPlayer = mediaPlayer;
            this.urlStr = provisionRequest.getDefaultUrl() + "&signedRequest=" + new String(provisionRequest.getData());
            this.uuid = uuid;
            this.status = 3;
            Log.v(MediaPlayer.TAG, "HandleProvisioninig: Thread is initialised url: " + this.urlStr);
            return this;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z2;
            boolean zResumePrepareDrm;
            boolean zResumePrepareDrm2;
            byte[] fully = null;
            try {
                URL url = new URL(this.urlStr);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                try {
                    try {
                        httpURLConnection.setRequestMethod("POST");
                        httpURLConnection.setDoOutput(false);
                        httpURLConnection.setDoInput(true);
                        httpURLConnection.setConnectTimeout(TIMEOUT_MS);
                        httpURLConnection.setReadTimeout(TIMEOUT_MS);
                        httpURLConnection.connect();
                        fully = Streams.readFully(httpURLConnection.getInputStream());
                        Log.v(MediaPlayer.TAG, "HandleProvisioninig: Thread run: response " + fully.length + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + fully);
                    } catch (Throwable th) {
                        httpURLConnection.disconnect();
                        throw th;
                    }
                } catch (Exception e2) {
                    this.status = 1;
                    Log.w(MediaPlayer.TAG, "HandleProvisioninig: Thread run: connect " + e2 + " url: " + url);
                }
                httpURLConnection.disconnect();
            } catch (Exception e3) {
                this.status = 1;
                Log.w(MediaPlayer.TAG, "HandleProvisioninig: Thread run: openConnection " + e3);
            }
            if (fully != null) {
                try {
                    MediaPlayer.this.mDrmObj.provideProvisionResponse(fully);
                    Log.v(MediaPlayer.TAG, "HandleProvisioninig: Thread run: provideProvisionResponse SUCCEEDED!");
                    z2 = true;
                } catch (Exception e4) {
                    this.status = 2;
                    Log.w(MediaPlayer.TAG, "HandleProvisioninig: Thread run: provideProvisionResponse " + e4);
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (this.onDrmPreparedHandlerDelegate != null) {
                synchronized (this.drmLock) {
                    if (z2) {
                        zResumePrepareDrm2 = this.mediaPlayer.resumePrepareDrm(this.uuid);
                        this.status = zResumePrepareDrm2 ? 0 : 3;
                    } else {
                        zResumePrepareDrm2 = false;
                    }
                    this.mediaPlayer.mDrmProvisioningInProgress = false;
                    this.mediaPlayer.mPrepareDrmInProgress = false;
                    if (!zResumePrepareDrm2) {
                        MediaPlayer.this.cleanDrmObj();
                    }
                }
                this.onDrmPreparedHandlerDelegate.notifyClient(this.status);
            } else {
                if (z2) {
                    zResumePrepareDrm = this.mediaPlayer.resumePrepareDrm(this.uuid);
                    this.status = zResumePrepareDrm ? 0 : 3;
                } else {
                    zResumePrepareDrm = false;
                }
                this.mediaPlayer.mDrmProvisioningInProgress = false;
                this.mediaPlayer.mPrepareDrmInProgress = false;
                if (!zResumePrepareDrm) {
                    MediaPlayer.this.cleanDrmObj();
                }
            }
            this.finished = true;
        }

        public int status() {
            return this.status;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SeekMode {
    }

    public static class TimeProvider implements OnSeekCompleteListener, MediaTimeProvider {
        private static final long MAX_EARLY_CALLBACK_US = 1000;
        private static final long MAX_NS_WITHOUT_POSITION_CHECK = 5000000000L;
        private static final int NOTIFY = 1;
        private static final int NOTIFY_SEEK = 3;
        private static final int NOTIFY_STOP = 2;
        private static final int NOTIFY_TIME = 0;
        private static final int NOTIFY_TRACK_DATA = 4;
        private static final int REFRESH_AND_NOTIFY_TIME = 1;
        private static final String TAG = "MTP";
        private static final long TIME_ADJUSTMENT_RATE = 2;
        private boolean mBuffering;
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
                        return;
                    }
                    if (i2 == 2) {
                        TimeProvider.this.notifyStop();
                    } else if (i2 == 3) {
                        TimeProvider.this.notifySeek();
                    } else {
                        if (i2 != 4) {
                            return;
                        }
                        TimeProvider.this.notifyTrackData((Pair) message.obj);
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
            MediaTimeProvider.OnMediaTimeListener onMediaTimeListener;
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
                if (i2 >= jArr.length || (onMediaTimeListener = this.mListeners[i2]) == null) {
                    break;
                    break;
                }
                long j4 = jArr[i2];
                if (j4 > -1) {
                    if (j4 <= 1000 + currentTimeUs) {
                        vector.add(onMediaTimeListener);
                        if (this.DEBUG) {
                            Log.d(TAG, Environment.MEDIA_REMOVED);
                        }
                        this.mTimes[i2] = -1;
                    } else if (j3 == currentTimeUs || j4 < j3) {
                        j3 = j4;
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

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void notifyTrackData(Pair<SubtitleTrack, byte[]> pair) {
            pair.first.onData(pair.second, true, -1L);
        }

        private int registerListener(MediaTimeProvider.OnMediaTimeListener onMediaTimeListener) {
            MediaTimeProvider.OnMediaTimeListener[] onMediaTimeListenerArr;
            MediaTimeProvider.OnMediaTimeListener onMediaTimeListener2;
            int i2 = 0;
            while (true) {
                onMediaTimeListenerArr = this.mListeners;
                if (i2 >= onMediaTimeListenerArr.length || (onMediaTimeListener2 = onMediaTimeListenerArr[i2]) == onMediaTimeListener || onMediaTimeListener2 == null) {
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
                    MediaTimeProvider.OnMediaTimeListener onMediaTimeListener2 = onMediaTimeListenerArr[i2];
                    if (onMediaTimeListener2 == onMediaTimeListener) {
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
                    if (onMediaTimeListener2 == null) {
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

        /* JADX WARN: Code duplicated, block: B:37:0x008b A[Catch: all -> 0x00bb, TryCatch #1 {, blocks: (B:4:0x0004, B:7:0x000a, B:8:0x000c, B:10:0x000e, B:12:0x0014, B:38:0x008d, B:39:0x0091, B:16:0x0022, B:18:0x0036, B:23:0x003e, B:25:0x0044, B:29:0x0056, B:30:0x006a, B:32:0x0070, B:34:0x0078, B:36:0x0082, B:37:0x008b, B:42:0x0094, B:44:0x0098, B:46:0x00a3, B:47:0x00b6, B:48:0x00b8, B:50:0x00ba), top: B:56:0x0004, inners: #0 }] */
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
                        this.mPaused = !this.mPlayer.isPlaying() || this.mBuffering;
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
                                if (j4 > TimeUtils.NANOS_PER_MS) {
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

        public void onBuffering(boolean z2) {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "onBuffering: " + z2);
                }
                this.mBuffering = z2;
                scheduleNotification(1, 0L);
            }
        }

        public void onNewPlayer() {
            if (this.mRefresh) {
                synchronized (this) {
                    this.mStopped = false;
                    this.mSeeking = true;
                    this.mBuffering = false;
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
                this.mBuffering = false;
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
                if (!this.mStopped) {
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
        super(new AudioAttributes.Builder().build(), 2);
        this.mWakeLock = null;
        this.mStreamType = Integer.MIN_VALUE;
        this.mUsage = -1;
        this.mDrmLock = new Object();
        this.debugmediaplayer = false;
        this.mIndexTrackPairs = new Vector<>();
        this.mInbandTrackIndices = new BitSet();
        this.mSelectedSubtitleTrackIndex = -1;
        this.mSubtitleDataListener = new OnSubtitleDataListener() { // from class: android.media.MediaPlayer.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.media.MediaPlayer.OnSubtitleDataListener
            public void onSubtitleData(MediaPlayer mediaPlayer, SubtitleData subtitleData) {
                S s2;
                int trackIndex = subtitleData.getTrackIndex();
                synchronized (MediaPlayer.this.mIndexTrackPairs) {
                    for (Pair pair : MediaPlayer.this.mIndexTrackPairs) {
                        F f2 = pair.first;
                        if (f2 != 0 && ((Integer) f2).intValue() == trackIndex && (s2 = pair.second) != 0) {
                            ((SubtitleTrack) s2).onData(subtitleData);
                        }
                    }
                }
            }
        };
        this.mOnCompletionInternalListener = new OnCompletionListener() { // from class: android.media.MediaPlayer.7
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                MediaPlayer.this.baseStop();
            }
        };
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
        this.mOpenSubtitleSources = new Vector<>();
        Log.e(TAG, "myProcessID= (" + Process.myPid() + ")");
        this.debugmediaplayer = SystemProperties.getBoolean("persist.fyt.audio_debug", false);
        native_setup(new WeakReference(this));
        baseRegisterPlayer();
    }

    private int HandleProvisioninig(UUID uuid) {
        if (this.mDrmProvisioningInProgress) {
            Log.e(TAG, "HandleProvisioninig: Unexpected mDrmProvisioningInProgress");
            return 3;
        }
        MediaDrm.ProvisionRequest provisionRequest = this.mDrmObj.getProvisionRequest();
        if (provisionRequest == null) {
            Log.e(TAG, "HandleProvisioninig: getProvisionRequest returned null.");
            return 3;
        }
        Log.v(TAG, "HandleProvisioninig provReq  data: " + provisionRequest.getData() + " url: " + provisionRequest.getDefaultUrl());
        this.mDrmProvisioningInProgress = true;
        ProvisioningThread provisioningThreadInitialize = new ProvisioningThread().initialize(provisionRequest, uuid, this);
        this.mDrmProvisioningThread = provisioningThreadInitialize;
        provisioningThreadInitialize.start();
        if (this.mOnDrmPreparedHandlerDelegate != null) {
            return 0;
        }
        try {
            this.mDrmProvisioningThread.join();
        } catch (Exception e2) {
            Log.w(TAG, "HandleProvisioninig: Thread.join Exception " + e2);
        }
        int iStatus = this.mDrmProvisioningThread.status();
        this.mDrmProvisioningThread = null;
        return iStatus;
    }

    private native int _getAudioStreamType();

    private native void _pause();

    private native void _prepare();

    private native void _prepareDrm(byte[] bArr, byte[] bArr2);

    private native void _release();

    private native void _releaseDrm();

    private native void _reset();

    private final native void _seekTo(long j2, int i2);

    private native void _setAudioStreamType(int i2);

    private native void _setAuxEffectSendLevel(float f2);

    private native void _setDataSource(MediaDataSource mediaDataSource);

    private native void _setDataSource(FileDescriptor fileDescriptor, long j2, long j3);

    private native void _setVideoSurface(Surface surface);

    private native void _setVolume(float f2, float f3);

    private native void _start();

    private native void _stop();

    private boolean attemptDataSource(ContentResolver contentResolver, Uri uri) {
        try {
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
            try {
                setDataSource(assetFileDescriptorOpenAssetFileDescriptor);
                if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                    return true;
                }
                assetFileDescriptorOpenAssetFileDescriptor.close();
                return true;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                        try {
                            assetFileDescriptorOpenAssetFileDescriptor.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (IOException | NullPointerException | SecurityException e2) {
            Log.w(TAG, "Couldn't open " + uri + ": " + e2);
            return false;
        }
    }

    private static boolean availableMimeTypeForExternalSource(String str) {
        return MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanDrmObj() {
        Log.v(TAG, "cleanDrmObj: mDrmObj=" + this.mDrmObj + " mDrmSessionId=" + this.mDrmSessionId);
        byte[] bArr = this.mDrmSessionId;
        if (bArr != null) {
            this.mDrmObj.closeSession(bArr);
            this.mDrmSessionId = null;
        }
        MediaDrm mediaDrm = this.mDrmObj;
        if (mediaDrm != null) {
            mediaDrm.release();
            this.mDrmObj = null;
        }
    }

    public static MediaPlayer create(Context context, Uri uri) {
        return create(context, uri, null);
    }

    private int getAudioStreamType() {
        if (this.mStreamType == Integer.MIN_VALUE) {
            this.mStreamType = _getAudioStreamType();
        }
        return this.mStreamType;
    }

    private static final byte[] getByteArrayFromUUID(UUID uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        byte[] bArr = new byte[16];
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = (7 - i2) * 8;
            bArr[i2] = (byte) (mostSignificantBits >>> i3);
            bArr[i2 + 8] = (byte) (leastSignificantBits >>> i3);
        }
        return bArr;
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

    private static int getPid() {
        if (mPid == 0) {
            mPid = Process.myPid();
        }
        return mPid;
    }

    private static String getProcName() {
        if (mProcName == null) {
            try {
                mProcName = getService().procName(mPid);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in AudioTrack", e2);
            }
        }
        return mProcName;
    }

    private static IRemoteToolkit getService() {
        IRemoteToolkit iRemoteToolkit = sService;
        if (iRemoteToolkit != null) {
            return iRemoteToolkit;
        }
        IRemoteToolkit iRemoteToolkitAsInterface = IRemoteToolkit.Stub.asInterface(ServiceManager.getService(Context.SYU_SERVICE));
        sService = iRemoteToolkitAsInterface;
        return iRemoteToolkitAsInterface;
    }

    private boolean isVideoScalingModeSupported(int i2) {
        return i2 == 1 || i2 == 2;
    }

    private native void nativeSetDataSource(IBinder iBinder, String str, String[] strArr, String[] strArr2);

    private native int native_applyVolumeShaper(VolumeShaper.Configuration configuration, VolumeShaper.Operation operation);

    private final native void native_finalize();

    private final native boolean native_getMetadata(boolean z2, boolean z3, Parcel parcel);

    private native PersistableBundle native_getMetrics();

    private native VolumeShaper.State native_getVolumeShaperState(int i2);

    private static final native void native_init();

    private final native int native_invoke(Parcel parcel, Parcel parcel2);

    public static native int native_pullBatteryData(Parcel parcel);

    private final native int native_setMetadataFilter(Parcel parcel);

    private final native int native_setRetransmitEndpoint(String str, int i2);

    private final native void native_setup(Object obj);

    private void populateInbandTracks() {
        TrackInfo[] inbandTrackInfo = getInbandTrackInfo();
        synchronized (this.mIndexTrackPairs) {
            for (int i2 = 0; i2 < inbandTrackInfo.length; i2++) {
                if (!this.mInbandTrackIndices.get(i2)) {
                    this.mInbandTrackIndices.set(i2);
                    if (inbandTrackInfo[i2].getTrackType() == 4) {
                        this.mIndexTrackPairs.add(Pair.create(Integer.valueOf(i2), this.mSubtitleController.addTrack(inbandTrackInfo[i2].getFormat())));
                    } else {
                        this.mIndexTrackPairs.add(Pair.create(Integer.valueOf(i2), null));
                    }
                }
            }
        }
    }

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        MediaPlayer mediaPlayer = (MediaPlayer) ((WeakReference) obj).get();
        if (mediaPlayer == null) {
            return;
        }
        if (i2 == 1) {
            synchronized (mediaPlayer.mDrmLock) {
                mediaPlayer.mDrmInfoResolved = true;
            }
        } else if (i2 != 200) {
            if (i2 == 210) {
                Log.v(TAG, "postEventFromNative MEDIA_DRM_INFO");
                if (obj2 instanceof Parcel) {
                    DrmInfo drmInfo = new DrmInfo((Parcel) obj2);
                    synchronized (mediaPlayer.mDrmLock) {
                        mediaPlayer.mDrmInfo = drmInfo;
                    }
                } else {
                    Log.w(TAG, "MEDIA_DRM_INFO msg.obj of unexpected type " + obj2);
                }
            }
        } else if (i3 == 2) {
            new Thread(new Runnable() { // from class: android.media.MediaPlayer.6
                @Override // java.lang.Runnable
                public void run() {
                    MediaPlayer.this.start();
                }
            }).start();
            Thread.yield();
        }
        EventHandler eventHandler = mediaPlayer.mEventHandler;
        if (eventHandler != null) {
            mediaPlayer.mEventHandler.sendMessage(eventHandler.obtainMessage(i2, i3, i4, obj2));
        }
    }

    private void prepareDrm_createDrmStep(UUID uuid) throws Exception {
        Log.v(TAG, "prepareDrm_createDrmStep: UUID: " + uuid);
        try {
            this.mDrmObj = new MediaDrm(uuid);
            Log.v(TAG, "prepareDrm_createDrmStep: Created mDrmObj=" + this.mDrmObj);
        } catch (Exception e2) {
            Log.e(TAG, "prepareDrm_createDrmStep: MediaDrm failed with " + e2);
            throw e2;
        }
    }

    private void prepareDrm_openSessionStep(UUID uuid) throws Exception {
        Log.v(TAG, "prepareDrm_openSessionStep: uuid: " + uuid);
        try {
            this.mDrmSessionId = this.mDrmObj.openSession();
            Log.v(TAG, "prepareDrm_openSessionStep: mDrmSessionId=" + this.mDrmSessionId);
            _prepareDrm(getByteArrayFromUUID(uuid), this.mDrmSessionId);
            Log.v(TAG, "prepareDrm_openSessionStep: _prepareDrm/Crypto succeeded");
        } catch (Exception e2) {
            Log.e(TAG, "prepareDrm_openSessionStep: open/crypto failed with " + e2);
            throw e2;
        }
    }

    private void resetDrmState() {
        synchronized (this.mDrmLock) {
            Log.v(TAG, "resetDrmState:  mDrmInfo=" + this.mDrmInfo + " mDrmProvisioningThread=" + this.mDrmProvisioningThread + " mPrepareDrmInProgress=" + this.mPrepareDrmInProgress + " mActiveDrmScheme=" + this.mActiveDrmScheme);
            this.mDrmInfoResolved = false;
            this.mDrmInfo = null;
            ProvisioningThread provisioningThread = this.mDrmProvisioningThread;
            if (provisioningThread != null) {
                try {
                    provisioningThread.join();
                } catch (InterruptedException e2) {
                    Log.w(TAG, "resetDrmState: ProvThread.join Exception " + e2);
                }
                this.mDrmProvisioningThread = null;
                this.mPrepareDrmInProgress = false;
                this.mActiveDrmScheme = false;
                cleanDrmObj();
            } else {
                this.mPrepareDrmInProgress = false;
                this.mActiveDrmScheme = false;
                cleanDrmObj();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean resumePrepareDrm(UUID uuid) {
        Log.v(TAG, "resumePrepareDrm: uuid: " + uuid);
        try {
            prepareDrm_openSessionStep(uuid);
            this.mDrmUUID = uuid;
            this.mActiveDrmScheme = true;
            return true;
        } catch (Exception e2) {
            Log.w(TAG, "HandleProvisioninig: Thread run _prepareDrm resume failed with " + e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scanInternalSubtitleTracks() {
        setSubtitleAnchor();
        populateInbandTracks();
        SubtitleController subtitleController = this.mSubtitleController;
        if (subtitleController != null) {
            subtitleController.selectDefaultTrack();
        }
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
        Pair<Integer, SubtitleTrack> pair;
        Integer num;
        populateInbandTracks();
        try {
            Pair<Integer, SubtitleTrack> pair2 = this.mIndexTrackPairs.get(i2);
            SubtitleTrack subtitleTrack = pair2.second;
            if (subtitleTrack == null) {
                selectOrDeselectInbandTrack(pair2.first.intValue(), z2);
                return;
            }
            SubtitleController subtitleController = this.mSubtitleController;
            if (subtitleController == null) {
                return;
            }
            if (!z2) {
                if (subtitleController.getSelectedTrack() == subtitleTrack) {
                    this.mSubtitleController.selectTrack(null);
                    return;
                } else {
                    Log.w(TAG, "trying to deselect track that was not selected");
                    return;
                }
            }
            if (subtitleTrack.getTrackType() == 3) {
                int selectedTrack = getSelectedTrack(3);
                synchronized (this.mIndexTrackPairs) {
                    if (selectedTrack >= 0) {
                        if (selectedTrack < this.mIndexTrackPairs.size() && (num = (pair = this.mIndexTrackPairs.get(selectedTrack)).first) != null && pair.second == null) {
                            selectOrDeselectInbandTrack(num.intValue(), false);
                        }
                    }
                }
            }
            this.mSubtitleController.selectTrack(subtitleTrack);
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
    }

    private native boolean setParameter(int i2, Parcel parcel);

    /* JADX INFO: Access modifiers changed from: private */
    public void startImpl() {
        baseStart();
        stayAwake(true);
        fytNotifyService("play");
        _start();
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

    private void updateSurfaceScreenOn() {
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.setKeepScreenOn(this.mScreenOnWhilePlaying && this.mStayAwake);
        }
    }

    public void addSubtitleSource(final InputStream inputStream, final MediaFormat mediaFormat) {
        if (inputStream != null) {
            synchronized (this.mOpenSubtitleSources) {
                this.mOpenSubtitleSources.add(inputStream);
            }
        } else {
            Log.w(TAG, "addSubtitleSource called with null InputStream");
        }
        getMediaTimeProvider();
        final HandlerThread handlerThread = new HandlerThread("SubtitleReadThread", 9);
        handlerThread.start();
        new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: android.media.MediaPlayer.4
            private int addTrack() {
                SubtitleTrack subtitleTrackAddTrack;
                if (inputStream == null || MediaPlayer.this.mSubtitleController == null || (subtitleTrackAddTrack = MediaPlayer.this.mSubtitleController.addTrack(mediaFormat)) == null) {
                    return 901;
                }
                Scanner scanner = new Scanner(inputStream, "UTF-8");
                String next = scanner.useDelimiter("\\A").next();
                synchronized (MediaPlayer.this.mOpenSubtitleSources) {
                    MediaPlayer.this.mOpenSubtitleSources.remove(inputStream);
                }
                scanner.close();
                synchronized (MediaPlayer.this.mIndexTrackPairs) {
                    MediaPlayer.this.mIndexTrackPairs.add(Pair.create(null, subtitleTrackAddTrack));
                }
                Handler handler = MediaPlayer.this.mTimeProvider.mEventHandler;
                handler.sendMessage(handler.obtainMessage(1, 4, 0, Pair.create(subtitleTrackAddTrack, next.getBytes())));
                return 803;
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
            throw new IllegalArgumentException(c.j("Illegal mimeType for timed text source: ", str2));
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

    public void consumeDrmRights() {
        Parcel parcelObtain = Parcel.obtain();
        setParameter(1500, parcelObtain);
        parcelObtain.recycle();
    }

    @Override // android.media.VolumeAutomation
    public VolumeShaper createVolumeShaper(VolumeShaper.Configuration configuration) {
        return new VolumeShaper(configuration, this);
    }

    public void deselectTrack(int i2) {
        selectOrDeselectTrack(i2, false);
    }

    public PlaybackParams easyPlaybackParams(float f2, int i2) {
        PlaybackParams playbackParams = new PlaybackParams();
        playbackParams.allowDefaults();
        if (i2 == 0) {
            playbackParams.setSpeed(f2).setPitch(1.0f);
        } else if (i2 == 1) {
            playbackParams.setSpeed(f2).setPitch(1.0f).setAudioFallbackMode(2);
        } else {
            if (i2 != 2) {
                throw new IllegalArgumentException(c.e("Audio playback mode ", i2, " is not supported"));
            }
            playbackParams.setSpeed(f2).setPitch(f2);
        }
        return playbackParams;
    }

    public void finalize() {
        fytNotifyService("stop");
        baseRelease();
        native_finalize();
    }

    public void fytNotifyService(String str) {
        IRemoteToolkit service = getService();
        int pid = getPid();
        String procName = getProcName();
        if (this.debugmediaplayer) {
            Log.e(TAGFYT, ">>> mediaplayer  pid =  " + pid + "mMyProcName=" + procName + "state =" + str);
        }
        try {
            service.sendToSyuServiceAudioInformation(0, null, null, new String[]{mProcName, str});
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in start", e2);
        }
    }

    public native int getAudioSessionId();

    public native BufferingParams getBufferingParams();

    public native int getCurrentPosition();

    public native BufferingParams getDefaultBufferingParams();

    public DrmInfo getDrmInfo() {
        DrmInfo drmInfoMakeCopy;
        synchronized (this.mDrmLock) {
            if (!this.mDrmInfoResolved && this.mDrmInfo == null) {
                Log.v(TAG, "The Player has not been prepared yet");
                throw new IllegalStateException("The Player has not been prepared yet");
            }
            DrmInfo drmInfo = this.mDrmInfo;
            drmInfoMakeCopy = drmInfo != null ? drmInfo.makeCopy() : null;
        }
        return drmInfoMakeCopy;
    }

    public String getDrmPropertyString(String str) {
        String propertyString;
        Log.v(TAG, "getDrmPropertyString: propertyName: " + str);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme && !this.mDrmConfigAllowed) {
                Log.w(TAG, "getDrmPropertyString NoDrmSchemeException");
                throw new NoDrmSchemeException("getDrmPropertyString: Has to prepareDrm() first.");
            }
            try {
                propertyString = this.mDrmObj.getPropertyString(str);
            } catch (Exception e2) {
                Log.w(TAG, "getDrmPropertyString Exception " + e2);
                throw e2;
            }
        }
        Log.v(TAG, "getDrmPropertyString: propertyName: " + str + " --> value: " + propertyString);
        return propertyString;
    }

    public native int getDuration();

    /* JADX WARN: Code duplicated, block: B:13:0x0049 A[Catch: Exception -> 0x0044, NotProvisionedException -> 0x007f, all -> 0x009d, TryCatch #3 {NotProvisionedException -> 0x007f, Exception -> 0x0044, blocks: (B:8:0x0041, B:13:0x0049, B:15:0x0050), top: B:28:0x0041, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x004f  */
    public MediaDrm.KeyRequest getKeyRequest(byte[] bArr, byte[] bArr2, String str, int i2, Map<String, String> map) {
        HashMap<String, String> map2;
        MediaDrm.KeyRequest keyRequest;
        Log.v(TAG, "getKeyRequest:  keySetId: " + bArr + " initData:" + bArr2 + " mimeType: " + str + " keyType: " + i2 + " optionalParameters: " + map);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme) {
                Log.e(TAG, "getKeyRequest NoDrmSchemeException");
                throw new NoDrmSchemeException("getKeyRequest: Has to set a DRM scheme first.");
            }
            if (i2 != 3) {
                try {
                    bArr = this.mDrmSessionId;
                    byte[] bArr3 = bArr;
                    if (map != null) {
                        map2 = new HashMap<>(map);
                    } else {
                        map2 = null;
                    }
                    keyRequest = this.mDrmObj.getKeyRequest(bArr3, bArr2, str, i2, map2);
                    Log.v(TAG, "getKeyRequest:   --> request: " + keyRequest);
                } catch (NotProvisionedException unused) {
                    Log.w(TAG, "getKeyRequest NotProvisionedException: Unexpected. Shouldn't have reached here.");
                    throw new IllegalStateException("getKeyRequest: Unexpected provisioning error.");
                } catch (Exception e2) {
                    Log.w(TAG, "getKeyRequest Exception " + e2);
                    throw e2;
                }
            } else {
                byte[] bArr4 = bArr;
                if (map != null) {
                    map2 = new HashMap<>(map);
                } else {
                    map2 = null;
                }
                keyRequest = this.mDrmObj.getKeyRequest(bArr4, bArr2, str, i2, map2);
                Log.v(TAG, "getKeyRequest:   --> request: " + keyRequest);
            }
            throw th;
        }
        return keyRequest;
    }

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

    public PersistableBundle getMetrics() {
        return native_getMetrics();
    }

    public native PlaybackParams getPlaybackParams();

    public int getSelectedTrack(int i2) {
        SubtitleTrack selectedTrack;
        SubtitleController subtitleController = this.mSubtitleController;
        if (subtitleController != null && ((i2 == 4 || i2 == 3) && (selectedTrack = subtitleController.getSelectedTrack()) != null)) {
            synchronized (this.mIndexTrackPairs) {
                for (int i3 = 0; i3 < this.mIndexTrackPairs.size(); i3++) {
                    if (this.mIndexTrackPairs.get(i3).second == selectedTrack && selectedTrack.getTrackType() == i2) {
                        return i3;
                    }
                }
            }
        }
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IMEDIA_PLAYER);
            parcelObtain.writeInt(7);
            parcelObtain.writeInt(i2);
            invoke(parcelObtain, parcelObtain2);
            int i4 = parcelObtain2.readInt();
            synchronized (this.mIndexTrackPairs) {
                for (int i5 = 0; i5 < this.mIndexTrackPairs.size(); i5++) {
                    Integer num = this.mIndexTrackPairs.get(i5).first;
                    if (num != null && num.intValue() == i4) {
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                        return i5;
                    }
                }
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return -1;
            }
        } catch (Throwable th) {
            parcelObtain.recycle();
            parcelObtain2.recycle();
            throw th;
        }
    }

    public native SyncParams getSyncParams();

    public MediaTimestamp getTimestamp() {
        try {
            return new MediaTimestamp(((long) getCurrentPosition()) * 1000, System.nanoTime(), isPlaying() ? getPlaybackParams().getSpeed() : 0.0f);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    public TrackInfo[] getTrackInfo() {
        TrackInfo[] trackInfoArr;
        TrackInfo[] inbandTrackInfo = getInbandTrackInfo();
        synchronized (this.mIndexTrackPairs) {
            int size = this.mIndexTrackPairs.size();
            trackInfoArr = new TrackInfo[size];
            for (int i2 = 0; i2 < size; i2++) {
                Pair<Integer, SubtitleTrack> pair = this.mIndexTrackPairs.get(i2);
                Integer num = pair.first;
                if (num != null) {
                    trackInfoArr[i2] = inbandTrackInfo[num.intValue()];
                } else {
                    SubtitleTrack subtitleTrack = pair.second;
                    trackInfoArr[i2] = new TrackInfo(subtitleTrack.getTrackType(), subtitleTrack.getFormat());
                }
            }
        }
        return trackInfoArr;
    }

    public native int getVideoHeight();

    public native int getVideoWidth();

    public void invoke(Parcel parcel, Parcel parcel2) {
        int iNative_invoke = native_invoke(parcel, parcel2);
        parcel2.setDataPosition(0);
        if (iNative_invoke != 0) {
            throw new RuntimeException(c.d("failure code: ", iNative_invoke));
        }
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
        synchronized (this.mIndexTrackPairs) {
            for (Pair<Integer, SubtitleTrack> pair : this.mIndexTrackPairs) {
                Integer num = pair.first;
                if (num != null && pair.second == subtitleTrack) {
                    this.mSelectedSubtitleTrackIndex = num.intValue();
                    break;
                }
            }
        }
        int i3 = this.mSelectedSubtitleTrackIndex;
        if (i3 >= 0) {
            try {
                selectOrDeselectInbandTrack(i3, true);
            } catch (IllegalStateException unused2) {
            }
            setOnSubtitleDataListener(this.mSubtitleDataListener);
        }
    }

    public void pause() {
        stayAwake(false);
        fytNotifyService("pause");
        _pause();
        basePause();
    }

    @Override // android.media.PlayerBase
    public int playerApplyVolumeShaper(VolumeShaper.Configuration configuration, VolumeShaper.Operation operation) {
        return native_applyVolumeShaper(configuration, operation);
    }

    @Override // android.media.PlayerBase
    public VolumeShaper.State playerGetVolumeShaperState(int i2) {
        return native_getVolumeShaperState(i2);
    }

    @Override // android.media.PlayerBase
    public void playerPause() {
        pause();
    }

    @Override // android.media.PlayerBase
    public int playerSetAuxEffectSendLevel(boolean z2, float f2) {
        if (z2) {
            f2 = 0.0f;
        }
        _setAuxEffectSendLevel(f2);
        return 0;
    }

    @Override // android.media.PlayerBase
    public void playerSetVolume(boolean z2, float f2, float f3) {
        if (z2) {
            f2 = 0.0f;
        }
        if (z2) {
            f3 = 0.0f;
        }
        _setVolume(f2, f3);
    }

    @Override // android.media.PlayerBase
    public void playerStart() {
        start();
    }

    @Override // android.media.PlayerBase
    public void playerStop() {
        stop();
    }

    public void prepare() {
        _prepare();
        scanInternalSubtitleTracks();
        synchronized (this.mDrmLock) {
            this.mDrmInfoResolved = true;
        }
    }

    public native void prepareAsync();

    public void prepareDrm(UUID uuid) {
        boolean z2;
        OnDrmPreparedHandlerDelegate onDrmPreparedHandlerDelegate;
        Log.v(TAG, "prepareDrm: uuid: " + uuid + " mOnDrmConfigHelper: " + this.mOnDrmConfigHelper);
        synchronized (this.mDrmLock) {
            if (this.mDrmInfo == null) {
                Log.e(TAG, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call.");
                throw new IllegalStateException("prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call.");
            }
            if (this.mActiveDrmScheme) {
                String str = "prepareDrm(): Wrong usage: There is already an active DRM scheme with " + this.mDrmUUID;
                Log.e(TAG, str);
                throw new IllegalStateException(str);
            }
            if (this.mPrepareDrmInProgress) {
                Log.e(TAG, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call.");
                throw new IllegalStateException("prepareDrm(): Wrong usage: There is already a pending prepareDrm call.");
            }
            if (this.mDrmProvisioningInProgress) {
                Log.e(TAG, "prepareDrm(): Unexpectd: Provisioning is already in progress.");
                throw new IllegalStateException("prepareDrm(): Unexpectd: Provisioning is already in progress.");
            }
            cleanDrmObj();
            z2 = true;
            this.mPrepareDrmInProgress = true;
            onDrmPreparedHandlerDelegate = this.mOnDrmPreparedHandlerDelegate;
            try {
                prepareDrm_createDrmStep(uuid);
                this.mDrmConfigAllowed = true;
            } catch (Exception e2) {
                Log.w(TAG, "prepareDrm(): Exception ", e2);
                this.mPrepareDrmInProgress = false;
                throw e2;
            }
        }
        OnDrmConfigHelper onDrmConfigHelper = this.mOnDrmConfigHelper;
        if (onDrmConfigHelper != null) {
            onDrmConfigHelper.onDrmConfig(this);
        }
        synchronized (this.mDrmLock) {
            try {
                this.mDrmConfigAllowed = false;
                try {
                    try {
                        try {
                            try {
                                prepareDrm_openSessionStep(uuid);
                                this.mDrmUUID = uuid;
                                this.mActiveDrmScheme = true;
                                if (!this.mDrmProvisioningInProgress) {
                                    this.mPrepareDrmInProgress = false;
                                }
                            } catch (Throwable th) {
                                th = th;
                                z2 = false;
                                if (!this.mDrmProvisioningInProgress) {
                                    this.mPrepareDrmInProgress = false;
                                }
                                if (z2) {
                                    cleanDrmObj();
                                }
                                throw th;
                            }
                        } catch (IllegalStateException unused) {
                            Log.e(TAG, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm().");
                            throw new IllegalStateException("prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm().");
                        }
                    } catch (NotProvisionedException unused2) {
                        Log.w(TAG, "prepareDrm: NotProvisionedException");
                        int iHandleProvisioninig = HandleProvisioninig(uuid);
                        if (iHandleProvisioninig != 0) {
                            if (iHandleProvisioninig == 1) {
                                Log.e(TAG, "prepareDrm: Provisioning was required but failed due to a network error.");
                                throw new ProvisioningNetworkErrorException("prepareDrm: Provisioning was required but failed due to a network error.");
                            }
                            if (iHandleProvisioninig != 2) {
                                Log.e(TAG, "prepareDrm: Post-provisioning preparation failed.");
                                throw new IllegalStateException("prepareDrm: Post-provisioning preparation failed.");
                            }
                            Log.e(TAG, "prepareDrm: Provisioning was required but the request was denied by the server.");
                            throw new ProvisioningServerErrorException("prepareDrm: Provisioning was required but the request was denied by the server.");
                        }
                        if (!this.mDrmProvisioningInProgress) {
                            this.mPrepareDrmInProgress = false;
                        }
                        z2 = false;
                    }
                } catch (Exception e3) {
                    Log.e(TAG, "prepareDrm: Exception " + e3);
                    throw e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (!z2 || onDrmPreparedHandlerDelegate == null) {
            return;
        }
        onDrmPreparedHandlerDelegate.notifyClient(0);
    }

    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        byte[] bArrProvideKeyResponse;
        Log.v(TAG, "provideKeyResponse: keySetId: " + bArr + " response: " + bArr2);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme) {
                Log.e(TAG, "getKeyRequest NoDrmSchemeException");
                throw new NoDrmSchemeException("getKeyRequest: Has to set a DRM scheme first.");
            }
            if (bArr == null) {
                try {
                    bArr3 = this.mDrmSessionId;
                } catch (NotProvisionedException unused) {
                    Log.w(TAG, "provideKeyResponse NotProvisionedException: Unexpected. Shouldn't have reached here.");
                    throw new IllegalStateException("provideKeyResponse: Unexpected provisioning error.");
                } catch (Exception e2) {
                    Log.w(TAG, "provideKeyResponse Exception " + e2);
                    throw e2;
                }
            } else {
                bArr3 = bArr;
            }
            bArrProvideKeyResponse = this.mDrmObj.provideKeyResponse(bArr3, bArr2);
            Log.v(TAG, "provideKeyResponse: keySetId: " + bArr + " response: " + bArr2 + " --> " + bArrProvideKeyResponse);
        }
        return bArrProvideKeyResponse;
    }

    public void release() {
        baseRelease();
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
        this.mOnDrmConfigHelper = null;
        this.mOnDrmInfoHandlerDelegate = null;
        this.mOnDrmPreparedHandlerDelegate = null;
        resetDrmState();
        _release();
    }

    public void releaseDrm() {
        Log.v(TAG, "releaseDrm:");
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme) {
                Log.e(TAG, "releaseDrm(): No active DRM scheme to release.");
                throw new NoDrmSchemeException("releaseDrm: No active DRM scheme to release.");
            }
            try {
                _releaseDrm();
                cleanDrmObj();
                this.mActiveDrmScheme = false;
            } catch (IllegalStateException e2) {
                Log.w(TAG, "releaseDrm: Exception ", e2);
                throw new IllegalStateException("releaseDrm: The player is not in a valid state.");
            } catch (Exception e3) {
                Log.e(TAG, "releaseDrm: Exception ", e3);
            }
        }
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
        synchronized (this.mIndexTrackPairs) {
            this.mIndexTrackPairs.clear();
            this.mInbandTrackIndices.clear();
        }
        resetDrmState();
    }

    public void restoreKeys(byte[] bArr) {
        Log.v(TAG, "restoreKeys: keySetId: " + bArr);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme) {
                Log.w(TAG, "restoreKeys NoDrmSchemeException");
                throw new NoDrmSchemeException("restoreKeys: Has to set a DRM scheme first.");
            }
            try {
                this.mDrmObj.restoreKeys(this.mDrmSessionId, bArr);
            } catch (Exception e2) {
                Log.w(TAG, "restoreKeys Exception " + e2);
                throw e2;
            }
        }
    }

    public void seekTo(long j2, int i2) {
        if (i2 < 0 || i2 > 3) {
            throw new IllegalArgumentException(c.d("Illegal seek mode: ", i2));
        }
        long j3 = 2147483647L;
        if (j2 <= 2147483647L) {
            j3 = -2147483648L;
            if (j2 < -2147483648L) {
                Log.w(TAG, "seekTo offset " + j2 + " is too small, cap to -2147483648");
            }
            _seekTo(j2, i2);
        }
        Log.w(TAG, "seekTo offset " + j2 + " is too large, cap to 2147483647");
        j2 = j3;
        _seekTo(j2, i2);
    }

    public void selectTrack(int i2) {
        selectOrDeselectTrack(i2, true);
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (audioAttributes == null) {
            throw new IllegalArgumentException("Cannot set AudioAttributes to null");
        }
        baseUpdateAudioAttributes(audioAttributes);
        this.mUsage = audioAttributes.getUsage();
        this.mBypassInterruptionPolicy = (audioAttributes.getAllFlags() & 64) != 0;
        Parcel parcelObtain = Parcel.obtain();
        audioAttributes.writeToParcel(parcelObtain, 1);
        setParameter(1400, parcelObtain);
        parcelObtain.recycle();
    }

    public native void setAudioSessionId(int i2);

    public void setAudioStreamType(int i2) {
        PlayerBase.deprecateStreamTypeForPlayback(i2, TAG, "setAudioStreamType()");
        baseUpdateAudioAttributes(new AudioAttributes.Builder().setInternalLegacyStreamType(i2).build());
        _setAudioStreamType(i2);
        this.mStreamType = i2;
    }

    public void setAuxEffectSendLevel(float f2) {
        baseSetAuxEffectSendLevel(f2);
    }

    public native void setBufferingParams(BufferingParams bufferingParams);

    public void setDataSource(Context context, Uri uri) throws IOException {
        setDataSource(context, uri, (Map<String, String>) null, (List<HttpCookie>) null);
    }

    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
        _setVideoSurface(surfaceHolder != null ? surfaceHolder.getSurface() : null);
        updateSurfaceScreenOn();
    }

    public void setDrmPropertyString(String str, String str2) {
        Log.v(TAG, "setDrmPropertyString: propertyName: " + str + " value: " + str2);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme && !this.mDrmConfigAllowed) {
                Log.w(TAG, "setDrmPropertyString NoDrmSchemeException");
                throw new NoDrmSchemeException("setDrmPropertyString: Has to prepareDrm() first.");
            }
            try {
                this.mDrmObj.setPropertyString(str, str2);
            } catch (Exception e2) {
                Log.w(TAG, "setDrmPropertyString Exception " + e2);
                throw e2;
            }
        }
    }

    public native void setLooping(boolean z2);

    public int setMetadataFilter(Set<Integer> set, Set<Integer> set2) {
        Parcel parcelNewRequest = newRequest();
        int size = ((set2.size() + set.size() + 1 + 1) * 4) + parcelNewRequest.dataSize();
        if (parcelNewRequest.dataCapacity() < size) {
            parcelNewRequest.setDataCapacity(size);
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

    public void setOnDrmConfigHelper(OnDrmConfigHelper onDrmConfigHelper) {
        synchronized (this.mDrmLock) {
            this.mOnDrmConfigHelper = onDrmConfigHelper;
        }
    }

    public void setOnDrmInfoListener(OnDrmInfoListener onDrmInfoListener) {
        setOnDrmInfoListener(onDrmInfoListener, null);
    }

    public void setOnDrmPreparedListener(OnDrmPreparedListener onDrmPreparedListener) {
        setOnDrmPreparedListener(onDrmPreparedListener, null);
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

    public void setOnTimedMetaDataAvailableListener(OnTimedMetaDataAvailableListener onTimedMetaDataAvailableListener) {
        this.mOnTimedMetaDataAvailableListener = onTimedMetaDataAvailableListener;
    }

    public void setOnTimedTextListener(OnTimedTextListener onTimedTextListener) {
        this.mOnTimedTextListener = onTimedTextListener;
    }

    public void setOnVideoSizeChangedListener(OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public native void setPlaybackParams(PlaybackParams playbackParams);

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
        if (iNative_setRetransmitEndpoint != 0) {
            throw new IllegalArgumentException(c.d("Illegal re-transmit endpoint; native ret ", iNative_setRetransmitEndpoint));
        }
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

    public native void setSyncParams(SyncParams syncParams);

    public void setVideoScalingMode(int i2) {
        if (!isVideoScalingModeSupported(i2)) {
            throw new IllegalArgumentException(c.e("Scaling mode ", i2, " is not supported"));
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

    public void setVolume(float f2, float f3) {
        baseSetVolume(f2, f3);
    }

    public void setWakeMode(Context context, int i2) {
        boolean z2 = true;
        if (SystemProperties.getBoolean("audio.offload.ignore_setawake", false)) {
            m.A("IGNORING setWakeMode ", i2, TAG);
            return;
        }
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
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
        final int startDelayMs = getStartDelayMs();
        if (startDelayMs == 0) {
            startImpl();
        } else {
            new Thread() { // from class: android.media.MediaPlayer.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(startDelayMs);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    MediaPlayer.this.baseSetStartDelayMs(0);
                    try {
                        MediaPlayer.this.startImpl();
                    } catch (IllegalStateException unused) {
                    }
                }
            }.start();
        }
    }

    public void stop() {
        stayAwake(false);
        fytNotifyService("stop");
        _stop();
        baseStop();
    }

    public static MediaPlayer create(Context context, Uri uri, SurfaceHolder surfaceHolder) {
        int iNewAudioSessionId = AudioSystem.newAudioSessionId();
        if (iNewAudioSessionId <= 0) {
            iNewAudioSessionId = 0;
        }
        return create(context, uri, surfaceHolder, null, iNewAudioSessionId);
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> map, List<HttpCookie> list) throws IOException {
        CookieHandler cookieHandler;
        if (context == null) {
            throw new NullPointerException("context param can not be null.");
        }
        if (uri == null) {
            throw new NullPointerException("uri param can not be null.");
        }
        if (list != null && (cookieHandler = CookieHandler.getDefault()) != null && !(cookieHandler instanceof CookieManager)) {
            throw new IllegalArgumentException("The cookie handler has to be of CookieManager type when cookies are provided.");
        }
        ContentResolver contentResolver = context.getContentResolver();
        String scheme = uri.getScheme();
        String authorityWithoutUserId = ContentProvider.getAuthorityWithoutUserId(uri.getAuthority());
        if (ContentResolver.SCHEME_FILE.equals(scheme)) {
            setDataSource(uri.getPath());
            return;
        }
        if (!"content".equals(scheme) || !"settings".equals(authorityWithoutUserId)) {
            if (attemptDataSource(contentResolver, uri)) {
                return;
            }
            setDataSource(uri.toString(), map, list);
            return;
        }
        int defaultType = RingtoneManager.getDefaultType(uri);
        Uri cacheForType = RingtoneManager.getCacheForType(defaultType, context.getUserId());
        Uri actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(context, defaultType);
        if (Settings.System.DEFAULT_RINGTONE_URI.equals(uri) && actualDefaultRingtoneUri == null && cacheForType != null) {
            cacheForType = Uri.parse(cacheForType.toString() + "sprd_ringtone");
        }
        if (attemptDataSource(contentResolver, cacheForType) || attemptDataSource(contentResolver, actualDefaultRingtoneUri)) {
            return;
        }
        setDataSource(uri.toString(), map, list);
    }

    public void setOnDrmInfoListener(OnDrmInfoListener onDrmInfoListener, Handler handler) {
        synchronized (this.mDrmLock) {
            try {
                if (onDrmInfoListener != null) {
                    this.mOnDrmInfoHandlerDelegate = new OnDrmInfoHandlerDelegate(this, onDrmInfoListener, handler);
                } else {
                    this.mOnDrmInfoHandlerDelegate = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setOnDrmPreparedListener(OnDrmPreparedListener onDrmPreparedListener, Handler handler) {
        synchronized (this.mDrmLock) {
            try {
                if (onDrmPreparedListener != null) {
                    this.mOnDrmPreparedHandlerDelegate = new OnDrmPreparedHandlerDelegate(this, onDrmPreparedListener, handler);
                } else {
                    this.mOnDrmPreparedHandlerDelegate = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setVolume(float f2) {
        setVolume(f2, f2);
    }

    private synchronized void setSubtitleAnchor() {
        if (this.mSubtitleController == null && ActivityThread.currentApplication() != null) {
            final HandlerThread handlerThread = new HandlerThread("SetSubtitleAnchorThread");
            handlerThread.start();
            new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: android.media.MediaPlayer.2
                @Override // java.lang.Runnable
                public void run() {
                    Application applicationCurrentApplication = ActivityThread.currentApplication();
                    MediaPlayer mediaPlayer = MediaPlayer.this;
                    mediaPlayer.mSubtitleController = new SubtitleController(applicationCurrentApplication, mediaPlayer.mTimeProvider, MediaPlayer.this);
                    MediaPlayer.this.mSubtitleController.setAnchor(new SubtitleController.Anchor() { // from class: android.media.MediaPlayer.2.1
                        @Override // android.media.SubtitleController.Anchor
                        public Looper getSubtitleLooper() {
                            return Looper.getMainLooper();
                        }

                        @Override // android.media.SubtitleController.Anchor
                        public void setSubtitleWidget(SubtitleTrack.RenderingWidget renderingWidget) {
                        }
                    });
                    handlerThread.getLooper().quitSafely();
                }
            });
            try {
                handlerThread.join();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                Log.w(TAG, "failed to join SetSubtitleAnchorThread");
            }
        }
    }

    public static MediaPlayer create(Context context, Uri uri, SurfaceHolder surfaceHolder, AudioAttributes audioAttributes, int i2) {
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            if (audioAttributes == null) {
                audioAttributes = new AudioAttributes.Builder().build();
            }
            mediaPlayer.setAudioAttributes(audioAttributes);
            mediaPlayer.setAudioSessionId(i2);
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

    public static class TrackInfo implements Parcelable {
        static final Parcelable.Creator<TrackInfo> CREATOR = new Parcelable.Creator<TrackInfo>() { // from class: android.media.MediaPlayer.TrackInfo.1
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
        public static final int MEDIA_TRACK_TYPE_METADATA = 5;
        public static final int MEDIA_TRACK_TYPE_SUBTITLE = 4;
        public static final int MEDIA_TRACK_TYPE_TIMEDTEXT = 3;
        public static final int MEDIA_TRACK_TYPE_UNKNOWN = 0;
        public static final int MEDIA_TRACK_TYPE_VIDEO = 1;
        final MediaFormat mFormat;
        final int mTrackType;

        public TrackInfo(Parcel parcel) {
            int i2 = parcel.readInt();
            this.mTrackType = i2;
            MediaFormat mediaFormatCreateSubtitleFormat = MediaFormat.createSubtitleFormat(parcel.readString(), parcel.readString());
            this.mFormat = mediaFormatCreateSubtitleFormat;
            if (i2 == 4) {
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

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append(getClass().getName());
            sb.append('{');
            int i2 = this.mTrackType;
            if (i2 == 1) {
                sb.append("VIDEO");
            } else if (i2 == 2) {
                sb.append("AUDIO");
            } else if (i2 == 3) {
                sb.append("TIMEDTEXT");
            } else if (i2 != 4) {
                sb.append(IccCardConstants.INTENT_VALUE_ICC_UNKNOWN);
            } else {
                sb.append("SUBTITLE");
            }
            sb.append(", " + this.mFormat.toString());
            sb.append("}");
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mTrackType);
            parcel.writeString(getLanguage());
            if (this.mTrackType == 4) {
                parcel.writeString(this.mFormat.getString(MediaFormat.KEY_MIME));
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

    public void seekTo(int i2) {
        seekTo(i2, 0);
    }

    public static MediaPlayer create(Context context, int i2) {
        int iNewAudioSessionId = AudioSystem.newAudioSessionId();
        if (iNewAudioSessionId <= 0) {
            iNewAudioSessionId = 0;
        }
        return create(context, i2, null, iNewAudioSessionId);
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

    public static MediaPlayer create(Context context, int i2, AudioAttributes audioAttributes, int i3) {
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = context.getResources().openRawResourceFd(i2);
            if (assetFileDescriptorOpenRawResourceFd == null) {
                return null;
            }
            MediaPlayer mediaPlayer = new MediaPlayer();
            if (audioAttributes == null) {
                audioAttributes = new AudioAttributes.Builder().build();
            }
            mediaPlayer.setAudioAttributes(audioAttributes);
            mediaPlayer.setAudioSessionId(i3);
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

    public void addTimedTextSource(FileDescriptor fileDescriptor, String str) {
        addTimedTextSource(fileDescriptor, 0L, 576460752303423487L, str);
    }

    public void addTimedTextSource(FileDescriptor fileDescriptor, final long j2, final long j3, String str) {
        if (availableMimeTypeForExternalSource(str)) {
            try {
                final FileDescriptor fileDescriptorDup = Libcore.os.dup(fileDescriptor);
                MediaFormat mediaFormat = new MediaFormat();
                mediaFormat.setString(MediaFormat.KEY_MIME, str);
                mediaFormat.setInteger(MediaFormat.KEY_IS_TIMED_TEXT, 1);
                if (this.mSubtitleController == null) {
                    setSubtitleAnchor();
                }
                if (!this.mSubtitleController.hasRendererFor(mediaFormat)) {
                    this.mSubtitleController.registerRenderer(new SRTRenderer(ActivityThread.currentApplication(), this.mEventHandler));
                }
                final SubtitleTrack subtitleTrackAddTrack = this.mSubtitleController.addTrack(mediaFormat);
                synchronized (this.mIndexTrackPairs) {
                    this.mIndexTrackPairs.add(Pair.create(null, subtitleTrackAddTrack));
                }
                getMediaTimeProvider();
                final HandlerThread handlerThread = new HandlerThread("TimedTextReadThread", 9);
                handlerThread.start();
                new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: android.media.MediaPlayer.5
                    private int addTrack() {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            Libcore.os.lseek(fileDescriptorDup, j2, OsConstants.SEEK_SET);
                            byte[] bArr = new byte[4096];
                            long j4 = 0;
                            while (true) {
                                long j5 = j3;
                                if (j4 >= j5) {
                                    break;
                                }
                                int i2 = IoBridge.read(fileDescriptorDup, bArr, 0, (int) Math.min(4096, j5 - j4));
                                if (i2 < 0) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i2);
                                j4 += (long) i2;
                            }
                            Handler handler = MediaPlayer.this.mTimeProvider.mEventHandler;
                            handler.sendMessage(handler.obtainMessage(1, 4, 0, Pair.create(subtitleTrackAddTrack, byteArrayOutputStream.toByteArray())));
                            try {
                                return 803;
                            } catch (ErrnoException e2) {
                                return 803;
                            }
                        } catch (Exception e3) {
                            Log.e(MediaPlayer.TAG, e3.getMessage(), e3);
                            try {
                                return 900;
                            } catch (ErrnoException e4) {
                                return 900;
                            }
                        } finally {
                            try {
                                Libcore.os.close(fileDescriptorDup);
                            } catch (ErrnoException e5) {
                                Log.e(MediaPlayer.TAG, e5.getMessage(), e5);
                            }
                        }
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
                return;
            } catch (ErrnoException e2) {
                Log.e(TAG, e2.getMessage(), e2);
                throw new RuntimeException(e2);
            }
        }
        throw new IllegalArgumentException(c.j("Illegal mimeType for timed text source: ", str));
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        setDataSource(context, uri, map, (List<HttpCookie>) null);
    }

    public void setDataSource(String str) throws IOException {
        setDataSource(str, (Map<String, String>) null, (List<HttpCookie>) null);
    }

    public void setDataSource(String str, Map<String, String> map) throws IOException {
        setDataSource(str, map, (List<HttpCookie>) null);
    }

    private void setDataSource(String str, Map<String, String> map, List<HttpCookie> list) throws IOException {
        String[] strArr;
        String[] strArr2;
        if (map != null) {
            strArr = new String[map.size()];
            strArr2 = new String[map.size()];
            int i2 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                strArr[i2] = entry.getKey();
                strArr2[i2] = entry.getValue();
                i2++;
            }
        } else {
            strArr = null;
            strArr2 = null;
        }
        setDataSource(str, strArr, strArr2, list);
    }

    private void setDataSource(String str, String[] strArr, String[] strArr2, List<HttpCookie> list) throws IOException {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (ContentResolver.SCHEME_FILE.equals(scheme)) {
            str = uri.getPath();
        } else if (scheme != null) {
            nativeSetDataSource(MediaHTTPService.createHttpServiceBinderIfNecessary(str, list), str, strArr, strArr2);
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            setDataSource(fileInputStream.getFD());
            fileInputStream.close();
            return;
        }
        throw new IOException("setDataSource failed.");
    }

    public void setDataSource(AssetFileDescriptor assetFileDescriptor) {
        Preconditions.checkNotNull(assetFileDescriptor);
        if (assetFileDescriptor.getDeclaredLength() < 0) {
            setDataSource(assetFileDescriptor.getFileDescriptor());
        } else {
            setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getDeclaredLength());
        }
    }

    public void setDataSource(FileDescriptor fileDescriptor) {
        setDataSource(fileDescriptor, 0L, 576460752303423487L);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j2, long j3) {
        _setDataSource(fileDescriptor, j2, j3);
    }

    public void setDataSource(MediaDataSource mediaDataSource) {
        _setDataSource(mediaDataSource);
    }
}
