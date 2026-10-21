package android.media;

import android.accessibilityservice.c;
import android.app.Activity;
import android.app.backup.FullBackup;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.database.StaleDataException;
import android.net.Uri;
import android.os.Environment;
import android.os.EnvironmentEx;
import android.os.ParcelFileDescriptor;
import android.os.SystemProperties;
import android.provider.MediaStore;
import android.provider.Settings;
import android.provider.SettingsEx;
import android.system.Os;
import android.system.OsConstants;
import android.telephony.SubscriptionManager;
import android.util.Log;
import com.android.internal.telephony.TelephonyProperties;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes.dex */
public class RingtoneManagerEx extends RingtoneManager {
    public static final String EXTRA_RINGTONE_INCLUDE_EXTERNAL = "android.intent.extra.ringtone.INCLUDE_EXTERNAL";
    private static final String[] MEDIA_COLUMNS = {"_id", "title", "\"" + MediaStore.Audio.Media.EXTERNAL_CONTENT_URI + "\"", "title_key"};
    private static final String TAG = "RingtoneManagerEx";
    public static final int TYPE_MESSAGE = 8;
    public static final String UNIQUE_ERROR = "UNIQUE_ERROR";
    private final Activity mActivity;
    private final Context mContext;
    protected Cursor mCustomCursor;

    public RingtoneManagerEx(Activity activity) {
        super(activity);
        this.mActivity = activity;
        this.mContext = activity;
    }

