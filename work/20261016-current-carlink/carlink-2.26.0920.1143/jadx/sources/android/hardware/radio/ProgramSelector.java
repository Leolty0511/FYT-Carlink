package android.hardware.radio;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes.dex */
public final class ProgramSelector implements Parcelable {
    public static final Parcelable.Creator<ProgramSelector> CREATOR = new Parcelable.Creator<ProgramSelector>() { // from class: android.hardware.radio.ProgramSelector.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProgramSelector createFromParcel(Parcel parcel) {
            return new ProgramSelector(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProgramSelector[] newArray(int i2) {
            return new ProgramSelector[i2];
        }
    };
    public static final int IDENTIFIER_TYPE_AMFM_FREQUENCY = 1;
    public static final int IDENTIFIER_TYPE_DAB_ENSEMBLE = 6;
    public static final int IDENTIFIER_TYPE_DAB_FREQUENCY = 8;
    public static final int IDENTIFIER_TYPE_DAB_SCID = 7;
    public static final int IDENTIFIER_TYPE_DAB_SIDECC = 5;
    public static final int IDENTIFIER_TYPE_DRMO_FREQUENCY = 10;
    public static final int IDENTIFIER_TYPE_DRMO_MODULATION = 11;
    public static final int IDENTIFIER_TYPE_DRMO_SERVICE_ID = 9;
    public static final int IDENTIFIER_TYPE_HD_STATION_ID_EXT = 3;
    public static final int IDENTIFIER_TYPE_HD_SUBCHANNEL = 4;
    public static final int IDENTIFIER_TYPE_RDS_PI = 2;
    public static final int IDENTIFIER_TYPE_SXM_CHANNEL = 13;
    public static final int IDENTIFIER_TYPE_SXM_SERVICE_ID = 12;
    public static final int IDENTIFIER_TYPE_VENDOR_PRIMARY_END = 1999;
    public static final int IDENTIFIER_TYPE_VENDOR_PRIMARY_START = 1000;
    public static final int PROGRAM_TYPE_AM = 1;
    public static final int PROGRAM_TYPE_AM_HD = 3;
    public static final int PROGRAM_TYPE_DAB = 5;
    public static final int PROGRAM_TYPE_DRMO = 6;
    public static final int PROGRAM_TYPE_FM = 2;
    public static final int PROGRAM_TYPE_FM_HD = 4;
    public static final int PROGRAM_TYPE_SXM = 7;
    public static final int PROGRAM_TYPE_VENDOR_END = 1999;
    public static final int PROGRAM_TYPE_VENDOR_START = 1000;
    private final Identifier mPrimaryId;
    private final int mProgramType;
    private final Identifier[] mSecondaryIds;
    private final long[] mVendorIds;

    public static final class Identifier implements Parcelable {
        public static final Parcelable.Creator<Identifier> CREATOR = new Parcelable.Creator<Identifier>() { // from class: android.hardware.radio.ProgramSelector.Identifier.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Identifier createFromParcel(Parcel parcel) {
                return new Identifier(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Identifier[] newArray(int i2) {
                return new Identifier[i2];
            }
        };
        private final int mType;
        private final long mValue;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Identifier)) {
                return false;
            }
            Identifier identifier = (Identifier) obj;
            return identifier.getType() == this.mType && identifier.getValue() == this.mValue;
        }

        public int getType() {
            return this.mType;
        }

