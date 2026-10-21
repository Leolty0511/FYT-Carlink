package android.util;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ProtocolException;
import java.time.Clock;
import java.time.LocalTime;
import java.time.Period;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.temporal.TemporalAmount;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class RecurrenceRule implements Parcelable {
    private static final boolean DEBUG = true;
    private static final String TAG = "RecurrenceRule";
    private static final int VERSION_INIT = 0;
    public final ZonedDateTime end;
    public final Period period;
    public final ZonedDateTime start;
    public static Clock sClock = Clock.systemDefaultZone();
    public static final Parcelable.Creator<RecurrenceRule> CREATOR = new Parcelable.Creator<RecurrenceRule>() { // from class: android.util.RecurrenceRule.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecurrenceRule createFromParcel(Parcel parcel) {
            return new RecurrenceRule(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecurrenceRule[] newArray(int i2) {
            return new RecurrenceRule[i2];
        }
    };

    public class NonrecurringIterator implements Iterator<Pair<ZonedDateTime, ZonedDateTime>> {
        boolean hasNext;

        public NonrecurringIterator() {
            this.hasNext = (RecurrenceRule.this.start == null || RecurrenceRule.this.end == null) ? false : true;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Pair<ZonedDateTime, ZonedDateTime> next() {
            this.hasNext = false;
            RecurrenceRule recurrenceRule = RecurrenceRule.this;
            return new Pair<>(recurrenceRule.start, recurrenceRule.end);
        }
    }

    public class RecurringIterator implements Iterator<Pair<ZonedDateTime, ZonedDateTime>> {
        ZonedDateTime cycleEnd;
        ZonedDateTime cycleStart;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f205i;

        /* JADX WARN: Multi-variable type inference failed */
        public RecurringIterator() {
            ZonedDateTime zonedDateTime = RecurrenceRule.this.end;
            ZonedDateTime zonedDateTimeWithZoneSameInstant = zonedDateTime == null ? ZonedDateTime.now(RecurrenceRule.sClock).withZoneSameInstant(RecurrenceRule.this.start.getZone()) : zonedDateTime;
            Log.d(RecurrenceRule.TAG, "Resolving using anchor " + zonedDateTimeWithZoneSameInstant);
            updateCycle();
            while (zonedDateTimeWithZoneSameInstant.toEpochSecond() > this.cycleEnd.toEpochSecond()) {
                this.f205i++;
                updateCycle();
            }
            while (zonedDateTimeWithZoneSameInstant.toEpochSecond() <= this.cycleStart.toEpochSecond()) {
                this.f205i--;
                updateCycle();
            }
        }

        private ZonedDateTime roundBoundaryTime(ZonedDateTime zonedDateTime) {
            return (!RecurrenceRule.this.isMonthly() || zonedDateTime.getDayOfMonth() >= RecurrenceRule.this.start.getDayOfMonth()) ? zonedDateTime : ZonedDateTime.of(zonedDateTime.toLocalDate(), LocalTime.MAX, RecurrenceRule.this.start.getZone());
        }

        private void updateCycle() {
            RecurrenceRule recurrenceRule = RecurrenceRule.this;
            this.cycleStart = roundBoundaryTime(recurrenceRule.start.plus((TemporalAmount) recurrenceRule.period.multipliedBy(this.f205i)));
            RecurrenceRule recurrenceRule2 = RecurrenceRule.this;
            this.cycleEnd = roundBoundaryTime(recurrenceRule2.start.plus((TemporalAmount) recurrenceRule2.period.multipliedBy(this.f205i + 1)));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.cycleStart.toEpochSecond() >= RecurrenceRule.this.start.toEpochSecond();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Pair<ZonedDateTime, ZonedDateTime> next() {
            Log.d(RecurrenceRule.TAG, "Cycle " + this.f205i + " from " + this.cycleStart + " to " + this.cycleEnd);
            Pair<ZonedDateTime, ZonedDateTime> pair = new Pair<>(this.cycleStart, this.cycleEnd);
            this.f205i = this.f205i + (-1);
            updateCycle();
            return pair;
        }
    }

    @Deprecated
    public static RecurrenceRule buildNever() {
        return new RecurrenceRule(null, null, null);
    }

    @Deprecated
    public static RecurrenceRule buildRecurringMonthly(int i2, ZoneId zoneId) {
        return new RecurrenceRule(ZonedDateTime.of(ZonedDateTime.now(sClock).withZoneSameInstant(zoneId).toLocalDate().minusYears(1L).withMonth(1).withDayOfMonth(i2), LocalTime.MIDNIGHT, zoneId), null, Period.ofMonths(1));
    }

    public static String convertPeriod(Period period) {
        if (period != null) {
            return period.toString();
        }
        return null;
    }

    public static String convertZonedDateTime(ZonedDateTime zonedDateTime) {
        if (zonedDateTime != null) {
            return zonedDateTime.toString();
        }
        return null;
    }

    public Iterator<Pair<ZonedDateTime, ZonedDateTime>> cycleIterator() {
        return this.period != null ? new RecurringIterator() : new NonrecurringIterator();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RecurrenceRule)) {
            return false;
        }
        RecurrenceRule recurrenceRule = (RecurrenceRule) obj;
        return Objects.equals(this.start, recurrenceRule.start) && Objects.equals(this.end, recurrenceRule.end) && Objects.equals(this.period, recurrenceRule.period);
    }

    public int hashCode() {
        return Objects.hash(this.start, this.end, this.period);
    }

    @Deprecated
    public boolean isMonthly() {
        Period period;
        return this.start != null && (period = this.period) != null && period.getYears() == 0 && this.period.getMonths() == 1 && this.period.getDays() == 0;
    }

    public String toString() {
        return "RecurrenceRule{start=" + this.start + " end=" + this.end + " period=" + this.period + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(convertZonedDateTime(this.start));
        parcel.writeString(convertZonedDateTime(this.end));
        parcel.writeString(convertPeriod(this.period));
    }

    public void writeToStream(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(0);
        BackupUtils.writeString(dataOutputStream, convertZonedDateTime(this.start));
        BackupUtils.writeString(dataOutputStream, convertZonedDateTime(this.end));
        BackupUtils.writeString(dataOutputStream, convertPeriod(this.period));
    }

    public RecurrenceRule(ZonedDateTime zonedDateTime, ZonedDateTime zonedDateTime2, Period period) {
        this.start = zonedDateTime;
        this.end = zonedDateTime2;
        this.period = period;
    }

    public static Period convertPeriod(String str) {
        if (str != null) {
            return Period.parse(str);
        }
        return null;
    }

    public static ZonedDateTime convertZonedDateTime(String str) {
        if (str != null) {
            return ZonedDateTime.parse(str);
        }
        return null;
    }

    private RecurrenceRule(Parcel parcel) {
        this.start = convertZonedDateTime(parcel.readString());
        this.end = convertZonedDateTime(parcel.readString());
        this.period = convertPeriod(parcel.readString());
    }

    public RecurrenceRule(DataInputStream dataInputStream) throws IOException {
        int i2 = dataInputStream.readInt();
        if (i2 == 0) {
            this.start = convertZonedDateTime(BackupUtils.readString(dataInputStream));
            this.end = convertZonedDateTime(BackupUtils.readString(dataInputStream));
            this.period = convertPeriod(BackupUtils.readString(dataInputStream));
        }
        throw new ProtocolException(c.d("Unknown version ", i2));
    }
}
