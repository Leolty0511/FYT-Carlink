package com.google.android.projection.sink.embedded.service;

import android.app.Service;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.projection.sink.embedded.bluetooth.BluetoothExplorer;
import com.google.android.projection.sink.embedded.transport.net.WiFiAccessPoint;
import com.google.android.projection.sink.settings.Settings;
import com.google.android.projection.sink.ui.AutoWirelessListener;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningScheduledExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.Iterator;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class BackgroundService extends Service {
    public static String EXTRA_START_REASON = "reason";
    public static String EXTRA_START_REASON_RFCOMM = "rfcomm";
    private static final String TAG = "AHU.Back";
    AutoWirelessListener.IAutoWirelessListener mListener;
    Settings mSettings = null;
    DeviceLifecycleTracker deviceLife = null;
    WiFiAccessPoint mAP = null;
    BluetoothExplorer bluetoothExplorer = null;
    private final LocalBinder mBinder = new LocalBinder();

    public class DeviceLifeTracker implements DeviceLifecycleTracker {
        public DeviceLifeTracker() {
        }

        @Override // com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker
        public ListenableFuture<Void> launchProjection(BluetoothDevice bluetoothDevice) {
            return null;
        }

        @Override // com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker
        public void onConnectedTo(UsbDevice usbDevice) {
        }

        @Override // com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker
        public void onDisconnectedFrom(UsbDevice usbDevice) {
        }

        @Override // com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker
        public void onConnectedTo(BluetoothDevice bluetoothDevice) {
            AutoWirelessListener.IAutoWirelessListener iAutoWirelessListener = BackgroundService.this.mListener;
            if (iAutoWirelessListener != null) {
                iAutoWirelessListener.onStateChange(true);
            }
        }

        @Override // com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker
        public void onDisconnectedFrom(BluetoothDevice bluetoothDevice) {
            AutoWirelessListener.IAutoWirelessListener iAutoWirelessListener = BackgroundService.this.mListener;
            if (iAutoWirelessListener != null) {
                iAutoWirelessListener.onStateChange(false);
            }
        }
    }

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public BackgroundService getService() {
            return BackgroundService.this;
        }
    }

    public void connect(final BluetoothDevice bluetoothDevice) {
        ListeningScheduledExecutorService listeningScheduledExecutorServiceListeningDecorator = MoreExecutors.listeningDecorator(Executors.newSingleThreadScheduledExecutor());
        Futures.addCallback(this.mAP.initialize(listeningScheduledExecutorServiceListeningDecorator), new FutureCallback<Void>() { // from class: com.google.android.projection.sink.embedded.service.BackgroundService.1
            @Override // com.google.common.util.concurrent.FutureCallback
            public void onFailure(Throwable th) {
                Log.e(BackgroundService.TAG, "Failed to open wifi ap ", th);
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public void onSuccess(Void r2) {
                Log.i(BackgroundService.TAG, "wifi ap opened ");
                new Thread() { // from class: com.google.android.projection.sink.embedded.service.BackgroundService.1.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException unused) {
                        }
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        BackgroundService.this.bluetoothExplorer.startProjectingTo(bluetoothDevice);
                    }
                }.start();
            }
        }, listeningScheduledExecutorServiceListeningDecorator);
    }

    public boolean isSupportWireless() {
        BluetoothExplorer bluetoothExplorer = this.bluetoothExplorer;
        return bluetoothExplorer != null && bluetoothExplorer.getConnectedDevices().size() > 0;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.deviceLife = new DeviceLifeTracker();
        this.mSettings = new Settings(this);
        this.mAP = new WiFiAccessPoint(this, this.mSettings);
        BluetoothExplorer bluetoothExplorer = new BluetoothExplorer(this, this.mSettings, this.deviceLife);
        this.bluetoothExplorer = bluetoothExplorer;
        bluetoothExplorer.startRfcommServer();
        Log.i(TAG, "=======>> onCreate");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        return 2;
    }

    public void setListener(AutoWirelessListener.IAutoWirelessListener iAutoWirelessListener) {
        this.mListener = iAutoWirelessListener;
        AutoWirelessListener.instance.setListener(iAutoWirelessListener);
        if (this.mListener == null) {
            return;
        }
        if (this.bluetoothExplorer.bluetoothType() > 0) {
            this.mListener.onStateChange(true);
            return;
        }
        Iterator<BluetoothDevice> it = this.bluetoothExplorer.getConnectedDevices().iterator();
        while (it.hasNext()) {
            BluetoothClass bluetoothClass = it.next().getBluetoothClass();
            if (bluetoothClass != null && bluetoothClass.getMajorDeviceClass() == 512) {
                this.mListener.onStateChange(true);
                return;
            }
        }
    }

    public boolean start() {
        BluetoothClass bluetoothClass;
        Iterator<BluetoothDevice> it = this.bluetoothExplorer.getConnectedDevices().iterator();
        BluetoothDevice next = null;
        while (it.hasNext() && ((bluetoothClass = (next = it.next()).getBluetoothClass()) == null || bluetoothClass.getMajorDeviceClass() != 512)) {
        }
        if (next != null) {
            Log.i(TAG, "start connect");
            connect(next);
        }
        return next != null;
    }
}
