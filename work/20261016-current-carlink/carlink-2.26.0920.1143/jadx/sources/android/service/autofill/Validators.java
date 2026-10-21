package android.service.autofill;

import android.accessibilityservice.c;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class Validators {
    private Validators() {
        throw new UnsupportedOperationException("contains static methods only");
    }

    public static Validator and(Validator... validatorArr) {
        return new RequiredValidators(getInternalValidators(validatorArr));
    }

    private static InternalValidator[] getInternalValidators(Validator[] validatorArr) {
        Preconditions.checkArrayElementsNotNull(validatorArr, "validators");
        InternalValidator[] internalValidatorArr = new InternalValidator[validatorArr.length];
        for (int i2 = 0; i2 < validatorArr.length; i2++) {
            boolean z2 = validatorArr[i2] instanceof InternalValidator;
            StringBuilder sbS = c.s("element ", i2, " not provided by Android System: ");
            sbS.append(validatorArr[i2]);
            Preconditions.checkArgument(z2, sbS.toString());
            internalValidatorArr[i2] = (InternalValidator) validatorArr[i2];
        }
        return internalValidatorArr;
    }

    public static Validator or(Validator... validatorArr) {
        return new OptionalValidators(getInternalValidators(validatorArr));
    }
}
