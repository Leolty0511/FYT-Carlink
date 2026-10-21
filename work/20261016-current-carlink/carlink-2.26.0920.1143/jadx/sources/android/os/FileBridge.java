package android.os;

import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteOrder;
import java.util.Arrays;
import libcore.io.IoBridge;
import libcore.io.IoUtils;
import libcore.io.Memory;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class FileBridge extends Thread {
    private static final int CMD_CLOSE = 3;
    private static final int CMD_FSYNC = 2;
    private static final int CMD_WRITE = 1;
    private static final int MSG_LENGTH = 8;
    private static final String TAG = "FileBridge";
    private final FileDescriptor mClient;
    private volatile boolean mClosed;
    private final FileDescriptor mServer;
    private FileDescriptor mTarget;

    public FileBridge() {
        FileDescriptor fileDescriptor = new FileDescriptor();
        this.mServer = fileDescriptor;
        FileDescriptor fileDescriptor2 = new FileDescriptor();
        this.mClient = fileDescriptor2;
        try {
            Os.socketpair(OsConstants.AF_UNIX, OsConstants.SOCK_STREAM, 0, fileDescriptor, fileDescriptor2);
        } catch (ErrnoException unused) {
            throw new RuntimeException("Failed to create bridge");
        }
    }

    public void forceClose() {
        IoUtils.closeQuietly(this.mTarget);
        IoUtils.closeQuietly(this.mServer);
        IoUtils.closeQuietly(this.mClient);
        this.mClosed = true;
    }

    public FileDescriptor getClientSocket() {
        return this.mClient;
    }

    public boolean isClosed() {
        return this.mClosed;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        byte[] bArr = new byte[8192];
        while (IoBridge.read(this.mServer, bArr, 0, 8) == 8) {
            try {
                try {
                    ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                    int iPeekInt = Memory.peekInt(bArr, 0, byteOrder);
                    if (iPeekInt == 1) {
                        int iPeekInt2 = Memory.peekInt(bArr, 4, byteOrder);
                        while (iPeekInt2 > 0) {
                            int i2 = IoBridge.read(this.mServer, bArr, 0, Math.min(8192, iPeekInt2));
                            if (i2 == -1) {
                                throw new IOException("Unexpected EOF; still expected " + iPeekInt2 + " bytes");
                            }
                            IoBridge.write(this.mTarget, bArr, 0, i2);
                            iPeekInt2 -= i2;
                        }
                    } else if (iPeekInt == 2) {
                        Os.fsync(this.mTarget);
                        IoBridge.write(this.mServer, bArr, 0, 8);
                    } else if (iPeekInt == 3) {
                        Os.fsync(this.mTarget);
                        Os.close(this.mTarget);
                        this.mClosed = true;
                        IoBridge.write(this.mServer, bArr, 0, 8);
                        break;
                    }
                } catch (Throwable th) {
                    forceClose();
                    throw th;
                }
            } catch (ErrnoException | IOException e2) {
                Log.wtf(TAG, "Failed during bridge", e2);
            }
        }
        forceClose();
    }

    public void setTargetFile(FileDescriptor fileDescriptor) {
        this.mTarget = fileDescriptor;
    }

    public static class FileBridgeOutputStream extends OutputStream {
        private final FileDescriptor mClient;
        private final ParcelFileDescriptor mClientPfd;
        private final byte[] mTemp;

        public FileBridgeOutputStream(ParcelFileDescriptor parcelFileDescriptor) {
            this.mTemp = new byte[8];
            this.mClientPfd = parcelFileDescriptor;
            this.mClient = parcelFileDescriptor.getFileDescriptor();
        }

        private void writeCommandAndBlock(int i2, String str) throws IOException {
            byte[] bArr = this.mTemp;
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            Memory.pokeInt(bArr, 0, i2, byteOrder);
            IoBridge.write(this.mClient, this.mTemp, 0, 8);
            if (IoBridge.read(this.mClient, this.mTemp, 0, 8) != 8 || Memory.peekInt(this.mTemp, 0, byteOrder) != i2) {
                throw new IOException(android.accessibilityservice.c.k("Failed to execute ", str, " across bridge"));
            }
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                writeCommandAndBlock(3, "close()");
            } finally {
                IoBridge.closeAndSignalBlockedThreads(this.mClient);
                IoUtils.closeQuietly(this.mClientPfd);
            }
        }

        public void fsync() throws IOException {
            writeCommandAndBlock(2, "fsync()");
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) {
            Arrays.checkOffsetAndCount(bArr.length, i2, i3);
            byte[] bArr2 = this.mTemp;
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            Memory.pokeInt(bArr2, 0, 1, byteOrder);
            Memory.pokeInt(this.mTemp, 4, i3, byteOrder);
            IoBridge.write(this.mClient, this.mTemp, 0, 8);
            IoBridge.write(this.mClient, bArr, i2, i3);
        }

        public FileBridgeOutputStream(FileDescriptor fileDescriptor) {
            this.mTemp = new byte[8];
            this.mClientPfd = null;
            this.mClient = fileDescriptor;
        }

        @Override // java.io.OutputStream
        public void write(int i2) {
            Streams.writeSingleByte(this, i2);
        }
    }
}
