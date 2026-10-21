package com.android.server;

import android.accessibilityservice.c;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.IPackageManager;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.DropBoxManager;
import android.os.Environment;
import android.os.FileObserver;
import android.os.FileUtils;
import android.os.RecoverySystem;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.storage.StorageManager;
import android.provider.Downloads;
import android.provider.SettingsStringUtil;
import android.text.TextUtils;
import android.util.AtomicFile;
import android.util.Slog;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.util.FastXmlSerializer;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class BootReceiver extends BroadcastReceiver {
    private static final String FSCK_FS_MODIFIED = "FILE SYSTEM WAS MODIFIED";
    private static final String FSCK_PASS_PATTERN = "Pass ([1-9]E?):";
    private static final String FSCK_TREE_OPTIMIZATION_PATTERN = "Inode [0-9]+ extent tree.*could be shorter";
    private static final int FS_STAT_FS_FIXED = 1024;
    private static final String FS_STAT_PATTERN = "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)";
    private static final String LAST_HEADER_FILE = "last-header.txt";
    private static final String[] LAST_KMSG_FILES;
    private static final String LAST_SHUTDOWN_TIME_PATTERN = "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)";
    private static final String LOG_FILES_FILE = "log-files.xml";
    private static final int LOG_SIZE;
    private static final String[] MOUNT_DURATION_PROPS_POSTFIX;
    private static final String OLD_UPDATER_CLASS = "com.google.android.systemupdater.SystemUpdateReceiver";
    private static final String OLD_UPDATER_PACKAGE = "com.google.android.systemupdater";
    private static final String SHUTDOWN_METRICS_FILE = "/data/system/shutdown-metrics.txt";
    private static final String SHUTDOWN_TRON_METRICS_PREFIX = "shutdown_";
    private static final String TAG = "BootReceiver";
    private static final File TOMBSTONE_DIR;
    private static final int UMOUNT_STATUS_NOT_AVAILABLE = 4;
    private static final File lastHeaderFile;
    private static final AtomicFile sFile;
    private static FileObserver sTombstoneObserver;

    static {
        LOG_SIZE = SystemProperties.getInt("ro.debuggable", 0) == 1 ? 98304 : 65536;
        TOMBSTONE_DIR = new File("/data/tombstones");
        sTombstoneObserver = null;
        sFile = new AtomicFile(new File(Environment.getDataSystemDirectory(), LOG_FILES_FILE));
        lastHeaderFile = new File(Environment.getDataSystemDirectory(), LAST_HEADER_FILE);
        MOUNT_DURATION_PROPS_POSTFIX = new String[]{"early", PhoneConstants.APN_TYPE_DEFAULT, "late"};
        LAST_KMSG_FILES = new String[]{"/sys/fs/pstore/console-ramoops", "/proc/last_kmsg"};
    }

    private static void addAuditErrorsToDropBox(DropBoxManager dropBoxManager, HashMap<String, Long> map, String str, int i2, String str2) throws IOException {
        if (dropBoxManager == null || !dropBoxManager.isTagEnabled(str2)) {
            return;
        }
        Slog.i(TAG, "Copying audit failures to DropBox");
        File file = new File("/proc/last_kmsg");
        long jLastModified = file.lastModified();
        if (jLastModified <= 0) {
            file = new File("/sys/fs/pstore/console-ramoops");
            jLastModified = file.lastModified();
            if (jLastModified <= 0) {
                file = new File("/sys/fs/pstore/console-ramoops-0");
                jLastModified = file.lastModified();
            }
        }
        if (jLastModified <= 0) {
            return;
        }
        if (map.containsKey(str2) && map.get(str2).longValue() == jLastModified) {
            return;
        }
        map.put(str2, Long.valueOf(jLastModified));
        String textFile = FileUtils.readTextFile(file, i2, "[[TRUNCATED]]\n");
        StringBuilder sb = new StringBuilder();
        for (String str3 : textFile.split("\n")) {
            if (str3.contains("audit")) {
                sb.append(str3.concat("\n"));
            }
        }
        Slog.i(TAG, "Copied " + sb.toString().length() + " worth of audits to DropBox");
        dropBoxManager.addText(str2, str + sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addFileToDropBox(DropBoxManager dropBoxManager, HashMap<String, Long> map, String str, String str2, int i2, String str3) {
        addFileWithFootersToDropBox(dropBoxManager, map, str, "", str2, i2, str3);
    }

    private static void addFileWithFootersToDropBox(DropBoxManager dropBoxManager, HashMap<String, Long> map, String str, String str2, String str3, int i2, String str4) {
        if (dropBoxManager == null || !dropBoxManager.isTagEnabled(str4)) {
            return;
        }
        File file = new File(str3);
        long jLastModified = file.lastModified();
        if (jLastModified <= 0) {
            return;
        }
        if (map.containsKey(str3) && map.get(str3).longValue() == jLastModified) {
            return;
        }
        map.put(str3, Long.valueOf(jLastModified));
        Slog.i(TAG, "Copying " + str3 + " to DropBox (" + str4 + ")");
        try {
            dropBoxManager.addText(str4, str + FileUtils.readTextFile(file, i2, "[[TRUNCATED]]\n") + str2);
        } catch (FileNotFoundException e2) {
            Slog.e(TAG, "addFileWithFootersToDropBox maybe fail ", e2);
        }
    }

    private static void addFsckErrorsToDropBoxAndLogFsStat(DropBoxManager dropBoxManager, HashMap<String, Long> map, String str, int i2, String str2) throws IOException {
        boolean z2 = dropBoxManager != null && dropBoxManager.isTagEnabled(str2);
        Slog.i(TAG, "Checking for fsck errors");
        File file = new File("/dev/fscklogs/log");
        if (file.lastModified() <= 0) {
            return;
        }
        String textFile = FileUtils.readTextFile(file, i2, "[[TRUNCATED]]\n");
        Pattern patternCompile = Pattern.compile(FS_STAT_PATTERN);
        String[] strArrSplit = textFile.split("\n");
        boolean z3 = false;
        int i3 = 0;
        int i4 = 0;
        for (String str3 : strArrSplit) {
            if (str3.contains(FSCK_FS_MODIFIED)) {
                z3 = true;
            } else if (str3.contains("fs_stat")) {
                Matcher matcher = patternCompile.matcher(str3);
                if (matcher.find()) {
                    handleFsckFsStat(matcher, strArrSplit, i3, i4);
                    i3 = i4;
                } else {
                    Slog.w(TAG, "cannot parse fs_stat:".concat(str3));
                }
            }
            i4++;
        }
        if (z2 && z3) {
            addFileToDropBox(dropBoxManager, map, str, "/dev/fscklogs/log", i2, str2);
        }
        file.delete();
    }

    public static int fixFsckFsStat(String str, int i2, String[] strArr, int i3, int i4) {
        String strTrim;
        boolean z2;
        int i5;
        if ((i2 & 1024) != 0) {
            Pattern patternCompile = Pattern.compile(FSCK_PASS_PATTERN);
            Pattern patternCompile2 = Pattern.compile(FSCK_TREE_OPTIMIZATION_PATTERN);
            String strGroup = "";
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            int i6 = i3;
            while (true) {
                if (i6 < i4) {
                    strTrim = strArr[i6];
                    if (!strTrim.contains(FSCK_FS_MODIFIED)) {
                        if (strTrim.startsWith("Pass ")) {
                            Matcher matcher = patternCompile.matcher(strTrim);
                            if (matcher.find()) {
                                strGroup = matcher.group(1);
                            }
                            i5 = 1;
                        } else if (strTrim.startsWith("Inode ")) {
                            if (!patternCompile2.matcher(strTrim).find() || !strGroup.equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
                                z2 = true;
                                break;
                            }
                            Slog.i(TAG, "fs_stat, partition:" + str + " found tree optimization:" + strTrim);
                            i5 = 1;
                            z3 = true;
                        } else if (strTrim.startsWith("[QUOTA WARNING]") && strGroup.equals("5")) {
                            Slog.i(TAG, "fs_stat, partition:" + str + " found quota warning:" + strTrim);
                            if (!z3) {
                                z2 = false;
                                z4 = true;
                                break;
                            }
                            i5 = 1;
                            z4 = true;
                        } else if (strTrim.startsWith("Update quota info") && strGroup.equals("5")) {
                            i5 = 1;
                        } else if (strTrim.startsWith("Timestamp(s) on inode") && strTrim.contains("beyond 2310-04-04 are likely pre-1970") && strGroup.equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
                            Slog.i(TAG, "fs_stat, partition:" + str + " found timestamp adjustment:" + strTrim);
                            int i7 = i6 + 1;
                            if (strArr[i7].contains("Fix? yes")) {
                                i6 = i7;
                            }
                            i5 = 1;
                            z5 = true;
                        } else {
                            strTrim = strTrim.trim();
                            if (!strTrim.isEmpty() && !strGroup.isEmpty()) {
                                z2 = true;
                                break;
                            }
                            i5 = 1;
                        }
                        i6 += i5;
                    }
                }
                strTrim = null;
                z2 = false;
                break;
            }
            if (z2) {
                if (strTrim != null) {
                    Slog.i(TAG, "fs_stat, partition:" + str + " fix:" + strTrim);
                }
            } else if (z4 && !z3) {
                Slog.i(TAG, "fs_stat, got quota fix without tree optimization, partition:" + str);
            } else if ((z3 && z4) || z5) {
                Slog.i(TAG, "fs_stat, partition:" + str + " fix ignored");
                return i2 & (-1025);
            }
        }
        return i2;
    }

    private String getBootHeadersToLogAndUpdate() {
        String previousBootHeaders = getPreviousBootHeaders();
        String currentBootHeaders = getCurrentBootHeaders();
        try {
            FileUtils.stringToFile(lastHeaderFile, currentBootHeaders);
        } catch (IOException e2) {
            Slog.e(TAG, "Error writing " + lastHeaderFile, e2);
        }
        return previousBootHeaders == null ? c.j("isPrevious: false\n", currentBootHeaders) : "isPrevious: true\n".concat(previousBootHeaders);
    }

    private String getCurrentBootHeaders() {
        StringBuilder sbQ = c.q(512, "Build: ");
        sbQ.append(Build.FINGERPRINT);
        sbQ.append("\nHardware: ");
        sbQ.append(Build.BOARD);
        sbQ.append("\nRevision: ");
        sbQ.append(SystemProperties.get("ro.revision", ""));
        sbQ.append("\nBootloader: ");
        sbQ.append(Build.BOOTLOADER);
        sbQ.append("\nRadio: ");
        sbQ.append(Build.RADIO);
        sbQ.append("\nKernel: ");
        sbQ.append(FileUtils.readTextFile(new File("/proc/version"), 1024, "...\n"));
        sbQ.append("\n");
        return sbQ.toString();
    }

    private String getPreviousBootHeaders() {
        try {
            return FileUtils.readTextFile(lastHeaderFile, 0, null);
        } catch (IOException unused) {
            return null;
        }
    }

    private static void handleFsckFsStat(Matcher matcher, String[] strArr, int i2, int i3) {
        String strGroup = matcher.group(1);
        try {
            int iFixFsckFsStat = fixFsckFsStat(strGroup, Integer.decode(matcher.group(2)).intValue(), strArr, i2, i3);
            MetricsLogger.histogram(null, "boot_fs_stat_" + strGroup, iFixFsckFsStat);
            Slog.i(TAG, "fs_stat, partition:" + strGroup + " stat:0x" + Integer.toHexString(iFixFsckFsStat));
        } catch (NumberFormatException unused) {
            StringBuilder sbV = c.v("cannot parse fs_stat: partition:", strGroup, " stat:");
            sbV.append(matcher.group(2));
            Slog.w(TAG, sbV.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logBootEvents(Context context) throws IOException {
        String string;
        final DropBoxManager dropBoxManager = (DropBoxManager) context.getSystemService(Context.DROPBOX_SERVICE);
        final String bootHeadersToLogAndUpdate = getBootHeadersToLogAndUpdate();
        String str = SystemProperties.get("ro.boot.bootreason", null);
        String strHandleAftermath = RecoverySystem.handleAftermath(context);
        if (strHandleAftermath != null && dropBoxManager != null) {
            dropBoxManager.addText("SYSTEM_RECOVERY_LOG", bootHeadersToLogAndUpdate + strHandleAftermath);
        }
        if (str != null) {
            StringBuilder sb = new StringBuilder(512);
            sb.append("\nBoot info:\nLast boot reason: ");
            sb.append(str);
            sb.append("\n");
            string = sb.toString();
        } else {
            string = "";
        }
        HashMap<String, Long> timestamps = readTimestamps();
        if (SystemProperties.getLong("ro.runtime.firstboot", 0L) == 0) {
            if (!StorageManager.inCryptKeeperBounce()) {
                SystemProperties.set("ro.runtime.firstboot", Long.toString(System.currentTimeMillis()));
            }
            if (dropBoxManager != null) {
                dropBoxManager.addText("SYSTEM_BOOT", bootHeadersToLogAndUpdate);
            }
            int i2 = LOG_SIZE;
            String str2 = string;
            addFileWithFootersToDropBox(dropBoxManager, timestamps, bootHeadersToLogAndUpdate, str2, "/proc/last_kmsg", -i2, "SYSTEM_LAST_KMSG");
            addFileWithFootersToDropBox(dropBoxManager, timestamps, bootHeadersToLogAndUpdate, str2, "/sys/fs/pstore/console-ramoops", -i2, "SYSTEM_LAST_KMSG");
            addFileWithFootersToDropBox(dropBoxManager, timestamps, bootHeadersToLogAndUpdate, str2, "/sys/fs/pstore/console-ramoops-0", -i2, "SYSTEM_LAST_KMSG");
            addFileToDropBox(dropBoxManager, timestamps, bootHeadersToLogAndUpdate, "/cache/recovery/log", -i2, "SYSTEM_RECOVERY_LOG");
            addFileToDropBox(dropBoxManager, timestamps, bootHeadersToLogAndUpdate, "/cache/recovery/last_kmsg", -i2, "SYSTEM_RECOVERY_KMSG");
            try {
                addAuditErrorsToDropBox(dropBoxManager, timestamps, bootHeadersToLogAndUpdate, -i2, "SYSTEM_AUDIT");
            } catch (FileNotFoundException e2) {
                Slog.e(TAG, "addAuditErrorsToDropBox maybe fail ", e2);
            }
        } else if (dropBoxManager != null) {
            dropBoxManager.addText("SYSTEM_RESTART", bootHeadersToLogAndUpdate);
        }
        logFsShutdownTime();
        logFsMountTime();
        addFsckErrorsToDropBoxAndLogFsStat(dropBoxManager, timestamps, bootHeadersToLogAndUpdate, -LOG_SIZE, "SYSTEM_FSCK");
        logSystemServerShutdownTimeMetrics();
        File[] fileArrListFiles = TOMBSTONE_DIR.listFiles();
        for (int i3 = 0; fileArrListFiles != null && i3 < fileArrListFiles.length; i3++) {
            if (fileArrListFiles[i3].isFile()) {
                addFileToDropBox(dropBoxManager, timestamps, bootHeadersToLogAndUpdate, fileArrListFiles[i3].getPath(), LOG_SIZE, "SYSTEM_TOMBSTONE");
            }
        }
        writeTimestamps(timestamps);
        FileObserver fileObserver = new FileObserver(TOMBSTONE_DIR.getPath(), 8) { // from class: com.android.server.BootReceiver.2
            @Override // android.os.FileObserver
            public void onEvent(int i4, String str3) {
                HashMap timestamps2 = BootReceiver.readTimestamps();
                try {
                    File file = new File(BootReceiver.TOMBSTONE_DIR, str3);
                    if (file.isFile()) {
                        BootReceiver.addFileToDropBox(dropBoxManager, timestamps2, bootHeadersToLogAndUpdate, file.getPath(), BootReceiver.LOG_SIZE, "SYSTEM_TOMBSTONE");
                    }
                } catch (IOException e3) {
                    Slog.e(BootReceiver.TAG, "Can't log tombstone", e3);
                }
                BootReceiver.this.writeTimestamps(timestamps2);
            }
        };
        sTombstoneObserver = fileObserver;
        fileObserver.startWatching();
    }

    private static void logFsMountTime() {
        for (String str : MOUNT_DURATION_PROPS_POSTFIX) {
            int i2 = SystemProperties.getInt("ro.boottime.init.mount_all." + str, 0);
            if (i2 != 0) {
                MetricsLogger.histogram(null, "boot_mount_all_duration_" + str, i2);
            }
        }
    }

    private static void logFsShutdownTime() {
        File file;
        String[] strArr = LAST_KMSG_FILES;
        int length = strArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                file = null;
                break;
            }
            file = new File(strArr[i2]);
            if (file.exists()) {
                break;
            } else {
                i2++;
            }
        }
        if (file == null) {
            return;
        }
        try {
            Matcher matcher = Pattern.compile(LAST_SHUTDOWN_TIME_PATTERN, 8).matcher(FileUtils.readTextFile(file, -16384, null));
            if (!matcher.find()) {
                MetricsLogger.histogram(null, "boot_fs_shutdown_umount_stat", 4);
                Slog.w(TAG, "boot_fs_shutdown, string not found");
                return;
            }
            MetricsLogger.histogram(null, "boot_fs_shutdown_duration", Integer.parseInt(matcher.group(1)));
            MetricsLogger.histogram(null, "boot_fs_shutdown_umount_stat", Integer.parseInt(matcher.group(2)));
            Slog.i(TAG, "boot_fs_shutdown," + matcher.group(1) + "," + matcher.group(2));
        } catch (IOException e2) {
            Slog.w(TAG, "cannot read last msg", e2);
        }
    }

    private static void logSystemServerShutdownTimeMetrics() {
        File file = new File(SHUTDOWN_METRICS_FILE);
        String textFile = null;
        if (file.exists()) {
            try {
                textFile = FileUtils.readTextFile(file, 0, null);
            } catch (IOException e2) {
                Slog.e(TAG, "Problem reading " + file, e2);
            }
        }
        if (!TextUtils.isEmpty(textFile)) {
            for (String str : textFile.split(",")) {
                String[] strArrSplit = str.split(SettingsStringUtil.DELIMITER);
                if (strArrSplit.length != 2) {
                    Slog.e(TAG, "Wrong format of shutdown metrics - ".concat(textFile));
                } else if (strArrSplit[0].startsWith(SHUTDOWN_TRON_METRICS_PREFIX)) {
                    logTronShutdownMetric(strArrSplit[0], strArrSplit[1]);
                }
            }
        }
        file.delete();
    }

    private static void logTronShutdownMetric(String str, String str2) {
        try {
            int i2 = Integer.parseInt(str2);
            if (i2 >= 0) {
                MetricsLogger.histogram(null, str, i2);
            }
        } catch (NumberFormatException unused) {
            Slog.e(TAG, "Cannot parse metric " + str + " int value - " + str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:58:0x00d1 A[Catch: all -> 0x0158, PHI: r7
  0x00d1: PHI (r7v11 boolean) = (r7v7 boolean), (r7v8 boolean), (r7v9 boolean), (r7v10 boolean), (r7v14 boolean) binds: [B:57:0x00cf, B:64:0x00f1, B:69:0x010d, B:73:0x0127, B:78:0x014d] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #14 {, blocks: (B:4:0x0003, B:80:0x0150, B:58:0x00d1, B:83:0x0154, B:84:0x0157), top: B:98:0x0003 }] */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x014d, code lost:
    
        if (r2 == false) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap<java.lang.String, java.lang.Long> readTimestamps() {
        /*
            Method dump skipped, instruction units count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BootReceiver.readTimestamps():java.util.HashMap");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeOldUpdatePackages(Context context) {
        Downloads.removeAllDownloadsByPackage(context, OLD_UPDATER_PACKAGE, OLD_UPDATER_CLASS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeTimestamps(HashMap<String, Long> map) {
        AtomicFile atomicFile = sFile;
        synchronized (atomicFile) {
            try {
                try {
                    FileOutputStream fileOutputStreamStartWrite = atomicFile.startWrite();
                    try {
                        FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
                        fastXmlSerializer.setOutput(fileOutputStreamStartWrite, StandardCharsets.UTF_8.name());
                        fastXmlSerializer.startDocument(null, Boolean.TRUE);
                        fastXmlSerializer.startTag(null, "log-files");
                        for (String str : map.keySet()) {
                            fastXmlSerializer.startTag(null, "log");
                            fastXmlSerializer.attribute(null, "filename", str);
                            fastXmlSerializer.attribute(null, "timestamp", map.get(str).toString());
                            fastXmlSerializer.endTag(null, "log");
                        }
                        fastXmlSerializer.endTag(null, "log-files");
                        fastXmlSerializer.endDocument();
                        sFile.finishWrite(fileOutputStreamStartWrite);
                    } catch (IOException e2) {
                        Slog.w(TAG, "Failed to write timestamp file, using the backup: " + e2);
                        sFile.failWrite(fileOutputStreamStartWrite);
                    }
                } catch (IOException e3) {
                    Slog.w(TAG, "Failed to write timestamp file: " + e3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        new Thread() { // from class: com.android.server.BootReceiver.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                boolean zIsOnlyCoreApps;
                try {
                    BootReceiver.this.logBootEvents(context);
                } catch (Exception e2) {
                    Slog.e(BootReceiver.TAG, "Can't log boot events", e2);
                }
                try {
                    try {
                        zIsOnlyCoreApps = IPackageManager.Stub.asInterface(ServiceManager.getService("package")).isOnlyCoreApps();
                    } catch (RemoteException unused) {
                        zIsOnlyCoreApps = false;
                    }
                    if (zIsOnlyCoreApps) {
                        return;
                    }
                    BootReceiver.this.removeOldUpdatePackages(context);
                } catch (Exception e3) {
                    Slog.e(BootReceiver.TAG, "Can't remove old update packages", e3);
                }
            }
        }.start();
    }
}
