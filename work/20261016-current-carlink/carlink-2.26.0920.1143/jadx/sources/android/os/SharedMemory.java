package android.os;

import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import dalvik.system.VMRuntime;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.nio.ByteBuffer;
import java.nio.DirectByteBuffer;
import java.nio.NioUtils;
import sun.misc.Cleaner;

/* JADX INFO: loaded from: classes.dex */
public final class SharedMemory implements Parcelable, Closeable {
    private Cleaner mCleaner;
    private final FileDescriptor mFileDescriptor;
    private final MemoryRegistration mMemoryRegistration;
    private final int mSize;
    private static final int PROT_MASK = ((OsConstants.PROT_READ | OsConstants.PROT_WRITE) | OsConstants.PROT_EXEC) | OsConstants.PROT_NONE;
    public static final Parcelable.Creator<SharedMemory> CREATOR = new Parcelable.Creator<SharedMemory>() { // from class: android.os.SharedMemory.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SharedMemory createFromParcel(Parcel parcel) {
            return new SharedMemory(parcel.readRawFileDescriptor());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SharedMemory[] newArray(int i2) {
            return new SharedMemory[i2];
        }
    };

    public static final class Closer implements Runnable {
        private FileDescriptor mFd;
        private MemoryRegistration mMemoryReference;

        @Override // java.lang.Runnable
        public void run() {
            try {
                Os.close(this.mFd);
            } catch (ErrnoException unused) {
            }
            this.mMemoryReference.release();
            this.mMemoryReference = null;
        }

        private Closer(FileDescriptor fileDescriptor, MemoryRegistration memoryRegistration) {
            this.mFd = fileDescriptor;
            this.mMemoryReference = memoryRegistration;
        }
    }

    public static final class MemoryRegistration {
        private int mReferenceCount;
        private int mSize;

        public synchronized MemoryRegistration acquire() {
            this.mReferenceCount++;
            return this;
        }

        public synchronized void release() {
            int i2 = this.mReferenceCount - 1;
            this.mReferenceCount = i2;
            if (i2 == 0) {
                VMRuntime.getRuntime().registerNativeFree(this.mSize);
            }
        }

        private MemoryRegistration(int i2) {
            this.mSize = i2;
            this.mReferenceCount = 1;
            VMRuntime.getRuntime().registerNativeAllocation(this.mSize);
        }
    }

    public static final class Unmapper implements Runnable {
        private long mAddress;
        private MemoryRegistration mMemoryReference;
        private int mSize;

        @Override // java.lang.Runnable
        public void run() {
            try {
                Os.munmap(this.mAddress, this.mSize);
            } catch (ErrnoException unused) {
            }
            this.mMemoryReference.release();
            this.mMemoryReference = null;
        }

        private Unmapper(long j2, int i2, MemoryRegistration memoryRegistration) {
            this.mAddress = j2;
            this.mSize = i2;
            this.mMemoryReference = memoryRegistration;
        }
    }

    private void checkOpen() {
        if (!this.mFileDescriptor.valid()) {
            throw new IllegalStateException("SharedMemory is closed");
        }
    }

    public static SharedMemory create(String str, int i2) {
        if (i2 > 0) {
            return new SharedMemory(nCreate(str, i2));
        }
        throw new IllegalArgumentException("Size must be greater than zero");
    }

    private static native FileDescriptor nCreate(String str, int i2);

    private static native int nGetSize(FileDescriptor fileDescriptor);

    private static native int nSetProt(FileDescriptor fileDescriptor, int i2);

    public static void unmap(ByteBuffer byteBuffer) {
        if (!(byteBuffer instanceof DirectByteBuffer)) {
            throw new IllegalArgumentException("ByteBuffer wasn't created by #map(int, int, int); can't unmap");
        }
        NioUtils.freeDirectBuffer(byteBuffer);
    }

    private static void validateProt(int i2) {
        if ((i2 & (~PROT_MASK)) != 0) {
            throw new IllegalArgumentException("Invalid prot value");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Cleaner cleaner = this.mCleaner;
        if (cleaner != null) {
            cleaner.clean();
            this.mCleaner = null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 1;
    }

    public int getFd() {
        return this.mFileDescriptor.getInt$();
    }

    public FileDescriptor getFileDescriptor() {
        return this.mFileDescriptor;
    }

    public int getSize() {
        checkOpen();
        return this.mSize;
    }

    public ByteBuffer map(int i2, int i3, int i4) throws ErrnoException {
        checkOpen();
        validateProt(i2);
        if (i3 < 0) {
            throw new IllegalArgumentException("Offset must be >= 0");
        }
        if (i4 <= 0) {
            throw new IllegalArgumentException("Length must be > 0");
        }
        if (i3 + i4 > this.mSize) {
            throw new IllegalArgumentException("offset + length must not exceed getSize()");
        }
        long jMmap = Os.mmap(0L, i4, i2, OsConstants.MAP_SHARED, this.mFileDescriptor, i3);
        return new DirectByteBuffer(i4, jMmap, this.mFileDescriptor, new Unmapper(jMmap, i4, this.mMemoryRegistration.acquire()), (i2 & OsConstants.PROT_WRITE) == 0);
    }

    public ByteBuffer mapReadOnly() {
        return map(OsConstants.PROT_READ, 0, this.mSize);
    }

    public ByteBuffer mapReadWrite() {
        return map(OsConstants.PROT_READ | OsConstants.PROT_WRITE, 0, this.mSize);
    }

    public boolean setProtect(int i2) {
        checkOpen();
        validateProt(i2);
        return nSetProt(this.mFileDescriptor, i2) == 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        checkOpen();
        parcel.writeFileDescriptor(this.mFileDescriptor);
    }

    private SharedMemory(FileDescriptor fileDescriptor) {
        if (fileDescriptor == null) {
            throw new IllegalArgumentException("Unable to create SharedMemory from a null FileDescriptor");
        }
        if (!fileDescriptor.valid()) {
            throw new IllegalArgumentException("Unable to create SharedMemory from closed FileDescriptor");
        }
        this.mFileDescriptor = fileDescriptor;
        int iNGetSize = nGetSize(fileDescriptor);
        this.mSize = iNGetSize;
        if (iNGetSize <= 0) {
            throw new IllegalArgumentException("FileDescriptor is not a valid ashmem fd");
        }
        MemoryRegistration memoryRegistration = new MemoryRegistration(iNGetSize);
        this.mMemoryRegistration = memoryRegistration;
        this.mCleaner = Cleaner.create(fileDescriptor, new Closer(fileDescriptor, memoryRegistration));
    }
}
