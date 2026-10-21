package com.google.android.projection.sink.embedded.service;

import android.bluetooth.BluetoothDevice;
import android.hardware.usb.UsbDevice;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes3.dex */
public interface DeviceLifecycleTracker {
    ListenableFuture<Void> launchProjection(BluetoothDevice bluetoothDevice);

    void onConnectedTo(BluetoothDevice bluetoothDevice);

    void onConnectedTo(UsbDevice usbDevice);

    void onDisconnectedFrom(BluetoothDevice bluetoothDevice);

    void onDisconnectedFrom(UsbDevice usbDevice);
}
