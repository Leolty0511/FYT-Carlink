package com.android.internal.content;

import android.accessibilityservice.c;
import android.app.m;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.os.Environment;
import android.os.EnvironmentEx;
import android.os.FileUtils;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.storage.IStorageManager;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.provider.Settings;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes2.dex */
public class PackageHelper {
    public static final int APP_INSTALL_AUTO = 0;
    public static final int APP_INSTALL_EXTERNAL = 2;
    public static final int APP_INSTALL_INTERNAL = 1;
    public static final int RECOMMEND_FAILED_ALREADY_EXISTS = -4;
    public static final int RECOMMEND_FAILED_INSUFFICIENT_STORAGE = -1;
    public static final int RECOMMEND_FAILED_INVALID_APK = -2;
    public static final int RECOMMEND_FAILED_INVALID_LOCATION = -3;
    public static final int RECOMMEND_FAILED_INVALID_URI = -6;
    public static final int RECOMMEND_FAILED_VERSION_DOWNGRADE = -7;
    public static final int RECOMMEND_INSTALL_EPHEMERAL = 3;
    public static final int RECOMMEND_INSTALL_EXTERNAL = 2;
    public static final int RECOMMEND_INSTALL_INTERNAL = 1;
    public static final int RECOMMEND_MEDIA_UNAVAILABLE = -5;
    private static final String TAG = "PackageHelper";
    private static final boolean localLOGV = false;
    private static TestableInterface sDefaultTestableInterface;

    public static abstract class TestableInterface {
        public boolean fitsOnInternalStorage(Context context, PackageInstaller.SessionParams sessionParams) {
            StorageManager storageManager = getStorageManager(context);
            return sessionParams.sizeBytes <= storageManager.getAllocatableBytes(storageManager.getUuidForPath(getDataDirectory()), PackageHelper.translateAllocateFlags(sessionParams.installFlags));
        }

        public abstract boolean getAllow3rdPartyOnInternalConfig(Context context);

        public abstract File getDataDirectory();

        public abstract ApplicationInfo getExistingAppInfo(Context context, String str);

        public abstract boolean getForceAllowOnExternalSetting(Context context);

        public abstract StorageManager getStorageManager(Context context);
    }

