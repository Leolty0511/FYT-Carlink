package android.telephony;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import r.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class CellLocation {
    public static CellLocation getEmpty() {
        int currentPhoneType = TelephonyManager.getDefault().getCurrentPhoneType();
        if (currentPhoneType == 1) {
            return new GsmCellLocation();
        }
        if (currentPhoneType != 2) {
            return null;
        }
        return new CdmaCellLocation();
    }

    public static CellLocation newFromBundle(Bundle bundle) {
        int currentPhoneType = TelephonyManager.getDefault().getCurrentPhoneType();
        if (currentPhoneType == 1) {
            return new GsmCellLocation(bundle);
        }
        if (currentPhoneType != 2) {
            return null;
        }
        return new CdmaCellLocation(bundle);
    }

    public static void requestLocationUpdate() {
        try {
            d dVarJ2 = d.a.J2(ServiceManager.getService("phone"));
            if (dVarJ2 != null) {
                dVarJ2.y0();
            }
        } catch (RemoteException unused) {
        }
    }

    public abstract void fillInNotifierBundle(Bundle bundle);

    public abstract boolean isEmpty();
}
