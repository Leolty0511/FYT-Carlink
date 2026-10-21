package android.net;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.BackupUtils;
import android.util.Pair;
import android.util.RecurrenceRule;
import com.android.internal.util.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Iterator;
import java.util.Objects;

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
    private static final int VERSION_INIT = 1;
    private static final int VERSION_RULE = 2;
    public static final long WARNING_DISABLED = -1;
    public RecurrenceRule cycleRule;
    public boolean inferred;
    public long lastLimitSnooze;
    public long lastWarningSnooze;
    public long limitBytes;

    @Deprecated
    public boolean metered;
    public NetworkTemplate template;
    public long warningBytes;

    public static RecurrenceRule buildRule(int i2, ZoneId zoneId) {
        return i2 != -1 ? RecurrenceRule.buildRecurringMonthly(i2, zoneId) : RecurrenceRule.buildNever();
    }

    public static NetworkPolicy getNetworkPolicyFromBackup(DataInputStream dataInputStream) throws BackupUtils.BadVersionException, IOException {
        int i2 = dataInputStream.readInt();
        if (i2 == 1) {
            return new NetworkPolicy(NetworkTemplate.getNetworkTemplateFromBackup(dataInputStream), dataInputStream.readInt(), BackupUtils.readString(dataInputStream), dataInputStream.readLong(), dataInputStream.readLong(), dataInputStream.readLong(), dataInputStream.readLong(), dataInputStream.readInt() == 1, dataInputStream.readInt() == 1);
        }
        if (i2 == 2) {
            return new NetworkPolicy(NetworkTemplate.getNetworkTemplateFromBackup(dataInputStream), new RecurrenceRule(dataInputStream), dataInputStream.readLong(), dataInputStream.readLong(), dataInputStream.readLong(), dataInputStream.readLong(), dataInputStream.readInt() == 1, dataInputStream.readInt() == 1);
        }
        throw new BackupUtils.BadVersionException(c.d("Unknown backup version: ", i2));
    }

    public void clearSnooze() {
        this.lastWarningSnooze = -1L;
        this.lastLimitSnooze = -1L;
    }

    public Iterator<Pair<ZonedDateTime, ZonedDateTime>> cycleIterator() {
        return this.cycleRule.cycleIterator();
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
        return this.warningBytes == networkPolicy.warningBytes && this.limitBytes == networkPolicy.limitBytes && this.lastWarningSnooze == networkPolicy.lastWarningSnooze && this.lastLimitSnooze == networkPolicy.lastLimitSnooze && this.metered == networkPolicy.metered && this.inferred == networkPolicy.inferred && Objects.equals(this.template, networkPolicy.template) && Objects.equals(this.cycleRule, networkPolicy.cycleRule);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public byte[] getBytesForBackup() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeInt(2);
        dataOutputStream.write(this.template.getBytesForBackup());
        this.cycleRule.writeToStream(dataOutputStream);
        dataOutputStream.writeLong(this.warningBytes);
        dataOutputStream.writeLong(this.limitBytes);
        dataOutputStream.writeLong(this.lastWarningSnooze);
        dataOutputStream.writeLong(this.lastLimitSnooze);
        dataOutputStream.writeInt(this.metered ? 1 : 0);
        dataOutputStream.writeInt(this.inferred ? 1 : 0);
        return byteArrayOutputStream.toByteArray();
    }

    public boolean hasCycle() {
        return this.cycleRule.cycleIterator().hasNext();
    }

    public int hashCode() {
        return Objects.hash(this.template, this.cycleRule, Long.valueOf(this.warningBytes), Long.valueOf(this.limitBytes), Long.valueOf(this.lastWarningSnooze), Long.valueOf(this.lastLimitSnooze), Boolean.valueOf(this.metered), Boolean.valueOf(this.inferred));
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
        StringBuilder sb = new StringBuilder("NetworkPolicy{template=");
        sb.append(this.template);
        sb.append(" cycleRule=");
        sb.append(this.cycleRule);
        sb.append(" warningBytes=");
        sb.append(this.warningBytes);
        sb.append(" limitBytes=");
        sb.append(this.limitBytes);
        sb.append(" lastWarningSnooze=");
        sb.append(this.lastWarningSnooze);
        sb.append(" lastLimitSnooze=");
        sb.append(this.lastLimitSnooze);
        sb.append(" metered=");
        sb.append(this.metered);
        sb.append(" inferred=");
        return c.o(sb, this.inferred, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.template, i2);
        parcel.writeParcelable(this.cycleRule, i2);
        parcel.writeLong(this.warningBytes);
        parcel.writeLong(this.limitBytes);
        parcel.writeLong(this.lastWarningSnooze);
        parcel.writeLong(this.lastLimitSnooze);
        parcel.writeInt(this.metered ? 1 : 0);
        parcel.writeInt(this.inferred ? 1 : 0);
    }

    @Deprecated
    public NetworkPolicy(NetworkTemplate networkTemplate, int i2, String str, long j2, long j3, boolean z2) {
        this(networkTemplate, i2, str, j2, j3, -1L, -1L, z2, false);
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

    @Deprecated
    public NetworkPolicy(NetworkTemplate networkTemplate, int i2, String str, long j2, long j3, long j4, long j5, boolean z2, boolean z3) {
        this(networkTemplate, buildRule(i2, ZoneId.of(str)), j2, j3, j4, j5, z2, z3);
    }

    public NetworkPolicy(NetworkTemplate networkTemplate, RecurrenceRule recurrenceRule, long j2, long j3, long j4, long j5, boolean z2, boolean z3) {
        this.warningBytes = -1L;
        this.limitBytes = -1L;
        this.lastWarningSnooze = -1L;
        this.lastLimitSnooze = -1L;
        this.metered = true;
        this.inferred = false;
        this.template = (NetworkTemplate) Preconditions.checkNotNull(networkTemplate, "missing NetworkTemplate");
        this.cycleRule = (RecurrenceRule) Preconditions.checkNotNull(recurrenceRule, "missing RecurrenceRule");
        this.warningBytes = j2;
        this.limitBytes = j3;
        this.lastWarningSnooze = j4;
        this.lastLimitSnooze = j5;
        this.metered = z2;
        this.inferred = z3;
    }

    private NetworkPolicy(Parcel parcel) {
        this.warningBytes = -1L;
        this.limitBytes = -1L;
        this.lastWarningSnooze = -1L;
        this.lastLimitSnooze = -1L;
        this.metered = true;
        this.inferred = false;
        this.template = (NetworkTemplate) parcel.readParcelable(null);
        this.cycleRule = (RecurrenceRule) parcel.readParcelable(null);
        this.warningBytes = parcel.readLong();
        this.limitBytes = parcel.readLong();
        this.lastWarningSnooze = parcel.readLong();
        this.lastLimitSnooze = parcel.readLong();
        this.metered = parcel.readInt() != 0;
        this.inferred = parcel.readInt() != 0;
    }
}
