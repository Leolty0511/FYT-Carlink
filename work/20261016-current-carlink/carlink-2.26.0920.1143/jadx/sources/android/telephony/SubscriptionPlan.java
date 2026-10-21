package android.telephony;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Pair;
import android.util.RecurrenceRule;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.time.Period;
import java.time.ZonedDateTime;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class SubscriptionPlan implements Parcelable {
    public static final long BYTES_UNKNOWN = -1;
    public static final long BYTES_UNLIMITED = Long.MAX_VALUE;
    public static final Parcelable.Creator<SubscriptionPlan> CREATOR = new Parcelable.Creator<SubscriptionPlan>() { // from class: android.telephony.SubscriptionPlan.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubscriptionPlan createFromParcel(Parcel parcel) {
            return new SubscriptionPlan(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubscriptionPlan[] newArray(int i2) {
            return new SubscriptionPlan[i2];
        }
    };
    public static final int LIMIT_BEHAVIOR_BILLED = 1;
    public static final int LIMIT_BEHAVIOR_DISABLED = 0;
    public static final int LIMIT_BEHAVIOR_THROTTLED = 2;
    public static final int LIMIT_BEHAVIOR_UNKNOWN = -1;
    public static final long TIME_UNKNOWN = -1;
    private final RecurrenceRule cycleRule;
    private int dataLimitBehavior;
    private long dataLimitBytes;
    private long dataUsageBytes;
    private long dataUsageTime;
    private CharSequence summary;
    private CharSequence title;

    public static class Builder {
        private final SubscriptionPlan plan;

        public Builder(ZonedDateTime zonedDateTime, ZonedDateTime zonedDateTime2, Period period) {
            this.plan = new SubscriptionPlan(new RecurrenceRule(zonedDateTime, zonedDateTime2, period));
        }

        public static Builder createNonrecurring(ZonedDateTime zonedDateTime, ZonedDateTime zonedDateTime2) {
            if (zonedDateTime2.isAfter(zonedDateTime)) {
                return new Builder(zonedDateTime, zonedDateTime2, null);
            }
            throw new IllegalArgumentException("End " + zonedDateTime2 + " isn't after start " + zonedDateTime);
        }

        public static Builder createRecurringDaily(ZonedDateTime zonedDateTime) {
            return new Builder(zonedDateTime, null, Period.ofDays(1));
        }

        public static Builder createRecurringMonthly(ZonedDateTime zonedDateTime) {
            return new Builder(zonedDateTime, null, Period.ofMonths(1));
        }

        public static Builder createRecurringWeekly(ZonedDateTime zonedDateTime) {
            return new Builder(zonedDateTime, null, Period.ofDays(7));
        }

        public SubscriptionPlan build() {
            return this.plan;
        }

        public Builder setDataLimit(long j2, int i2) {
            if (j2 < 0) {
                throw new IllegalArgumentException("Limit bytes must be positive");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Limit behavior must be defined");
            }
            this.plan.dataLimitBytes = j2;
            this.plan.dataLimitBehavior = i2;
            return this;
        }

        public Builder setDataUsage(long j2, long j3) {
            if (j2 < 0) {
                throw new IllegalArgumentException("Usage bytes must be positive");
            }
            if (j3 < 0) {
                throw new IllegalArgumentException("Usage time must be positive");
            }
            this.plan.dataUsageBytes = j2;
            this.plan.dataUsageTime = j3;
            return this;
        }

        public Builder setSummary(CharSequence charSequence) {
            this.plan.summary = charSequence;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.plan.title = charSequence;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LimitBehavior {
    }

    public Iterator<Pair<ZonedDateTime, ZonedDateTime>> cycleIterator() {
        return this.cycleRule.cycleIterator();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RecurrenceRule getCycleRule() {
        return this.cycleRule;
    }

    public int getDataLimitBehavior() {
        return this.dataLimitBehavior;
    }

    public long getDataLimitBytes() {
        return this.dataLimitBytes;
    }

    public long getDataUsageBytes() {
        return this.dataUsageBytes;
    }

    public long getDataUsageTime() {
        return this.dataUsageTime;
    }

    public CharSequence getSummary() {
        return this.summary;
    }

    public CharSequence getTitle() {
        return this.title;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SubscriptionPlan{cycleRule=");
        sb.append(this.cycleRule);
        sb.append(" title=");
        sb.append(this.title);
        sb.append(" summary=");
        sb.append(this.summary);
        sb.append(" dataLimitBytes=");
        sb.append(this.dataLimitBytes);
        sb.append(" dataLimitBehavior=");
        sb.append(this.dataLimitBehavior);
        sb.append(" dataUsageBytes=");
        sb.append(this.dataUsageBytes);
        sb.append(" dataUsageTime=");
        return m.k(sb, this.dataUsageTime, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.cycleRule, i2);
        parcel.writeCharSequence(this.title);
        parcel.writeCharSequence(this.summary);
        parcel.writeLong(this.dataLimitBytes);
        parcel.writeInt(this.dataLimitBehavior);
        parcel.writeLong(this.dataUsageBytes);
        parcel.writeLong(this.dataUsageTime);
    }

    private SubscriptionPlan(RecurrenceRule recurrenceRule) {
        this.dataLimitBytes = -1L;
        this.dataLimitBehavior = -1;
        this.dataUsageBytes = -1L;
        this.dataUsageTime = -1L;
        this.cycleRule = (RecurrenceRule) Preconditions.checkNotNull(recurrenceRule);
    }

    private SubscriptionPlan(Parcel parcel) {
        this.dataLimitBytes = -1L;
        this.dataLimitBehavior = -1;
        this.dataUsageBytes = -1L;
        this.dataUsageTime = -1L;
        this.cycleRule = (RecurrenceRule) parcel.readParcelable(null);
        this.title = parcel.readCharSequence();
        this.summary = parcel.readCharSequence();
        this.dataLimitBytes = parcel.readLong();
        this.dataLimitBehavior = parcel.readInt();
        this.dataUsageBytes = parcel.readLong();
        this.dataUsageTime = parcel.readLong();
    }
}
