package f;

import com.google.android.projection.transport.ServerSocketProvider;
import java.io.IOException;
import java.net.ServerSocket;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements ServerSocketProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ServerSocket f816a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f817b;

    public e(k kVar) {
        this.f817b = kVar;
    }

    @Override // com.google.android.projection.transport.ServerSocketProvider
    public final ServerSocket getServerSocket() {
        if (this.f816a == null) {
            try {
                ServerSocket serverSocket = new ServerSocket(this.f817b.f829f.getListenTcpPort());
                this.f816a = serverSocket;
                serverSocket.setReuseAddress(true);
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        return this.f816a;
    }

    @Override // com.google.android.projection.transport.ServerSocketProvider
    public final void invalidateSocket() {
        ServerSocket serverSocket = this.f816a;
        if (serverSocket != null) {
            try {
                try {
                    serverSocket.close();
                    this.f816a = null;
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (Throwable th) {
                this.f816a = null;
                throw th;
            }
        }
    }
}
