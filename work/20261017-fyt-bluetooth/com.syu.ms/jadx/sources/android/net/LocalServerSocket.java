package android.net;

import java.io.FileDescriptor;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class LocalServerSocket {
    private static final int LISTEN_BACKLOG = 50;
    private final LocalSocketImpl impl;
    private final LocalSocketAddress localAddress;

    public LocalServerSocket(String str) throws IOException {
        LocalSocketImpl localSocketImpl = new LocalSocketImpl();
        this.impl = localSocketImpl;
        localSocketImpl.create(2);
        LocalSocketAddress localSocketAddress = new LocalSocketAddress(str);
        this.localAddress = localSocketAddress;
        localSocketImpl.bind(localSocketAddress);
        localSocketImpl.listen(50);
    }

    public LocalSocket accept() throws IOException {
        LocalSocketImpl localSocketImpl = new LocalSocketImpl();
        this.impl.accept(localSocketImpl);
        return new LocalSocket(localSocketImpl, 0);
    }

    public void close() {
        this.impl.close();
    }

    public FileDescriptor getFileDescriptor() {
        return this.impl.getFileDescriptor();
    }

    public LocalSocketAddress getLocalSocketAddress() {
        return this.localAddress;
    }

    public LocalServerSocket(FileDescriptor fileDescriptor) throws IOException {
        LocalSocketImpl localSocketImpl = new LocalSocketImpl(fileDescriptor);
        this.impl = localSocketImpl;
        localSocketImpl.listen(50);
        this.localAddress = localSocketImpl.getSockAddress();
    }
}
