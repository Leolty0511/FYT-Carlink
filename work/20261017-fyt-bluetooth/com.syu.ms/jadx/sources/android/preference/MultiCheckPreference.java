package android.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import i.a;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class MultiCheckPreference extends DialogPreference {
    private CharSequence[] mEntries;
    private String[] mEntryValues;
    private boolean[] mOrigValues;
    private boolean[] mSetValues;
    private String mSummary;

    public MultiCheckPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ListPreference, 0, 0);
        CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(0);
        this.mEntries = textArray;
        if (textArray != null) {
            setEntries(textArray);
        }
        setEntryValuesCS(typedArrayObtainStyledAttributes.getTextArray(1));
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, a.Preference, 0, 0);
        this.mSummary = typedArrayObtainStyledAttributes2.getString(7);
        typedArrayObtainStyledAttributes2.recycle();
    }

    private void setEntryValuesCS(CharSequence[] charSequenceArr) {
        setValues(null);
        if (charSequenceArr != null) {
            this.mEntryValues = new String[charSequenceArr.length];
            for (int i2 = 0; i2 < charSequenceArr.length; i2++) {
                this.mEntryValues[i2] = charSequenceArr[i2].toString();
            }
        }
    }

    public int findIndexOfValue(String str) {
        String[] strArr;
        if (str == null || (strArr = this.mEntryValues) == null) {
            return -1;
        }
        for (int length = strArr.length - 1; length >= 0; length--) {
            if (this.mEntryValues[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    public CharSequence[] getEntries() {
        return this.mEntries;
    }

    public String[] getEntryValues() {
        return this.mEntryValues;
    }

    @Override // android.preference.Preference
    public CharSequence getSummary() {
        String str = this.mSummary;
        return str == null ? super.getSummary() : str;
    }

    public boolean getValue(int i2) {
        return this.mSetValues[i2];
    }

    public boolean[] getValues() {
        return this.mSetValues;
    }

    @Override // android.preference.DialogPreference
    public void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        if (z2 && callChangeListener(getValues())) {
            return;
        }
        boolean[] zArr = this.mOrigValues;
        boolean[] zArr2 = this.mSetValues;
        System.arraycopy(zArr, 0, zArr2, 0, zArr2.length);
    }

    @Override // android.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return typedArray.getString(i2);
    }

    @Override // android.preference.DialogPreference
    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        if (this.mEntries == null || this.mEntryValues == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        boolean[] zArr = this.mSetValues;
        this.mOrigValues = Arrays.copyOf(zArr, zArr.length);
        builder.setMultiChoiceItems(this.mEntries, this.mSetValues, new DialogInterface.OnMultiChoiceClickListener() { // from class: android.preference.MultiCheckPreference.1
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public void onClick(DialogInterface dialogInterface, int i2, boolean z2) {
                MultiCheckPreference.this.mSetValues[i2] = z2;
            }
        });
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setValues(savedState.values);
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.values = getValues();
        return savedState;
    }

    @Override // android.preference.Preference
    public void onSetInitialValue(boolean z2, Object obj) {
    }

    public void setEntries(CharSequence[] charSequenceArr) {
        this.mEntries = charSequenceArr;
        this.mSetValues = new boolean[charSequenceArr.length];
        this.mOrigValues = new boolean[charSequenceArr.length];
    }

    public void setEntryValues(String[] strArr) {
        this.mEntryValues = strArr;
        Arrays.fill(this.mSetValues, false);
        Arrays.fill(this.mOrigValues, false);
    }

    @Override // android.preference.Preference
    public void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null && this.mSummary != null) {
            this.mSummary = null;
        } else {
            if (charSequence == null || charSequence.equals(this.mSummary)) {
                return;
            }
            this.mSummary = charSequence.toString();
        }
    }

    public void setValue(int i2, boolean z2) {
        this.mSetValues[i2] = z2;
    }

    public void setValues(boolean[] zArr) {
        boolean[] zArr2 = this.mSetValues;
        if (zArr2 != null) {
            Arrays.fill(zArr2, false);
            Arrays.fill(this.mOrigValues, false);
            if (zArr != null) {
                boolean[] zArr3 = this.mSetValues;
                System.arraycopy(zArr, 0, zArr3, 0, zArr.length < zArr3.length ? zArr.length : zArr3.length);
            }
        }
    }

    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.preference.MultiCheckPreference.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public boolean[] values;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.values = parcel.createBooleanArray();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeBooleanArray(this.values);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void setEntries(int i2) {
        setEntries(getContext().getResources().getTextArray(i2));
    }

    public void setEntryValues(int i2) {
        setEntryValuesCS(getContext().getResources().getTextArray(i2));
    }

    public MultiCheckPreference(Context context) {
        this(context, null);
    }
}
