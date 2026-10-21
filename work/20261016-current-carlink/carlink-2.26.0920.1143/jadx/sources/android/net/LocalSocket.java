package android.net;

import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class LocalSocket implements Closeable {
    public static final int SOCKET_DGRAM = 1;
    public static final int SOCKET_SEQPACKET = 3;
    public static final int SOCKET_STREAM = 2;
    static final int SOCKET_UNKNOWN = 0;
    private final LocalSocketImpl impl;
    private volatile boolean implCreated;
    private boolean isBound;
    private boolean isConnected;
    private LocalSocketAddress localAddress;
    private final int sockType;

    public LocalSocket() {
        this(2);
    }

    public static LocalSocket createConnectedLocalSocket(FileDescriptor fileDescriptor) {
        return createConnectedLocalSocket(new LocalSocketImpl(fileDescriptor), 0);
    }

    public static LocalSocket createLocalSocketForAccept(LocalSocketImpl localSocketImpl) {
        return createConnectedLocalSocket(localSocketImpl, 0);
    }

    private void implCreateIfNeeded() {
        if (this.implCreated) {
            return;
        }
        synchronized (this) {
            if (!this.implCreated) {
                try {
                    this.impl.create(this.sockType);
                    this.implCreated = true;
                } catch (Throwable th) {
                    this.implCreated = true;
                    throw th;
                }
            }
        }
    }

    public void bind(LocalSocketAddress localSocketAddress) {
        implCreateIfNeeded();
        synchronized (this) {
            if (this.isBound) {
                throw new IOException("already bound");
            }
            this.localAddress = localSocketAddress;
            this.impl.bind(localSocketAddress);
            this.isBound = true;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        implCreateIfNeeded();
        this.impl.close();
    }

    public void connect(LocalSocketAddress localSocketAddress) {
        synchronized (this) {
            if (this.isConnected) {
                throw new IOException("already connected");
            }
            implCreateIfNeeded();
            this.impl.connect(localSocketAddress, 0);
            this.isConnected = true;
            this.isBound = true;
        }
    }

    public FileDescriptor[] getAncillaryFileDescriptors() {
        return this.impl.getAncillaryFileDescriptors();
    }

    public FileDescriptor getFileDescriptor() {
        return this.impl.getFileDescriptor();
    }

    public InputStream getInputStream() {
        implCreateIfNeeded();
        return this.impl.getInputStream();
    }

    public LocalSocketAddress getLocalSocketAddress() {
        return this.localAddress;
    }

    public OutputStream getOutputStream() {
        implCreateIfNeeded();
        return this.impl.getOutputStream();
    }

    public Credentials getPeerCredentials() {
        return this.impl.getPeerCredentials();
    }

    public int getReceiveBufferSize() {
        return ((Integer) this.impl.getOption(4098)).intValue();
    }

    public LocalSocketAddress getRemoteSocketAddress() {
        throw new UnsupportedOperationException();
    }

    public int getSendBufferSize() {
        return ((Integer) this.impl.getOption(4097)).intValue();
    }

    public int getSoTimeout() {
        return ((Integer) this.impl.getOption(4102)).intValue();
    }

    public synchronized boolean isBound() {
        return this.isBound;
    }

    public boolean isClosed() {
        throw new UnsupportedOperationException();
    }

    public synchronized boolean isConnected() {
        return this.isConnected;
    }

    public boolean isInputShutdown() {
        throw new UnsupportedOperationException();
    }

    public boolean isOutputShutdown() {
        throw new UnsupportedOperationException();
    }

    public void setFileDescriptorsForSend(FileDescriptor[] fileDescriptorArr) {
        this.impl.setFileDescriptorsForSend(fileDescriptorArr);
    }

    public void setReceiveBufferSize(int i2) throws IOException {
        this.impl.setOption(4098, Integer.valueOf(i2));
    }

    public void setSendBufferSize(int i2) throws IOException {
        this.impl.setOption(4097, Integer.valueOf(i2));
    }

    public void setSoTimeout(int i2) throws IOException {
        this.impl.setOption(4102, Integer.valueOf(i2));
    }

    public void shutdownInput() throws IOException {
        implCreateIfNeeded();
        this.impl.shutdownInput();
    }

    public void shutdownOutput() throws IOException {
        implCreateIfNeeded();
        this.impl.shutdownOutput();
    }

    public String toString() {
        return super.toString() + " impl:" + this.impl;
    }

    public LocalSocket(int i2) {
        this(new LocalSocketImpl(), i2);
    }

    private static LocalSocket createConnectedLocalSocket(LocalSocketImpl localSocketImpl, int i2) {
        LocalSocket localSocket = new LocalSocket(localSocketImpl, i2);
        localSocket.isConnected = true;
        localSocket.isBound = true;
        localSocket.implCreated = true;
        return localSocket;
    }

    private LocalSocket(LocalSocketImpl localSocketImpl, int i2) {
        this.impl = localSocketImpl;
        this.sockType = i2;
        this.isConnected = false;
        this.isBound = false;
    }

    public void connect(LocalSocketAddress localSocketAddress, int i2) {
        throw new UnsupportedOperationException();
    }
}
