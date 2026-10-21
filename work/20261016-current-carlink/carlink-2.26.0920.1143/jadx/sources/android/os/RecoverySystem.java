package android.os;

import android.Manifest;
import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.backup.FullBackup;
import android.app.m;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.service.notification.ZenModeConfig;
import android.telephony.euicc.EuiccManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.WindowManager;
import com.android.internal.logging.MetricsLogger;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import libcore.io.Streams;
import sun.security.pkcs.PKCS7;
import sun.security.pkcs.SignerInfo;

/* JADX INFO: loaded from: classes.dex */
public class RecoverySystem {
    private static final String ACTION_EUICC_FACTORY_RESET = "com.android.internal.action.EUICC_FACTORY_RESET";
    public static final File BLOCK_MAP_FILE;
    private static final long DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS = 30000;
    private static final File DEFAULT_KEYSTORE = new File("/system/etc/security/otacerts.zip");
    private static final File LAST_INSTALL_FILE;
    private static final String LAST_PREFIX = "last_";
    private static final File LOG_FILE;
    private static final int LOG_FILE_MAX_LENGTH = 65536;
    private static final long MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS = 60000;
    private static final long MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS = 5000;
    private static final long PUBLISH_PROGRESS_INTERVAL_MS = 500;
    private static final File RECOVERY_DIR;
    private static final String TAG = "RecoverySystem";
    public static final File UNCRYPT_PACKAGE_FILE;
    public static final File UNCRYPT_STATUS_FILE;
    private static final Object sRequestLock;
    private final IRecoverySystem mService;

    /* JADX INFO: renamed from: android.os.RecoverySystem$2, reason: invalid class name */
    public static class AnonymousClass2 extends IRecoverySystemProgressListener.Stub {
        int lastProgress = 0;
        long lastPublishTime = System.currentTimeMillis();
        final /* synthetic */ ProgressListener val$listener;
        final /* synthetic */ Handler val$progressHandler;

        public AnonymousClass2(Handler handler, ProgressListener progressListener) {
            this.val$progressHandler = handler;
            this.val$listener = progressListener;
        }

        @Override // android.os.IRecoverySystemProgressListener
        public void onProgress(final int i2) {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            this.val$progressHandler.post(new Runnable() { // from class: android.os.RecoverySystem.2.1
                @Override // java.lang.Runnable
                public void run() {
                    int i3 = i2;
                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                    if (i3 > anonymousClass2.lastProgress) {
                        long j2 = jCurrentTimeMillis;
                        if (j2 - anonymousClass2.lastPublishTime > RecoverySystem.PUBLISH_PROGRESS_INTERVAL_MS) {
                            anonymousClass2.lastProgress = i3;
                            anonymousClass2.lastPublishTime = j2;
                            anonymousClass2.val$listener.onProgress(i3);
                        }
                    }
                }
            });
        }
    }

    public interface ProgressListener {
        void onProgress(int i2);
    }

    static {
        File file = new File("/cache/recovery");
        RECOVERY_DIR = file;
        LOG_FILE = new File(file, "log");
        LAST_INSTALL_FILE = new File(file, "last_install");
        BLOCK_MAP_FILE = new File(file, "block.map");
        UNCRYPT_PACKAGE_FILE = new File(file, "uncrypt_file");
        UNCRYPT_STATUS_FILE = new File(file, "uncrypt_status");
        sRequestLock = new Object();
    }

    public RecoverySystem() {
        this.mService = null;
    }

