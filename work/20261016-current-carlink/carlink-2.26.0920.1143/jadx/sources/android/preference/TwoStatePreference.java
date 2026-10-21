package android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {
    boolean mChecked;
    private boolean mCheckedSet;
    private boolean mDisableDependentsState;
    private CharSequence mSummaryOff;
    private CharSequence mSummaryOn;

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    public boolean getDisableDependentsState() {
        return this.mDisableDependentsState;
    }

    public CharSequence getSummaryOff() {
        return this.mSummaryOff;
    }

    public CharSequence getSummaryOn() {
        return this.mSummaryOn;
    }

    public boolean isChecked() {
        return this.mChecked;
    }

    @Override // android.preference.Preference
    public void onClick() {
        super.onClick();
        boolean z2 = !isChecked();
        if (callChangeListener(Boolean.valueOf(z2))) {
            setChecked(z2);
        }
    }

    @Override // android.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return Boolean.valueOf(typedArray.getBoolean(i2, false));
    }

    @Override // android.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.checked);
    }

    @Override // android.preference.Preference
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.checked = isChecked();
        return savedState;
    }

    @Override // android.preference.Preference
    public void onSetInitialValue(boolean z2, Object obj) {
        setChecked(z2 ? getPersistedBoolean(this.mChecked) : ((Boolean) obj).booleanValue());
    }

    public void setChecked(boolean z2) {
        boolean z3 = this.mChecked != z2;
        if (z3 || !this.mCheckedSet) {
            this.mChecked = z2;
            this.mCheckedSet = true;
            persistBoolean(z2);
            if (z3) {
                notifyDependencyChange(shouldDisableDependents());
                notifyChanged();
            }
        }
    }

    public void setDisableDependentsState(boolean z2) {
        this.mDisableDependentsState = z2;
    }

    public void setSummaryOff(CharSequence charSequence) {
        this.mSummaryOff = charSequence;
        if (isChecked()) {
            return;
        }
        notifyChanged();
    }

    public void setSummaryOn(CharSequence charSequence) {
        this.mSummaryOn = charSequence;
        if (isChecked()) {
            notifyChanged();
        }
    }

    @Override // android.preference.Preference
    public boolean shouldDisableDependents() {
        boolean z2;
        if (this.mDisableDependentsState) {
            z2 = this.mChecked;
        } else {
            z2 = !this.mChecked;
        }
        return z2 || super.shouldDisableDependents();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    /* JADX WARN: Code duplicated, block: B:19:0x003e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    /* JADX WARN: Code duplicated, block: B:25:0x004d  */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    public void syncSummaryView(View view) {
        boolean z2;
        int i2;
        CharSequence summary;
        TextView textView = (TextView) view.findViewById(16908304);
        if (textView != null) {
            if (!this.mChecked || TextUtils.isEmpty(this.mSummaryOn)) {
                if (this.mChecked || TextUtils.isEmpty(this.mSummaryOff)) {
                    z2 = true;
                } else {
                    textView.setText(this.mSummaryOff);
                }
                if (z2) {
                    summary = getSummary();
                    if (!TextUtils.isEmpty(summary)) {
                        textView.setText(summary);
                        z2 = false;
                    }
                }
                i2 = z2 ? 8 : 0;
                if (i2 != textView.getVisibility()) {
                    textView.setVisibility(i2);
                }
            }
            textView.setText(this.mSummaryOn);
            z2 = false;
            if (z2) {
                summary = getSummary();
                if (!TextUtils.isEmpty(summary)) {
                    textView.setText(summary);
                    z2 = false;
                }
            }
            if (z2) {
            }
            if (i2 != textView.getVisibility()) {
                textView.setVisibility(i2);
            }
        }
    }

    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.preference.TwoStatePreference.SavedState.1
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
        boolean checked;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.checked = parcel.readInt() == 1;
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.checked ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoStatePreference(Context context) {
        this(context, null);
    }

    public void setSummaryOff(int i2) {
        setSummaryOff(getContext().getString(i2));
    }

    public void setSummaryOn(int i2) {
        setSummaryOn(getContext().getString(i2));
    }
}
