package android.service.autofill;

import android.accessibilityservice.c;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DebugUtils;
import android.view.autofill.AutofillId;
import android.view.autofill.Helper;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class SaveInfo implements Parcelable {
    public static final Parcelable.Creator<SaveInfo> CREATOR = new Parcelable.Creator<SaveInfo>() { // from class: android.service.autofill.SaveInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SaveInfo createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            AutofillId[] autofillIdArr = (AutofillId[]) parcel.readParcelableArray(null, AutofillId.class);
            Builder builder = autofillIdArr != null ? new Builder(i2, autofillIdArr) : new Builder(i2);
            AutofillId[] autofillIdArr2 = (AutofillId[]) parcel.readParcelableArray(null, AutofillId.class);
            if (autofillIdArr2 != null) {
                builder.setOptionalIds(autofillIdArr2);
            }
            builder.setNegativeAction(parcel.readInt(), (IntentSender) parcel.readParcelable(null));
            builder.setDescription(parcel.readCharSequence());
            CustomDescription customDescription = (CustomDescription) parcel.readParcelable(null);
            if (customDescription != null) {
                builder.setCustomDescription(customDescription);
            }
            InternalValidator internalValidator = (InternalValidator) parcel.readParcelable(null);
            if (internalValidator != null) {
                builder.setValidator(internalValidator);
            }
            builder.setFlags(parcel.readInt());
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SaveInfo[] newArray(int i2) {
            return new SaveInfo[i2];
        }
    };
    public static final int FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE = 1;
    public static final int NEGATIVE_BUTTON_STYLE_CANCEL = 0;
    public static final int NEGATIVE_BUTTON_STYLE_REJECT = 1;
    public static final int SAVE_DATA_TYPE_ADDRESS = 2;
    public static final int SAVE_DATA_TYPE_CREDIT_CARD = 4;
    public static final int SAVE_DATA_TYPE_EMAIL_ADDRESS = 16;
    public static final int SAVE_DATA_TYPE_GENERIC = 0;
    public static final int SAVE_DATA_TYPE_PASSWORD = 1;
    public static final int SAVE_DATA_TYPE_USERNAME = 8;
    private final CustomDescription mCustomDescription;
    private final CharSequence mDescription;
    private final int mFlags;
    private final IntentSender mNegativeActionListener;
    private final int mNegativeButtonStyle;
    private final AutofillId[] mOptionalIds;
    private final AutofillId[] mRequiredIds;
    private final int mType;
    private final InternalValidator mValidator;

    @Retention(RetentionPolicy.SOURCE)
    public @interface NegativeButtonStyle {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SaveDataType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SaveInfoFlags {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CustomDescription getCustomDescription() {
        return this.mCustomDescription;
    }

    public CharSequence getDescription() {
        return this.mDescription;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public IntentSender getNegativeActionListener() {
        return this.mNegativeActionListener;
    }

    public int getNegativeActionStyle() {
        return this.mNegativeButtonStyle;
    }

    public AutofillId[] getOptionalIds() {
        return this.mOptionalIds;
    }

    public AutofillId[] getRequiredIds() {
        return this.mRequiredIds;
    }

    public int getType() {
        return this.mType;
    }

    public InternalValidator getValidator() {
        return this.mValidator;
    }

    public String toString() {
        if (!Helper.sDebug) {
            return super.toString();
        }
        return "SaveInfo: [type=" + DebugUtils.flagsToString(SaveInfo.class, "SAVE_DATA_TYPE_", this.mType) + ", requiredIds=" + Arrays.toString(this.mRequiredIds) + ", optionalIds=" + Arrays.toString(this.mOptionalIds) + ", description=" + this.mDescription + DebugUtils.flagsToString(SaveInfo.class, "NEGATIVE_BUTTON_STYLE_", this.mNegativeButtonStyle) + ", mFlags=" + this.mFlags + ", mCustomDescription=" + this.mCustomDescription + ", validation=" + this.mValidator + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mType);
        parcel.writeParcelableArray(this.mRequiredIds, i2);
        parcel.writeParcelableArray(this.mOptionalIds, i2);
        parcel.writeInt(this.mNegativeButtonStyle);
        parcel.writeParcelable(this.mNegativeActionListener, i2);
        parcel.writeCharSequence(this.mDescription);
        parcel.writeParcelable(this.mCustomDescription, i2);
        parcel.writeParcelable(this.mValidator, i2);
        parcel.writeInt(this.mFlags);
    }

    private SaveInfo(Builder builder) {
        this.mType = builder.mType;
        this.mNegativeButtonStyle = builder.mNegativeButtonStyle;
        this.mNegativeActionListener = builder.mNegativeActionListener;
        this.mRequiredIds = builder.mRequiredIds;
        this.mOptionalIds = builder.mOptionalIds;
        this.mDescription = builder.mDescription;
        this.mFlags = builder.mFlags;
        this.mCustomDescription = builder.mCustomDescription;
        this.mValidator = builder.mValidator;
    }

    public static final class Builder {
        private CustomDescription mCustomDescription;
        private CharSequence mDescription;
        private boolean mDestroyed;
        private int mFlags;
        private IntentSender mNegativeActionListener;
        private int mNegativeButtonStyle;
        private AutofillId[] mOptionalIds;
        private final AutofillId[] mRequiredIds;
        private final int mType;
        private InternalValidator mValidator;

        public Builder(int i2, AutofillId[] autofillIdArr) {
            this.mNegativeButtonStyle = 0;
            this.mType = i2;
            this.mRequiredIds = assertValid(autofillIdArr);
        }

        private AutofillId[] assertValid(AutofillId[] autofillIdArr) {
            Preconditions.checkArgument(autofillIdArr != null && autofillIdArr.length > 0, "must have at least one id: " + Arrays.toString(autofillIdArr));
            for (int i2 = 0; i2 < autofillIdArr.length; i2++) {
                Preconditions.checkArgument(autofillIdArr[i2] != null, "cannot have null id: " + Arrays.toString(autofillIdArr));
            }
            return autofillIdArr;
        }

        private void throwIfDestroyed() {
            if (this.mDestroyed) {
                throw new IllegalStateException("Already called #build()");
            }
        }

        public SaveInfo build() {
            throwIfDestroyed();
            Preconditions.checkState((ArrayUtils.isEmpty(this.mRequiredIds) && ArrayUtils.isEmpty(this.mOptionalIds)) ? false : true, "must have at least one required or optional id");
            this.mDestroyed = true;
            return new SaveInfo(this);
        }

        public Builder setCustomDescription(CustomDescription customDescription) {
            throwIfDestroyed();
            Preconditions.checkState(this.mDescription == null, "Can call setDescription() or setCustomDescription(), but not both");
            this.mCustomDescription = customDescription;
            return this;
        }

        public Builder setDescription(CharSequence charSequence) {
            throwIfDestroyed();
            Preconditions.checkState(this.mCustomDescription == null, "Can call setDescription() or setCustomDescription(), but not both");
            this.mDescription = charSequence;
            return this;
        }

        public Builder setFlags(int i2) {
            throwIfDestroyed();
            this.mFlags = Preconditions.checkFlagsArgument(i2, 1);
            return this;
        }

        public Builder setNegativeAction(int i2, IntentSender intentSender) {
            throwIfDestroyed();
            if (i2 != 0 && i2 != 1) {
                throw new IllegalArgumentException(c.d("Invalid style: ", i2));
            }
            this.mNegativeButtonStyle = i2;
            this.mNegativeActionListener = intentSender;
            return this;
        }

        public Builder setOptionalIds(AutofillId[] autofillIdArr) {
            throwIfDestroyed();
            this.mOptionalIds = assertValid(autofillIdArr);
            return this;
        }

        public Builder setValidator(Validator validator) {
            throwIfDestroyed();
            Preconditions.checkArgument(validator instanceof InternalValidator, "not provided by Android System: " + validator);
            this.mValidator = (InternalValidator) validator;
            return this;
        }

        public Builder(int i2) {
            this.mNegativeButtonStyle = 0;
            this.mType = i2;
            this.mRequiredIds = null;
        }
    }
}
