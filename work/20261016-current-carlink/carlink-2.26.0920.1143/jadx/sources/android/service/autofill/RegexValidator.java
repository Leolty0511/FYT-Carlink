package android.service.autofill;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.autofill.AutofillId;
import android.view.autofill.Helper;
import com.android.internal.util.Preconditions;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class RegexValidator extends InternalValidator {
    public static final Parcelable.Creator<RegexValidator> CREATOR = new Parcelable.Creator<RegexValidator>() { // from class: android.service.autofill.RegexValidator.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RegexValidator createFromParcel(Parcel parcel) {
            return new RegexValidator((AutofillId) parcel.readParcelable(null), (Pattern) parcel.readSerializable());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RegexValidator[] newArray(int i2) {
            return new RegexValidator[i2];
        }
    };
    private static final String TAG = "RegexValidator";
    private final AutofillId mId;
    private final Pattern mRegex;

    public RegexValidator(AutofillId autofillId, Pattern pattern) {
        this.mId = (AutofillId) Preconditions.checkNotNull(autofillId);
        this.mRegex = (Pattern) Preconditions.checkNotNull(pattern);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.service.autofill.InternalValidator
    public boolean isValid(ValueFinder valueFinder) {
        String strFindByAutofillId = valueFinder.findByAutofillId(this.mId);
        if (strFindByAutofillId == null) {
            Log.w(TAG, "No view for id " + this.mId);
            return false;
        }
        boolean zMatches = this.mRegex.matcher(strFindByAutofillId).matches();
        if (Helper.sDebug) {
            c.z("isValid(): ", zMatches, TAG);
        }
        return zMatches;
    }

    public String toString() {
        if (!Helper.sDebug) {
            return super.toString();
        }
        return "RegexValidator: [id=" + this.mId + ", regex=" + this.mRegex + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mId, i2);
        parcel.writeSerializable(this.mRegex);
    }
}
