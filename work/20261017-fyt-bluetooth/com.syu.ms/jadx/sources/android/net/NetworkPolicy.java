package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import u.i;
import u.j;

/* JADX INFO: loaded from: classes.dex */
public class NetworkPolicy implements Parcelable, Comparable<NetworkPolicy> {
    public static final Parcelable.Creator<NetworkPolicy> CREATOR = new Parcelable.Creator<NetworkPolicy>() { // from class: android.net.NetworkPolicy.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkPolicy createFromParcel(Parcel parcel) {
            return new NetworkPolicy(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkPolicy[] newArray(int i2) {
            return new NetworkPolicy[i2];
        }
    };
    public static final int CYCLE_NONE = -1;
    private static final long DEFAULT_MTU = 1500;
    public static final long LIMIT_DISABLED = -1;
    public static final long SNOOZE_NEVER = -1;
    public static final long WARNING_DISABLED = -1;
    public int cycleDay;
    public String cycleTimezone;
    public boolean inferred;
    public long lastLimitSnooze;
    public long lastWarningSnooze;
    public long limitBytes;
    public boolean metered;
    public final NetworkTemplate template;
    public long warningBytes;

    @Deprecated
    public NetworkPolicy(NetworkTemplate networkTemplate, int i2, String str, long j2, long j3, boolean z2) {
        this(networkTemplate, i2, str, j2, j3, -1L, -1L, z2, false);
    }

    public void clearSnooze() {
        this.lastWarningSnooze = -1L;
        this.lastLimitSnooze = -1L;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NetworkPolicy)) {
            return false;
        }
        NetworkPolicy networkPolicy = (NetworkPolicy) obj;
        return this.cycleDay == networkPolicy.cycleDay && this.warningBytes == networkPolicy.warningBytes && this.limitBytes == networkPolicy.limitBytes && this.lastWarningSnooze == networkPolicy.lastWarningSnooze && this.lastLimitSnooze == networkPolicy.lastLimitSnooze && this.metered == networkPolicy.metered && this.inferred == networkPolicy.inferred && i.a(this.cycleTimezone, networkPolicy.cycleTimezone) && i.a(this.template, networkPolicy.template);
    }

    public boolean hasCycle() {
        return this.cycleDay != -1;
    }

    public int hashCode() {
        return i.b(this.template, Integer.valueOf(this.cycleDay), this.cycleTimezone, Long.valueOf(this.warningBytes), Long.valueOf(this.limitBytes), Long.valueOf(this.lastWarningSnooze), Long.valueOf(this.lastLimitSnooze), Boolean.valueOf(this.metered), Boolean.valueOf(this.inferred));
    }

    public boolean isOverLimit(long j2) {
        long j3 = j2 + 3000;
        long j4 = this.limitBytes;
        return j4 != -1 && j3 >= j4;
    }

    public boolean isOverWarning(long j2) {
        long j3 = this.warningBytes;
        return j3 != -1 && j2 >= j3;
    }

    public String toString() {
        return "NetworkPolicy[" + this.template + "]: cycleDay=" + this.cycleDay + ", cycleTimezone=" + this.cycleTimezone + ", warningBytes=" + this.warningBytes + ", limitBytes=" + this.limitBytes + ", lastWarningSnooze=" + this.lastWarningSnooze + ", lastLimitSnooze=" + this.lastLimitSnooze + ", metered=" + this.metered + ", inferred=" + this.inferred;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.template, i2);
        parcel.writeInt(this.cycleDay);
        parcel.writeString(this.cycleTimezone);
        parcel.writeLong(this.warningBytes);
        parcel.writeLong(this.limitBytes);
        parcel.writeLong(this.lastWarningSnooze);
        parcel.writeLong(this.lastLimitSnooze);
        parcel.writeInt(this.metered ? 1 : 0);
        parcel.writeInt(this.inferred ? 1 : 0);
    }

    public NetworkPolicy(NetworkTemplate networkTemplate, int i2, String str, long j2, long j3, long j4, long j5, boolean z2, boolean z3) {
        this.template = (NetworkTemplate) j.b(networkTemplate, "missing NetworkTemplate");
        this.cycleDay = i2;
        this.cycleTimezone = (String) j.b(str, "missing cycleTimezone");
        this.warningBytes = j2;
        this.limitBytes = j3;
        this.lastWarningSnooze = j4;
        this.lastLimitSnooze = j5;
        this.metered = z2;
        this.inferred = z3;
    }

    @Override // java.lang.Comparable
    public int compareTo(NetworkPolicy networkPolicy) {
        if (networkPolicy == null) {
            return -1;
        }
        long j2 = networkPolicy.limitBytes;
        if (j2 == -1) {
            return -1;
        }
        long j3 = this.limitBytes;
        return (j3 == -1 || j2 < j3) ? 1 : 0;
    }

    public NetworkPolicy(Parcel parcel) {
        this.template = (NetworkTemplate) parcel.readParcelable(null);
        this.cycleDay = parcel.readInt();
        this.cycleTimezone = parcel.readString();
        this.warningBytes = parcel.readLong();
        this.limitBytes = parcel.readLong();
        this.lastWarningSnooze = parcel.readLong();
        this.lastLimitSnooze = parcel.readLong();
        this.metered = parcel.readInt() != 0;
        this.inferred = parcel.readInt() != 0;
    }
}
