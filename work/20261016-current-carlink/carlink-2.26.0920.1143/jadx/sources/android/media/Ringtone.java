package android.media;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.RemoteException;
import android.provider.MediaStore;
import android.util.Log;
import com.android.internal.R;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Ringtone {
    private static final boolean LOGD = true;
    private static final String MEDIA_SELECTION = "mime_type LIKE 'audio/%' OR mime_type IN ('application/ogg', 'application/x-flac')";
    private static final String TAG = "Ringtone";
    private final boolean mAllowRemote;
    private final AudioManager mAudioManager;
    private final Context mContext;
    private MediaPlayer mLocalPlayer;
    private final IRingtonePlayer mRemotePlayer;
    private final Binder mRemoteToken;
    private String mTitle;
    private Uri mUri;
    private static final String[] MEDIA_COLUMNS = {"_id", "_data", "title"};
    private static final ArrayList<Ringtone> sActiveRingtones = new ArrayList<>();
    private final MyOnCompletionListener mCompletionListener = new MyOnCompletionListener();
    private AudioAttributes mAudioAttributes = new AudioAttributes.Builder().setUsage(6).setContentType(4).build();
    private boolean mIsLooping = false;
    private float mVolume = 1.0f;
    private final Object mPlaybackSettingsLock = new Object();

    public class MyOnCompletionListener implements MediaPlayer.OnCompletionListener {
        public MyOnCompletionListener() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            synchronized (Ringtone.sActiveRingtones) {
                Ringtone.sActiveRingtones.remove(Ringtone.this);
            }
            mediaPlayer.setOnCompletionListener(null);
        }
    }

    public Ringtone(Context context, boolean z2) {
        this.mContext = context;
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        this.mAudioManager = audioManager;
        this.mAllowRemote = z2;
        this.mRemotePlayer = z2 ? audioManager.getRingtonePlayer() : null;
        this.mRemoteToken = z2 ? new Binder() : null;
    }

    private void applyPlaybackProperties_sync() {
        IRingtonePlayer iRingtonePlayer;
        MediaPlayer mediaPlayer = this.mLocalPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(this.mVolume);
            this.mLocalPlayer.setLooping(this.mIsLooping);
        } else {
            if (!this.mAllowRemote || (iRingtonePlayer = this.mRemotePlayer) == null) {
                Log.w(TAG, "Neither local nor remote player available when applying playback properties");
                return;
            }
            try {
                iRingtonePlayer.setPlaybackProperties(this.mRemoteToken, this.mVolume, this.mIsLooping);
            } catch (RemoteException e2) {
                Log.w(TAG, "Problem setting playback properties: ", e2);
            }
        }
    }

    private void destroyLocalPlayer() {
        MediaPlayer mediaPlayer = this.mLocalPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setOnCompletionListener(null);
            this.mLocalPlayer.reset();
            this.mLocalPlayer.release();
            this.mLocalPlayer = null;
            ArrayList<Ringtone> arrayList = sActiveRingtones;
            synchronized (arrayList) {
                arrayList.remove(this);
            }
        }
    }

    private boolean playFallbackRingtone() {
        if (this.mAudioManager.getStreamVolume(AudioAttributes.toLegacyStreamType(this.mAudioAttributes)) == 0) {
            return false;
        }
        int defaultType = RingtoneManager.getDefaultType(this.mUri);
        if (defaultType != -1 && RingtoneManager.getActualDefaultRingtoneUri(this.mContext, defaultType) == null) {
            Log.w(TAG, "not playing fallback for " + this.mUri);
            return false;
        }
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.mContext.getResources().openRawResourceFd(R.raw.fallbackring);
            if (assetFileDescriptorOpenRawResourceFd == null) {
                Log.e(TAG, "Could not load fallback ringtone");
                return false;
            }
            this.mLocalPlayer = new MediaPlayer();
            if (assetFileDescriptorOpenRawResourceFd.getDeclaredLength() < 0) {
                this.mLocalPlayer.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            } else {
                this.mLocalPlayer.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getDeclaredLength());
            }
            this.mLocalPlayer.setAudioAttributes(this.mAudioAttributes);
            synchronized (this.mPlaybackSettingsLock) {
                applyPlaybackProperties_sync();
            }
            this.mLocalPlayer.prepare();
            startLocalPlayer();
            assetFileDescriptorOpenRawResourceFd.close();
            return true;
        } catch (Resources.NotFoundException unused) {
            Log.e(TAG, "Fallback ringtone does not exist");
            return false;
        } catch (IOException unused2) {
            destroyLocalPlayer();
            Log.e(TAG, "Failed to open fallback ringtone");
            return false;
        }
    }

    private void startLocalPlayer() {
        if (this.mLocalPlayer == null) {
            return;
        }
        ArrayList<Ringtone> arrayList = sActiveRingtones;
        synchronized (arrayList) {
            arrayList.add(this);
        }
        this.mLocalPlayer.setOnCompletionListener(this.mCompletionListener);
        this.mLocalPlayer.start();
    }

    public void finalize() {
        MediaPlayer mediaPlayer = this.mLocalPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
    }

    public AudioAttributes getAudioAttributes() {
        return this.mAudioAttributes;
    }

    @Deprecated
    public int getStreamType() {
        return AudioAttributes.toLegacyStreamType(this.mAudioAttributes);
    }

    public String getTitle(Context context) throws Throwable {
        String str = this.mTitle;
        if (str != null) {
            return str;
        }
        String title = getTitle(context, this.mUri, true, this.mAllowRemote);
        this.mTitle = title;
        return title;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public boolean isPlaying() {
        IRingtonePlayer iRingtonePlayer;
        MediaPlayer mediaPlayer = this.mLocalPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.isPlaying();
        }
        if (!this.mAllowRemote || (iRingtonePlayer = this.mRemotePlayer) == null) {
            Log.w(TAG, "Neither local nor remote playback available");
            return false;
        }
        try {
            return iRingtonePlayer.isPlaying(this.mRemoteToken);
        } catch (RemoteException e2) {
            Log.w(TAG, "Problem checking ringtone: " + e2);
            return false;
        }
    }

    public void play() {
        Uri uri;
        boolean z2;
        float f2;
        if (this.mLocalPlayer != null) {
            if (this.mAudioManager.getStreamVolume(AudioAttributes.toLegacyStreamType(this.mAudioAttributes)) != 0) {
                startLocalPlayer();
                return;
            }
            return;
        }
        if (!this.mAllowRemote || this.mRemotePlayer == null || (uri = this.mUri) == null) {
            if (playFallbackRingtone()) {
                return;
            }
            Log.w(TAG, "Neither local nor remote playback available");
            return;
        }
        Uri canonicalUri = uri.getCanonicalUri();
        synchronized (this.mPlaybackSettingsLock) {
            z2 = this.mIsLooping;
            f2 = this.mVolume;
        }
        try {
            this.mRemotePlayer.play(this.mRemoteToken, canonicalUri, this.mAudioAttributes, f2, z2);
        } catch (RemoteException e2) {
            if (playFallbackRingtone()) {
                return;
            }
            Log.w(TAG, "Problem playing ringtone: " + e2);
        }
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (audioAttributes == null) {
            throw new IllegalArgumentException("Invalid null AudioAttributes for Ringtone");
        }
        this.mAudioAttributes = audioAttributes;
        setUri(this.mUri);
    }

    public void setLooping(boolean z2) {
        synchronized (this.mPlaybackSettingsLock) {
            this.mIsLooping = z2;
            applyPlaybackProperties_sync();
        }
    }

    @Deprecated
    public void setStreamType(int i2) {
        PlayerBase.deprecateStreamTypeForPlayback(i2, TAG, "setStreamType()");
        setAudioAttributes(new AudioAttributes.Builder().setInternalLegacyStreamType(i2).build());
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public void setUri(Uri uri) {
        destroyLocalPlayer();
        this.mUri = uri;
        if (uri == null) {
            return;
        }
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mLocalPlayer = mediaPlayer;
        try {
            mediaPlayer.setDataSource(this.mContext, this.mUri);
            this.mLocalPlayer.setAudioAttributes(this.mAudioAttributes);
            synchronized (this.mPlaybackSettingsLock) {
                applyPlaybackProperties_sync();
            }
            this.mLocalPlayer.prepare();
        } catch (IOException | SecurityException e2) {
            destroyLocalPlayer();
            if (!this.mAllowRemote) {
                Log.w(TAG, "Remote playback not allowed: " + e2);
            }
        }
        if (this.mLocalPlayer != null) {
            Log.d(TAG, "Successfully created local player");
        } else {
            Log.d(TAG, "Problem opening; delegating to remote player");
        }
    }

    public void setVolume(float f2) {
        synchronized (this.mPlaybackSettingsLock) {
            if (f2 < 0.0f) {
                f2 = 0.0f;
            }
            if (f2 > 1.0f) {
                f2 = 1.0f;
            }
            this.mVolume = f2;
            applyPlaybackProperties_sync();
        }
    }

    public void stop() {
        IRingtonePlayer iRingtonePlayer;
        if (this.mLocalPlayer != null) {
            destroyLocalPlayer();
            return;
        }
        if (!this.mAllowRemote || (iRingtonePlayer = this.mRemotePlayer) == null) {
            return;
        }
        try {
            iRingtonePlayer.stop(this.mRemoteToken);
        } catch (RemoteException e2) {
            Log.w(TAG, "Problem stopping ringtone: " + e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0096  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ad A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:57:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [android.database.Cursor] */
    public static String getTitle(Context context, Uri uri, boolean z2, boolean z3) throws Throwable {
        String string;
        String string2;
        Cursor cursorQuery;
        ContentResolver contentResolver = context.getContentResolver();
        if (uri != null) {
            String authorityWithoutUserId = ContentProvider.getAuthorityWithoutUserId(uri.getAuthority());
            ?? r7 = 0;
            string = null;
            string = null;
            string = null;
            string = null;
            string = null;
            try {
                if (!"settings".equals(authorityWithoutUserId)) {
                    try {
                        if (MediaStore.AUTHORITY.equals(authorityWithoutUserId)) {
                            cursorQuery = contentResolver.query(uri, MEDIA_COLUMNS, z3 ? null : MEDIA_SELECTION, null, null);
                            if (cursorQuery != null) {
                                try {
                                    if (cursorQuery.getCount() == 1) {
                                        cursorQuery.moveToFirst();
                                        String string3 = cursorQuery.getString(2);
                                        cursorQuery.close();
                                        return string3;
                                    }
                                } catch (SecurityException unused) {
                                    IRingtonePlayer ringtonePlayer = z3 ? ((AudioManager) context.getSystemService("audio")).getRingtonePlayer() : null;
                                    if (ringtonePlayer != null) {
                                        try {
                                            string = ringtonePlayer.getTitle(uri);
                                        } catch (RemoteException unused2) {
                                        }
                                    }
                                    if (cursorQuery != null) {
                                    }
                                    if (string == null) {
                                        string = uri.getLastPathSegment();
                                    }
                                    if (string == null) {
                                        return string;
                                    }
                                    string2 = context.getString(R.string.ringtone_unknown);
                                    if (string2 == null) {
                                        return "";
                                    }
                                    return string2;
                                }
                            }
                        } else {
                            cursorQuery = null;
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                    } catch (SecurityException unused3) {
                        cursorQuery = null;
                    } catch (Throwable th) {
                        th = th;
                        if (r7 != 0) {
                            r7.close();
                        }
                        throw th;
                    }
                    if (string == null) {
                        string = uri.getLastPathSegment();
                    }
                } else if (z2 != 0) {
                    string = context.getString(R.string.ringtone_default_with_actual, getTitle(context, RingtoneManagerEx.getActualDefaultRingtoneUri(context, RingtoneManager.getDefaultType(uri), RingtoneManagerEx.getRingtonePhoneId(uri)), false, z3));
                }
            } catch (Throwable th2) {
                th = th2;
                r7 = z2;
            }
        } else {
            string = context.getString(R.string.ringtone_silent);
        }
        if (string == null) {
            return string;
        }
        string2 = context.getString(R.string.ringtone_unknown);
        if (string2 == null) {
            return "";
        }
        return string2;
    }
}
