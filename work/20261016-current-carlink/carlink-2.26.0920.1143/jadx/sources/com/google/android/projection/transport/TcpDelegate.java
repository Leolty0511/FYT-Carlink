package com.google.android.projection.transport;

import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.projection.logging.Log;
import com.google.android.projection.transport.net.TcpTransport;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
class TcpDelegate implements TransportFactory.TransportFactoryDelegate {
    private static final int SOCKET_ACCEPT_TIMEOUT_MILLIS = 3000;
    private static final String TAG = "AHU.TCP_CONNECTION";
    private final TransportFactory.TcpConnectionSocketOptions mConnectionSocketOptions;

    @Nullable
    private ServerSocket mServerSocket;
    private final ServerSocketProvider mServerSocketProvider;
    private boolean threadRunning = true;

    public TcpDelegate(ServerSocketProvider serverSocketProvider, TransportFactory.TcpConnectionSocketOptions tcpConnectionSocketOptions) {
        this.mServerSocketProvider = serverSocketProvider;
        this.mConnectionSocketOptions = tcpConnectionSocketOptions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applySocketOptions(Socket socket) throws SocketException {
        if (this.mConnectionSocketOptions.readTimeoutInMillis > 0) {
            Log.d("AHU.TCP_CONNECTION", "Set read timeout " + this.mConnectionSocketOptions.readTimeoutInMillis);
            socket.setSoTimeout(this.mConnectionSocketOptions.readTimeoutInMillis);
        }
        if (this.mConnectionSocketOptions.readSocketBufferSize > 0) {
            Log.d("AHU.TCP_CONNECTION", "Set receive buffer size " + this.mConnectionSocketOptions.readSocketBufferSize);
            socket.setReceiveBufferSize(this.mConnectionSocketOptions.readSocketBufferSize);
        }
        if (this.mConnectionSocketOptions.enableSendNoDelay) {
            Log.d("AHU.TCP_CONNECTION", "Enable tcp no delay");
            socket.setTcpNoDelay(this.mConnectionSocketOptions.enableSendNoDelay);
        }
    }

    @Override // com.google.android.projection.transport.TransportFactory.TransportFactoryDelegate
    public void shutdown() {
        this.mServerSocket = null;
    }

    @Override // com.google.android.projection.transport.TransportFactory.TransportFactoryDelegate
    @Nullable
    public TransportFactory.FactoryHandle tryOpen(Parcelable parcelable, final TransportFactory.Callback callback) throws SocketException {
        if (parcelable != null) {
            return null;
        }
        if (this.mServerSocket == null) {
            ServerSocket serverSocket = this.mServerSocketProvider.getServerSocket();
            this.mServerSocket = serverSocket;
            serverSocket.setSoTimeout(3000);
        }
        this.threadRunning = true;
        final Thread thread = new Thread("TCP server") { // from class: com.google.android.projection.transport.TcpDelegate.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Log.i("AHU.TCP_CONNECTION", "Listening on: " + TcpDelegate.this.mServerSocket);
                while (TcpDelegate.this.threadRunning) {
                    try {
                        ServerSocket serverSocket2 = TcpDelegate.this.mServerSocket;
                        Objects.requireNonNull(serverSocket2);
                        Socket socketAccept = serverSocket2.accept();
                        TcpDelegate.this.applySocketOptions(socketAccept);
                        callback.onConnected(new TcpTransport(socketAccept));
                        return;
                    } catch (SocketTimeoutException unused) {
                        if (isInterrupted()) {
                            break;
                        } else {
                            Log.d("AHU.TCP_CONNECTION", "Socket accept timed out; retrying");
                        }
                    } catch (IOException e2) {
                        if (!isInterrupted()) {
                            Log.e("AHU.TCP_CONNECTION", "Can't listen to socket: " + e2);
                        }
                    }
                }
                callback.onDisconnected();
            }
        };
        thread.start();
        return new TransportFactory.FactoryHandle() { // from class: com.google.android.projection.transport.TcpDelegate.2
            @Override // com.google.android.projection.transport.TransportFactory.FactoryHandle
            public void interrupt() throws InterruptedException {
                TcpDelegate.this.threadRunning = false;
                thread.interrupt();
                thread.join(500L);
            }
        };
    }
}
