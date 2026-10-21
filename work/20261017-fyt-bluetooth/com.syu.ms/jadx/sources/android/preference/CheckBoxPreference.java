package android.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.CheckBoxPreference, i2, 0);
        setSummaryOn(typedArrayObtainStyledAttributes.getString(0));
        setSummaryOff(typedArrayObtainStyledAttributes.getString(1));
        setDisableDependentsState(typedArrayObtainStyledAttributes.getBoolean(2, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.preference.Preference
    public void onBindView(View view) {
        super.onBindView(view);
        View viewFindViewById = view.findViewById(R.id.checkbox);
        if (viewFindViewById != 0 && (viewFindViewById instanceof Checkable)) {
            ((Checkable) viewFindViewById).setChecked(this.mChecked);
            sendAccessibilityEvent(viewFindViewById);
        }
        syncSummaryView(view);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkBoxPreferenceStyle);
    }

    public CheckBoxPreference(Context context) {
        this(context, null);
    }
}