    public static Uri getActualDefaultRingtoneUri(Context context, int i2, int i3) {
        String settingForType = getSettingForType(i2, i3);
        if (settingForType == null) {
            return null;
        }
        String string = Settings.System.getString(context.getContentResolver(), settingForType);
        Uri uri = string != null ? Uri.parse(string) : null;
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                return uri;
            }
            parcelFileDescriptorOpenFileDescriptor.close();
            return uri;
        } catch (FileNotFoundException unused) {
            return getProfileDefaultUri(context, i2, i3);
        } catch (Exception e2) {
            Log.d(TAG, e2.toString());
            return uri;
        }
    }

    public static Uri getCacheForType(int i2, int i3, int i4) {
        if ((i2 & 1) != 0) {
            return ContentProvider.maybeAddUserId(getCacheUriForType(Settings.System.RINGTONE_CACHE, i4), i3);
        }
        if ((i2 & 2) != 0) {
            return ContentProvider.maybeAddUserId(Settings.System.NOTIFICATION_SOUND_CACHE_URI, i3);
        }
        if ((i2 & 4) != 0) {
            return ContentProvider.maybeAddUserId(Settings.System.ALARM_ALERT_CACHE_URI, i3);
        }
        return null;
    }

    public static Uri getCacheUriForType(String str, int i2) {
        if (!isMultiSimEnabledEx()) {
            return Settings.System.getUriFor(str);
        }
        return Settings.System.getUriFor(str + i2);
    }

    public static Uri getProfileDefaultUri(Context context, int i2, int i3) {
        String string = Settings.System.getString(context.getContentResolver(), SettingsEx.SystemEx.DEFAULT_RINGTONE + i3);
        Uri uri = string != null ? Uri.parse(string) : null;
        String string2 = Settings.System.getString(context.getContentResolver(), SettingsEx.SystemEx.DEFAULT_NOTIFICATION);
        Uri uri2 = string2 != null ? Uri.parse(string2) : null;
        String string3 = Settings.System.getString(context.getContentResolver(), SettingsEx.SystemEx.DEFAULT_MESSAGE + i3);
        Uri uri3 = string3 != null ? Uri.parse(string3) : null;
        String string4 = Settings.System.getString(context.getContentResolver(), SettingsEx.SystemEx.DEFAULT_ALARM);
        Uri uri4 = string4 != null ? Uri.parse(string4) : null;
        if ((i2 & 1) != 0) {
            return uri;
        }
        if ((i2 & 2) != 0) {
            return uri2;
        }
        if ((i2 & 8) != 0) {
            return uri3;
        }
        if ((i2 & 4) != 0) {
            return uri4;
        }
        return null;
    }

    private static Ringtone getRingtone(Context context, Uri uri, int i2) {
        try {
            Ringtone ringtone = new Ringtone(context, true);
            if (i2 >= 0) {
                ringtone.setStreamType(i2);
            }
            ringtone.setUri(uri);
            return ringtone;
        } catch (Exception e2) {
            Log.e(TAG, "Failed to open ringtone " + uri + ": " + e2);
            return null;
        }
    }

    public static int getRingtonePhoneId(Uri uri) {
        if (uri == null) {
            return SubscriptionManager.getPhoneId(SubscriptionManager.getDefaultSubscriptionId());
        }
        String string = uri.toString();
        String string2 = Settings.System.DEFAULT_RINGTONE_URI.toString();
        return (!string.startsWith(string2) || string.length() == string2.length()) ? SubscriptionManager.getPhoneId(SubscriptionManager.getDefaultSubscriptionId()) : Integer.parseInt(string.substring(string2.length(), string2.length() + 1));
    }

    public static String getSetting(String str, int i2) {
        if (!isMultiSimEnabledEx()) {
            return str;
        }
        return str + i2;
    }

    public static String getSettingForType(int i2, int i3) {
        if ((i2 & 1) != 0) {
            return getSetting(Settings.System.RINGTONE, i3);
        }
        if ((i2 & 2) != 0) {
            return Settings.System.NOTIFICATION_SOUND;
        }
        if ((i2 & 8) != 0) {
            return getSetting(SettingsEx.SystemEx.MESSAGE_TONE, i3);
        }
        if ((i2 & 4) != 0) {
            return Settings.System.ALARM_ALERT;
        }
        return null;
    }

    private static Uri getUriFromCursor(Cursor cursor) {
        return ContentUris.withAppendedId(Uri.parse(cursor.getString(2)), cursor.getLong(0));
    }

    private static boolean isMultiSimEnabledEx() {
        String str = SystemProperties.get(TelephonyProperties.PROPERTY_MULTI_SIM_CONFIG);
        return str.equals("dsds") || str.equals("dsda") || str.equals("tsts");
    }

    private static InputStream openRingtone(Context context, Uri uri) throws IOException {
        try {
            return context.getContentResolver().openInputStream(uri);
        } catch (IOException | SecurityException e2) {
            Log.w(TAG, "Failed to open directly; attempting failover: " + e2);
            try {
                return new ParcelFileDescriptor.AutoCloseInputStream(((AudioManager) context.getSystemService("audio")).getRingtonePlayer().openRingtone(uri));
            } catch (Exception e3) {
                throw new IOException(e3);
            }
        }
    }

    private Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Activity activity = this.mActivity;
        return activity != null ? activity.managedQuery(uri, strArr, str, strArr2, str2) : this.mContext.getContentResolver().query(uri, strArr, str, strArr2, str2);
    }

    public static void setActualDefaultRingtoneUri(Context context, int i2, Uri uri, int i3) {
        ContentResolver contentResolver = context.getContentResolver();
        String settingForType = getSettingForType(i2, i3);
        if (settingForType == null) {
            return;
        }
        Settings.System.putString(context.getContentResolver(), settingForType, uri != null ? uri.toString() : null);
        if (uri != null) {
            Uri cacheForType = getCacheForType(i2, context.getUserId(), i3);
            try {
                InputStream inputStreamOpenRingtone = openRingtone(context, uri);
                try {
                    OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(cacheForType);
                    try {
                        Streams.copy(inputStreamOpenRingtone, outputStreamOpenOutputStream);
                        if (outputStreamOpenOutputStream != null) {
                            outputStreamOpenOutputStream.close();
                        }
                        if (inputStreamOpenRingtone != null) {
                            inputStreamOpenRingtone.close();
                        }
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            if (outputStreamOpenOutputStream != null) {
                                try {
                                    outputStreamOpenOutputStream.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        if (inputStreamOpenRingtone != null) {
                            try {
                                inputStreamOpenRingtone.close();
                            } catch (Throwable th6) {
                                th4.addSuppressed(th6);
                            }
                        }
                        throw th5;
                    }
                }
            } catch (IOException e2) {
                Log.w(TAG, "Failed to cache ringtone: " + e2);
            }
        }
    }

    @Override // android.media.RingtoneManager
    public Uri addCustomExternalRingtone(Uri uri, int i2) throws Throwable {
        if (!Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {
            throw new IOException("External storage is not mounted. Unable to install ringtones.");
        }
        String type = this.mContext.getContentResolver().getType(uri);
        if (type == null || !(type.startsWith("audio/") || type.equals("application/ogg"))) {
            throw new IllegalArgumentException(c.k("Ringtone file must have MIME type \"audio/*\". Given file has MIME type \"", type, "\""));
        }
        String externalDirectoryForType = RingtoneManager.getExternalDirectoryForType(i2);
        String fileDisplayNameFromUri = Utils.getFileDisplayNameFromUri(this.mContext, uri);
        try {
            if (Os.access(Environment.getExternalStoragePublicDirectory(externalDirectoryForType).getAbsolutePath() + "/" + fileDisplayNameFromUri, OsConstants.F_OK)) {
                throw new IOException(UNIQUE_ERROR);
            }
        } catch (Exception unused) {
        }
        File uniqueExternalFile = Utils.getUniqueExternalFile(this.mContext, externalDirectoryForType, fileDisplayNameFromUri, type);
        InputStream inputStreamOpenInputStream = this.mContext.getContentResolver().openInputStream(uri);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(uniqueExternalFile);
            try {
                Streams.copy(inputStreamOpenInputStream, fileOutputStream);
                fileOutputStream.close();
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                try {
                    RingtoneManager.NewRingtoneScanner newRingtoneScanner = new RingtoneManager.NewRingtoneScanner(uniqueExternalFile);
                    try {
                        Uri uriTake = newRingtoneScanner.take();
                        newRingtoneScanner.close();
                        return uriTake;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                newRingtoneScanner.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                } catch (InterruptedException e2) {
                    throw new IOException("Audio file failed to scan as a ringtone", e2);
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        } catch (Throwable th7) {
            try {
                throw th7;
            } catch (Throwable th8) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Throwable th9) {
                        th7.addSuppressed(th9);
                    }
                }
                throw th8;
            }
        }
    }

    public int getCunstomRingtonePosition(Uri uri) {
        Cursor externalMusics;
        if (uri == null || (externalMusics = getExternalMusics()) == null || !externalMusics.moveToFirst()) {
            return -1;
        }
        Uri uri2 = null;
        String str = null;
        while (!externalMusics.isAfterLast()) {
            String string = externalMusics.getString(2);
            if (uri2 == null || !string.equals(str)) {
                uri2 = Uri.parse(string);
            }
            if (uri.equals(ContentUris.withAppendedId(uri2, externalMusics.getLong(0)))) {
                return externalMusics.getPosition();
            }
            externalMusics.moveToNext();
            str = string;
        }
        return -1;
    }

    public Ringtone getCustomRingtone(int i2) {
        if (getStopPreviousRingtone() && getPreviousRingtone() != null) {
            getPreviousRingtone().stop();
        }
        Ringtone ringtone = getRingtone(this.mContext, getCustomRingtoneUri(i2), inferStreamType());
        setPreviousRingtone(ringtone);
        return ringtone;
    }

    public Uri getCustomRingtoneUri(int i2) {
        Cursor externalMusics = getExternalMusics();
        if (externalMusics != null && externalMusics.moveToPosition(i2)) {
            return getUriFromCursor(externalMusics);
        }
        return null;
    }

    public Cursor getExternalMusics() {
        String externalStoragePathState = EnvironmentEx.getExternalStoragePathState();
        String internalStoragePathState = EnvironmentEx.getInternalStoragePathState();
        if (!externalStoragePathState.equals(Environment.MEDIA_MOUNTED) && !internalStoragePathState.equals(Environment.MEDIA_MOUNTED) && !externalStoragePathState.equals(Environment.MEDIA_MOUNTED_READ_ONLY) && !internalStoragePathState.equals(Environment.MEDIA_MOUNTED_READ_ONLY)) {
            return null;
        }
        try {
            Cursor cursor = this.mCustomCursor;
            if (cursor != null && !cursor.isClosed() && this.mCustomCursor.requery()) {
                return this.mCustomCursor;
            }
        } catch (StaleDataException e2) {
            Log.e(TAG, "requery error: cursor is closed" + e2);
        }
        Cursor cursorQuery = (externalStoragePathState.equals(Environment.MEDIA_MOUNTED) || internalStoragePathState.equals(Environment.MEDIA_MOUNTED) || externalStoragePathState.equals(Environment.MEDIA_MOUNTED_READ_ONLY) || internalStoragePathState.equals(Environment.MEDIA_MOUNTED_READ_ONLY)) ? query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, MEDIA_COLUMNS, "title != '' AND is_music=1 AND (is_drm!=1 OR is_drm is NULL )", null, "title_key") : null;
        this.mCustomCursor = cursorQuery;
        return cursorQuery;
    }

    public Ringtone getPreviousRingtone() {
        return this.mPreviousRingtone;
    }

    public Ringtone setPreviousRingtone(Ringtone ringtone) {
        this.mPreviousRingtone = ringtone;
        return ringtone;
    }

    public static String getSetting(String str, long j2) {
        if (!isMultiSimEnabledEx()) {
            return str;
        }
        return str + j2;
    }

    public RingtoneManagerEx(Context context) {
        super(context);
        this.mActivity = null;
        this.mContext = context;
    }
}