    public static long calculateInstalledSize(PackageParser.PackageLite packageLite, boolean z2, String str) throws Throwable {
        NativeLibraryHelper.Handle handleCreate;
        try {
            handleCreate = NativeLibraryHelper.Handle.create(packageLite);
            try {
                long jCalculateInstalledSize = calculateInstalledSize(packageLite, handleCreate, z2, str);
                IoUtils.closeQuietly(handleCreate);
                return jCalculateInstalledSize;
            } catch (Throwable th) {
                th = th;
                IoUtils.closeQuietly(handleCreate);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            handleCreate = null;
        }
    }

    private static void copyZipEntry(ZipEntry zipEntry, ZipFile zipFile, ZipOutputStream zipOutputStream) throws IOException {
        byte[] bArr = new byte[4096];
        zipOutputStream.putNextEntry(zipEntry.getMethod() == 0 ? new ZipEntry(zipEntry) : new ZipEntry(zipEntry.getName()));
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        while (true) {
            try {
                int i2 = inputStream.read(bArr);
                if (i2 <= 0) {
                    zipOutputStream.flush();
                    IoUtils.closeQuietly(inputStream);
                    return;
                }
                zipOutputStream.write(bArr, 0, i2);
            } catch (Throwable th) {
                IoUtils.closeQuietly(inputStream);
                throw th;
            }
        }
    }

    public static String createSdDir(long j2, String str, String str2, int i2, boolean z2) {
        int i3 = ((int) ((j2 + 1048576) / 1048576)) + 1;
        try {
            IStorageManager storageManager = getStorageManager();
            if (storageManager.createSecureContainer(str, i3, "ext4", str2, i2, z2) == 0) {
                return storageManager.getSecureContainerPath(str);
            }
            Log.e(TAG, "Failed to create secure container " + str);
            return null;
        } catch (RemoteException unused) {
            Log.e(TAG, "StorageManagerService running?");
            return null;
        }
    }

    public static boolean destroySdDir(String str) {
        try {
            if (getStorageManager().destroySecureContainer(str, true) == 0) {
                return true;
            }
            Log.i(TAG, "Failed to destroy container " + str);
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to destroy container " + str + " with exception " + e2);
            return false;
        }
    }

    public static long extractPublicFiles(File file, File file2) {
        FileOutputStream fileOutputStream;
        ZipOutputStream zipOutputStream;
        if (file2 == null) {
            fileOutputStream = null;
            zipOutputStream = null;
        } else {
            fileOutputStream = new FileOutputStream(file2);
            zipOutputStream = new ZipOutputStream(fileOutputStream);
            Log.d(TAG, "Extracting " + file + " to " + file2);
        }
        try {
            ZipFile zipFile = new ZipFile(file.getAbsolutePath());
            try {
                long size = 0;
                for (ZipEntry zipEntry : Collections.list(zipFile.entries())) {
                    String name = zipEntry.getName();
                    if ("AndroidManifest.xml".equals(name) || "resources.arsc".equals(name) || name.startsWith("res/")) {
                        size += zipEntry.getSize();
                        if (file2 != null) {
                            copyZipEntry(zipEntry, zipFile, zipOutputStream);
                        }
                    }
                }
                try {
                    zipFile.close();
                } catch (IOException unused) {
                }
                if (file2 != null) {
                    zipOutputStream.finish();
                    zipOutputStream.flush();
                    FileUtils.sync(fileOutputStream);
                    zipOutputStream.close();
                    FileUtils.setPermissions(file2.getAbsolutePath(), 420, -1, -1);
                }
                IoUtils.closeQuietly(zipOutputStream);
                return size;
            } catch (Throwable th) {
                try {
                    zipFile.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        } catch (Throwable th2) {
            IoUtils.closeQuietly(zipOutputStream);
            throw th2;
        }
    }

    public static boolean finalizeSdDir(String str) {
        try {
            if (getStorageManager().finalizeSecureContainer(str) == 0) {
                return true;
            }
            Log.i(TAG, "Failed to finalize container " + str);
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to finalize container " + str + " with exception " + e2);
            return false;
        }
    }

    public static boolean fitsOnExternal(Context context, PackageInstaller.SessionParams sessionParams) {
        return sessionParams.sizeBytes > 0 && Environment.MEDIA_MOUNTED.equals(EnvironmentEx.getExternalStoragePathState()) && sessionParams.sizeBytes <= ((StorageManager) context.getSystemService(StorageManager.class)).getStorageBytesUntilLow(EnvironmentEx.getExternalStoragePath());
    }

    public static boolean fitsOnInternal(Context context, PackageInstaller.SessionParams sessionParams) {
        StorageManager storageManager = (StorageManager) context.getSystemService(StorageManager.class);
        return sessionParams.sizeBytes <= storageManager.getAllocatableBytes(storageManager.getUuidForPath(Environment.getDataDirectory()), translateAllocateFlags(sessionParams.installFlags));
    }

    public static boolean fixSdPermissions(String str, int i2, String str2) {
        try {
            if (getStorageManager().fixPermissionsSecureContainer(str, i2, str2) == 0) {
                return true;
            }
            Log.i(TAG, "Failed to fixperms container " + str);
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to fixperms container " + str + " with exception " + e2);
            return false;
        }
    }

    private static synchronized TestableInterface getDefaultTestableInterface() {
        if (sDefaultTestableInterface == null) {
            sDefaultTestableInterface = new TestableInterface() { // from class: com.android.internal.content.PackageHelper.1
                @Override // com.android.internal.content.PackageHelper.TestableInterface
                public boolean getAllow3rdPartyOnInternalConfig(Context context) {
                    return context.getResources().getBoolean(R.bool.config_allow3rdPartyAppOnInternal);
                }

                @Override // com.android.internal.content.PackageHelper.TestableInterface
                public File getDataDirectory() {
                    return Environment.getDataDirectory();
                }

                @Override // com.android.internal.content.PackageHelper.TestableInterface
                public ApplicationInfo getExistingAppInfo(Context context, String str) {
                    try {
                        return context.getPackageManager().getApplicationInfo(str, 4194304);
                    } catch (PackageManager.NameNotFoundException unused) {
                        return null;
                    }
                }

                @Override // com.android.internal.content.PackageHelper.TestableInterface
                public boolean getForceAllowOnExternalSetting(Context context) {
                    return Settings.Global.getInt(context.getContentResolver(), Settings.Global.FORCE_ALLOW_ON_EXTERNAL, 0) != 0;
                }

                @Override // com.android.internal.content.PackageHelper.TestableInterface
                public StorageManager getStorageManager(Context context) {
                    return (StorageManager) context.getSystemService(StorageManager.class);
                }
            };
        }
        return sDefaultTestableInterface;
    }

    public static String getSdDir(String str) {
        try {
            return getStorageManager().getSecureContainerPath(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to get container path for " + str + " with exception " + e2);
            return null;
        }
    }

    public static String getSdFilesystem(String str) {
        try {
            return getStorageManager().getSecureContainerFilesystemPath(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to get container path for " + str + " with exception " + e2);
            return null;
        }
    }

    public static String[] getSecureContainerList() {
        try {
            return getStorageManager().getSecureContainerList();
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to get secure container list with exception" + e2);
            return null;
        }
    }

    public static IStorageManager getStorageManager() throws RemoteException {
        IBinder service = ServiceManager.getService("mount");
        if (service != null) {
            return IStorageManager.Stub.asInterface(service);
        }
        Log.e(TAG, "Can't get storagemanager service");
        throw new RemoteException("Could not contact storagemanager service");
    }

    public static boolean isContainerMounted(String str) {
        try {
            return getStorageManager().isSecureContainerMounted(str);
        } catch (RemoteException unused) {
            Log.e(TAG, "Failed to find out if container " + str + " mounted");
            return false;
        }
    }

    public static String mountSdDir(String str, String str2, int i2) {
        return mountSdDir(str, str2, i2, true);
    }

    public static boolean renameSdDir(String str, String str2) {
        try {
            int iRenameSecureContainer = getStorageManager().renameSecureContainer(str, str2);
            if (iRenameSecureContainer == 0) {
                return true;
            }
            Log.e(TAG, "Failed to rename " + str + " to " + str2 + "with rc " + iRenameSecureContainer);
            return false;
        } catch (RemoteException e2) {
            StringBuilder sbW = c.w("Failed ot rename  ", str, " to ", str2, " with exception : ");
            sbW.append(e2);
            Log.i(TAG, sbW.toString());
            return false;
        }
    }

    public static String replaceEnd(String str, String str2, String str3) {
        if (!str.endsWith(str2)) {
            throw new IllegalArgumentException(c.l("Expected ", str, " to end with ", str2));
        }
        return str.substring(0, str.length() - str2.length()) + str3;
    }

    public static boolean resizeSdDir(long j2, String str, String str2) {
        try {
            if (getStorageManager().resizeSecureContainer(str, ((int) ((j2 + 1048576) / 1048576)) + 1, str2) == 0) {
                return true;
            }
        } catch (RemoteException unused) {
            Log.e(TAG, "StorageManagerService running?");
        }
        m.r("Failed to create secure container ", str, TAG);
        return false;
    }

    @Deprecated
    public static int resolveInstallLocation(Context context, String str, int i2, long j2, int i3) {
        PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(-1);
        sessionParams.appPackageName = str;
        sessionParams.installLocation = i2;
        sessionParams.sizeBytes = j2;
        sessionParams.installFlags = i3;
        try {
            return resolveInstallLocation(context, sessionParams);
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Deprecated
    public static String resolveInstallVolume(Context context, String str, int i2, long j2, TestableInterface testableInterface) {
        PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(-1);
        sessionParams.appPackageName = str;
        sessionParams.installLocation = i2;
        sessionParams.sizeBytes = j2;
        return resolveInstallVolume(context, sessionParams, testableInterface);
    }

    public static int translateAllocateFlags(int i2) {
        return (i2 & 32768) != 0 ? 1 : 0;
    }

    public static boolean unMountSdDir(String str) {
        try {
            int iUnmountSecureContainer = getStorageManager().unmountSecureContainer(str, true);
            if (iUnmountSecureContainer == 0) {
                return true;
            }
            Log.e(TAG, "Failed to unmount " + str + " with rc " + iUnmountSecureContainer);
            return false;
        } catch (RemoteException unused) {
            Log.e(TAG, "StorageManagerService running?");
            return false;
        }
    }

    public static String mountSdDir(String str, String str2, int i2, boolean z2) {
        try {
            int iMountSecureContainer = getStorageManager().mountSecureContainer(str, str2, i2, z2);
            if (iMountSecureContainer == 0) {
                return getStorageManager().getSecureContainerPath(str);
            }
            Log.i(TAG, "Failed to mount container " + str + " rc : " + iMountSecureContainer);
            return null;
        } catch (RemoteException unused) {
            Log.e(TAG, "StorageManagerService running?");
            return null;
        }
    }

    public static long calculateInstalledSize(PackageParser.PackageLite packageLite, NativeLibraryHelper.Handle handle, boolean z2, String str) {
        Iterator<String> it = packageLite.getAllCodePaths().iterator();
        long jExtractPublicFiles = 0;
        while (it.hasNext()) {
            File file = new File(it.next());
            long length = file.length() + jExtractPublicFiles;
            jExtractPublicFiles = z2 ? extractPublicFiles(file, null) + length : length;
        }
        long jSumNativeBinariesWithOverride = NativeLibraryHelper.sumNativeBinariesWithOverride(handle, str) + jExtractPublicFiles;
        return (jSumNativeBinariesWithOverride / 10) + jSumNativeBinariesWithOverride;
    }

    public static String resolveInstallVolume(Context context, PackageInstaller.SessionParams sessionParams) {
        return resolveInstallVolume(context, sessionParams.appPackageName, sessionParams.installLocation, sessionParams.sizeBytes, getDefaultTestableInterface());
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0041  */
    public static int resolveInstallLocation(Context context, PackageInstaller.SessionParams sessionParams) {
        ApplicationInfo applicationInfo;
        boolean z2;
        boolean z3;
        int i2;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(sessionParams.appPackageName, 4194304);
        } catch (PackageManager.NameNotFoundException unused) {
            applicationInfo = null;
        }
        int i3 = sessionParams.installFlags;
        if ((i3 & 2048) != 0) {
            z2 = false;
            i2 = 1;
            z3 = true;
        } else if ((i3 & 16) != 0) {
            z2 = false;
            z3 = false;
            i2 = 1;
        } else if ((i3 & 8) != 0) {
            i2 = 2;
            z2 = false;
            z3 = false;
        } else {
            int i4 = sessionParams.installLocation;
            if (i4 != 1) {
                if (i4 == 2) {
                    i2 = 2;
                } else if (i4 != 0) {
                    z2 = false;
                    z3 = false;
                    i2 = 1;
                } else if (applicationInfo == null || (applicationInfo.flags & 262144) == 0) {
                    i2 = 1;
                } else {
                    i2 = 2;
                }
                z3 = false;
                z2 = true;
            } else {
                z2 = false;
                z3 = false;
                i2 = 1;
            }
        }
        m.A("prefer installLocation:", i2, TAG);
        boolean zFitsOnInternal = (z2 || i2 == 1) ? fitsOnInternal(context, sessionParams) : false;
        boolean zFitsOnExternal = (z2 || i2 == 2) ? fitsOnExternal(context, sessionParams) : false;
        if (i2 == 1) {
            if (zFitsOnInternal) {
                return z3 ? 3 : 1;
            }
        } else if (i2 == 2 && zFitsOnExternal) {
            return 2;
        }
        if (!z2) {
            return -1;
        }
        if (zFitsOnInternal) {
            return 1;
        }
        return zFitsOnExternal ? 2 : -1;
    }

    public static String resolveInstallVolume(Context context, PackageInstaller.SessionParams sessionParams, TestableInterface testableInterface) throws Throwable {
        boolean forceAllowOnExternalSetting = testableInterface.getForceAllowOnExternalSetting(context);
        boolean allow3rdPartyOnInternalConfig = testableInterface.getAllow3rdPartyOnInternalConfig(context);
        ApplicationInfo existingAppInfo = testableInterface.getExistingAppInfo(context, sessionParams.appPackageName);
        boolean zFitsOnInternalStorage = testableInterface.fitsOnInternalStorage(context, sessionParams);
        StorageManager storageManager = testableInterface.getStorageManager(context);
        if (existingAppInfo != null && existingAppInfo.isSystemApp()) {
            if (zFitsOnInternalStorage) {
                return StorageManager.UUID_PRIVATE_INTERNAL;
            }
            StringBuilder sb = new StringBuilder("Not enough space on existing volume ");
            sb.append(existingAppInfo.volumeUuid);
            sb.append(" for system app ");
            throw new IOException(c.n(sb, sessionParams.appPackageName, " upgrade"));
        }
        ArraySet arraySet = new ArraySet();
        Iterator<VolumeInfo> it = storageManager.getVolumes().iterator();
        VolumeInfo volumeInfo = null;
        long j2 = Long.MIN_VALUE;
        while (it.hasNext()) {
            VolumeInfo next = it.next();
            boolean zEquals = VolumeInfo.ID_PRIVATE_INTERNAL.equals(next.id);
            Iterator<VolumeInfo> it2 = it;
            if (next.type == 1 && next.isMountedWritable() && (!zEquals || allow3rdPartyOnInternalConfig)) {
                long allocatableBytes = storageManager.getAllocatableBytes(storageManager.getUuidForPath(new File(next.path)), translateAllocateFlags(sessionParams.installFlags));
                if (allocatableBytes >= sessionParams.sizeBytes) {
                    arraySet.add(next.fsUuid);
                }
                if (allocatableBytes >= j2) {
                    volumeInfo = next;
                    j2 = allocatableBytes;
                }
                it = it2;
            }
            volumeInfo = volumeInfo;
            it = it2;
        }
        VolumeInfo volumeInfo2 = volumeInfo;
        if (!forceAllowOnExternalSetting && sessionParams.installLocation == 1) {
            if (existingAppInfo != null && !Objects.equals(existingAppInfo.volumeUuid, StorageManager.UUID_PRIVATE_INTERNAL)) {
                StringBuilder sb2 = new StringBuilder("Cannot automatically move ");
                sb2.append(sessionParams.appPackageName);
                sb2.append(" from ");
                throw new IOException(c.n(sb2, existingAppInfo.volumeUuid, " to internal storage"));
            }
            if (!allow3rdPartyOnInternalConfig) {
                throw new IOException("Not allowed to install non-system apps on internal storage");
            }
            if (zFitsOnInternalStorage) {
                return StorageManager.UUID_PRIVATE_INTERNAL;
            }
            throw new IOException("Requested internal only, but not enough space");
        }
        if (existingAppInfo == null) {
            if (volumeInfo2 != null) {
                return volumeInfo2.fsUuid;
            }
            throw new IOException("No special requests, but no room on allowed volumes.  allow3rdPartyOnInternal? " + allow3rdPartyOnInternalConfig);
        }
        String str = existingAppInfo.volumeUuid;
        String str2 = StorageManager.UUID_PRIVATE_INTERNAL;
        if (Objects.equals(str, str2) && zFitsOnInternalStorage) {
            return str2;
        }
        if (arraySet.contains(existingAppInfo.volumeUuid)) {
            return existingAppInfo.volumeUuid;
        }
        StringBuilder sb3 = new StringBuilder("Not enough space on existing volume ");
        sb3.append(existingAppInfo.volumeUuid);
        sb3.append(" for ");
        throw new IOException(c.n(sb3, sessionParams.appPackageName, " upgrade"));
    }
}
