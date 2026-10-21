package android.media;

import android.app.m;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.EnvironmentEx;
import android.os.SystemProperties;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.MediaStore;
import android.provider.Settings;
import android.provider.SettingsEx;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.TelephonyProperties;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class MediaScannerExUtils {
    private static final String EMULATE_EXTERNAL_PATH = "/storage/sdcard0";
    private static final String TAG = "MediaScannerExUtils";
    private MediaScanner mMediaScanner;

    public MediaScannerExUtils(MediaScanner mediaScanner) {
        this.mMediaScanner = mediaScanner;
    }

    private static void computeBucketValues(String str, ContentValues contentValues) {
        File parentFile = new File(str).getParentFile();
        if (parentFile == null) {
            parentFile = new File("/");
        }
        String lowerCase = parentFile.toString().toLowerCase();
        String name = parentFile.getName();
        contentValues.put("bucket_id", Integer.valueOf(lowerCase.hashCode()));
        contentValues.put("bucket_display_name", name);
    }

    public static String getOldPath() {
        return EMULATE_EXTERNAL_PATH;
    }

    public static String getSetting(String str, int i2) {
        if (!isMultiSimEnabledEx()) {
            return str;
        }
        return str + i2;
    }

    private static int getStorageId(Context context, String str) {
        StorageVolume storageVolume = ((StorageManager) context.getSystemService(StorageManager.class)).getStorageVolume(new File(str));
        if (storageVolume != null) {
            return storageVolume.getStorageId();
        }
        m.s("Missing volume for ", str, "; assuming invalid", TAG);
        return 0;
    }

    public static boolean isMultiSimEnabledEx() {
        String str = SystemProperties.get(TelephonyProperties.PROPERTY_MULTI_SIM_CONFIG);
        return str.equals("dsds") || str.equals("dsda") || str.equals("tsts");
    }

    public static void saveUriToSettingsDB(ContentResolver contentResolver, String str, Uri uri, long j2) {
        Settings.System.putString(contentResolver, str, ContentUris.withAppendedId(uri, j2).toString());
    }

    public static void updateNewPathValues(Context context, ContentValues contentValues, String str) {
        if (str == null || !str.startsWith(getOldPath())) {
            return;
        }
        String strReplace = str.replace(getOldPath(), EnvironmentEx.getExternalStoragePath().getPath());
        contentValues.put("_data", strReplace);
        computeBucketValues(strReplace, contentValues);
        contentValues.put(MediaStore.Files.FileColumns.STORAGE_ID, Integer.valueOf(getStorageId(context, strReplace)));
    }

    public boolean isNeedScanRingtone(MediaScanner.FileEntry fileEntry) {
        int i2 = 0;
        while (true) {
            MediaScanner mediaScanner = this.mMediaScanner;
            if (i2 >= mediaScanner.mPhoneCount) {
                return false;
            }
            if (!mediaScanner.mDefaultRingtoneSet[i2] && mediaScanner.mClient.doesPathHaveFilename(fileEntry.mPath, mediaScanner.mDefaultRingtoneFilename[i2])) {
                return true;
            }
            i2++;
        }
    }

    public void setDefaultRingtoneFileNamesEx() {
        this.mMediaScanner.mPhoneCount = TelephonyManager.getDefault().getPhoneCount();
        MediaScanner mediaScanner = this.mMediaScanner;
        int i2 = mediaScanner.mPhoneCount;
        mediaScanner.mDefaultRingtoneSet = new boolean[i2];
        mediaScanner.mDefaultRingtoneFilename = new String[i2];
        mediaScanner.mDefaultMessageSet = new boolean[i2];
        mediaScanner.mDefaultMessageFilename = new String[i2];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            MediaScanner mediaScanner2 = this.mMediaScanner;
            if (i4 >= mediaScanner2.mPhoneCount) {
                break;
            }
            mediaScanner2.mDefaultRingtoneSet[i4] = false;
            mediaScanner2.mDefaultRingtoneFilename[i4] = "";
            mediaScanner2.mDefaultMessageSet[i4] = false;
            mediaScanner2.mDefaultMessageFilename[i4] = "";
            i4++;
        }
        while (true) {
            MediaScanner mediaScanner3 = this.mMediaScanner;
            if (i3 >= mediaScanner3.mPhoneCount) {
                return;
            }
            mediaScanner3.mDefaultRingtoneFilename[i3] = SystemProperties.get("ro.config." + getSetting(Settings.System.RINGTONE, i3));
            if ("".equals(this.mMediaScanner.mDefaultRingtoneFilename[i3])) {
                this.mMediaScanner.mDefaultRingtoneFilename[i3] = SystemProperties.get("ro.config.ringtone");
            }
            this.mMediaScanner.mDefaultMessageFilename[i3] = SystemProperties.get("ro.config." + getSetting(SettingsEx.SystemEx.DEFAULT_MESSAGE, i3));
            if ("".equals(this.mMediaScanner.mDefaultMessageFilename[i3])) {
                this.mMediaScanner.mDefaultMessageFilename[i3] = SystemProperties.get("ro.config.default_message");
            }
            i3++;
        }
    }

    public void setRingtoneIfNotSetForMultiSim(Context context, String str, Uri uri, long j2, int i2) {
        String setting = getSetting(str, i2);
        if (this.mMediaScanner.wasRingtoneAlreadySet(setting)) {
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        if (TextUtils.isEmpty(Settings.System.getString(contentResolver, setting))) {
            RingtoneManagerEx.setActualDefaultRingtoneUri(context, RingtoneManager.getDefaultType(Settings.System.getUriFor(str)), ContentUris.withAppendedId(uri, j2), i2);
            Log.d(TAG, "ringtoneName = " + setting + ", uri = " + uri.toString() + ",rowId = " + j2);
        }
        Settings.System.putInt(contentResolver, this.mMediaScanner.settingSetIndicatorName(setting), 1);
    }
}
