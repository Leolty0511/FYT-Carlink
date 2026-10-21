package android.app;

import android.content.SharedPreferences;
import android.os.FileUtils;
import android.os.Looper;
import android.system.ErrnoException;
import android.system.Os;
import android.system.StructStat;
import android.system.StructTimespec;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.ExponentiallyBucketedHistogram;
import com.android.internal.util.XmlUtils;
import com.google.android.collect.Maps;
import dalvik.system.BlockGuard;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
final class SharedPreferencesImpl implements SharedPreferences {
    private static final Object CONTENT = new Object();
    private static final boolean DEBUG = false;
    private static final long MAX_FSYNC_DURATION_MILLIS = 256;
    private static final String TAG = "SharedPreferencesImpl";
    private final File mBackupFile;

    @GuardedBy("this")
    private long mCurrentMemoryStateGeneration;

    @GuardedBy("mWritingToDiskLock")
    private long mDiskStateGeneration;
    private final File mFile;

    @GuardedBy("mLock")
    private boolean mLoaded;
    private final int mMode;

    @GuardedBy("mLock")
    private long mStatSize;

    @GuardedBy("mLock")
    private StructTimespec mStatTimestamp;
    private final Object mLock = new Object();
    private final Object mWritingToDiskLock = new Object();

    @GuardedBy("mLock")
    private int mDiskWritesInFlight = 0;

    @GuardedBy("mLock")
    private final WeakHashMap<SharedPreferences.OnSharedPreferenceChangeListener, Object> mListeners = new WeakHashMap<>();

    @GuardedBy("mWritingToDiskLock")
    private final ExponentiallyBucketedHistogram mSyncTimes = new ExponentiallyBucketedHistogram(16);
    private int mNumSync = 0;

    @GuardedBy("mLock")
    private Map<String, Object> mMap = null;

    public final class EditorImpl implements SharedPreferences.Editor {
        private final Object mLock = new Object();

        @GuardedBy("mLock")
        private final Map<String, Object> mModified = Maps.newHashMap();

        @GuardedBy("mLock")
        private boolean mClear = false;

        public EditorImpl() {
        }

