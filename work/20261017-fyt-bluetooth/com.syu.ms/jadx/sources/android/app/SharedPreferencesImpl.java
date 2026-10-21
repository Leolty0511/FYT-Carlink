package android.app;

import android.content.SharedPreferences;
import android.os.FileUtils;
import android.os.Looper;
import android.util.Log;
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
import libcore.io.ErrnoException;
import libcore.io.IoUtils;
import libcore.io.Libcore;
import libcore.io.StructStat;
import org.xmlpull.v1.XmlPullParserException;
import u.n;

/* JADX INFO: loaded from: classes.dex */
final class SharedPreferencesImpl implements SharedPreferences {
    private static final boolean DEBUG = false;
    private static final String TAG = "SharedPreferencesImpl";
    private static final Object mContent = new Object();
    private final File mBackupFile;
    private final File mFile;
    private boolean mLoaded;
    private final int mMode;
    private long mStatSize;
    private long mStatTimestamp;
    private int mDiskWritesInFlight = 0;
    private final Object mWritingToDiskLock = new Object();
    private final WeakHashMap<SharedPreferences.OnSharedPreferenceChangeListener, Object> mListeners = new WeakHashMap<>();
    private Map<String, Object> mMap = null;

    public final class EditorImpl implements SharedPreferences.Editor {
        private final Map<String, Object> mModified = Maps.newHashMap();
        private boolean mClear = false;

        public EditorImpl() {
        }

