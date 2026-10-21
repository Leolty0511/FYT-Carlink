package android.telephony.gsm;

import android.accessibilityservice.c;
import android.os.Bundle;
import android.provider.Telephony;
import android.telephony.CellLocation;

/* JADX INFO: loaded from: classes2.dex */
public class GsmCellLocation extends CellLocation {
    private int mCid;
    private int mLac;
    private int mPsc;

    public GsmCellLocation() {
        this.mLac = -1;
        this.mCid = -1;
        this.mPsc = -1;
    }

    private static boolean equalsHandlesNulls(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public boolean equals(Object obj) {
        try {
            GsmCellLocation gsmCellLocation = (GsmCellLocation) obj;
            return obj != null && equalsHandlesNulls(Integer.valueOf(this.mLac), Integer.valueOf(gsmCellLocation.mLac)) && equalsHandlesNulls(Integer.valueOf(this.mCid), Integer.valueOf(gsmCellLocation.mCid)) && equalsHandlesNulls(Integer.valueOf(this.mPsc), Integer.valueOf(gsmCellLocation.mPsc));
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // android.telephony.CellLocation
    public void fillInNotifierBundle(Bundle bundle) {
        bundle.putInt(Telephony.CellBroadcasts.LAC, this.mLac);
        bundle.putInt("cid", this.mCid);
        bundle.putInt("psc", this.mPsc);
    }

    public int getCid() {
        return this.mCid;
    }

    public int getLac() {
        return this.mLac;
    }

    public int getPsc() {
        return this.mPsc;
    }

    public int hashCode() {
        return this.mLac ^ this.mCid;
    }

    @Override // android.telephony.CellLocation
    public boolean isEmpty() {
        return this.mLac == -1 && this.mCid == -1 && this.mPsc == -1;
    }

    public void setLacAndCid(int i2, int i3) {
        this.mLac = i2;
        this.mCid = i3;
    }

    public void setPsc(int i2) {
        this.mPsc = i2;
    }

    @Override // android.telephony.CellLocation
    public void setStateInvalid() {
        this.mLac = -1;
        this.mCid = -1;
        this.mPsc = -1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.mLac);
        sb.append(",");
        sb.append(this.mCid);
        sb.append(",");
        return c.m(sb, this.mPsc, "]");
    }

    public GsmCellLocation(Bundle bundle) {
        this.mLac = bundle.getInt(Telephony.CellBroadcasts.LAC, -1);
        this.mCid = bundle.getInt("cid", -1);
        this.mPsc = bundle.getInt("psc", -1);
    }
}
