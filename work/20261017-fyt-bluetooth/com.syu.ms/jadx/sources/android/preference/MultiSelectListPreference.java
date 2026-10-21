package android.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import i.a;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class MultiSelectListPreference extends DialogPreference {
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;
    private Set<String> mNewValues;
    private boolean mPreferenceChanged;
    private Set<String> mValues;

    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mValues = new HashSet();
        this.mNewValues = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.MultiSelectListPreference, 0, 0);
        this.mEntries = typedArrayObtainStyledAttributes.getTextArray(0);
        this.mEntryValues = typedArrayObtainStyledAttributes.getTextArray(1);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, byte] */
    public static /* synthetic */ boolean access$076(MultiSelectListPreference multiSelectListPreference, int i2) {
        ?? r2 = (i2 | (multiSelectListPreference.mPreferenceChanged ? 1 : 0)) == true ? (byte) 1 : (byte) 0;
        multiSelectListPreference.mPreferenceChanged = r2;
        return r2;
    }

    private boolean[] getSelectedItems() {
        CharSequence[] charSequenceArr = this.mEntryValues;
        int length = charSequenceArr.length;
        Set<String> set = this.mValues;
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < length; i2++) {
            zArr[i2] = set.contains(charSequenceArr[i2].toString());
        }
        return zArr;
    }

    public int findIndexOfValue(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.mEntryValues) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (this.mEntryValues[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    public CharSequence[] getEntries() {
        return this.mEntries;
    }

    public CharSequence[] getEntryValues() {
        return this.mEntryValues;
    }

    public Set<String> getValues() {
        return this.mValues;
    }

    @Override // android.preference.DialogPreference
    public void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        if (z2 && this.mPreferenceChanged) {
            Set<String> set = this.mNewValues;
            if (callChangeListener(set)) {
                setValues(set);
            }
        }
        this.mPreferenceChanged = false;
    }

    @Override // android.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        CharSequence[] textArray = typedArray.getTextArray(i2);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // android.preference.DialogPreference
    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        if (this.mEntries == null || this.mEntryValues == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        builder.setMultiChoiceItems(this.mEntries, getSelectedItems(), new DialogInterface.OnMultiChoiceClickListener() { // from class: android.preference.MultiSelectListPreference.1
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public void onClick(DialogInterface dialogInterface, int i2, boolean z2) {
                if (z2) {
                    MultiSelectListPreference multiSelectListPreference = MultiSelectListPreference.this;
                    MultiSelectListPreference.access$076(multiSelectListPreference, multiSelectListPreference.mNewValues.add(MultiSelectListPreference.this.mEntryValues[i2].toString()) ? 1 : 0);
                } else {
                    MultiSelectListPreference multiSelectListPreference2 = MultiSelectListPreference.this;
                    MultiSelectListPreference.access$076(multiSelectListPreference2, multiSelectListPreference2.mNewValues.remove(MultiSelectListPreference.this.mEntryValues[i2].toString()) ? 1 : 0);
                }
            }
        });
        this.mNewValues.clear();
        this.mNewValues.addAll(this.mValues);
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
        setValues(z2 ? getPersistedStringSet(this.mValues) : (Set) obj);
    }

    public void setEntries(CharSequence[] charSequenceArr) {
        this.mEntries = charSequenceArr;
    }

    public void setEntryValues(CharSequence[] charSequenceArr) {
        this.mEntryValues = charSequenceArr;
    }

    public void setValues(Set<String> set) {
        this.mValues.clear();
        this.mValues.addAll(set);
        persistStringSet(set);
    }

    public void setEntries(int i2) {
        setEntries(getContext().getResources().getTextArray(i2));
    }

    public void setEntryValues(int i2) {
        setEntryValues(getContext().getResources().getTextArray(i2));
    }

    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.preference.MultiSelectListPreference.SavedState.1
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
        public Set<String> values;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.values = new HashSet();
            for (String str : parcel.readStringArray()) {
                this.values.add(str);
            }
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeStringArray((String[]) this.values.toArray(new String[0]));
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public MultiSelectListPreference(Context context) {
        this(context, null);
    }
}
