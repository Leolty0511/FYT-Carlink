package android.hardware.cas.V1_0;

import android.app.m;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class Status {
    public static final int BAD_VALUE = 6;
    public static final int ERROR_CAS_CANNOT_HANDLE = 4;
    public static final int ERROR_CAS_DECRYPT = 13;
    public static final int ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED = 12;
    public static final int ERROR_CAS_DEVICE_REVOKED = 11;
    public static final int ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION = 9;
    public static final int ERROR_CAS_INVALID_STATE = 5;
    public static final int ERROR_CAS_LICENSE_EXPIRED = 2;
    public static final int ERROR_CAS_NOT_PROVISIONED = 7;
    public static final int ERROR_CAS_NO_LICENSE = 1;
    public static final int ERROR_CAS_RESOURCE_BUSY = 8;
    public static final int ERROR_CAS_SESSION_NOT_OPENED = 3;
    public static final int ERROR_CAS_TAMPER_DETECTED = 10;
    public static final int ERROR_CAS_UNKNOWN = 14;
    public static final int OK = 0;

    public static final String dumpBitfield(int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("OK");
        int i3 = 1;
        if ((i2 & 1) == 1) {
            arrayList.add("ERROR_CAS_NO_LICENSE");
        } else {
            i3 = 0;
        }
        if ((i2 & 2) == 2) {
            arrayList.add("ERROR_CAS_LICENSE_EXPIRED");
            i3 |= 2;
        }
        if ((i2 & 3) == 3) {
            arrayList.add("ERROR_CAS_SESSION_NOT_OPENED");
            i3 |= 3;
        }
        if ((i2 & 4) == 4) {
            arrayList.add("ERROR_CAS_CANNOT_HANDLE");
            i3 |= 4;
        }
        if ((i2 & 5) == 5) {
            arrayList.add("ERROR_CAS_INVALID_STATE");
            i3 |= 5;
        }
        if ((i2 & 6) == 6) {
            arrayList.add("BAD_VALUE");
            i3 |= 6;
        }
        if ((i2 & 7) == 7) {
            arrayList.add("ERROR_CAS_NOT_PROVISIONED");
            i3 |= 7;
        }
        if ((i2 & 8) == 8) {
            arrayList.add("ERROR_CAS_RESOURCE_BUSY");
            i3 |= 8;
        }
        if ((i2 & 9) == 9) {
            arrayList.add("ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION");
            i3 |= 9;
        }
        if ((i2 & 10) == 10) {
            arrayList.add("ERROR_CAS_TAMPER_DETECTED");
            i3 |= 10;
        }
        if ((i2 & 11) == 11) {
            arrayList.add("ERROR_CAS_DEVICE_REVOKED");
            i3 |= 11;
        }
        if ((i2 & 12) == 12) {
            arrayList.add("ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED");
            i3 |= 12;
        }
        if ((i2 & 13) == 13) {
            arrayList.add("ERROR_CAS_DECRYPT");
            i3 |= 13;
        }
        if ((i2 & 14) == 14) {
            arrayList.add("ERROR_CAS_UNKNOWN");
            i3 |= 14;
        }
        if (i2 != i3) {
            arrayList.add("0x" + Integer.toHexString(i2 & (~i3)));
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append((CharSequence) " | ");
            }
        }
        return sb.toString();
    }

    public static final String toString(int i2) {
        if (i2 == 0) {
            return "OK";
        }
        if (i2 == 1) {
            return "ERROR_CAS_NO_LICENSE";
        }
        if (i2 == 2) {
            return "ERROR_CAS_LICENSE_EXPIRED";
        }
        if (i2 == 3) {
            return "ERROR_CAS_SESSION_NOT_OPENED";
        }
        if (i2 == 4) {
            return "ERROR_CAS_CANNOT_HANDLE";
        }
        if (i2 == 5) {
            return "ERROR_CAS_INVALID_STATE";
        }
        if (i2 == 6) {
            return "BAD_VALUE";
        }
        if (i2 == 7) {
            return "ERROR_CAS_NOT_PROVISIONED";
        }
        if (i2 == 8) {
            return "ERROR_CAS_RESOURCE_BUSY";
        }
        if (i2 == 9) {
            return "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION";
        }
        if (i2 == 10) {
            return "ERROR_CAS_TAMPER_DETECTED";
        }
        if (i2 == 11) {
            return "ERROR_CAS_DEVICE_REVOKED";
        }
        if (i2 == 12) {
            return "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED";
        }
        if (i2 == 13) {
            return "ERROR_CAS_DECRYPT";
        }
        return i2 == 14 ? "ERROR_CAS_UNKNOWN" : m.d(i2, new StringBuilder("0x"));
    }
}
