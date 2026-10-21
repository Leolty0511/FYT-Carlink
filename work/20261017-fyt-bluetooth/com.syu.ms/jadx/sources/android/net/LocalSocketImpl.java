package android.net;

import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import libcore.io.ErrnoException;
import libcore.io.Libcore;
import libcore.io.OsConstants;

/* JADX INFO: loaded from: classes.dex */
class LocalSocketImpl {
    private FileDescriptor fd;
    private SocketInputStream fis;
    private SocketOutputStream fos;
    public FileDescriptor[] inboundFileDescriptors;
    private boolean mFdCreatedInternally;
    public FileDescriptor[] outboundFileDescriptors;
    private Object readMonitor = new Object();
    private Object writeMonitor = new Object();

    public class SocketOutputStream extends OutputStream {
        public SocketOutputStream() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            LocalSocketImpl.this.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            FileDescriptor fileDescriptor = LocalSocketImpl.this.fd;
            if (fileDescriptor == null) {
                throw new IOException("socket closed");
            }
            while (LocalSocketImpl.this.pending_native(fileDescriptor) > 0) {
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException unused) {
                    return;
                }
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            write(bArr, 0, bArr.length);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) {
            synchronized (LocalSocketImpl.this.writeMonitor) {
                FileDescriptor fileDescriptor = LocalSocketImpl.this.fd;
                if (fileDescriptor == null) {
                    throw new IOException("socket closed");
                }
                if (i2 < 0 || i3 < 0 || i2 + i3 > bArr.length) {
                    throw new ArrayIndexOutOfBoundsException();
                }
                LocalSocketImpl.this.writeba_native(bArr, i2, i3, fileDescriptor);
            }
        }

