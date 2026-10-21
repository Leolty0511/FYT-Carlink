package com.google.android.projection.sink.embedded.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemProperties;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.google.android.projection.sink.embedded.AndroidAutoHeadunitLog;
import com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker;
import com.google.android.projection.sink.embedded.transport.net.WiFiHostInfoLocator;
import com.google.android.projection.sink.settings.Settings;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class BluetoothExplorer {
    int bttype;
    ExtBluetooth extBluetooth;
    private final DeviceLifecycleTracker mDeviceLifecycleTracker;
    private final WiFiHostInfoLocator mHostInfoLocator;
    private volatile BluetoothServerSocket mServerSocket;
    private final Settings mSettings;
    private final PowerManager.WakeLock mWakeLock;
    private static final String TAG = AndroidAutoHeadunitLog.getTag("BluetoothExplorer");
    private static final UUID KNOWN_UUID = UUID.fromString("4de17a00-52cb-11e6-bdf4-0800200c9a66");
    private final ListeningExecutorService mExecutorService = MoreExecutors.listeningDecorator(Executors.newCachedThreadPool());
    private final BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private final Map<BluetoothDevice, RfCommConnection> mConnectedDevices = new ConcurrentHashMap();
    boolean enable = false;
    Runnable initExBt = new Runnable() { // from class: com.google.android.projection.sink.embedded.bluetooth.BluetoothExplorer.1
        @Override // java.lang.Runnable
        public void run() {
            BluetoothExplorer.this.mH.removeCallbacks(this);
            File file = new File(ExtBluetooth.BTFILE);
            Log.e(BluetoothExplorer.TAG, "=============>>>  /dev/auto_serial nodeFile.exists(): " + file.exists());
            if (!file.exists()) {
                BluetoothExplorer.this.mH.postDelayed(this, 1000L);
            } else {
                BluetoothExplorer.this.extBluetooth = new ExtBluetooth(BluetoothExplorer.this);
            }
        }
    };
    Handler mH = new Handler(Looper.getMainLooper());

    public BluetoothExplorer(Context context, Settings settings, DeviceLifecycleTracker deviceLifecycleTracker) {
        this.bttype = 0;
        this.mSettings = settings;
        this.mDeviceLifecycleTracker = deviceLifecycleTracker;
        this.mHostInfoLocator = new WiFiHostInfoLocator(settings, (WifiManager) context.getApplicationContext().getSystemService("wifi"));
        this.mWakeLock = ((PowerManager) context.getSystemService(Context.POWER_SERVICE)).newWakeLock(1, TAG);
        int bluetoothType = getBluetoothType();
        this.bttype = bluetoothType;
        if (bluetoothType > 0) {
            this.mH.post(this.initExBt);
        }
    }

    private void handleConnectionLifecycle(final RfCommConnection rfCommConnection, ListenableFuture<ListenableFuture<?>> listenableFuture) {
        final BluetoothDevice device = rfCommConnection.getDevice();
        Futures.addCallback(listenableFuture, new FutureCallback<ListenableFuture<?>>() { // from class: com.google.android.projection.sink.embedded.bluetooth.BluetoothExplorer.5
            @Override // com.google.common.util.concurrent.FutureCallback
            public void onFailure(Throwable th) {
                Log.e(BluetoothExplorer.TAG, "Failed to execute connection start sequence with " + device, th);
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public void onSuccess(ListenableFuture<?> listenableFuture2) {
                Log.i(BluetoothExplorer.TAG, "===========================>>>>  Usable connection established with " + device);
                BluetoothExplorer.this.mConnectedDevices.put(device, rfCommConnection);
                BluetoothExplorer.this.mDeviceLifecycleTracker.onConnectedTo(device);
                Futures.addCallback(listenableFuture2, new FutureCallback<Object>() { // from class: com.google.android.projection.sink.embedded.bluetooth.BluetoothExplorer.5.1
                    @Override // com.google.common.util.concurrent.FutureCallback
                    public void onFailure(Throwable th) {
                        Log.i(BluetoothExplorer.TAG, "======================>>>>   onFailure Disconnected from : " + device + " mConnectedDevices.remove ");
                        BluetoothExplorer.this.mConnectedDevices.remove(device);
                        BluetoothExplorer.this.mDeviceLifecycleTracker.onDisconnectedFrom(device);
                    }

                    @Override // com.google.common.util.concurrent.FutureCallback
                    public void onSuccess(Object obj) {
                    }
                }, BluetoothExplorer.this.mExecutorService);
            }
        }, this.mExecutorService);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$exBtConnected$2(RfCommConnection rfCommConnection, BluetoothDevice bluetoothDevice) {
        handleConnectionLifecycle(rfCommConnection, rfCommConnection.start());
        Log.e(TAG, "exBtConnected =====>> Dev: " + bluetoothDevice + " RDA DEVICE CONECTED!!  size: " + getConnectedDevices().size());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$makeAndStartRfCommConnection$1(RfCommConnection rfCommConnection) {
        handleConnectionLifecycle(rfCommConnection, rfCommConnection.start());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ BluetoothSocket lambda$startRfcommServer$0() {
        if (this.mBluetoothAdapter.isEnabled()) {
            return this.mServerSocket.accept();
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void makeAndStartRfCommConnection(BluetoothSocket bluetoothSocket) {
        final BluetoothDevice remoteDevice = bluetoothSocket.getRemoteDevice();
        final RfCommConnection rfCommConnection = new RfCommConnection(this.mExecutorService, this.mDeviceLifecycleTracker, this.mHostInfoLocator, this.mSettings, bluetoothSocket);
        Futures.addCallback(this.mExecutorService.submit(new Callable() { // from class: com.google.android.projection.sink.embedded.bluetooth.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f384a.lambda$makeAndStartRfCommConnection$1(rfCommConnection);
            }
        }), new FutureCallback<Void>() { // from class: com.google.android.projection.sink.embedded.bluetooth.BluetoothExplorer.4
            @Override // com.google.common.util.concurrent.FutureCallback
            public void onFailure(Throwable th) {
                Log.e(BluetoothExplorer.TAG, "Error bringing up RFCOMM with " + remoteDevice, th);
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public void onSuccess(Void r3) {
                BluetoothExplorer.this.mConnectedDevices.put(remoteDevice, rfCommConnection);
                Log.i(BluetoothExplorer.TAG, "Initialized connection to " + remoteDevice);
            }
        }, MoreExecutors.directExecutor());
    }

    public int bluetoothType() {
        return this.bttype;
    }

    public void exBtConnected(final BluetoothDevice bluetoothDevice) {
        String str = TAG;
        Log.e(str, "================================>>>  exBtConnected " + bluetoothDevice + "  extBluetooth.btDevice : " + this.extBluetooth.btDevice);
        if (bluetoothDevice == null || bluetoothDevice.equals(this.extBluetooth.btDevice)) {
            return;
        }
        Log.e(str, "exBtConnected =====>> device : " + bluetoothDevice);
        final RfCommConnection rfCommConnection = new RfCommConnection(this.mExecutorService, this.mDeviceLifecycleTracker, this.mHostInfoLocator, this.mSettings, this.extBluetooth);
        this.extBluetooth.btDevice = bluetoothDevice;
        Futures.addCallback(this.mExecutorService.submit(new Callable() { // from class: com.google.android.projection.sink.embedded.bluetooth.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f386a.lambda$exBtConnected$2(rfCommConnection, bluetoothDevice);
            }
        }), new FutureCallback<Void>() { // from class: com.google.android.projection.sink.embedded.bluetooth.BluetoothExplorer.6
            @Override // com.google.common.util.concurrent.FutureCallback
            public void onFailure(Throwable th) {
                Log.e(BluetoothExplorer.TAG, "Error bringing up RFCOMM with " + bluetoothDevice, th);
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public void onSuccess(Void r3) {
                Log.i(BluetoothExplorer.TAG, "Initialized connection to " + bluetoothDevice);
                BluetoothExplorer.this.mConnectedDevices.put(bluetoothDevice, rfCommConnection);
                Log.i(BluetoothExplorer.TAG, " Initialized connection to " + bluetoothDevice + " size :" + BluetoothExplorer.this.mConnectedDevices.size());
            }
        }, MoreExecutors.directExecutor());
    }

    public int getBluetoothType() {
        try {
            int i2 = SystemProperties.PROP_NAME_MAX;
            return ((Integer) SystemProperties.class.getMethod("getInt", String.class, Integer.TYPE).invoke(null, "sys.fyt.bluetooth_type", 0)).intValue();
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return 0;
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            return 0;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return 0;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return 0;
        }
    }

    @VisibleForTesting
    public Set<BluetoothDevice> getConnectedDevices() {
        return Collections.unmodifiableSet(this.mConnectedDevices.keySet());
    }

    public void removeExBluetoothDevice(BluetoothDevice bluetoothDevice) {
        Log.i(TAG, "======================>>>>   removeExBluetoothDevice : " + bluetoothDevice + " mConnectedDevices.remove ");
        if (this.mConnectedDevices.isEmpty()) {
            return;
        }
        this.mConnectedDevices.remove(bluetoothDevice);
        this.mDeviceLifecycleTracker.onDisconnectedFrom(bluetoothDevice);
    }

    public void removeWifiStartRequest() {
        Iterator<BluetoothDevice> it = this.mConnectedDevices.keySet().iterator();
        while (it.hasNext()) {
            this.mConnectedDevices.get(it.next()).removeWifiStartRequest();
        }
    }

    public void reset(BluetoothDevice bluetoothDevice) {
        RfCommConnection rfCommConnection;
        if (bluetoothDevice == null || (rfCommConnection = this.mConnectedDevices.get(bluetoothDevice)) == null) {
            return;
        }
        rfCommConnection.reset();
    }

    public void setEnable(boolean z2) {
        this.enable = z2;
    }

    public void shutdownRfcommServer() {
        this.mH.removeCallbacks(this.initExBt);
        BluetoothServerSocket bluetoothServerSocket = this.mServerSocket;
        if (bluetoothServerSocket == null) {
            return;
        }
        this.mServerSocket = null;
        try {
            try {
                bluetoothServerSocket.close();
            } catch (IOException e2) {
                Log.e(TAG, "Error closing RFCOMM server, nothing to do", e2);
            }
        } finally {
            this.mConnectedDevices.clear();
        }
    }

    public ListenableFuture<Void> startProjectingTo(final BluetoothDevice bluetoothDevice) {
        return Futures.submitAsync(new AsyncCallable<Void>() { // from class: com.google.android.projection.sink.embedded.bluetooth.BluetoothExplorer.2
            @Override // com.google.common.util.concurrent.AsyncCallable
            public ListenableFuture<Void> call() {
                RfCommConnection rfCommConnection = (RfCommConnection) BluetoothExplorer.this.mConnectedDevices.get(bluetoothDevice);
                if (rfCommConnection != null) {
                    return rfCommConnection.sendStartRequestMessage();
                }
                throw new IllegalArgumentException("RFCOMM is not connected to " + bluetoothDevice);
            }
        }, this.mExecutorService);
    }

    public synchronized void startRfcommServer() {
        String str = TAG;
        Log.e(str, "enable : " + this.enable + " bttype: " + this.bttype + " mServerSocket: " + this.mServerSocket);
        if (this.enable && this.bttype <= 0 && this.mServerSocket == null) {
            try {
                StringBuilder sb = new StringBuilder("Starting Bluetooth RFCOMM listener on UUID: ");
                UUID uuid = KNOWN_UUID;
                sb.append(uuid);
                Log.i(str, sb.toString());
                this.mServerSocket = this.mBluetoothAdapter.listenUsingRfcommWithServiceRecord("Android Auto Bluetooth RFCOMM", uuid);
                final e eVar = new e(this, 1);
                Futures.addCallback(this.mExecutorService.submit((Callable) eVar), new FutureCallback<BluetoothSocket>() { // from class: com.google.android.projection.sink.embedded.bluetooth.BluetoothExplorer.3
                    public void continueServerLoop() {
                        Futures.addCallback(BluetoothExplorer.this.mExecutorService.submit(eVar), this, BluetoothExplorer.this.mExecutorService);
                    }

                    @Override // com.google.common.util.concurrent.FutureCallback
                    public void onFailure(Throwable th) {
                        Log.i(BluetoothExplorer.TAG, "Bluetooth RFCOMM listener on UUID: " + BluetoothExplorer.KNOWN_UUID + "  onFailure : ");
                        if ((th instanceof IllegalStateException) || (th instanceof NullPointerException)) {
                            BluetoothExplorer.this.shutdownRfcommServer();
                        } else if (BluetoothExplorer.this.enable) {
                            Log.e(BluetoothExplorer.TAG, "Unexpected RFCOMM Error; continuing", th);
                            continueServerLoop();
                        }
                    }

                    @Override // com.google.common.util.concurrent.FutureCallback
                    public void onSuccess(BluetoothSocket bluetoothSocket) {
                        Log.i(BluetoothExplorer.TAG, "Bluetooth RFCOMM listener on UUID: " + BluetoothExplorer.KNOWN_UUID + "  onSuccess : " + bluetoothSocket);
                        BluetoothExplorer.this.makeAndStartRfCommConnection(bluetoothSocket);
                        continueServerLoop();
                    }
                }, this.mExecutorService);
            } catch (IOException e2) {
                Log.e(TAG, "Couldn't start RFCOMM server", e2);
            }
        }
    }

    public boolean supportWireless(String str) {
        Set<BluetoothDevice> connectedDevices = getConnectedDevices();
        if (connectedDevices.isEmpty()) {
            return false;
        }
        for (BluetoothDevice bluetoothDevice : connectedDevices) {
            Log.e("HDL", "device : " + bluetoothDevice + " mac:" + str);
            if (bluetoothDevice.getAddress().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public void teardown() {
        this.enable = false;
        shutdownRfcommServer();
        this.mExecutorService.shutdown();
        try {
            this.mExecutorService.awaitTermination(1L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
        }
        if (this.mWakeLock.isHeld()) {
            this.mWakeLock.release();
        }
    }
}
