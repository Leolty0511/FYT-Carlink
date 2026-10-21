package android.net.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.android.internal.telephony.IccCardConstants;
import com.android.internal.util.MessageUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class ValidationProbeEvent implements Parcelable {
    public static final Parcelable.Creator<ValidationProbeEvent> CREATOR = new Parcelable.Creator<ValidationProbeEvent>() { // from class: android.net.metrics.ValidationProbeEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ValidationProbeEvent createFromParcel(Parcel parcel) {
            return new ValidationProbeEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ValidationProbeEvent[] newArray(int i2) {
            return new ValidationProbeEvent[i2];
        }
    };
    public static final int DNS_FAILURE = 0;
    public static final int DNS_SUCCESS = 1;
    private static final int FIRST_VALIDATION = 256;
    public static final int PROBE_DNS = 0;
    public static final int PROBE_FALLBACK = 4;
    public static final int PROBE_HTTP = 1;
    public static final int PROBE_HTTPS = 2;
    public static final int PROBE_PAC = 3;
    private static final int REVALIDATION = 512;
    public long durationMs;
    public int probeType;
    public int returnCode;

    public static final class Decoder {
        static final SparseArray<String> constants = MessageUtils.findMessageNames(new Class[]{ValidationProbeEvent.class}, new String[]{"PROBE_", "FIRST_", "REVALIDATION"});
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ReturnCode {
    }

    public static String getProbeName(int i2) {
        return Decoder.constants.get(i2 & 255, "PROBE_???");
    }

    public static String getValidationStage(int i2) {
        return Decoder.constants.get(i2 & 65280, IccCardConstants.INTENT_VALUE_ICC_UNKNOWN);
    }

    public static int makeProbeType(int i2, boolean z2) {
        return (i2 & 255) | (z2 ? 256 : 512);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return String.format("ValidationProbeEvent(%s:%d %s, %dms)", getProbeName(this.probeType), Integer.valueOf(this.returnCode), getValidationStage(this.probeType), Long.valueOf(this.durationMs));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.durationMs);
        parcel.writeInt(this.probeType);
        parcel.writeInt(this.returnCode);
    }

    public ValidationProbeEvent() {
    }

    private ValidationProbeEvent(Parcel parcel) {
        this.durationMs = parcel.readLong();
        this.probeType = parcel.readInt();
        this.returnCode = parcel.readInt();
    }
}