        /* JADX WARN: Code duplicated, block: B:43:0x00df A[Catch: all -> 0x0102, TryCatch #0 {, blocks: (B:16:0x005a, B:18:0x005e, B:20:0x006a, B:22:0x0076, B:23:0x0079, B:24:0x0083, B:26:0x0089, B:30:0x009e, B:32:0x00aa, B:34:0x00b6, B:37:0x00bd, B:43:0x00df, B:38:0x00c7, B:41:0x00d4, B:45:0x00e4, B:47:0x00eb, B:48:0x00f0, B:49:0x00f6), top: B:59:0x005a, outer: #1 }] */
        private MemoryCommitResult commitToMemory() {
            Map map;
            ArrayList arrayList;
            HashSet hashSet;
            long j2;
            Object obj;
            boolean z2;
            synchronized (SharedPreferencesImpl.this.mLock) {
                if (SharedPreferencesImpl.this.mDiskWritesInFlight > 0) {
                    SharedPreferencesImpl.this.mMap = new HashMap(SharedPreferencesImpl.this.mMap);
                }
                map = SharedPreferencesImpl.this.mMap;
                SharedPreferencesImpl.access$308(SharedPreferencesImpl.this);
                boolean z3 = false;
                boolean z4 = SharedPreferencesImpl.this.mListeners.size() > 0;
                if (z4) {
                    ArrayList arrayList2 = new ArrayList();
                    hashSet = new HashSet(SharedPreferencesImpl.this.mListeners.keySet());
                    arrayList = arrayList2;
                } else {
                    arrayList = null;
                    hashSet = null;
                }
                synchronized (this.mLock) {
                    if (this.mClear) {
                        if (SharedPreferencesImpl.this.mMap.isEmpty()) {
                            z2 = false;
                        } else {
                            SharedPreferencesImpl.this.mMap.clear();
                            z2 = true;
                        }
                        this.mClear = false;
                        z3 = z2;
                    }
                    for (Map.Entry<String, Object> entry : this.mModified.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value == this || value == null) {
                            if (SharedPreferencesImpl.this.mMap.containsKey(key)) {
                                SharedPreferencesImpl.this.mMap.remove(key);
                                if (z4) {
                                    arrayList.add(key);
                                }
                                z3 = true;
                            }
                        } else if (!SharedPreferencesImpl.this.mMap.containsKey(key) || (obj = SharedPreferencesImpl.this.mMap.get(key)) == null || !obj.equals(value)) {
                            SharedPreferencesImpl.this.mMap.put(key, value);
                            if (z4) {
                                arrayList.add(key);
                            }
                            z3 = true;
                        }
                    }
                    this.mModified.clear();
                    if (z3) {
                        SharedPreferencesImpl.access$608(SharedPreferencesImpl.this);
                    }
                    j2 = SharedPreferencesImpl.this.mCurrentMemoryStateGeneration;
                }
            }
            return new MemoryCommitResult(j2, arrayList, hashSet, map);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyListeners(final MemoryCommitResult memoryCommitResult) {
            List<String> list;
            if (memoryCommitResult.listeners == null || (list = memoryCommitResult.keysModified) == null || list.size() == 0) {
                return;
            }
            if (Looper.myLooper() != Looper.getMainLooper()) {
                ActivityThread.sMainThreadHandler.post(new Runnable() { // from class: android.app.SharedPreferencesImpl.EditorImpl.3
                    @Override // java.lang.Runnable
                    public void run() {
                        EditorImpl.this.notifyListeners(memoryCommitResult);
                    }
                });
                return;
            }
            for (int size = memoryCommitResult.keysModified.size() - 1; size >= 0; size--) {
                String str = memoryCommitResult.keysModified.get(size);
                for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener : memoryCommitResult.listeners) {
                    if (onSharedPreferenceChangeListener != null) {
                        onSharedPreferenceChangeListener.onSharedPreferenceChanged(SharedPreferencesImpl.this, str);
                    }
                }
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            final MemoryCommitResult memoryCommitResultCommitToMemory = commitToMemory();
            final Runnable runnable = new Runnable() { // from class: android.app.SharedPreferencesImpl.EditorImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        memoryCommitResultCommitToMemory.writtenToDiskLatch.await();
                    } catch (InterruptedException unused) {
                    }
                }
            };
            QueuedWork.addFinisher(runnable);
            SharedPreferencesImpl.this.enqueueDiskWrite(memoryCommitResultCommitToMemory, new Runnable() { // from class: android.app.SharedPreferencesImpl.EditorImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    runnable.run();
                    QueuedWork.removeFinisher(runnable);
                }
            });
            notifyListeners(memoryCommitResultCommitToMemory);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            synchronized (this.mLock) {
                this.mClear = true;
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            MemoryCommitResult memoryCommitResultCommitToMemory = commitToMemory();
            SharedPreferencesImpl.this.enqueueDiskWrite(memoryCommitResultCommitToMemory, null);
            try {
                memoryCommitResultCommitToMemory.writtenToDiskLatch.await();
                notifyListeners(memoryCommitResultCommitToMemory);
                return memoryCommitResultCommitToMemory.writeToDiskResult;
            } catch (InterruptedException unused) {
                return false;
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z2) {
            synchronized (this.mLock) {
                this.mModified.put(str, Boolean.valueOf(z2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f2) {
            synchronized (this.mLock) {
                this.mModified.put(str, Float.valueOf(f2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i2) {
            synchronized (this.mLock) {
                this.mModified.put(str, Integer.valueOf(i2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j2) {
            synchronized (this.mLock) {
                this.mModified.put(str, Long.valueOf(j2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            synchronized (this.mLock) {
                this.mModified.put(str, str2);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            synchronized (this.mLock) {
                this.mModified.put(str, set == null ? null : new HashSet(set));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            synchronized (this.mLock) {
                this.mModified.put(str, this);
            }
            return this;
        }
    }

    public static class MemoryCommitResult {
        final List<String> keysModified;
        final Set<SharedPreferences.OnSharedPreferenceChangeListener> listeners;
        final Map<String, Object> mapToWriteToDisk;
        final long memoryStateGeneration;
        boolean wasWritten;

        @GuardedBy("mWritingToDiskLock")
        volatile boolean writeToDiskResult;
        final CountDownLatch writtenToDiskLatch;

        public void setDiskWriteResult(boolean z2, boolean z3) {
            this.wasWritten = z2;
            this.writeToDiskResult = z3;
            this.writtenToDiskLatch.countDown();
        }

        private MemoryCommitResult(long j2, List<String> list, Set<SharedPreferences.OnSharedPreferenceChangeListener> set, Map<String, Object> map) {
            this.writtenToDiskLatch = new CountDownLatch(1);
            this.writeToDiskResult = false;
            this.wasWritten = false;
            this.memoryStateGeneration = j2;
            this.keysModified = list;
            this.listeners = set;
            this.mapToWriteToDisk = map;
        }
    }

    public SharedPreferencesImpl(File file, int i2) {
        this.mLoaded = false;
        this.mFile = file;
        this.mBackupFile = makeBackupFile(file);
        this.mMode = i2;
        this.mLoaded = false;
        startLoadFromDisk();
    }

    public static /* synthetic */ int access$308(SharedPreferencesImpl sharedPreferencesImpl) {
        int i2 = sharedPreferencesImpl.mDiskWritesInFlight;
        sharedPreferencesImpl.mDiskWritesInFlight = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int access$310(SharedPreferencesImpl sharedPreferencesImpl) {
        int i2 = sharedPreferencesImpl.mDiskWritesInFlight;
        sharedPreferencesImpl.mDiskWritesInFlight = i2 - 1;
        return i2;
    }

    public static /* synthetic */ long access$608(SharedPreferencesImpl sharedPreferencesImpl) {
        long j2 = sharedPreferencesImpl.mCurrentMemoryStateGeneration;
        sharedPreferencesImpl.mCurrentMemoryStateGeneration = 1 + j2;
        return j2;
    }

    private void awaitLoadedLocked() {
        if (!this.mLoaded) {
            BlockGuard.getThreadPolicy().onReadFromDisk();
        }
        while (!this.mLoaded) {
            try {
                this.mLock.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    private static FileOutputStream createFileOutputStream(File file) {
        try {
            return new FileOutputStream(file);
        } catch (FileNotFoundException unused) {
            File parentFile = file.getParentFile();
            if (!parentFile.mkdir()) {
                Log.e(TAG, "Couldn't create directory for SharedPreferences file " + file);
                return null;
            }
            FileUtils.setPermissions(parentFile.getPath(), 505, -1, -1);
            try {
                return new FileOutputStream(file);
            } catch (FileNotFoundException e2) {
                Log.e(TAG, "Couldn't create SharedPreferences file " + file, e2);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enqueueDiskWrite(final MemoryCommitResult memoryCommitResult, final Runnable runnable) {
        boolean z2;
        final boolean z3 = runnable == null;
        Runnable runnable2 = new Runnable() { // from class: android.app.SharedPreferencesImpl.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SharedPreferencesImpl.this.mWritingToDiskLock) {
                    SharedPreferencesImpl.this.writeToFile(memoryCommitResult, z3);
                }
                synchronized (SharedPreferencesImpl.this.mLock) {
                    SharedPreferencesImpl.access$310(SharedPreferencesImpl.this);
                }
                Runnable runnable3 = runnable;
                if (runnable3 != null) {
                    runnable3.run();
                }
            }
        };
        if (z3) {
            synchronized (this.mLock) {
                z2 = this.mDiskWritesInFlight == 1;
            }
            if (z2) {
                runnable2.run();
                return;
            }
        }
        QueuedWork.queue(runnable2, !z3);
    }

    private boolean hasFileChangedUnexpectedly() {
        boolean z2;
        synchronized (this.mLock) {
            if (this.mDiskWritesInFlight > 0) {
                return false;
            }
            try {
                BlockGuard.getThreadPolicy().onReadFromDisk();
                StructStat structStatStat = Os.stat(this.mFile.getPath());
                synchronized (this.mLock) {
                    z2 = (structStatStat.st_mtim.equals(this.mStatTimestamp) && this.mStatSize == structStatStat.st_size) ? false : true;
                }
                return z2;
            } catch (ErrnoException unused) {
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.AutoCloseable] */
    public void loadFromDisk() throws Throwable {
        StructStat structStatStat;
        BufferedInputStream bufferedInputStream;
        synchronized (this.mLock) {
            if (this.mLoaded) {
                return;
            }
            if (this.mBackupFile.exists()) {
                this.mFile.delete();
                this.mBackupFile.renameTo(this.mFile);
            }
            if (this.mFile.exists() && !this.mFile.canRead()) {
                Log.w(TAG, "Attempt to read preferences file " + this.mFile + " without permission");
            }
            HashMap<String, ?> mapXml = null;
            try {
                structStatStat = Os.stat(this.mFile.getPath());
                try {
                    ?? CanRead = this.mFile.canRead();
                    try {
                        if (CanRead != 0) {
                            try {
                                bufferedInputStream = new BufferedInputStream(new FileInputStream(this.mFile), 16384);
                                try {
                                    mapXml = XmlUtils.readMapXml(bufferedInputStream);
                                    CanRead = bufferedInputStream;
                                } catch (Exception e2) {
                                    e = e2;
                                    Log.w(TAG, "Cannot read " + this.mFile.getAbsolutePath(), e);
                                    CanRead = bufferedInputStream;
                                }
                            } catch (Exception e3) {
                                e = e3;
                                bufferedInputStream = null;
                            } catch (Throwable th) {
                                th = th;
                                CanRead = 0;
                                IoUtils.closeQuietly((AutoCloseable) CanRead);
                                throw th;
                            }
                            IoUtils.closeQuietly((AutoCloseable) CanRead);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (ErrnoException unused) {
                }
            } catch (ErrnoException unused2) {
                structStatStat = null;
            }
            synchronized (this.mLock) {
                this.mLoaded = true;
                if (mapXml != null) {
                    this.mMap = mapXml;
                    this.mStatTimestamp = structStatStat.st_mtim;
                    this.mStatSize = structStatStat.st_size;
                } else {
                    this.mMap = new HashMap();
                }
                this.mLock.notifyAll();
            }
        }
    }

    public static File makeBackupFile(File file) {
        return new File(file.getPath() + ".bak");
    }

    private void startLoadFromDisk() {
        synchronized (this.mLock) {
            this.mLoaded = false;
        }
        new Thread("SharedPreferencesImpl-load") { // from class: android.app.SharedPreferencesImpl.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws Throwable {
                SharedPreferencesImpl.this.loadFromDisk();
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeToFile(MemoryCommitResult memoryCommitResult, boolean z2) {
        boolean z3;
        if (this.mFile.exists()) {
            if (this.mDiskStateGeneration >= memoryCommitResult.memoryStateGeneration) {
                z3 = false;
            } else if (z2) {
                z3 = true;
            } else {
                synchronized (this.mLock) {
                    z3 = this.mCurrentMemoryStateGeneration == memoryCommitResult.memoryStateGeneration;
                }
            }
            if (!z3) {
                memoryCommitResult.setDiskWriteResult(false, true);
                return;
            }
            if (this.mBackupFile.exists()) {
                this.mFile.delete();
            } else if (!this.mFile.renameTo(this.mBackupFile)) {
                Log.e(TAG, "Couldn't rename file " + this.mFile + " to backup file " + this.mBackupFile);
                memoryCommitResult.setDiskWriteResult(false, false);
                return;
            }
        }
        try {
            FileOutputStream fileOutputStreamCreateFileOutputStream = createFileOutputStream(this.mFile);
            if (fileOutputStreamCreateFileOutputStream == null) {
                memoryCommitResult.setDiskWriteResult(false, false);
                return;
            }
            XmlUtils.writeMapXml(memoryCommitResult.mapToWriteToDisk, fileOutputStreamCreateFileOutputStream);
            long jCurrentTimeMillis = System.currentTimeMillis();
            FileUtils.sync(fileOutputStreamCreateFileOutputStream);
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            fileOutputStreamCreateFileOutputStream.close();
            ContextImpl.setFilePermissionsFromMode(this.mFile.getPath(), this.mMode, 0);
            try {
                StructStat structStatStat = Os.stat(this.mFile.getPath());
                synchronized (this.mLock) {
                    try {
                        this.mStatTimestamp = structStatStat.st_mtim;
                        this.mStatSize = structStatStat.st_size;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (ErrnoException unused) {
            }
            this.mBackupFile.delete();
            this.mDiskStateGeneration = memoryCommitResult.memoryStateGeneration;
            memoryCommitResult.setDiskWriteResult(true, true);
            long j2 = jCurrentTimeMillis2 - jCurrentTimeMillis;
            this.mSyncTimes.add((int) j2);
            int i2 = this.mNumSync + 1;
            this.mNumSync = i2;
            if (i2 % 1024 == 0 || j2 > 256) {
                this.mSyncTimes.log(TAG, "Time required to fsync " + this.mFile + ": ");
            }
        } catch (IOException e2) {
            Log.w(TAG, "writeToFile: Got exception:", e2);
            if (this.mFile.exists() && !this.mFile.delete()) {
                Log.e(TAG, "Couldn't clean up partially-written file " + this.mFile);
            }
            memoryCommitResult.setDiskWriteResult(false, false);
        } catch (XmlPullParserException e3) {
            Log.w(TAG, "writeToFile: Got exception:", e3);
            if (this.mFile.exists()) {
                Log.e(TAG, "Couldn't clean up partially-written file " + this.mFile);
            }
            memoryCommitResult.setDiskWriteResult(false, false);
        }
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        boolean zContainsKey;
        synchronized (this.mLock) {
            awaitLoadedLocked();
            zContainsKey = this.mMap.containsKey(str);
        }
        return zContainsKey;
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        synchronized (this.mLock) {
            awaitLoadedLocked();
        }
        return new EditorImpl();
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        HashMap map;
        synchronized (this.mLock) {
            awaitLoadedLocked();
            map = new HashMap(this.mMap);
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z2) {
        synchronized (this.mLock) {
            awaitLoadedLocked();
            Boolean bool = (Boolean) this.mMap.get(str);
            if (bool != null) {
                z2 = bool.booleanValue();
            }
        }
        return z2;
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f2) {
        synchronized (this.mLock) {
            awaitLoadedLocked();
            Float f3 = (Float) this.mMap.get(str);
            if (f3 != null) {
                f2 = f3.floatValue();
            }
        }
        return f2;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i2) {
        synchronized (this.mLock) {
            awaitLoadedLocked();
            Integer num = (Integer) this.mMap.get(str);
            if (num != null) {
                i2 = num.intValue();
            }
        }
        return i2;
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j2) {
        synchronized (this.mLock) {
            awaitLoadedLocked();
            Long l2 = (Long) this.mMap.get(str);
            if (l2 != null) {
                j2 = l2.longValue();
            }
        }
        return j2;
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        synchronized (this.mLock) {
            awaitLoadedLocked();
            String str3 = (String) this.mMap.get(str);
            if (str3 != null) {
                str2 = str3;
            }
        }
        return str2;
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        synchronized (this.mLock) {
            awaitLoadedLocked();
            Set<String> set2 = (Set) this.mMap.get(str);
            if (set2 != null) {
                set = set2;
            }
        }
        return set;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        synchronized (this.mLock) {
            this.mListeners.put(onSharedPreferenceChangeListener, CONTENT);
        }
    }

    public void startReloadIfChangedUnexpectedly() {
        synchronized (this.mLock) {
            if (hasFileChangedUnexpectedly()) {
                startLoadFromDisk();
            }
        }
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        synchronized (this.mLock) {
            this.mListeners.remove(onSharedPreferenceChangeListener);
        }
    }
}
