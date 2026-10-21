package android.widget;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.net.ProxyProperties;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.TextWatcher;
import android.text.method.DialerKeyListener;
import android.text.method.KeyListener;
import android.text.method.TextKeyListener;
import android.util.AttributeSet;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
public class DialerFilter extends RelativeLayout {
    public static final int DIGITS_AND_LETTERS = 1;
    public static final int DIGITS_AND_LETTERS_NO_DIGITS = 2;
    public static final int DIGITS_AND_LETTERS_NO_LETTERS = 3;
    public static final int DIGITS_ONLY = 4;
    public static final int LETTERS_ONLY = 5;
    public EditText mDigits;
    public EditText mHint;
    public ImageView mIcon;
    public InputFilter[] mInputFilters;
    private boolean mIsQwerty;
    public EditText mLetters;
    public int mMode;
    public EditText mPrimary;

    public DialerFilter(Context context) {
        super(context);
    }

    private void makeDigitsPrimary() {
        if (this.mPrimary == this.mLetters) {
            swapPrimaryAndHint(false);
        }
    }

    private void makeLettersPrimary() {
        if (this.mPrimary == this.mDigits) {
            swapPrimaryAndHint(true);
        }
    }

    private void swapPrimaryAndHint(boolean z2) {
        Editable text = this.mLetters.getText();
        Editable text2 = this.mDigits.getText();
        KeyListener keyListener = this.mLetters.getKeyListener();
        KeyListener keyListener2 = this.mDigits.getKeyListener();
        if (z2) {
            this.mLetters = this.mPrimary;
            this.mDigits = this.mHint;
        } else {
            this.mLetters = this.mHint;
            this.mDigits = this.mPrimary;
        }
        this.mLetters.setKeyListener(keyListener);
        this.mLetters.setText(text);
        Editable text3 = this.mLetters.getText();
        Selection.setSelection(text3, text3.length());
        this.mDigits.setKeyListener(keyListener2);
        this.mDigits.setText(text2);
        Editable text4 = this.mDigits.getText();
        Selection.setSelection(text4, text4.length());
        this.mPrimary.setFilters(this.mInputFilters);
        this.mHint.setFilters(this.mInputFilters);
    }

    public void append(String str) {
        int i2 = this.mMode;
        if (i2 == 1) {
            this.mDigits.getText().append((CharSequence) str);
            this.mLetters.getText().append((CharSequence) str);
            return;
        }
        if (i2 != 2) {
            if (i2 == 3 || i2 == 4) {
                this.mDigits.getText().append((CharSequence) str);
                return;
            } else if (i2 != 5) {
                return;
            }
        }
        this.mLetters.getText().append((CharSequence) str);
    }

    public void clearText() {
        this.mLetters.getText().clear();
        this.mDigits.getText().clear();
        if (this.mIsQwerty) {
            setMode(1);
        } else {
            setMode(4);
        }
    }

    public CharSequence getDigits() {
        return this.mDigits.getVisibility() == 0 ? this.mDigits.getText() : ProxyProperties.LOCAL_EXCL_LIST;
    }

    public CharSequence getFilterText() {
        return this.mMode != 4 ? getLetters() : getDigits();
    }

    public CharSequence getLetters() {
        return this.mLetters.getVisibility() == 0 ? this.mLetters.getText() : ProxyProperties.LOCAL_EXCL_LIST;
    }

    public int getMode() {
        return this.mMode;
    }

