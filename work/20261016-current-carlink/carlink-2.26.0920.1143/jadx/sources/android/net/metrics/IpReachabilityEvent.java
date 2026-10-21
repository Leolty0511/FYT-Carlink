package android.net.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.android.internal.util.MessageUtils;

/* JADX INFO: loaded from: classes.dex */
public final class IpReachabilityEvent implements Parcelable {
    public static final Parcelable.Creator<IpReachabilityEvent> CREATOR = new Parcelable.Creator<IpReachabilityEvent>() { // from class: android.net.metrics.IpReachabilityEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpReachabilityEvent createFromParcel(Parcel parcel) {
            return new IpReachabilityEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpReachabilityEvent[] newArray(int i2) {
            return new IpReachabilityEvent[i2];
        }
    };
    public static final int NUD_FAILED = 512;
    public static final int NUD_FAILED_ORGANIC = 1024;
    public static final int PROBE = 256;
    public static final int PROVISIONING_LOST = 768;
    public static final int PROVISIONING_LOST_ORGANIC = 1280;
    public final int eventType;

    public static final class Decoder {
        static final SparseArray<String> constants = MessageUtils.findMessageNames(new Class[]{IpReachabilityEvent.class}, new String[]{"PROBE", "PROVISIONING_", "NUD_"});
    }

    public static int nudFailureEventType(boolean z2, boolean z3) {
        if (z2) {
            return z3 ? 768 : 512;
        }
        return z3 ? 1280 : 1024;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        int i2 = this.eventType;
        return String.format("IpReachabilityEvent(%s:%02x)", Decoder.constants.get(65280 & i2), Integer.valueOf(i2 & 255));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.eventType);
    }

    public IpReachabilityEvent(int i2) {
        this.eventType = i2;
    }

    private IpReachabilityEvent(Parcel parcel) {
        this.eventType = parcel.readInt();
    }
}
