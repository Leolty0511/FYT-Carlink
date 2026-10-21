package android.text.method;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import android.text.Editable;
import android.text.NoCopySpan;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class TextKeyListener extends BaseKeyListener implements SpanWatcher {
    public static final int AUTO_CAP = 1;
    public static final int AUTO_PERIOD = 4;
    public static final int AUTO_TEXT = 2;
    public static final int SHOW_PASSWORD = 8;
    private Capitalize mAutoCap;
    private boolean mAutoText;
    private SettingsObserver mObserver;
    private int mPrefs;
    private boolean mPrefsInited;
    private WeakReference<ContentResolver> mResolver;
    private static TextKeyListener[] sInstance = new TextKeyListener[Capitalize.values().length * 2];
    public static final Object ACTIVE = new NoCopySpan.Concrete();
    public static final Object CAPPED = new NoCopySpan.Concrete();
    public static final Object INHIBIT_REPLACEMENT = new NoCopySpan.Concrete();
    public static final Object LAST_TYPED = new NoCopySpan.Concrete();

    public enum Capitalize {
        NONE,
        SENTENCES,
        WORDS,
        CHARACTERS
    }

    public static class NullKeyListener implements KeyListener {
        private static NullKeyListener sInstance;

        private NullKeyListener() {
        }

        public static NullKeyListener getInstance() {
            NullKeyListener nullKeyListener = sInstance;
            if (nullKeyListener != null) {
                return nullKeyListener;
            }
            NullKeyListener nullKeyListener2 = new NullKeyListener();
            sInstance = nullKeyListener2;
            return nullKeyListener2;
        }

        @Override // android.text.method.KeyListener
        public void clearMetaKeyState(View view, Editable editable, int i2) {
        }

        @Override // android.text.method.KeyListener
        public int getInputType() {
            return 0;
        }

        @Override // android.text.method.KeyListener
        public boolean onKeyDown(View view, Editable editable, int i2, KeyEvent keyEvent) {
            return false;
        }

        @Override // android.text.method.KeyListener
        public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
            return false;
        }

        @Override // android.text.method.KeyListener
        public boolean onKeyUp(View view, Editable editable, int i2, KeyEvent keyEvent) {
            return false;
        }
    }

    public class SettingsObserver extends ContentObserver {
        public SettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z2) {
            if (TextKeyListener.this.mResolver == null) {
                TextKeyListener.this.mPrefsInited = false;
                return;
            }
            ContentResolver contentResolver = (ContentResolver) TextKeyListener.this.mResolver.get();
            if (contentResolver == null) {
                TextKeyListener.this.mPrefsInited = false;
            } else {
                TextKeyListener.this.updatePrefs(contentResolver);
            }
        }
    }

    public TextKeyListener(Capitalize capitalize, boolean z2) {
        this.mAutoCap = capitalize;
        this.mAutoText = z2;
    }

    public static void clear(Editable editable) {
        editable.clear();
        editable.removeSpan(ACTIVE);
        editable.removeSpan(CAPPED);
        editable.removeSpan(INHIBIT_REPLACEMENT);
        editable.removeSpan(LAST_TYPED);
        for (QwertyKeyListener.Replaced replaced : (QwertyKeyListener.Replaced[]) editable.getSpans(0, editable.length(), QwertyKeyListener.Replaced.class)) {
            editable.removeSpan(replaced);
        }
    }

    public static TextKeyListener getInstance(boolean z2, Capitalize capitalize) {
        int iOrdinal = (capitalize.ordinal() * 2) + (z2 ? 1 : 0);
        TextKeyListener[] textKeyListenerArr = sInstance;
        if (textKeyListenerArr[iOrdinal] == null) {
            textKeyListenerArr[iOrdinal] = new TextKeyListener(capitalize, z2);
        }
        return sInstance[iOrdinal];
    }

    private KeyListener getKeyListener(KeyEvent keyEvent) {
        int keyboardType = keyEvent.getKeyCharacterMap().getKeyboardType();
        if (keyboardType == 3) {
            return QwertyKeyListener.getInstance(this.mAutoText, this.mAutoCap);
        }
        if (keyboardType == 1) {
            return MultiTapKeyListener.getInstance(this.mAutoText, this.mAutoCap);
        }
        return (keyboardType == 4 || keyboardType == 5) ? QwertyKeyListener.getInstanceForFullKeyboard() : NullKeyListener.getInstance();
    }

    private void initPrefs(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        this.mResolver = new WeakReference<>(contentResolver);
        if (this.mObserver == null) {
            SettingsObserver settingsObserver = new SettingsObserver();
            this.mObserver = settingsObserver;
            contentResolver.registerContentObserver(Settings.System.CONTENT_URI, true, settingsObserver);
        }
        updatePrefs(contentResolver);
        this.mPrefsInited = true;
    }

    public static boolean shouldCap(Capitalize capitalize, CharSequence charSequence, int i2) {
        if (capitalize == Capitalize.NONE) {
            return false;
        }
        if (capitalize == Capitalize.CHARACTERS) {
            return true;
        }
        return TextUtils.getCapsMode(charSequence, i2, capitalize == Capitalize.WORDS ? 8192 : 16384) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePrefs(ContentResolver contentResolver) {
        this.mPrefs = (Settings.System.getInt(contentResolver, Settings.System.TEXT_AUTO_REPLACE, 1) > 0 ? 2 : 0) | (Settings.System.getInt(contentResolver, Settings.System.TEXT_AUTO_CAPS, 1) > 0 ? 1 : 0) | (Settings.System.getInt(contentResolver, Settings.System.TEXT_AUTO_PUNCTUATE, 1) > 0 ? 4 : 0) | (Settings.System.getInt(contentResolver, Settings.System.TEXT_SHOW_PASSWORD, 1) > 0 ? 8 : 0);
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return BaseKeyListener.makeTextContentType(this.mAutoCap, this.mAutoText);
    }

    public int getPrefs(Context context) {
        synchronized (this) {
            if (!this.mPrefsInited || this.mResolver.get() == null) {
                initPrefs(context);
            }
        }
        return this.mPrefs;
    }

    @Override // android.text.method.BaseKeyListener, android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i2, KeyEvent keyEvent) {
        return getKeyListener(keyEvent).onKeyDown(view, editable, i2, keyEvent);
    }

    @Override // android.text.method.BaseKeyListener, android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return getKeyListener(keyEvent).onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i2, KeyEvent keyEvent) {
        return getKeyListener(keyEvent).onKeyUp(view, editable, i2, keyEvent);
    }

    @Override // android.text.SpanWatcher
    public void onSpanAdded(Spannable spannable, Object obj, int i2, int i3) {
    }

    @Override // android.text.SpanWatcher
    public void onSpanChanged(Spannable spannable, Object obj, int i2, int i3, int i4, int i5) {
        if (obj == Selection.SELECTION_END) {
            spannable.removeSpan(ACTIVE);
        }
    }

    @Override // android.text.SpanWatcher
    public void onSpanRemoved(Spannable spannable, Object obj, int i2, int i3) {
    }

    public void release() {
        WeakReference<ContentResolver> weakReference = this.mResolver;
        if (weakReference != null) {
            ContentResolver contentResolver = weakReference.get();
            if (contentResolver != null) {
                contentResolver.unregisterContentObserver(this.mObserver);
                this.mResolver.clear();
            }
            this.mObserver = null;
            this.mResolver = null;
            this.mPrefsInited = false;
        }
    }

    public static TextKeyListener getInstance() {
        return getInstance(false, Capitalize.NONE);
    }
}
