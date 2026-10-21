package android.inputmethodservice;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import com.android.internal.view.menu.c;
import com.android.internal.view.menu.e;

/* JADX INFO: loaded from: classes.dex */
public class ExtractEditLayout extends LinearLayout {
    public ExtractActionMode mActionMode;
    public Button mEditButton;
    public Button mExtractActionButton;

    public class ExtractActionMode extends ActionMode implements c.a {
        private ActionMode.Callback mCallback;
        public c mMenu;

        public ExtractActionMode(ActionMode.Callback callback) {
            c cVar = new c(ExtractEditLayout.this.getContext());
            this.mMenu = cVar;
            cVar.H(this);
            this.mCallback = callback;
        }

        public boolean dispatchOnCreate() {
            this.mMenu.T();
            try {
                return this.mCallback.onCreateActionMode(this, this.mMenu);
            } finally {
                this.mMenu.S();
            }
        }

        @Override // android.view.ActionMode
        public void finish() {
            if (ExtractEditLayout.this.mActionMode != this) {
                return;
            }
            this.mCallback.onDestroyActionMode(this);
            this.mCallback = null;
            ExtractEditLayout.this.mExtractActionButton.setVisibility(0);
            ExtractEditLayout.this.mEditButton.setVisibility(4);
            ExtractEditLayout.this.sendAccessibilityEvent(32);
            ExtractEditLayout.this.mActionMode = null;
        }

        @Override // android.view.ActionMode
        public View getCustomView() {
            return null;
        }

        @Override // android.view.ActionMode
        public Menu getMenu() {
            return this.mMenu;
        }

        @Override // android.view.ActionMode
        public MenuInflater getMenuInflater() {
            return new MenuInflater(ExtractEditLayout.this.getContext());
        }

        @Override // android.view.ActionMode
        public CharSequence getSubtitle() {
            return null;
        }

        @Override // android.view.ActionMode
        public CharSequence getTitle() {
            return null;
        }

        @Override // android.view.ActionMode
        public void invalidate() {
            this.mMenu.T();
            try {
                this.mCallback.onPrepareActionMode(this, this.mMenu);
            } finally {
                this.mMenu.S();
            }
        }

        @Override // android.view.ActionMode
        public boolean isTitleOptional() {
            return true;
        }

        @Override // com.android.internal.view.menu.c.a
        public boolean onMenuItemSelected(c cVar, MenuItem menuItem) {
            ActionMode.Callback callback = this.mCallback;
            if (callback != null) {
                return callback.onActionItemClicked(this, menuItem);
            }
            return false;
        }

        @Override // com.android.internal.view.menu.c.a
        public void onMenuModeChange(c cVar) {
        }

        @Override // android.view.ActionMode
        public void setCustomView(View view) {
        }

        @Override // android.view.ActionMode
        public void setSubtitle(int i2) {
        }

        @Override // android.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
        }

        @Override // android.view.ActionMode
        public void setTitle(int i2) {
        }

        @Override // android.view.ActionMode
        public void setTitle(CharSequence charSequence) {
        }
    }

    public ExtractEditLayout(Context context) {
        super(context);
    }

    public void finishActionMode() {
        ExtractActionMode extractActionMode = this.mActionMode;
        if (extractActionMode != null) {
            extractActionMode.finish();
        }
    }

    public boolean isActionModeStarted() {
        return this.mActionMode != null;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mExtractActionButton = (Button) findViewById(16908996);
        Button button = (Button) findViewById(16908997);
        this.mEditButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: android.inputmethodservice.ExtractEditLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExtractEditLayout extractEditLayout = ExtractEditLayout.this;
                if (extractEditLayout.mActionMode != null) {
                    new e(extractEditLayout.getContext(), ExtractEditLayout.this.mActionMode.mMenu, view).r();
                }
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        ExtractActionMode extractActionMode = new ExtractActionMode(callback);
        if (!extractActionMode.dispatchOnCreate()) {
            return null;
        }
        extractActionMode.invalidate();
        this.mExtractActionButton.setVisibility(4);
        this.mEditButton.setVisibility(0);
        this.mActionMode = extractActionMode;
        sendAccessibilityEvent(32);
        return extractActionMode;
    }

    public ExtractEditLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
