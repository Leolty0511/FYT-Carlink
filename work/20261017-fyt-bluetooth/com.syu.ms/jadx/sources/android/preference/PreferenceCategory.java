package android.preference;

import android.R;
import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    private static final String TAG = "PreferenceCategory";

    public PreferenceCategory(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @Override // android.preference.Preference
    public boolean isEnabled() {
        return false;
    }

    @Override // android.preference.PreferenceGroup
    public boolean onPrepareAddPreference(Preference preference) {
        if (preference instanceof PreferenceCategory) {
            throw new IllegalArgumentException("Cannot add a PreferenceCategory directly to a PreferenceCategory");
        }
        return super.onPrepareAddPreference(preference);
    }

    @Override // android.preference.Preference
    public boolean shouldDisableDependents() {
        return !super.isEnabled();
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.preferenceCategoryStyle);
    }

    public PreferenceCategory(Context context) {
        this(context, null);
    }
}
