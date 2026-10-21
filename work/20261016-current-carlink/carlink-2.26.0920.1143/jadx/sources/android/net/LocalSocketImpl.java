package android.net;

import android.accessibilityservice.c;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructLinger;
import android.system.StructTimeval;
import android.util.MutableInt;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
class LocalSocketImpl {
    private FileDescriptor fd;
    private SocketInputStream fis;
    private SocketOutputStream fos;
    FileDescriptor[] inboundFileDescriptors;
    private boolean mFdCreatedInternally;
    FileDescriptor[] outboundFileDescriptors;
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
            MutableInt mutableInt = new MutableInt(0);
            while (true) {
                try {
                    Os.ioctlInt(fileDescriptor, OsConstants.TIOCOUTQ, mutableInt);
                    if (mutableInt.value <= 0) {
                        return;
                    }
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException unused) {
                        return;
                    }
                } catch (ErrnoException e2) {
                    throw e2.rethrowAsIOException();
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

    private native void bindLocal(FileDescriptor fileDescriptor, String str, int i2);

    private native void connectLocal(FileDescriptor fileDescriptor, String str, int i2);

    private native Credentials getPeerCredentials_native(FileDescriptor fileDescriptor);

    private static int javaSoToOsOpt(int i2) {
        if (i2 == 4) {
            return OsConstants.SO_REUSEADDR;
        }
        if (i2 == 4097) {
            return OsConstants.SO_SNDBUF;
        }
        if (i2 == 4098) {
            return OsConstants.SO_RCVBUF;
        }
        throw new UnsupportedOperationException(c.d("Unknown option: ", i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native int read_native(FileDescriptor fileDescriptor);

    /* JADX INFO: Access modifiers changed from: private */
    public native int readba_native(byte[] bArr, int i2, int i3, FileDescriptor fileDescriptor);

    /* JADX INFO: Access modifiers changed from: private */
    public native void write_native(int i2, FileDescriptor fileDescriptor);

    /* JADX INFO: Access modifiers changed from: private */
    public native void writeba_native(byte[] bArr, int i2, int i3, FileDescriptor fileDescriptor);

    public void accept(LocalSocketImpl localSocketImpl) throws IOException {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor == null) {
            throw new IOException("socket not created");
        }
        try {
            localSocketImpl.fd = Os.accept(fileDescriptor, null);
            localSocketImpl.mFdCreatedInternally = true;
        } catch (ErrnoException e2) {
            throw e2.rethrowAsIOException();
        }
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
            FileDescriptor fileDescriptor = this.fd;
            if (fileDescriptor == null || !this.mFdCreatedInternally) {
                this.fd = null;
                return;
            }
            try {
                Os.close(fileDescriptor);
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

    public void create(int i2) throws IOException {
        int i3;
        if (this.fd != null) {
            throw new IOException("LocalSocketImpl already has an fd");
        }
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
            this.fd = Os.socket(OsConstants.AF_UNIX, i3, 0);
            this.mFdCreatedInternally = true;
        } catch (ErrnoException e2) {
            e2.rethrowAsIOException();
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
        try {
            if (i2 == 1) {
                return Integer.valueOf(Os.getsockoptInt(fileDescriptor, OsConstants.IPPROTO_TCP, OsConstants.TCP_NODELAY));
            }
            if (i2 != 4) {
                if (i2 == 128) {
                    StructLinger structLinger = Os.getsockoptLinger(fileDescriptor, OsConstants.SOL_SOCKET, OsConstants.SO_LINGER);
                    if (structLinger.isOn()) {
                        return Integer.valueOf(structLinger.l_linger);
                    }
                    return -1;
                }
                if (i2 == 4102) {
                    return Integer.valueOf((int) Os.getsockoptTimeval(fileDescriptor, OsConstants.SOL_SOCKET, OsConstants.SO_SNDTIMEO).toMillis());
                }
                if (i2 != 4097 && i2 != 4098) {
                    throw new IOException("Unknown option: " + i2);
                }
            }
            return Integer.valueOf(Os.getsockoptInt(this.fd, OsConstants.SOL_SOCKET, javaSoToOsOpt(i2)));
        } catch (ErrnoException e2) {
            throw e2.rethrowAsIOException();
        }
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
        try {
            Os.listen(fileDescriptor, i2);
        } catch (ErrnoException e2) {
            throw e2.rethrowAsIOException();
        }
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
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
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
        try {
            if (i2 == 1) {
                Os.setsockoptInt(this.fd, OsConstants.IPPROTO_TCP, OsConstants.TCP_NODELAY, iIntValue);
                return;
            }
            if (i2 != 4) {
                if (i2 == 128) {
                    Os.setsockoptLinger(this.fd, OsConstants.SOL_SOCKET, OsConstants.SO_LINGER, new StructLinger((int) r1, iIntValue));
                    return;
                } else if (i2 == 4102) {
                    StructTimeval structTimevalFromMillis = StructTimeval.fromMillis(iIntValue);
                    Os.setsockoptTimeval(this.fd, OsConstants.SOL_SOCKET, OsConstants.SO_RCVTIMEO, structTimevalFromMillis);
                    Os.setsockoptTimeval(this.fd, OsConstants.SOL_SOCKET, OsConstants.SO_SNDTIMEO, structTimevalFromMillis);
                    return;
                } else if (i2 != 4097 && i2 != 4098) {
                    throw new IOException("Unknown option: " + i2);
                }
            }
            Os.setsockoptInt(this.fd, OsConstants.SOL_SOCKET, javaSoToOsOpt(i2), iIntValue);
        } catch (ErrnoException e2) {
            throw e2.rethrowAsIOException();
        }
    }

    public void shutdownInput() throws IOException {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor == null) {
            throw new IOException("socket not created");
        }
        try {
            Os.shutdown(fileDescriptor, OsConstants.SHUT_RD);
        } catch (ErrnoException e2) {
            throw e2.rethrowAsIOException();
        }
    }

    public void shutdownOutput() throws IOException {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor == null) {
            throw new IOException("socket not created");
        }
        try {
            Os.shutdown(fileDescriptor, OsConstants.SHUT_WR);
        } catch (ErrnoException e2) {
            throw e2.rethrowAsIOException();
        }
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
        public int available() throws IOException {
            FileDescriptor fileDescriptor = LocalSocketImpl.this.fd;
            if (fileDescriptor == null) {
                throw new IOException("socket closed");
            }
            MutableInt mutableInt = new MutableInt(0);
            try {
                Os.ioctlInt(fileDescriptor, OsConstants.FIONREAD, mutableInt);
                return mutableInt.value;
            } catch (ErrnoException e2) {
                throw e2.rethrowAsIOException();
            }
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