    public boolean isQwertyKeyboard() {
        return this.mIsQwerty;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mInputFilters = new InputFilter[]{new InputFilter.AllCaps()};
        EditText editText = (EditText) findViewById(R.id.hint);
        this.mHint = editText;
        if (editText == null) {
            throw new IllegalStateException("DialerFilter must have a child EditText named hint");
        }
        editText.setFilters(this.mInputFilters);
        EditText editText2 = this.mHint;
        this.mLetters = editText2;
        editText2.setKeyListener(TextKeyListener.getInstance());
        this.mLetters.setMovementMethod(null);
        this.mLetters.setFocusable(false);
        EditText editText3 = (EditText) findViewById(R.id.primary);
        this.mPrimary = editText3;
        if (editText3 == null) {
            throw new IllegalStateException("DialerFilter must have a child EditText named primary");
        }
        editText3.setFilters(this.mInputFilters);
        EditText editText4 = this.mPrimary;
        this.mDigits = editText4;
        editText4.setKeyListener(DialerKeyListener.getInstance());
        this.mDigits.setMovementMethod(null);
        this.mDigits.setFocusable(false);
        this.mIcon = (ImageView) findViewById(R.id.icon);
        setFocusable(true);
        this.mIsQwerty = true;
        setMode(1);
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        super.onFocusChanged(z2, i2, rect);
        ImageView imageView = this.mIcon;
        if (imageView != null) {
            imageView.setVisibility(z2 ? 0 : 8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0027  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        boolean zOnKeyDown = false;
        if (i2 != 66) {
            if (i2 != 67) {
                switch (i2) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        int i3 = this.mMode;
                        if (i3 == 1) {
                            zOnKeyDown = this.mLetters.onKeyDown(i2, keyEvent);
                            if (KeyEvent.isModifierKey(i2)) {
                                this.mDigits.onKeyDown(i2, keyEvent);
                                zOnKeyDown = true;
                            } else if (keyEvent.isPrintingKey() || i2 == 62 || i2 == 61) {
                                if (keyEvent.getMatch(DialerKeyListener.CHARACTERS) == 0) {
                                    setMode(2);
                                } else {
                                    zOnKeyDown = this.mDigits.onKeyDown(i2, keyEvent) & zOnKeyDown;
                                }
                            }
                        } else if (i3 == 2) {
                            zOnKeyDown = this.mLetters.onKeyDown(i2, keyEvent);
                        } else if (i3 == 3 || i3 == 4) {
                            zOnKeyDown = this.mDigits.onKeyDown(i2, keyEvent);
                        } else if (i3 == 5) {
                            zOnKeyDown = this.mLetters.onKeyDown(i2, keyEvent);
                        }
                        break;
                }
            } else {
                int i4 = this.mMode;
                if (i4 == 1) {
                    zOnKeyDown = this.mLetters.onKeyDown(i2, keyEvent) & this.mDigits.onKeyDown(i2, keyEvent);
                } else if (i4 == 2) {
                    zOnKeyDown = this.mLetters.onKeyDown(i2, keyEvent);
                    if (this.mLetters.getText().length() == this.mDigits.getText().length()) {
                        setMode(1);
                    }
                } else if (i4 == 3) {
                    if (this.mDigits.getText().length() == this.mLetters.getText().length()) {
                        this.mLetters.onKeyDown(i2, keyEvent);
                        setMode(1);
                    }
                    zOnKeyDown = this.mDigits.onKeyDown(i2, keyEvent);
                } else if (i4 == 4) {
                    zOnKeyDown = this.mDigits.onKeyDown(i2, keyEvent);
                } else if (i4 == 5) {
                    zOnKeyDown = this.mLetters.onKeyDown(i2, keyEvent);
                }
            }
        }
        if (zOnKeyDown) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        return this.mLetters.onKeyUp(i2, keyEvent) || this.mDigits.onKeyUp(i2, keyEvent);
    }

    public void onModeChange(int i2, int i3) {
    }

    public void removeFilterWatcher(TextWatcher textWatcher) {
        (this.mMode != 4 ? this.mLetters.getText() : this.mDigits.getText()).removeSpan(textWatcher);
    }

    public void setDigitsWatcher(TextWatcher textWatcher) {
        Editable text = this.mDigits.getText();
        text.setSpan(textWatcher, 0, text.length(), 18);
    }

    public void setFilterWatcher(TextWatcher textWatcher) {
        if (this.mMode != 4) {
            setLettersWatcher(textWatcher);
        } else {
            setDigitsWatcher(textWatcher);
        }
    }

    public void setLettersWatcher(TextWatcher textWatcher) {
        Editable text = this.mLetters.getText();
        text.setSpan(textWatcher, 0, text.length(), 18);
    }

    public void setMode(int i2) {
        if (i2 == 1) {
            makeDigitsPrimary();
            this.mLetters.setVisibility(0);
            this.mDigits.setVisibility(0);
        } else if (i2 == 2) {
            makeLettersPrimary();
            this.mLetters.setVisibility(0);
            this.mDigits.setVisibility(4);
        } else if (i2 == 3) {
            makeDigitsPrimary();
            this.mLetters.setVisibility(4);
            this.mDigits.setVisibility(0);
        } else if (i2 == 4) {
            makeDigitsPrimary();
            this.mLetters.setVisibility(8);
            this.mDigits.setVisibility(0);
        } else if (i2 == 5) {
            makeLettersPrimary();
            this.mLetters.setVisibility(0);
            this.mDigits.setVisibility(8);
        }
        int i3 = this.mMode;
        this.mMode = i2;
        onModeChange(i3, i2);
    }

    public DialerFilter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
