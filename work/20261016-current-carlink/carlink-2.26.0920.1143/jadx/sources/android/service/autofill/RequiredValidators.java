package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.Helper;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
final class RequiredValidators extends InternalValidator {
    public static final Parcelable.Creator<RequiredValidators> CREATOR = new Parcelable.Creator<RequiredValidators>() { // from class: android.service.autofill.RequiredValidators.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequiredValidators createFromParcel(Parcel parcel) {
            return new RequiredValidators((InternalValidator[]) parcel.readParcelableArray(null, InternalValidator.class));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequiredValidators[] newArray(int i2) {
            return new RequiredValidators[i2];
        }
    };
    private final InternalValidator[] mValidators;

    public RequiredValidators(InternalValidator[] internalValidatorArr) {
        this.mValidators = (InternalValidator[]) Preconditions.checkArrayElementsNotNull(internalValidatorArr, "validators");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.service.autofill.InternalValidator
    public boolean isValid(ValueFinder valueFinder) {
        for (InternalValidator internalValidator : this.mValidators) {
            if (!internalValidator.isValid(valueFinder)) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        if (!Helper.sDebug) {
            return super.toString();
        }
        return "RequiredValidators: [validators=" + this.mValidators + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelableArray(this.mValidators, i2);
    }
}
