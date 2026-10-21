package f;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.util.Log;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.protocol.GalReceiver;
import com.syu.carlink.auto.AutoFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class d0 implements GalReceiver.UserSwitchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f815a;

    public d0(AutoFragment autoFragment) {
        this.f815a = autoFragment;
    }

    @Override // com.google.android.projection.protocol.GalReceiver.UserSwitchListener
    public final void onCarConnectedDevicesRequest() {
        Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "onCarConnectedDevicesRequest");
        Set<BluetoothDevice> bondedDevices = BluetoothAdapter.getDefaultAdapter().getBondedDevices();
        ArrayList arrayList = new ArrayList(bondedDevices.size());
        Iterator<BluetoothDevice> it = bondedDevices.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            arrayList.add(new GalReceiver.ConnectedDevice(it.next().getName(), i2));
            i2++;
        }
        this.f815a.f647e.galReceiver.sendCarConnectedDevices(arrayList, false, true);
    }

    @Override // com.google.android.projection.protocol.GalReceiver.UserSwitchListener
    public final void onUserSwitchRequest(GalReceiver.ConnectedDevice connectedDevice) {
        Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "onUserSwitchRequest");
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            return;
        }
        Set<BluetoothDevice> bondedDevices = defaultAdapter.getBondedDevices();
        ArrayList arrayList = new ArrayList(bondedDevices.size());
        int i2 = 1;
        for (BluetoothDevice bluetoothDevice : bondedDevices) {
            if (!bluetoothDevice.getName().equals(connectedDevice.deviceName)) {
                arrayList.add(new GalReceiver.ConnectedDevice(bluetoothDevice.getName(), i2));
                i2++;
            }
        }
        this.f815a.f647e.galReceiver.sendCarConnectedDevices(arrayList, true, true);
    }
}
