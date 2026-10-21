package android.widget;

import android.app.PendingIntent;
import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.Bundle;
import android.speech.RecognizerIntent;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.CollapsibleActionView;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import i.a;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends LinearLayout implements CollapsibleActionView {
    private static final boolean DBG = false;
    private static final String IME_OPTION_NO_MICROPHONE = "nm";
    private static final String LOG_TAG = "SearchView";
    private Bundle mAppSearchData;
    private boolean mClearingFocus;
    private ImageView mCloseButton;
    private int mCollapsedImeOptions;
    private View mDropDownAnchor;
    private boolean mExpandedInActionView;
    private boolean mIconified;
    private boolean mIconifiedByDefault;
    private int mMaxWidth;
    private CharSequence mOldQueryText;
    private final View.OnClickListener mOnClickListener;
    private OnCloseListener mOnCloseListener;
    private final TextView.OnEditorActionListener mOnEditorActionListener;
    private final AdapterView.OnItemClickListener mOnItemClickListener;
    private final AdapterView.OnItemSelectedListener mOnItemSelectedListener;
    private OnQueryTextListener mOnQueryChangeListener;
    private View.OnFocusChangeListener mOnQueryTextFocusChangeListener;
    private View.OnClickListener mOnSearchClickListener;
    private OnSuggestionListener mOnSuggestionListener;
    private final WeakHashMap<String, Drawable.ConstantState> mOutsideDrawablesCache;
    private CharSequence mQueryHint;
    private boolean mQueryRefinement;
    private SearchAutoComplete mQueryTextView;
    private Runnable mReleaseCursorRunnable;
    private View mSearchButton;
    private View mSearchEditFrame;
    private ImageView mSearchHintIcon;
    private View mSearchPlate;
    private SearchableInfo mSearchable;
    private Runnable mShowImeRunnable;
    private View mSubmitArea;
    private View mSubmitButton;
    private boolean mSubmitButtonEnabled;
    private CursorAdapter mSuggestionsAdapter;
    public View.OnKeyListener mTextKeyListener;
    private TextWatcher mTextWatcher;
    private Runnable mUpdateDrawableStateRunnable;
    private CharSequence mUserQuery;
    private final Intent mVoiceAppSearchIntent;
    private View mVoiceButton;
    private boolean mVoiceButtonEnabled;
    private final Intent mVoiceWebSearchIntent;

    public interface OnCloseListener {
        boolean onClose();
    }

    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    public interface OnSuggestionListener {
        boolean onSuggestionClick(int i2);

        boolean onSuggestionSelect(int i2);
    }

    public SearchView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustDropDownSizeAndPosition() {
        if (this.mDropDownAnchor.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.mSearchPlate.getPaddingLeft();
            Rect rect = new Rect();
            boolean zIsLayoutRtl = isLayoutRtl();
            int dimensionPixelSize = this.mIconifiedByDefault ? resources.getDimensionPixelSize(17104973) + resources.getDimensionPixelSize(17104971) : 0;
            this.mQueryTextView.getDropDownBackground().getPadding(rect);
            this.mQueryTextView.setDropDownHorizontalOffset(zIsLayoutRtl ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.mQueryTextView.setDropDownWidth((((this.mDropDownAnchor.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    private Intent createIntent(String str, Uri uri, String str2, String str3, int i2, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra(SearchManager.USER_QUERY, this.mUserQuery);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra(SearchManager.EXTRA_DATA_KEY, str2);
        }
        Bundle bundle = this.mAppSearchData;
        if (bundle != null) {
            intent.putExtra(SearchManager.APP_DATA, bundle);
        }
        if (i2 != 0) {
            intent.putExtra(SearchManager.ACTION_KEY, i2);
            intent.putExtra(SearchManager.ACTION_MSG, str4);
        }
        intent.setComponent(this.mSearchable.getSearchActivity());
        return intent;
    }

    private Intent createIntentFromSuggestion(Cursor cursor, int i2, String str) {
        int position;
        String columnString;
        try {
            String columnString2 = SuggestionsAdapter.getColumnString(cursor, SearchManager.SUGGEST_COLUMN_INTENT_ACTION);
            if (columnString2 == null) {
                columnString2 = this.mSearchable.getSuggestIntentAction();
            }
            if (columnString2 == null) {
                columnString2 = Intent.ACTION_SEARCH;
            }
            String str2 = columnString2;
            String columnString3 = SuggestionsAdapter.getColumnString(cursor, SearchManager.SUGGEST_COLUMN_INTENT_DATA);
            if (columnString3 == null) {
                columnString3 = this.mSearchable.getSuggestIntentData();
            }
            if (columnString3 != null && (columnString = SuggestionsAdapter.getColumnString(cursor, SearchManager.SUGGEST_COLUMN_INTENT_DATA_ID)) != null) {
                columnString3 = columnString3 + "/" + Uri.encode(columnString);
            }
            return createIntent(str2, columnString3 == null ? null : Uri.parse(columnString3), SuggestionsAdapter.getColumnString(cursor, SearchManager.SUGGEST_COLUMN_INTENT_EXTRA_DATA), SuggestionsAdapter.getColumnString(cursor, SearchManager.SUGGEST_COLUMN_QUERY), i2, str);
        } catch (RuntimeException e2) {
            try {
                position = cursor.getPosition();
            } catch (RuntimeException unused) {
                position = -1;
            }
            Log.w(LOG_TAG, "Search suggestions cursor at row " + position + " returned exception.", e2);
            return null;
        }
    }

    private Intent createVoiceAppSearchIntent(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent(Intent.ACTION_SEARCH);
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.mAppSearchData;
        if (bundle2 != null) {
            bundle.putParcelable(SearchManager.APP_DATA, bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : RecognizerIntent.LANGUAGE_MODEL_FREE_FORM;
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, string);
        intent3.putExtra(RecognizerIntent.EXTRA_PROMPT, string2);
        intent3.putExtra(RecognizerIntent.EXTRA_LANGUAGE, string3);
        intent3.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, voiceMaxResults);
        intent3.putExtra(RecognizerIntent.EXTRA_CALLING_PACKAGE, searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra(RecognizerIntent.EXTRA_RESULTS_PENDINGINTENT, activity);
        intent3.putExtra(RecognizerIntent.EXTRA_RESULTS_PENDINGINTENT_BUNDLE, bundle);
        return intent3;
    }

    private Intent createVoiceWebSearchIntent(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra(RecognizerIntent.EXTRA_CALLING_PACKAGE, searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private void dismissSuggestions() {
        this.mQueryTextView.dismissDropDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forceSuggestionQuery() {
        this.mQueryTextView.doBeforeTextChanged();
        this.mQueryTextView.doAfterTextChanged();
    }

    private static String getActionKeyMessage(Cursor cursor, SearchableInfo.ActionKeyInfo actionKeyInfo) {
        String suggestActionMsgColumn = actionKeyInfo.getSuggestActionMsgColumn();
        String columnString = suggestActionMsgColumn != null ? SuggestionsAdapter.getColumnString(cursor, suggestActionMsgColumn) : null;
        return columnString == null ? actionKeyInfo.getSuggestActionMsg() : columnString;
    }

    private CharSequence getDecoratedHint(CharSequence charSequence) {
        if (!this.mIconifiedByDefault) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.append(charSequence);
        Drawable drawable = getContext().getResources().getDrawable(getSearchIconId());
        int textSize = (int) (((double) this.mQueryTextView.getTextSize()) * 1.25d);
        drawable.setBounds(0, 0, textSize, textSize);
        spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
        return spannableStringBuilder;
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(17104953);
    }

    private int getSearchIconId() {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(16843799, typedValue, true);
        return typedValue.resourceId;
    }

    private boolean hasVoiceSearch() {
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.mSearchable.getVoiceSearchLaunchWebSearch()) {
            intent = this.mVoiceWebSearchIntent;
        } else if (this.mSearchable.getVoiceSearchLaunchRecognizer()) {
            intent = this.mVoiceAppSearchIntent;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    public static boolean isLandscapeMode(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private boolean isSubmitAreaEnabled() {
        return (this.mSubmitButtonEnabled || this.mVoiceButtonEnabled) && !isIconified();
    }

    private void launchIntent(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e2) {
            Log.e(LOG_TAG, "Failed launch activity: " + intent, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchQuerySearch(int i2, String str, String str2) {
        getContext().startActivity(createIntent(Intent.ACTION_SEARCH, null, null, str2, i2, str));
    }

    private boolean launchSuggestion(int i2, int i3, String str) {
        Cursor cursor = this.mSuggestionsAdapter.getCursor();
        if (cursor == null || !cursor.moveToPosition(i2)) {
            return false;
        }
        launchIntent(createIntentFromSuggestion(cursor, i3, str));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCloseClicked() {
        if (!TextUtils.isEmpty(this.mQueryTextView.getText())) {
            this.mQueryTextView.setText(ProxyProperties.LOCAL_EXCL_LIST);
            this.mQueryTextView.requestFocus();
            setImeVisibility(true);
        } else if (this.mIconifiedByDefault) {
            OnCloseListener onCloseListener = this.mOnCloseListener;
            if (onCloseListener == null || !onCloseListener.onClose()) {
                clearFocus();
                updateViewsVisibility(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onItemClicked(int i2, int i3, String str) {
        OnSuggestionListener onSuggestionListener = this.mOnSuggestionListener;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionClick(i2)) {
            return false;
        }
        launchSuggestion(i2, 0, null);
        setImeVisibility(false);
        dismissSuggestions();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onItemSelected(int i2) {
        OnSuggestionListener onSuggestionListener = this.mOnSuggestionListener;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionSelect(i2)) {
            return false;
        }
        rewriteQueryFromSuggestion(i2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSearchClicked() {
        updateViewsVisibility(false);
        this.mQueryTextView.requestFocus();
        setImeVisibility(true);
        View.OnClickListener onClickListener = this.mOnSearchClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSubmitQuery() {
        Editable text = this.mQueryTextView.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        OnQueryTextListener onQueryTextListener = this.mOnQueryChangeListener;
        if (onQueryTextListener == null || !onQueryTextListener.onQueryTextSubmit(text.toString())) {
            if (this.mSearchable != null) {
                launchQuerySearch(0, null, text.toString());
                setImeVisibility(false);
            }
            dismissSuggestions();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onSuggestionsKey(View view, int i2, KeyEvent keyEvent) {
        SearchableInfo.ActionKeyInfo actionKeyInfoFindActionKey;
        int listSelection;
        String actionKeyMessage;
        if (this.mSearchable != null && this.mSuggestionsAdapter != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return onItemClicked(this.mQueryTextView.getListSelection(), 0, null);
            }
            if (i2 == 21 || i2 == 22) {
                this.mQueryTextView.setSelection(i2 == 21 ? 0 : this.mQueryTextView.length());
                this.mQueryTextView.setListSelection(0);
                this.mQueryTextView.clearListSelection();
                this.mQueryTextView.ensureImeVisible(true);
                return true;
            }
            if ((i2 != 19 || this.mQueryTextView.getListSelection() != 0) && (actionKeyInfoFindActionKey = this.mSearchable.findActionKey(i2)) != null && ((actionKeyInfoFindActionKey.getSuggestActionMsg() != null || actionKeyInfoFindActionKey.getSuggestActionMsgColumn() != null) && (listSelection = this.mQueryTextView.getListSelection()) != -1)) {
                Cursor cursor = this.mSuggestionsAdapter.getCursor();
                if (cursor.moveToPosition(listSelection) && (actionKeyMessage = getActionKeyMessage(cursor, actionKeyInfoFindActionKey)) != null && actionKeyMessage.length() > 0) {
                    return onItemClicked(listSelection, i2, actionKeyMessage);
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTextChanged(CharSequence charSequence) {
        Editable text = this.mQueryTextView.getText();
        this.mUserQuery = text;
        boolean z2 = !TextUtils.isEmpty(text);
        updateSubmitButton(z2);
        updateVoiceButton(!z2);
        updateCloseButton();
        updateSubmitArea();
        if (this.mOnQueryChangeListener != null && !TextUtils.equals(charSequence, this.mOldQueryText)) {
            this.mOnQueryChangeListener.onQueryTextChange(charSequence.toString());
        }
        this.mOldQueryText = charSequence.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVoiceClicked() {
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(createVoiceWebSearchIntent(this.mVoiceWebSearchIntent, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(createVoiceAppSearchIntent(this.mVoiceAppSearchIntent, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
            Log.w(LOG_TAG, "Could not find voice search activity");
        }
    }

    private void postUpdateFocusedState() {
        post(this.mUpdateDrawableStateRunnable);
    }

    private void rewriteQueryFromSuggestion(int i2) {
        Editable text = this.mQueryTextView.getText();
        Cursor cursor = this.mSuggestionsAdapter.getCursor();
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i2)) {
            setQuery(text);
            return;
        }
        CharSequence charSequenceConvertToString = this.mSuggestionsAdapter.convertToString(cursor);
        if (charSequenceConvertToString != null) {
            setQuery(charSequenceConvertToString);
        } else {
            setQuery(text);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImeVisibility(boolean z2) {
        if (z2) {
            post(this.mShowImeRunnable);
            return;
        }
        removeCallbacks(this.mShowImeRunnable);
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        }
    }

    private void updateCloseButton() {
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(this.mQueryTextView.getText());
        if (!z3 && (!this.mIconifiedByDefault || this.mExpandedInActionView)) {
            z2 = false;
        }
        this.mCloseButton.setVisibility(z2 ? 0 : 8);
        this.mCloseButton.getDrawable().setState(z3 ? View.ENABLED_STATE_SET : View.EMPTY_STATE_SET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFocusedState() {
        boolean zHasFocus = this.mQueryTextView.hasFocus();
        this.mSearchPlate.getBackground().setState(zHasFocus ? View.FOCUSED_STATE_SET : View.EMPTY_STATE_SET);
        this.mSubmitArea.getBackground().setState(zHasFocus ? View.FOCUSED_STATE_SET : View.EMPTY_STATE_SET);
        invalidate();
    }

    private void updateQueryHint() {
        CharSequence charSequence = this.mQueryHint;
        if (charSequence != null) {
            this.mQueryTextView.setHint(getDecoratedHint(charSequence));
            return;
        }
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo == null) {
            this.mQueryTextView.setHint(getDecoratedHint(ProxyProperties.LOCAL_EXCL_LIST));
            return;
        }
        int hintId = searchableInfo.getHintId();
        String string = hintId != 0 ? getContext().getString(hintId) : null;
        if (string != null) {
            this.mQueryTextView.setHint(getDecoratedHint(string));
        }
    }

    private void updateSearchAutoComplete() {
        this.mQueryTextView.setDropDownAnimationStyle(0);
        this.mQueryTextView.setThreshold(this.mSearchable.getSuggestThreshold());
        this.mQueryTextView.setImeOptions(this.mSearchable.getImeOptions());
        int inputType = this.mSearchable.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.mSearchable.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.mQueryTextView.setInputType(inputType);
        CursorAdapter cursorAdapter = this.mSuggestionsAdapter;
        if (cursorAdapter != null) {
            cursorAdapter.changeCursor(null);
        }
        if (this.mSearchable.getSuggestAuthority() != null) {
            SuggestionsAdapter suggestionsAdapter = new SuggestionsAdapter(getContext(), this, this.mSearchable, this.mOutsideDrawablesCache);
            this.mSuggestionsAdapter = suggestionsAdapter;
            this.mQueryTextView.setAdapter(suggestionsAdapter);
            ((SuggestionsAdapter) this.mSuggestionsAdapter).setQueryRefinement(this.mQueryRefinement ? 2 : 1);
        }
    }

    private void updateSubmitArea() {
        this.mSubmitArea.setVisibility((isSubmitAreaEnabled() && (this.mSubmitButton.getVisibility() == 0 || this.mVoiceButton.getVisibility() == 0)) ? 0 : 8);
    }

    private void updateSubmitButton(boolean z2) {
        this.mSubmitButton.setVisibility((this.mSubmitButtonEnabled && isSubmitAreaEnabled() && hasFocus() && (z2 || !this.mVoiceButtonEnabled)) ? 0 : 8);
    }

    private void updateViewsVisibility(boolean z2) {
        this.mIconified = z2;
        int i2 = z2 ? 0 : 8;
        boolean z3 = !TextUtils.isEmpty(this.mQueryTextView.getText());
        this.mSearchButton.setVisibility(i2);
        updateSubmitButton(z3);
        this.mSearchEditFrame.setVisibility(z2 ? 8 : 0);
        this.mSearchHintIcon.setVisibility(this.mIconifiedByDefault ? 8 : 0);
        updateCloseButton();
        updateVoiceButton(!z3);
        updateSubmitArea();
    }

    private void updateVoiceButton(boolean z2) {
        int i2 = 8;
        if (this.mVoiceButtonEnabled && !isIconified() && z2) {
            this.mSubmitButton.setVisibility(8);
            i2 = 0;
        }
        this.mVoiceButton.setVisibility(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.mClearingFocus = true;
        setImeVisibility(false);
        super.clearFocus();
        this.mQueryTextView.clearFocus();
        this.mClearingFocus = false;
    }

    public int getImeOptions() {
        return this.mQueryTextView.getImeOptions();
    }

    public int getInputType() {
        return this.mQueryTextView.getInputType();
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public CharSequence getQuery() {
        return this.mQueryTextView.getText();
    }

    public CharSequence getQueryHint() {
        int hintId;
        CharSequence charSequence = this.mQueryHint;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo == null || (hintId = searchableInfo.getHintId()) == 0) {
            return null;
        }
        return getContext().getString(hintId);
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.mSuggestionsAdapter;
    }

    public boolean isIconfiedByDefault() {
        return this.mIconifiedByDefault;
    }

    public boolean isIconified() {
        return this.mIconified;
    }

    public boolean isQueryRefinementEnabled() {
        return this.mQueryRefinement;
    }

    public boolean isSubmitButtonEnabled() {
        return this.mSubmitButtonEnabled;
    }

    @Override // android.view.CollapsibleActionView
    public void onActionViewCollapsed() {
        setQuery(ProxyProperties.LOCAL_EXCL_LIST, false);
        clearFocus();
        updateViewsVisibility(true);
        this.mQueryTextView.setImeOptions(this.mCollapsedImeOptions);
        this.mExpandedInActionView = false;
    }

    @Override // android.view.CollapsibleActionView
    public void onActionViewExpanded() {
        if (this.mExpandedInActionView) {
            return;
        }
        this.mExpandedInActionView = true;
        int imeOptions = this.mQueryTextView.getImeOptions();
        this.mCollapsedImeOptions = imeOptions;
        this.mQueryTextView.setImeOptions(imeOptions | 33554432);
        this.mQueryTextView.setText(ProxyProperties.LOCAL_EXCL_LIST);
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.mUpdateDrawableStateRunnable);
        post(this.mReleaseCursorRunnable);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(SearchView.class.getName());
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(SearchView.class.getName());
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo == null) {
            return false;
        }
        SearchableInfo.ActionKeyInfo actionKeyInfoFindActionKey = searchableInfo.findActionKey(i2);
        if (actionKeyInfoFindActionKey == null || actionKeyInfoFindActionKey.getQueryActionMsg() == null) {
            return super.onKeyDown(i2, keyEvent);
        }
        launchQuerySearch(i2, actionKeyInfoFindActionKey.getQueryActionMsg(), this.mQueryTextView.getText().toString());
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        if (isIconified()) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i5 = this.mMaxWidth;
            size = i5 > 0 ? Math.min(i5, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.mMaxWidth;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i4 = this.mMaxWidth) > 0) {
            size = Math.min(i4, size);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i3);
    }

    public void onQueryRefine(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        this.mQueryTextView.setLayoutDirection(i2);
    }

    public void onTextFocusChanged() {
        updateViewsVisibility(isIconified());
        postUpdateFocusedState();
        if (this.mQueryTextView.hasFocus()) {
            forceSuggestionQuery();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        postUpdateFocusedState();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        if (this.mClearingFocus || !isFocusable()) {
            return false;
        }
        if (isIconified()) {
            return super.requestFocus(i2, rect);
        }
        boolean zRequestFocus = this.mQueryTextView.requestFocus(i2, rect);
        if (zRequestFocus) {
            updateViewsVisibility(false);
        }
        return zRequestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.mAppSearchData = bundle;
    }

    public void setIconified(boolean z2) {
        if (z2) {
            onCloseClicked();
        } else {
            onSearchClicked();
        }
    }

    public void setIconifiedByDefault(boolean z2) {
        if (this.mIconifiedByDefault == z2) {
            return;
        }
        this.mIconifiedByDefault = z2;
        updateViewsVisibility(z2);
        updateQueryHint();
    }

    public void setImeOptions(int i2) {
        this.mQueryTextView.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.mQueryTextView.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.mMaxWidth = i2;
        requestLayout();
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.mOnCloseListener = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mOnQueryTextFocusChangeListener = onFocusChangeListener;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.mOnQueryChangeListener = onQueryTextListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.mOnSearchClickListener = onClickListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.mOnSuggestionListener = onSuggestionListener;
    }

    public void setQuery(CharSequence charSequence, boolean z2) {
        this.mQueryTextView.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.mQueryTextView;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.mUserQuery = charSequence;
        }
        if (!z2 || TextUtils.isEmpty(charSequence)) {
            return;
        }
        onSubmitQuery();
    }

    public void setQueryHint(CharSequence charSequence) {
        this.mQueryHint = charSequence;
        updateQueryHint();
    }

    public void setQueryRefinementEnabled(boolean z2) {
        this.mQueryRefinement = z2;
        CursorAdapter cursorAdapter = this.mSuggestionsAdapter;
        if (cursorAdapter instanceof SuggestionsAdapter) {
            ((SuggestionsAdapter) cursorAdapter).setQueryRefinement(z2 ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.mSearchable = searchableInfo;
        if (searchableInfo != null) {
            updateSearchAutoComplete();
            updateQueryHint();
        }
        boolean zHasVoiceSearch = hasVoiceSearch();
        this.mVoiceButtonEnabled = zHasVoiceSearch;
        if (zHasVoiceSearch) {
            this.mQueryTextView.setPrivateImeOptions(IME_OPTION_NO_MICROPHONE);
        }
        updateViewsVisibility(isIconified());
    }

    public void setSubmitButtonEnabled(boolean z2) {
        this.mSubmitButtonEnabled = z2;
        updateViewsVisibility(isIconified());
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.mSuggestionsAdapter = cursorAdapter;
        this.mQueryTextView.setAdapter(cursorAdapter);
    }

    public static class SearchAutoComplete extends AutoCompleteTextView {
        private SearchView mSearchView;
        private int mThreshold;

        public SearchAutoComplete(Context context) {
            super(context);
            this.mThreshold = getThreshold();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isEmpty() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.mThreshold <= 0 || super.enoughToFilter();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z2, int i2, Rect rect) {
            super.onFocusChanged(z2, i2, rect);
            this.mSearchView.onTextFocusChanged();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.mSearchView.clearFocus();
                        this.mSearchView.setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i2, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z2) {
            super.onWindowFocusChanged(z2);
            if (z2 && this.mSearchView.hasFocus() && getVisibility() == 0) {
                ((InputMethodManager) getContext().getSystemService(Context.INPUT_METHOD_SERVICE)).showSoftInput(this, 0);
                if (SearchView.isLandscapeMode(getContext())) {
                    ensureImeVisible(true);
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(CharSequence charSequence) {
        }

        public void setSearchView(SearchView searchView) {
            this.mSearchView = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i2) {
            super.setThreshold(i2);
            this.mThreshold = i2;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mThreshold = getThreshold();
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.mThreshold = getThreshold();
        }
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mShowImeRunnable = new Runnable() { // from class: android.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) SearchView.this.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
                if (inputMethodManager != null) {
                    inputMethodManager.showSoftInputUnchecked(0, null);
                }
            }
        };
        this.mUpdateDrawableStateRunnable = new Runnable() { // from class: android.widget.SearchView.2
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.updateFocusedState();
            }
        };
        this.mReleaseCursorRunnable = new Runnable() { // from class: android.widget.SearchView.3
            @Override // java.lang.Runnable
            public void run() {
                if (SearchView.this.mSuggestionsAdapter == null || !(SearchView.this.mSuggestionsAdapter instanceof SuggestionsAdapter)) {
                    return;
                }
                SearchView.this.mSuggestionsAdapter.changeCursor(null);
            }
        };
        this.mOutsideDrawablesCache = new WeakHashMap<>();
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: android.widget.SearchView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view == SearchView.this.mSearchButton) {
                    SearchView.this.onSearchClicked();
                    return;
                }
                if (view == SearchView.this.mCloseButton) {
                    SearchView.this.onCloseClicked();
                    return;
                }
                if (view == SearchView.this.mSubmitButton) {
                    SearchView.this.onSubmitQuery();
                } else if (view == SearchView.this.mVoiceButton) {
                    SearchView.this.onVoiceClicked();
                } else if (view == SearchView.this.mQueryTextView) {
                    SearchView.this.forceSuggestionQuery();
                }
            }
        };
        this.mOnClickListener = onClickListener;
        this.mTextKeyListener = new View.OnKeyListener() { // from class: android.widget.SearchView.7
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                SearchableInfo.ActionKeyInfo actionKeyInfoFindActionKey;
                if (SearchView.this.mSearchable == null) {
                    return false;
                }
                if (SearchView.this.mQueryTextView.isPopupShowing() && SearchView.this.mQueryTextView.getListSelection() != -1) {
                    return SearchView.this.onSuggestionsKey(view, i2, keyEvent);
                }
                if (!SearchView.this.mQueryTextView.isEmpty() && keyEvent.hasNoModifiers()) {
                    if (keyEvent.getAction() == 1 && i2 == 66) {
                        view.cancelLongPress();
                        SearchView searchView = SearchView.this;
                        searchView.launchQuerySearch(0, null, searchView.mQueryTextView.getText().toString());
                        return true;
                    }
                    if (keyEvent.getAction() == 0 && (actionKeyInfoFindActionKey = SearchView.this.mSearchable.findActionKey(i2)) != null && actionKeyInfoFindActionKey.getQueryActionMsg() != null) {
                        SearchView.this.launchQuerySearch(i2, actionKeyInfoFindActionKey.getQueryActionMsg(), SearchView.this.mQueryTextView.getText().toString());
                        return true;
                    }
                }
                return false;
            }
        };
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: android.widget.SearchView.8
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                SearchView.this.onSubmitQuery();
                return true;
            }
        };
        this.mOnEditorActionListener = onEditorActionListener;
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: android.widget.SearchView.9
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
                SearchView.this.onItemClicked(i2, 0, null);
            }
        };
        this.mOnItemClickListener = onItemClickListener;
        AdapterView.OnItemSelectedListener onItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: android.widget.SearchView.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
                SearchView.this.onItemSelected(i2);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.mOnItemSelectedListener = onItemSelectedListener;
        this.mTextWatcher = new TextWatcher() { // from class: android.widget.SearchView.11
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                SearchView.this.onTextChanged(charSequence);
            }
        };
        ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(17367191, (ViewGroup) this, true);
        this.mSearchButton = findViewById(16909101);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(16909105);
        this.mQueryTextView = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.mSearchEditFrame = findViewById(16909102);
        this.mSearchPlate = findViewById(16909104);
        this.mSubmitArea = findViewById(16909107);
        this.mSubmitButton = findViewById(16909108);
        this.mCloseButton = (ImageView) findViewById(16909106);
        this.mVoiceButton = findViewById(16909109);
        this.mSearchHintIcon = (ImageView) findViewById(16909103);
        this.mSearchButton.setOnClickListener(onClickListener);
        this.mCloseButton.setOnClickListener(onClickListener);
        this.mSubmitButton.setOnClickListener(onClickListener);
        this.mVoiceButton.setOnClickListener(onClickListener);
        this.mQueryTextView.setOnClickListener(onClickListener);
        this.mQueryTextView.addTextChangedListener(this.mTextWatcher);
        this.mQueryTextView.setOnEditorActionListener(onEditorActionListener);
        this.mQueryTextView.setOnItemClickListener(onItemClickListener);
        this.mQueryTextView.setOnItemSelectedListener(onItemSelectedListener);
        this.mQueryTextView.setOnKeyListener(this.mTextKeyListener);
        this.mQueryTextView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: android.widget.SearchView.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z2) {
                if (SearchView.this.mOnQueryTextFocusChangeListener != null) {
                    SearchView.this.mOnQueryTextFocusChangeListener.onFocusChange(SearchView.this, z2);
                }
            }
        });
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.SearchView, 0, 0);
        setIconifiedByDefault(typedArrayObtainStyledAttributes.getBoolean(3, true));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        CharSequence text = typedArrayObtainStyledAttributes.getText(4);
        if (!TextUtils.isEmpty(text)) {
            setQueryHint(text);
        }
        int i2 = typedArrayObtainStyledAttributes.getInt(2, -1);
        if (i2 != -1) {
            setImeOptions(i2);
        }
        int i3 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (i3 != -1) {
            setInputType(i3);
        }
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, a.View, 0, 0);
        boolean z2 = typedArrayObtainStyledAttributes2.getBoolean(18, true);
        typedArrayObtainStyledAttributes2.recycle();
        setFocusable(z2);
        Intent intent = new Intent(RecognizerIntent.ACTION_WEB_SEARCH);
        this.mVoiceWebSearchIntent = intent;
        intent.addFlags(268435456);
        intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_WEB_SEARCH);
        Intent intent2 = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
        this.mVoiceAppSearchIntent = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById = findViewById(this.mQueryTextView.getDropDownAnchor());
        this.mDropDownAnchor = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: android.widget.SearchView.5
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                    SearchView.this.adjustDropDownSizeAndPosition();
                }
            });
        }
        updateViewsVisibility(this.mIconifiedByDefault);
        updateQueryHint();
    }

    private void setQuery(CharSequence charSequence) {
        this.mQueryTextView.setText(charSequence, true);
        this.mQueryTextView.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }
}
