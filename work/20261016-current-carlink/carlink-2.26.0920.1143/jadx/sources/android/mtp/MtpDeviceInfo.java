package android.mtp;

/* JADX INFO: loaded from: classes.dex */
public class MtpDeviceInfo {
    private int[] mEventsSupported;
    private String mManufacturer;
    private String mModel;
    private int[] mOperationsSupported;
    private String mSerialNumber;
    private String mVersion;

    private MtpDeviceInfo() {
    }

    private static boolean isSupported(int[] iArr, int i2) {
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    public final int[] getEventsSupported() {
        return this.mEventsSupported;
    }

    public final String getManufacturer() {
        return this.mManufacturer;
    }

    public final String getModel() {
        return this.mModel;
    }

    public final int[] getOperationsSupported() {
        return this.mOperationsSupported;
    }

    public final String getSerialNumber() {
        return this.mSerialNumber;
    }

    public final String getVersion() {
        return this.mVersion;
    }

    public boolean isEventSupported(int i2) {
        return isSupported(this.mEventsSupported, i2);
    }

    public boolean isOperationSupported(int i2) {
        return isSupported(this.mOperationsSupported, i2);
    }
}
