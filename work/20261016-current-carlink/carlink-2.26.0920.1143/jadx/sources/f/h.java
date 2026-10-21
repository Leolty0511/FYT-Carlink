package f;

import android.bluetooth.BluetoothDevice;
import android.hardware.usb.UsbDevice;
import android.util.Log;
import com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker;
import com.google.android.projection.sink.ui.AutoWirelessListener;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public final class h implements DeviceLifecycleTracker {
    @Override // com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker
    public final ListenableFuture launchProjection(BluetoothDevice bluetoothDevice) {
        Log.e("Auto", "DeviceLifeTracker launchProjection");
        return null;
    }

    @Override // com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker
    public final void onConnectedTo(BluetoothDevice bluetoothDevice) {
        if (AutoWirelessListener.instance.getListener() != null) {
            AutoWirelessListener.instance.getListener().onStateChange(true);
        }
    }

    @Override // com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker
    public final void onDisconnectedFrom(BluetoothDevice bluetoothDevice) {
        Log.e("Auto", "DeviceLifeTracker onDisconnectedFrom");
        if (AutoWirelessListener.instance.getListener() != null) {
            AutoWirelessListener.instance.getListener().onStateChange(false);
        }
    }

    @Override // com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker
    public final void onConnectedTo(UsbDevice usbDevice) {
        Log.e("Auto", "DeviceLifeTracker onDisconnectedFrom");
    }

    @Override // com.google.android.projection.sink.embedded.service.DeviceLifecycleTracker
    public final void onDisconnectedFrom(UsbDevice usbDevice) {
        Log.e("Auto", "DeviceLifeTracker onDisconnectedFrom");
    }
}