        /* JADX WARN: Code duplicated, block: B:57:0x00dc A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:65:0x0081 A[SYNTHETIC] */
        private MemoryCommitResult commitToMemory() {
            Object obj;
            MemoryCommitResult memoryCommitResult = new MemoryCommitResult();
            synchronized (SharedPreferencesImpl.this) {
                if (SharedPreferencesImpl.this.mDiskWritesInFlight > 0) {
                    SharedPreferencesImpl.this.mMap = new HashMap(SharedPreferencesImpl.this.mMap);
                }
                memoryCommitResult.mapToWriteToDisk = SharedPreferencesImpl.this.mMap;
                SharedPreferencesImpl.access$308(SharedPreferencesImpl.this);
                boolean z2 = SharedPreferencesImpl.this.mListeners.size() > 0;
                if (z2) {
                    memoryCommitResult.keysModified = new ArrayList();
                    memoryCommitResult.listeners = new HashSet(SharedPreferencesImpl.this.mListeners.keySet());
                }
                synchronized (this) {
                    if (this.mClear) {
                        if (!SharedPreferencesImpl.this.mMap.isEmpty()) {
                            memoryCommitResult.changesMade = true;
                            SharedPreferencesImpl.this.mMap.clear();
                        }
                        this.mClear = false;
                    }
                    for (Map.Entry<String, Object> entry : this.mModified.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value == this) {
                            if (SharedPreferencesImpl.this.mMap.containsKey(key)) {
                                SharedPreferencesImpl.this.mMap.remove(key);
                                memoryCommitResult.changesMade = true;
                                if (z2) {
                                    memoryCommitResult.keysModified.add(key);
                                }
                            }
                        } else if (!SharedPreferencesImpl.this.mMap.containsKey(key) || (obj = SharedPreferencesImpl.this.mMap.get(key)) == null || !obj.equals(value)) {
                            SharedPreferencesImpl.this.mMap.put(key, value);
                            memoryCommitResult.changesMade = true;
                            if (z2) {
                                memoryCommitResult.keysModified.add(key);
                            }
                        }
                    }
                    this.mModified.clear();
                }
            }
            return memoryCommitResult;
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
            QueuedWork.add(runnable);
            SharedPreferencesImpl.this.enqueueDiskWrite(memoryCommitResultCommitToMemory, new Runnable() { // from class: android.app.SharedPreferencesImpl.EditorImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    runnable.run();
                    QueuedWork.remove(runnable);
                }
            });
            notifyListeners(memoryCommitResultCommitToMemory);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            synchronized (this) {
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
            synchronized (this) {
                this.mModified.put(str, Boolean.valueOf(z2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f2) {
            synchronized (this) {
                this.mModified.put(str, Float.valueOf(f2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i2) {
            synchronized (this) {
                this.mModified.put(str, Integer.valueOf(i2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j2) {
            synchronized (this) {
                this.mModified.put(str, Long.valueOf(j2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            synchronized (this) {
                this.mModified.put(str, str2);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            synchronized (this) {
                this.mModified.put(str, set == null ? null : new HashSet(set));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            synchronized (this) {
                this.mModified.put(str, this);
            }
            return this;
        }
    }

    public static class MemoryCommitResult {
        public boolean changesMade;
        public List<String> keysModified;
        public Set<SharedPreferences.OnSharedPreferenceChangeListener> listeners;
        public Map<?, ?> mapToWriteToDisk;
        public volatile boolean writeToDiskResult;
        public final CountDownLatch writtenToDiskLatch;

        private MemoryCommitResult() {
            this.writtenToDiskLatch = new CountDownLatch(1);
            this.writeToDiskResult = false;
        }

        public void setDiskWriteResult(boolean z2) {
            this.writeToDiskResult = z2;
            this.writtenToDiskLatch.countDown();
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

    private void awaitLoadedLocked() {
        if (!this.mLoaded) {
            BlockGuard.getThreadPolicy().onReadFromDisk();
        }
        while (!this.mLoaded) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    private static FileOutputStream createFileOutputStream(File file) {
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(file);
        } catch (FileNotFoundException unused) {
            File parentFile = file.getParentFile();
            if (!parentFile.mkdir()) {
                Log.e(TAG, "Couldn't create directory for SharedPreferences file " + file);
                return null;
            }
            FileUtils.setPermissions(parentFile.getPath(), 505, -1, -1);
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (FileNotFoundException e2) {
                Log.e(TAG, "Couldn't create SharedPreferences file " + file, e2);
                return null;
            }
        }
        return fileOutputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enqueueDiskWrite(final MemoryCommitResult memoryCommitResult, final Runnable runnable) {
        boolean z2;
        Runnable runnable2 = new Runnable() { // from class: android.app.SharedPreferencesImpl.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SharedPreferencesImpl.this.mWritingToDiskLock) {
                    SharedPreferencesImpl.this.writeToFile(memoryCommitResult);
                }
                synchronized (SharedPreferencesImpl.this) {
                    SharedPreferencesImpl.access$310(SharedPreferencesImpl.this);
                }
                Runnable runnable3 = runnable;
                if (runnable3 != null) {
                    runnable3.run();
                }
            }
        };
        if (runnable == null) {
            synchronized (this) {
                z2 = this.mDiskWritesInFlight == 1;
            }
            if (z2) {
                runnable2.run();
                return;
            }
        }
        QueuedWork.singleThreadExecutor().execute(runnable2);
    }

    private boolean hasFileChangedUnexpectedly() {
        boolean z2;
        synchronized (this) {
            if (this.mDiskWritesInFlight > 0) {
                return false;
            }
            try {
                BlockGuard.getThreadPolicy().onReadFromDisk();
                StructStat structStatStat = Libcore.os.stat(this.mFile.getPath());
                synchronized (this) {
                    z2 = (this.mStatTimestamp == structStatStat.st_mtime && this.mStatSize == structStatStat.st_size) ? false : true;
                }
                return z2;
            } catch (ErrnoException unused) {
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r4v6 */
    public void loadFromDiskLocked() throws Throwable {
        StructStat structStatStat;
        BufferedInputStream bufferedInputStream;
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
        HashMap mapH = null;
        try {
            structStatStat = Libcore.os.stat(this.mFile.getPath());
            try {
                ?? CanRead = this.mFile.canRead();
                try {
                    if (CanRead != 0) {
                        try {
                            bufferedInputStream = new BufferedInputStream(new FileInputStream(this.mFile), 16384);
                            try {
                                mapH = n.h(bufferedInputStream);
                                CanRead = bufferedInputStream;
                            } catch (FileNotFoundException e2) {
                                e = e2;
                                Log.w(TAG, "getSharedPreferences", e);
                                CanRead = bufferedInputStream;
                            } catch (IOException e3) {
                                e = e3;
                                Log.w(TAG, "getSharedPreferences", e);
                                CanRead = bufferedInputStream;
                            } catch (XmlPullParserException e4) {
                                e = e4;
                                Log.w(TAG, "getSharedPreferences", e);
                                CanRead = bufferedInputStream;
                            }
                        } catch (FileNotFoundException e5) {
                            e = e5;
                            bufferedInputStream = null;
                        } catch (IOException e6) {
                            e = e6;
                            bufferedInputStream = null;
                        } catch (XmlPullParserException e7) {
                            e = e7;
                            bufferedInputStream = null;
                        } catch (Throwable th) {
                            th = th;
                            CanRead = 0;
                            IoUtils.closeQuietly((AutoCloseable) CanRead);
                            throw th;
                        }
                        IoUtils.closeQuietly((AutoCloseable) CanRead);
                    }
                    this.mLoaded = true;
                    if (mapH != null) {
                        this.mMap = mapH;
                        this.mStatTimestamp = structStatStat.st_mtime;
                        this.mStatSize = structStatStat.st_size;
                    } else {
                        this.mMap = new HashMap();
                    }
                    notifyAll();
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (ErrnoException unused) {
            }
        } catch (ErrnoException unused2) {
            structStatStat = null;
        }
    }

    private static File makeBackupFile(File file) {
        return new File(file.getPath() + ".bak");
    }

    private void startLoadFromDisk() {
        synchronized (this) {
            this.mLoaded = false;
        }
        new Thread("SharedPreferencesImpl-load") { // from class: android.app.SharedPreferencesImpl.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (SharedPreferencesImpl.this) {
                    SharedPreferencesImpl.this.loadFromDiskLocked();
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeToFile(MemoryCommitResult memoryCommitResult) {
        if (this.mFile.exists()) {
            if (!memoryCommitResult.changesMade) {
                memoryCommitResult.setDiskWriteResult(true);
                return;
            }
            if (this.mBackupFile.exists()) {
                this.mFile.delete();
            } else if (!this.mFile.renameTo(this.mBackupFile)) {
                Log.e(TAG, "Couldn't rename file " + this.mFile + " to backup file " + this.mBackupFile);
                memoryCommitResult.setDiskWriteResult(false);
                return;
            }
        }
        try {
            FileOutputStream fileOutputStreamCreateFileOutputStream = createFileOutputStream(this.mFile);
            if (fileOutputStreamCreateFileOutputStream == null) {
                memoryCommitResult.setDiskWriteResult(false);
                return;
            }
            n.t(memoryCommitResult.mapToWriteToDisk, fileOutputStreamCreateFileOutputStream);
            FileUtils.sync(fileOutputStreamCreateFileOutputStream);
            fileOutputStreamCreateFileOutputStream.close();
            ContextImpl.setFilePermissionsFromMode(this.mFile.getPath(), this.mMode, 0);
            try {
                StructStat structStatStat = Libcore.os.stat(this.mFile.getPath());
                synchronized (this) {
                    this.mStatTimestamp = structStatStat.st_mtime;
                    this.mStatSize = structStatStat.st_size;
                }
            } catch (ErrnoException unused) {
            }
            this.mBackupFile.delete();
            memoryCommitResult.setDiskWriteResult(true);
        } catch (IOException e2) {
            Log.w(TAG, "writeToFile: Got exception:", e2);
            if (this.mFile.exists() && !this.mFile.delete()) {
                Log.e(TAG, "Couldn't clean up partially-written file " + this.mFile);
            }
            memoryCommitResult.setDiskWriteResult(false);
        } catch (XmlPullParserException e3) {
            Log.w(TAG, "writeToFile: Got exception:", e3);
            if (this.mFile.exists()) {
                Log.e(TAG, "Couldn't clean up partially-written file " + this.mFile);
            }
            memoryCommitResult.setDiskWriteResult(false);
        }
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        boolean zContainsKey;
        synchronized (this) {
            awaitLoadedLocked();
            zContainsKey = this.mMap.containsKey(str);
        }
        return zContainsKey;
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        synchronized (this) {
            awaitLoadedLocked();
        }
        return new EditorImpl();
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        HashMap map;
        synchronized (this) {
            awaitLoadedLocked();
            map = new HashMap(this.mMap);
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z2) {
        synchronized (this) {
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
        synchronized (this) {
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
        synchronized (this) {
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
        synchronized (this) {
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
        synchronized (this) {
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
        synchronized (this) {
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
        synchronized (this) {
            this.mListeners.put(onSharedPreferenceChangeListener, mContent);
        }
    }

    public void startReloadIfChangedUnexpectedly() {
        synchronized (this) {
            if (hasFileChangedUnexpectedly()) {
                startLoadFromDisk();
            }
        }
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        synchronized (this) {
            this.mListeners.remove(onSharedPreferenceChangeListener);
        }
    }
}
