package com.google.android.projection.transport;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Parcelable;
import android.util.ArrayMap;
import androidx.annotation.Nullable;
import com.google.android.projection.logging.Log;
import com.google.android.projection.transport.usb.UsbHostTransport;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class UsbHostDelegate implements TransportFactory.TransportFactoryDelegate {
    private static final String TAG = "AHU.USB_HOST_CONNECTION";
    private final Context mAppContext;
    private final Map<UsbDevice, TransportFactory.Callback> mCallbacks = new ArrayMap();
    private boolean mIsReceiverRegistered;
    private final BroadcastReceiver mReceiver;

    public UsbHostDelegate(Context context) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.google.android.projection.transport.UsbHostDelegate.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                UsbDevice usbDevice;
                TransportFactory.Callback callback;
                if (!UsbManager.ACTION_USB_DEVICE_DETACHED.equals(intent.getAction()) || (usbDevice = (UsbDevice) intent.getParcelableExtra(UsbManager.EXTRA_DEVICE)) == null || (callback = (TransportFactory.Callback) UsbHostDelegate.this.mCallbacks.remove(usbDevice)) == null) {
                    return;
                }
                Log.i("AHU.USB_HOST_CONNECTION", "Disconnected, finishing");
                callback.onDisconnected();
            }
        };
        this.mReceiver = broadcastReceiver;
        Context applicationContext = context.getApplicationContext();
        this.mAppContext = applicationContext;
        applicationContext.registerReceiver(broadcastReceiver, new IntentFilter(UsbManager.ACTION_USB_DEVICE_DETACHED));
        this.mIsReceiverRegistered = true;
    }

    @Override // com.google.android.projection.transport.TransportFactory.TransportFactoryDelegate
    public void shutdown() {
        if (this.mIsReceiverRegistered) {
            this.mAppContext.unregisterReceiver(this.mReceiver);
            this.mIsReceiverRegistered = false;
        }
    }

    @Override // com.google.android.projection.transport.TransportFactory.TransportFactoryDelegate
    @Nullable
    public TransportFactory.FactoryHandle tryOpen(Parcelable parcelable, TransportFactory.Callback callback) throws IOException {
        if (!(parcelable instanceof UsbDevice)) {
            return null;
        }
        UsbManager usbManager = (UsbManager) this.mAppContext.getSystemService(Context.USB_SERVICE);
        if (usbManager == null) {
            throw new IOException("Unable to get USB manager");
        }
        UsbDevice usbDevice = (UsbDevice) parcelable;
        UsbHostTransport usbHostTransport = new UsbHostTransport(usbManager, usbDevice);
        Log.d("AHU.USB_HOST_CONNECTION", "Started USB host connection");
        this.mCallbacks.put(usbDevice, callback);
        callback.onConnected(usbHostTransport);
        return TransportFactory.DO_NOTHING_HANDLE;
    }
}
