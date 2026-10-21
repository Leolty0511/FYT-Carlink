package android.bluetooth;

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
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothSocket implements Closeable {
    private static final boolean DBG = true;
    public static final int EADDRINUSE = 98;
    public static final int EBADFD = 77;
    public static final int MAX_RFCOMM_CHANNEL = 30;
    private static int PROXY_CONNECTION_TIMEOUT = 5000;
    public static final int SEC_FLAG_AUTH = 2;
    public static final int SEC_FLAG_ENCRYPT = 1;
    private static int SOCK_SIGNAL_SIZE = 16;
    private static final String TAG = "BluetoothSocket";
    public static final int TYPE_L2CAP = 3;
    public static final int TYPE_RFCOMM = 1;
    public static final int TYPE_SCO = 2;
    private static final boolean VDBG = false;
    private String mAddress;
    private final boolean mAuth;
    private BluetoothDevice mDevice;
    private final boolean mEncrypt;
    private int mFd;
    private final BluetoothInputStream mInputStream;
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

    public enum SocketState {
        INIT,
        CONNECTED,
        LISTENING,
        CLOSED
    }

    public BluetoothSocket(int i2, int i3, boolean z2, boolean z3, BluetoothDevice bluetoothDevice, int i4, ParcelUuid parcelUuid) throws IOException {
        if (i2 == 1 && parcelUuid == null && i3 == -1 && (i4 < 1 || i4 > 30)) {
            throw new IOException("Invalid RFCOMM channel: " + i4);
        }
        if (parcelUuid != null) {
            this.mUuid = parcelUuid;
        } else {
            this.mUuid = new ParcelUuid(new UUID(0L, 0L));
        }
        this.mType = i2;
        this.mAuth = z2;
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

    private BluetoothSocket acceptSocket(String str) throws IOException {
        BluetoothSocket bluetoothSocket = new BluetoothSocket(this);
        bluetoothSocket.mSocketState = SocketState.CONNECTED;
        FileDescriptor[] ancillaryFileDescriptors = this.mSocket.getAncillaryFileDescriptors();
        if (ancillaryFileDescriptors == null || ancillaryFileDescriptors.length != 1) {
            Log.e(TAG, "socket fd passed from stack failed, fds: " + ancillaryFileDescriptors);
            bluetoothSocket.close();
            throw new IOException("bt socket acept failed");
        }
        LocalSocket localSocket = new LocalSocket(ancillaryFileDescriptors[0]);
        bluetoothSocket.mSocket = localSocket;
        bluetoothSocket.mSocketIS = localSocket.getInputStream();
        bluetoothSocket.mSocketOS = bluetoothSocket.mSocket.getOutputStream();
        bluetoothSocket.mAddress = str;
        bluetoothSocket.mDevice = BluetoothAdapter.getDefaultAdapter().getRemoteDevice(str);
        return bluetoothSocket;
    }

    private String convertAddr(byte[] bArr) {
        return String.format(Locale.US, "%02X:%02X:%02X:%02X:%02X:%02X", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3]), Byte.valueOf(bArr[4]), Byte.valueOf(bArr[5]));
    }

    private int getSecurityFlags() {
        int i2 = this.mAuth ? 2 : 0;
        return this.mEncrypt ? i2 | 1 : i2;
    }

    private int readAll(InputStream inputStream, byte[] bArr) throws IOException {
        int length = bArr.length;
        while (length > 0) {
            int i2 = inputStream.read(bArr, bArr.length - length, length);
            if (i2 <= 0) {
                throw new IOException("read failed, socket might closed or timeout, read ret: " + i2);
            }
            length -= i2;
            if (length != 0) {
                Log.w(TAG, "readAll() looping, read partial size: " + (bArr.length - length) + ", expect size: " + bArr.length);
            }
        }
        return bArr.length;
    }

    private int readInt(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4];
        readAll(inputStream, bArr);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.nativeOrder());
        return byteBufferWrap.getInt();
    }

    private String waitSocketSignal(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[SOCK_SIGNAL_SIZE];
        readAll(inputStream, bArr);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.nativeOrder());
        short s2 = byteBufferWrap.getShort();
        if (s2 != SOCK_SIGNAL_SIZE) {
            throw new IOException("Connection failure, wrong signal size: " + ((int) s2));
        }
        byte[] bArr2 = new byte[6];
        byteBufferWrap.get(bArr2);
        byteBufferWrap.getInt();
        int i2 = byteBufferWrap.getInt();
        String strConvertAddr = convertAddr(bArr2);
        if (i2 == 0) {
            return strConvertAddr;
        }
        throw new IOException("Connection failure, status: " + i2);
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
                    SocketState socketState = this.mSocketState;
                    SocketState socketState2 = SocketState.INIT;
                    if (socketState != socketState2) {
                        return 77;
                    }
                    ParcelFileDescriptor parcelFileDescriptor = this.mPfd;
                    if (parcelFileDescriptor == null) {
                        return -1;
                    }
                    LocalSocket localSocket = new LocalSocket(parcelFileDescriptor.getFileDescriptor());
                    this.mSocket = localSocket;
                    this.mSocketIS = localSocket.getInputStream();
                    this.mSocketOS = this.mSocket.getOutputStream();
                    int i2 = readInt(this.mSocketIS);
                    synchronized (this) {
                        if (this.mSocketState == socketState2) {
                            this.mSocketState = SocketState.LISTENING;
                        }
                    }
                    if (this.mPort != -1) {
                        return 0;
                    }
                    this.mPort = i2;
                    return 0;
                }
            } catch (IOException e2) {
                Log.e(TAG, "bindListen, fail to get port number, exception: " + e2);
                return -1;
            }
        } catch (RemoteException unused) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return -1;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
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
            LocalSocket localSocket = this.mSocket;
            if (localSocket != null) {
                localSocket.shutdownInput();
                this.mSocket.shutdownOutput();
                this.mSocket.close();
                this.mSocket = null;
            }
            ParcelFileDescriptor parcelFileDescriptor = this.mPfd;
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.detachFd();
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
                Log.d(TAG, "connect(), SocketState: " + this.mSocketState + ", mPfd: " + this.mPfd);
                if (this.mSocketState == socketState2) {
                    throw new IOException("socket closed");
                }
                ParcelFileDescriptor parcelFileDescriptor = this.mPfd;
                if (parcelFileDescriptor == null) {
                    throw new IOException("bt socket connect failed");
                }
                LocalSocket localSocket = new LocalSocket(parcelFileDescriptor.getFileDescriptor());
                this.mSocket = localSocket;
                this.mSocketIS = localSocket.getInputStream();
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
        } catch (RemoteException unused) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
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
        this.mSocketOS.flush();
    }

    public InputStream getInputStream() {
        return this.mInputStream;
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
        int i4 = this.mSocketIS.read(bArr, i2, i3);
        if (i4 >= 0) {
            return i4;
        }
        throw new IOException("bt socket closed, read return: " + i4);
    }

    public void removeChannel() {
    }

    public void setServiceName(String str) {
        this.mServiceName = str;
    }

    public int write(byte[] bArr, int i2, int i3) {
        this.mSocketOS.write(bArr, i2, i3);
        return i3;
    }

    private BluetoothSocket(BluetoothSocket bluetoothSocket) {
        this.mUuid = bluetoothSocket.mUuid;
        this.mType = bluetoothSocket.mType;
        this.mAuth = bluetoothSocket.mAuth;
        this.mEncrypt = bluetoothSocket.mEncrypt;
        this.mPort = bluetoothSocket.mPort;
        this.mInputStream = new BluetoothInputStream(this);
        this.mOutputStream = new BluetoothOutputStream(this);
        this.mServiceName = bluetoothSocket.mServiceName;
    }

    private BluetoothSocket(int i2, int i3, boolean z2, boolean z3, String str, int i4) {
        this(i2, i3, z2, z3, new BluetoothDevice(str), i4, null);
    }
}
