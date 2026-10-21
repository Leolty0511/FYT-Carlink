package com.google.android.projection.transport;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import android.os.Parcelable;
import android.util.ArrayMap;
import androidx.annotation.Nullable;
import com.google.android.projection.logging.Log;
import com.google.android.projection.transport.usb.UsbAccessoryTransport;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class UsbAccessoryDelegate implements TransportFactory.TransportFactoryDelegate {
    private static final String TAG = "AHU.USB_ACC_CONNECTION";
    private final BroadcastReceiver mAccessoryDetachedReceiver;
    private final Context mAppContext;
    private final Map<UsbAccessory, TransportFactory.Callback> mCallbacks;
    private boolean mIsReceiverRegistered;

    public UsbAccessoryDelegate(Context context) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.google.android.projection.transport.UsbAccessoryDelegate.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                UsbAccessory usbAccessory;
                TransportFactory.Callback callback;
                if (!UsbManager.ACTION_USB_ACCESSORY_DETACHED.equals(intent.getAction()) || (usbAccessory = (UsbAccessory) intent.getParcelableExtra("accessory")) == null || (callback = (TransportFactory.Callback) UsbAccessoryDelegate.this.mCallbacks.remove(usbAccessory)) == null) {
                    return;
                }
                Log.i("AHU.USB_ACC_CONNECTION", "Disconnected, finishing");
                callback.onDisconnected();
            }
        };
        this.mAccessoryDetachedReceiver = broadcastReceiver;
        this.mCallbacks = new ArrayMap();
        Context applicationContext = context.getApplicationContext();
        this.mAppContext = applicationContext;
        applicationContext.registerReceiver(broadcastReceiver, new IntentFilter(UsbManager.ACTION_USB_ACCESSORY_DETACHED));
        this.mIsReceiverRegistered = true;
    }

    @Override // com.google.android.projection.transport.TransportFactory.TransportFactoryDelegate
    public void shutdown() {
        if (this.mIsReceiverRegistered) {
            this.mAppContext.unregisterReceiver(this.mAccessoryDetachedReceiver);
            this.mIsReceiverRegistered = false;
        }
    }

    @Override // com.google.android.projection.transport.TransportFactory.TransportFactoryDelegate
    @Nullable
    public TransportFactory.FactoryHandle tryOpen(Parcelable parcelable, TransportFactory.Callback callback) throws IOException {
        if (!(parcelable instanceof UsbAccessory)) {
            return null;
        }
        UsbManager usbManager = (UsbManager) this.mAppContext.getSystemService(Context.USB_SERVICE);
        if (usbManager == null) {
            throw new IOException("Unable to get USB manager");
        }
        UsbAccessory usbAccessory = (UsbAccessory) parcelable;
        UsbAccessoryTransport usbAccessoryTransport = new UsbAccessoryTransport(usbManager, usbAccessory);
        Log.d("AHU.USB_ACC_CONNECTION", "Started USB accessory connection");
        this.mCallbacks.put(usbAccessory, callback);
        callback.onConnected(usbAccessoryTransport);
        return TransportFactory.DO_NOTHING_HANDLE;
    }
}
