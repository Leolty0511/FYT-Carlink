package android.os;

import android.system.ErrnoException;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MemoryFile {
    private static String TAG = "MemoryFile";
    private boolean mAllowPurging = false;
    private ByteBuffer mMapping;
    private SharedMemory mSharedMemory;

    public MemoryFile(String str, int i2) throws IOException {
        try {
            SharedMemory sharedMemoryCreate = SharedMemory.create(str, i2);
            this.mSharedMemory = sharedMemoryCreate;
            this.mMapping = sharedMemoryCreate.mapReadWrite();
        } catch (ErrnoException e2) {
            e2.rethrowAsIOException();
        }
    }

    private void beginAccess() throws IOException {
        checkActive();
        if (this.mAllowPurging && native_pin(this.mSharedMemory.getFileDescriptor(), true)) {
            throw new IOException("MemoryFile has been purged");
        }
    }

    private void checkActive() throws IOException {
        if (this.mMapping == null) {
            throw new IOException("MemoryFile has been deactivated");
        }
    }

    private void endAccess() {
        if (this.mAllowPurging) {
            native_pin(this.mSharedMemory.getFileDescriptor(), false);
        }
    }

    public static int getSize(FileDescriptor fileDescriptor) {
        return native_get_size(fileDescriptor);
    }

    private static native int native_get_size(FileDescriptor fileDescriptor);

    private static native boolean native_pin(FileDescriptor fileDescriptor, boolean z2);

    @Deprecated
    public synchronized boolean allowPurging(boolean z2) {
        boolean z3;
        z3 = this.mAllowPurging;
        if (z3 != z2) {
            native_pin(this.mSharedMemory.getFileDescriptor(), !z2);
            this.mAllowPurging = z2;
        }
        return z3;
    }

    public void close() {
        deactivate();
        this.mSharedMemory.close();
    }

    public void deactivate() {
        ByteBuffer byteBuffer = this.mMapping;
        if (byteBuffer != null) {
            SharedMemory.unmap(byteBuffer);
            this.mMapping = null;
        }
    }

    public FileDescriptor getFileDescriptor() {
        return this.mSharedMemory.getFileDescriptor();
    }

    public InputStream getInputStream() {
        return new MemoryInputStream();
    }

    public OutputStream getOutputStream() {
        return new MemoryOutputStream();
    }

    @Deprecated
    public boolean isPurgingAllowed() {
        return this.mAllowPurging;
    }

    public int length() {
        return this.mSharedMemory.getSize();
    }

    public int readBytes(byte[] bArr, int i2, int i3, int i4) throws IOException {
        beginAccess();
        try {
            this.mMapping.position(i2);
            this.mMapping.get(bArr, i3, i4);
            return i4;
        } finally {
            endAccess();
        }
    }

    public void writeBytes(byte[] bArr, int i2, int i3, int i4) {
        beginAccess();
        try {
            this.mMapping.position(i3);
            this.mMapping.put(bArr, i2, i4);
        } finally {
            endAccess();
        }
    }

    public class MemoryOutputStream extends OutputStream {
        private int mOffset;
        private byte[] mSingleByte;

        private MemoryOutputStream() {
            this.mOffset = 0;
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) {
            MemoryFile.this.writeBytes(bArr, i2, this.mOffset, i3);
            this.mOffset += i3;
        }

        @Override // java.io.OutputStream
        public void write(int i2) {
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
            if (this.mOffset >= MemoryFile.this.mSharedMemory.getSize()) {
                return 0;
            }
            return MemoryFile.this.mSharedMemory.getSize() - this.mOffset;
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
            if (((long) this.mOffset) + j2 > MemoryFile.this.mSharedMemory.getSize()) {
                j2 = MemoryFile.this.mSharedMemory.getSize() - this.mOffset;
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
