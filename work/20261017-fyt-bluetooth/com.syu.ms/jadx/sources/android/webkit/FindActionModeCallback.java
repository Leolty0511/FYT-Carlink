package android.webkit;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.ProxyProperties;
import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import dalvik.system.BlockGuard;

/* JADX INFO: loaded from: classes.dex */
public class FindActionModeCallback implements ActionMode.Callback, TextWatcher, View.OnClickListener, WebView.FindListener {
    private ActionMode mActionMode;
    private int mActiveMatchIndex;
    private View mCustomView;
    private EditText mEditText;
    private InputMethodManager mInput;
    private TextView mMatches;
    private boolean mMatchesFound;
    private int mNumberOfMatches;
    private Resources mResources;
    private WebView mWebView;
    private Rect mGlobalVisibleRect = new Rect();
    private Point mGlobalVisibleOffset = new Point();

    public static class NoAction implements ActionMode.Callback {
        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }
    }

    public FindActionModeCallback(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(17367229, (ViewGroup) null);
        this.mCustomView = viewInflate;
        EditText editText = (EditText) viewInflate.findViewById(R.id.edit);
        this.mEditText = editText;
        editText.setCustomSelectionActionModeCallback(new NoAction());
        this.mEditText.setOnClickListener(this);
        setText(ProxyProperties.LOCAL_EXCL_LIST);
        this.mMatches = (TextView) this.mCustomView.findViewById(16909172);
        this.mInput = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
        this.mResources = context.getResources();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    private void findNext(boolean z2) throws BlockGuard.BlockGuardPolicyException {
        WebView webView = this.mWebView;
        if (webView == null) {
            throw new AssertionError("No WebView for FindActionModeCallback::findNext");
        }
        if (!this.mMatchesFound) {
            findAll();
        } else {
            if (this.mNumberOfMatches == 0) {
                return;
            }
            webView.findNext(z2);
            updateMatchesString();
        }
    }

    private void updateMatchesString() {
        int i2 = this.mNumberOfMatches;
        if (i2 == 0) {
            this.mMatches.setText(17040592);
        } else {
            this.mMatches.setText(this.mResources.getQuantityString(18022423, i2, Integer.valueOf(this.mActiveMatchIndex + 1), Integer.valueOf(this.mNumberOfMatches)));
        }
        this.mMatches.setVisibility(0);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    public void findAll() throws BlockGuard.BlockGuardPolicyException {
        if (this.mWebView == null) {
            throw new AssertionError("No WebView for FindActionModeCallback::findAll");
        }
        Editable text = this.mEditText.getText();
        if (text.length() == 0) {
            this.mWebView.clearMatches();
            this.mMatches.setVisibility(8);
            this.mMatchesFound = false;
            this.mWebView.findAll(null);
            return;
        }
        this.mMatchesFound = true;
        this.mMatches.setVisibility(4);
        this.mNumberOfMatches = 0;
        this.mWebView.findAllAsync(text.toString());
    }

    public void finish() {
        this.mActionMode.finish();
    }

    public int getActionModeGlobalBottom() {
        if (this.mActionMode == null) {
            return 0;
        }
        View view = (View) this.mCustomView.getParent();
        if (view == null) {
            view = this.mCustomView;
        }
        view.getGlobalVisibleRect(this.mGlobalVisibleRect, this.mGlobalVisibleOffset);
        return this.mGlobalVisibleRect.bottom;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) throws BlockGuard.BlockGuardPolicyException {
        WebView webView = this.mWebView;
        if (webView == null) {
            throw new AssertionError("No WebView for FindActionModeCallback::onActionItemClicked");
        }
        this.mInput.hideSoftInputFromWindow(webView.getWindowToken(), 0);
        switch (menuItem.getItemId()) {
            case 16909223:
                findNext(false);
                return true;
            case 16909224:
                findNext(true);
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws BlockGuard.BlockGuardPolicyException {
        findNext(true);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        if (!actionMode.isUiFocusable()) {
            return false;
        }
        actionMode.setCustomView(this.mCustomView);
        actionMode.getMenuInflater().inflate(18087937, menu);
        this.mActionMode = actionMode;
        Editable text = this.mEditText.getText();
        Selection.setSelection(text, text.length());
        this.mMatches.setVisibility(8);
        this.mMatchesFound = false;
        this.mMatches.setText("0");
        this.mEditText.requestFocus();
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.mActionMode = null;
        this.mWebView.notifyFindDialogDismissed();
        this.mWebView.setFindDialogFindListener(null);
        this.mInput.hideSoftInputFromWindow(this.mWebView.getWindowToken(), 0);
    }

    @Override // android.webkit.WebView.FindListener
    public void onFindResultReceived(int i2, int i3, boolean z2) {
        if (z2) {
            updateMatchCount(i2, i3, i3 == 0);
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) throws BlockGuard.BlockGuardPolicyException {
        findAll();
    }

    public void setText(String str) {
        this.mEditText.setText(str);
        Editable text = this.mEditText.getText();
        int length = text.length();
        Selection.setSelection(text, length, length);
        text.setSpan(this, 0, length, 18);
        this.mMatchesFound = false;
    }

    public void setWebView(WebView webView) {
        if (webView == null) {
            throw new AssertionError("WebView supplied to FindActionModeCallback cannot be null");
        }
        this.mWebView = webView;
        webView.setFindDialogFindListener(this);
    }

    public void showSoftInput() {
        this.mInput.startGettingWindowFocus(this.mEditText.getRootView());
        this.mInput.focusIn(this.mEditText);
        this.mInput.showSoftInput(this.mEditText, 0);
    }

    public void updateMatchCount(int i2, int i3, boolean z2) {
        if (z2) {
            this.mMatches.setVisibility(8);
            this.mNumberOfMatches = 0;
        } else {
            this.mNumberOfMatches = i3;
            this.mActiveMatchIndex = i2;
            updateMatchesString();
        }
    }
}
