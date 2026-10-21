package android.os;

import android.content.pm.AppCloneUserInfo;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class Environment {
    public static String DIRECTORY_ALARMS = null;

    @Deprecated
    public static final String DIRECTORY_ANDROID = "Android";
    public static String DIRECTORY_DCIM = null;
    public static String DIRECTORY_DOCUMENTS = null;
    public static String DIRECTORY_DOWNLOADS = null;
    public static String DIRECTORY_MOVIES = null;
    public static String DIRECTORY_MUSIC = null;
    public static String DIRECTORY_NOTIFICATIONS = null;
    public static String DIRECTORY_PICTURES = null;
    public static String DIRECTORY_PODCASTS = null;
    public static String DIRECTORY_RINGTONES = null;
    public static final String DIR_ANDROID = "Android";
    private static final String DIR_CACHE = "cache";
    private static final String DIR_DATA = "data";
    private static final String DIR_FILES = "files";
    private static final String DIR_MEDIA = "media";
    private static final String DIR_OBB = "obb";
    private static final String ENV_EXTERNAL_STORAGE = "EXTERNAL_STORAGE";
    public static final String MEDIA_BAD_REMOVAL = "bad_removal";
    public static final String MEDIA_CHECKING = "checking";
    public static final String MEDIA_EJECTING = "ejecting";
    public static final String MEDIA_MOUNTED = "mounted";
    public static final String MEDIA_MOUNTED_READ_ONLY = "mounted_ro";
    public static final String MEDIA_NOFS = "nofs";
    public static final String MEDIA_REMOVED = "removed";
    public static final String MEDIA_SHARED = "shared";
    public static final String MEDIA_UNKNOWN = "unknown";
    public static final String MEDIA_UNMOUNTABLE = "unmountable";
    public static final String MEDIA_UNMOUNTED = "unmounted";
    public static final String[] STANDARD_DIRECTORIES;
    private static final String TAG = "Environment";
    private static UserEnvironment sCompatUser;
    private static UserEnvironment sCurrentUser;
    private static boolean sUserRequired;
    private static final String ENV_ANDROID_ROOT = "ANDROID_ROOT";
    private static final File DIR_ANDROID_ROOT = getDirectory(ENV_ANDROID_ROOT, "/system");
    private static final String ENV_ANDROID_DATA = "ANDROID_DATA";
    private static final File DIR_ANDROID_DATA = getDirectory(ENV_ANDROID_DATA, "/data");
    private static final String ENV_ANDROID_EXPAND = "ANDROID_EXPAND";
    private static final File DIR_ANDROID_EXPAND = getDirectory(ENV_ANDROID_EXPAND, "/mnt/expand");
    private static final String ENV_ANDROID_STORAGE = "ANDROID_STORAGE";
    private static final File DIR_ANDROID_STORAGE = getDirectory(ENV_ANDROID_STORAGE, "/storage");
    private static final String ENV_DOWNLOAD_CACHE = "DOWNLOAD_CACHE";
    private static final File DIR_DOWNLOAD_CACHE = getDirectory(ENV_DOWNLOAD_CACHE, "/cache");
    private static final String ENV_OEM_ROOT = "OEM_ROOT";
    private static final File DIR_OEM_ROOT = getDirectory(ENV_OEM_ROOT, "/oem");
    private static final String ENV_ODM_ROOT = "ODM_ROOT";
    private static final File DIR_ODM_ROOT = getDirectory(ENV_ODM_ROOT, "/odm");
    private static final String ENV_VENDOR_ROOT = "VENDOR_ROOT";
    private static final File DIR_VENDOR_ROOT = getDirectory(ENV_VENDOR_ROOT, "/vendor");

    public static class UserEnvironment {
        private final int mUserId;

        public UserEnvironment(int i2) {
            this.mUserId = i2;
        }

        public File[] buildExternalStorageAndroidDataDirs() {
            return Environment.buildPaths(getExternalDirs(), "Android", "data");
        }

        public File[] buildExternalStorageAndroidObbDirs() {
            return Environment.buildPaths(getExternalDirs(), "Android", "obb");
        }

        public File[] buildExternalStorageAppCacheDirs(String str) {
            return Environment.buildPaths(getExternalDirs(), "Android", "data", str, Environment.DIR_CACHE);
        }

        public File[] buildExternalStorageAppDataDirs(String str) {
            return Environment.buildPaths(getExternalDirs(), "Android", "data", str);
        }

        public File[] buildExternalStorageAppFilesDirs(String str) {
            return Environment.buildPaths(getExternalDirs(), "Android", "data", str, Environment.DIR_FILES);
        }

        public File[] buildExternalStorageAppMediaDirs(String str) {
            return Environment.buildPaths(getExternalDirs(), "Android", "media", str);
        }

        public File[] buildExternalStorageAppObbDirs(String str) {
            return Environment.buildPaths(getExternalDirs(), "Android", "obb", str);
        }

        public File[] buildExternalStoragePublicDirs(String str) {
            return Environment.buildPaths(getExternalDirs(), str);
        }

        public File[] getExternalDirs() {
            StorageVolume[] volumeList = StorageManager.getVolumeList(this.mUserId, 256);
            File[] fileArr = new File[volumeList.length];
            for (int i2 = 0; i2 < volumeList.length; i2++) {
                fileArr[i2] = volumeList[i2].getPathFile();
            }
            return fileArr;
        }

        @Deprecated
        public File getExternalStorageDirectory() {
            return getExternalDirs()[0];
        }

        @Deprecated
        public File getExternalStoragePublicDirectory(String str) {
            return buildExternalStoragePublicDirs(str)[0];
        }
    }

    static {
        initForCurrentUser();
        DIRECTORY_MUSIC = "Music";
        DIRECTORY_PODCASTS = "Podcasts";
        DIRECTORY_RINGTONES = "Ringtones";
        DIRECTORY_ALARMS = "Alarms";
        DIRECTORY_NOTIFICATIONS = "Notifications";
        DIRECTORY_PICTURES = "Pictures";
        DIRECTORY_MOVIES = "Movies";
        DIRECTORY_DOWNLOADS = "Download";
        DIRECTORY_DCIM = "DCIM";
        DIRECTORY_DOCUMENTS = "Documents";
        STANDARD_DIRECTORIES = new String[]{"Music", "Podcasts", "Ringtones", "Alarms", "Notifications", "Pictures", "Movies", "Download", "DCIM", "Documents"};
    }

    public static File[] buildExternalStorageAndroidDataDirs() {
        throwIfUserRequired();
        return sCurrentUser.buildExternalStorageAndroidDataDirs();
    }

    public static File[] buildExternalStorageAppCacheDirs(String str) {
        throwIfUserRequired();
        return sCurrentUser.buildExternalStorageAppCacheDirs(str);
    }

    public static File[] buildExternalStorageAppDataDirs(String str) {
        throwIfUserRequired();
        return sCurrentUser.buildExternalStorageAppDataDirs(str);
    }

    public static File[] buildExternalStorageAppFilesDirs(String str) {
        throwIfUserRequired();
        return sCurrentUser.buildExternalStorageAppFilesDirs(str);
    }

    public static File[] buildExternalStorageAppMediaDirs(String str) {
        throwIfUserRequired();
        return sCurrentUser.buildExternalStorageAppMediaDirs(str);
    }

    public static File[] buildExternalStorageAppObbDirs(String str) {
        throwIfUserRequired();
        return sCurrentUser.buildExternalStorageAppObbDirs(str);
    }

    public static File buildPath(File file, String... strArr) {
        for (String str : strArr) {
            file = file == null ? new File(str) : new File(file, str);
        }
        return file;
    }

    public static File[] buildPaths(File[] fileArr, String... strArr) {
        File[] fileArr2 = new File[fileArr.length];
        for (int i2 = 0; i2 < fileArr.length; i2++) {
            fileArr2[i2] = buildPath(fileArr[i2], strArr);
        }
        return fileArr2;
    }

    public static File getDataAppDirectory(String str) {
        return new File(getDataDirectory(str), "app");
    }

    public static File getDataDirectory() {
        return DIR_ANDROID_DATA;
    }

    public static File getDataMiscCeDirectory() {
        return buildPath(getDataDirectory(), "misc_ce");
    }

    public static File getDataMiscDeDirectory(int i2) {
        return buildPath(getDataDirectory(), "misc_de", String.valueOf(i2));
    }

    public static File getDataMiscDirectory() {
        return new File(getDataDirectory(), "misc");
    }

    public static File getDataPreloadsAppsDirectory() {
        return new File(getDataPreloadsDirectory(), "apps");
    }

    public static File getDataPreloadsDemoDirectory() {
        return new File(getDataPreloadsDirectory(), "demo");
    }

    public static File getDataPreloadsDirectory() {
        return new File(getDataDirectory(), "preloads");
    }

    public static File getDataPreloadsFileCacheDirectory(String str) {
        return new File(getDataPreloadsFileCacheDirectory(), str);
    }

    public static File getDataPreloadsMediaDirectory() {
        return new File(getDataPreloadsDirectory(), "media");
    }

    private static File getDataProfilesDeDirectory(int i2) {
        return buildPath(getDataDirectory(), "misc", "profiles", "cur", String.valueOf(i2));
    }

    public static File getDataProfilesDePackageDirectory(int i2, String str) {
        return buildPath(getDataProfilesDeDirectory(i2), str);
    }

    public static File getDataSystemCeDirectory() {
        return buildPath(getDataDirectory(), "system_ce");
    }

    public static File getDataSystemDeDirectory() {
        return buildPath(getDataDirectory(), "system_de");
    }

    public static File getDataSystemDirectory() {
        return new File(getDataDirectory(), StorageManager.UUID_SYSTEM);
    }

    public static File getDataUserCeDirectory(String str) {
        return new File(getDataDirectory(str), "user");
    }

    public static File getDataUserCePackageDirectory(String str, int i2, String str2) {
        return new File(getDataUserCeDirectory(str, i2), str2);
    }

    public static File getDataUserDeDirectory(String str) {
        return new File(getDataDirectory(str), "user_de");
    }

    public static File getDataUserDePackageDirectory(String str, int i2, String str2) {
        return new File(getDataUserDeDirectory(str, i2), str2);
    }

    public static File getDirectory(String str, String str2) {
        String str3 = System.getenv(str);
        return str3 == null ? new File(str2) : new File(str3);
    }

    public static File getDownloadCacheDirectory() {
        return DIR_DOWNLOAD_CACHE;
    }

    public static File getExpandDirectory() {
        return DIR_ANDROID_EXPAND;
    }

    public static File getExternalStorageDirectory() {
        throwIfUserRequired();
        return sCompatUser.getExternalDirs()[0];
    }

    public static File getExternalStoragePublicDirectory(String str) {
        throwIfUserRequired();
        return sCurrentUser.buildExternalStoragePublicDirs(str)[0];
    }

    public static String getExternalStorageState() {
        return getExternalStorageState(sCompatUser.getExternalDirs()[0]);
    }

    public static File getLegacyExternalStorageDirectory() {
        return new File(System.getenv(ENV_EXTERNAL_STORAGE));
    }

    public static File getLegacyExternalStorageObbDirectory() {
        return buildPath(getLegacyExternalStorageDirectory(), "Android", "obb");
    }

    public static File getOdmDirectory() {
        return DIR_ODM_ROOT;
    }

    public static File getOemDirectory() {
        return DIR_OEM_ROOT;
    }

    public static File getReferenceProfile(String str) {
        return buildPath(getDataDirectory(), "misc", "profiles", "ref", str);
    }

    public static File getRootDirectory() {
        return DIR_ANDROID_ROOT;
    }

    public static File getStorageDirectory() {
        return DIR_ANDROID_STORAGE;
    }

    @Deprecated
    public static String getStorageState(File file) {
        return getExternalStorageState(file);
    }

    @Deprecated
    public static File getUserConfigDirectory(int i2) {
        return new File(new File(new File(getDataDirectory(), "misc"), "user"), Integer.toString(i2));
    }

    @Deprecated
    public static File getUserSystemDirectory(int i2) {
        return new File(new File(getDataSystemDirectory(), "users"), Integer.toString(i2));
    }

    public static File getVendorDirectory() {
        return DIR_VENDOR_ROOT;
    }

    public static void initForCurrentUser() {
        int iMyUserId = UserHandle.myUserId();
        sCurrentUser = new UserEnvironment(iMyUserId);
        if (AppCloneUserInfo.isAppCloneUserId(iMyUserId)) {
            iMyUserId = 0;
        }
        sCompatUser = new UserEnvironment(iMyUserId);
    }

    public static boolean isExternalStorageEmulated() {
        if (isStorageDisabled()) {
            return false;
        }
        return isExternalStorageEmulated(sCurrentUser.getExternalDirs()[0]);
    }

    public static boolean isExternalStorageRemovable() {
        if (isStorageDisabled()) {
            return false;
        }
        return isExternalStorageRemovable(sCurrentUser.getExternalDirs()[0]);
    }

    public static boolean isStandardDirectory(String str) {
        for (String str2 : STANDARD_DIRECTORIES) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isStorageDisabled() {
        return SystemProperties.getBoolean("config.disable_storage", false);
    }

    public static File maybeTranslateEmulatedPathToInternal(File file) {
        return StorageManager.maybeTranslateEmulatedPathToInternal(file);
    }

    public static void setUserRequired(boolean z2) {
        sUserRequired = z2;
    }

    private static void throwIfUserRequired() {
        if (sUserRequired) {
            Log.wtf(TAG, "Path requests must specify a user by using UserEnvironment", new Throwable());
        }
    }

    public static File getDataDirectory(String str) {
        return TextUtils.isEmpty(str) ? DIR_ANDROID_DATA : new File(android.accessibilityservice.c.j("/mnt/expand/", str));
    }

    public static File getDataMiscCeDirectory(int i2) {
        return buildPath(getDataDirectory(), "misc_ce", String.valueOf(i2));
    }

    public static File getDataPreloadsFileCacheDirectory() {
        return new File(getDataPreloadsDirectory(), "file_cache");
    }

    public static File getDataSystemCeDirectory(int i2) {
        return buildPath(getDataDirectory(), "system_ce", String.valueOf(i2));
    }

    public static File getDataSystemDeDirectory(int i2) {
        return buildPath(getDataDirectory(), "system_de", String.valueOf(i2));
    }

    public static File getDataUserCeDirectory(String str, int i2) {
        return new File(getDataUserCeDirectory(str), String.valueOf(i2));
    }

    public static File getDataUserDeDirectory(String str, int i2) {
        return new File(getDataUserDeDirectory(str), String.valueOf(i2));
    }

    public static String getExternalStorageState(File file) {
        int iMyUserId = UserHandle.myUserId();
        if (AppCloneUserInfo.isAppCloneUserId(iMyUserId)) {
            iMyUserId = 0;
        }
        StorageVolume storageVolume = StorageManager.getStorageVolume(file, iMyUserId);
        return storageVolume != null ? storageVolume.getState() : "unknown";
    }

    public static boolean isExternalStorageEmulated(File file) {
        StorageVolume storageVolume = StorageManager.getStorageVolume(file, UserHandle.myUserId());
        if (storageVolume != null) {
            return storageVolume.isEmulated();
        }
        Log.w(TAG, "Failed to find storage device at " + file);
        return false;
    }

    public static boolean isExternalStorageRemovable(File file) {
        StorageVolume storageVolume = StorageManager.getStorageVolume(file, UserHandle.myUserId());
        if (storageVolume != null) {
            return storageVolume.isRemovable();
        }
        if (file.getPath().equals("/dev/null")) {
            Log.w(TAG, "external storage is not ready, path = " + file);
            return true;
        }
        Log.w(TAG, "Failed to find storage device at " + file);
        throw new IllegalArgumentException(android.accessibilityservice.c.i("Failed to find storage device at ", file));
    }
}
