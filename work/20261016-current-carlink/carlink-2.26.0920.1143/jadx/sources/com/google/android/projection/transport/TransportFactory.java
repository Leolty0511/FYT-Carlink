package com.google.android.projection.transport;

import android.content.Context;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.projection.logging.Log;
import com.google.android.projection.protocol.Transport;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class TransportFactory {
    static final FactoryHandle DO_NOTHING_HANDLE = new FactoryHandle() { // from class: com.google.android.projection.transport.TransportFactory.1
        @Override // com.google.android.projection.transport.TransportFactory.FactoryHandle
        public void interrupt() {
        }
    };
    private static final int READ_TIMEOUT_IN_MILLIS = 10000;
    private static final int RECEIVE_SOCKET_BUFFER_SIZE = 65536;
    private static final String TAG = "AHU.TRANSPORT_FACTORY";
    private static final boolean TCP_NO_DELAY_ON = true;
    private List<TransportFactoryDelegate> delegates;
    private boolean mIsInitialized;

    public static class Builder {
        private TcpConnectionSocketOptions mConnectionSocketOptions = new TcpConnectionSocketOptions();
        private Context mContext;
        private ServerSocketProvider mServerSocketProvider;

        public TransportFactory build() {
            if (this.mContext == null) {
                throw new IllegalArgumentException("Context was not provided");
            }
            TransportFactory transportFactory = new TransportFactory();
            if (this.mServerSocketProvider != null) {
                transportFactory.delegates = Arrays.asList(new UsbHostDelegate(this.mContext), new UsbAccessoryDelegate(this.mContext), new TcpDelegate(this.mServerSocketProvider, this.mConnectionSocketOptions));
            } else {
                transportFactory.delegates = Arrays.asList(new UsbHostDelegate(this.mContext), new UsbAccessoryDelegate(this.mContext));
            }
            return transportFactory;
        }

        @CanIgnoreReturnValue
        public Builder setContext(Context context) {
            this.mContext = context;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setServerSocketProvider(ServerSocketProvider serverSocketProvider) {
            this.mServerSocketProvider = serverSocketProvider;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setTcpConnectionSocketOptions(TcpConnectionSocketOptions tcpConnectionSocketOptions) {
            this.mConnectionSocketOptions = tcpConnectionSocketOptions;
            return this;
        }
    }

    public interface Callback {
        void onConnected(Transport transport);

        void onDisconnected();
    }

    public interface FactoryHandle {
        void interrupt();
    }

    public static class TcpConnectionSocketOptions {
        public int readTimeoutInMillis = 10000;
        public int readSocketBufferSize = 65536;
        public boolean enableSendNoDelay = true;
    }

    public interface TransportFactoryDelegate {
        void shutdown();

        @Nullable
        FactoryHandle tryOpen(Parcelable parcelable, Callback callback);
    }

    public static Builder builder() {
        return new Builder();
    }

    @Nullable
    public FactoryHandle open(Parcelable parcelable, Callback callback) {
        Log.d("AHU.TRANSPORT_FACTORY", "Starting...");
        Iterator<TransportFactoryDelegate> it = this.delegates.iterator();
        while (it.hasNext()) {
            FactoryHandle factoryHandleTryOpen = it.next().tryOpen(parcelable, callback);
            if (factoryHandleTryOpen != null) {
                Log.d("AHU.TRANSPORT_FACTORY", "Start sequence finished.");
                return factoryHandleTryOpen;
            }
        }
        Log.w("AHU.TRANSPORT_FACTORY", "Unable to handle " + parcelable);
        return null;
    }

    public void shutdown() {
        if (this.mIsInitialized) {
            Log.d("AHU.TRANSPORT_FACTORY", "Shutting down...");
            this.mIsInitialized = false;
            Iterator<TransportFactoryDelegate> it = this.delegates.iterator();
            while (it.hasNext()) {
                it.next().shutdown();
            }
            Log.d("AHU.TRANSPORT_FACTORY", "Shutdown completed.");
        }
    }

    public void shutdownTcpDelegate() {
        for (TransportFactoryDelegate transportFactoryDelegate : this.delegates) {
            if (transportFactoryDelegate instanceof TcpDelegate) {
                transportFactoryDelegate.shutdown();
            }
        }
    }

    private TransportFactory() {
        this.mIsInitialized = true;
    }
}
