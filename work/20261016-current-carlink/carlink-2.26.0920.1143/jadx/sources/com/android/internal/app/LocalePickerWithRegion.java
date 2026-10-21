package com.android.internal.app;

import android.app.ListFragment;
import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.SearchView;
import com.android.internal.R;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class LocalePickerWithRegion extends ListFragment implements SearchView.OnQueryTextListener {
    private static final String PARENT_FRAGMENT_NAME = "localeListEditor";
    private SuggestedLocaleAdapter mAdapter;
    private LocaleSelectedListener mListener;
    private Set<LocaleStore.LocaleInfo> mLocaleList;
    private LocaleStore.LocaleInfo mParentLocale;
    private boolean mTranslatedOnly = false;
    private SearchView mSearchView = null;
    private CharSequence mPreviousSearch = null;
    private boolean mPreviousSearchHadFocus = false;
    private int mFirstVisiblePosition = 0;
    private int mTopDistance = 0;

    public interface LocaleSelectedListener {
        void onLocaleSelected(LocaleStore.LocaleInfo localeInfo);
    }

    private static LocalePickerWithRegion createCountryPicker(Context context, LocaleSelectedListener localeSelectedListener, LocaleStore.LocaleInfo localeInfo, boolean z2) {
        LocalePickerWithRegion localePickerWithRegion = new LocalePickerWithRegion();
        if (localePickerWithRegion.setListener(context, localeSelectedListener, localeInfo, z2)) {
            return localePickerWithRegion;
        }
        return null;
    }

    public static LocalePickerWithRegion createLanguagePicker(Context context, LocaleSelectedListener localeSelectedListener, boolean z2) {
        LocalePickerWithRegion localePickerWithRegion = new LocalePickerWithRegion();
        localePickerWithRegion.setListener(context, localeSelectedListener, null, z2);
        return localePickerWithRegion;
    }

    private void returnToParentFrame() {
        getFragmentManager().popBackStack(PARENT_FRAGMENT_NAME, 1);
    }

    private boolean setListener(Context context, LocaleSelectedListener localeSelectedListener, LocaleStore.LocaleInfo localeInfo, boolean z2) {
        this.mParentLocale = localeInfo;
        this.mListener = localeSelectedListener;
        this.mTranslatedOnly = z2;
        setRetainInstance(true);
        HashSet hashSet = new HashSet();
        if (!z2) {
            Collections.addAll(hashSet, LocalePicker.getLocales().toLanguageTags().split(","));
        }
        if (localeInfo != null) {
            Set<LocaleStore.LocaleInfo> levelLocales = LocaleStore.getLevelLocales(context, hashSet, localeInfo, z2);
            this.mLocaleList = levelLocales;
            if (levelLocales.size() <= 1) {
                if (localeSelectedListener == null || this.mLocaleList.size() != 1) {
                    return false;
                }
                localeSelectedListener.onLocaleSelected(this.mLocaleList.iterator().next());
                return false;
            }
        } else {
            this.mLocaleList = LocaleStore.getLevelLocales(context, hashSet, null, z2);
        }
        return true;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        if (this.mLocaleList == null) {
            returnToParentFrame();
            return;
        }
        LocaleStore.LocaleInfo localeInfo = this.mParentLocale;
        boolean z2 = localeInfo != null;
        Locale locale = z2 ? localeInfo.getLocale() : Locale.getDefault();
        this.mAdapter = new SuggestedLocaleAdapter(this.mLocaleList, z2);
        this.mAdapter.sort(new LocaleHelper.LocaleInfoComparator(locale, z2));
        setListAdapter(this.mAdapter);
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (this.mParentLocale == null) {
            menuInflater.inflate(R.menu.language_selection_list, menu);
            MenuItem menuItemFindItem = menu.findItem(R.id.locale_search_menu);
            SearchView searchView = (SearchView) menuItemFindItem.getActionView();
            this.mSearchView = searchView;
            searchView.setQueryHint(getText(R.string.search_language_hint));
            this.mSearchView.setOnQueryTextListener(this);
            if (this.mPreviousSearch != null) {
                menuItemFindItem.expandActionView();
                this.mSearchView.setIconified(false);
                this.mSearchView.setActivated(true);
                if (this.mPreviousSearchHadFocus) {
                    this.mSearchView.requestFocus();
                }
                this.mSearchView.setQuery(this.mPreviousSearch, true);
            } else {
                this.mSearchView.setQuery(null, false);
            }
            getListView().setSelectionFromTop(this.mFirstVisiblePosition, this.mTopDistance);
        }
    }

    @Override // android.app.ListFragment
    public void onListItemClick(ListView listView, View view, int i2, long j2) {
        LocaleStore.LocaleInfo localeInfo = (LocaleStore.LocaleInfo) getListAdapter().getItem(i2);
        if (localeInfo.getParent() != null) {
            LocaleSelectedListener localeSelectedListener = this.mListener;
            if (localeSelectedListener != null) {
                localeSelectedListener.onLocaleSelected(localeInfo);
            }
            returnToParentFrame();
            return;
        }
        LocalePickerWithRegion localePickerWithRegionCreateCountryPicker = createCountryPicker(getContext(), this.mListener, localeInfo, this.mTranslatedOnly);
        if (localePickerWithRegionCreateCountryPicker != null) {
            getFragmentManager().beginTransaction().setTransition(4097).replace(getId(), localePickerWithRegionCreateCountryPicker).addToBackStack(null).commitAllowingStateLoss();
        } else {
            returnToParentFrame();
        }
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        getFragmentManager().popBackStack();
        return true;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        SearchView searchView = this.mSearchView;
        if (searchView != null) {
            this.mPreviousSearchHadFocus = searchView.hasFocus();
            this.mPreviousSearch = this.mSearchView.getQuery();
        } else {
            this.mPreviousSearchHadFocus = false;
            this.mPreviousSearch = null;
        }
        ListView listView = getListView();
        View childAt = listView.getChildAt(0);
        this.mFirstVisiblePosition = listView.getFirstVisiblePosition();
        this.mTopDistance = childAt != null ? childAt.getTop() - listView.getPaddingTop() : 0;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        SuggestedLocaleAdapter suggestedLocaleAdapter = this.mAdapter;
        if (suggestedLocaleAdapter == null) {
            return false;
        }
        suggestedLocaleAdapter.getFilter().filter(str);
        return false;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        return false;
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.mParentLocale != null) {
            getActivity().setTitle(this.mParentLocale.getFullNameNative());
        } else {
            getActivity().setTitle(R.string.language_selection_title);
        }
        getListView().requestFocus();
    }
}
