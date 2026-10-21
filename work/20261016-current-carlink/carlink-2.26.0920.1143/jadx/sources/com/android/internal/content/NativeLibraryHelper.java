package com.android.internal.content;

import android.accessibilityservice.c;
import android.content.pm.PackageParser;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.FileUtils;
import android.os.SELinux;
import android.os.SystemProperties;
import android.security.keystore.KeyProperties;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Slog;
import com.android.internal.util.HexDump;
import dalvik.system.CloseGuard;
import dalvik.system.VMRuntime;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class NativeLibraryHelper {
    private static final int BITCODE_PRESENT = 1;
    public static final String CLEAR_ABI_OVERRIDE = "-";
    private static final String CUCC_SDK_DEFUALT_LIB = "892AD81765F8ACF222111EB45C9E574D";
    private static final boolean DEBUG_NATIVE = false;
    public static final String LIB64_DIR_NAME = "lib64";
    public static final String LIB_DIR_NAME = "lib";
    private static final String OEM_LIB_DIR = "/system/etc/oem/";
    private static final String TAG = "NativeHelper";
    private static final String USER_LIB_DIR = "/data/userinfo/";
    private static final boolean PRC_COMPATIBILITY = SystemProperties.getBoolean("ro.sys.prc_compatibility", false);
    private static final boolean HAS_NATIVE_BRIDGE = !WifiEnterpriseConfig.ENGINE_DISABLE.equals(SystemProperties.get("ro.dalvik.vm.native.bridge", WifiEnterpriseConfig.ENGINE_DISABLE));

    public static int copyNativeBinaries(Handle handle, File file, String str) {
        for (long j2 : handle.apkHandles) {
            int iNativeCopyNativeBinaries = nativeCopyNativeBinaries(j2, file.getPath(), str, handle.extractNativeLibs, HAS_NATIVE_BRIDGE, handle.debuggable);
            if (iNativeCopyNativeBinaries != 1) {
                return iNativeCopyNativeBinaries;
            }
        }
        return 1;
    }

    public static int copyNativeBinariesForSupportedAbi(Handle handle, File file, String[] strArr, boolean z2) throws IOException {
        createNativeLibrarySubdir(file);
        int iFindSupportedAbi = findSupportedAbi(handle, strArr);
        if (iFindSupportedAbi >= 0) {
            String instructionSet = VMRuntime.getInstructionSet(strArr[iFindSupportedAbi]);
            if (z2) {
                File file2 = new File(file, instructionSet);
                createNativeLibrarySubdir(file2);
                file = file2;
            }
            int iCopyNativeBinaries = copyNativeBinaries(handle, file, strArr[iFindSupportedAbi]);
            if (iCopyNativeBinaries != 1) {
                return iCopyNativeBinaries;
            }
        }
        return iFindSupportedAbi;
    }

    public static int copyNativeBinariesWithOverride(Handle handle, File file, String str) {
        int iCopyNativeBinariesForSupportedAbi;
        int iCopyNativeBinariesForSupportedAbi2;
        try {
            if (handle.multiArch) {
                if (str != null && !CLEAR_ABI_OVERRIDE.equals(str)) {
                    Slog.w(TAG, "Ignoring abiOverride for multi arch application.");
                }
                String[] strArr = Build.SUPPORTED_32_BIT_ABIS;
                if (strArr.length > 0 && (iCopyNativeBinariesForSupportedAbi2 = copyNativeBinariesForSupportedAbi(handle, file, strArr, true)) < 0 && iCopyNativeBinariesForSupportedAbi2 != -114 && iCopyNativeBinariesForSupportedAbi2 != -113) {
                    Slog.w(TAG, "Failure copying 32 bit native libraries; copyRet=" + iCopyNativeBinariesForSupportedAbi2);
                    return iCopyNativeBinariesForSupportedAbi2;
                }
                String[] strArr2 = Build.SUPPORTED_64_BIT_ABIS;
                if (strArr2.length > 0 && (iCopyNativeBinariesForSupportedAbi = copyNativeBinariesForSupportedAbi(handle, file, strArr2, true)) < 0 && iCopyNativeBinariesForSupportedAbi != -114 && iCopyNativeBinariesForSupportedAbi != -113) {
                    Slog.w(TAG, "Failure copying 64 bit native libraries; copyRet=" + iCopyNativeBinariesForSupportedAbi);
                    return iCopyNativeBinariesForSupportedAbi;
                }
            } else {
                if (CLEAR_ABI_OVERRIDE.equals(str) || str == null) {
                    str = null;
                }
                String[] strArr3 = str != null ? new String[]{str} : Build.SUPPORTED_ABIS;
                if (Build.SUPPORTED_64_BIT_ABIS.length > 0 && str == null && hasRenderscriptBitcode(handle)) {
                    strArr3 = Build.SUPPORTED_32_BIT_ABIS;
                }
                int iCopyNativeBinariesForSupportedAbi3 = copyNativeBinariesForSupportedAbi(handle, file, strArr3, true);
                if (iCopyNativeBinariesForSupportedAbi3 < 0 && iCopyNativeBinariesForSupportedAbi3 != -114) {
                    Slog.w(TAG, "Failure copying native libraries [errorCode=" + iCopyNativeBinariesForSupportedAbi3 + "]");
                    return iCopyNativeBinariesForSupportedAbi3;
                }
            }
            return 1;
        } catch (IOException e2) {
            Slog.e(TAG, "Copying native libraries failed", e2);
            return -110;
        }
    }

    private static void createNativeLibrarySubdir(File file) throws IOException {
        if (file.isDirectory()) {
            if (SELinux.restorecon(file)) {
                return;
            }
            throw new IOException("Cannot set SELinux context for " + file.getPath());
        }
        file.delete();
        if (!file.mkdir()) {
            throw new IOException("Cannot create " + file.getPath());
        }
        try {
            Os.chmod(file.getPath(), OsConstants.S_IRWXU | OsConstants.S_IRGRP | OsConstants.S_IXGRP | OsConstants.S_IROTH | OsConstants.S_IXOTH);
        } catch (ErrnoException e2) {
            throw new IOException("Cannot chmod native library directory " + file.getPath(), e2);
        }
    }

    public static int findSupportedAbi(Handle handle, String[] strArr) {
        int i2 = -114;
        for (long j2 : handle.apkHandles) {
            int iNativeFindSupportedAbiReplace = PRC_COMPATIBILITY ? nativeFindSupportedAbiReplace(j2, strArr, handle.debuggable, handle.pkgName, handle.apkDir) : nativeFindSupportedAbi(j2, strArr, handle.debuggable);
            if (iNativeFindSupportedAbiReplace != -114) {
                if (iNativeFindSupportedAbiReplace != -113) {
                    if (iNativeFindSupportedAbiReplace < 0) {
                        return iNativeFindSupportedAbiReplace;
                    }
                    if (i2 < 0 || iNativeFindSupportedAbiReplace < i2) {
                        i2 = iNativeFindSupportedAbiReplace;
                    }
                } else if (i2 < 0) {
                    i2 = -113;
                }
            }
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String getLibraryMd5(File file) throws Throwable {
        DigestInputStream digestInputStream;
        DigestInputStream digestInputStream2 = null;
        hexString = null;
        hexString = null;
        hexString = null;
        String hexString = null;
        try {
            try {
                digestInputStream = new DigestInputStream(new FileInputStream(file), MessageDigest.getInstance(KeyProperties.DIGEST_MD5));
                do {
                    try {
                    } catch (IOException e2) {
                        e = e2;
                        Slog.e(TAG, "Get library Md5 failed", e);
                        if (digestInputStream != null) {
                        }
                        return hexString;
                    } catch (NoSuchAlgorithmException e3) {
                        e = e3;
                        Slog.e(TAG, "Get library Md5 failed", e);
                        if (digestInputStream != null) {
                        }
                        return hexString;
                    }
                } while (digestInputStream.read(new byte[1024]) != -1);
                hexString = HexDump.toHexString(digestInputStream.getMessageDigest().digest());
            } catch (Throwable th) {
                th = th;
                digestInputStream2 = digestInputStream;
                if (digestInputStream2 != null) {
                    try {
                        digestInputStream2.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            digestInputStream = null;
        } catch (NoSuchAlgorithmException e5) {
            e = e5;
            digestInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (digestInputStream2 != null) {
                digestInputStream2.close();
            }
            throw th;
        }
        try {
            digestInputStream.close();
        } catch (IOException unused2) {
        }
        return hexString;
    }

    private static native int hasRenderscriptBitcode(long j2);

    public static boolean hasRenderscriptBitcode(Handle handle) throws IOException {
        for (long j2 : handle.apkHandles) {
            int iHasRenderscriptBitcode = hasRenderscriptBitcode(j2);
            if (iHasRenderscriptBitcode < 0) {
                throw new IOException(c.d("Error scanning APK, code: ", iHasRenderscriptBitcode));
            }
            if (iHasRenderscriptBitcode == 1) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeClose(long j2);

    private static native int nativeCopyNativeBinaries(long j2, String str, String str2, boolean z2, boolean z3, boolean z4);

    private static native int nativeFindSupportedAbi(long j2, String[] strArr, boolean z2);

    private static native int nativeFindSupportedAbiReplace(long j2, String[] strArr, boolean z2, String str, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeOpenApk(String str);

    private static native boolean nativeReplaceUnityLibraries(String str, String str2);

    private static native long nativeSumNativeBinaries(long j2, String str, boolean z2);

    private static String pickLatestCuccLib(String str) {
        File[] fileArrListFiles = new File(str).listFiles();
        if (fileArrListFiles == null) {
            return null;
        }
        int i2 = -1;
        long j2 = 0;
        for (int i3 = 0; i3 < fileArrListFiles.length; i3++) {
            File file = fileArrListFiles[i3];
            if (file.isFile() && file.getName().startsWith("cucc_")) {
                long jLastModified = file.lastModified();
                if (j2 == 0 || jLastModified > j2) {
                    i2 = i3;
                    j2 = jLastModified;
                }
            }
        }
        if (i2 >= 0) {
            return fileArrListFiles[i2].getName();
        }
        return null;
    }

    public static void removeNativeBinariesFromDirLI(File file, boolean z2) {
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
                    if (fileArrListFiles[i2].isDirectory()) {
                        removeNativeBinariesFromDirLI(fileArrListFiles[i2], true);
                    } else if (!fileArrListFiles[i2].delete()) {
                        Slog.w(TAG, "Could not delete native binary: " + fileArrListFiles[i2].getPath());
                    }
                }
            }
            if (!z2 || file.delete()) {
                return;
            }
            Slog.w(TAG, "Could not delete native binary directory: " + file.getPath());
        }
    }

    public static void removeNativeBinariesLI(String str) {
        if (str == null) {
            return;
        }
        removeNativeBinariesFromDirLI(new File(str), false);
    }

    public static void replaceCmccLibraries(String str, String str2) {
        String libraryMd5;
        File[] fileArrListFiles;
        if (str2 == null || !new File(str2).isDirectory()) {
            return;
        }
        File file = new File(str2, "libdexmmb.so");
        if (file.exists() && (libraryMd5 = getLibraryMd5(file)) != null && libraryMd5.length() > 0) {
            Slog.d(TAG, "replaceCmccLibraries for package:" + str + " md5sum:" + libraryMd5);
            File file2 = new File(OEM_LIB_DIR.concat(libraryMd5));
            File file3 = new File(USER_LIB_DIR.concat(libraryMd5));
            if (file2.exists()) {
                fileArrListFiles = file2.listFiles();
            } else if (file3.exists()) {
                fileArrListFiles = file3.listFiles();
            } else {
                File[] fileArrListFiles2 = new File(str2).listFiles();
                boolean z2 = false;
                for (int i2 = 0; i2 < fileArrListFiles2.length; i2++) {
                    String name = fileArrListFiles2[i2].getName();
                    if (name.startsWith("cmcc_")) {
                        if (!z2) {
                            file3.mkdir();
                            z2 = true;
                        }
                        StringBuilder sbV = c.v(USER_LIB_DIR, libraryMd5, "/");
                        sbV.append(name.substring(5));
                        FileUtils.copyFile(fileArrListFiles2[i2], new File(sbV.toString()));
                        fileArrListFiles2[i2].delete();
                    }
                }
                if (!z2) {
                    return;
                }
                Slog.d(TAG, "replaceCmccLibraries for package:" + str + " new cmcc SDK version found");
                fileArrListFiles = file3.listFiles();
            }
            for (int i3 = 0; i3 < fileArrListFiles.length; i3++) {
                String name2 = fileArrListFiles[i3].getName();
                File file4 = new File(str2, name2);
                if (file4.exists()) {
                    file4.delete();
                }
                File file5 = new File(str2, c.j("cmcc_", name2));
                if (file5.exists()) {
                    file5.delete();
                }
                FileUtils.copyFile(fileArrListFiles[i3], file4);
                FileUtils.setPermissions(file4.getAbsolutePath(), 493, -1, -1);
            }
        }
    }

    public static void replaceCuccLibraries(String str, String str2, String str3) {
        String libraryMd5;
        if (str2 == null || !new File(str2).isDirectory()) {
            return;
        }
        File file = new File(str2, "libme_unipay.so");
        if (file.exists() && (libraryMd5 = getLibraryMd5(file)) != null && libraryMd5.length() > 0) {
            Slog.d(TAG, "replaceCuccLibraries for package:" + str + " md5sum:" + libraryMd5);
            boolean zEquals = libraryMd5.equals("34879A522CB15521626579DE332BCD3E");
            String str4 = CUCC_SDK_DEFUALT_LIB;
            if (zEquals || libraryMd5.equals("DD72D9B6F67D8B29B479442F35D29646") || libraryMd5.equals("D611BA50B0DCBAF6FC007CCF1A93875C")) {
                libraryMd5 = CUCC_SDK_DEFUALT_LIB;
            }
            String str5 = OEM_LIB_DIR;
            File file2 = new File(OEM_LIB_DIR.concat(libraryMd5));
            File file3 = new File("/data/userinfo/cucc_".concat(libraryMd5));
            File file4 = new File(str2, "libme_unipay.so.x86.tmp");
            if (file2.exists()) {
                str4 = libraryMd5;
            } else if (file3.exists()) {
                str4 = libraryMd5;
                str5 = "/data/userinfo/cucc_";
            } else if (file4.exists()) {
                Slog.d(TAG, "replaceCuccLibraries for package:" + str + " new CUCC SDK version found");
                if (FileUtils.copyFile(file4, file3)) {
                    file3.setLastModified(file4.lastModified());
                    FileUtils.setPermissions(file3.getAbsolutePath(), 493, -1, -1);
                    trimCuccLibs(USER_LIB_DIR);
                    str4 = libraryMd5;
                    str5 = "/data/userinfo/cucc_";
                } else {
                    str5 = null;
                    str4 = libraryMd5;
                }
            } else {
                String strPickLatestCuccLib = pickLatestCuccLib(USER_LIB_DIR);
                if (strPickLatestCuccLib != null) {
                    str4 = strPickLatestCuccLib;
                    str5 = USER_LIB_DIR;
                }
            }
            if (file4.exists()) {
                file4.delete();
            }
            if (str5 == null) {
                return;
            }
            File file5 = new File(str5.concat(str4));
            File file6 = new File(str2, "libme_unipay.so.orig");
            if (!file.renameTo(file6)) {
                file6.renameTo(file);
                return;
            }
            if (FileUtils.copyFile(file5, file)) {
                file6.delete();
            }
            FileUtils.setPermissions(file.getAbsolutePath(), 493, -1, -1);
        }
    }

    public static void replaceUnityLibraries(String str, String str2, String str3) throws Throwable {
        String libraryMd5;
        String libraryMd6;
        String libraryMd7;
        String line;
        if (str2 == null || !new File(str2).isDirectory() || new File("/system/app/Phonesky").exists() || new File("/system/priv-app/Phonesky").exists() || new File("/data/app/com.android.vending").exists() || new File("/data/app/com.android.vending-1").exists() || new File("/data/app/com.android.vending-2").exists()) {
            return;
        }
        File file = new File(str2, "libunity.so");
        File file2 = new File(str2, "libmono.so");
        File file3 = new File(str2, "libmain.so");
        if (file.exists() && file2.exists() && file3.exists()) {
            String str4 = str3.contentEquals("arm64-v8a") ? new String("/vendor/lib64/") : new String("/vendor/lib/");
            File file4 = new File(str4.concat(".u.check.list"));
            if (str != null && str.length() > 0 && file4.exists() && file4.canRead()) {
                BufferedReader bufferedReader = null;
                try {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file4));
                        do {
                            try {
                                line = bufferedReader2.readLine();
                                if (line == null) {
                                    break;
                                }
                            } catch (IOException unused) {
                                bufferedReader = bufferedReader2;
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                libraryMd5 = getLibraryMd5(file);
                                if (libraryMd5 != null) {
                                    return;
                                } else {
                                    return;
                                }
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException unused2) {
                                    }
                                }
                                throw th;
                            }
                        } while (!line.contentEquals(str));
                        if (line == null) {
                            try {
                                bufferedReader2.close();
                                return;
                            } catch (IOException unused3) {
                                return;
                            }
                        }
                        bufferedReader2.close();
                    } catch (IOException unused4) {
                    }
                } catch (IOException unused5) {
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            libraryMd5 = getLibraryMd5(file);
            if (libraryMd5 != null || libraryMd5.length() <= 0) {
                return;
            }
            File file5 = new File(str4.concat(libraryMd5));
            if (file5.exists() && (libraryMd6 = getLibraryMd5(file2)) != null && libraryMd6.length() > 0) {
                File file6 = new File(str4.concat(libraryMd6));
                if (file6.exists() && (libraryMd7 = getLibraryMd5(file3)) != null && libraryMd7.length() > 0) {
                    File file7 = new File(str4.concat(libraryMd7));
                    if (file7.exists()) {
                        File file8 = new File(str2, "libunity.so.orig");
                        File file9 = new File(str2, "libmono.so.orig");
                        File file10 = new File(str2, "libmain.so.orig");
                        if (!file.renameTo(file8) || !file2.renameTo(file9) || !file3.renameTo(file10)) {
                            file8.renameTo(file);
                            file9.renameTo(file2);
                            file10.renameTo(file3);
                        } else if (nativeReplaceUnityLibraries(file.getAbsolutePath(), file5.getAbsolutePath()) && nativeReplaceUnityLibraries(file2.getAbsolutePath(), file6.getAbsolutePath()) && nativeReplaceUnityLibraries(file3.getAbsolutePath(), file7.getAbsolutePath())) {
                            file8.delete();
                            file9.delete();
                            file10.delete();
                        } else {
                            file.delete();
                            file8.renameTo(file);
                            file2.delete();
                            file9.renameTo(file2);
                            file3.delete();
                            file10.renameTo(file3);
                        }
                    }
                }
            }
        }
    }

    private static long sumNativeBinaries(Handle handle, String str) {
        long jNativeSumNativeBinaries = 0;
        for (long j2 : handle.apkHandles) {
            jNativeSumNativeBinaries += nativeSumNativeBinaries(j2, str, handle.debuggable);
        }
        return jNativeSumNativeBinaries;
    }

    private static long sumNativeBinariesForSupportedAbi(Handle handle, String[] strArr) {
        int iFindSupportedAbi = findSupportedAbi(handle, strArr);
        if (iFindSupportedAbi >= 0) {
            return sumNativeBinaries(handle, strArr[iFindSupportedAbi]);
        }
        return 0L;
    }

    public static long sumNativeBinariesWithOverride(Handle handle, String str) {
        long jSumNativeBinariesForSupportedAbi;
        long jSumNativeBinariesForSupportedAbi2 = 0;
        if (handle.multiArch) {
            if (str != null && !CLEAR_ABI_OVERRIDE.equals(str)) {
                Slog.w(TAG, "Ignoring abiOverride for multi arch application.");
            }
            String[] strArr = Build.SUPPORTED_32_BIT_ABIS;
            jSumNativeBinariesForSupportedAbi2 = strArr.length > 0 ? 0 + sumNativeBinariesForSupportedAbi(handle, strArr) : 0L;
            String[] strArr2 = Build.SUPPORTED_64_BIT_ABIS;
            if (strArr2.length <= 0) {
                return jSumNativeBinariesForSupportedAbi2;
            }
            jSumNativeBinariesForSupportedAbi = sumNativeBinariesForSupportedAbi(handle, strArr2);
        } else {
            if (CLEAR_ABI_OVERRIDE.equals(str) || str == null) {
                str = null;
            }
            String[] strArr3 = str != null ? new String[]{str} : Build.SUPPORTED_ABIS;
            if (Build.SUPPORTED_64_BIT_ABIS.length > 0 && str == null && hasRenderscriptBitcode(handle)) {
                strArr3 = Build.SUPPORTED_32_BIT_ABIS;
            }
            jSumNativeBinariesForSupportedAbi = sumNativeBinariesForSupportedAbi(handle, strArr3);
        }
        return jSumNativeBinariesForSupportedAbi2 + jSumNativeBinariesForSupportedAbi;
    }

    private static void trimCuccLibs(String str) {
        File[] fileArrListFiles = new File(str).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        long j2 = 0;
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < fileArrListFiles.length; i4++) {
            File file = fileArrListFiles[i4];
            if (file.isFile() && file.getName().startsWith("cucc_")) {
                i3++;
                long jLastModified = file.lastModified();
                if (j2 == 0 || jLastModified < j2) {
                    i2 = i4;
                    j2 = jLastModified;
                }
            }
        }
        if (i3 > 10) {
            File file2 = fileArrListFiles[i2];
            if (file2.exists()) {
                file2.delete();
            }
        }
    }

    public static class Handle implements Closeable {
        final String apkDir;
        final long[] apkHandles;
        final boolean debuggable;
        final boolean extractNativeLibs;
        private volatile boolean mClosed;
        private final CloseGuard mGuard;
        final boolean multiArch;
        final String pkgName;

        public Handle(long[] jArr, boolean z2, boolean z3, boolean z4, String str, String str2) {
            CloseGuard closeGuard = CloseGuard.get();
            this.mGuard = closeGuard;
            this.apkHandles = jArr;
            this.multiArch = z2;
            this.extractNativeLibs = z3;
            this.debuggable = z4;
            this.pkgName = str;
            this.apkDir = str2;
            closeGuard.open("close");
        }

        public static Handle create(File file) throws IOException {
            try {
                return create(PackageParser.parsePackageLite(file, 0));
            } catch (PackageParser.PackageParserException e2) {
                throw new IOException(c.i("Failed to parse package: ", file), e2);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (long j2 : this.apkHandles) {
                NativeLibraryHelper.nativeClose(j2);
            }
            this.mGuard.close();
            this.mClosed = true;
        }

        public void finalize() throws Throwable {
            CloseGuard closeGuard = this.mGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            try {
                if (!this.mClosed) {
                    close();
                }
            } finally {
                super.finalize();
            }
        }

        public static Handle create(PackageParser.Package r8) {
            String str = (r8.applicationInfo.flags & 1) != 0 ? null : r8.codePath;
            List<String> allCodePaths = r8.getAllCodePaths();
            int i2 = r8.applicationInfo.flags;
            return create(allCodePaths, (Integer.MIN_VALUE & i2) != 0, (268435456 & i2) != 0, (i2 & 2) != 0, r8.packageName, str);
        }

        public static Handle create(PackageParser.PackageLite packageLite) {
            String str = packageLite.codePath;
            return create(packageLite.getAllCodePaths(), packageLite.multiArch, packageLite.extractNativeLibs, packageLite.debuggable, packageLite.packageName, (str == null || str.startsWith("/system/") || packageLite.codePath.startsWith("/vendor/") || packageLite.codePath.startsWith("/oem/")) ? null : packageLite.codePath);
        }

        private static Handle create(List<String> list, boolean z2, boolean z3, boolean z4, String str, String str2) throws IOException {
            int size = list.size();
            long[] jArr = new long[size];
            for (int i2 = 0; i2 < size; i2++) {
                String str3 = list.get(i2);
                long jNativeOpenApk = NativeLibraryHelper.nativeOpenApk(str3);
                jArr[i2] = jNativeOpenApk;
                if (jNativeOpenApk == 0) {
                    for (int i3 = 0; i3 < i2; i3++) {
                        NativeLibraryHelper.nativeClose(jArr[i3]);
                    }
                    throw new IOException(c.j("Unable to open APK: ", str3));
                }
            }
            return new Handle(jArr, z2, z3, z4, str, str2);
        }
    }
}
