package android.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.Switch;
import i.a;

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

    public SwitchPreference(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mListener = new Listener();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.SwitchPreference, i2, 0);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.preference.Preference
    public void onBindView(View view) {
        super.onBindView(view);
        View viewFindViewById = view.findViewById(16909067);
        if (viewFindViewById != 0 && (viewFindViewById instanceof Checkable)) {
            ((Checkable) viewFindViewById).setChecked(this.mChecked);
            sendAccessibilityEvent(viewFindViewById);
            if (viewFindViewById instanceof Switch) {
                Switch r1 = (Switch) viewFindViewById;
                r1.setTextOn(this.mSwitchOn);
                r1.setTextOff(this.mSwitchOff);
                r1.setOnCheckedChangeListener(this.mListener);
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

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchPreferenceStyle);
    }

    public SwitchPreference(Context context) {
        this(context, null);
    }
}