    private static void bootCommand(Context context, String... strArr) throws IOException {
        LOG_FILE.delete();
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                sb.append(str);
                sb.append("\n");
            }
        }
        ((RecoverySystem) context.getSystemService("recovery")).rebootRecoveryWithCommand(sb.toString());
        throw new IOException("Reboot failed (no permissions?)");
    }

    public static void cancelScheduledUpdate(Context context) throws IOException {
        if (!((RecoverySystem) context.getSystemService("recovery")).clearBcb()) {
            throw new IOException("cancel scheduled update failed");
        }
    }

    private boolean clearBcb() {
        try {
            return this.mService.clearBcb();
        } catch (RemoteException unused) {
            return false;
        }
    }

    private static HashSet<X509Certificate> getTrustedCerts(File file) throws IOException {
        HashSet<X509Certificate> hashSet = new HashSet<>();
        if (file == null) {
            file = DEFAULT_KEYSTORE;
        }
        ZipFile zipFile = new ZipFile(file);
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                InputStream inputStream = zipFile.getInputStream(enumerationEntries.nextElement());
                try {
                    hashSet.add((X509Certificate) certificateFactory.generateCertificate(inputStream));
                    inputStream.close();
                } catch (Throwable th) {
                    inputStream.close();
                    throw th;
                }
            }
            zipFile.close();
            return hashSet;
        } catch (Throwable th2) {
            zipFile.close();
            throw th2;
        }
    }

    public static String handleAftermath(Context context) {
        String textFile;
        String textFile2 = null;
        try {
            textFile = FileUtils.readTextFile(LOG_FILE, -65536, "...\n");
        } catch (FileNotFoundException unused) {
            Log.i(TAG, "No recovery log file");
            textFile = null;
        } catch (IOException e2) {
            Log.e(TAG, "Error reading recovery log", e2);
            textFile = null;
        }
        if (textFile != null) {
            parseLastInstallLog(context);
        }
        boolean zExists = BLOCK_MAP_FILE.exists();
        if (!zExists) {
            File file = UNCRYPT_PACKAGE_FILE;
            if (file.exists()) {
                try {
                    textFile2 = FileUtils.readTextFile(file, 0, null);
                } catch (IOException e3) {
                    Log.e(TAG, "Error reading uncrypt file", e3);
                }
                if (textFile2 != null && textFile2.startsWith("/data")) {
                    if (UNCRYPT_PACKAGE_FILE.delete()) {
                        Log.i(TAG, "Deleted: ".concat(textFile2));
                    } else {
                        Log.e(TAG, "Can't delete: ".concat(textFile2));
                    }
                }
            }
        }
        String[] list = RECOVERY_DIR.list();
        for (int i2 = 0; list != null && i2 < list.length; i2++) {
            if (!list[i2].startsWith(LAST_PREFIX) && ((!zExists || !list[i2].equals(BLOCK_MAP_FILE.getName())) && (!zExists || !list[i2].equals(UNCRYPT_PACKAGE_FILE.getName())))) {
                recursiveDelete(new File(RECOVERY_DIR, list[i2]));
            }
        }
        return textFile;
    }

    public static void installPackage(Context context, File file) {
        installPackage(context, file, false);
    }

    private static void parseLastInstallLog(Context context) {
        BufferedReader bufferedReader;
        int i2;
        int i3;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(LAST_INSTALL_FILE));
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            int i9 = -1;
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        BufferedReader bufferedReader3 = bufferedReader2;
                        int i15 = i4;
                        int i16 = i13;
                        int i17 = i14;
                        if (i5 != i15) {
                            MetricsLogger.histogram(context, "ota_time_total", i5);
                        }
                        if (i6 != i15) {
                            MetricsLogger.histogram(context, "ota_uncrypt_time", i6);
                        }
                        if (i7 != i15) {
                            MetricsLogger.histogram(context, "ota_source_version", i7);
                        }
                        if (i8 != i15) {
                            MetricsLogger.histogram(context, "ota_written_in_MiBs", i8);
                        }
                        if (i9 != i15) {
                            MetricsLogger.histogram(context, "ota_stashed_in_MiBs", i9);
                        }
                        if (i10 != i15) {
                            MetricsLogger.histogram(context, "ota_temperature_start", i10);
                        }
                        if (i11 != i15) {
                            MetricsLogger.histogram(context, "ota_temperature_end", i11);
                        }
                        if (i12 != i15) {
                            MetricsLogger.histogram(context, "ota_temperature_max", i12);
                        }
                        if (i16 != i15) {
                            MetricsLogger.histogram(context, "ota_non_ab_error_code", i16);
                        }
                        if (i17 != i15) {
                            MetricsLogger.histogram(context, "ota_non_ab_cause_code", i17);
                        }
                        bufferedReader3.close();
                        return;
                    }
                    int iIndexOf = line.indexOf(58);
                    if (iIndexOf == i4 || (i2 = iIndexOf + 1) >= line.length()) {
                        bufferedReader = bufferedReader2;
                        i13 = i13;
                        i14 = i14;
                    } else {
                        String strTrim = line.substring(i2).trim();
                        BufferedReader bufferedReader4 = bufferedReader2;
                        try {
                            long j2 = Long.parseLong(strTrim);
                            bufferedReader = bufferedReader4;
                            try {
                                try {
                                    try {
                                        if (line.startsWith("bytes")) {
                                            long j3 = j2 / 1048576;
                                            i3 = (int) j3;
                                            if (j3 != i3) {
                                                throw new ArithmeticException();
                                            }
                                        } else {
                                            i3 = (int) j2;
                                            if (j2 != i3) {
                                                throw new ArithmeticException();
                                            }
                                        }
                                        if (line.startsWith(DropBoxManager.EXTRA_TIME)) {
                                            i5 = i3;
                                        } else if (line.startsWith("uncrypt_time")) {
                                            i6 = i3;
                                        } else if (line.startsWith("source_build")) {
                                            i7 = i3;
                                        } else if (line.startsWith("bytes_written")) {
                                            if (i8 != -1) {
                                                i3 += i8;
                                            }
                                            i8 = i3;
                                        } else if (line.startsWith("bytes_stashed")) {
                                            if (i9 != -1) {
                                                i3 += i9;
                                            }
                                            i9 = i3;
                                        } else if (line.startsWith("temperature_start")) {
                                            i10 = i3;
                                        } else if (line.startsWith("temperature_end")) {
                                            i11 = i3;
                                        } else if (line.startsWith("temperature_max")) {
                                            i12 = i3;
                                        } else {
                                            if (line.startsWith("error")) {
                                                i13 = i3;
                                                i14 = i14;
                                            } else if (line.startsWith("cause")) {
                                                i14 = i3;
                                                i13 = i13;
                                            }
                                            bufferedReader2 = bufferedReader;
                                            i4 = -1;
                                        }
                                        i13 = i13;
                                        i14 = i14;
                                        bufferedReader2 = bufferedReader;
                                    } catch (ArithmeticException unused) {
                                        Log.e(TAG, "Number overflows in " + line);
                                        bufferedReader2 = bufferedReader;
                                        i13 = i13;
                                        i14 = i14;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                }
                            } catch (ArithmeticException unused2) {
                                i13 = i13;
                                i14 = i14;
                            }
                        } catch (NumberFormatException unused3) {
                            i13 = i13;
                            i14 = i14;
                            bufferedReader = bufferedReader4;
                            Log.e(TAG, "Failed to parse numbers in " + line);
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader4;
                        }
                        i4 = -1;
                    }
                    bufferedReader2 = bufferedReader;
                    i13 = i13;
                    i14 = i14;
                    i4 = -1;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = bufferedReader2;
                }
                Throwable th4 = th;
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        bufferedReader.close();
                        throw th5;
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                        throw th5;
                    }
                }
            }
        } catch (IOException e2) {
            Log.e(TAG, "Failed to read lines in last_install", e2);
        }
    }

    public static void processPackage(Context context, File file, ProgressListener progressListener, Handler handler) throws IOException {
        AnonymousClass2 anonymousClass2;
        String canonicalPath = file.getCanonicalPath();
        if (canonicalPath.startsWith("/data/")) {
            RecoverySystem recoverySystem = (RecoverySystem) context.getSystemService("recovery");
            if (progressListener != null) {
                if (handler == null) {
                    handler = new Handler(context.getMainLooper());
                }
                anonymousClass2 = new AnonymousClass2(handler, progressListener);
            } else {
                anonymousClass2 = null;
            }
            if (!recoverySystem.uncrypt(canonicalPath, anonymousClass2)) {
                throw new IOException("process package failed");
            }
        }
    }

    private static boolean readAndVerifyPackageCompatibilityEntry(File file) throws IOException {
        ZipFile zipFile = new ZipFile(file);
        try {
            ZipEntry entry = zipFile.getEntry("compatibility.zip");
            if (entry == null) {
                zipFile.close();
                return true;
            }
            boolean zVerifyPackageCompatibility = verifyPackageCompatibility(zipFile.getInputStream(entry));
            zipFile.close();
            return zVerifyPackageCompatibility;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    zipFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void rebootPromptAndWipeUserData(Context context, String str) throws IOException {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = "--reason=" + sanitizeArg(str);
        }
        bootCommand(context, null, "--prompt_and_wipe_data", str2, "--locale=" + Locale.getDefault().toString());
    }

    private void rebootRecoveryWithCommand(String str) {
        try {
            this.mService.rebootRecoveryWithCommand(str);
        } catch (RemoteException unused) {
        }
    }

    public static void rebootWipeAb(Context context, File file, String str) throws IOException {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = "--reason=" + sanitizeArg(str);
        }
        bootCommand(context, "--wipe_ab", android.accessibilityservice.c.j("--wipe_package=", file.getCanonicalPath()), str2, "--locale=" + Locale.getDefault().toLanguageTag());
    }

    public static void rebootWipeCache(Context context) throws IOException {
        rebootWipeCache(context, context.getPackageName());
    }

    public static void rebootWipeUserData(Context context) throws IOException {
        rebootWipeUserData(context, false, context.getPackageName(), false, false);
    }

    private static void recursiveDelete(File file) {
        if (file.isDirectory()) {
            String[] list = file.list();
            for (int i2 = 0; list != null && i2 < list.length; i2++) {
                recursiveDelete(new File(file, list[i2]));
            }
        }
        if (file.delete()) {
            Log.i(TAG, "Deleted: " + file);
        } else {
            Log.e(TAG, "Can't delete: " + file);
        }
    }

    private static String sanitizeArg(String str) {
        return str.replace((char) 0, '?').replace('\n', '?');
    }

    public static void scheduleUpdateOnBoot(Context context, File file) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        boolean zEndsWith = canonicalPath.endsWith("_s.zip");
        if (canonicalPath.startsWith("/data/")) {
            canonicalPath = "@/cache/recovery/block.map";
        }
        String strD = android.accessibilityservice.c.D(android.accessibilityservice.c.k("--update_package=", canonicalPath, "\n"), "--locale=" + Locale.getDefault().toLanguageTag() + "\n");
        if (zEndsWith) {
            strD = android.accessibilityservice.c.D(strD, "--security\n");
        }
        if (!((RecoverySystem) context.getSystemService("recovery")).setupBcb(strD)) {
            throw new IOException("schedule update on boot failed");
        }
    }

    private boolean setupBcb(String str) {
        try {
            return this.mService.setupBcb(str);
        } catch (RemoteException unused) {
            return false;
        }
    }

    private boolean uncrypt(String str, IRecoverySystemProgressListener iRecoverySystemProgressListener) {
        try {
            return this.mService.uncrypt(str, iRecoverySystemProgressListener);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public static void verifyPackage(File file, ProgressListener progressListener, File file2) throws SignatureException, IOException {
        long length = file.length();
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, FullBackup.ROOT_TREE_TOKEN);
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z2 = false;
            if (progressListener != null) {
                progressListener.onProgress(0);
            }
            randomAccessFile.seek(length - 6);
            byte[] bArr = new byte[6];
            randomAccessFile.readFully(bArr);
            if (bArr[2] != -1 || bArr[3] != -1) {
                throw new SignatureException("no signature in file (no footer)");
            }
            int i2 = (bArr[4] & 255) | ((bArr[5] & 255) << 8);
            int i3 = ((bArr[1] & 255) << 8) | (bArr[0] & 255);
            int i4 = i2 + 22;
            byte[] bArr2 = new byte[i4];
            randomAccessFile.seek(length - ((long) i4));
            randomAccessFile.readFully(bArr2);
            if (bArr2[0] != 80 || bArr2[1] != 75 || bArr2[2] != 5 || bArr2[3] != 6) {
                throw new SignatureException("no signature in file (bad footer)");
            }
            for (int i5 = 4; i5 < i4 - 3; i5++) {
                if (bArr2[i5] == 80 && bArr2[i5 + 1] == 75 && bArr2[i5 + 2] == 5) {
                    if (bArr2[i5 + 3] == 6) {
                        throw new SignatureException("EOCD marker found after start of EOCD");
                    }
                }
            }
            PKCS7 pkcs7 = new PKCS7(new ByteArrayInputStream(bArr2, i4 - i3, i3));
            X509Certificate[] certificates = pkcs7.getCertificates();
            if (certificates == null || certificates.length == 0) {
                throw new SignatureException("signature contains no certificates");
            }
            PublicKey publicKey = certificates[0].getPublicKey();
            SignerInfo[] signerInfos = pkcs7.getSignerInfos();
            if (signerInfos == null || signerInfos.length == 0) {
                throw new SignatureException("signature contains no signedData");
            }
            SignerInfo signerInfo = signerInfos[0];
            Iterator<X509Certificate> it = getTrustedCerts(file2 == null ? DEFAULT_KEYSTORE : file2).iterator();
            while (it.hasNext()) {
                if (it.next().getPublicKey().equals(publicKey)) {
                    z2 = true;
                    break;
                }
            }
            if (!z2) {
                throw new SignatureException("signature doesn't match any trusted key");
            }
            randomAccessFile.seek(0L);
            SignerInfo signerInfoVerify = pkcs7.verify(signerInfo, new InputStream(length, i2, jCurrentTimeMillis, randomAccessFile, progressListener) { // from class: android.os.RecoverySystem.1
                long lastPublishTime;
                long toRead;
                final /* synthetic */ int val$commentSize;
                final /* synthetic */ long val$fileLen;
                final /* synthetic */ ProgressListener val$listenerForInner;
                final /* synthetic */ RandomAccessFile val$raf;
                final /* synthetic */ long val$startTimeMillis;
                long soFar = 0;
                int lastPercent = 0;

                {
                    this.val$fileLen = length;
                    this.val$commentSize = i2;
                    this.val$startTimeMillis = jCurrentTimeMillis;
                    this.val$raf = randomAccessFile;
                    this.val$listenerForInner = progressListener;
                    this.toRead = (length - ((long) i2)) - 2;
                    this.lastPublishTime = jCurrentTimeMillis;
                }

                @Override // java.io.InputStream
                public int read() {
                    throw new UnsupportedOperationException();
                }

                @Override // java.io.InputStream
                public int read(byte[] bArr3, int i6, int i7) throws IOException {
                    if (this.soFar >= this.toRead || Thread.currentThread().isInterrupted()) {
                        return -1;
                    }
                    long j2 = this.soFar;
                    long j3 = ((long) i7) + j2;
                    long j4 = this.toRead;
                    if (j3 > j4) {
                        i7 = (int) (j4 - j2);
                    }
                    int i8 = this.val$raf.read(bArr3, i6, i7);
                    this.soFar += (long) i8;
                    if (this.val$listenerForInner != null) {
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        int i9 = (int) ((this.soFar * 100) / this.toRead);
                        if (i9 > this.lastPercent && jCurrentTimeMillis2 - this.lastPublishTime > RecoverySystem.PUBLISH_PROGRESS_INTERVAL_MS) {
                            this.lastPercent = i9;
                            this.lastPublishTime = jCurrentTimeMillis2;
                            this.val$listenerForInner.onProgress(i9);
                        }
                    }
                    return i8;
                }
            });
            boolean zInterrupted = Thread.interrupted();
            if (progressListener != null) {
                progressListener.onProgress(100);
            }
            if (zInterrupted) {
                throw new SignatureException("verification was interrupted");
            }
            if (signerInfoVerify == null) {
                throw new SignatureException("signature digest verification failed");
            }
            randomAccessFile.close();
            if (!readAndVerifyPackageCompatibilityEntry(file)) {
                throw new SignatureException("package compatibility verification failed");
            }
        } catch (Throwable th) {
            randomAccessFile.close();
            throw th;
        }
    }

    private static boolean verifyPackageCompatibility(InputStream inputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                if (arrayList.isEmpty()) {
                    throw new IOException("no entries found in the compatibility file");
                }
                return VintfObject.verify((String[]) arrayList.toArray(new String[arrayList.size()])) == 0;
            }
            long size = nextEntry.getSize();
            if (size > 2147483647L || size < 0) {
                throw new IOException("invalid entry size (" + size + ") in the compatibility file");
            }
            byte[] bArr = new byte[(int) size];
            Streams.readFully(zipInputStream, bArr);
            arrayList.add(new String(bArr, StandardCharsets.UTF_8));
        }
    }

    private static void wipeEuiccData(Context context, final boolean z2) {
        if (Settings.Global.getInt(context.getContentResolver(), Settings.Global.EUICC_PROVISIONED, 0) == 0) {
            Log.d(TAG, "Skipping eUICC wipe/retain as it is not provisioned");
            return;
        }
        EuiccManager euiccManager = (EuiccManager) context.getSystemService(Context.EUICC_SERVICE);
        if (euiccManager == null || !euiccManager.isEnabled()) {
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: android.os.RecoverySystem.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (RecoverySystem.ACTION_EUICC_FACTORY_RESET.equals(intent.getAction())) {
                    if (getResultCode() != 0) {
                        int intExtra = intent.getIntExtra(EuiccManager.EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE, 0);
                        if (z2) {
                            m.p("Error wiping euicc data, Detailed code = ", intExtra, RecoverySystem.TAG);
                        } else {
                            m.p("Error retaining euicc data, Detailed code = ", intExtra, RecoverySystem.TAG);
                        }
                    } else if (z2) {
                        Log.d(RecoverySystem.TAG, "Successfully wiped euicc data.");
                    } else {
                        Log.d(RecoverySystem.TAG, "Successfully retained euicc data.");
                    }
                    countDownLatch.countDown();
                }
            }
        };
        Intent intent = new Intent(ACTION_EUICC_FACTORY_RESET);
        intent.setPackage(ZenModeConfig.SYSTEM_AUTHORITY);
        PendingIntent broadcastAsUser = PendingIntent.getBroadcastAsUser(context, 0, intent, 134217728, UserHandle.SYSTEM);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_EUICC_FACTORY_RESET);
        HandlerThread handlerThread = new HandlerThread("euiccWipeFinishReceiverThread");
        handlerThread.start();
        context.getApplicationContext().registerReceiver(broadcastReceiver, intentFilter, null, new Handler(handlerThread.getLooper()));
        if (z2) {
            euiccManager.eraseSubscriptions(broadcastAsUser);
        } else {
            euiccManager.retainSubscriptionsForFactoryReset(broadcastAsUser);
        }
        try {
            long j2 = Settings.Global.getLong(context.getContentResolver(), Settings.Global.EUICC_FACTORY_RESET_TIMEOUT_MILLIS, 30000L);
            long j3 = 5000;
            if (j2 < 5000) {
                j2 = j3;
            } else {
                j3 = 60000;
                if (j2 > 60000) {
                    j2 = j3;
                }
            }
            if (!countDownLatch.await(j2, TimeUnit.MILLISECONDS)) {
                if (z2) {
                    Log.e(TAG, "Timeout wiping eUICC data.");
                } else {
                    Log.e(TAG, "Timeout retaining eUICC data.");
                }
            }
            context.getApplicationContext().unregisterReceiver(broadcastReceiver);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            if (z2) {
                Log.e(TAG, "Wiping eUICC data interrupted", e2);
            } else {
                Log.e(TAG, "Retaining eUICC data interrupted", e2);
            }
        }
    }

    public static void installPackage(Context context, File file, boolean z2) {
        synchronized (sRequestLock) {
            LOG_FILE.delete();
            File file2 = UNCRYPT_PACKAGE_FILE;
            file2.delete();
            String canonicalPath = file.getCanonicalPath();
            Log.w(TAG, "!!! REBOOTING TO INSTALL " + canonicalPath + " !!!");
            boolean zEndsWith = canonicalPath.endsWith("_s.zip");
            if (canonicalPath.startsWith("/data/")) {
                if (!z2) {
                    FileWriter fileWriter = new FileWriter(file2);
                    try {
                        fileWriter.write(canonicalPath.concat("\n"));
                        fileWriter.close();
                        if (!file2.setReadable(true, false) || !file2.setWritable(true, false)) {
                            Log.e(TAG, "Error setting permission for " + file2);
                        }
                        BLOCK_MAP_FILE.delete();
                    } catch (Throwable th) {
                        fileWriter.close();
                        throw th;
                    }
                } else if (!BLOCK_MAP_FILE.exists()) {
                    Log.e(TAG, "Package claimed to have been processed but failed to find the block map file.");
                    throw new IOException("Failed to find block map file");
                }
                canonicalPath = "@/cache/recovery/block.map";
            }
            String str = ("--update_package=" + canonicalPath + "\n") + ("--locale=" + Locale.getDefault().toLanguageTag() + "\n");
            if (zEndsWith) {
                str = str + "--security\n";
            }
            if (!((RecoverySystem) context.getSystemService("recovery")).setupBcb(str)) {
                throw new IOException("Setup BCB failed");
            }
            PowerManager powerManager = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
            String str2 = PowerManager.REBOOT_RECOVERY_UPDATE;
            if (context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_LEANBACK) && ((WindowManager) context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getState() != 2) {
                str2 = "recovery-update,quiescent";
            }
            powerManager.reboot(str2);
            throw new IOException("Reboot failed (no permissions?)");
        }
    }

    public static void rebootWipeCache(Context context, String str) throws IOException {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = "--reason=" + sanitizeArg(str);
        }
        bootCommand(context, "--wipe_cache", str2, "--locale=" + Locale.getDefault().toLanguageTag());
    }

    public static void rebootWipeUserData(Context context, String str) throws IOException {
        rebootWipeUserData(context, false, str, false, false);
    }

    public RecoverySystem(IRecoverySystem iRecoverySystem) {
        this.mService = iRecoverySystem;
    }

    public static void rebootWipeUserData(Context context, boolean z2) throws IOException {
        rebootWipeUserData(context, z2, context.getPackageName(), false, false);
    }

    public static void rebootWipeUserData(Context context, boolean z2, String str, boolean z3) throws IOException {
        rebootWipeUserData(context, z2, str, z3, false);
    }

    public static void rebootWipeUserData(Context context, boolean z2, String str, boolean z3, boolean z4) throws IOException {
        UserManager userManager = (UserManager) context.getSystemService("user");
        if (!z3 && userManager.hasUserRestriction(UserManager.DISALLOW_FACTORY_RESET)) {
            throw new SecurityException("Wiping data is not allowed for this user.");
        }
        final ConditionVariable conditionVariable = new ConditionVariable();
        Intent intent = new Intent(Intent.ACTION_MASTER_CLEAR_NOTIFICATION);
        intent.addFlags(285212672);
        context.sendOrderedBroadcastAsUser(intent, UserHandle.SYSTEM, Manifest.permission.MASTER_CLEAR, new BroadcastReceiver() { // from class: android.os.RecoverySystem.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent2) {
                conditionVariable.open();
            }
        }, null, 0, null, null);
        conditionVariable.block();
        wipeEuiccData(context, z4);
        String str2 = null;
        String str3 = z2 ? "--shutdown_after" : null;
        if (!TextUtils.isEmpty(str)) {
            str2 = "--reason=" + sanitizeArg(str);
        }
        bootCommand(context, str3, "--wipe_data", str2, "--locale=" + Locale.getDefault().toLanguageTag());
    }

    public static void processPackage(Context context, File file, ProgressListener progressListener) throws IOException {
        processPackage(context, file, progressListener, null);
    }

    @SuppressLint({"Doclava125"})
    public static boolean verifyPackageCompatibility(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            boolean zVerifyPackageCompatibility = verifyPackageCompatibility(fileInputStream);
            fileInputStream.close();
            return zVerifyPackageCompatibility;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
