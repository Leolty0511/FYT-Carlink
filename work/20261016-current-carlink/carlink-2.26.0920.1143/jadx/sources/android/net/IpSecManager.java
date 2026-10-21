package android.net;

import android.app.m;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.AndroidException;
import com.android.internal.util.Preconditions;
import dalvik.system.CloseGuard;
import java.io.FileDescriptor;
import java.io.IOException;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.Socket;

/* JADX INFO: loaded from: classes.dex */
public final class IpSecManager {
    public static final int INVALID_RESOURCE_ID = 0;
    public static final int INVALID_SECURITY_PARAMETER_INDEX = 0;
    private static final String TAG = "IpSecManager";
    private final IIpSecService mService;

    public static final class ResourceUnavailableException extends AndroidException {
        public ResourceUnavailableException(String str) {
            super(str);
        }
    }

    public static final class SecurityParameterIndex implements AutoCloseable {
        private final CloseGuard mCloseGuard;
        private final InetAddress mRemoteAddress;
        private int mResourceId;
        private final IIpSecService mService;
        private int mSpi;

        @Override // java.lang.AutoCloseable
        public void close() {
            try {
                this.mService.releaseSecurityParameterIndex(this.mResourceId);
                this.mCloseGuard.close();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public void finalize() {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            close();
        }

        public int getResourceId() {
            return this.mResourceId;
        }

        public int getSpi() {
            return this.mSpi;
        }

        private SecurityParameterIndex(IIpSecService iIpSecService, int i2, InetAddress inetAddress, int i3) throws ResourceUnavailableException, SpiUnavailableException {
            CloseGuard closeGuard = CloseGuard.get();
            this.mCloseGuard = closeGuard;
            this.mSpi = 0;
            this.mService = iIpSecService;
            this.mRemoteAddress = inetAddress;
            try {
                IpSecSpiResponse ipSecSpiResponseReserveSecurityParameterIndex = iIpSecService.reserveSecurityParameterIndex(i2, inetAddress.getHostAddress(), i3, new Binder());
                if (ipSecSpiResponseReserveSecurityParameterIndex == null) {
                    throw new NullPointerException("Received null response from IpSecService");
                }
                int i4 = ipSecSpiResponseReserveSecurityParameterIndex.status;
                if (i4 != 0) {
                    if (i4 == 1) {
                        throw new ResourceUnavailableException("No more SPIs may be allocated by this requester.");
                    }
                    if (i4 == 2) {
                        throw new SpiUnavailableException("Requested SPI is unavailable", i3);
                    }
                    throw new RuntimeException("Unknown status returned by IpSecService: " + i4);
                }
                int i5 = ipSecSpiResponseReserveSecurityParameterIndex.spi;
                this.mSpi = i5;
                int i6 = ipSecSpiResponseReserveSecurityParameterIndex.resourceId;
                this.mResourceId = i6;
                if (i5 == 0) {
                    throw new RuntimeException("Invalid SPI returned by IpSecService: " + i4);
                }
                if (i6 != 0) {
                    closeGuard.open("open");
                } else {
                    throw new RuntimeException("Invalid Resource ID returned by IpSecService: " + i4);
                }
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public static final class SpiUnavailableException extends AndroidException {
        private final int mSpi;

        public SpiUnavailableException(String str, int i2) {
            super(str + "(spi: " + i2 + ")");
            this.mSpi = i2;
        }

        public int getSpi() {
            return this.mSpi;
        }
    }

    public interface Status {
        public static final int OK = 0;
        public static final int RESOURCE_UNAVAILABLE = 1;
        public static final int SPI_UNAVAILABLE = 2;
    }

    public static final class UdpEncapsulationSocket implements AutoCloseable {
        private final CloseGuard mCloseGuard;
        private final ParcelFileDescriptor mPfd;
        private final int mPort;
        private final int mResourceId;
        private final IIpSecService mService;

        @Override // java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.mService.closeUdpEncapsulationSocket(this.mResourceId);
                try {
                    this.mPfd.close();
                    this.mCloseGuard.close();
                } catch (IOException e2) {
                    m.C(new StringBuilder("Failed to close UDP Encapsulation Socket with Port= "), this.mPort, IpSecManager.TAG);
                    throw e2;
                }
            } catch (RemoteException e3) {
                throw e3.rethrowFromSystemServer();
            }
        }

        public void finalize() throws IOException {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            close();
        }

        public int getPort() {
            return this.mPort;
        }

        public int getResourceId() {
            return this.mResourceId;
        }

        public FileDescriptor getSocket() {
            ParcelFileDescriptor parcelFileDescriptor = this.mPfd;
            if (parcelFileDescriptor == null) {
                return null;
            }
            return parcelFileDescriptor.getFileDescriptor();
        }

        private UdpEncapsulationSocket(IIpSecService iIpSecService, int i2) throws ResourceUnavailableException {
            CloseGuard closeGuard = CloseGuard.get();
            this.mCloseGuard = closeGuard;
            this.mService = iIpSecService;
            try {
                IpSecUdpEncapResponse ipSecUdpEncapResponseOpenUdpEncapsulationSocket = iIpSecService.openUdpEncapsulationSocket(i2, new Binder());
                int i3 = ipSecUdpEncapResponseOpenUdpEncapsulationSocket.status;
                if (i3 != 0) {
                    if (i3 == 1) {
                        throw new ResourceUnavailableException("No more Sockets may be allocated by this requester.");
                    }
                    throw new RuntimeException("Unknown status returned by IpSecService: " + ipSecUdpEncapResponseOpenUdpEncapsulationSocket.status);
                }
                this.mResourceId = ipSecUdpEncapResponseOpenUdpEncapsulationSocket.resourceId;
                this.mPort = ipSecUdpEncapResponseOpenUdpEncapsulationSocket.port;
                this.mPfd = ipSecUdpEncapResponseOpenUdpEncapsulationSocket.fileDescriptor;
                closeGuard.open("constructor");
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public IpSecManager(IIpSecService iIpSecService) {
        this.mService = (IIpSecService) Preconditions.checkNotNull(iIpSecService, "missing service");
    }

    public void applyTransportModeTransform(Socket socket, IpSecTransform ipSecTransform) {
        ParcelFileDescriptor parcelFileDescriptorFromSocket = ParcelFileDescriptor.fromSocket(socket);
        try {
            applyTransportModeTransform(parcelFileDescriptorFromSocket, ipSecTransform);
            if (parcelFileDescriptorFromSocket != null) {
                parcelFileDescriptorFromSocket.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (parcelFileDescriptorFromSocket != null) {
                    try {
                        parcelFileDescriptorFromSocket.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void applyTunnelModeTransform(Network network, IpSecTransform ipSecTransform) {
    }

    public UdpEncapsulationSocket openUdpEncapsulationSocket(int i2) {
        if (i2 != 0) {
            return new UdpEncapsulationSocket(this.mService, i2);
        }
        throw new IllegalArgumentException("Specified port must be a valid port number!");
    }

    public void removeTransportModeTransform(Socket socket, IpSecTransform ipSecTransform) {
        ParcelFileDescriptor parcelFileDescriptorFromSocket = ParcelFileDescriptor.fromSocket(socket);
        try {
            removeTransportModeTransform(parcelFileDescriptorFromSocket, ipSecTransform);
            if (parcelFileDescriptorFromSocket != null) {
                parcelFileDescriptorFromSocket.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (parcelFileDescriptorFromSocket != null) {
                    try {
                        parcelFileDescriptorFromSocket.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void removeTunnelModeTransform(Network network, IpSecTransform ipSecTransform) {
    }

    public SecurityParameterIndex reserveSecurityParameterIndex(int i2, InetAddress inetAddress) throws ResourceUnavailableException {
        try {
            return new SecurityParameterIndex(this.mService, i2, inetAddress, 0);
        } catch (SpiUnavailableException unused) {
            throw new ResourceUnavailableException("No SPIs available");
        }
    }

    public UdpEncapsulationSocket openUdpEncapsulationSocket() {
        return new UdpEncapsulationSocket(this.mService, 0);
    }

    public SecurityParameterIndex reserveSecurityParameterIndex(int i2, InetAddress inetAddress, int i3) {
        if (i3 != 0) {
            return new SecurityParameterIndex(this.mService, i2, inetAddress, i3);
        }
        throw new IllegalArgumentException("Requested SPI must be a valid (non-zero) SPI");
    }

    public void applyTransportModeTransform(DatagramSocket datagramSocket, IpSecTransform ipSecTransform) {
        ParcelFileDescriptor parcelFileDescriptorFromDatagramSocket = ParcelFileDescriptor.fromDatagramSocket(datagramSocket);
        try {
            applyTransportModeTransform(parcelFileDescriptorFromDatagramSocket, ipSecTransform);
            if (parcelFileDescriptorFromDatagramSocket != null) {
                parcelFileDescriptorFromDatagramSocket.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (parcelFileDescriptorFromDatagramSocket != null) {
                    try {
                        parcelFileDescriptorFromDatagramSocket.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void removeTransportModeTransform(DatagramSocket datagramSocket, IpSecTransform ipSecTransform) {
        ParcelFileDescriptor parcelFileDescriptorFromDatagramSocket = ParcelFileDescriptor.fromDatagramSocket(datagramSocket);
        try {
            removeTransportModeTransform(parcelFileDescriptorFromDatagramSocket, ipSecTransform);
            if (parcelFileDescriptorFromDatagramSocket != null) {
                parcelFileDescriptorFromDatagramSocket.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (parcelFileDescriptorFromDatagramSocket != null) {
                    try {
                        parcelFileDescriptorFromDatagramSocket.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void applyTransportModeTransform(FileDescriptor fileDescriptor, IpSecTransform ipSecTransform) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            applyTransportModeTransform(parcelFileDescriptorDup, ipSecTransform);
            if (parcelFileDescriptorDup != null) {
                parcelFileDescriptorDup.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (parcelFileDescriptorDup != null) {
                    try {
                        parcelFileDescriptorDup.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void removeTransportModeTransform(FileDescriptor fileDescriptor, IpSecTransform ipSecTransform) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            removeTransportModeTransform(parcelFileDescriptorDup, ipSecTransform);
            if (parcelFileDescriptorDup != null) {
                parcelFileDescriptorDup.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (parcelFileDescriptorDup != null) {
                    try {
                        parcelFileDescriptorDup.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void applyTransportModeTransform(ParcelFileDescriptor parcelFileDescriptor, IpSecTransform ipSecTransform) {
        try {
            this.mService.applyTransportModeTransform(parcelFileDescriptor, ipSecTransform.getResourceId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private void removeTransportModeTransform(ParcelFileDescriptor parcelFileDescriptor, IpSecTransform ipSecTransform) {
        try {
            this.mService.removeTransportModeTransform(parcelFileDescriptor, ipSecTransform.getResourceId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
