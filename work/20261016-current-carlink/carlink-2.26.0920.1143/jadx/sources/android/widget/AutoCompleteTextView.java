package android.widget;

import android.app.m;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.R;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class AutoCompleteTextView extends EditText implements Filter.FilterListener {
    static final boolean DEBUG = false;
    static final int EXPAND_MAX = 3;
    static final String TAG = "AutoCompleteTextView";
    private ListAdapter mAdapter;
    private boolean mBlockCompletion;
    private int mDropDownAnchorId;
    private boolean mDropDownDismissedOnCompletion;
    private Filter mFilter;
    private int mHintResource;
    private CharSequence mHintText;
    private TextView mHintView;
    private AdapterView.OnItemClickListener mItemClickListener;
    private AdapterView.OnItemSelectedListener mItemSelectedListener;
    private int mLastKeyCode;
    private PopupDataSetObserver mObserver;
    private boolean mOpenBefore;
    private final PassThroughClickListener mPassThroughClickListener;
    private final ListPopupWindow mPopup;
    private boolean mPopupCanBeUpdated;
    private final Context mPopupContext;
    private int mThreshold;
    private Validator mValidator;

    public class DropDownItemClickListener implements AdapterView.OnItemClickListener {
        private DropDownItemClickListener() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
            AutoCompleteTextView.this.performCompletion(view, i2, j2);
        }
    }

    public class MyWatcher implements TextWatcher {
        private MyWatcher() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView.this.doAfterTextChanged();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            AutoCompleteTextView.this.doBeforeTextChanged();
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }
    }

    public interface OnDismissListener {
        void onDismiss();
    }

    public class PassThroughClickListener implements View.OnClickListener {
        private View.OnClickListener mWrapped;

        private PassThroughClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AutoCompleteTextView.this.onClickImpl();
            View.OnClickListener onClickListener = this.mWrapped;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    public static class PopupDataSetObserver extends DataSetObserver {
        private final WeakReference<AutoCompleteTextView> mViewReference;
        private final Runnable updateRunnable;

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AutoCompleteTextView autoCompleteTextView = this.mViewReference.get();
            if (autoCompleteTextView == null || autoCompleteTextView.mAdapter == null) {
                return;
            }
            autoCompleteTextView.post(this.updateRunnable);
        }

        private PopupDataSetObserver(AutoCompleteTextView autoCompleteTextView) {
            this.updateRunnable = new Runnable() { // from class: android.widget.AutoCompleteTextView.PopupDataSetObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    ListAdapter listAdapter;
                    AutoCompleteTextView autoCompleteTextView2 = (AutoCompleteTextView) PopupDataSetObserver.this.mViewReference.get();
                    if (autoCompleteTextView2 == null || (listAdapter = autoCompleteTextView2.mAdapter) == null) {
                        return;
                    }
                    autoCompleteTextView2.updateDropDownForFilter(listAdapter.getCount());
                }
            };
            this.mViewReference = new WeakReference<>(autoCompleteTextView);
        }
    }

    public interface Validator {
        CharSequence fixText(CharSequence charSequence);

        boolean isValid(CharSequence charSequence);
    }

    public AutoCompleteTextView(Context context) {
        this(context, null);
    }

    private void buildImeCompletions() {
        InputMethodManager inputMethodManagerPeekInstance;
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter == null || (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) == null) {
            return;
        }
        int iMin = Math.min(listAdapter.getCount(), 20);
        CompletionInfo[] completionInfoArr = new CompletionInfo[iMin];
        int i2 = 0;
        for (int i3 = 0; i3 < iMin; i3++) {
            if (listAdapter.isEnabled(i3)) {
                completionInfoArr[i2] = new CompletionInfo(listAdapter.getItemId(i3), i2, convertSelectionToString(listAdapter.getItem(i3)));
                i2++;
            }
        }
        if (i2 != iMin) {
            CompletionInfo[] completionInfoArr2 = new CompletionInfo[i2];
            System.arraycopy(completionInfoArr, 0, completionInfoArr2, 0, i2);
            completionInfoArr = completionInfoArr2;
        }
        inputMethodManagerPeekInstance.displayCompletions(this, completionInfoArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClickImpl() {
        if (isPopupShowing()) {
            ensureImeVisible(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDropDownForFilter(int i2) {
        if (getWindowVisibility() == 8) {
            return;
        }
        boolean zIsDropDownAlwaysVisible = this.mPopup.isDropDownAlwaysVisible();
        boolean zEnoughToFilter = enoughToFilter();
        if ((i2 > 0 || zIsDropDownAlwaysVisible) && zEnoughToFilter) {
            if (hasFocus() && hasWindowFocus() && this.mPopupCanBeUpdated) {
                showDropDown();
                return;
            }
            return;
        }
        if (zIsDropDownAlwaysVisible || !isPopupShowing()) {
            return;
        }
        dismissDropDown();
        this.mPopupCanBeUpdated = true;
    }

    public void clearListSelection() {
        this.mPopup.clearListSelection();
    }

    public CharSequence convertSelectionToString(Object obj) {
        return this.mFilter.convertResultToString(obj);
    }

    public void dismissDropDown() {
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance != null) {
            inputMethodManagerPeekInstance.displayCompletions(this, null);
        }
        this.mPopup.dismiss();
        this.mPopupCanBeUpdated = false;
    }

    public void doAfterTextChanged() {
        if (this.mBlockCompletion) {
            return;
        }
        if (!this.mOpenBefore || isPopupShowing()) {
            if (enoughToFilter()) {
                if (this.mFilter != null) {
                    this.mPopupCanBeUpdated = true;
                    performFiltering(getText(), this.mLastKeyCode);
                    return;
                }
                return;
            }
            if (!this.mPopup.isDropDownAlwaysVisible()) {
                dismissDropDown();
            }
            Filter filter = this.mFilter;
            if (filter != null) {
                filter.filter(null);
            }
        }
    }

    public void doBeforeTextChanged() {
        if (this.mBlockCompletion) {
            return;
        }
        this.mOpenBefore = isPopupShowing();
    }

    public boolean enoughToFilter() {
        return getText().length() >= this.mThreshold;
    }

    public void ensureImeVisible(boolean z2) {
        this.mPopup.setInputMethodMode(z2 ? 1 : 2);
        if (this.mPopup.isDropDownAlwaysVisible() || (this.mFilter != null && enoughToFilter())) {
            showDropDown();
        }
    }

    public ListAdapter getAdapter() {
        return this.mAdapter;
    }

    public CharSequence getCompletionHint() {
        return this.mHintText;
    }

    public int getDropDownAnchor() {
        return this.mDropDownAnchorId;
    }

    public int getDropDownAnimationStyle() {
        return this.mPopup.getAnimationStyle();
    }

    public Drawable getDropDownBackground() {
        return this.mPopup.getBackground();
    }

    public int getDropDownHeight() {
        return this.mPopup.getHeight();
    }

    public int getDropDownHorizontalOffset() {
        return this.mPopup.getHorizontalOffset();
    }

    public int getDropDownVerticalOffset() {
        return this.mPopup.getVerticalOffset();
    }

    public int getDropDownWidth() {
        return this.mPopup.getWidth();
    }

    public Filter getFilter() {
        return this.mFilter;
    }

    @Deprecated
    public AdapterView.OnItemClickListener getItemClickListener() {
        return this.mItemClickListener;
    }

    @Deprecated
    public AdapterView.OnItemSelectedListener getItemSelectedListener() {
        return this.mItemSelectedListener;
    }

    public int getListSelection() {
        return this.mPopup.getSelectedItemPosition();
    }

    public AdapterView.OnItemClickListener getOnItemClickListener() {
        return this.mItemClickListener;
    }

    public AdapterView.OnItemSelectedListener getOnItemSelectedListener() {
        return this.mItemSelectedListener;
    }

    public int getThreshold() {
        return this.mThreshold;
    }

    public Validator getValidator() {
        return this.mValidator;
    }

    public boolean isDropDownAlwaysVisible() {
        return this.mPopup.isDropDownAlwaysVisible();
    }

    public boolean isDropDownDismissedOnCompletion() {
        return this.mDropDownDismissedOnCompletion;
    }

    public boolean isInputMethodNotNeeded() {
        return this.mPopup.getInputMethodMode() == 2;
    }

    public boolean isPerformingCompletion() {
        return this.mBlockCompletion;
    }

    public boolean isPopupShowing() {
        return this.mPopup.isShowing();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.widget.TextView
    public void onCommitCompletion(CompletionInfo completionInfo) {
        if (isPopupShowing()) {
            this.mPopup.performItemClick(completionInfo.getPosition());
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        dismissDropDown();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDisplayHint(int i2) {
        super.onDisplayHint(i2);
        if (i2 == 4 && !this.mPopup.isDropDownAlwaysVisible()) {
            dismissDropDown();
        }
    }

    @Override // android.widget.Filter.FilterListener
    public void onFilterComplete(int i2) {
        updateDropDownForFilter(i2);
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        super.onFocusChanged(z2, i2, rect);
        if (isTemporarilyDetached()) {
            return;
        }
        if (!z2) {
            performValidation();
        }
        if (z2 || this.mPopup.isDropDownAlwaysVisible()) {
            return;
        }
        dismissDropDown();
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.mPopup.onKeyDown(i2, keyEvent)) {
            return true;
        }
        if (!isPopupShowing() && i2 == 20 && keyEvent.hasNoModifiers()) {
            performValidation();
        }
        if (isPopupShowing() && i2 == 61 && keyEvent.hasNoModifiers()) {
            return true;
        }
        this.mLastKeyCode = i2;
        boolean zOnKeyDown = super.onKeyDown(i2, keyEvent);
        this.mLastKeyCode = 0;
        if (zOnKeyDown && isPopupShowing()) {
            clearListSelection();
        }
        return zOnKeyDown;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && isPopupShowing() && !this.mPopup.isDropDownAlwaysVisible()) {
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
                    dismissDropDown();
                    return true;
                }
            }
        }
        return super.onKeyPreIme(i2, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (this.mPopup.onKeyUp(i2, keyEvent) && (i2 == 23 || i2 == 61 || i2 == 66)) {
            if (keyEvent.hasNoModifiers()) {
                performCompletion();
            }
            return true;
        }
        if (!isPopupShowing() || i2 != 61 || !keyEvent.hasNoModifiers()) {
            return super.onKeyUp(i2, keyEvent);
        }
        performCompletion();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2 || this.mPopup.isDropDownAlwaysVisible()) {
            return;
        }
        dismissDropDown();
    }

    public void performCompletion() {
        performCompletion(null, -1, -1L);
    }

    public void performFiltering(CharSequence charSequence, int i2) {
        this.mFilter.filter(charSequence, this);
    }

    public void performValidation() {
        if (this.mValidator == null) {
            return;
        }
        Editable text = getText();
        if (TextUtils.isEmpty(text) || this.mValidator.isValid(text)) {
            return;
        }
        setText(this.mValidator.fixText(text));
    }

    public void replaceText(CharSequence charSequence) {
        clearComposingText();
        setText(charSequence);
        Editable text = getText();
        Selection.setSelection(text, text.length());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends ListAdapter & Filterable> void setAdapter(T t2) {
        PopupDataSetObserver popupDataSetObserver = this.mObserver;
        if (popupDataSetObserver == null) {
            this.mObserver = new PopupDataSetObserver();
        } else {
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                listAdapter.unregisterDataSetObserver(popupDataSetObserver);
            }
        }
        this.mAdapter = t2;
        if (t2 != 0) {
            this.mFilter = t2.getFilter();
            t2.registerDataSetObserver(this.mObserver);
        } else {
            this.mFilter = null;
        }
        this.mPopup.setAdapter(this.mAdapter);
    }

    public void setCompletionHint(CharSequence charSequence) {
        this.mHintText = charSequence;
        if (charSequence == null) {
            this.mPopup.setPromptView(null);
            this.mHintView = null;
            return;
        }
        TextView textView = this.mHintView;
        if (textView != null) {
            textView.setText(charSequence);
            return;
        }
        TextView textView2 = (TextView) LayoutInflater.from(this.mPopupContext).inflate(this.mHintResource, (ViewGroup) null).findViewById(16908308);
        textView2.setText(this.mHintText);
        this.mHintView = textView2;
        this.mPopup.setPromptView(textView2);
    }

    public void setDropDownAlwaysVisible(boolean z2) {
        this.mPopup.setDropDownAlwaysVisible(z2);
    }

    public void setDropDownAnchor(int i2) {
        this.mDropDownAnchorId = i2;
        this.mPopup.setAnchorView(null);
    }

    public void setDropDownAnimationStyle(int i2) {
        this.mPopup.setAnimationStyle(i2);
    }

    public void setDropDownBackgroundDrawable(Drawable drawable) {
        this.mPopup.setBackgroundDrawable(drawable);
    }

    public void setDropDownBackgroundResource(int i2) {
        this.mPopup.setBackgroundDrawable(getContext().getDrawable(i2));
    }

    public void setDropDownDismissedOnCompletion(boolean z2) {
        this.mDropDownDismissedOnCompletion = z2;
    }

    public void setDropDownHeight(int i2) {
        if (i2 < 0 && -2 != i2 && -1 != i2) {
            m.p("height value is negative: ", i2, TAG);
            i2 = -2;
        }
        this.mPopup.setHeight(i2);
    }

    public void setDropDownHorizontalOffset(int i2) {
        this.mPopup.setHorizontalOffset(i2);
    }

    public void setDropDownVerticalOffset(int i2) {
        this.mPopup.setVerticalOffset(i2);
    }

    public void setDropDownWidth(int i2) {
        this.mPopup.setWidth(i2);
    }

    public void setForceIgnoreOutsideTouch(boolean z2) {
        this.mPopup.setForceIgnoreOutsideTouch(z2);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean setFrame(int i2, int i3, int i4, int i5) {
        boolean frame = super.setFrame(i2, i3, i4, i5);
        if (isPopupShowing()) {
            showDropDown();
        }
        return frame;
    }

    public void setListSelection(int i2) {
        this.mPopup.setSelection(i2);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mPassThroughClickListener.mWrapped = onClickListener;
    }

    public void setOnDismissListener(final OnDismissListener onDismissListener) {
        this.mPopup.setOnDismissListener(onDismissListener != null ? new PopupWindow.OnDismissListener() { // from class: android.widget.AutoCompleteTextView.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                onDismissListener.onDismiss();
            }
        } : null);
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.mItemClickListener = onItemClickListener;
    }

    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.mItemSelectedListener = onItemSelectedListener;
    }

    public void setText(CharSequence charSequence, boolean z2) {
        if (z2) {
            setText(charSequence);
            return;
        }
        this.mBlockCompletion = true;
        setText(charSequence);
        this.mBlockCompletion = false;
    }

    public void setThreshold(int i2) {
        if (i2 <= 0) {
            i2 = 1;
        }
        this.mThreshold = i2;
    }

    public void setValidator(Validator validator) {
        this.mValidator = validator;
    }

    public void showDropDown() {
        buildImeCompletions();
        if (this.mPopup.getAnchorView() == null) {
            if (this.mDropDownAnchorId != -1) {
                this.mPopup.setAnchorView(getRootView().findViewById(this.mDropDownAnchorId));
            } else {
                this.mPopup.setAnchorView(this);
            }
        }
        if (!isPopupShowing()) {
            this.mPopup.setInputMethodMode(1);
            this.mPopup.setListItemExpandMax(3);
        }
        this.mPopup.show();
        this.mPopup.getListView().setOverScrollMode(0);
    }

    public void showDropDownAfterLayout() {
        this.mPopup.postShow();
    }

    public AutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842859);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performCompletion(View view, int i2, long j2) {
        if (isPopupShowing()) {
            Object selectedItem = i2 < 0 ? this.mPopup.getSelectedItem() : this.mAdapter.getItem(i2);
            if (selectedItem == null) {
                Log.w(TAG, "performCompletion: no selected item");
                return;
            }
            this.mBlockCompletion = true;
            replaceText(convertSelectionToString(selectedItem));
            this.mBlockCompletion = false;
            if (this.mItemClickListener != null) {
                ListPopupWindow listPopupWindow = this.mPopup;
                if (view == null || i2 < 0) {
                    view = listPopupWindow.getSelectedView();
                    i2 = listPopupWindow.getSelectedItemPosition();
                    j2 = listPopupWindow.getSelectedItemId();
                }
                this.mItemClickListener.onItemClick(listPopupWindow.getListView(), view, i2, j2);
            }
        }
        if (!this.mDropDownDismissedOnCompletion || this.mPopup.isDropDownAlwaysVisible()) {
            return;
        }
        dismissDropDown();
    }

    public AutoCompleteTextView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public AutoCompleteTextView(Context context, AttributeSet attributeSet, int i2, int i3) {
        this(context, attributeSet, i2, i3, null);
    }

    public AutoCompleteTextView(Context context, AttributeSet attributeSet, int i2, int i3, Resources.Theme theme) {
        super(context, attributeSet, i2, i3);
        this.mDropDownDismissedOnCompletion = true;
        this.mLastKeyCode = 0;
        this.mValidator = null;
        this.mPopupCanBeUpdated = true;
        int[] iArr = R.styleable.AutoCompleteTextView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, i3);
        if (theme != null) {
            this.mPopupContext = new ContextThemeWrapper(context, theme);
        } else {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(8, 0);
            if (resourceId != 0) {
                this.mPopupContext = new ContextThemeWrapper(context, resourceId);
            } else {
                this.mPopupContext = context;
            }
        }
        Context context2 = this.mPopupContext;
        TypedArray typedArrayObtainStyledAttributes2 = context2 != context ? context2.obtainStyledAttributes(attributeSet, iArr, i2, i3) : typedArrayObtainStyledAttributes;
        Drawable drawable = typedArrayObtainStyledAttributes2.getDrawable(3);
        int layoutDimension = typedArrayObtainStyledAttributes2.getLayoutDimension(5, -2);
        int layoutDimension2 = typedArrayObtainStyledAttributes2.getLayoutDimension(7, -2);
        int resourceId2 = typedArrayObtainStyledAttributes2.getResourceId(1, R.layout.simple_dropdown_hint);
        CharSequence text = typedArrayObtainStyledAttributes2.getText(0);
        if (typedArrayObtainStyledAttributes2 != typedArrayObtainStyledAttributes) {
            typedArrayObtainStyledAttributes2.recycle();
        }
        ListPopupWindow listPopupWindow = new ListPopupWindow(this.mPopupContext, attributeSet, i2, i3);
        this.mPopup = listPopupWindow;
        listPopupWindow.setSoftInputMode(16);
        listPopupWindow.setPromptPosition(1);
        listPopupWindow.setListSelector(drawable);
        listPopupWindow.setOnItemClickListener(new DropDownItemClickListener());
        listPopupWindow.setWidth(layoutDimension);
        listPopupWindow.setHeight(layoutDimension2);
        this.mHintResource = resourceId2;
        setCompletionHint(text);
        this.mDropDownAnchorId = typedArrayObtainStyledAttributes.getResourceId(6, -1);
        this.mThreshold = typedArrayObtainStyledAttributes.getInt(2, 2);
        typedArrayObtainStyledAttributes.recycle();
        int inputType = getInputType();
        if ((inputType & 15) == 1) {
            setRawInputType(inputType | 65536);
        }
        setFocusable(true);
        addTextChangedListener(new MyWatcher());
        PassThroughClickListener passThroughClickListener = new PassThroughClickListener();
        this.mPassThroughClickListener = passThroughClickListener;
        super.setOnClickListener(passThroughClickListener);
    }
}
