package android.service.notification;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class SnoozeCriterion implements Parcelable {
    public static final Parcelable.Creator<SnoozeCriterion> CREATOR = new Parcelable.Creator<SnoozeCriterion>() { // from class: android.service.notification.SnoozeCriterion.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SnoozeCriterion createFromParcel(Parcel parcel) {
            return new SnoozeCriterion(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SnoozeCriterion[] newArray(int i2) {
            return new SnoozeCriterion[i2];
        }
    };
    private final CharSequence mConfirmation;
    private final CharSequence mExplanation;
    private final String mId;

    public SnoozeCriterion(String str, CharSequence charSequence, CharSequence charSequence2) {
        this.mId = str;
        this.mExplanation = charSequence;
        this.mConfirmation = charSequence2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SnoozeCriterion.class != obj.getClass()) {
            return false;
        }
        SnoozeCriterion snoozeCriterion = (SnoozeCriterion) obj;
        String str = this.mId;
        if (str == null ? snoozeCriterion.mId != null : !str.equals(snoozeCriterion.mId)) {
            return false;
        }
        CharSequence charSequence = this.mExplanation;
        if (charSequence == null ? snoozeCriterion.mExplanation != null : !charSequence.equals(snoozeCriterion.mExplanation)) {
            return false;
        }
        CharSequence charSequence2 = this.mConfirmation;
        CharSequence charSequence3 = snoozeCriterion.mConfirmation;
        if (charSequence2 != null) {
            return charSequence2.equals(charSequence3);
        }
        return charSequence3 == null;
    }

    public CharSequence getConfirmation() {
        return this.mConfirmation;
    }

    public CharSequence getExplanation() {
        return this.mExplanation;
    }

    public String getId() {
        return this.mId;
    }

    public int hashCode() {
        String str = this.mId;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        CharSequence charSequence = this.mExplanation;
        int iHashCode2 = (iHashCode + (charSequence != null ? charSequence.hashCode() : 0)) * 31;
        CharSequence charSequence2 = this.mConfirmation;
        return iHashCode2 + (charSequence2 != null ? charSequence2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mId != null) {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.mId);
        } else {
            parcel.writeByte((byte) 0);
        }
        if (this.mExplanation != null) {
            parcel.writeByte((byte) 1);
            parcel.writeCharSequence(this.mExplanation);
        } else {
            parcel.writeByte((byte) 0);
        }
        if (this.mConfirmation == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeCharSequence(this.mConfirmation);
        }
    }

    public SnoozeCriterion(Parcel parcel) {
        if (parcel.readByte() != 0) {
            this.mId = parcel.readString();
        } else {
            this.mId = null;
        }
        if (parcel.readByte() != 0) {
            this.mExplanation = parcel.readCharSequence();
        } else {
            this.mExplanation = null;
        }
        if (parcel.readByte() != 0) {
            this.mConfirmation = parcel.readCharSequence();
        } else {
            this.mConfirmation = null;
        }
    }
}
