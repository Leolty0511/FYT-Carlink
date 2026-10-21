package android.os;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MemoryFile {
    private static final int PROT_READ = 1;
    private static final int PROT_WRITE = 2;
    private static String TAG = "MemoryFile";
    private int mAddress;
    private boolean mAllowPurging = false;
    private FileDescriptor mFD;
    private int mLength;

    public MemoryFile(String str, int i2) {
        this.mLength = i2;
        FileDescriptor fileDescriptorNative_open = native_open(str, i2);
        this.mFD = fileDescriptorNative_open;
        if (i2 > 0) {
            this.mAddress = native_mmap(fileDescriptorNative_open, i2, 3);
        } else {
            this.mAddress = 0;
        }
    }

    public static int getSize(FileDescriptor fileDescriptor) {
        return native_get_size(fileDescriptor);
    }

    private boolean isClosed() {
        return !this.mFD.valid();
    }

    private boolean isDeactivated() {
        return this.mAddress == 0;
    }

    private static native void native_close(FileDescriptor fileDescriptor);

    private static native int native_get_size(FileDescriptor fileDescriptor);

    private static native int native_mmap(FileDescriptor fileDescriptor, int i2, int i3);

    private static native void native_munmap(int i2, int i3);

    private static native FileDescriptor native_open(String str, int i2);

    private static native void native_pin(FileDescriptor fileDescriptor, boolean z2);

    private static native int native_read(FileDescriptor fileDescriptor, int i2, byte[] bArr, int i3, int i4, int i5, boolean z2);

    private static native void native_write(FileDescriptor fileDescriptor, int i2, byte[] bArr, int i3, int i4, int i5, boolean z2);

    public synchronized boolean allowPurging(boolean z2) {
        boolean z3;
        z3 = this.mAllowPurging;
        if (z3 != z2) {
            native_pin(this.mFD, !z2);
            this.mAllowPurging = z2;
        }
        return z3;
    }

    public void close() {
        deactivate();
        if (isClosed()) {
            return;
        }
        native_close(this.mFD);
    }

    public void deactivate() {
        if (isDeactivated()) {
            return;
        }
        try {
            native_munmap(this.mAddress, this.mLength);
            this.mAddress = 0;
        } catch (IOException e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void finalize() {
        if (isClosed()) {
            return;
        }
        Log.e(TAG, "MemoryFile.finalize() called while ashmem still open");
        close();
    }

    public FileDescriptor getFileDescriptor() {
        return this.mFD;
    }

    public InputStream getInputStream() {
        return new MemoryInputStream();
    }

    public OutputStream getOutputStream() {
        return new MemoryOutputStream();
    }

    public boolean isPurgingAllowed() {
        return this.mAllowPurging;
    }

    public int length() {
        return this.mLength;
    }

    public int readBytes(byte[] bArr, int i2, int i3, int i4) throws IOException {
        int i5;
        if (isDeactivated()) {
            throw new IOException("Can't read from deactivated memory file.");
        }
        if (i3 < 0 || i3 > bArr.length || i4 < 0 || i4 > bArr.length - i3 || i2 < 0 || i2 > (i5 = this.mLength) || i4 > i5 - i2) {
            throw new IndexOutOfBoundsException();
        }
        return native_read(this.mFD, this.mAddress, bArr, i2, i3, i4, this.mAllowPurging);
    }

    public void writeBytes(byte[] bArr, int i2, int i3, int i4) throws IOException {
        int i5;
        if (isDeactivated()) {
            throw new IOException("Can't write to deactivated memory file.");
        }
        if (i2 < 0 || i2 > bArr.length || i4 < 0 || i4 > bArr.length - i2 || i3 < 0 || i3 > (i5 = this.mLength) || i4 > i5 - i3) {
            throw new IndexOutOfBoundsException();
        }
        native_write(this.mFD, this.mAddress, bArr, i2, i3, i4, this.mAllowPurging);
    }

    public class MemoryOutputStream extends OutputStream {
        private int mOffset;
        private byte[] mSingleByte;

        private MemoryOutputStream() {
            this.mOffset = 0;
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) throws IOException {
            MemoryFile.this.writeBytes(bArr, i2, this.mOffset, i3);
            this.mOffset += i3;
        }

        @Override // java.io.OutputStream
        public void write(int i2) throws IOException {
            if (this.mSingleByte == null) {
                this.mSingleByte = new byte[1];
            }
            byte[] bArr = this.mSingleByte;
            bArr[0] = (byte) i2;
            write(bArr, 0, 1);
        }
    }

    public class MemoryInputStream extends InputStream {
        private int mMark;
        private int mOffset;
        private byte[] mSingleByte;

        private MemoryInputStream() {
            this.mMark = 0;
            this.mOffset = 0;
        }

        @Override // java.io.InputStream
        public int available() {
            if (this.mOffset >= MemoryFile.this.mLength) {
                return 0;
            }
            return MemoryFile.this.mLength - this.mOffset;
        }

        @Override // java.io.InputStream
        public void mark(int i2) {
            this.mMark = this.mOffset;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.mSingleByte == null) {
                this.mSingleByte = new byte[1];
            }
            if (read(this.mSingleByte, 0, 1) != 1) {
                return -1;
            }
            return this.mSingleByte[0];
        }

        @Override // java.io.InputStream
        public void reset() {
            this.mOffset = this.mMark;
        }

        @Override // java.io.InputStream
        public long skip(long j2) {
            if (((long) this.mOffset) + j2 > MemoryFile.this.mLength) {
                j2 = MemoryFile.this.mLength - this.mOffset;
            }
            this.mOffset = (int) (((long) this.mOffset) + j2);
            return j2;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) throws IOException {
            if (i2 >= 0 && i3 >= 0 && i2 + i3 <= bArr.length) {
                int iMin = Math.min(i3, available());
                if (iMin < 1) {
                    return -1;
                }
                int bytes = MemoryFile.this.readBytes(bArr, this.mOffset, i2, iMin);
                if (bytes > 0) {
                    this.mOffset += bytes;
                }
                return bytes;
            }
            throw new IndexOutOfBoundsException();
        }
    }
}
