package com.google.android.projection.sink.embedded.bluetooth;

import android.app.m;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.projection.proto.WifiDiscoveryProtos;
import com.google.android.projection.sink.embedded.AndroidAutoHeadunitLog;
import com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker;
import com.google.android.projection.sink.embedded.transport.net.WiFiHostInfoLocator;
import com.google.android.projection.sink.settings.Settings;
import com.google.android.projection.sink.ui.AutoWirelessListener;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public class RfCommConnection {

    @VisibleForTesting
    static final int HEADER_SIZE = 4;
    private static final int LENGTH_SIZE = 2;
    private static final int TYPE_SIZE = 2;
    private volatile BluetoothConnection mBluetoothConnection;
    private final BluetoothSocket mBluetoothSocket;
    private final SettableFuture<?> mConnectionFuture;
    private final AtomicReference<SettableFuture<ListenableFuture<?>>> mConnectionInitializationFuture;
    private final DeviceLifecycleTracker mDeviceLifecycleTracker;
    private final ListeningExecutorService mExecutorService;
    private ExtBluetooth mExtBt;
    private Handler mHandler;
    private final WiFiHostInfoLocator mHostInfoLocator;
    private final int mPort;
    private final Settings mSettings;
    private final AtomicReference<SettableFuture<Void>> mStartProjectionFuture;
    private final int mWifiSecurityType;
    Runnable wifiStartRequest;
    private static final String TAG = AndroidAutoHeadunitLog.getTag("RfCommConnection");
    private static final byte[] VERSION_REQUEST_MESSAGE = WifiDiscoveryProtos.WifiVersionRequest.newBuilder().setMajorVersion(4).setMinorVersion(3).setSupportedWifiChannelType(WifiDiscoveryProtos.WifiChannelType.CHANNELS_DUAL_BAND).addSupportedWifiChannels(0).build().toByteArray();

    public class BluetoothConnection {
        private final InputStream mInputStream;
        private final OutputStream mOutputStream;

        public BluetoothConnection() {
            if (RfCommConnection.this.mBluetoothSocket != null) {
                this.mInputStream = RfCommConnection.this.mBluetoothSocket.getInputStream();
                this.mOutputStream = RfCommConnection.this.mBluetoothSocket.getOutputStream();
            } else {
                this.mInputStream = RfCommConnection.this.mExtBt.getInputStream();
                this.mOutputStream = RfCommConnection.this.mExtBt.getOutputStream();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Pair lambda$readMessage$0() {
            ByteBuffer header = readHeader();
            return Pair.create(header, readPayload(header));
        }

        private ByteBuffer readBytes(int i2) throws IOException {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i2);
            while (byteBufferAllocate.hasRemaining()) {
                int i3 = this.mInputStream.read(byteBufferAllocate.array(), byteBufferAllocate.position(), byteBufferAllocate.remaining());
                if (i3 == -1) {
                    Log.d(RfCommConnection.TAG, "Read EOF for RFCOMM to " + RfCommConnection.this.getDevice());
                    throw new EOFException();
                }
                byteBufferAllocate.position(byteBufferAllocate.position() + i3);
            }
            byteBufferAllocate.position(0);
            return byteBufferAllocate;
        }

        private ByteBuffer readHeader() {
            return readBytes(4);
        }

        private ListenableFuture<Pair<ByteBuffer, ByteBuffer>> readMessage() {
            return RfCommConnection.this.mExecutorService.submit((Callable) new e(this, 0));
        }

        private ByteBuffer readPayload(ByteBuffer byteBuffer) {
            return readBytes(byteBuffer.getShort(0) & 65535);
        }

        public void startReadingMessages() {
            Futures.addCallback(readMessage(), new FutureCallback<Pair<ByteBuffer, ByteBuffer>>() { // from class: com.google.android.projection.sink.embedded.bluetooth.RfCommConnection.BluetoothConnection.1
                @Override // com.google.common.util.concurrent.FutureCallback
                public void onFailure(Throwable th) {
                    Log.d(RfCommConnection.TAG, "Error reading over Bluetooth", th);
                    RfCommConnection.this.raiseConnectionFailure(th);
                }

                @Override // com.google.common.util.concurrent.FutureCallback
                public void onSuccess(Pair<ByteBuffer, ByteBuffer> pair) {
                    RfCommConnection.this.handleMessage(pair.first, pair.second);
                    BluetoothConnection.this.startReadingMessages();
                }
            }, MoreExecutors.directExecutor());
        }

        public void write(byte[] bArr) throws IOException {
            try {
                this.mOutputStream.write(bArr);
            } catch (IOException e2) {
                Log.d(RfCommConnection.TAG, "Couldn't write over Bluetooth", e2);
                RfCommConnection.this.raiseConnectionFailure(e2);
                throw e2;
            }
        }
    }

    public RfCommConnection(ListeningExecutorService listeningExecutorService, DeviceLifecycleTracker deviceLifecycleTracker, WiFiHostInfoLocator wiFiHostInfoLocator, Settings settings, BluetoothSocket bluetoothSocket) {
        this.mConnectionInitializationFuture = new AtomicReference<>();
        this.mConnectionFuture = SettableFuture.create();
        this.mStartProjectionFuture = new AtomicReference<>();
        this.wifiStartRequest = new Runnable() { // from class: com.google.android.projection.sink.embedded.bluetooth.RfCommConnection.1
            @Override // java.lang.Runnable
            public void run() {
                if (RfCommConnection.this.mStartProjectionFuture.get() == null) {
                    try {
                        Log.e(RfCommConnection.TAG, "wifiStartRequest: mStartProjectionFuture is null");
                        RfCommConnection.this.sendStartRequestMessage();
                        return;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                try {
                    RfCommConnection.this.sendMessage(WifiDiscoveryProtos.WifiStartRequest.newBuilder().setIpAddress(RfCommConnection.this.mHostInfoLocator.getHostIp()).setPort(RfCommConnection.this.mPort).build().toByteArray(), 1);
                } catch (IOException e3) {
                    e3.printStackTrace();
                    RfCommConnection.this.removeWifiStartRequest();
                    if (RfCommConnection.this.mHandler != null) {
                        RfCommConnection.this.mHandler.postDelayed(RfCommConnection.this.wifiStartRequest, 3000L);
                    }
                }
            }
        };
        this.mExecutorService = listeningExecutorService;
        this.mDeviceLifecycleTracker = deviceLifecycleTracker;
        this.mHostInfoLocator = wiFiHostInfoLocator;
        this.mSettings = settings;
        this.mPort = settings.getListenTcpPort();
        this.mWifiSecurityType = settings.getCarWifiSecurity();
        this.mBluetoothSocket = bluetoothSocket;
        this.mExtBt = null;
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    private void handleConnectStatus(ByteBuffer byteBuffer) {
        try {
            WifiDiscoveryProtos.WifiConnectStatus from = WifiDiscoveryProtos.WifiConnectStatus.parseFrom(ByteString.copyFrom(byteBuffer));
            Log.i(TAG, "MD sent connection status " + from.getConnectStatus());
            if (from.getConnectStatus() == WifiDiscoveryProtos.MessageStatus.STATUS_SUCCESS) {
                removeWifiStartRequest();
            }
            AutoWirelessListener.IAutoWirelessListener listener = AutoWirelessListener.instance.getListener();
            if (listener != null) {
                listener.onHandleConnectStatus(from.getConnectStatus().name());
            }
        } catch (InvalidProtocolBufferException e2) {
            Log.e(TAG, "Unable to parse connection status: " + e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(final ByteBuffer byteBuffer, final ByteBuffer byteBuffer2) {
        Futures.addCallback(this.mExecutorService.submit(new Runnable() { // from class: com.google.android.projection.sink.embedded.bluetooth.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f390b.lambda$handleMessage$1(byteBuffer, byteBuffer2);
            }
        }), new FutureCallback<Object>() { // from class: com.google.android.projection.sink.embedded.bluetooth.RfCommConnection.3
            @Override // com.google.common.util.concurrent.FutureCallback
            public void onFailure(Throwable th) {
                Log.e(RfCommConnection.TAG, "Failed to handle message", th);
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public void onSuccess(Object obj) {
            }
        }, MoreExecutors.directExecutor());
    }

    private void handlePingRequest(ByteBuffer byteBuffer) {
        try {
            WifiDiscoveryProtos.WifiPingRequest from = WifiDiscoveryProtos.WifiPingRequest.parseFrom(ByteString.copyFrom(byteBuffer));
            sendMessage(WifiDiscoveryProtos.WifiPingResponse.newBuilder().setTimestampMs(from.getTimestampMs()).setData(from.getData()).build().toByteArray(), 9);
            Log.d(TAG, "Wireless Auto: HU reply WiFi Ping !!");
        } catch (InvalidProtocolBufferException e2) {
            Log.e(TAG, "Unable to parse ping request: " + e2);
        } catch (IOException e3) {
            Log.e(TAG, "Failed to send ping response: " + e3);
        }
    }

    private void handlePingResponse(ByteBuffer byteBuffer) {
        try {
            WifiDiscoveryProtos.WifiPingResponse from = WifiDiscoveryProtos.WifiPingResponse.parseFrom(ByteString.copyFrom(byteBuffer));
            long jCurrentTimeMillis = System.currentTimeMillis() - from.getTimestampMs();
            Log.d(TAG, "Wireless Auto: MD reply WiFi Ping, rtt=" + jCurrentTimeMillis + "ms, dataSize=" + from.getData().size());
        } catch (InvalidProtocolBufferException e2) {
            Log.e(TAG, "Unable to parse ping response: " + e2);
        }
    }

    private void handleRequestInfo() {
        String str = TAG;
        Log.d(str, "MD requested WiFi info  mWifiSsid : " + this.mSettings.getCarWifiSsid() + "   mWifiPassword: " + this.mSettings.getCarWifiPassword() + " HostBssid: " + this.mHostInfoLocator.getHostBssid());
        try {
            sendMessage(WifiDiscoveryProtos.WifiInfoResponse.newBuilder().setWifiSsid(this.mSettings.getCarWifiSsid()).setWifiBssid(this.mHostInfoLocator.getHostBssid()).setWifiPassword(this.mSettings.getCarWifiPassword()).build().toByteArray(), 3);
            Log.d(str, "Wireless Auto Step ==>> 05  HU handle WiFi Info request");
        } catch (IOException e2) {
            e2.printStackTrace();
            Log.d(TAG, "MD requested WiFi info  error!!");
        }
    }

    private void handleStartRequest() {
        String str = TAG;
        Log.d(str, "Wireless Auto Step ==>> 0401  HU handle WiFi Start request");
        BluetoothDevice device = getDevice();
        if (device == null) {
            Log.e(str, "handleStartRequest: device is null, cannot start projection");
            sendStartResponse(false);
            return;
        }
        ListenableFuture<Void> listenableFutureLaunchProjection = this.mDeviceLifecycleTracker.launchProjection(device);
        if (listenableFutureLaunchProjection != null) {
            Futures.addCallback(listenableFutureLaunchProjection, new FutureCallback<Void>() { // from class: com.google.android.projection.sink.embedded.bluetooth.RfCommConnection.4
                @Override // com.google.common.util.concurrent.FutureCallback
                public void onFailure(Throwable th) {
                    Log.d(RfCommConnection.TAG, "Did not start projection: " + th);
                    RfCommConnection.this.sendStartResponse(false);
                }

                @Override // com.google.common.util.concurrent.FutureCallback
                public void onSuccess(@Nullable Void r2) {
                    RfCommConnection.this.sendStartResponse(true);
                }
            }, MoreExecutors.directExecutor());
        } else {
            Log.e(str, "handleStartRequest: launchProjection returned null, projection not started");
            sendStartResponse(false);
        }
    }

    private void handleStartResponse(ByteBuffer byteBuffer) {
        WifiDiscoveryProtos.MessageStatus status;
        try {
            WifiDiscoveryProtos.WifiStartResponse from = WifiDiscoveryProtos.WifiStartResponse.parseFrom(ByteString.copyFrom(byteBuffer));
            if (from.hasStatus()) {
                status = from.getStatus();
            } else {
                Log.w(TAG, "Received start response without status");
                status = null;
            }
            SettableFuture<Void> andSet = this.mStartProjectionFuture.getAndSet(null);
            String str = TAG;
            Log.d(str, "Wireless Auto Step ==>> 04  HU handle WiFi Start response : status : " + status + "  start : " + andSet);
            if (andSet == null) {
                Log.w(str, "Received start response " + status + " without making a start request");
                return;
            }
            if (status != null && status != WifiDiscoveryProtos.MessageStatus.STATUS_SUCCESS) {
                andSet.setException(new RemoteException("Non success status received: " + status));
                return;
            }
            andSet.set(null);
            removeWifiStartRequest();
        } catch (InvalidProtocolBufferException e2) {
            Log.e(TAG, "Unable to parse start response: " + e2);
        }
    }

    private void handleVersionResponse(ByteBuffer byteBuffer) {
        String str;
        String str2 = TAG;
        Log.d(str2, "Wireless Auto Step ==>> 02  HU handle WiFi version response");
        try {
            WifiDiscoveryProtos.WifiVersionResponse from = WifiDiscoveryProtos.WifiVersionResponse.parseFrom(ByteString.copyFrom(byteBuffer));
            if (!(from.getVersionStatus() == WifiDiscoveryProtos.MessageStatus.STATUS_SUCCESS)) {
                if (this.mBluetoothSocket != null) {
                    str = this.mBluetoothSocket.getRemoteDevice() + " rejected our protocol version: " + from.getVersionStatus();
                } else {
                    str = " rejected our protocol version: " + from.getVersionStatus();
                }
                this.mConnectionInitializationFuture.get().setException(new RemoteException(str));
            }
            if (!from.hasDeviceSerial()) {
                Log.w(str2, "Version response is missing device serial");
            }
        } catch (InvalidProtocolBufferException e2) {
            this.mConnectionInitializationFuture.get().setException(e2);
        }
        if (this.mConnectionInitializationFuture.get().set(this.mConnectionFuture)) {
            return;
        }
        shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleMessage$1(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        short s2 = byteBuffer.getShort(2);
        if (s2 < WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_PING_REQUEST_BT.getNumber()) {
            removeWifiStartRequest();
        }
        if (s2 == 1) {
            Log.e(TAG, "Wireless Auto: MD request WiFi Start !!");
            handleStartRequest();
        }
        if (s2 == 2) {
            Log.e(TAG, "Wireless Auto: MD request WiFi Info!!");
            handleRequestInfo();
            return;
        }
        switch (s2) {
            case 5:
                Log.e(TAG, "Wireless Auto: MD response WiFi version request!!");
                handleVersionResponse(byteBuffer2);
                break;
            case 6:
                Log.e(TAG, "Wireless Auto: MD response WiFi connect status!!");
                handleConnectStatus(byteBuffer2);
                break;
            case 7:
                Log.e(TAG, "Wireless Auto: MD response WiFi Start !!");
                handleStartResponse(byteBuffer2);
                break;
            case 8:
                Log.e(TAG, "Wireless Auto: MD request WiFi Ping !!");
                handlePingRequest(byteBuffer2);
                break;
            case 9:
                Log.e(TAG, "Wireless Auto: MD response WiFi Ping !!");
                handlePingResponse(byteBuffer2);
                break;
            default:
                m.A("Received unknown message type=", s2, TAG);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$sendStartResponse$0(boolean z2) throws IOException {
        WifiDiscoveryProtos.WifiStartResponse.Builder builderNewBuilder = WifiDiscoveryProtos.WifiStartResponse.newBuilder();
        if (z2) {
            builderNewBuilder.setStatus(WifiDiscoveryProtos.MessageStatus.STATUS_SUCCESS);
            builderNewBuilder.setIpAddress(this.mHostInfoLocator.getHostIp()).setPort(this.mPort);
        } else {
            builderNewBuilder.setStatus(WifiDiscoveryProtos.MessageStatus.STATUS_PROJECTION_ALREADY_STARTED);
        }
        sendMessage(builderNewBuilder.build().toByteArray(), 7);
        Log.d(TAG, "Wireless Auto Step ==>> 0402  HU Send WiFi Start response");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void raiseConnectionFailure(Throwable th) {
        if (!this.mConnectionInitializationFuture.get().setException(th) && !this.mConnectionFuture.setException(th)) {
            Log.w(TAG, "Didn't signal end of connection");
        }
        shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(byte[] bArr, int i2) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + 4);
        byteBufferAllocate.putShort((short) bArr.length);
        byteBufferAllocate.putShort((short) i2);
        byteBufferAllocate.put(bArr);
        this.mBluetoothConnection.write(byteBufferAllocate.array());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStartResponse(final boolean z2) {
        Futures.addCallback(this.mExecutorService.submit(new Callable() { // from class: com.google.android.projection.sink.embedded.bluetooth.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f388a.lambda$sendStartResponse$0(z2);
            }
        }), new FutureCallback<Void>() { // from class: com.google.android.projection.sink.embedded.bluetooth.RfCommConnection.2
            @Override // com.google.common.util.concurrent.FutureCallback
            public void onFailure(Throwable th) {
                Log.e(RfCommConnection.TAG, "Failed to send start response", th);
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public void onSuccess(@Nullable Void r1) {
            }
        }, MoreExecutors.directExecutor());
    }

    private void sendVersionRequestMessage() {
        WifiDiscoveryProtos.WifiVersionRequest.Builder minorVersion = WifiDiscoveryProtos.WifiVersionRequest.newBuilder().setMajorVersion(4).setMinorVersion(3);
        if (this.mSettings.isDualBandSupported()) {
            minorVersion.setSupportedWifiChannelType(WifiDiscoveryProtos.WifiChannelType.CHANNELS_DUAL_BAND);
        } else {
            minorVersion.setSupportedWifiChannelType(WifiDiscoveryProtos.WifiChannelType.CHANNELS_24GHZ_ONLY);
        }
        if (this.mSettings.isSupport5GBand()) {
            minorVersion.addSupportedWifiChannels(0);
        } else {
            minorVersion.addSupportedWifiChannels(1);
        }
        try {
            sendMessage(minorVersion.build().toByteArray(), 4);
            Log.d(TAG, "Wireless Auto Step ==>> 01  Sent WiFi version request to MD");
        } catch (IOException unused) {
        }
    }

    public BluetoothDevice getDevice() {
        BluetoothSocket bluetoothSocket = this.mBluetoothSocket;
        if (bluetoothSocket != null) {
            return bluetoothSocket.getRemoteDevice();
        }
        ExtBluetooth extBluetooth = this.mExtBt;
        if (extBluetooth != null) {
            return extBluetooth.getRemoteDevice();
        }
        return null;
    }

    public void removeWifiStartRequest() {
        Log.d(TAG, "Wireless Auto Step ==>> removeWifiStartRequest");
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.wifiStartRequest);
        }
    }

    public void reset() {
        String str = TAG;
        Log.d(str, "RfCommConnection reset start!!");
        removeWifiStartRequest();
        SettableFuture<ListenableFuture<?>> andSet = this.mConnectionInitializationFuture.getAndSet(null);
        Log.d(str, "RfCommConnection reset ConnectionInitializationFuture: " + andSet);
        if (andSet != null) {
            andSet.setException(new IOException("  <<<=000=>>>   ExBluetooth reset Connection !!"));
        }
        SettableFuture<Void> andSet2 = this.mStartProjectionFuture.getAndSet(null);
        Log.d(str, "RfCommConnection reset StartProjectionFuture: " + andSet2);
        if (andSet2 != null) {
            andSet2.setException(new IOException("  <<<=010=>>>   ExBluetooth reset Connection !!"));
        }
        Log.d(str, "RfCommConnection reset end!!");
    }

    public ListenableFuture<Void> sendStartRequestMessage() {
        boolean z2;
        Log.d(TAG, "sendStartRequestMessage");
        AtomicReference<SettableFuture<Void>> atomicReference = this.mStartProjectionFuture;
        SettableFuture<Void> settableFutureCreate = SettableFuture.create();
        while (true) {
            if (atomicReference.compareAndSet(null, settableFutureCreate)) {
                z2 = true;
                break;
            }
            if (atomicReference.get() != null) {
                z2 = false;
                break;
            }
        }
        if (!z2) {
            throw new IllegalStateException("Projection request already being sent");
        }
        try {
            sendMessage(WifiDiscoveryProtos.WifiStartRequest.newBuilder().setIpAddress(this.mHostInfoLocator.getHostIp()).setPort(this.mPort).build().toByteArray(), 1);
        } catch (Exception e2) {
            e2.printStackTrace();
            removeWifiStartRequest();
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.postDelayed(this.wifiStartRequest, 3000L);
            }
        }
        Log.d(TAG, "Wireless Auto Step ==>> 03  HU send WiFi start request to MD");
        return this.mStartProjectionFuture.get();
    }

    public void shutdown() {
        try {
            removeWifiStartRequest();
            BluetoothSocket bluetoothSocket = this.mBluetoothSocket;
            if (bluetoothSocket != null) {
                bluetoothSocket.close();
            }
        } catch (IOException unused) {
            Log.w(TAG, "Unexpected exception shutting down connection to " + getDevice());
        }
    }

    public ListenableFuture<ListenableFuture<?>> start() {
        boolean z2;
        AtomicReference<SettableFuture<ListenableFuture<?>>> atomicReference = this.mConnectionInitializationFuture;
        SettableFuture<ListenableFuture<?>> settableFutureCreate = SettableFuture.create();
        while (true) {
            if (atomicReference.compareAndSet(null, settableFutureCreate)) {
                z2 = true;
                break;
            }
            if (atomicReference.get() != null) {
                z2 = false;
                break;
            }
        }
        if (!z2) {
            throw new IllegalStateException("Connection already attempted");
        }
        this.mBluetoothConnection = new BluetoothConnection();
        this.mBluetoothConnection.startReadingMessages();
        sendVersionRequestMessage();
        return this.mConnectionInitializationFuture.get();
    }

    public RfCommConnection(ListeningExecutorService listeningExecutorService, DeviceLifecycleTracker deviceLifecycleTracker, WiFiHostInfoLocator wiFiHostInfoLocator, Settings settings, ExtBluetooth extBluetooth) {
        this.mConnectionInitializationFuture = new AtomicReference<>();
        this.mConnectionFuture = SettableFuture.create();
        this.mStartProjectionFuture = new AtomicReference<>();
        this.wifiStartRequest = new Runnable() { // from class: com.google.android.projection.sink.embedded.bluetooth.RfCommConnection.1
            @Override // java.lang.Runnable
            public void run() {
                if (RfCommConnection.this.mStartProjectionFuture.get() == null) {
                    try {
                        Log.e(RfCommConnection.TAG, "wifiStartRequest: mStartProjectionFuture is null");
                        RfCommConnection.this.sendStartRequestMessage();
                        return;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                try {
                    RfCommConnection.this.sendMessage(WifiDiscoveryProtos.WifiStartRequest.newBuilder().setIpAddress(RfCommConnection.this.mHostInfoLocator.getHostIp()).setPort(RfCommConnection.this.mPort).build().toByteArray(), 1);
                } catch (IOException e3) {
                    e3.printStackTrace();
                    RfCommConnection.this.removeWifiStartRequest();
                    if (RfCommConnection.this.mHandler != null) {
                        RfCommConnection.this.mHandler.postDelayed(RfCommConnection.this.wifiStartRequest, 3000L);
                    }
                }
            }
        };
        this.mExecutorService = listeningExecutorService;
        this.mDeviceLifecycleTracker = deviceLifecycleTracker;
        this.mHostInfoLocator = wiFiHostInfoLocator;
        this.mSettings = settings;
        this.mPort = settings.getListenTcpPort();
        this.mWifiSecurityType = settings.getCarWifiSecurity();
        this.mBluetoothSocket = null;
        this.mExtBt = extBluetooth;
        this.mHandler = new Handler(Looper.getMainLooper());
    }
}
