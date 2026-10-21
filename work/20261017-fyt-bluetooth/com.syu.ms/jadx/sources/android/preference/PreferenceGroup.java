package android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import i.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference implements GenericInflater.Parent<Preference> {
    private boolean mAttachedToActivity;
    private int mCurrentPreferenceOrder;
    private boolean mOrderingAsAdded;
    private List<Preference> mPreferenceList;

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mOrderingAsAdded = true;
        this.mCurrentPreferenceOrder = 0;
        this.mAttachedToActivity = false;
        this.mPreferenceList = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.PreferenceGroup, i2, 0);
        this.mOrderingAsAdded = typedArrayObtainStyledAttributes.getBoolean(0, this.mOrderingAsAdded);
        typedArrayObtainStyledAttributes.recycle();
    }

    private boolean removePreferenceInt(Preference preference) {
        boolean zRemove;
        synchronized (this) {
            preference.onPrepareForRemoval();
            zRemove = this.mPreferenceList.remove(preference);
        }
        return zRemove;
    }

    public boolean addPreference(Preference preference) {
        if (this.mPreferenceList.contains(preference)) {
            return true;
        }
        if (preference.getOrder() == Integer.MAX_VALUE) {
            if (this.mOrderingAsAdded) {
                int i2 = this.mCurrentPreferenceOrder;
                this.mCurrentPreferenceOrder = i2 + 1;
                preference.setOrder(i2);
            }
            if (preference instanceof PreferenceGroup) {
                ((PreferenceGroup) preference).setOrderingAsAdded(this.mOrderingAsAdded);
            }
        }
        int iBinarySearch = Collections.binarySearch(this.mPreferenceList, preference);
        if (iBinarySearch < 0) {
            iBinarySearch = (iBinarySearch * (-1)) - 1;
        }
        if (!onPrepareAddPreference(preference)) {
            return false;
        }
        synchronized (this) {
            this.mPreferenceList.add(iBinarySearch, preference);
        }
        preference.onAttachedToHierarchy(getPreferenceManager());
        if (this.mAttachedToActivity) {
            preference.onAttachedToActivity();
        }
        notifyHierarchyChanged();
        return true;
    }

    @Override // android.preference.Preference
    public void dispatchRestoreInstanceState(Bundle bundle) {
        super.dispatchRestoreInstanceState(bundle);
        int preferenceCount = getPreferenceCount();
        for (int i2 = 0; i2 < preferenceCount; i2++) {
            getPreference(i2).dispatchRestoreInstanceState(bundle);
        }
    }

    @Override // android.preference.Preference
    public void dispatchSaveInstanceState(Bundle bundle) {
        super.dispatchSaveInstanceState(bundle);
        int preferenceCount = getPreferenceCount();
        for (int i2 = 0; i2 < preferenceCount; i2++) {
            getPreference(i2).dispatchSaveInstanceState(bundle);
        }
    }

    public Preference findPreference(CharSequence charSequence) {
        Preference preferenceFindPreference;
        if (TextUtils.equals(getKey(), charSequence)) {
            return this;
        }
        int preferenceCount = getPreferenceCount();
        for (int i2 = 0; i2 < preferenceCount; i2++) {
            Preference preference = getPreference(i2);
            String key = preference.getKey();
            if (key != null && key.equals(charSequence)) {
                return preference;
            }
            if ((preference instanceof PreferenceGroup) && (preferenceFindPreference = ((PreferenceGroup) preference).findPreference(charSequence)) != null) {
                return preferenceFindPreference;
            }
        }
        return null;
    }

    public Preference getPreference(int i2) {
        return this.mPreferenceList.get(i2);
    }

    public int getPreferenceCount() {
        return this.mPreferenceList.size();
    }

    public boolean isOnSameScreenAsChildren() {
        return true;
    }

    public boolean isOrderingAsAdded() {
        return this.mOrderingAsAdded;
    }

    @Override // android.preference.Preference
    public void notifyDependencyChange(boolean z2) {
        super.notifyDependencyChange(z2);
        int preferenceCount = getPreferenceCount();
        for (int i2 = 0; i2 < preferenceCount; i2++) {
            getPreference(i2).onParentChanged(this, z2);
        }
    }

    @Override // android.preference.Preference
    public void onAttachedToActivity() {
        super.onAttachedToActivity();
        this.mAttachedToActivity = true;
        int preferenceCount = getPreferenceCount();
        for (int i2 = 0; i2 < preferenceCount; i2++) {
            getPreference(i2).onAttachedToActivity();
        }
    }

    public boolean onPrepareAddPreference(Preference preference) {
        preference.onParentChanged(this, shouldDisableDependents());
        return true;
    }

    @Override // android.preference.Preference
    public void onPrepareForRemoval() {
        super.onPrepareForRemoval();
        this.mAttachedToActivity = false;
    }

    public void removeAll() {
        synchronized (this) {
            List<Preference> list = this.mPreferenceList;
            for (int size = list.size() - 1; size >= 0; size--) {
                removePreferenceInt(list.get(0));
            }
        }
        notifyHierarchyChanged();
    }

    public boolean removePreference(Preference preference) {
        boolean zRemovePreferenceInt = removePreferenceInt(preference);
        notifyHierarchyChanged();
        return zRemovePreferenceInt;
    }

    public void setOrderingAsAdded(boolean z2) {
        this.mOrderingAsAdded = z2;
    }

    public void sortPreferences() {
        synchronized (this) {
            Collections.sort(this.mPreferenceList);
        }
    }

    @Override // android.preference.GenericInflater.Parent
    public void addItemFromInflater(Preference preference) {
        addPreference(preference);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
