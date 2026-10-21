package android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Checkable;
import com.android.internal.R;

/* JADX INFO: loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    @Override // android.preference.Preference
    public void onBindView(View view) {
        super.onBindView(view);
        KeyEvent.Callback callbackFindViewById = view.findViewById(16908289);
        if (callbackFindViewById != null && (callbackFindViewById instanceof Checkable)) {
            ((Checkable) callbackFindViewById).setChecked(this.mChecked);
        }
        syncSummaryView(view);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CheckBoxPreference, i2, i3);
        setSummaryOn(typedArrayObtainStyledAttributes.getString(0));
        setSummaryOff(typedArrayObtainStyledAttributes.getString(1));
        setDisableDependentsState(typedArrayObtainStyledAttributes.getBoolean(2, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842895);
    }

    public CheckBoxPreference(Context context) {
        this(context, null);
    }
}
