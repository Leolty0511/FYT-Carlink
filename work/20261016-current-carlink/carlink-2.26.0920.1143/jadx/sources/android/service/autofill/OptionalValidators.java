package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.Helper;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
final class OptionalValidators extends InternalValidator {
    public static final Parcelable.Creator<OptionalValidators> CREATOR = new Parcelable.Creator<OptionalValidators>() { // from class: android.service.autofill.OptionalValidators.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OptionalValidators createFromParcel(Parcel parcel) {
            return new OptionalValidators((InternalValidator[]) parcel.readParcelableArray(null, InternalValidator.class));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OptionalValidators[] newArray(int i2) {
            return new OptionalValidators[i2];
        }
    };
    private final InternalValidator[] mValidators;

    public OptionalValidators(InternalValidator[] internalValidatorArr) {
        this.mValidators = (InternalValidator[]) Preconditions.checkArrayElementsNotNull(internalValidatorArr, "validators");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.service.autofill.InternalValidator
    public boolean isValid(ValueFinder valueFinder) {
        for (InternalValidator internalValidator : this.mValidators) {
            if (internalValidator.isValid(valueFinder)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        if (!Helper.sDebug) {
            return super.toString();
        }
        return "OptionalValidators: [validators=" + this.mValidators + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelableArray(this.mValidators, i2);
    }
}
