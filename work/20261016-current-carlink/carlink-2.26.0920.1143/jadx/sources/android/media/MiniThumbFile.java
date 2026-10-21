package android.media;

import android.app.backup.FullBackup;
import android.app.job.JobInfo;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import com.android.internal.content.NativeLibraryHelper;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.Hashtable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class MiniThumbFile {
    public static final int BYTES_PER_MINTHUMB = 10000;
    private static final int HEADER_SIZE = 13;
    private static final int MINI_THUMB_DATA_FILE_VERSION = 3;
    private static final String TAG = "MiniThumbFile";
    private static final Hashtable<String, MiniThumbFile> sThumbFiles = new Hashtable<>();
    private ByteBuffer mBuffer = ByteBuffer.allocateDirect(10000);
    private FileChannel mChannel;
    private RandomAccessFile mMiniThumbFile;
    private Uri mUri;

    public MiniThumbFile(Uri uri) {
        this.mUri = uri;
    }

    public static synchronized MiniThumbFile instance(Uri uri) {
        MiniThumbFile miniThumbFile;
        String str = uri.getPathSegments().get(1);
        Hashtable<String, MiniThumbFile> hashtable = sThumbFiles;
        miniThumbFile = hashtable.get(str);
        if (miniThumbFile == null) {
            miniThumbFile = new MiniThumbFile(Uri.parse("content://media/external/" + str + "/media"));
            hashtable.put(str, miniThumbFile);
        }
        return miniThumbFile;
    }

    private RandomAccessFile miniThumbDataFile() {
        if (this.mMiniThumbFile == null) {
            removeOldFile();
            String strRandomAccessFilePath = randomAccessFilePath(3);
            File parentFile = new File(strRandomAccessFilePath).getParentFile();
            if (!parentFile.isDirectory() && !parentFile.mkdirs()) {
                Log.e(TAG, "Unable to create .thumbnails directory " + parentFile.toString());
            }
            File file = new File(strRandomAccessFilePath);
            try {
                try {
                    this.mMiniThumbFile = new RandomAccessFile(file, "rw");
                } catch (IOException unused) {
                    this.mMiniThumbFile = new RandomAccessFile(file, FullBackup.ROOT_TREE_TOKEN);
                }
            } catch (IOException unused2) {
            }
            RandomAccessFile randomAccessFile = this.mMiniThumbFile;
            if (randomAccessFile != null) {
                this.mChannel = randomAccessFile.getChannel();
            }
        }
        return this.mMiniThumbFile;
    }

    private String randomAccessFilePath(int i2) {
        return (Environment.getExternalStorageDirectory().toString() + "/DCIM/.thumbnails") + "/.thumbdata" + i2 + NativeLibraryHelper.CLEAR_ABI_OVERRIDE + this.mUri.hashCode();
    }

    private void removeOldFile() {
        File file = new File(randomAccessFilePath(2));
        if (file.exists()) {
            try {
                file.delete();
            } catch (SecurityException unused) {
            }
        }
    }

    public static synchronized void reset() {
        Iterator<MiniThumbFile> it = sThumbFiles.values().iterator();
        while (it.hasNext()) {
            it.next().deactivate();
        }
        sThumbFiles.clear();
    }

    public synchronized void deactivate() {
        RandomAccessFile randomAccessFile = this.mMiniThumbFile;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
                this.mMiniThumbFile = null;
            } catch (IOException unused) {
            }
        }
    }

    public synchronized long getMagic(long j2) {
        if (miniThumbDataFile() != null) {
            long j3 = JobInfo.MIN_BACKOFF_MILLIS * j2;
            FileLock fileLockLock = null;
            try {
                try {
                    this.mBuffer.clear();
                    this.mBuffer.limit(9);
                    fileLockLock = this.mChannel.lock(j3, 9L, true);
                    if (this.mChannel.read(this.mBuffer, j3) == 9) {
                        this.mBuffer.position(0);
                        if (this.mBuffer.get() == 1) {
                            long j4 = this.mBuffer.getLong();
                            if (fileLockLock != null) {
                                try {
                                    fileLockLock.release();
                                } catch (IOException unused) {
                                }
                            }
                            return j4;
                        }
                    }
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused2) {
                        }
                    }
                } catch (IOException e2) {
                    Log.v(TAG, "Got exception checking file magic: ", e2);
                    if (fileLockLock != null) {
                    }
                } catch (RuntimeException e3) {
                    Log.e(TAG, "Got exception when reading magic, id = " + j2 + ", disk full or mount read-only? " + e3.getClass());
                    if (fileLockLock != null) {
                    }
                }
            } catch (Throwable th) {
                if (fileLockLock != null) {
                    try {
                        fileLockLock.release();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        }
        return 0L;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x0065 A[EXC_TOP_SPLITTER, PHI: r2
  0x0065: PHI (r2v5 java.nio.channels.FileLock) = (r2v3 java.nio.channels.FileLock), (r2v4 java.nio.channels.FileLock), (r2v7 java.nio.channels.FileLock) binds: [B:40:0x0090, B:44:0x00ac, B:27:0x0063] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public synchronized byte[] getMiniThumbFromFile(long j2, byte[] bArr) {
        FileLock fileLockLock;
        RandomAccessFile randomAccessFileMiniThumbDataFile = miniThumbDataFile();
        FileLock fileLock = 0;
        if (randomAccessFileMiniThumbDataFile == null) {
            return null;
        }
        long j3 = JobInfo.MIN_BACKOFF_MILLIS * j2;
        try {
            try {
                this.mBuffer.clear();
                fileLockLock = this.mChannel.lock(j3, JobInfo.MIN_BACKOFF_MILLIS, true);
                try {
                    int i2 = this.mChannel.read(this.mBuffer, j3);
                    if (i2 > 13) {
                        this.mBuffer.position(0);
                        byte b2 = this.mBuffer.get();
                        long j4 = this.mBuffer.getLong();
                        int i3 = this.mBuffer.getInt();
                        if (i2 >= i3 + 13 && i3 != 0 && j4 != 0 && b2 == 1 && bArr.length >= i3) {
                            this.mBuffer.get(bArr, 0, i3);
                            if (fileLockLock != null) {
                                try {
                                    fileLockLock.release();
                                } catch (IOException unused) {
                                }
                            }
                            return bArr;
                        }
                    }
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused2) {
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    Log.w(TAG, "got exception when reading thumbnail id=" + j2 + ", exception: " + e);
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                } catch (RuntimeException e3) {
                    e = e3;
                    Log.e(TAG, "Got exception when reading thumbnail, id = " + j2 + ", disk full or mount read-only? " + e.getClass());
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                }
            } catch (Throwable th) {
                th = th;
                fileLock = randomAccessFileMiniThumbDataFile;
                if (fileLock != 0) {
                    try {
                        fileLock.release();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            fileLockLock = null;
        } catch (RuntimeException e5) {
            e = e5;
            fileLockLock = null;
        } catch (Throwable th2) {
            th = th2;
            if (fileLock != 0) {
                fileLock.release();
            }
            throw th;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0075 A[EXC_TOP_SPLITTER, PHI: r14
  0x0075: PHI (r14v4 java.nio.channels.FileLock) = (r14v2 java.nio.channels.FileLock), (r14v5 java.nio.channels.FileLock) binds: [B:21:0x0073, B:30:0x0097] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public synchronized void saveMiniThumbToFile(byte[] bArr, long j2, long j3) {
        if (miniThumbDataFile() == null) {
            return;
        }
        long j4 = JobInfo.MIN_BACKOFF_MILLIS * j2;
        FileLock fileLockLock = null;
        try {
            if (bArr != null) {
                try {
                    if (bArr.length > 9987) {
                        return;
                    }
                    this.mBuffer.clear();
                    this.mBuffer.put((byte) 1);
                    this.mBuffer.putLong(j3);
                    this.mBuffer.putInt(bArr.length);
                    this.mBuffer.put(bArr);
                    this.mBuffer.flip();
                    fileLockLock = this.mChannel.lock(j4, JobInfo.MIN_BACKOFF_MILLIS, false);
                    this.mChannel.write(this.mBuffer, j4);
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused) {
                        }
                    }
                } catch (IOException e2) {
                    Log.e(TAG, "couldn't save mini thumbnail data for " + j2 + "; ", e2);
                    throw e2;
                } catch (RuntimeException e3) {
                    Log.e(TAG, "couldn't save mini thumbnail data for " + j2 + "; disk full or mount read-only? " + e3.getClass());
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                }
            } else if (fileLockLock != null) {
                fileLockLock.release();
            }
        } catch (Throwable th) {
            if (fileLockLock != null) {
                try {
                    fileLockLock.release();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }
}
