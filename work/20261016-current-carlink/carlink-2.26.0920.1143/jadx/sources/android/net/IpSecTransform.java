package android.net;

import android.accessibilityservice.c;
import android.app.m;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.android.internal.util.Preconditions;
import dalvik.system.CloseGuard;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
public final class IpSecTransform implements AutoCloseable {
    public static final int DIRECTION_IN = 0;
    public static final int DIRECTION_OUT = 1;
    public static final int ENCAP_ESPINUDP = 2;
    public static final int ENCAP_ESPINUDP_NON_IKE = 1;
    public static final int ENCAP_NONE = 0;
    private static final int MODE_TRANSPORT = 1;
    private static final int MODE_TUNNEL = 0;
    private static final String TAG = "IpSecTransform";
    private final CloseGuard mCloseGuard;
    private final IpSecConfig mConfig;
    private final Context mContext;
    private ConnectivityManager.PacketKeepalive mKeepalive;
    private ConnectivityManager.PacketKeepaliveCallback mKeepaliveCallback;
    private int mKeepaliveStatus;
    private Object mKeepaliveSyncLock;
    private int mResourceId;

    public static class Builder {
        private IpSecConfig mConfig;
        private Context mContext;

        public Builder(Context context) {
            Preconditions.checkNotNull(context);
            this.mContext = context;
            this.mConfig = new IpSecConfig();
        }

        public IpSecTransform buildTransportModeTransform(InetAddress inetAddress) {
            IpSecConfig ipSecConfig = this.mConfig;
            ipSecConfig.mode = 1;
            ipSecConfig.remoteAddress = inetAddress;
            return new IpSecTransform(this.mContext, ipSecConfig).activate();
        }

        public IpSecTransform buildTunnelModeTransform(InetAddress inetAddress, InetAddress inetAddress2) {
            IpSecConfig ipSecConfig = this.mConfig;
            ipSecConfig.localAddress = inetAddress;
            ipSecConfig.remoteAddress = inetAddress2;
            ipSecConfig.mode = 0;
            return new IpSecTransform(this.mContext, ipSecConfig);
        }

        public Builder setAuthentication(int i2, IpSecAlgorithm ipSecAlgorithm) {
            this.mConfig.flow[i2].authentication = ipSecAlgorithm;
            return this;
        }

        public Builder setEncryption(int i2, IpSecAlgorithm ipSecAlgorithm) {
            this.mConfig.flow[i2].encryption = ipSecAlgorithm;
            return this;
        }

        public Builder setIpv4Encapsulation(IpSecManager.UdpEncapsulationSocket udpEncapsulationSocket, int i2) {
            IpSecConfig ipSecConfig = this.mConfig;
            ipSecConfig.encapType = 2;
            ipSecConfig.encapLocalPortResourceId = udpEncapsulationSocket.getResourceId();
            this.mConfig.encapRemotePort = i2;
            return this;
        }

        public Builder setNattKeepalive(int i2) {
            this.mConfig.nattKeepaliveInterval = i2;
            return this;
        }

        public Builder setSpi(int i2, IpSecManager.SecurityParameterIndex securityParameterIndex) {
            this.mConfig.flow[i2].spiResourceId = securityParameterIndex.getResourceId();
            return this;
        }

