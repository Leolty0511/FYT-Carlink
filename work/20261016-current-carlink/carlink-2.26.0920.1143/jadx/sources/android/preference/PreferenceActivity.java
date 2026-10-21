package android.preference;

import android.accessibilityservice.c;
import android.animation.LayoutTransition;
import android.app.Fragment;
import android.app.FragmentBreadCrumbs;
import android.app.FragmentTransaction;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Downloads;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.internal.R;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class PreferenceActivity extends ListActivity implements PreferenceManager.OnPreferenceTreeClickListener, PreferenceFragment.OnPreferenceStartFragmentCallback {
    private static final String BACK_STACK_PREFS = ":android:prefs";
    private static final String CUR_HEADER_TAG = ":android:cur_header";
    public static final String EXTRA_NO_HEADERS = ":android:no_headers";
    private static final String EXTRA_PREFS_SET_BACK_TEXT = "extra_prefs_set_back_text";
    private static final String EXTRA_PREFS_SET_NEXT_TEXT = "extra_prefs_set_next_text";
    private static final String EXTRA_PREFS_SHOW_BUTTON_BAR = "extra_prefs_show_button_bar";
    private static final String EXTRA_PREFS_SHOW_SKIP = "extra_prefs_show_skip";
    public static final String EXTRA_SHOW_FRAGMENT = ":android:show_fragment";
    public static final String EXTRA_SHOW_FRAGMENT_ARGUMENTS = ":android:show_fragment_args";
    public static final String EXTRA_SHOW_FRAGMENT_SHORT_TITLE = ":android:show_fragment_short_title";
    public static final String EXTRA_SHOW_FRAGMENT_TITLE = ":android:show_fragment_title";
    private static final int FIRST_REQUEST_CODE = 100;
    private static final String HEADERS_TAG = ":android:headers";
    public static final long HEADER_ID_UNDEFINED = -1;
    private static final int MSG_BIND_PREFERENCES = 1;
    private static final int MSG_BUILD_HEADERS = 2;
    private static final String PREFERENCES_TAG = ":android:preferences";
    private static final String TAG = "PreferenceActivity";
    private CharSequence mActivityTitle;
    private Header mCurHeader;
    private FragmentBreadCrumbs mFragmentBreadCrumbs;
    private ViewGroup mHeadersContainer;
    private FrameLayout mListFooter;
    private Button mNextButton;
    private PreferenceManager mPreferenceManager;
    private ViewGroup mPrefsContainer;
    private Bundle mSavedInstanceState;
    private boolean mSinglePane;
    private final ArrayList<Header> mHeaders = new ArrayList<>();
    private int mPreferenceHeaderItemResId = 0;
    private boolean mPreferenceHeaderRemoveEmptyIcon = false;
    private Handler mHandler = new Handler() { // from class: android.preference.PreferenceActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            PreferenceActivity preferenceActivity;
            Header headerFindBestMatchingHeader;
            int i2 = message.what;
            if (i2 == 1) {
                PreferenceActivity.this.bindPreferences();
                return;
            }
            if (i2 != 2) {
                return;
            }
            ArrayList<Header> arrayList = new ArrayList<>(PreferenceActivity.this.mHeaders);
            PreferenceActivity.this.mHeaders.clear();
            PreferenceActivity preferenceActivity2 = PreferenceActivity.this;
            preferenceActivity2.onBuildHeaders(preferenceActivity2.mHeaders);
            if (((ListActivity) PreferenceActivity.this).mAdapter instanceof BaseAdapter) {
                ((BaseAdapter) ((ListActivity) PreferenceActivity.this).mAdapter).notifyDataSetChanged();
            }
            Header headerOnGetNewHeader = PreferenceActivity.this.onGetNewHeader();
            if (headerOnGetNewHeader == null || headerOnGetNewHeader.fragment == null) {
                if (PreferenceActivity.this.mCurHeader == null || (headerFindBestMatchingHeader = (preferenceActivity = PreferenceActivity.this).findBestMatchingHeader(preferenceActivity.mCurHeader, PreferenceActivity.this.mHeaders)) == null) {
                    return;
                }
                PreferenceActivity.this.setSelectedHeader(headerFindBestMatchingHeader);
                return;
            }
            Header headerFindBestMatchingHeader2 = PreferenceActivity.this.findBestMatchingHeader(headerOnGetNewHeader, arrayList);
            if (headerFindBestMatchingHeader2 == null || PreferenceActivity.this.mCurHeader != headerFindBestMatchingHeader2) {
                PreferenceActivity.this.switchToHeader(headerOnGetNewHeader);
            }
        }
    };

    public static class HeaderAdapter extends ArrayAdapter<Header> {
        private LayoutInflater mInflater;
        private int mLayoutResId;
        private boolean mRemoveIconIfEmpty;

        public static class HeaderViewHolder {
            ImageView icon;
            TextView summary;
            TextView title;

            private HeaderViewHolder() {
            }
        }

        public HeaderAdapter(Context context, List<Header> list, int i2, boolean z2) {
            super(context, 0, list);
            this.mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            this.mLayoutResId = i2;
            this.mRemoveIconIfEmpty = z2;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) throws Throwable {
            HeaderViewHolder headerViewHolder;
            if (view == null) {
                view = this.mInflater.inflate(this.mLayoutResId, viewGroup, false);
                headerViewHolder = new HeaderViewHolder();
                headerViewHolder.icon = (ImageView) view.findViewById(16908294);
                headerViewHolder.title = (TextView) view.findViewById(16908310);
                headerViewHolder.summary = (TextView) view.findViewById(16908304);
                view.setTag(headerViewHolder);
            } else {
                headerViewHolder = (HeaderViewHolder) view.getTag();
            }
            Header item = getItem(i2);
            if (!this.mRemoveIconIfEmpty) {
                headerViewHolder.icon.setImageResource(item.iconRes);
            } else if (item.iconRes == 0) {
                headerViewHolder.icon.setVisibility(8);
            } else {
                headerViewHolder.icon.setVisibility(0);
                headerViewHolder.icon.setImageResource(item.iconRes);
            }
            headerViewHolder.title.setText(item.getTitle(getContext().getResources()));
            CharSequence summary = item.getSummary(getContext().getResources());
            if (TextUtils.isEmpty(summary)) {
                headerViewHolder.summary.setVisibility(8);
            } else {
                headerViewHolder.summary.setVisibility(0);
                headerViewHolder.summary.setText(summary);
            }
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindPreferences() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            preferenceScreen.bind(getListView());
            Bundle bundle = this.mSavedInstanceState;
            if (bundle != null) {
                super.onRestoreInstanceState(bundle);
                this.mSavedInstanceState = null;
            }
        }
    }

    private void postBindPreferences() {
        if (this.mHandler.hasMessages(1)) {
            return;
        }
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    private void requirePreferenceManager() {
        if (this.mPreferenceManager == null) {
            if (this.mAdapter != null) {
                throw new RuntimeException("Modern two-pane PreferenceActivity requires use of a PreferenceFragment");
            }
            throw new RuntimeException("This should be called after super.onCreate.");
        }
    }

    private void switchToHeaderInner(String str, Bundle bundle) {
        getFragmentManager().popBackStack(BACK_STACK_PREFS, 1);
        if (!isValidFragment(str)) {
            throw new IllegalArgumentException(c.j("Invalid fragment for this activity: ", str));
        }
        Fragment fragmentInstantiate = Fragment.instantiate(this, str, bundle);
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setTransition(this.mSinglePane ? 0 : 4099);
        fragmentTransactionBeginTransaction.replace(R.id.prefs, fragmentInstantiate);
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        if (this.mSinglePane && this.mPrefsContainer.getVisibility() == 8) {
            this.mPrefsContainer.setVisibility(0);
            this.mHeadersContainer.setVisibility(8);
        }
    }

    private void updateTitleForCurrentHeaderIfNeeded(int i2, CharSequence charSequence) {
        Header header = this.mCurHeader;
        if (header != null) {
            boolean z2 = true;
            if (i2 != 0) {
                header.breadCrumbTitleRes = i2;
            } else if (charSequence != null) {
                header.breadCrumbTitle = charSequence;
            } else {
                z2 = false;
            }
            if (z2) {
                showBreadCrumbs(header);
            }
        }
    }

    @Deprecated
    public void addPreferencesFromIntent(Intent intent) {
        requirePreferenceManager();
        setPreferenceScreen(this.mPreferenceManager.inflateFromIntent(intent, getPreferenceScreen()));
    }

    @Deprecated
    public void addPreferencesFromResource(int i2) {
        requirePreferenceManager();
        setPreferenceScreen(this.mPreferenceManager.inflateFromResource(this, i2, getPreferenceScreen()));
    }

    public Header findBestMatchingHeader(Header header, ArrayList<Header> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Header header2 = arrayList.get(i2);
            if (header != header2) {
                long j2 = header.id;
                if (j2 == -1 || j2 != header2.id) {
                    String str = header.fragment;
                    if (str == null) {
                        Intent intent = header.intent;
                        if (intent == null) {
                            CharSequence charSequence = header.title;
                            if (charSequence != null && charSequence.equals(header2.title)) {
                                arrayList2.add(header2);
                            }
                        } else if (intent.equals(header2.intent)) {
                            arrayList2.add(header2);
                        }
                    } else if (str.equals(header2.fragment)) {
                        arrayList2.add(header2);
                    }
                }
            }
            arrayList2.clear();
            arrayList2.add(header2);
        }
        int size = arrayList2.size();
        if (size == 1) {
            return (Header) arrayList2.get(0);
        }
        if (size <= 1) {
            return null;
        }
        for (int i3 = 0; i3 < size; i3++) {
            Header header3 = (Header) arrayList2.get(i3);
            Bundle bundle = header.fragmentArguments;
            if (bundle != null && bundle.equals(header3.fragmentArguments)) {
                return header3;
            }
            Bundle bundle2 = header.extras;
            if (bundle2 != null && bundle2.equals(header3.extras)) {
                return header3;
            }
            CharSequence charSequence2 = header.title;
            if (charSequence2 != null && charSequence2.equals(header3.title)) {
                return header3;
            }
        }
        return null;
    }

    @Deprecated
    public Preference findPreference(CharSequence charSequence) {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null) {
            return null;
        }
        return preferenceManager.findPreference(charSequence);
    }

    public void finishPreferencePanel(Fragment fragment, int i2, Intent intent) {
        onBackPressed();
        if (fragment == null || fragment.getTargetFragment() == null) {
            return;
        }
        fragment.getTargetFragment().onActivityResult(fragment.getTargetRequestCode(), i2, intent);
    }

    public List<Header> getHeaders() {
        return this.mHeaders;
    }

    public Button getNextButton() {
        return this.mNextButton;
    }

    @Deprecated
    public PreferenceManager getPreferenceManager() {
        return this.mPreferenceManager;
    }

    @Deprecated
    public PreferenceScreen getPreferenceScreen() {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager != null) {
            return preferenceManager.getPreferenceScreen();
        }
        return null;
    }

    public boolean hasHeaders() {
        ViewGroup viewGroup = this.mHeadersContainer;
        return viewGroup != null && viewGroup.getVisibility() == 0;
    }

    public boolean hasNextButton() {
        return this.mNextButton != null;
    }

    public void invalidateHeaders() {
        if (this.mHandler.hasMessages(2) || getFragmentManager().getBackStackEntryCount() != 0) {
            return;
        }
        this.mHandler.sendEmptyMessage(2);
    }

    public boolean isMultiPane() {
        return !this.mSinglePane;
    }

    public boolean isValidFragment(String str) {
        if (getApplicationInfo().targetSdkVersion < 19) {
            return true;
        }
        throw new RuntimeException("Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! " + getClass().getName() + " has not checked if fragment " + str + " is valid.");
    }

    public void loadHeadersFromResource(int i2, List<Header> list) throws Throwable {
        int next;
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                XmlResourceParser xml = getResources().getXml(i2);
                try {
                    AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                    do {
                        next = xml.next();
                        if (next == 1) {
                            break;
                        }
                    } while (next != 2);
                    String name = xml.getName();
                    try {
                        if (!"preference-headers".equals(name)) {
                            throw new RuntimeException("XML document must start with <preference-headers> tag; found" + name + " at " + xml.getPositionDescription());
                        }
                        int depth = xml.getDepth();
                        Bundle bundle = null;
                        while (true) {
                            int next2 = xml.next();
                            if (next2 == 1 || (next2 == 3 && xml.getDepth() <= depth)) {
                                break;
                            }
                            if (next2 != 3 && next2 != 4) {
                                if (Downloads.Impl.RequestHeaders.COLUMN_HEADER.equals(xml.getName())) {
                                    Header header = new Header();
                                    TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(attributeSetAsAttributeSet, R.styleable.PreferenceHeader);
                                    header.id = typedArrayObtainStyledAttributes.getResourceId(1, -1);
                                    TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(2);
                                    if (typedValuePeekValue != null && typedValuePeekValue.type == 3) {
                                        int i3 = typedValuePeekValue.resourceId;
                                        if (i3 != 0) {
                                            header.titleRes = i3;
                                        } else {
                                            header.title = typedValuePeekValue.string;
                                        }
                                    }
                                    TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(3);
                                    if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 3) {
                                        int i4 = typedValuePeekValue2.resourceId;
                                        if (i4 != 0) {
                                            header.summaryRes = i4;
                                        } else {
                                            header.summary = typedValuePeekValue2.string;
                                        }
                                    }
                                    TypedValue typedValuePeekValue3 = typedArrayObtainStyledAttributes.peekValue(5);
                                    if (typedValuePeekValue3 != null && typedValuePeekValue3.type == 3) {
                                        int i5 = typedValuePeekValue3.resourceId;
                                        if (i5 != 0) {
                                            header.breadCrumbTitleRes = i5;
                                        } else {
                                            header.breadCrumbTitle = typedValuePeekValue3.string;
                                        }
                                    }
                                    TypedValue typedValuePeekValue4 = typedArrayObtainStyledAttributes.peekValue(6);
                                    if (typedValuePeekValue4 != null && typedValuePeekValue4.type == 3) {
                                        int i6 = typedValuePeekValue4.resourceId;
                                        if (i6 != 0) {
                                            header.breadCrumbShortTitleRes = i6;
                                        } else {
                                            header.breadCrumbShortTitle = typedValuePeekValue4.string;
                                        }
                                    }
                                    header.iconRes = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                                    header.fragment = typedArrayObtainStyledAttributes.getString(4);
                                    typedArrayObtainStyledAttributes.recycle();
                                    if (bundle == null) {
                                        bundle = new Bundle();
                                    }
                                    int depth2 = xml.getDepth();
                                    while (true) {
                                        int next3 = xml.next();
                                        if (next3 == 1 || (next3 == 3 && xml.getDepth() <= depth2)) {
                                            break;
                                        }
                                        if (next3 != 3 && next3 != 4) {
                                            String name2 = xml.getName();
                                            if (name2.equals("extra")) {
                                                getResources().parseBundleExtra("extra", attributeSetAsAttributeSet, bundle);
                                                XmlUtils.skipCurrentTag(xml);
                                            } else if (name2.equals("intent")) {
                                                header.intent = Intent.parseIntent(getResources(), xml, attributeSetAsAttributeSet);
                                            } else {
                                                XmlUtils.skipCurrentTag(xml);
                                            }
                                        }
                                    }
                                    if (bundle.size() > 0) {
                                        header.fragmentArguments = bundle;
                                        bundle = null;
                                    }
                                    list.add(header);
                                } else {
                                    XmlUtils.skipCurrentTag(xml);
                                }
                            }
                        }
                        xml.close();
                        return;
                    } catch (IOException e2) {
                        e = e2;
                    } catch (XmlPullParserException e3) {
                        e = e3;
                        throw new RuntimeException("Error parsing headers", e);
                    } catch (Throwable th) {
                        th = th;
                        xmlResourceParser = xml;
                        if (xmlResourceParser != null) {
                            xmlResourceParser.close();
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    e = e4;
                } catch (XmlPullParserException e5) {
                    e = e5;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e6) {
            e = e6;
        } catch (XmlPullParserException e7) {
            e = e7;
        } catch (Throwable th4) {
            th = th4;
        }
        throw new RuntimeException("Error parsing headers", e);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager != null) {
            preferenceManager.dispatchActivityResult(i2, i3, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mCurHeader == null || !this.mSinglePane || getFragmentManager().getBackStackEntryCount() != 0 || getIntent().getStringExtra(EXTRA_SHOW_FRAGMENT) != null) {
            Header header = this.mCurHeader;
            if (header != null) {
                header.breadCrumbTitleRes = 0;
                header.breadCrumbTitle = null;
                showBreadCrumbs(header);
            }
            super.onBackPressed();
            return;
        }
        this.mCurHeader = null;
        this.mPrefsContainer.setVisibility(8);
        this.mHeadersContainer.setVisibility(0);
        Fragment fragmentFindFragmentById = getFragmentManager().findFragmentById(R.id.prefs);
        if (fragmentFindFragmentById != null) {
            FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
            fragmentTransactionBeginTransaction.remove(fragmentFindFragmentById);
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        }
        CharSequence charSequence = this.mActivityTitle;
        if (charSequence != null) {
            showBreadCrumbs(charSequence, null);
        }
        getListView().clearChoices();
    }

    public void onBuildHeaders(List<Header> list) {
    }

    public Intent onBuildStartFragmentIntent(String str, Bundle bundle, int i2, int i3) {
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.setClass(this, getClass());
        intent.putExtra(EXTRA_SHOW_FRAGMENT, str);
        intent.putExtra(EXTRA_SHOW_FRAGMENT_ARGUMENTS, bundle);
        intent.putExtra(EXTRA_SHOW_FRAGMENT_TITLE, i2);
        intent.putExtra(EXTRA_SHOW_FRAGMENT_SHORT_TITLE, i3);
        intent.putExtra(EXTRA_NO_HEADERS, true);
        return intent;
    }

    @Override // android.app.ListActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        if (this.mPreferenceManager != null) {
            postBindPreferences();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Header header;
        super.onCreate(bundle);
        TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(null, R.styleable.PreferenceActivity, R.attr.preferenceActivityStyle, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, R.layout.preference_list_content);
        this.mPreferenceHeaderItemResId = typedArrayObtainStyledAttributes.getResourceId(1, R.layout.preference_header_item);
        this.mPreferenceHeaderRemoveEmptyIcon = typedArrayObtainStyledAttributes.getBoolean(2, false);
        typedArrayObtainStyledAttributes.recycle();
        setContentView(resourceId);
        this.mListFooter = (FrameLayout) findViewById(R.id.list_footer);
        this.mPrefsContainer = (ViewGroup) findViewById(R.id.prefs_frame);
        this.mHeadersContainer = (ViewGroup) findViewById(R.id.headers);
        this.mSinglePane = onIsHidingHeaders() || !onIsMultiPane();
        String stringExtra = getIntent().getStringExtra(EXTRA_SHOW_FRAGMENT);
        Bundle bundleExtra = getIntent().getBundleExtra(EXTRA_SHOW_FRAGMENT_ARGUMENTS);
        int intExtra = getIntent().getIntExtra(EXTRA_SHOW_FRAGMENT_TITLE, 0);
        int intExtra2 = getIntent().getIntExtra(EXTRA_SHOW_FRAGMENT_SHORT_TITLE, 0);
        this.mActivityTitle = getTitle();
        if (bundle != null) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(HEADERS_TAG);
            if (parcelableArrayList != null) {
                this.mHeaders.addAll(parcelableArrayList);
                int i2 = bundle.getInt(CUR_HEADER_TAG, -1);
                if (i2 >= 0 && i2 < this.mHeaders.size()) {
                    setSelectedHeader(this.mHeaders.get(i2));
                } else if (!this.mSinglePane && stringExtra == null) {
                    switchToHeader(onGetInitialHeader());
                }
            } else {
                showBreadCrumbs(getTitle(), null);
            }
        } else {
            if (!onIsHidingHeaders()) {
                onBuildHeaders(this.mHeaders);
            }
            if (stringExtra != null) {
                switchToHeader(stringExtra, bundleExtra);
            } else if (!this.mSinglePane && this.mHeaders.size() > 0) {
                switchToHeader(onGetInitialHeader());
            }
        }
        if (this.mHeaders.size() > 0) {
            setListAdapter(new HeaderAdapter(this, this.mHeaders, this.mPreferenceHeaderItemResId, this.mPreferenceHeaderRemoveEmptyIcon));
            if (!this.mSinglePane) {
                getListView().setChoiceMode(1);
            }
        }
        if (this.mSinglePane && stringExtra != null && intExtra != 0) {
            showBreadCrumbs(getText(intExtra), intExtra2 != 0 ? getText(intExtra2) : null);
        }
        if (this.mHeaders.size() == 0 && stringExtra == null) {
            setContentView(R.layout.preference_list_content_single);
            this.mListFooter = (FrameLayout) findViewById(R.id.list_footer);
            this.mPrefsContainer = (ViewGroup) findViewById(R.id.prefs);
            PreferenceManager preferenceManager = new PreferenceManager(this, 100);
            this.mPreferenceManager = preferenceManager;
            preferenceManager.setOnPreferenceTreeClickListener(this);
            this.mHeadersContainer = null;
        } else if (this.mSinglePane) {
            if (stringExtra == null && this.mCurHeader == null) {
                this.mPrefsContainer.setVisibility(8);
            } else {
                this.mHeadersContainer.setVisibility(8);
            }
            ((ViewGroup) findViewById(R.id.prefs_container)).setLayoutTransition(new LayoutTransition());
        } else if (this.mHeaders.size() > 0 && (header = this.mCurHeader) != null) {
            setSelectedHeader(header);
        }
        Intent intent = getIntent();
        if (intent.getBooleanExtra(EXTRA_PREFS_SHOW_BUTTON_BAR, false)) {
            findViewById(R.id.button_bar).setVisibility(0);
            Button button = (Button) findViewById(R.id.back_button);
            button.setOnClickListener(new View.OnClickListener() { // from class: android.preference.PreferenceActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PreferenceActivity.this.setResult(0);
                    PreferenceActivity.this.finish();
                }
            });
            Button button2 = (Button) findViewById(R.id.skip_button);
            button2.setOnClickListener(new View.OnClickListener() { // from class: android.preference.PreferenceActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PreferenceActivity.this.setResult(-1);
                    PreferenceActivity.this.finish();
                }
            });
            Button button3 = (Button) findViewById(R.id.next_button);
            this.mNextButton = button3;
            button3.setOnClickListener(new View.OnClickListener() { // from class: android.preference.PreferenceActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PreferenceActivity.this.setResult(-1);
                    PreferenceActivity.this.finish();
                }
            });
            if (intent.hasExtra(EXTRA_PREFS_SET_NEXT_TEXT)) {
                String stringExtra2 = intent.getStringExtra(EXTRA_PREFS_SET_NEXT_TEXT);
                if (TextUtils.isEmpty(stringExtra2)) {
                    this.mNextButton.setVisibility(8);
                } else {
                    this.mNextButton.setText(stringExtra2);
                }
            }
            if (intent.hasExtra(EXTRA_PREFS_SET_BACK_TEXT)) {
                String stringExtra3 = intent.getStringExtra(EXTRA_PREFS_SET_BACK_TEXT);
                if (TextUtils.isEmpty(stringExtra3)) {
                    button.setVisibility(8);
                } else {
                    button.setText(stringExtra3);
                }
            }
            if (intent.getBooleanExtra(EXTRA_PREFS_SHOW_SKIP, false)) {
                button2.setVisibility(0);
            }
        }
    }

    @Override // android.app.ListActivity, android.app.Activity
    public void onDestroy() {
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(2);
        super.onDestroy();
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager != null) {
            preferenceManager.dispatchActivityDestroy();
        }
    }

    public Header onGetInitialHeader() {
        for (int i2 = 0; i2 < this.mHeaders.size(); i2++) {
            Header header = this.mHeaders.get(i2);
            if (header.fragment != null) {
                return header;
            }
        }
        throw new IllegalStateException("Must have at least one header with a fragment");
    }

    public Header onGetNewHeader() {
        return null;
    }

    public void onHeaderClick(Header header, int i2) {
        if (header.fragment != null) {
            switchToHeader(header);
            return;
        }
        Intent intent = header.intent;
        if (intent != null) {
            startActivity(intent);
        }
    }

    public boolean onIsHidingHeaders() {
        return getIntent().getBooleanExtra(EXTRA_NO_HEADERS, false);
    }

    public boolean onIsMultiPane() {
        return getResources().getBoolean(R.bool.preferences_prefer_dual_pane);
    }

    @Override // android.app.ListActivity
    public void onListItemClick(ListView listView, View view, int i2, long j2) {
        if (isResumed()) {
            super.onListItemClick(listView, view, i2, j2);
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                Object item = listAdapter.getItem(i2);
                if (item instanceof Header) {
                    onHeaderClick((Header) item, i2);
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager != null) {
            preferenceManager.dispatchNewIntent(intent);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    @Override // android.preference.PreferenceFragment.OnPreferenceStartFragmentCallback
    public boolean onPreferenceStartFragment(PreferenceFragment preferenceFragment, Preference preference) {
        startPreferencePanel(preference.getFragment(), preference.getExtras(), preference.getTitleRes(), preference.getTitle(), null, 0);
        return true;
    }

    @Override // android.preference.PreferenceManager.OnPreferenceTreeClickListener
    @Deprecated
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        return false;
    }

    @Override // android.app.ListActivity, android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        Header header;
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        if (this.mPreferenceManager != null && (bundle2 = bundle.getBundle(PREFERENCES_TAG)) != null && (preferenceScreen = getPreferenceScreen()) != null) {
            preferenceScreen.restoreHierarchyState(bundle2);
            this.mSavedInstanceState = bundle;
            return;
        }
        super.onRestoreInstanceState(bundle);
        if (this.mSinglePane || (header = this.mCurHeader) == null) {
            return;
        }
        setSelectedHeader(header);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        PreferenceScreen preferenceScreen;
        int iIndexOf;
        super.onSaveInstanceState(bundle);
        if (this.mHeaders.size() > 0) {
            bundle.putParcelableArrayList(HEADERS_TAG, this.mHeaders);
            Header header = this.mCurHeader;
            if (header != null && (iIndexOf = this.mHeaders.indexOf(header)) >= 0) {
                bundle.putInt(CUR_HEADER_TAG, iIndexOf);
            }
        }
        if (this.mPreferenceManager == null || (preferenceScreen = getPreferenceScreen()) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        preferenceScreen.saveHierarchyState(bundle2);
        bundle.putBundle(PREFERENCES_TAG, bundle2);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager != null) {
            preferenceManager.dispatchActivityStop();
        }
    }

    public void setListFooter(View view) {
        this.mListFooter.removeAllViews();
        this.mListFooter.addView(view, new FrameLayout.LayoutParams(-1, -2));
    }

    public void setParentTitle(CharSequence charSequence, CharSequence charSequence2, View.OnClickListener onClickListener) {
        FragmentBreadCrumbs fragmentBreadCrumbs = this.mFragmentBreadCrumbs;
        if (fragmentBreadCrumbs != null) {
            fragmentBreadCrumbs.setParentTitle(charSequence, charSequence2, onClickListener);
        }
    }

    @Deprecated
    public void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        requirePreferenceManager();
        if (!this.mPreferenceManager.setPreferences(preferenceScreen) || preferenceScreen == null) {
            return;
        }
        postBindPreferences();
        CharSequence title = getPreferenceScreen().getTitle();
        if (title != null) {
            setTitle(title);
        }
    }

    public void setSelectedHeader(Header header) {
        this.mCurHeader = header;
        int iIndexOf = this.mHeaders.indexOf(header);
        if (iIndexOf >= 0) {
            getListView().setItemChecked(iIndexOf, true);
        } else {
            getListView().clearChoices();
        }
        showBreadCrumbs(header);
    }

    public void showBreadCrumbs(CharSequence charSequence, CharSequence charSequence2) {
        if (this.mFragmentBreadCrumbs == null) {
            try {
                FragmentBreadCrumbs fragmentBreadCrumbs = (FragmentBreadCrumbs) findViewById(16908310);
                this.mFragmentBreadCrumbs = fragmentBreadCrumbs;
                if (fragmentBreadCrumbs == null) {
                    if (charSequence != null) {
                        setTitle(charSequence);
                        return;
                    }
                    return;
                }
                if (this.mSinglePane) {
                    fragmentBreadCrumbs.setVisibility(8);
                    View viewFindViewById = findViewById(R.id.breadcrumb_section);
                    if (viewFindViewById != null) {
                        viewFindViewById.setVisibility(8);
                    }
                    setTitle(charSequence);
                }
                this.mFragmentBreadCrumbs.setMaxVisible(2);
                this.mFragmentBreadCrumbs.setActivity(this);
            } catch (ClassCastException unused) {
                setTitle(charSequence);
                return;
            }
        }
        if (this.mFragmentBreadCrumbs.getVisibility() != 0) {
            setTitle(charSequence);
        } else {
            this.mFragmentBreadCrumbs.setTitle(charSequence, charSequence2);
            this.mFragmentBreadCrumbs.setParentTitle(null, null, null);
        }
    }

    public void startPreferenceFragment(Fragment fragment, boolean z2) {
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.replace(R.id.prefs, fragment);
        if (z2) {
            fragmentTransactionBeginTransaction.setTransition(4097);
            fragmentTransactionBeginTransaction.addToBackStack(BACK_STACK_PREFS);
        } else {
            fragmentTransactionBeginTransaction.setTransition(4099);
        }
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    public void startPreferencePanel(String str, Bundle bundle, int i2, CharSequence charSequence, Fragment fragment, int i3) {
        Fragment fragmentInstantiate = Fragment.instantiate(this, str, bundle);
        if (fragment != null) {
            fragmentInstantiate.setTargetFragment(fragment, i3);
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.replace(R.id.prefs, fragmentInstantiate);
        if (i2 != 0) {
            fragmentTransactionBeginTransaction.setBreadCrumbTitle(i2);
        } else if (charSequence != null) {
            fragmentTransactionBeginTransaction.setBreadCrumbTitle(charSequence);
        }
        updateTitleForCurrentHeaderIfNeeded(i2, charSequence);
        fragmentTransactionBeginTransaction.setTransition(4097);
        fragmentTransactionBeginTransaction.addToBackStack(BACK_STACK_PREFS);
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    public void startWithFragment(String str, Bundle bundle, Fragment fragment, int i2) {
        startWithFragment(str, bundle, fragment, i2, 0, 0);
    }

    public void switchToHeader(String str, Bundle bundle) {
        Header header;
        for (int i2 = 0; i2 < this.mHeaders.size(); i2++) {
            if (str.equals(this.mHeaders.get(i2).fragment)) {
                header = this.mHeaders.get(i2);
                setSelectedHeader(header);
                switchToHeaderInner(str, bundle);
            }
        }
        header = null;
        setSelectedHeader(header);
        switchToHeaderInner(str, bundle);
    }

    public static final class Header implements Parcelable {
        public static final Parcelable.Creator<Header> CREATOR = new Parcelable.Creator<Header>() { // from class: android.preference.PreferenceActivity.Header.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Header createFromParcel(Parcel parcel) {
                return new Header(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Header[] newArray(int i2) {
                return new Header[i2];
            }
        };
        public CharSequence breadCrumbShortTitle;
        public int breadCrumbShortTitleRes;
        public CharSequence breadCrumbTitle;
        public int breadCrumbTitleRes;
        public Bundle extras;
        public String fragment;
        public Bundle fragmentArguments;
        public int iconRes;
        public long id = -1;
        public Intent intent;
        public CharSequence summary;
        public int summaryRes;
        public CharSequence title;
        public int titleRes;

        public Header() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public CharSequence getBreadCrumbShortTitle(Resources resources) {
            int i2 = this.breadCrumbShortTitleRes;
            return i2 != 0 ? resources.getText(i2) : this.breadCrumbShortTitle;
        }

        public CharSequence getBreadCrumbTitle(Resources resources) {
            int i2 = this.breadCrumbTitleRes;
            return i2 != 0 ? resources.getText(i2) : this.breadCrumbTitle;
        }

        public CharSequence getSummary(Resources resources) {
            int i2 = this.summaryRes;
            return i2 != 0 ? resources.getText(i2) : this.summary;
        }

        public CharSequence getTitle(Resources resources) {
            int i2 = this.titleRes;
            return i2 != 0 ? resources.getText(i2) : this.title;
        }

        public void readFromParcel(Parcel parcel) {
            this.id = parcel.readLong();
            this.titleRes = parcel.readInt();
            Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            this.title = creator.createFromParcel(parcel);
            this.summaryRes = parcel.readInt();
            this.summary = creator.createFromParcel(parcel);
            this.breadCrumbTitleRes = parcel.readInt();
            this.breadCrumbTitle = creator.createFromParcel(parcel);
            this.breadCrumbShortTitleRes = parcel.readInt();
            this.breadCrumbShortTitle = creator.createFromParcel(parcel);
            this.iconRes = parcel.readInt();
            this.fragment = parcel.readString();
            this.fragmentArguments = parcel.readBundle();
            if (parcel.readInt() != 0) {
                this.intent = Intent.CREATOR.createFromParcel(parcel);
            }
            this.extras = parcel.readBundle();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.id);
            parcel.writeInt(this.titleRes);
            TextUtils.writeToParcel(this.title, parcel, i2);
            parcel.writeInt(this.summaryRes);
            TextUtils.writeToParcel(this.summary, parcel, i2);
            parcel.writeInt(this.breadCrumbTitleRes);
            TextUtils.writeToParcel(this.breadCrumbTitle, parcel, i2);
            parcel.writeInt(this.breadCrumbShortTitleRes);
            TextUtils.writeToParcel(this.breadCrumbShortTitle, parcel, i2);
            parcel.writeInt(this.iconRes);
            parcel.writeString(this.fragment);
            parcel.writeBundle(this.fragmentArguments);
            if (this.intent != null) {
                parcel.writeInt(1);
                this.intent.writeToParcel(parcel, i2);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeBundle(this.extras);
        }

        public Header(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    public void startWithFragment(String str, Bundle bundle, Fragment fragment, int i2, int i3, int i4) {
        Intent intentOnBuildStartFragmentIntent = onBuildStartFragmentIntent(str, bundle, i3, i4);
        if (fragment == null) {
            startActivity(intentOnBuildStartFragmentIntent);
        } else {
            fragment.startActivityForResult(intentOnBuildStartFragmentIntent, i2);
        }
    }

    public void switchToHeader(Header header) {
        if (this.mCurHeader == header) {
            getFragmentManager().popBackStack(BACK_STACK_PREFS, 1);
            return;
        }
        String str = header.fragment;
        if (str != null) {
            switchToHeaderInner(str, header.fragmentArguments);
            setSelectedHeader(header);
            return;
        }
        throw new IllegalStateException("can't switch to header that has no fragment");
    }

    public void showBreadCrumbs(Header header) {
        if (header != null) {
            CharSequence breadCrumbTitle = header.getBreadCrumbTitle(getResources());
            if (breadCrumbTitle == null) {
                breadCrumbTitle = header.getTitle(getResources());
            }
            if (breadCrumbTitle == null) {
                breadCrumbTitle = getTitle();
            }
            showBreadCrumbs(breadCrumbTitle, header.getBreadCrumbShortTitle(getResources()));
            return;
        }
        showBreadCrumbs(getTitle(), null);
    }
}
