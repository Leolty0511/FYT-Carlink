package com.android.internal.app;

import android.content.Context;
import android.content.res.Configuration;
import android.net.wifi.WifiEnterpriseConfig;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class SuggestedLocaleAdapter extends BaseAdapter implements Filterable {
    private static final int MIN_REGIONS_FOR_SUGGESTIONS = 6;
    private static final int TYPE_HEADER_ALL_OTHERS = 1;
    private static final int TYPE_HEADER_SUGGESTED = 0;
    private static final int TYPE_LOCALE = 2;
    private final boolean mCountryMode;
    private LayoutInflater mInflater;
    private ArrayList<LocaleStore.LocaleInfo> mLocaleOptions;
    private ArrayList<LocaleStore.LocaleInfo> mOriginalLocaleOptions;
    private int mSuggestionCount;
    private Locale mDisplayLocale = null;
    private Context mContextOverride = null;

    public class FilterByNativeAndUiNames extends Filter {
        public FilterByNativeAndUiNames() {
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (SuggestedLocaleAdapter.this.mOriginalLocaleOptions == null) {
                SuggestedLocaleAdapter.this.mOriginalLocaleOptions = new ArrayList(SuggestedLocaleAdapter.this.mLocaleOptions);
            }
            ArrayList arrayList = new ArrayList(SuggestedLocaleAdapter.this.mOriginalLocaleOptions);
            if (charSequence == null || charSequence.length() == 0) {
                filterResults.values = arrayList;
                filterResults.count = arrayList.size();
            } else {
                Locale locale = Locale.getDefault();
                String strNormalizeForSearch = LocaleHelper.normalizeForSearch(charSequence.toString(), locale);
                int size = arrayList.size();
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < size; i2++) {
                    LocaleStore.LocaleInfo localeInfo = (LocaleStore.LocaleInfo) arrayList.get(i2);
                    String strNormalizeForSearch2 = LocaleHelper.normalizeForSearch(localeInfo.getFullNameInUiLanguage(), locale);
                    if (wordMatches(LocaleHelper.normalizeForSearch(localeInfo.getFullNameNative(), locale), strNormalizeForSearch) || wordMatches(strNormalizeForSearch2, strNormalizeForSearch)) {
                        arrayList2.add(localeInfo);
                    }
                }
                filterResults.values = arrayList2;
                filterResults.count = arrayList2.size();
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            SuggestedLocaleAdapter.this.mLocaleOptions = (ArrayList) filterResults.values;
            SuggestedLocaleAdapter.this.mSuggestionCount = 0;
            Iterator it = SuggestedLocaleAdapter.this.mLocaleOptions.iterator();
            while (it.hasNext()) {
                if (((LocaleStore.LocaleInfo) it.next()).isSuggested()) {
                    SuggestedLocaleAdapter.access$208(SuggestedLocaleAdapter.this);
                }
            }
            if (filterResults.count > 0) {
                SuggestedLocaleAdapter.this.notifyDataSetChanged();
            } else {
                SuggestedLocaleAdapter.this.notifyDataSetInvalidated();
            }
        }

        public boolean wordMatches(String str, String str2) {
            if (str.startsWith(str2)) {
                return true;
            }
            for (String str3 : str.split(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER)) {
                if (str3.startsWith(str2)) {
                    return true;
                }
            }
            return false;
        }
    }

    public SuggestedLocaleAdapter(Set<LocaleStore.LocaleInfo> set, boolean z2) {
        this.mCountryMode = z2;
        this.mLocaleOptions = new ArrayList<>(set.size());
        for (LocaleStore.LocaleInfo localeInfo : set) {
            if (localeInfo.isSuggested()) {
                this.mSuggestionCount++;
            }
            this.mLocaleOptions.add(localeInfo);
        }
    }

    public static /* synthetic */ int access$208(SuggestedLocaleAdapter suggestedLocaleAdapter) {
        int i2 = suggestedLocaleAdapter.mSuggestionCount;
        suggestedLocaleAdapter.mSuggestionCount = i2 + 1;
        return i2;
    }

    private void setTextTo(TextView textView, int i2) {
        Context context = this.mContextOverride;
        if (context == null) {
            textView.setText(i2);
        } else {
            textView.setText(context.getText(i2));
        }
    }

    private boolean showHeaders() {
        int i2;
        return ((this.mCountryMode && this.mLocaleOptions.size() < 6) || (i2 = this.mSuggestionCount) == 0 || i2 == this.mLocaleOptions.size()) ? false : true;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return showHeaders() ? this.mLocaleOptions.size() + 2 : this.mLocaleOptions.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new FilterByNativeAndUiNames();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        int i3;
        if (showHeaders()) {
            i3 = i2 > this.mSuggestionCount ? -2 : -1;
        } else {
            i3 = 0;
        }
        return this.mLocaleOptions.get(i2 + i3);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        if (!showHeaders()) {
            return 2;
        }
        if (i2 == 0) {
            return 0;
        }
        return i2 == this.mSuggestionCount + 1 ? 1 : 2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null && this.mInflater == null) {
            this.mInflater = LayoutInflater.from(viewGroup.getContext());
        }
        int itemViewType = getItemViewType(i2);
        if (itemViewType == 0 || itemViewType == 1) {
            if (!(view instanceof TextView)) {
                view = this.mInflater.inflate(R.layout.language_picker_section_header, viewGroup, false);
            }
            TextView textView = (TextView) view;
            if (itemViewType == 0) {
                setTextTo(textView, R.string.language_picker_section_suggested);
            } else if (this.mCountryMode) {
                setTextTo(textView, R.string.region_picker_section_all);
            } else {
                setTextTo(textView, R.string.language_picker_section_all);
            }
            Locale locale = this.mDisplayLocale;
            if (locale == null) {
                locale = Locale.getDefault();
            }
            textView.setTextLocale(locale);
        } else {
            if (!(view instanceof ViewGroup)) {
                view = this.mInflater.inflate(R.layout.language_picker_item, viewGroup, false);
            }
            TextView textView2 = (TextView) view.findViewById(R.id.locale);
            LocaleStore.LocaleInfo localeInfo = (LocaleStore.LocaleInfo) getItem(i2);
            textView2.setText(localeInfo.getLabel(this.mCountryMode));
            textView2.setTextLocale(localeInfo.getLocale());
            textView2.setContentDescription(localeInfo.getContentDescription(this.mCountryMode));
            if (this.mCountryMode) {
                int layoutDirectionFromLocale = TextUtils.getLayoutDirectionFromLocale(localeInfo.getParent());
                view.setLayoutDirection(layoutDirectionFromLocale);
                textView2.setTextDirection(layoutDirectionFromLocale == 1 ? 4 : 3);
            }
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return showHeaders() ? 3 : 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i2) {
        return getItemViewType(i2) == 2;
    }

    public void setDisplayLocale(Context context, Locale locale) {
        if (locale == null) {
            this.mDisplayLocale = null;
            this.mContextOverride = null;
        } else {
            if (locale.equals(this.mDisplayLocale)) {
                return;
            }
            this.mDisplayLocale = locale;
            Configuration configuration = new Configuration();
            configuration.setLocale(locale);
            this.mContextOverride = context.createConfigurationContext(configuration);
        }
    }

    public void sort(LocaleHelper.LocaleInfoComparator localeInfoComparator) {
        Collections.sort(this.mLocaleOptions, localeInfoComparator);
    }
}
