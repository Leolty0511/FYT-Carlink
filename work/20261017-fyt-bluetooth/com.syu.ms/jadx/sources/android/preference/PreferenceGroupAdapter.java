package android.preference;

import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class PreferenceGroupAdapter extends BaseAdapter implements Preference.OnPreferenceChangeInternalListener {
    private static final String TAG = "PreferenceGroupAdapter";
    private PreferenceGroup mPreferenceGroup;
    private ArrayList<PreferenceLayout> mPreferenceLayouts;
    private List<Preference> mPreferenceList;
    private PreferenceLayout mTempPreferenceLayout = new PreferenceLayout();
    private boolean mHasReturnedViewTypeCount = false;
    private volatile boolean mIsSyncing = false;
    private Handler mHandler = new Handler();
    private Runnable mSyncRunnable = new Runnable() { // from class: android.preference.PreferenceGroupAdapter.1
        @Override // java.lang.Runnable
        public void run() {
            PreferenceGroupAdapter.this.syncMyPreferences();
        }
    };

    public static class PreferenceLayout implements Comparable<PreferenceLayout> {
        private String name;
        private int resId;
        private int widgetResId;

        private PreferenceLayout() {
        }

        @Override // java.lang.Comparable
        public int compareTo(PreferenceLayout preferenceLayout) {
            int iCompareTo = this.name.compareTo(preferenceLayout.name);
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int i2 = this.resId;
            int i3 = preferenceLayout.resId;
            if (i2 != i3) {
                return i2 - i3;
            }
            int i4 = this.widgetResId;
            int i5 = preferenceLayout.widgetResId;
            if (i4 == i5) {
                return 0;
            }
            return i4 - i5;
        }
    }

    public PreferenceGroupAdapter(PreferenceGroup preferenceGroup) {
        this.mPreferenceGroup = preferenceGroup;
        preferenceGroup.setOnPreferenceChangeInternalListener(this);
        this.mPreferenceList = new ArrayList();
        this.mPreferenceLayouts = new ArrayList<>();
        syncMyPreferences();
    }

    private void addPreferenceClassName(Preference preference) {
        PreferenceLayout preferenceLayoutCreatePreferenceLayout = createPreferenceLayout(preference, null);
        int iBinarySearch = Collections.binarySearch(this.mPreferenceLayouts, preferenceLayoutCreatePreferenceLayout);
        if (iBinarySearch < 0) {
            this.mPreferenceLayouts.add((iBinarySearch * (-1)) - 1, preferenceLayoutCreatePreferenceLayout);
        }
    }

    private PreferenceLayout createPreferenceLayout(Preference preference, PreferenceLayout preferenceLayout) {
        if (preferenceLayout == null) {
            preferenceLayout = new PreferenceLayout();
        }
        preferenceLayout.name = preference.getClass().getName();
        preferenceLayout.resId = preference.getLayoutResource();
        preferenceLayout.widgetResId = preference.getWidgetLayoutResource();
        return preferenceLayout;
    }

    private void flattenPreferenceGroup(List<Preference> list, PreferenceGroup preferenceGroup) {
        preferenceGroup.sortPreferences();
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i2 = 0; i2 < preferenceCount; i2++) {
            Preference preference = preferenceGroup.getPreference(i2);
            list.add(preference);
            if (!this.mHasReturnedViewTypeCount && preference.canRecycleLayout()) {
                addPreferenceClassName(preference);
            }
            if (preference instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference;
                if (preferenceGroup2.isOnSameScreenAsChildren()) {
                    flattenPreferenceGroup(list, preferenceGroup2);
                }
            }
            preference.setOnPreferenceChangeInternalListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncMyPreferences() {
        synchronized (this) {
            if (this.mIsSyncing) {
                return;
            }
            this.mIsSyncing = true;
            ArrayList arrayList = new ArrayList(this.mPreferenceList.size());
            flattenPreferenceGroup(arrayList, this.mPreferenceGroup);
            this.mPreferenceList = arrayList;
            notifyDataSetChanged();
            synchronized (this) {
                this.mIsSyncing = false;
                notifyAll();
            }
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mPreferenceList.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        if (i2 < 0 || i2 >= getCount()) {
            return Long.MIN_VALUE;
        }
        return getItem(i2).getId();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        if (!this.mHasReturnedViewTypeCount) {
            this.mHasReturnedViewTypeCount = true;
        }
        Preference item = getItem(i2);
        if (!item.canRecycleLayout()) {
            return -1;
        }
        PreferenceLayout preferenceLayoutCreatePreferenceLayout = createPreferenceLayout(item, this.mTempPreferenceLayout);
        this.mTempPreferenceLayout = preferenceLayoutCreatePreferenceLayout;
        int iBinarySearch = Collections.binarySearch(this.mPreferenceLayouts, preferenceLayoutCreatePreferenceLayout);
        if (iBinarySearch < 0) {
            return -1;
        }
        return iBinarySearch;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        Preference item = getItem(i2);
        PreferenceLayout preferenceLayoutCreatePreferenceLayout = createPreferenceLayout(item, this.mTempPreferenceLayout);
        this.mTempPreferenceLayout = preferenceLayoutCreatePreferenceLayout;
        if (Collections.binarySearch(this.mPreferenceLayouts, preferenceLayoutCreatePreferenceLayout) < 0) {
            view = null;
        }
        return item.getView(view, viewGroup);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        if (!this.mHasReturnedViewTypeCount) {
            this.mHasReturnedViewTypeCount = true;
        }
        return Math.max(1, this.mPreferenceLayouts.size());
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i2) {
        if (i2 < 0 || i2 >= getCount()) {
            return true;
        }
        return getItem(i2).isSelectable();
    }

    @Override // android.preference.Preference.OnPreferenceChangeInternalListener
    public void onPreferenceChange(Preference preference) {
        notifyDataSetChanged();
    }

    @Override // android.preference.Preference.OnPreferenceChangeInternalListener
    public void onPreferenceHierarchyChange(Preference preference) {
        this.mHandler.removeCallbacks(this.mSyncRunnable);
        this.mHandler.post(this.mSyncRunnable);
    }

    @Override // android.widget.Adapter
    public Preference getItem(int i2) {
        if (i2 < 0 || i2 >= getCount()) {
            return null;
        }
        return this.mPreferenceList.get(i2);
    }
}