        @Override // java.io.OutputStream
        public void write(int i2) {
            synchronized (LocalSocketImpl.this.writeMonitor) {
                FileDescriptor fileDescriptor = LocalSocketImpl.this.fd;
                if (fileDescriptor != null) {
                    LocalSocketImpl.this.write_native(i2, fileDescriptor);
                } else {
                    throw new IOException("socket closed");
                }
            }
        }
    }

    public LocalSocketImpl() {
    }

    private native FileDescriptor accept(FileDescriptor fileDescriptor, LocalSocketImpl localSocketImpl);

    /* JADX INFO: Access modifiers changed from: private */
    public native int available_native(FileDescriptor fileDescriptor);

    private native void bindLocal(FileDescriptor fileDescriptor, String str, int i2);

    private native void connectLocal(FileDescriptor fileDescriptor, String str, int i2);

    private native int getOption_native(FileDescriptor fileDescriptor, int i2);

    private native Credentials getPeerCredentials_native(FileDescriptor fileDescriptor);

    private native void listen_native(FileDescriptor fileDescriptor, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public native int pending_native(FileDescriptor fileDescriptor);

    /* JADX INFO: Access modifiers changed from: private */
    public native int read_native(FileDescriptor fileDescriptor);

    /* JADX INFO: Access modifiers changed from: private */
    public native int readba_native(byte[] bArr, int i2, int i3, FileDescriptor fileDescriptor);

    private native void setOption_native(FileDescriptor fileDescriptor, int i2, int i3, int i4);

    private native void shutdown(FileDescriptor fileDescriptor, boolean z2);

    /* JADX INFO: Access modifiers changed from: private */
    public native void write_native(int i2, FileDescriptor fileDescriptor);

    /* JADX INFO: Access modifiers changed from: private */
    public native void writeba_native(byte[] bArr, int i2, int i3, FileDescriptor fileDescriptor);

    public void accept(LocalSocketImpl localSocketImpl) throws IOException {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor == null) {
            throw new IOException("socket not created");
        }
        localSocketImpl.fd = accept(fileDescriptor, localSocketImpl);
        localSocketImpl.mFdCreatedInternally = true;
    }

    public int available() {
        return getInputStream().available();
    }

    public void bind(LocalSocketAddress localSocketAddress) throws IOException {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor == null) {
            throw new IOException("socket not created");
        }
        bindLocal(fileDescriptor, localSocketAddress.getName(), localSocketAddress.getNamespace().getId());
    }

    public void close() {
        synchronized (this) {
            if (this.fd == null || !this.mFdCreatedInternally) {
                this.fd = null;
                return;
            }
            try {
                Libcore.os.close(this.fd);
            } catch (ErrnoException e2) {
                e2.rethrowAsIOException();
            }
            this.fd = null;
        }
    }

    public void connect(LocalSocketAddress localSocketAddress, int i2) throws IOException {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor == null) {
            throw new IOException("socket not created");
        }
        connectLocal(fileDescriptor, localSocketAddress.getName(), localSocketAddress.getNamespace().getId());
    }

    public void create(int i2) {
        int i3;
        if (this.fd == null) {
            if (i2 == 1) {
                i3 = OsConstants.SOCK_DGRAM;
            } else if (i2 == 2) {
                i3 = OsConstants.SOCK_STREAM;
            } else {
                if (i2 != 3) {
                    throw new IllegalStateException("unknown sockType");
                }
                i3 = OsConstants.SOCK_SEQPACKET;
            }
            try {
                this.fd = Libcore.os.socket(OsConstants.AF_UNIX, i3, 0);
                this.mFdCreatedInternally = true;
            } catch (ErrnoException e2) {
                e2.rethrowAsIOException();
            }
        }
    }

    public void finalize() {
        close();
    }

    public FileDescriptor[] getAncillaryFileDescriptors() {
        FileDescriptor[] fileDescriptorArr;
        synchronized (this.readMonitor) {
            fileDescriptorArr = this.inboundFileDescriptors;
            this.inboundFileDescriptors = null;
        }
        return fileDescriptorArr;
    }

    public FileDescriptor getFileDescriptor() {
        return this.fd;
    }

    public InputStream getInputStream() throws IOException {
        SocketInputStream socketInputStream;
        if (this.fd == null) {
            throw new IOException("socket not created");
        }
        synchronized (this) {
            if (this.fis == null) {
                this.fis = new SocketInputStream();
            }
            socketInputStream = this.fis;
        }
        return socketInputStream;
    }

    public Object getOption(int i2) throws IOException {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor == null) {
            throw new IOException("socket not created");
        }
        if (i2 == 4102) {
            return 0;
        }
        int option_native = getOption_native(fileDescriptor, i2);
        return (i2 == 4097 || i2 == 4098) ? Integer.valueOf(option_native) : Integer.valueOf(option_native);
    }

    public OutputStream getOutputStream() throws IOException {
        SocketOutputStream socketOutputStream;
        if (this.fd == null) {
            throw new IOException("socket not created");
        }
        synchronized (this) {
            if (this.fos == null) {
                this.fos = new SocketOutputStream();
            }
            socketOutputStream = this.fos;
        }
        return socketOutputStream;
    }

    public Credentials getPeerCredentials() {
        return getPeerCredentials_native(this.fd);
    }

    public LocalSocketAddress getSockAddress() {
        return null;
    }

    public void listen(int i2) throws IOException {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor == null) {
            throw new IOException("socket not created");
        }
        listen_native(fileDescriptor, i2);
    }

    public void sendUrgentData(int i2) {
        throw new RuntimeException("not impled");
    }

    public void setFileDescriptorsForSend(FileDescriptor[] fileDescriptorArr) {
        synchronized (this.writeMonitor) {
            this.outboundFileDescriptors = fileDescriptorArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.net.LocalSocketImpl] */
    public void setOption(int i2, Object obj) throws IOException {
        int iIntValue;
        ?? r1;
        if (this.fd == null) {
            throw new IOException("socket not created");
        }
        if (obj instanceof Integer) {
            iIntValue = ((Integer) obj).intValue();
            r1 = -1;
        } else {
            if (!(obj instanceof Boolean)) {
                throw new IOException("bad value: " + obj);
            }
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            iIntValue = 0;
            r1 = zBooleanValue;
        }
        setOption_native(this.fd, i2, r1, iIntValue);
    }

    public void shutdownInput() throws IOException {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor == null) {
            throw new IOException("socket not created");
        }
        shutdown(fileDescriptor, true);
    }

    public void shutdownOutput() throws IOException {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor == null) {
            throw new IOException("socket not created");
        }
        shutdown(fileDescriptor, false);
    }

    public boolean supportsUrgentData() {
        return false;
    }

    public String toString() {
        return super.toString() + " fd:" + this.fd;
    }

    public LocalSocketImpl(FileDescriptor fileDescriptor) {
        this.fd = fileDescriptor;
    }

    public class SocketInputStream extends InputStream {
        public SocketInputStream() {
        }

        @Override // java.io.InputStream
        public int available() {
            LocalSocketImpl localSocketImpl = LocalSocketImpl.this;
            return localSocketImpl.available_native(localSocketImpl.fd);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            LocalSocketImpl.this.close();
        }

        @Override // java.io.InputStream
        public int read() {
            int i2;
            synchronized (LocalSocketImpl.this.readMonitor) {
                FileDescriptor fileDescriptor = LocalSocketImpl.this.fd;
                if (fileDescriptor == null) {
                    throw new IOException("socket closed");
                }
                i2 = LocalSocketImpl.this.read_native(fileDescriptor);
            }
            return i2;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) {
            return read(bArr, 0, bArr.length);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            int i4;
            synchronized (LocalSocketImpl.this.readMonitor) {
                FileDescriptor fileDescriptor = LocalSocketImpl.this.fd;
                if (fileDescriptor != null) {
                    if (i2 >= 0 && i3 >= 0 && i2 + i3 <= bArr.length) {
                        i4 = LocalSocketImpl.this.readba_native(bArr, i2, i3, fileDescriptor);
                    } else {
                        throw new ArrayIndexOutOfBoundsException();
                    }
                } else {
                    throw new IOException("socket closed");
                }
            }
            return i4;
        }
    }
}
