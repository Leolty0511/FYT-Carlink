package android.app.backup;

import android.accessibilityservice.c;
import android.app.IBackupAgent;
import android.app.QueuedWork;
import android.app.m;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ApplicationInfo;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.util.ArraySet;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class BackupAgent extends ContextWrapper {
    private static final boolean DEBUG = false;
    private static final String TAG = "BackupAgent";
    public static final int TYPE_DIRECTORY = 2;
    public static final int TYPE_EOF = 0;
    public static final int TYPE_FILE = 1;
    public static final int TYPE_SYMLINK = 3;
    private final IBinder mBinder;
    Handler mHandler;

    public class BackupServiceBinder extends IBackupAgent.Stub {
        private static final String TAG = "BackupServiceBinder";

        private BackupServiceBinder() {
        }

        @Override // android.app.IBackupAgent
        public void doBackup(ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, ParcelFileDescriptor parcelFileDescriptor3, long j2, int i2, IBackupManager iBackupManager) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    BackupAgent.this.onBackup(parcelFileDescriptor, new BackupDataOutput(parcelFileDescriptor2.getFileDescriptor(), j2), parcelFileDescriptor3);
                    BackupAgent.this.waitForSharedPrefs();
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i2, 0L);
                    } catch (RemoteException unused) {
                    }
                    if (Binder.getCallingPid() != Process.myPid()) {
                        IoUtils.closeQuietly(parcelFileDescriptor);
                        IoUtils.closeQuietly(parcelFileDescriptor2);
                        IoUtils.closeQuietly(parcelFileDescriptor3);
                    }
                } catch (Throwable th) {
                    BackupAgent.this.waitForSharedPrefs();
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i2, 0L);
                    } catch (RemoteException unused2) {
                    }
                    if (Binder.getCallingPid() == Process.myPid()) {
                        throw th;
                    }
                    IoUtils.closeQuietly(parcelFileDescriptor);
                    IoUtils.closeQuietly(parcelFileDescriptor2);
                    IoUtils.closeQuietly(parcelFileDescriptor3);
                    throw th;
                }
            } catch (IOException e2) {
                Log.d(TAG, "onBackup (" + BackupAgent.this.getClass().getName() + ") threw", e2);
                throw new RuntimeException(e2);
            } catch (RuntimeException e3) {
                Log.d(TAG, "onBackup (" + BackupAgent.this.getClass().getName() + ") threw", e3);
                throw e3;
            }
        }

        /* JADX WARN: Code duplicated, block: B:40:0x00cb  */
        /* JADX WARN: Code duplicated, block: B:57:? A[SYNTHETIC] */
        @Override // android.app.IBackupAgent
        public void doFullBackup(ParcelFileDescriptor parcelFileDescriptor, long j2, int i2, IBackupManager iBackupManager) throws Throwable {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            BackupAgent.this.waitForSharedPrefs();
            try {
                try {
                    try {
                        BackupAgent.this.onFullBackup(new FullBackupDataOutput(parcelFileDescriptor, j2));
                        BackupAgent.this.waitForSharedPrefs();
                        try {
                            new FileOutputStream(parcelFileDescriptor.getFileDescriptor()).write(new byte[4]);
                        } catch (IOException unused) {
                            Log.e(TAG, "Unable to finalize backup stream!");
                        }
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                        try {
                            iBackupManager.opComplete(i2, 0L);
                        } catch (RemoteException unused2) {
                        }
                        if (Binder.getCallingPid() != Process.myPid()) {
                            IoUtils.closeQuietly(parcelFileDescriptor);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        Log.d(TAG, "onFullBackup (" + BackupAgent.this.getClass().getName() + ") threw", e);
                        throw new RuntimeException(e);
                    } catch (RuntimeException e3) {
                        e = e3;
                        Log.d(TAG, "onFullBackup (" + BackupAgent.this.getClass().getName() + ") threw", e);
                        throw e;
                    }
                } catch (Throwable th) {
                    th = th;
                    BackupAgent.this.waitForSharedPrefs();
                    try {
                        new FileOutputStream(parcelFileDescriptor.getFileDescriptor()).write(new byte[4]);
                    } catch (IOException unused3) {
                        Log.e(TAG, "Unable to finalize backup stream!");
                    }
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i2, 0L);
                    } catch (RemoteException unused4) {
                    }
                    if (Binder.getCallingPid() != Process.myPid()) {
                        throw th;
                    }
                    IoUtils.closeQuietly(parcelFileDescriptor);
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
            } catch (RuntimeException e5) {
                e = e5;
            } catch (Throwable th2) {
                th = th2;
                BackupAgent.this.waitForSharedPrefs();
                new FileOutputStream(parcelFileDescriptor.getFileDescriptor()).write(new byte[4]);
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                iBackupManager.opComplete(i2, 0L);
                if (Binder.getCallingPid() != Process.myPid()) {
                    throw th;
                }
                IoUtils.closeQuietly(parcelFileDescriptor);
                throw th;
            }
        }

        @Override // android.app.IBackupAgent
        public void doMeasureFullBackup(long j2, int i2, IBackupManager iBackupManager) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            FullBackupDataOutput fullBackupDataOutput = new FullBackupDataOutput(j2);
            BackupAgent.this.waitForSharedPrefs();
            try {
                try {
                    BackupAgent.this.onFullBackup(fullBackupDataOutput);
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i2, fullBackupDataOutput.getSize());
                    } catch (RemoteException unused) {
                    }
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i2, fullBackupDataOutput.getSize());
                    } catch (RemoteException unused2) {
                    }
                    throw th;
                }
            } catch (IOException e2) {
                Log.d(TAG, "onFullBackup[M] (" + BackupAgent.this.getClass().getName() + ") threw", e2);
                throw new RuntimeException(e2);
            } catch (RuntimeException e3) {
                Log.d(TAG, "onFullBackup[M] (" + BackupAgent.this.getClass().getName() + ") threw", e3);
                throw e3;
            }
        }

        @Override // android.app.IBackupAgent
        public void doQuotaExceeded(long j2, long j3) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    BackupAgent.this.onQuotaExceeded(j2, j3);
                    BackupAgent.this.waitForSharedPrefs();
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                } catch (Exception e2) {
                    Log.d(TAG, "onQuotaExceeded(" + BackupAgent.this.getClass().getName() + ") threw", e2);
                    throw e2;
                }
            } catch (Throwable th) {
                BackupAgent.this.waitForSharedPrefs();
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                throw th;
            }
        }

        @Override // android.app.IBackupAgent
        public void doRestore(ParcelFileDescriptor parcelFileDescriptor, int i2, ParcelFileDescriptor parcelFileDescriptor2, int i3, IBackupManager iBackupManager) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            BackupAgent.this.waitForSharedPrefs();
            try {
                try {
                    BackupAgent.this.onRestore(new BackupDataInput(parcelFileDescriptor.getFileDescriptor()), i2, parcelFileDescriptor2);
                    BackupAgent.this.reloadSharedPreferences();
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i3, 0L);
                    } catch (RemoteException unused) {
                    }
                    if (Binder.getCallingPid() != Process.myPid()) {
                        IoUtils.closeQuietly(parcelFileDescriptor);
                        IoUtils.closeQuietly(parcelFileDescriptor2);
                    }
                } catch (IOException e2) {
                    Log.d(TAG, "onRestore (" + BackupAgent.this.getClass().getName() + ") threw", e2);
                    throw new RuntimeException(e2);
                } catch (RuntimeException e3) {
                    Log.d(TAG, "onRestore (" + BackupAgent.this.getClass().getName() + ") threw", e3);
                    throw e3;
                }
            } catch (Throwable th) {
                BackupAgent.this.reloadSharedPreferences();
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                try {
                    iBackupManager.opComplete(i3, 0L);
                } catch (RemoteException unused2) {
                }
                if (Binder.getCallingPid() == Process.myPid()) {
                    throw th;
                }
                IoUtils.closeQuietly(parcelFileDescriptor);
                IoUtils.closeQuietly(parcelFileDescriptor2);
                throw th;
            }
        }

        @Override // android.app.IBackupAgent
        public void doRestoreFile(ParcelFileDescriptor parcelFileDescriptor, long j2, int i2, String str, String str2, long j3, long j4, int i3, IBackupManager iBackupManager) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    BackupAgent.this.onRestoreFile(parcelFileDescriptor, j2, i2, str, str2, j3, j4);
                    BackupAgent.this.waitForSharedPrefs();
                    BackupAgent.this.reloadSharedPreferences();
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i3, 0L);
                    } catch (RemoteException unused) {
                    }
                    if (Binder.getCallingPid() != Process.myPid()) {
                        IoUtils.closeQuietly(parcelFileDescriptor);
                    }
                } catch (Throwable th) {
                    BackupAgent.this.waitForSharedPrefs();
                    BackupAgent.this.reloadSharedPreferences();
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i3, 0L);
                    } catch (RemoteException unused2) {
                    }
                    if (Binder.getCallingPid() == Process.myPid()) {
                        throw th;
                    }
                    IoUtils.closeQuietly(parcelFileDescriptor);
                    throw th;
                }
            } catch (IOException e2) {
                Log.d(TAG, "onRestoreFile (" + BackupAgent.this.getClass().getName() + ") threw", e2);
                throw new RuntimeException(e2);
            }
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x001a */
        @Override // android.app.IBackupAgent
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void doRestoreFinished(int r9, android.app.backup.IBackupManager r10) {
            /*
                r8 = this;
                java.lang.String r0 = "onRestoreFinished ("
                long r1 = android.os.Binder.clearCallingIdentity()
                r3 = 0
                android.app.backup.BackupAgent r5 = android.app.backup.BackupAgent.this     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1c
                r5.onRestoreFinished()     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1c
                android.app.backup.BackupAgent r0 = android.app.backup.BackupAgent.this
                android.app.backup.BackupAgent.access$100(r0)
                android.os.Binder.restoreCallingIdentity(r1)
                r10.opComplete(r9, r3)     // Catch: android.os.RemoteException -> L19
            L19:
                return
            L1a:
                r0 = move-exception
                goto L3e
            L1c:
                r5 = move-exception
                java.lang.String r6 = "BackupServiceBinder"
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1a
                r7.<init>(r0)     // Catch: java.lang.Throwable -> L1a
                android.app.backup.BackupAgent r0 = android.app.backup.BackupAgent.this     // Catch: java.lang.Throwable -> L1a
                java.lang.Class r0 = r0.getClass()     // Catch: java.lang.Throwable -> L1a
                java.lang.String r0 = r0.getName()     // Catch: java.lang.Throwable -> L1a
                r7.append(r0)     // Catch: java.lang.Throwable -> L1a
                java.lang.String r0 = ") threw"
                r7.append(r0)     // Catch: java.lang.Throwable -> L1a
                java.lang.String r0 = r7.toString()     // Catch: java.lang.Throwable -> L1a
                android.util.Log.d(r6, r0, r5)     // Catch: java.lang.Throwable -> L1a
                throw r5     // Catch: java.lang.Throwable -> L1a
            L3e:
                android.app.backup.BackupAgent r5 = android.app.backup.BackupAgent.this
                android.app.backup.BackupAgent.access$100(r5)
                android.os.Binder.restoreCallingIdentity(r1)
                r10.opComplete(r9, r3)     // Catch: android.os.RemoteException -> L49
            L49:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: android.app.backup.BackupAgent.BackupServiceBinder.doRestoreFinished(int, android.app.backup.IBackupManager):void");
        }

        @Override // android.app.IBackupAgent
        public void fail(String str) {
            BackupAgent.this.getHandler().post(new FailRunnable(str));
        }
    }

    public static class FailRunnable implements Runnable {
        private String mMessage;

        public FailRunnable(String str) {
            this.mMessage = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException(this.mMessage);
        }
    }

    public class SharedPrefsSynchronizer implements Runnable {
        public final CountDownLatch mLatch = new CountDownLatch(1);

        public SharedPrefsSynchronizer() {
        }

        @Override // java.lang.Runnable
        public void run() {
            QueuedWork.waitToFinish();
            this.mLatch.countDown();
        }
    }

    public BackupAgent() {
        super(null);
        this.mHandler = null;
        this.mBinder = new BackupServiceBinder().asBinder();
    }

    private void applyXmlFiltersAndDoFullBackupForDomain(String str, String str2, Map<String, Set<String>> map, ArraySet<String> arraySet, ArraySet<String> arraySet2, FullBackupDataOutput fullBackupDataOutput) {
        if (map == null || map.size() == 0) {
            fullBackupFileTree(str, str2, FullBackup.getBackupScheme(this).tokenToDirectoryPath(str2), arraySet, arraySet2, fullBackupDataOutput);
        } else if (map.get(str2) != null) {
            Iterator<String> it = map.get(str2).iterator();
            while (it.hasNext()) {
                fullBackupFileTree(str, str2, it.next(), arraySet, arraySet2, fullBackupDataOutput);
            }
        }
    }

    private boolean isFileEligibleForRestore(File file) throws IOException {
        FullBackup.BackupScheme backupScheme = FullBackup.getBackupScheme(this);
        if (!backupScheme.isFullBackupContentEnabled()) {
            if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                Log.v("BackupXmlParserLogging", "onRestoreFile \"" + file.getCanonicalPath() + "\" : fullBackupContent not enabled for " + getPackageName());
            }
            return false;
        }
        String canonicalPath = file.getCanonicalPath();
        try {
            Map<String, Set<String>> mapMaybeParseAndGetCanonicalIncludePaths = backupScheme.maybeParseAndGetCanonicalIncludePaths();
            ArraySet<String> arraySetMaybeParseAndGetCanonicalExcludePaths = backupScheme.maybeParseAndGetCanonicalExcludePaths();
            if (arraySetMaybeParseAndGetCanonicalExcludePaths != null && isFileSpecifiedInPathList(file, arraySetMaybeParseAndGetCanonicalExcludePaths)) {
                if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                    Log.v("BackupXmlParserLogging", "onRestoreFile: \"" + canonicalPath + "\": listed in excludes; skipping.");
                }
                return false;
            }
            if (mapMaybeParseAndGetCanonicalIncludePaths == null || mapMaybeParseAndGetCanonicalIncludePaths.isEmpty()) {
                return true;
            }
            Iterator<Set<String>> it = mapMaybeParseAndGetCanonicalIncludePaths.values().iterator();
            boolean zIsFileSpecifiedInPathList = false;
            while (it.hasNext() && !((zIsFileSpecifiedInPathList = zIsFileSpecifiedInPathList | isFileSpecifiedInPathList(file, it.next())))) {
            }
            if (zIsFileSpecifiedInPathList) {
                return true;
            }
            if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                Log.v("BackupXmlParserLogging", "onRestoreFile: Trying to restore \"" + canonicalPath + "\" but it isn't specified in the included files; skipping.");
            }
            return false;
        } catch (XmlPullParserException e2) {
            if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                Log.v("BackupXmlParserLogging", "onRestoreFile \"" + canonicalPath + "\" : Exception trying to parse fullBackupContent xml file! Aborting onRestoreFile.", e2);
            }
            return false;
        }
    }

    private boolean isFileSpecifiedInPathList(File file, Collection<String> collection) {
        for (String str : collection) {
            File file2 = new File(str);
            if (file2.isDirectory()) {
                return file.isDirectory() ? file.equals(file2) : file.getCanonicalPath().startsWith(str);
            }
            if (file.equals(file2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void waitForSharedPrefs() {
        Handler handler = getHandler();
        SharedPrefsSynchronizer sharedPrefsSynchronizer = new SharedPrefsSynchronizer();
        handler.postAtFrontOfQueue(sharedPrefsSynchronizer);
        try {
            sharedPrefsSynchronizer.mLatch.await();
        } catch (InterruptedException unused) {
        }
    }

    public void attach(Context context) {
        attachBaseContext(context);
    }

    public final void fullBackupFile(File file, FullBackupDataOutput fullBackupDataOutput) {
        String str;
        String canonicalPath;
        String str2;
        String str3;
        String str4;
        ApplicationInfo applicationInfo = getApplicationInfo();
        try {
            Context contextCreateCredentialProtectedStorageContext = createCredentialProtectedStorageContext();
            String canonicalPath2 = contextCreateCredentialProtectedStorageContext.getDataDir().getCanonicalPath();
            String canonicalPath3 = contextCreateCredentialProtectedStorageContext.getFilesDir().getCanonicalPath();
            String canonicalPath4 = contextCreateCredentialProtectedStorageContext.getNoBackupFilesDir().getCanonicalPath();
            String canonicalPath5 = contextCreateCredentialProtectedStorageContext.getDatabasePath("foo").getParentFile().getCanonicalPath();
            String canonicalPath6 = contextCreateCredentialProtectedStorageContext.getSharedPreferencesPath("foo").getParentFile().getCanonicalPath();
            String canonicalPath7 = contextCreateCredentialProtectedStorageContext.getCacheDir().getCanonicalPath();
            String canonicalPath8 = contextCreateCredentialProtectedStorageContext.getCodeCacheDir().getCanonicalPath();
            Context contextCreateDeviceProtectedStorageContext = createDeviceProtectedStorageContext();
            String canonicalPath9 = contextCreateDeviceProtectedStorageContext.getDataDir().getCanonicalPath();
            String canonicalPath10 = contextCreateDeviceProtectedStorageContext.getFilesDir().getCanonicalPath();
            String canonicalPath11 = contextCreateDeviceProtectedStorageContext.getNoBackupFilesDir().getCanonicalPath();
            String canonicalPath12 = contextCreateDeviceProtectedStorageContext.getDatabasePath("foo").getParentFile().getCanonicalPath();
            String canonicalPath13 = contextCreateDeviceProtectedStorageContext.getSharedPreferencesPath("foo").getParentFile().getCanonicalPath();
            String canonicalPath14 = contextCreateDeviceProtectedStorageContext.getCacheDir().getCanonicalPath();
            String canonicalPath15 = contextCreateDeviceProtectedStorageContext.getCodeCacheDir().getCanonicalPath();
            try {
                String canonicalPath16 = applicationInfo.nativeLibraryDir == null ? null : new File(applicationInfo.nativeLibraryDir).getCanonicalPath();
                if (Process.myUid() != 1000) {
                    canonicalPath = null;
                    File externalFilesDir = getExternalFilesDir(null);
                    if (externalFilesDir != null) {
                        canonicalPath = externalFilesDir.getCanonicalPath();
                    }
                } else {
                    canonicalPath = null;
                }
                String canonicalPath17 = file.getCanonicalPath();
                if (canonicalPath17.startsWith(canonicalPath7) || canonicalPath17.startsWith(canonicalPath8) || canonicalPath17.startsWith(canonicalPath4) || canonicalPath17.startsWith(canonicalPath14) || canonicalPath17.startsWith(canonicalPath15) || canonicalPath17.startsWith(canonicalPath11) || canonicalPath17.startsWith(canonicalPath16)) {
                    Log.w(TAG, "lib, cache, code_cache, and no_backup files are not backed up");
                    return;
                }
                if (canonicalPath17.startsWith(canonicalPath5)) {
                    str2 = FullBackup.DATABASE_TREE_TOKEN;
                    str3 = canonicalPath5;
                } else if (canonicalPath17.startsWith(canonicalPath6)) {
                    str2 = FullBackup.SHAREDPREFS_TREE_TOKEN;
                    str3 = canonicalPath6;
                } else if (canonicalPath17.startsWith(canonicalPath3)) {
                    str2 = FullBackup.FILES_TREE_TOKEN;
                    str3 = canonicalPath3;
                } else {
                    if (canonicalPath17.startsWith(canonicalPath2)) {
                        str4 = FullBackup.ROOT_TREE_TOKEN;
                    } else if (canonicalPath17.startsWith(canonicalPath12)) {
                        str2 = FullBackup.DEVICE_DATABASE_TREE_TOKEN;
                        str3 = canonicalPath12;
                    } else if (canonicalPath17.startsWith(canonicalPath13)) {
                        str2 = FullBackup.DEVICE_SHAREDPREFS_TREE_TOKEN;
                        str3 = canonicalPath13;
                    } else if (canonicalPath17.startsWith(canonicalPath10)) {
                        str4 = FullBackup.DEVICE_FILES_TREE_TOKEN;
                        canonicalPath2 = canonicalPath10;
                    } else if (canonicalPath17.startsWith(canonicalPath9)) {
                        canonicalPath2 = canonicalPath9;
                        str4 = FullBackup.DEVICE_ROOT_TREE_TOKEN;
                    } else if (canonicalPath == null || !canonicalPath17.startsWith(canonicalPath)) {
                        m.s("File ", canonicalPath17, " is in an unsupported location; skipping", TAG);
                        return;
                    } else {
                        str2 = FullBackup.MANAGED_EXTERNAL_TREE_TOKEN;
                        str3 = canonicalPath;
                    }
                    str2 = str4;
                    str3 = canonicalPath2;
                }
                FullBackup.backupToTar(getPackageName(), str2, null, str3, canonicalPath17, fullBackupDataOutput);
            } catch (IOException unused) {
                str = TAG;
                Log.w(str, "Unable to obtain canonical paths");
            }
        } catch (IOException unused2) {
            str = TAG;
        }
    }

    public final void fullBackupFileTree(String str, String str2, String str3, ArraySet<String> arraySet, ArraySet<String> arraySet2, FullBackupDataOutput fullBackupDataOutput) {
        File[] fileArrListFiles;
        String str4 = FullBackup.getBackupScheme(this).tokenToDirectoryPath(str2);
        if (str4 == null) {
            return;
        }
        File file = new File(str3);
        if (file.exists()) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(file);
            while (linkedList.size() > 0) {
                File file2 = (File) linkedList.remove(0);
                try {
                    StructStat structStatLstat = Os.lstat(file2.getPath());
                    if (OsConstants.S_ISREG(structStatLstat.st_mode) || OsConstants.S_ISDIR(structStatLstat.st_mode)) {
                        String canonicalPath = file2.getCanonicalPath();
                        if (arraySet == null || !arraySet.contains(canonicalPath)) {
                            if (arraySet2 == null || !arraySet2.contains(canonicalPath)) {
                                if (OsConstants.S_ISDIR(structStatLstat.st_mode) && (fileArrListFiles = file2.listFiles()) != null) {
                                    for (File file3 : fileArrListFiles) {
                                        linkedList.add(0, file3);
                                    }
                                }
                                FullBackup.backupToTar(str, str2, null, str4, canonicalPath, fullBackupDataOutput);
                            }
                        }
                    }
                } catch (ErrnoException e2) {
                    if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                        Log.v("BackupXmlParserLogging", "Error scanning file " + file2 + " : " + e2);
                    }
                } catch (IOException unused) {
                    if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                        Log.v("BackupXmlParserLogging", "Error canonicalizing path of " + file2);
                    }
                }
            }
        }
    }

    public Handler getHandler() {
        if (this.mHandler == null) {
            this.mHandler = new Handler(Looper.getMainLooper());
        }
        return this.mHandler;
    }

    public abstract void onBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2);

    public final IBinder onBind() {
        return this.mBinder;
    }

    public void onCreate() {
    }

    public void onDestroy() {
    }

    public void onFullBackup(FullBackupDataOutput fullBackupDataOutput) throws IOException {
        FullBackup.BackupScheme backupScheme = FullBackup.getBackupScheme(this);
        if (backupScheme.isFullBackupContentEnabled()) {
            try {
                Map<String, Set<String>> mapMaybeParseAndGetCanonicalIncludePaths = backupScheme.maybeParseAndGetCanonicalIncludePaths();
                ArraySet<String> arraySetMaybeParseAndGetCanonicalExcludePaths = backupScheme.maybeParseAndGetCanonicalExcludePaths();
                String packageName = getPackageName();
                ApplicationInfo applicationInfo = getApplicationInfo();
                Context contextCreateCredentialProtectedStorageContext = createCredentialProtectedStorageContext();
                String canonicalPath = contextCreateCredentialProtectedStorageContext.getDataDir().getCanonicalPath();
                String canonicalPath2 = contextCreateCredentialProtectedStorageContext.getFilesDir().getCanonicalPath();
                String canonicalPath3 = contextCreateCredentialProtectedStorageContext.getNoBackupFilesDir().getCanonicalPath();
                String canonicalPath4 = contextCreateCredentialProtectedStorageContext.getDatabasePath("foo").getParentFile().getCanonicalPath();
                String canonicalPath5 = contextCreateCredentialProtectedStorageContext.getSharedPreferencesPath("foo").getParentFile().getCanonicalPath();
                String canonicalPath6 = contextCreateCredentialProtectedStorageContext.getCacheDir().getCanonicalPath();
                String canonicalPath7 = contextCreateCredentialProtectedStorageContext.getCodeCacheDir().getCanonicalPath();
                Context contextCreateDeviceProtectedStorageContext = createDeviceProtectedStorageContext();
                String canonicalPath8 = contextCreateDeviceProtectedStorageContext.getDataDir().getCanonicalPath();
                String canonicalPath9 = contextCreateDeviceProtectedStorageContext.getFilesDir().getCanonicalPath();
                String canonicalPath10 = contextCreateDeviceProtectedStorageContext.getNoBackupFilesDir().getCanonicalPath();
                String canonicalPath11 = contextCreateDeviceProtectedStorageContext.getDatabasePath("foo").getParentFile().getCanonicalPath();
                String canonicalPath12 = contextCreateDeviceProtectedStorageContext.getSharedPreferencesPath("foo").getParentFile().getCanonicalPath();
                String canonicalPath13 = contextCreateDeviceProtectedStorageContext.getCacheDir().getCanonicalPath();
                String canonicalPath14 = contextCreateDeviceProtectedStorageContext.getCodeCacheDir().getCanonicalPath();
                String canonicalPath15 = applicationInfo.nativeLibraryDir != null ? new File(applicationInfo.nativeLibraryDir).getCanonicalPath() : null;
                ArraySet<String> arraySet = new ArraySet<>();
                arraySet.add(canonicalPath2);
                arraySet.add(canonicalPath3);
                arraySet.add(canonicalPath4);
                arraySet.add(canonicalPath5);
                arraySet.add(canonicalPath6);
                arraySet.add(canonicalPath7);
                arraySet.add(canonicalPath9);
                arraySet.add(canonicalPath10);
                arraySet.add(canonicalPath11);
                arraySet.add(canonicalPath12);
                arraySet.add(canonicalPath13);
                arraySet.add(canonicalPath14);
                if (canonicalPath15 != null) {
                    arraySet.add(canonicalPath15);
                }
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.ROOT_TREE_TOKEN, mapMaybeParseAndGetCanonicalIncludePaths, arraySetMaybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.DEVICE_ROOT_TREE_TOKEN, mapMaybeParseAndGetCanonicalIncludePaths, arraySetMaybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath8);
                arraySet.remove(canonicalPath2);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.FILES_TREE_TOKEN, mapMaybeParseAndGetCanonicalIncludePaths, arraySetMaybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath2);
                arraySet.remove(canonicalPath9);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.DEVICE_FILES_TREE_TOKEN, mapMaybeParseAndGetCanonicalIncludePaths, arraySetMaybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath9);
                arraySet.remove(canonicalPath4);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.DATABASE_TREE_TOKEN, mapMaybeParseAndGetCanonicalIncludePaths, arraySetMaybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath4);
                arraySet.remove(canonicalPath11);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.DEVICE_DATABASE_TREE_TOKEN, mapMaybeParseAndGetCanonicalIncludePaths, arraySetMaybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath11);
                arraySet.remove(canonicalPath5);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.SHAREDPREFS_TREE_TOKEN, mapMaybeParseAndGetCanonicalIncludePaths, arraySetMaybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath5);
                arraySet.remove(canonicalPath12);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.DEVICE_SHAREDPREFS_TREE_TOKEN, mapMaybeParseAndGetCanonicalIncludePaths, arraySetMaybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath12);
                if (Process.myUid() == 1000 || getExternalFilesDir(null) == null) {
                    return;
                }
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.MANAGED_EXTERNAL_TREE_TOKEN, mapMaybeParseAndGetCanonicalIncludePaths, arraySetMaybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
            } catch (IOException | XmlPullParserException e2) {
                if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                    Log.v("BackupXmlParserLogging", "Exception trying to parse fullBackupContent xml file! Aborting full backup.", e2);
                }
            }
        }
    }

    public void onQuotaExceeded(long j2, long j3) {
    }

    public abstract void onRestore(BackupDataInput backupDataInput, int i2, ParcelFileDescriptor parcelFileDescriptor);

    public void onRestoreFile(ParcelFileDescriptor parcelFileDescriptor, long j2, File file, int i2, long j3, long j4) throws IOException {
        File file2 = file;
        if (!isFileEligibleForRestore(file)) {
            file2 = null;
        }
        FullBackup.restoreFile(parcelFileDescriptor, j2, i2, j3, j4, file2);
    }

    public void onRestoreFinished() {
    }

    public void onRestoreFile(ParcelFileDescriptor parcelFileDescriptor, long j2, int i2, String str, String str2, long j3, long j4) throws IOException {
        String str3 = FullBackup.getBackupScheme(this).tokenToDirectoryPath(str);
        long j5 = str.equals(FullBackup.MANAGED_EXTERNAL_TREE_TOKEN) ? -1L : j3;
        if (str3 != null) {
            File file = new File(str3, str2);
            String canonicalPath = file.getCanonicalPath();
            StringBuilder sbR = c.r(str3);
            sbR.append(File.separatorChar);
            if (canonicalPath.startsWith(sbR.toString())) {
                onRestoreFile(parcelFileDescriptor, j2, file, i2, j5, j4);
                return;
            }
        }
        FullBackup.restoreFile(parcelFileDescriptor, j2, i2, j5, j4, null);
    }
}
