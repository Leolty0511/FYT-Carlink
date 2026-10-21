package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.autofill.AutofillId;
import android.view.autofill.Helper;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class LuhnChecksumValidator extends InternalValidator {
    public static final Parcelable.Creator<LuhnChecksumValidator> CREATOR = new Parcelable.Creator<LuhnChecksumValidator>() { // from class: android.service.autofill.LuhnChecksumValidator.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LuhnChecksumValidator createFromParcel(Parcel parcel) {
            return new LuhnChecksumValidator((AutofillId[]) parcel.readParcelableArray(null, AutofillId.class));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LuhnChecksumValidator[] newArray(int i2) {
            return new LuhnChecksumValidator[i2];
        }
    };
    private static final String TAG = "LuhnChecksumValidator";
    private final AutofillId[] mIds;

    public LuhnChecksumValidator(AutofillId... autofillIdArr) {
        this.mIds = (AutofillId[]) Preconditions.checkArrayElementsNotNull(autofillIdArr, "ids");
    }

    private static boolean isLuhnChecksumValid(String str) {
        int i2 = 0;
        boolean z2 = false;
        for (int length = str.length() - 1; length >= 0; length--) {
            int iCharAt = str.charAt(length) - '0';
            if (iCharAt >= 0 && iCharAt <= 9) {
                if (z2 && (iCharAt = iCharAt * 2) > 9) {
                    iCharAt -= 9;
                }
                i2 += iCharAt;
                z2 = !z2;
            }
        }
        return i2 % 10 == 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.service.autofill.InternalValidator
    public boolean isValid(ValueFinder valueFinder) {
        AutofillId[] autofillIdArr = this.mIds;
        if (autofillIdArr == null || autofillIdArr.length == 0) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        for (AutofillId autofillId : this.mIds) {
            String strFindByAutofillId = valueFinder.findByAutofillId(autofillId);
            if (strFindByAutofillId == null) {
                if (Helper.sDebug) {
                    Log.d(TAG, "No partial number for id " + autofillId);
                }
                return false;
            }
            sb.append(strFindByAutofillId);
        }
        return isLuhnChecksumValid(sb.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelableArray(this.mIds, i2);
    }
}
