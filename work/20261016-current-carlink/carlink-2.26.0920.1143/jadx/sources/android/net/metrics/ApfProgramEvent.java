package android.net.metrics;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import com.android.internal.util.MessageUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
public final class ApfProgramEvent implements Parcelable {
    public static final Parcelable.Creator<ApfProgramEvent> CREATOR = new Parcelable.Creator<ApfProgramEvent>() { // from class: android.net.metrics.ApfProgramEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApfProgramEvent createFromParcel(Parcel parcel) {
            return new ApfProgramEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApfProgramEvent[] newArray(int i2) {
            return new ApfProgramEvent[i2];
        }
    };
    public static final int FLAG_HAS_IPV4_ADDRESS = 1;
    public static final int FLAG_MULTICAST_FILTER_ON = 0;
    public long actualLifetime;
    public int currentRas;
    public int filteredRas;
    public int flags;
    public long lifetime;
    public int programLength;

    public static final class Decoder {
        static final SparseArray<String> constants = MessageUtils.findMessageNames(new Class[]{ApfProgramEvent.class}, new String[]{"FLAG_"});
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public static int flagsFor(boolean z2, boolean z3) {
        int i2 = z2 ? 2 : 0;
        return z3 ? i2 | 1 : i2;
    }

    private static String namesOf(int i2) {
        ArrayList arrayList = new ArrayList(Integer.bitCount(i2));
        long j2 = i2 & Integer.MAX_VALUE;
        int i3 = 0;
        BitSet bitSetValueOf = BitSet.valueOf(new long[]{j2});
        while (true) {
            int iNextSetBit = bitSetValueOf.nextSetBit(i3);
            if (iNextSetBit < 0) {
                return TextUtils.join("|", arrayList);
            }
            arrayList.add(Decoder.constants.get(iNextSetBit));
            i3 = iNextSetBit + 1;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return String.format("ApfProgramEvent(%d/%d RAs %dB %ds/%s %s)", Integer.valueOf(this.filteredRas), Integer.valueOf(this.currentRas), Integer.valueOf(this.programLength), Long.valueOf(this.actualLifetime), this.lifetime < Long.MAX_VALUE ? m.k(new StringBuilder(), this.lifetime, "s") : "forever", namesOf(this.flags));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.lifetime);
        parcel.writeLong(this.actualLifetime);
        parcel.writeInt(this.filteredRas);
        parcel.writeInt(this.currentRas);
        parcel.writeInt(this.programLength);
        parcel.writeInt(i2);
    }

    public ApfProgramEvent() {
    }

    private ApfProgramEvent(Parcel parcel) {
        this.lifetime = parcel.readLong();
        this.actualLifetime = parcel.readLong();
        this.filteredRas = parcel.readInt();
        this.currentRas = parcel.readInt();
        this.programLength = parcel.readInt();
        this.flags = parcel.readInt();
    }
}
