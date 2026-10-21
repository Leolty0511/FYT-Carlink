package android.os;

import android.os.storage.DiskInfo;
import android.os.storage.IStorageManager;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class EnvironmentEx {
    public static final int STORAGE_PRIMARY_EXTERNAL = 1;
    public static final int STORAGE_PRIMARY_INTERNAL = 2;
    private static final String TAG = "EnvironmentEx";
    private static final String emulatedPathPrefix = "/storage/emulated";
    private static final String ENV_EMULATED_STORAGE = "EMULATED_STORAGE";
    private static final String emulatedPathString = getPathString(ENV_EMULATED_STORAGE, "/storage/self/emulated");
    private static final String ENV_PHYSICAL_STORAGE = "PHYSICAL_STORAGE";
    private static final String physicalPathString = getPathString(ENV_PHYSICAL_STORAGE, "/storage/sdcard0");

    public static File getEmulatedStoragePath() {
        return new File(emulatedPathString);
    }

    public static File getExternalStorageLinkPath() {
        return new File(physicalPathString);
    }

    public static File getExternalStoragePath() {
        File storagePathFormKey = getStoragePathFormKey("vold.sdcard0.path");
        return storagePathFormKey == null ? getExternalStorageLinkPath() : storagePathFormKey;
    }

    public static String getExternalStoragePathState() {
        return SystemProperties.get("vold.sdcard0.state", "unknown");
    }

    public static File getInternalStoragePath() {
        return new File("/storage/emulated/" + UserHandle.myUserId());
    }

    public static String getInternalStoragePathState() {
        return Environment.getExternalStorageState(getInternalStoragePath());
    }

    public static File getLegacyExternalStorageDirectory() {
        int storageType = getStorageType();
        return (storageType == 1 || storageType == 2) ? getInternalStoragePath() : Environment.getLegacyExternalStorageDirectory();
    }

    public static String getLegacyExternalStorageState() {
        return getStorageType() == 1 ? Environment.MEDIA_MOUNTED : Environment.MEDIA_REMOVED;
    }

    public static String getPathString(String str, String str2) {
        String str3 = System.getenv(str);
        return str3 == null ? str2 : str3;
    }

    public static File getSecondaryStorageDirectory() {
        int storageType = getStorageType();
        if (storageType == 1) {
            return getInternalStoragePath();
        }
        if (storageType != 2) {
            return null;
        }
        return getExternalStoragePath();
    }

    private static File getStoragePathFormKey(String str) {
        String str2 = SystemProperties.get(str);
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(str2);
    }

    public static int getStorageType() {
        return SystemProperties.getInt(StorageManager.PROP_PRIMARY_TYPE, 2);
    }

    public static File[] getUsbdiskVolumePaths() {
        List<VolumeInfo> usbdiskVolumes = getUsbdiskVolumes();
        int size = usbdiskVolumes.size();
        File[] fileArr = new File[size];
        for (int i2 = 0; i2 < size; i2++) {
            fileArr[i2] = usbdiskVolumes.get(i2).getPath();
        }
        return fileArr;
    }

    public static String getUsbdiskVolumeState(File file) {
        return Environment.getExternalStorageState(file);
    }

    public static List<VolumeInfo> getUsbdiskVolumes() {
        ArrayList arrayList = new ArrayList();
        try {
            for (VolumeInfo volumeInfo : Arrays.asList(IStorageManager.Stub.asInterface(ServiceManager.getService("mount")).getVolumes(0))) {
                DiskInfo diskInfo = volumeInfo.disk;
                if (diskInfo != null && diskInfo.isUsb()) {
                    arrayList.add(volumeInfo);
                }
            }
            return arrayList;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static File getInternalStoragePath(int i2) {
        return new File(android.accessibilityservice.c.d("/storage/emulated/", i2));
    }

    public static File getLegacyExternalStorageDirectory(int i2) {
        int storageType = getStorageType();
        if (storageType != 1 && storageType != 2) {
            return Environment.getLegacyExternalStorageDirectory();
        }
        return getInternalStoragePath(i2);
    }
}