        public Builder setUnderlyingNetwork(Network network) {
            this.mConfig.network = network;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface EncapType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TransformDirection {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IpSecTransform activate() {
        synchronized (this) {
            try {
                try {
                    IpSecTransformResponse ipSecTransformResponseCreateTransportModeTransform = getIpSecService().createTransportModeTransform(this.mConfig, new Binder());
                    checkResultStatusAndThrow(ipSecTransformResponseCreateTransportModeTransform.status);
                    this.mResourceId = ipSecTransformResponseCreateTransportModeTransform.resourceId;
                    startKeepalive(this.mContext);
                    Log.d(TAG, "Added Transform with Id " + this.mResourceId);
                    this.mCloseGuard.open("build");
                } catch (RemoteException e2) {
                    throw e2.rethrowAsRuntimeException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    private void checkResultStatusAndThrow(int i2) throws IpSecManager.ResourceUnavailableException {
        if (i2 != 0) {
            if (i2 == 1) {
                throw new IpSecManager.ResourceUnavailableException("Failed to allocate a new IpSecTransform");
            }
            if (i2 == 2) {
                Log.wtf(TAG, "Attempting to use an SPI that was somehow not reserved");
            }
            throw new IllegalStateException(c.d("Failed to Create a Transform with status code ", i2));
        }
    }

    private IIpSecService getIpSecService() {
        IBinder service = ServiceManager.getService(Context.IPSEC_SERVICE);
        if (service != null) {
            return IIpSecService.Stub.asInterface(service);
        }
        throw new RemoteException("Failed to connect to IpSecService").rethrowAsRuntimeException();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        m.t(new StringBuilder("Removing Transform with Id "), this.mResourceId, TAG);
        if (this.mResourceId == 0) {
            this.mCloseGuard.close();
            return;
        }
        try {
            try {
                getIpSecService().deleteTransportModeTransform(this.mResourceId);
                stopKeepalive();
                this.mResourceId = 0;
                this.mCloseGuard.close();
            } catch (RemoteException e2) {
                throw e2.rethrowAsRuntimeException();
            }
        } catch (Throwable th) {
            this.mResourceId = 0;
            this.mCloseGuard.close();
            throw th;
        }
    }

    public void finalize() {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            closeGuard.warnIfOpen();
        }
        close();
    }

    public IpSecConfig getConfig() {
        return this.mConfig;
    }

    public int getResourceId() {
        return this.mResourceId;
    }

    public void startKeepalive(Context context) {
        if (this.mConfig.getNattKeepaliveInterval() == 0) {
            return;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (this.mKeepalive != null) {
            Log.wtf(TAG, "Keepalive already started for this IpSecTransform.");
            return;
        }
        synchronized (this.mKeepaliveSyncLock) {
            this.mKeepalive = connectivityManager.startNattKeepalive(this.mConfig.getNetwork(), this.mConfig.getNattKeepaliveInterval(), this.mKeepaliveCallback, this.mConfig.getLocalAddress(), 4660, this.mConfig.getRemoteAddress());
            try {
                this.mKeepaliveSyncLock.wait(2000L);
            } catch (InterruptedException unused) {
            }
        }
        if (this.mKeepaliveStatus != 0) {
            throw new UnsupportedOperationException("Packet Keepalive cannot be started");
        }
    }

    public void stopKeepalive() {
        ConnectivityManager.PacketKeepalive packetKeepalive = this.mKeepalive;
        if (packetKeepalive == null) {
            return;
        }
        packetKeepalive.stop();
        synchronized (this.mKeepaliveSyncLock) {
            if (this.mKeepaliveStatus == 0) {
                try {
                    this.mKeepaliveSyncLock.wait(2000L);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    private IpSecTransform(Context context, IpSecConfig ipSecConfig) {
        this.mCloseGuard = CloseGuard.get();
        this.mKeepaliveStatus = -1;
        this.mKeepaliveSyncLock = new Object();
        this.mKeepaliveCallback = new ConnectivityManager.PacketKeepaliveCallback() { // from class: android.net.IpSecTransform.1
            @Override // android.net.ConnectivityManager.PacketKeepaliveCallback
            public void onError(int i2) {
                synchronized (IpSecTransform.this.mKeepaliveSyncLock) {
                    IpSecTransform.this.mKeepaliveStatus = i2;
                    IpSecTransform.this.mKeepaliveSyncLock.notifyAll();
                }
            }

            @Override // android.net.ConnectivityManager.PacketKeepaliveCallback
            public void onStarted() {
                synchronized (IpSecTransform.this.mKeepaliveSyncLock) {
                    IpSecTransform.this.mKeepaliveStatus = 0;
                    IpSecTransform.this.mKeepaliveSyncLock.notifyAll();
                }
            }

            @Override // android.net.ConnectivityManager.PacketKeepaliveCallback
            public void onStopped() {
                synchronized (IpSecTransform.this.mKeepaliveSyncLock) {
                    IpSecTransform.this.mKeepaliveStatus = -1;
                    IpSecTransform.this.mKeepaliveSyncLock.notifyAll();
                }
            }
        };
        this.mContext = context;
        this.mConfig = ipSecConfig;
        this.mResourceId = 0;
    }
}
