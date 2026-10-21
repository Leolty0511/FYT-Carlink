package android.bluetooth;

import android.accessibilityservice.c;
import android.app.m;
import android.net.LocalSocket;
import android.os.ParcelFileDescriptor;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.util.Log;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothSocket implements Closeable {
    static final int BTSOCK_FLAG_NO_SDP = 4;
    static final int EADDRINUSE = 98;
    static final int EBADFD = 77;
    static final int MAX_L2CAP_PACKAGE_SIZE = 65535;
    public static final int MAX_RFCOMM_CHANNEL = 30;
    static final int SEC_FLAG_AUTH = 2;
    static final int SEC_FLAG_AUTH_16_DIGIT = 16;
    static final int SEC_FLAG_AUTH_MITM = 8;
    static final int SEC_FLAG_ENCRYPT = 1;
    public static final int TYPE_L2CAP = 3;
    public static final int TYPE_RFCOMM = 1;
    public static final int TYPE_SCO = 2;
    private String mAddress;
    private final boolean mAuth;
    private boolean mAuthMitm;
    private BluetoothDevice mDevice;
    private final boolean mEncrypt;
    private boolean mExcludeSdp;
    private int mFd;
    private final BluetoothInputStream mInputStream;
    private ByteBuffer mL2capBuffer;
    private int mMaxRxPacketSize;
    private int mMaxTxPacketSize;
    private boolean mMin16DigitPin;
    private final BluetoothOutputStream mOutputStream;
    private ParcelFileDescriptor mPfd;
    private int mPort;
    private String mServiceName;
    private LocalSocket mSocket;
    private InputStream mSocketIS;
    private OutputStream mSocketOS;
    private volatile SocketState mSocketState;
    private final int mType;
    private final ParcelUuid mUuid;
    private static final String TAG = "BluetoothSocket";
    private static final boolean DBG = Log.isLoggable(TAG, 3);
    private static final boolean VDBG = Log.isLoggable(TAG, 2);
    private static int PROXY_CONNECTION_TIMEOUT = 5000;
    private static int SOCK_SIGNAL_SIZE = 20;

    public enum SocketState {
        INIT,
        CONNECTED,
        LISTENING,
        CLOSED
    }

    public BluetoothSocket(int i2, int i3, boolean z2, boolean z3, BluetoothDevice bluetoothDevice, int i4, ParcelUuid parcelUuid) {
        this(i2, i3, z2, z3, bluetoothDevice, i4, parcelUuid, false, false);
    }

    private BluetoothSocket acceptSocket(String str) throws IOException {
        BluetoothSocket bluetoothSocket = new BluetoothSocket(this);
        bluetoothSocket.mSocketState = SocketState.CONNECTED;
        FileDescriptor[] ancillaryFileDescriptors = this.mSocket.getAncillaryFileDescriptors();
        if (DBG) {
            Log.d(TAG, "socket fd passed by stack fds: " + Arrays.toString(ancillaryFileDescriptors));
        }
        if (ancillaryFileDescriptors == null || ancillaryFileDescriptors.length != 1) {
            Log.e(TAG, "socket fd passed from stack failed, fds: " + Arrays.toString(ancillaryFileDescriptors));
            bluetoothSocket.close();
            throw new IOException("bt socket acept failed");
        }
        bluetoothSocket.mPfd = new ParcelFileDescriptor(ancillaryFileDescriptors[0]);
        LocalSocket localSocketCreateConnectedLocalSocket = LocalSocket.createConnectedLocalSocket(ancillaryFileDescriptors[0]);
        bluetoothSocket.mSocket = localSocketCreateConnectedLocalSocket;
        bluetoothSocket.mSocketIS = localSocketCreateConnectedLocalSocket.getInputStream();
        bluetoothSocket.mSocketOS = bluetoothSocket.mSocket.getOutputStream();
        bluetoothSocket.mAddress = str;
        bluetoothSocket.mDevice = BluetoothAdapter.getDefaultAdapter().getRemoteDevice(str);
        return bluetoothSocket;
    }

    private String convertAddr(byte[] bArr) {
        return String.format(Locale.US, "%02X:%02X:%02X:%02X:%02X:%02X", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3]), Byte.valueOf(bArr[4]), Byte.valueOf(bArr[5]));
    }

    private void createL2capRxBuffer() {
        if (this.mType == 3) {
            boolean z2 = VDBG;
            if (z2) {
                Log.v(TAG, "  Creating mL2capBuffer: mMaxPacketSize: " + this.mMaxRxPacketSize);
            }
            this.mL2capBuffer = ByteBuffer.wrap(new byte[this.mMaxRxPacketSize]);
            if (z2) {
                Log.v(TAG, "mL2capBuffer.remaining()" + this.mL2capBuffer.remaining());
            }
            this.mL2capBuffer.limit(0);
            if (z2) {
                Log.v(TAG, "mL2capBuffer.remaining() after limit(0):" + this.mL2capBuffer.remaining());
            }
        }
    }

    private int fillL2capRxBuffer() throws IOException {
        this.mL2capBuffer.rewind();
        int i2 = this.mSocketIS.read(this.mL2capBuffer.array());
        if (i2 == -1) {
            this.mL2capBuffer.limit(0);
            return -1;
        }
        this.mL2capBuffer.limit(i2);
        return i2;
    }

    private int getSecurityFlags() {
        int i2 = this.mAuth ? 2 : 0;
        if (this.mEncrypt) {
            i2 |= 1;
        }
        if (this.mExcludeSdp) {
            i2 |= 4;
        }
        if (this.mAuthMitm) {
            i2 |= 8;
        }
        return this.mMin16DigitPin ? i2 | 16 : i2;
    }

    private int readAll(InputStream inputStream, byte[] bArr) throws IOException {
        int length = bArr.length;
        while (length > 0) {
            int i2 = inputStream.read(bArr, bArr.length - length, length);
            if (i2 <= 0) {
                throw new IOException(c.d("read failed, socket might closed or timeout, read ret: ", i2));
            }
            length -= i2;
            if (length != 0) {
                StringBuilder sb = new StringBuilder("readAll() looping, read partial size: ");
                sb.append(bArr.length - length);
                sb.append(", expect size: ");
                c.A(sb, bArr.length, TAG);
            }
        }
        return bArr.length;
    }

    private int readInt(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4];
        int all = readAll(inputStream, bArr);
        if (VDBG) {
            Log.d(TAG, "inputStream.read ret: " + all);
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.nativeOrder());
        return byteBufferWrap.getInt();
    }

    private String waitSocketSignal(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[SOCK_SIGNAL_SIZE];
        int all = readAll(inputStream, bArr);
        boolean z2 = VDBG;
        if (z2) {
            Log.d(TAG, "waitSocketSignal read " + SOCK_SIGNAL_SIZE + " bytes signal ret: " + all);
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.nativeOrder());
        short s2 = byteBufferWrap.getShort();
        if (s2 != SOCK_SIGNAL_SIZE) {
            throw new IOException(c.d("Connection failure, wrong signal size: ", s2));
        }
        byte[] bArr2 = new byte[6];
        byteBufferWrap.get(bArr2);
        int i2 = byteBufferWrap.getInt();
        int i3 = byteBufferWrap.getInt();
        this.mMaxTxPacketSize = byteBufferWrap.getShort() & 65535;
        this.mMaxRxPacketSize = byteBufferWrap.getShort() & 65535;
        String strConvertAddr = convertAddr(bArr2);
        if (z2) {
            StringBuilder sb = new StringBuilder("waitSocketSignal: sig size: ");
            sb.append((int) s2);
            sb.append(", remote addr: ");
            sb.append(strConvertAddr);
            sb.append(", channel: ");
            m.u(sb, i2, ", status: ", i3, " MaxRxPktSize: ");
            sb.append(this.mMaxRxPacketSize);
            sb.append(" MaxTxPktSize: ");
            m.t(sb, this.mMaxTxPacketSize, TAG);
        }
        if (i3 == 0) {
            return strConvertAddr;
        }
        throw new IOException(c.d("Connection failure, status: ", i3));
    }

    public BluetoothSocket accept(int i2) throws IOException {
        BluetoothSocket bluetoothSocketAcceptSocket;
        SocketState socketState = this.mSocketState;
        SocketState socketState2 = SocketState.LISTENING;
        if (socketState != socketState2) {
            throw new IOException("bt socket is not in listen state");
        }
        if (i2 > 0) {
            Log.d(TAG, "accept() set timeout (ms):" + i2);
            this.mSocket.setSoTimeout(i2);
        }
        String strWaitSocketSignal = waitSocketSignal(this.mSocketIS);
        if (i2 > 0) {
            this.mSocket.setSoTimeout(0);
        }
        synchronized (this) {
            if (this.mSocketState != socketState2) {
                throw new IOException("bt socket is not in listen state");
            }
            bluetoothSocketAcceptSocket = acceptSocket(strWaitSocketSignal);
        }
        return bluetoothSocketAcceptSocket;
    }

    public int available() {
        if (VDBG) {
            Log.d(TAG, "available: " + this.mSocketIS);
        }
        return this.mSocketIS.available();
    }

    public int bindListen() {
        if (this.mSocketState == SocketState.CLOSED) {
            return 77;
        }
        IBluetooth bluetoothService = BluetoothAdapter.getDefaultAdapter().getBluetoothService(null);
        if (bluetoothService == null) {
            Log.e(TAG, "bindListen fail, reason: bluetooth is off");
            return -1;
        }
        try {
            this.mPfd = bluetoothService.createSocketChannel(this.mType, this.mServiceName, this.mUuid, this.mPort, getSecurityFlags());
            try {
                synchronized (this) {
                    boolean z2 = DBG;
                    if (z2) {
                        Log.d(TAG, "bindListen(), SocketState: " + this.mSocketState + ", mPfd: " + this.mPfd);
                    }
                    SocketState socketState = this.mSocketState;
                    SocketState socketState2 = SocketState.INIT;
                    if (socketState != socketState2) {
                        return 77;
                    }
                    ParcelFileDescriptor parcelFileDescriptor = this.mPfd;
                    if (parcelFileDescriptor == null) {
                        return -1;
                    }
                    FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
                    if (fileDescriptor == null) {
                        Log.e(TAG, "bindListen(), null file descriptor");
                        return -1;
                    }
                    if (z2) {
                        Log.d(TAG, "bindListen(), Create LocalSocket");
                    }
                    this.mSocket = LocalSocket.createConnectedLocalSocket(fileDescriptor);
                    if (z2) {
                        Log.d(TAG, "bindListen(), new LocalSocket.getInputStream()");
                    }
                    this.mSocketIS = this.mSocket.getInputStream();
                    this.mSocketOS = this.mSocket.getOutputStream();
                    if (z2) {
                        Log.d(TAG, "bindListen(), readInt mSocketIS: " + this.mSocketIS);
                    }
                    int i2 = readInt(this.mSocketIS);
                    synchronized (this) {
                        if (this.mSocketState == socketState2) {
                            this.mSocketState = SocketState.LISTENING;
                        }
                    }
                    if (z2) {
                        Log.d(TAG, "channel: " + i2);
                    }
                    if (this.mPort > -1) {
                        return 0;
                    }
                    this.mPort = i2;
                    return 0;
                }
            } catch (IOException e2) {
                ParcelFileDescriptor parcelFileDescriptor2 = this.mPfd;
                if (parcelFileDescriptor2 != null) {
                    try {
                        parcelFileDescriptor2.close();
                    } catch (IOException e3) {
                        Log.e(TAG, "bindListen, close mPfd: " + e3);
                    }
                    this.mPfd = null;
                }
                Log.e(TAG, "bindListen, fail to get port number, exception: " + e2);
                return -1;
            }
        } catch (RemoteException unused) {
            m.o(TAG);
            return -1;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Log.d(TAG, "close() this: " + this + ", channel: " + this.mPort + ", mSocketIS: " + this.mSocketIS + ", mSocketOS: " + this.mSocketOS + "mSocket: " + this.mSocket + ", mSocketState: " + this.mSocketState);
        SocketState socketState = this.mSocketState;
        SocketState socketState2 = SocketState.CLOSED;
        if (socketState == socketState2) {
            return;
        }
        synchronized (this) {
            if (this.mSocketState == socketState2) {
                return;
            }
            this.mSocketState = socketState2;
            if (this.mSocket != null) {
                if (DBG) {
                    Log.d(TAG, "Closing mSocket: " + this.mSocket);
                }
                this.mSocket.shutdownInput();
                this.mSocket.shutdownOutput();
                this.mSocket.close();
                this.mSocket = null;
            }
            ParcelFileDescriptor parcelFileDescriptor = this.mPfd;
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.close();
                this.mPfd = null;
            }
        }
    }

    public void connect() throws IOException {
        if (this.mDevice == null) {
            throw new IOException("Connect is called on null device");
        }
        try {
            SocketState socketState = this.mSocketState;
            SocketState socketState2 = SocketState.CLOSED;
            if (socketState == socketState2) {
                throw new IOException("socket closed");
            }
            IBluetooth bluetoothService = BluetoothAdapter.getDefaultAdapter().getBluetoothService(null);
            if (bluetoothService == null) {
                throw new IOException("Bluetooth is off");
            }
            this.mPfd = bluetoothService.connectSocket(this.mDevice, this.mType, this.mUuid, this.mPort, getSecurityFlags());
            synchronized (this) {
                if (DBG) {
                    Log.d(TAG, "connect(), SocketState: " + this.mSocketState + ", mPfd: " + this.mPfd);
                }
                if (this.mSocketState == socketState2) {
                    throw new IOException("socket closed");
                }
                ParcelFileDescriptor parcelFileDescriptor = this.mPfd;
                if (parcelFileDescriptor == null) {
                    throw new IOException("bt socket connect failed");
                }
                LocalSocket localSocketCreateConnectedLocalSocket = LocalSocket.createConnectedLocalSocket(parcelFileDescriptor.getFileDescriptor());
                this.mSocket = localSocketCreateConnectedLocalSocket;
                this.mSocketIS = localSocketCreateConnectedLocalSocket.getInputStream();
                this.mSocketOS = this.mSocket.getOutputStream();
            }
            int i2 = readInt(this.mSocketIS);
            if (i2 <= 0) {
                throw new IOException("bt socket connect failed");
            }
            this.mPort = i2;
            waitSocketSignal(this.mSocketIS);
            synchronized (this) {
                if (this.mSocketState == socketState2) {
                    throw new IOException("bt socket closed");
                }
                this.mSocketState = SocketState.CONNECTED;
            }
        } catch (RemoteException e2) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            throw new IOException("unable to send RPC: " + e2.getMessage());
        }
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public void flush() {
        if (this.mSocketOS == null) {
            throw new IOException("flush is called on null OutputStream");
        }
        if (VDBG) {
            Log.d(TAG, "flush: " + this.mSocketOS);
        }
        this.mSocketOS.flush();
    }

    public int getConnectionType() {
        return this.mType;
    }

    public InputStream getInputStream() {
        return this.mInputStream;
    }

    public int getMaxReceivePacketSize() {
        return this.mMaxRxPacketSize;
    }

    public int getMaxTransmitPacketSize() {
        return this.mMaxTxPacketSize;
    }

    public OutputStream getOutputStream() {
        return this.mOutputStream;
    }

    public int getPort() {
        return this.mPort;
    }

    public BluetoothDevice getRemoteDevice() {
        return this.mDevice;
    }

    public boolean isConnected() {
        return this.mSocketState == SocketState.CONNECTED;
    }

    public int read(byte[] bArr, int i2, int i3) throws IOException {
        boolean z2 = VDBG;
        if (z2) {
            Log.d(TAG, "read in:  " + this.mSocketIS + " len: " + i3);
        }
        if (this.mType == 3) {
            if (z2) {
                StringBuilder sbT = c.t("l2cap: read(): offset: ", i2, " length:", i3, "mL2capBuffer= ");
                sbT.append(this.mL2capBuffer);
                Log.v(TAG, sbT.toString());
            }
            if (this.mL2capBuffer == null) {
                createL2capRxBuffer();
            }
            if (this.mL2capBuffer.remaining() == 0) {
                if (z2) {
                    Log.v(TAG, "l2cap buffer empty, refilling...");
                }
                if (fillL2capRxBuffer() == -1) {
                    return -1;
                }
            }
            if (i3 > this.mL2capBuffer.remaining()) {
                i3 = this.mL2capBuffer.remaining();
            }
            if (z2) {
                Log.v(TAG, "get(): offset: " + i2 + " bytesToRead: " + i3);
            }
            this.mL2capBuffer.get(bArr, i2, i3);
        } else {
            if (z2) {
                Log.v(TAG, "default: read(): offset: " + i2 + " length:" + i3);
            }
            i3 = this.mSocketIS.read(bArr, i2, i3);
        }
        if (i3 < 0) {
            throw new IOException(c.d("bt socket closed, read return: ", i3));
        }
        if (z2) {
            Log.d(TAG, "read out:  " + this.mSocketIS + " ret: " + i3);
        }
        return i3;
    }

    public void removeChannel() {
    }

    public void setExcludeSdp(boolean z2) {
        this.mExcludeSdp = z2;
    }

    public void setServiceName(String str) {
        this.mServiceName = str;
    }

    public int write(byte[] bArr, int i2, int i3) {
        if (VDBG) {
            Log.d(TAG, "write: " + this.mSocketOS + " length: " + i3);
        }
        if (this.mType != 3 || i3 <= this.mMaxTxPacketSize) {
            this.mSocketOS.write(bArr, i2, i3);
        } else {
            if (DBG) {
                c.A(new StringBuilder("WARNING: Write buffer larger than L2CAP packet size!\nPacket will be divided into SDU packets of size "), this.mMaxTxPacketSize, TAG);
            }
            int i4 = i3;
            while (i4 > 0) {
                int i5 = this.mMaxTxPacketSize;
                if (i4 <= i5) {
                    i5 = i4;
                }
                this.mSocketOS.write(bArr, i2, i5);
                i2 += i5;
                i4 -= i5;
            }
        }
        if (VDBG) {
            Log.d(TAG, "write out: " + this.mSocketOS + " length: " + i3);
        }
        return i3;
    }

    public BluetoothSocket(int i2, int i3, boolean z2, boolean z3, BluetoothDevice bluetoothDevice, int i4, ParcelUuid parcelUuid, boolean z4, boolean z5) throws IOException {
        this.mExcludeSdp = false;
        this.mAuthMitm = false;
        this.mMin16DigitPin = false;
        this.mL2capBuffer = null;
        this.mMaxTxPacketSize = 0;
        this.mMaxRxPacketSize = 0;
        if (VDBG) {
            Log.d(TAG, "Creating new BluetoothSocket of type: " + i2);
        }
        if (i2 == 1 && parcelUuid == null && i3 == -1 && i4 != -2 && (i4 < 1 || i4 > 30)) {
            throw new IOException(c.d("Invalid RFCOMM channel: ", i4));
        }
        if (parcelUuid != null) {
            this.mUuid = parcelUuid;
        } else {
            this.mUuid = new ParcelUuid(new UUID(0L, 0L));
        }
        this.mType = i2;
        this.mAuth = z2;
        this.mAuthMitm = z4;
        this.mMin16DigitPin = z5;
        this.mEncrypt = z3;
        this.mDevice = bluetoothDevice;
        this.mPort = i4;
        this.mFd = i3;
        this.mSocketState = SocketState.INIT;
        if (bluetoothDevice == null) {
            this.mAddress = BluetoothAdapter.getDefaultAdapter().getAddress();
        } else {
            this.mAddress = bluetoothDevice.getAddress();
        }
        this.mInputStream = new BluetoothInputStream(this);
        this.mOutputStream = new BluetoothOutputStream(this);
    }

    private BluetoothSocket(BluetoothSocket bluetoothSocket) {
        this.mExcludeSdp = false;
        this.mAuthMitm = false;
        this.mMin16DigitPin = false;
        this.mL2capBuffer = null;
        this.mMaxTxPacketSize = 0;
        this.mMaxRxPacketSize = 0;
        if (VDBG) {
            m.t(new StringBuilder("Creating new Private BluetoothSocket of type: "), bluetoothSocket.mType, TAG);
        }
        this.mUuid = bluetoothSocket.mUuid;
        this.mType = bluetoothSocket.mType;
        this.mAuth = bluetoothSocket.mAuth;
        this.mEncrypt = bluetoothSocket.mEncrypt;
        this.mPort = bluetoothSocket.mPort;
        this.mInputStream = new BluetoothInputStream(this);
        this.mOutputStream = new BluetoothOutputStream(this);
        this.mMaxRxPacketSize = bluetoothSocket.mMaxRxPacketSize;
        this.mMaxTxPacketSize = bluetoothSocket.mMaxTxPacketSize;
        this.mServiceName = bluetoothSocket.mServiceName;
        this.mExcludeSdp = bluetoothSocket.mExcludeSdp;
        this.mAuthMitm = bluetoothSocket.mAuthMitm;
        this.mMin16DigitPin = bluetoothSocket.mMin16DigitPin;
    }

    private BluetoothSocket(int i2, int i3, boolean z2, boolean z3, String str, int i4) {
        this(i2, i3, z2, z3, new BluetoothDevice(str), i4, null, false, false);
    }
}
