package android.hardware;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class SerialManager {
    private static final String TAG = "SerialManager";
    private final Context mContext;
    private final ISerialManager mService;

    public SerialManager(Context context, ISerialManager iSerialManager) {
        this.mContext = context;
        this.mService = iSerialManager;
    }

    public String[] getSerialPorts() {
        try {
            return this.mService.getSerialPorts();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public SerialPort openSerialPort(String str, int i2) throws IOException {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenSerialPort = this.mService.openSerialPort(str);
            if (parcelFileDescriptorOpenSerialPort != null) {
                SerialPort serialPort = new SerialPort(str);
                serialPort.open(parcelFileDescriptorOpenSerialPort, i2);
                return serialPort;
            }
            throw new IOException("Could not open serial port " + str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
