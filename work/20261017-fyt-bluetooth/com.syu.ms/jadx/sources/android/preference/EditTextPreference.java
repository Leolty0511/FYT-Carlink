package android.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {
    private EditText mEditText;
    private String mText;

    public EditTextPreference(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        EditText editText = new EditText(context, attributeSet);
        this.mEditText = editText;
        editText.setId(R.id.edit);
        this.mEditText.setEnabled(true);
    }

    public EditText getEditText() {
        return this.mEditText;
    }

    public String getText() {
        return this.mText;
    }

    @Override // android.preference.DialogPreference
    public boolean needInputMethod() {
        return true;
    }

    public void onAddEditTextToDialogView(View view, EditText editText) {
        ViewGroup viewGroup = (ViewGroup) view.findViewById(16909058);
        if (viewGroup != null) {
            viewGroup.addView(editText, -1, -2);
        }
    }

    @Override // android.preference.DialogPreference
    public void onBindDialogView(View view) {
        super.onBindDialogView(view);
        EditText editText = this.mEditText;
        editText.setText(getText());
        ViewParent parent = editText.getParent();
        if (parent != view) {
            if (parent != null) {
                ((ViewGroup) parent).removeView(editText);
            }
            onAddEditTextToDialogView(view, editText);
        }
    }

    @Override // android.preference.DialogPreference
    public void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        if (z2) {
            String string = this.mEditText.getText().toString();
            if (callChangeListener(string)) {
                setText(string);
            }
        }
    }

    @Override // android.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return typedArray.getString(i2);
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.text);
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.text = getText();
        return savedState;
    }

    @Override // android.preference.Preference
    public void onSetInitialValue(boolean z2, Object obj) {
        setText(z2 ? getPersistedString(this.mText) : (String) obj);
    }

    public void setText(String str) {
        boolean zShouldDisableDependents = shouldDisableDependents();
        this.mText = str;
        persistString(str);
        boolean zShouldDisableDependents2 = shouldDisableDependents();
        if (zShouldDisableDependents2 != zShouldDisableDependents) {
            notifyDependencyChange(zShouldDisableDependents2);
        }
    }

    @Override // android.preference.Preference
    public boolean shouldDisableDependents() {
        return TextUtils.isEmpty(this.mText) || super.shouldDisableDependents();
    }

    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.preference.EditTextPreference.SavedState.1
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
        public String text;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.text = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeString(this.text);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextPreferenceStyle);
    }

    public EditTextPreference(Context context) {
        this(context, null);
    }
}
