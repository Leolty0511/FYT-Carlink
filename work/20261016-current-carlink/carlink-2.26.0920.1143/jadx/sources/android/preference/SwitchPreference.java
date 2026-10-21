package android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.Switch;
import com.android.internal.R;

/* JADX INFO: loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    private final Listener mListener;
    private CharSequence mSwitchOff;
    private CharSequence mSwitchOn;

    public class Listener implements CompoundButton.OnCheckedChangeListener {
        private Listener() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
            if (SwitchPreference.this.callChangeListener(Boolean.valueOf(z2))) {
                SwitchPreference.this.setChecked(z2);
            } else {
                compoundButton.setChecked(!z2);
            }
        }
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mListener = new Listener();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchPreference, i2, i3);
        setSummaryOn(typedArrayObtainStyledAttributes.getString(0));
        setSummaryOff(typedArrayObtainStyledAttributes.getString(1));
        setSwitchTextOn(typedArrayObtainStyledAttributes.getString(3));
        setSwitchTextOff(typedArrayObtainStyledAttributes.getString(4));
        setDisableDependentsState(typedArrayObtainStyledAttributes.getBoolean(2, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public CharSequence getSwitchTextOff() {
        return this.mSwitchOff;
    }

    public CharSequence getSwitchTextOn() {
        return this.mSwitchOn;
    }

    @Override // android.preference.Preference
    public void onBindView(View view) {
        super.onBindView(view);
        KeyEvent.Callback callbackFindViewById = view.findViewById(16908352);
        if (callbackFindViewById != null && (callbackFindViewById instanceof Checkable)) {
            boolean z2 = callbackFindViewById instanceof Switch;
            if (z2) {
                ((Switch) callbackFindViewById).setOnCheckedChangeListener(null);
            }
            ((Checkable) callbackFindViewById).setChecked(this.mChecked);
            if (z2) {
                Switch r0 = (Switch) callbackFindViewById;
                r0.setTextOn(this.mSwitchOn);
                r0.setTextOff(this.mSwitchOff);
                r0.setOnCheckedChangeListener(this.mListener);
            }
        }
        syncSummaryView(view);
    }

    public void setSwitchTextOff(CharSequence charSequence) {
        this.mSwitchOff = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOn(CharSequence charSequence) {
        this.mSwitchOn = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOff(int i2) {
        setSwitchTextOff(getContext().getString(i2));
    }

    public void setSwitchTextOn(int i2) {
        setSwitchTextOn(getContext().getString(i2));
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843629);
    }

    public SwitchPreference(Context context) {
        this(context, null);
    }
}