        public long getValue() {
            return this.mValue;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mType), Long.valueOf(this.mValue));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Identifier(");
            sb.append(this.mType);
            sb.append(", ");
            return m.k(sb, this.mValue, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mType);
            parcel.writeLong(this.mValue);
        }

        public Identifier(int i2, long j2) {
            this.mType = i2;
            this.mValue = j2;
        }

        private Identifier(Parcel parcel) {
            this.mType = parcel.readInt();
            this.mValue = parcel.readLong();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IdentifierType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ProgramType {
    }

    public static ProgramSelector createAmFmSelector(int i2, int i3) {
        return createAmFmSelector(i2, i3, 0);
    }

    private static boolean isValidAmFmFrequency(boolean z2, int i2) {
        if (z2) {
            return i2 > 150 && i2 < 30000;
        }
        return i2 > 60000 && i2 < 110000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$0(Identifier identifier) {
        return identifier == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$1(Identifier identifier) {
        return identifier == null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProgramSelector)) {
            return false;
        }
        ProgramSelector programSelector = (ProgramSelector) obj;
        return programSelector.getProgramType() == this.mProgramType && this.mPrimaryId.equals(programSelector.getPrimaryId());
    }

    public Identifier[] getAllIds(int i2) {
        ArrayList arrayList = new ArrayList();
        if (this.mPrimaryId.getType() == i2) {
            arrayList.add(this.mPrimaryId);
        }
        for (Identifier identifier : this.mSecondaryIds) {
            if (identifier.getType() == i2) {
                arrayList.add(identifier);
            }
        }
        return (Identifier[]) arrayList.toArray(new Identifier[arrayList.size()]);
    }

    public long getFirstId(int i2) {
        if (this.mPrimaryId.getType() == i2) {
            return this.mPrimaryId.getValue();
        }
        for (Identifier identifier : this.mSecondaryIds) {
            if (identifier.getType() == i2) {
                return identifier.getValue();
            }
        }
        throw new IllegalArgumentException(android.accessibilityservice.c.e("Identifier ", i2, " not found"));
    }

    public Identifier getPrimaryId() {
        return this.mPrimaryId;
    }

    public int getProgramType() {
        return this.mProgramType;
    }

    public Identifier[] getSecondaryIds() {
        return this.mSecondaryIds;
    }

    public long[] getVendorIds() {
        return this.mVendorIds;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mProgramType), this.mPrimaryId);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ProgramSelector(type=");
        sb.append(this.mProgramType);
        sb.append(", primary=");
        sb.append(this.mPrimaryId);
        if (this.mSecondaryIds.length > 0) {
            sb.append(", secondary=");
            sb.append(this.mSecondaryIds);
        }
        if (this.mVendorIds.length > 0) {
            sb.append(", vendor=");
            sb.append(this.mVendorIds);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mProgramType);
        parcel.writeTypedObject(this.mPrimaryId, 0);
        parcel.writeTypedArray(this.mSecondaryIds, 0);
        parcel.writeLongArray(this.mVendorIds);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.hardware.radio.a] */
    public ProgramSelector(int i2, Identifier identifier, Identifier[] identifierArr, long[] jArr) {
        identifierArr = identifierArr == null ? new Identifier[0] : identifierArr;
        jArr = jArr == null ? new long[0] : jArr;
        final int i3 = 1;
        if (Stream.of((Object[]) identifierArr).anyMatch(new Predicate() { // from class: android.hardware.radio.a
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (i3) {
                    case 0:
                        return ProgramSelector.lambda$new$1((ProgramSelector.Identifier) obj);
                    default:
                        return ProgramSelector.lambda$new$0((ProgramSelector.Identifier) obj);
                }
            }
        })) {
            throw new IllegalArgumentException("secondaryIds list must not contain nulls");
        }
        this.mProgramType = i2;
        Objects.requireNonNull(identifier);
        this.mPrimaryId = identifier;
        this.mSecondaryIds = identifierArr;
        this.mVendorIds = jArr;
    }

    public static ProgramSelector createAmFmSelector(int i2, int i3, int i4) {
        boolean z2 = i2 == 0 || i2 == 3;
        boolean z3 = i2 == 3 || i2 == 2;
        if (!z2 && !z3 && i2 != 1) {
            throw new IllegalArgumentException(android.accessibilityservice.c.d("Unknown band: ", i2));
        }
        if (i4 < 0 || i4 > 8) {
            throw new IllegalArgumentException(android.accessibilityservice.c.d("Invalid subchannel: ", i4));
        }
        if (i4 > 0 && !z3) {
            throw new IllegalArgumentException("Subchannels are not supported for non-HD radio");
        }
        if (isValidAmFmFrequency(z2, i3)) {
            return new ProgramSelector(z2 ? 1 : 2, new Identifier(1, i3), i4 > 0 ? new Identifier[]{new Identifier(4, i4 - 1)} : null, null);
        }
        throw new IllegalArgumentException("Provided value is not a valid AM/FM frequency");
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [android.hardware.radio.a] */
    private ProgramSelector(Parcel parcel) {
        this.mProgramType = parcel.readInt();
        Parcelable.Creator<Identifier> creator = Identifier.CREATOR;
        this.mPrimaryId = (Identifier) parcel.readTypedObject(creator);
        Identifier[] identifierArr = (Identifier[]) parcel.createTypedArray(creator);
        this.mSecondaryIds = identifierArr;
        final int i2 = 0;
        if (!Stream.of((Object[]) identifierArr).anyMatch(new Predicate() { // from class: android.hardware.radio.a
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (i2) {
                    case 0:
                        return ProgramSelector.lambda$new$1((ProgramSelector.Identifier) obj);
                    default:
                        return ProgramSelector.lambda$new$0((ProgramSelector.Identifier) obj);
                }
            }
        })) {
            this.mVendorIds = parcel.createLongArray();
            return;
        }
        throw new IllegalArgumentException("secondaryIds list must not contain nulls");
    }
}
