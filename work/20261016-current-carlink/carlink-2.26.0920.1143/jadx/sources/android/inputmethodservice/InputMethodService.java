package android.inputmethodservice;

import android.accessibilityservice.c;
import android.app.ActivityManager;
import android.app.Dialog;
import android.app.m;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.graphics.Region;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.provider.Settings;
import android.provider.SettingsStringUtil;
import android.text.Layout;
import android.text.Spannable;
import android.text.method.MovementMethod;
import android.util.Log;
import android.util.PrintWriterPrinter;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputBinding;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import android.view.inputmethod.a;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.internal.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class InputMethodService extends AbstractInputMethodService {
    public static final int BACK_DISPOSITION_DEFAULT = 0;
    public static final int BACK_DISPOSITION_WILL_DISMISS = 2;
    public static final int BACK_DISPOSITION_WILL_NOT_DISMISS = 1;
    static boolean DEBUG = false;
    public static final int IME_ACTIVE = 1;
    public static final int IME_VISIBLE = 2;
    static final int MOVEMENT_DOWN = -1;
    static final int MOVEMENT_UP = -2;
    static final String TAG = "InputMethodService";
    int mBackDisposition;
    FrameLayout mCandidatesFrame;
    boolean mCandidatesViewStarted;
    int mCandidatesVisibility;
    CompletionInfo[] mCurCompletions;
    ViewGroup mExtractAccessories;
    View mExtractAction;
    ExtractEditText mExtractEditText;
    FrameLayout mExtractFrame;
    View mExtractView;
    boolean mExtractViewHidden;
    ExtractedText mExtractedText;
    int mExtractedToken;
    boolean mFullscreenApplied;
    ViewGroup mFullscreenArea;
    InputMethodManager mImm;
    boolean mInShowWindow;
    LayoutInflater mInflater;
    boolean mInitialized;
    InputBinding mInputBinding;
    InputConnection mInputConnection;
    EditorInfo mInputEditorInfo;
    FrameLayout mInputFrame;
    boolean mInputStarted;
    View mInputView;
    boolean mInputViewStarted;
    boolean mIsFullscreen;
    boolean mIsInputViewShown;
    boolean mLastShowInputRequested;
    View mRootView;
    private SettingsObserver mSettingsObserver;
    boolean mShouldClearInsetOfPreviousIme;
    int mShowInputFlags;
    boolean mShowInputRequested;
    private IBinder mStartInputToken;
    InputConnection mStartedInputConnection;
    int mStatusIcon;
    TypedArray mThemeAttrs;
    IBinder mToken;
    SoftInputWindow mWindow;
    boolean mWindowAdded;
    boolean mWindowCreated;
    boolean mWindowVisible;
    boolean mWindowWasVisible;
    int mTheme = 0;
    final Insets mTmpInsets = new Insets();
    final int[] mTmpLocation = new int[2];
    final ViewTreeObserver.OnComputeInternalInsetsListener mInsetsComputer = new ViewTreeObserver.OnComputeInternalInsetsListener() { // from class: android.inputmethodservice.InputMethodService.1
        @Override // android.view.ViewTreeObserver.OnComputeInternalInsetsListener
        public void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
            if (InputMethodService.this.isExtractViewShown()) {
                View decorView = InputMethodService.this.getWindow().getWindow().getDecorView();
                Rect rect = internalInsetsInfo.contentInsets;
                Rect rect2 = internalInsetsInfo.visibleInsets;
                int height = decorView.getHeight();
                rect2.top = height;
                rect.top = height;
                internalInsetsInfo.touchableRegion.setEmpty();
                internalInsetsInfo.setTouchableInsets(0);
                return;
            }
            InputMethodService inputMethodService = InputMethodService.this;
            inputMethodService.onComputeInsets(inputMethodService.mTmpInsets);
            Rect rect3 = internalInsetsInfo.contentInsets;
            Insets insets = InputMethodService.this.mTmpInsets;
            rect3.top = insets.contentTopInsets;
            internalInsetsInfo.visibleInsets.top = insets.visibleTopInsets;
            internalInsetsInfo.touchableRegion.set(insets.touchableRegion);
            internalInsetsInfo.setTouchableInsets(InputMethodService.this.mTmpInsets.touchableInsets);
        }
    };
    final View.OnClickListener mActionClickListener = new View.OnClickListener() { // from class: android.inputmethodservice.InputMethodService.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditorInfo currentInputEditorInfo = InputMethodService.this.getCurrentInputEditorInfo();
            InputConnection currentInputConnection = InputMethodService.this.getCurrentInputConnection();
            if (currentInputEditorInfo == null || currentInputConnection == null) {
                return;
            }
            int i2 = currentInputEditorInfo.actionId;
            if (i2 != 0) {
                currentInputConnection.performEditorAction(i2);
                return;
            }
            int i3 = currentInputEditorInfo.imeOptions;
            if ((i3 & 255) != 1) {
                currentInputConnection.performEditorAction(i3 & 255);
            }
        }
    };

    public class InputMethodImpl extends AbstractInputMethodService.AbstractInputMethodImpl {
        public InputMethodImpl() {
            super();
        }

        @Override // android.view.inputmethod.InputMethod
        public void attachToken(IBinder iBinder) {
            InputMethodService inputMethodService = InputMethodService.this;
            if (inputMethodService.mToken == null) {
                inputMethodService.mToken = iBinder;
                inputMethodService.mWindow.setToken(iBinder);
            }
        }

        @Override // android.view.inputmethod.InputMethod
        public void bindInput(InputBinding inputBinding) {
            IBinder iBinder;
            InputMethodService inputMethodService = InputMethodService.this;
            inputMethodService.mInputBinding = inputBinding;
            inputMethodService.mInputConnection = inputBinding.getConnection();
            if (InputMethodService.DEBUG) {
                Log.v(InputMethodService.TAG, "bindInput(): binding=" + inputBinding + " ic=" + InputMethodService.this.mInputConnection);
            }
            InputMethodService inputMethodService2 = InputMethodService.this;
            InputMethodManager inputMethodManager = inputMethodService2.mImm;
            if (inputMethodManager != null && (iBinder = inputMethodService2.mToken) != null) {
                inputMethodManager.reportFullscreenMode(iBinder, inputMethodService2.mIsFullscreen);
            }
            InputMethodService.this.initialize();
            InputMethodService.this.onBindInput();
        }

        @Override // android.view.inputmethod.InputMethod
        public void changeInputMethodSubtype(InputMethodSubtype inputMethodSubtype) {
            InputMethodService.this.onCurrentInputMethodSubtypeChanged(inputMethodSubtype);
        }

        @Override // android.inputmethodservice.AbstractInputMethodService.AbstractInputMethodImpl, android.view.inputmethod.InputMethod
        public void dispatchStartInputWithToken(InputConnection inputConnection, EditorInfo editorInfo, boolean z2, IBinder iBinder) {
            InputMethodService.this.mStartInputToken = iBinder;
            a.a(this, inputConnection, editorInfo, z2, iBinder);
        }

        @Override // android.view.inputmethod.InputMethod
        public void hideSoftInput(int i2, ResultReceiver resultReceiver) {
            if (InputMethodService.DEBUG) {
                Log.v(InputMethodService.TAG, "hideSoftInput()");
            }
            boolean zIsInputViewShown = InputMethodService.this.isInputViewShown();
            InputMethodService inputMethodService = InputMethodService.this;
            int i3 = 0;
            inputMethodService.mShowInputFlags = 0;
            inputMethodService.mShowInputRequested = false;
            inputMethodService.doHideWindow();
            InputMethodService.this.clearInsetOfPreviousIme();
            if (resultReceiver != null) {
                if (zIsInputViewShown != InputMethodService.this.isInputViewShown()) {
                    i3 = 3;
                } else if (!zIsInputViewShown) {
                    i3 = 1;
                }
                resultReceiver.send(i3, null);
            }
        }

        @Override // android.view.inputmethod.InputMethod
        public void restartInput(InputConnection inputConnection, EditorInfo editorInfo) {
            if (InputMethodService.DEBUG) {
                Log.v(InputMethodService.TAG, "restartInput(): editor=" + editorInfo);
            }
            InputMethodService.this.doStartInput(inputConnection, editorInfo, true);
        }

        @Override // android.view.inputmethod.InputMethod
        public void showSoftInput(int i2, ResultReceiver resultReceiver) {
            if (InputMethodService.DEBUG) {
                Log.v(InputMethodService.TAG, "showSoftInput()");
            }
            boolean zIsInputViewShown = InputMethodService.this.isInputViewShown();
            int i3 = 0;
            if (InputMethodService.this.dispatchOnShowInputRequested(i2, false)) {
                try {
                    InputMethodService.this.showWindow(true);
                } catch (WindowManager.BadTokenException unused) {
                }
            }
            InputMethodService.this.clearInsetOfPreviousIme();
            boolean zIsInputViewShown2 = InputMethodService.this.isInputViewShown();
            InputMethodService inputMethodService = InputMethodService.this;
            inputMethodService.mImm.setImeWindowStatus(inputMethodService.mToken, inputMethodService.mStartInputToken, (zIsInputViewShown2 ? 2 : 0) | 1, InputMethodService.this.mBackDisposition);
            if (resultReceiver != null) {
                if (zIsInputViewShown != InputMethodService.this.isInputViewShown()) {
                    i3 = 2;
                } else if (!zIsInputViewShown) {
                    i3 = 1;
                }
                resultReceiver.send(i3, null);
            }
        }

        @Override // android.view.inputmethod.InputMethod
        public void startInput(InputConnection inputConnection, EditorInfo editorInfo) {
            if (InputMethodService.DEBUG) {
                Log.v(InputMethodService.TAG, "startInput(): editor=" + editorInfo);
            }
            InputMethodService.this.doStartInput(inputConnection, editorInfo, false);
        }

        @Override // android.view.inputmethod.InputMethod
        public void unbindInput() {
            if (InputMethodService.DEBUG) {
                Log.v(InputMethodService.TAG, "unbindInput(): binding=" + InputMethodService.this.mInputBinding + " ic=" + InputMethodService.this.mInputConnection);
            }
            InputMethodService.this.onUnbindInput();
            InputMethodService inputMethodService = InputMethodService.this;
            inputMethodService.mInputBinding = null;
            inputMethodService.mInputConnection = null;
        }
    }

    public class InputMethodSessionImpl extends AbstractInputMethodService.AbstractInputMethodSessionImpl {
        public InputMethodSessionImpl() {
            super();
        }

        @Override // android.view.inputmethod.InputMethodSession
        public void appPrivateCommand(String str, Bundle bundle) {
            if (isEnabled()) {
                InputMethodService.this.onAppPrivateCommand(str, bundle);
            }
        }

        @Override // android.view.inputmethod.InputMethodSession
        public void displayCompletions(CompletionInfo[] completionInfoArr) {
            if (isEnabled()) {
                InputMethodService inputMethodService = InputMethodService.this;
                inputMethodService.mCurCompletions = completionInfoArr;
                inputMethodService.onDisplayCompletions(completionInfoArr);
            }
        }

        @Override // android.view.inputmethod.InputMethodSession
        public void finishInput() {
            if (isEnabled()) {
                if (InputMethodService.DEBUG) {
                    Log.v(InputMethodService.TAG, "finishInput() in " + this);
                }
                InputMethodService.this.doFinishInput();
            }
        }

        @Override // android.view.inputmethod.InputMethodSession
        public void toggleSoftInput(int i2, int i3) {
            InputMethodService.this.onToggleSoftInput(i2, i3);
        }

        @Override // android.view.inputmethod.InputMethodSession
        public void updateCursor(Rect rect) {
            if (isEnabled()) {
                InputMethodService.this.onUpdateCursor(rect);
            }
        }

        @Override // android.view.inputmethod.InputMethodSession
        public void updateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo) {
            if (isEnabled()) {
                InputMethodService.this.onUpdateCursorAnchorInfo(cursorAnchorInfo);
            }
        }

        @Override // android.view.inputmethod.InputMethodSession
        public void updateExtractedText(int i2, ExtractedText extractedText) {
            if (isEnabled()) {
                InputMethodService.this.onUpdateExtractedText(i2, extractedText);
            }
        }

        @Override // android.view.inputmethod.InputMethodSession
        public void updateSelection(int i2, int i3, int i4, int i5, int i6, int i7) {
            if (isEnabled()) {
                InputMethodService.this.onUpdateSelection(i2, i3, i4, i5, i6, i7);
            }
        }

        @Override // android.view.inputmethod.InputMethodSession
        public void viewClicked(boolean z2) {
            if (isEnabled()) {
                InputMethodService.this.onViewClicked(z2);
            }
        }
    }

    public static final class Insets {
        public static final int TOUCHABLE_INSETS_CONTENT = 1;
        public static final int TOUCHABLE_INSETS_FRAME = 0;
        public static final int TOUCHABLE_INSETS_REGION = 3;
        public static final int TOUCHABLE_INSETS_VISIBLE = 2;
        public int contentTopInsets;
        public int touchableInsets;
        public final Region touchableRegion = new Region();
        public int visibleTopInsets;
    }

    public static final class SettingsObserver extends ContentObserver {
        private final InputMethodService mService;
        private int mShowImeWithHardKeyboard;

        @Retention(RetentionPolicy.SOURCE)
        public @interface ShowImeWithHardKeyboardType {
            public static final int FALSE = 1;
            public static final int TRUE = 2;
            public static final int UNKNOWN = 0;
        }

        private SettingsObserver(InputMethodService inputMethodService) {
            super(new Handler(inputMethodService.getMainLooper()));
            this.mShowImeWithHardKeyboard = 0;
            this.mService = inputMethodService;
        }

        public static SettingsObserver createAndRegister(InputMethodService inputMethodService) {
            SettingsObserver settingsObserver = new SettingsObserver(inputMethodService);
            inputMethodService.getContentResolver().registerContentObserver(Settings.Secure.getUriFor(Settings.Secure.SHOW_IME_WITH_HARD_KEYBOARD), false, settingsObserver);
            return settingsObserver;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean shouldShowImeWithHardKeyboard() {
            if (this.mShowImeWithHardKeyboard == 0) {
                this.mShowImeWithHardKeyboard = Settings.Secure.getInt(this.mService.getContentResolver(), Settings.Secure.SHOW_IME_WITH_HARD_KEYBOARD, 0) != 0 ? 2 : 1;
            }
            int i2 = this.mShowImeWithHardKeyboard;
            if (i2 == 1) {
                return false;
            }
            if (i2 == 2) {
                return true;
            }
            m.C(new StringBuilder("Unexpected mShowImeWithHardKeyboard="), this.mShowImeWithHardKeyboard, InputMethodService.TAG);
            return false;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z2, Uri uri) {
            if (Settings.Secure.getUriFor(Settings.Secure.SHOW_IME_WITH_HARD_KEYBOARD).equals(uri)) {
                this.mShowImeWithHardKeyboard = Settings.Secure.getInt(this.mService.getContentResolver(), Settings.Secure.SHOW_IME_WITH_HARD_KEYBOARD, 0) != 0 ? 2 : 1;
                this.mService.resetStateForNewConfiguration();
            }
        }

        public String toString() {
            return c.m(new StringBuilder("SettingsObserver{mShowImeWithHardKeyboard="), this.mShowImeWithHardKeyboard, "}");
        }

        public void unregister() {
            this.mService.getContentResolver().unregisterContentObserver(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearInsetOfPreviousIme() {
        if (DEBUG) {
            Log.v(TAG, "clearInsetOfPreviousIme()  mShouldClearInsetOfPreviousIme=" + this.mShouldClearInsetOfPreviousIme);
        }
        if (this.mShouldClearInsetOfPreviousIme) {
            this.mImm.clearLastInputMethodWindowForTransition(this.mToken);
            this.mShouldClearInsetOfPreviousIme = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dispatchOnShowInputRequested(int i2, boolean z2) {
        boolean zOnShowInputRequested = onShowInputRequested(i2, z2);
        if (zOnShowInputRequested) {
            this.mShowInputFlags = i2;
        } else {
            this.mShowInputFlags = 0;
        }
        return zOnShowInputRequested;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doHideWindow() {
        this.mImm.setImeWindowStatus(this.mToken, this.mStartInputToken, 0, this.mBackDisposition);
        hideWindow();
    }

    private void finishViews() {
        if (this.mInputViewStarted) {
            if (DEBUG) {
                Log.v(TAG, "CALL: onFinishInputView");
            }
            onFinishInputView(false);
        } else if (this.mCandidatesViewStarted) {
            if (DEBUG) {
                Log.v(TAG, "CALL: onFinishCandidatesView");
            }
            onFinishCandidatesView(false);
        }
        this.mInputViewStarted = false;
        this.mCandidatesViewStarted = false;
    }

    private ExtractEditText getExtractEditTextIfVisible() {
        if (isExtractViewShown() && isInputViewShown()) {
            return this.mExtractEditText;
        }
        return null;
    }

    private int getIconForImeAction(int i2) {
        switch (i2 & 255) {
            case 2:
                return R.drawable.ic_input_extract_action_go;
            case 3:
                return R.drawable.ic_input_extract_action_search;
            case 4:
                return R.drawable.ic_input_extract_action_send;
            case 5:
                return R.drawable.ic_input_extract_action_next;
            case 6:
                return R.drawable.ic_input_extract_action_done;
            case 7:
                return R.drawable.ic_input_extract_action_previous;
            default:
                return R.drawable.ic_input_extract_action_return;
        }
    }

    private boolean handleBack(boolean z2) {
        if (this.mShowInputRequested) {
            if (z2) {
                requestHideSelf(0);
            }
            return true;
        }
        if (!this.mWindowVisible) {
            return false;
        }
        if (this.mCandidatesVisibility == 0) {
            if (z2) {
                setCandidatesViewShown(false);
            }
        } else if (z2) {
            doHideWindow();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onToggleSoftInput(int i2, int i3) {
        if (DEBUG) {
            Log.v(TAG, "toggleSoftInput()");
        }
        if (isInputViewShown()) {
            requestHideSelf(i3);
        } else {
            requestShowSelf(i2);
        }
    }

    private void requestShowSelf(int i2) {
        this.mImm.showSoftInputFromInputMethod(this.mToken, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetStateForNewConfiguration() {
        boolean z2 = this.mWindowVisible;
        int i2 = this.mShowInputFlags;
        boolean z3 = this.mShowInputRequested;
        CompletionInfo[] completionInfoArr = this.mCurCompletions;
        initViews();
        this.mInputViewStarted = false;
        this.mCandidatesViewStarted = false;
        if (this.mInputStarted) {
            doStartInput(getCurrentInputConnection(), getCurrentInputEditorInfo(), true);
        }
        if (z2) {
            if (z3) {
                if (dispatchOnShowInputRequested(i2, true)) {
                    showWindow(true);
                    if (completionInfoArr != null) {
                        this.mCurCompletions = completionInfoArr;
                        onDisplayCompletions(completionInfoArr);
                    }
                } else {
                    doHideWindow();
                }
            } else if (this.mCandidatesVisibility == 0) {
                showWindow(false);
            } else {
                doHideWindow();
            }
            this.mImm.setImeWindowStatus(this.mToken, this.mStartInputToken, (onEvaluateInputViewShown() ? 2 : 0) | 1, this.mBackDisposition);
        }
    }

    public void doFinishInput() {
        if (this.mInputViewStarted) {
            if (DEBUG) {
                Log.v(TAG, "CALL: onFinishInputView");
            }
            onFinishInputView(true);
        } else if (this.mCandidatesViewStarted) {
            if (DEBUG) {
                Log.v(TAG, "CALL: onFinishCandidatesView");
            }
            onFinishCandidatesView(true);
        }
        this.mInputViewStarted = false;
        this.mCandidatesViewStarted = false;
        if (this.mInputStarted) {
            if (DEBUG) {
                Log.v(TAG, "CALL: onFinishInput");
            }
            onFinishInput();
        }
        this.mInputStarted = false;
        this.mStartedInputConnection = null;
        this.mCurCompletions = null;
    }

    public boolean doMovementKey(int i2, KeyEvent keyEvent, int i3) {
        ExtractEditText extractEditTextIfVisible = getExtractEditTextIfVisible();
        if (extractEditTextIfVisible != null) {
            MovementMethod movementMethod = extractEditTextIfVisible.getMovementMethod();
            Layout layout = extractEditTextIfVisible.getLayout();
            if (movementMethod != null && layout != null) {
                if (i3 == -1) {
                    if (movementMethod.onKeyDown(extractEditTextIfVisible, extractEditTextIfVisible.getText(), i2, keyEvent)) {
                        reportExtractedMovement(i2, 1);
                        return true;
                    }
                } else if (i3 == -2) {
                    if (movementMethod.onKeyUp(extractEditTextIfVisible, extractEditTextIfVisible.getText(), i2, keyEvent)) {
                        return true;
                    }
                } else if (movementMethod.onKeyOther(extractEditTextIfVisible, extractEditTextIfVisible.getText(), keyEvent)) {
                    reportExtractedMovement(i2, i3);
                } else {
                    KeyEvent keyEventChangeAction = KeyEvent.changeAction(keyEvent, 0);
                    if (movementMethod.onKeyDown(extractEditTextIfVisible, extractEditTextIfVisible.getText(), i2, keyEventChangeAction)) {
                        KeyEvent keyEventChangeAction2 = KeyEvent.changeAction(keyEvent, 1);
                        movementMethod.onKeyUp(extractEditTextIfVisible, extractEditTextIfVisible.getText(), i2, keyEventChangeAction2);
                        while (true) {
                            i3--;
                            if (i3 <= 0) {
                                break;
                            }
                            movementMethod.onKeyDown(extractEditTextIfVisible, extractEditTextIfVisible.getText(), i2, keyEventChangeAction);
                            movementMethod.onKeyUp(extractEditTextIfVisible, extractEditTextIfVisible.getText(), i2, keyEventChangeAction2);
                        }
                        reportExtractedMovement(i2, i3);
                    }
                }
            }
            switch (i2) {
                case 19:
                case 20:
                case 21:
                case 22:
                    return true;
            }
        }
        return false;
    }

    public void doStartInput(InputConnection inputConnection, EditorInfo editorInfo, boolean z2) {
        if (!z2) {
            doFinishInput();
        }
        this.mInputStarted = true;
        this.mStartedInputConnection = inputConnection;
        this.mInputEditorInfo = editorInfo;
        initialize();
        if (DEBUG) {
            Log.v(TAG, "CALL: onStartInput");
        }
        onStartInput(editorInfo, z2);
        if (this.mWindowVisible) {
            if (this.mShowInputRequested) {
                if (DEBUG) {
                    Log.v(TAG, "CALL: onStartInputView");
                }
                this.mInputViewStarted = true;
                onStartInputView(this.mInputEditorInfo, z2);
                startExtractingText(true);
                return;
            }
            if (this.mCandidatesVisibility == 0) {
                if (DEBUG) {
                    Log.v(TAG, "CALL: onStartCandidatesView");
                }
                this.mCandidatesViewStarted = true;
                onStartCandidatesView(this.mInputEditorInfo, z2);
            }
        }
    }

    @Override // android.inputmethodservice.AbstractInputMethodService, android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        PrintWriterPrinter printWriterPrinter = new PrintWriterPrinter(printWriter);
        if (strArr.length == 1) {
            if ("enable".equals(strArr[0])) {
                DEBUG = true;
                printWriterPrinter.println("InputMethodService DEBUG is turn on!");
                return;
            } else if ("disable".equals(strArr[0])) {
                DEBUG = false;
                printWriterPrinter.println("InputMethodService DEBUG is turn off!");
                return;
            }
        }
        printWriterPrinter.println("Input method service state for " + this + SettingsStringUtil.DELIMITER);
        printWriterPrinter.println("  mWindowCreated=" + this.mWindowCreated + " mWindowAdded=" + this.mWindowAdded);
        printWriterPrinter.println("  mWindowVisible=" + this.mWindowVisible + " mWindowWasVisible=" + this.mWindowWasVisible + " mInShowWindow=" + this.mInShowWindow);
        StringBuilder sb = new StringBuilder("  Configuration=");
        sb.append(getResources().getConfiguration());
        printWriterPrinter.println(sb.toString());
        StringBuilder sb2 = new StringBuilder("  mToken=");
        sb2.append(this.mToken);
        printWriterPrinter.println(sb2.toString());
        printWriterPrinter.println("  mInputBinding=" + this.mInputBinding);
        printWriterPrinter.println("  mInputConnection=" + this.mInputConnection);
        printWriterPrinter.println("  mStartedInputConnection=" + this.mStartedInputConnection);
        printWriterPrinter.println("  mInputStarted=" + this.mInputStarted + " mInputViewStarted=" + this.mInputViewStarted + " mCandidatesViewStarted=" + this.mCandidatesViewStarted);
        StringBuilder sb3 = new StringBuilder("  mStartInputToken=");
        sb3.append(this.mStartInputToken);
        printWriterPrinter.println(sb3.toString());
        if (this.mInputEditorInfo != null) {
            printWriterPrinter.println("  mInputEditorInfo:");
            this.mInputEditorInfo.dump(printWriterPrinter, "    ");
        } else {
            printWriterPrinter.println("  mInputEditorInfo: null");
        }
        printWriterPrinter.println("  mShowInputRequested=" + this.mShowInputRequested + " mLastShowInputRequested=" + this.mLastShowInputRequested + " mShowInputFlags=0x" + Integer.toHexString(this.mShowInputFlags));
        printWriterPrinter.println("  mCandidatesVisibility=" + this.mCandidatesVisibility + " mFullscreenApplied=" + this.mFullscreenApplied + " mIsFullscreen=" + this.mIsFullscreen + " mExtractViewHidden=" + this.mExtractViewHidden);
        if (this.mExtractedText != null) {
            printWriterPrinter.println("  mExtractedText:");
            printWriterPrinter.println("    text=" + this.mExtractedText.text.length() + " chars startOffset=" + this.mExtractedText.startOffset);
            printWriterPrinter.println("    selectionStart=" + this.mExtractedText.selectionStart + " selectionEnd=" + this.mExtractedText.selectionEnd + " flags=0x" + Integer.toHexString(this.mExtractedText.flags));
        } else {
            printWriterPrinter.println("  mExtractedText: null");
        }
        printWriterPrinter.println("  mExtractedToken=" + this.mExtractedToken);
        printWriterPrinter.println("  mIsInputViewShown=" + this.mIsInputViewShown + " mStatusIcon=" + this.mStatusIcon);
        printWriterPrinter.println("Last computed insets:");
        printWriterPrinter.println("  contentTopInsets=" + this.mTmpInsets.contentTopInsets + " visibleTopInsets=" + this.mTmpInsets.visibleTopInsets + " touchableInsets=" + this.mTmpInsets.touchableInsets + " touchableRegion=" + this.mTmpInsets.touchableRegion);
        StringBuilder sb4 = new StringBuilder(" mShouldClearInsetOfPreviousIme=");
        sb4.append(this.mShouldClearInsetOfPreviousIme);
        printWriterPrinter.println(sb4.toString());
        StringBuilder sb5 = new StringBuilder(" mSettingsObserver=");
        sb5.append(this.mSettingsObserver);
        printWriterPrinter.println(sb5.toString());
    }

    @Deprecated
    public boolean enableHardwareAcceleration() {
        if (this.mWindow == null) {
            return ActivityManager.isHighEndGfx();
        }
        throw new IllegalStateException("Must be called before onCreate()");
    }

    @Override // android.inputmethodservice.AbstractInputMethodService
    public final void exposeContent(InputContentInfo inputContentInfo, InputConnection inputConnection) {
        if (inputConnection != null && getCurrentInputConnection() == inputConnection) {
            this.mImm.exposeContent(this.mToken, inputContentInfo, getCurrentInputEditorInfo());
        }
    }

    public int getBackDisposition() {
        return this.mBackDisposition;
    }

    public int getCandidatesHiddenVisibility() {
        return isExtractViewShown() ? 8 : 4;
    }

    public InputBinding getCurrentInputBinding() {
        return this.mInputBinding;
    }

    public InputConnection getCurrentInputConnection() {
        InputConnection inputConnection = this.mStartedInputConnection;
        return inputConnection != null ? inputConnection : this.mInputConnection;
    }

    public EditorInfo getCurrentInputEditorInfo() {
        return this.mInputEditorInfo;
    }

    public boolean getCurrentInputStarted() {
        return this.mInputStarted;
    }

    public int getInputMethodWindowRecommendedHeight() {
        return this.mImm.getInputMethodWindowVisibleHeight();
    }

    public LayoutInflater getLayoutInflater() {
        return this.mInflater;
    }

    public int getMaxWidth() {
        return ((WindowManager) getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getWidth();
    }

    public CharSequence getTextForImeAction(int i2) {
        switch (i2 & 255) {
            case 1:
                return null;
            case 2:
                return getText(R.string.ime_action_go);
            case 3:
                return getText(R.string.ime_action_search);
            case 4:
                return getText(R.string.ime_action_send);
            case 5:
                return getText(R.string.ime_action_next);
            case 6:
                return getText(R.string.ime_action_done);
            case 7:
                return getText(R.string.ime_action_previous);
            default:
                return getText(R.string.ime_action_default);
        }
    }

    public Dialog getWindow() {
        return this.mWindow;
    }

    public void hideStatusIcon() {
        this.mStatusIcon = 0;
        this.mImm.hideStatusIcon(this.mToken);
    }

    public void hideWindow() {
        finishViews();
        if (this.mWindowVisible) {
            this.mWindow.hide();
            this.mWindowVisible = false;
            onWindowHidden();
            this.mWindowWasVisible = false;
        }
        updateFullscreenMode();
    }

    public void initViews() {
        this.mInitialized = false;
        this.mWindowCreated = false;
        this.mShowInputRequested = false;
        this.mShowInputFlags = 0;
        this.mThemeAttrs = obtainStyledAttributes(android.R.styleable.InputMethodService);
        View viewInflate = this.mInflater.inflate(R.layout.input_method, (ViewGroup) null);
        this.mRootView = viewInflate;
        viewInflate.setSystemUiVisibility(768);
        this.mWindow.setContentView(this.mRootView);
        this.mRootView.getViewTreeObserver().removeOnComputeInternalInsetsListener(this.mInsetsComputer);
        this.mRootView.getViewTreeObserver().addOnComputeInternalInsetsListener(this.mInsetsComputer);
        if (Settings.Global.getInt(getContentResolver(), Settings.Global.FANCY_IME_ANIMATIONS, 0) != 0) {
            this.mWindow.getWindow().setWindowAnimations(R.style.Animation_InputMethodFancy);
        }
        this.mFullscreenArea = (ViewGroup) this.mRootView.findViewById(R.id.fullscreenArea);
        this.mExtractViewHidden = false;
        this.mExtractFrame = (FrameLayout) this.mRootView.findViewById(16908316);
        this.mExtractView = null;
        this.mExtractEditText = null;
        this.mExtractAccessories = null;
        this.mExtractAction = null;
        this.mFullscreenApplied = false;
        this.mCandidatesFrame = (FrameLayout) this.mRootView.findViewById(16908317);
        this.mInputFrame = (FrameLayout) this.mRootView.findViewById(16908318);
        this.mInputView = null;
        this.mIsInputViewShown = false;
        this.mExtractFrame.setVisibility(8);
        int candidatesHiddenVisibility = getCandidatesHiddenVisibility();
        this.mCandidatesVisibility = candidatesHiddenVisibility;
        this.mCandidatesFrame.setVisibility(candidatesHiddenVisibility);
        this.mInputFrame.setVisibility(8);
    }

    public void initialize() {
        if (this.mInitialized) {
            return;
        }
        this.mInitialized = true;
        onInitializeInterface();
    }

    public boolean isExtractViewShown() {
        return this.mIsFullscreen && !this.mExtractViewHidden;
    }

    public boolean isFullscreenMode() {
        return this.mIsFullscreen;
    }

    public boolean isInputViewShown() {
        return this.mIsInputViewShown && this.mWindowVisible;
    }

    public boolean isShowInputRequested() {
        return this.mShowInputRequested;
    }

    public void onAppPrivateCommand(String str, Bundle bundle) {
    }

    public void onBindInput() {
    }

    public void onComputeInsets(Insets insets) {
        int[] iArr = this.mTmpLocation;
        if (this.mInputFrame.getVisibility() == 0) {
            this.mInputFrame.getLocationInWindow(iArr);
        } else {
            iArr[1] = getWindow().getWindow().getDecorView().getHeight();
        }
        if (isFullscreenMode()) {
            insets.contentTopInsets = getWindow().getWindow().getDecorView().getHeight();
        } else {
            insets.contentTopInsets = iArr[1];
        }
        if (this.mCandidatesFrame.getVisibility() == 0) {
            this.mCandidatesFrame.getLocationInWindow(iArr);
        }
        insets.visibleTopInsets = iArr[1];
        insets.touchableInsets = 2;
        insets.touchableRegion.setEmpty();
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        resetStateForNewConfiguration();
    }

    public void onConfigureWindow(Window window, boolean z2, boolean z3) {
        int i2 = this.mWindow.getWindow().getAttributes().height;
        int i3 = z2 ? -1 : -2;
        if (this.mIsInputViewShown && i2 != i3 && DEBUG) {
            Log.w(TAG, "Window size has been changed. This may cause jankiness of resizing window: " + i2 + " -> " + i3);
        }
        this.mWindow.getWindow().setLayout(-1, i3);
    }

    @Override // android.app.Service
    public void onCreate() {
        int iSelectSystemTheme = Resources.selectSystemTheme(this.mTheme, getApplicationInfo().targetSdkVersion, 16973908, 16973951, 16974142, 16974142);
        this.mTheme = iSelectSystemTheme;
        super.setTheme(iSelectSystemTheme);
        super.onCreate();
        this.mImm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
        this.mSettingsObserver = SettingsObserver.createAndRegister(this);
        this.mShouldClearInsetOfPreviousIme = this.mImm.getInputMethodWindowVisibleHeight() > 0;
        this.mInflater = (LayoutInflater) getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        this.mWindow = new SoftInputWindow(this, "InputMethod", this.mTheme, null, null, this.mDispatcherState, WindowManager.LayoutParams.TYPE_INPUT_METHOD, 80, false);
        initViews();
        this.mWindow.getWindow().setLayout(-1, -2);
    }

    public View onCreateCandidatesView() {
        return null;
    }

    public View onCreateExtractTextView() {
        return this.mInflater.inflate(R.layout.input_method_extract_view, (ViewGroup) null);
    }

    @Override // android.inputmethodservice.AbstractInputMethodService
    public AbstractInputMethodService.AbstractInputMethodImpl onCreateInputMethodInterface() {
        return new InputMethodImpl();
    }

    @Override // android.inputmethodservice.AbstractInputMethodService
    public AbstractInputMethodService.AbstractInputMethodSessionImpl onCreateInputMethodSessionInterface() {
        return new InputMethodSessionImpl();
    }

    public View onCreateInputView() {
        return null;
    }

    public void onCurrentInputMethodSubtypeChanged(InputMethodSubtype inputMethodSubtype) {
        if (DEBUG) {
            int nameResId = inputMethodSubtype.getNameResId();
            String mode = inputMethodSubtype.getMode();
            StringBuilder sb = new StringBuilder("changeInputMethodSubtype:");
            sb.append(nameResId == 0 ? "<none>" : getString(nameResId));
            sb.append(",");
            sb.append(mode);
            sb.append(",");
            sb.append(inputMethodSubtype.getLocale());
            sb.append(",");
            sb.append(inputMethodSubtype.getExtraValue());
            Log.v(TAG, "--- " + sb.toString());
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.mRootView.getViewTreeObserver().removeOnComputeInternalInsetsListener(this.mInsetsComputer);
        doFinishInput();
        if (this.mWindowAdded) {
            this.mWindow.getWindow().setWindowAnimations(0);
            this.mWindow.dismiss();
        }
        SettingsObserver settingsObserver = this.mSettingsObserver;
        if (settingsObserver != null) {
            settingsObserver.unregister();
            this.mSettingsObserver = null;
        }
    }

    public void onDisplayCompletions(CompletionInfo[] completionInfoArr) {
    }

    public boolean onEvaluateFullscreenMode() {
        if (getResources().getConfiguration().orientation != 2) {
            return false;
        }
        EditorInfo editorInfo = this.mInputEditorInfo;
        return editorInfo == null || (editorInfo.imeOptions & 33554432) == 0;
    }

    public boolean onEvaluateInputViewShown() {
        SettingsObserver settingsObserver = this.mSettingsObserver;
        if (settingsObserver == null) {
            Log.w(TAG, "onEvaluateInputViewShown: mSettingsObserver must not be null here.");
            return false;
        }
        if (settingsObserver.shouldShowImeWithHardKeyboard()) {
            return true;
        }
        Configuration configuration = getResources().getConfiguration();
        return configuration.keyboard == 1 || configuration.hardKeyboardHidden == 2;
    }

    public boolean onExtractTextContextMenuItem(int i2) {
        InputConnection currentInputConnection = getCurrentInputConnection();
        if (currentInputConnection == null) {
            return true;
        }
        currentInputConnection.performContextMenuAction(i2);
        return true;
    }

    public void onExtractedCursorMovement(int i2, int i3) {
        ExtractEditText extractEditText = this.mExtractEditText;
        if (extractEditText == null || i3 == 0 || !extractEditText.hasVerticalScrollBar()) {
            return;
        }
        setCandidatesViewShown(false);
    }

    public void onExtractedDeleteText(int i2, int i3) {
        InputConnection currentInputConnection = getCurrentInputConnection();
        if (currentInputConnection != null) {
            currentInputConnection.finishComposingText();
            currentInputConnection.setSelection(i2, i2);
            currentInputConnection.deleteSurroundingText(0, i3 - i2);
        }
    }

    public void onExtractedReplaceText(int i2, int i3, CharSequence charSequence) {
        InputConnection currentInputConnection = getCurrentInputConnection();
        if (currentInputConnection != null) {
            currentInputConnection.setComposingRegion(i2, i3);
            currentInputConnection.commitText(charSequence, 1);
        }
    }

    public void onExtractedSelectionChanged(int i2, int i3) {
        InputConnection currentInputConnection = getCurrentInputConnection();
        if (currentInputConnection != null) {
            currentInputConnection.setSelection(i2, i3);
        }
    }

    public void onExtractedSetSpan(Object obj, int i2, int i3, int i4) {
        InputConnection currentInputConnection = getCurrentInputConnection();
        if (currentInputConnection == null || !currentInputConnection.setSelection(i2, i3)) {
            return;
        }
        CharSequence selectedText = currentInputConnection.getSelectedText(1);
        if (selectedText instanceof Spannable) {
            ((Spannable) selectedText).setSpan(obj, 0, selectedText.length(), i4);
            currentInputConnection.setComposingRegion(i2, i3);
            currentInputConnection.commitText(selectedText, 1);
        }
    }

    public void onExtractedTextClicked() {
        ExtractEditText extractEditText = this.mExtractEditText;
        if (extractEditText != null && extractEditText.hasVerticalScrollBar()) {
            setCandidatesViewShown(false);
        }
    }

    public void onExtractingInputChanged(EditorInfo editorInfo) {
        if (editorInfo.inputType == 0) {
            requestHideSelf(2);
        }
    }

    public void onFinishCandidatesView(boolean z2) {
        InputConnection currentInputConnection;
        if (z2 || (currentInputConnection = getCurrentInputConnection()) == null) {
            return;
        }
        currentInputConnection.finishComposingText();
    }

    public void onFinishInput() {
        InputConnection currentInputConnection = getCurrentInputConnection();
        if (currentInputConnection != null) {
            currentInputConnection.finishComposingText();
        }
    }

    public void onFinishInputView(boolean z2) {
        InputConnection currentInputConnection;
        if (z2 || (currentInputConnection = getCurrentInputConnection()) == null) {
            return;
        }
        currentInputConnection.finishComposingText();
    }

    @Override // android.inputmethodservice.AbstractInputMethodService
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (!DEBUG) {
            return false;
        }
        Log.v(TAG, "onGenericMotionEvent(): event " + motionEvent);
        return false;
    }

    public void onInitializeInterface() {
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4) {
            return doMovementKey(i2, keyEvent, -1);
        }
        ExtractEditText extractEditTextIfVisible = getExtractEditTextIfVisible();
        if (extractEditTextIfVisible != null && extractEditTextIfVisible.handleBackInTextActionModeIfNeeded(keyEvent)) {
            return true;
        }
        if (!handleBack(false)) {
            return false;
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent) {
        return doMovementKey(i2, keyEvent, i3);
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            ExtractEditText extractEditTextIfVisible = getExtractEditTextIfVisible();
            if (extractEditTextIfVisible != null && extractEditTextIfVisible.handleBackInTextActionModeIfNeeded(keyEvent)) {
                return true;
            }
            if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                return handleBack(true);
            }
        }
        return doMovementKey(i2, keyEvent, -2);
    }

    public boolean onShowInputRequested(int i2, boolean z2) {
        if (!onEvaluateInputViewShown()) {
            return false;
        }
        if ((i2 & 1) == 0) {
            if (!z2 && onEvaluateFullscreenMode()) {
                return false;
            }
            if (!this.mSettingsObserver.shouldShowImeWithHardKeyboard() && getResources().getConfiguration().keyboard != 1) {
                return false;
            }
        }
        return true;
    }

    public void onStartCandidatesView(EditorInfo editorInfo, boolean z2) {
    }

    public void onStartInput(EditorInfo editorInfo, boolean z2) {
    }

    public void onStartInputView(EditorInfo editorInfo, boolean z2) {
    }

    @Override // android.inputmethodservice.AbstractInputMethodService
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!DEBUG) {
            return false;
        }
        Log.v(TAG, "onTrackballEvent: " + motionEvent);
        return false;
    }

    public void onUnbindInput() {
    }

    @Deprecated
    public void onUpdateCursor(Rect rect) {
    }

    public void onUpdateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo) {
    }

    public void onUpdateExtractedText(int i2, ExtractedText extractedText) {
        ExtractEditText extractEditText;
        if (this.mExtractedToken != i2 || extractedText == null || (extractEditText = this.mExtractEditText) == null) {
            return;
        }
        this.mExtractedText = extractedText;
        extractEditText.setExtractedText(extractedText);
    }

    public void onUpdateExtractingViews(EditorInfo editorInfo) throws Throwable {
        ViewGroup viewGroup;
        if (isExtractViewShown() && (viewGroup = this.mExtractAccessories) != null) {
            boolean z2 = true;
            if (editorInfo.actionLabel == null) {
                int i2 = editorInfo.imeOptions;
                if ((i2 & 255) == 1 || (i2 & 536870912) != 0 || editorInfo.inputType == 0) {
                    z2 = false;
                }
            }
            if (!z2) {
                viewGroup.setVisibility(8);
                View view = this.mExtractAction;
                if (view != null) {
                    view.setOnClickListener(null);
                    return;
                }
                return;
            }
            viewGroup.setVisibility(0);
            View view2 = this.mExtractAction;
            if (view2 != null) {
                if (view2 instanceof ImageButton) {
                    ((ImageButton) view2).setImageResource(getIconForImeAction(editorInfo.imeOptions));
                    CharSequence charSequence = editorInfo.actionLabel;
                    if (charSequence != null) {
                        this.mExtractAction.setContentDescription(charSequence);
                    } else {
                        this.mExtractAction.setContentDescription(getTextForImeAction(editorInfo.imeOptions));
                    }
                } else {
                    CharSequence charSequence2 = editorInfo.actionLabel;
                    if (charSequence2 != null) {
                        ((TextView) view2).setText(charSequence2);
                    } else {
                        ((TextView) view2).setText(getTextForImeAction(editorInfo.imeOptions));
                    }
                }
                this.mExtractAction.setOnClickListener(this.mActionClickListener);
            }
        }
    }

    public void onUpdateExtractingVisibility(EditorInfo editorInfo) {
        if (editorInfo.inputType == 0 || (editorInfo.imeOptions & 268435456) != 0) {
            setExtractViewShown(false);
        } else {
            setExtractViewShown(true);
        }
    }

    public void onUpdateSelection(int i2, int i3, int i4, int i5, int i6, int i7) {
        ExtractedText extractedText;
        ExtractEditText extractEditText = this.mExtractEditText;
        if (extractEditText == null || !isFullscreenMode() || (extractedText = this.mExtractedText) == null) {
            return;
        }
        int i8 = extractedText.startOffset;
        extractEditText.startInternalChanges();
        int i9 = i4 - i8;
        int i10 = i5 - i8;
        int length = extractEditText.getText().length();
        if (i9 < 0) {
            i9 = 0;
        } else if (i9 > length) {
            i9 = length;
        }
        if (i10 < 0) {
            i10 = 0;
        } else if (i10 > length) {
            i10 = length;
        }
        extractEditText.setSelection(i9, i10);
        extractEditText.finishInternalChanges();
    }

    public void onViewClicked(boolean z2) {
    }

    public void onWindowHidden() {
    }

    public void onWindowShown() {
    }

    public void reportExtractedMovement(int i2, int i3) {
        int i4 = 0;
        switch (i2) {
            case 19:
                i3 = -i3;
            case 20:
                i4 = i3;
                i3 = 0;
                break;
            case 21:
                i3 = -i3;
                break;
            case 22:
                break;
            default:
                i3 = 0;
                break;
        }
        onExtractedCursorMovement(i3, i4);
    }

    public void requestHideSelf(int i2) {
        this.mImm.hideSoftInputFromInputMethod(this.mToken, i2);
    }

    public boolean sendDefaultEditorAction(boolean z2) {
        EditorInfo currentInputEditorInfo = getCurrentInputEditorInfo();
        if (currentInputEditorInfo == null) {
            return false;
        }
        if ((z2 && (currentInputEditorInfo.imeOptions & 1073741824) != 0) || (currentInputEditorInfo.imeOptions & 255) == 1) {
            return false;
        }
        InputConnection currentInputConnection = getCurrentInputConnection();
        if (currentInputConnection != null) {
            currentInputConnection.performEditorAction(currentInputEditorInfo.imeOptions & 255);
        }
        return true;
    }

    public void sendDownUpKeyEvents(int i2) {
        InputConnection currentInputConnection = getCurrentInputConnection();
        if (currentInputConnection == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        currentInputConnection.sendKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, 0, i2, 0, 0, -1, 0, 6));
        currentInputConnection.sendKeyEvent(new KeyEvent(jUptimeMillis, SystemClock.uptimeMillis(), 1, i2, 0, 0, -1, 0, 6));
    }

    public void sendKeyChar(char c) {
        if (c == '\n') {
            if (sendDefaultEditorAction(true)) {
                return;
            }
            sendDownUpKeyEvents(66);
        } else {
            if (c >= '0' && c <= '9') {
                sendDownUpKeyEvents((c - '0') + 7);
                return;
            }
            InputConnection currentInputConnection = getCurrentInputConnection();
            if (currentInputConnection != null) {
                currentInputConnection.commitText(String.valueOf(c), 1);
            }
        }
    }

    public void setBackDisposition(int i2) {
        this.mBackDisposition = i2;
    }

    public void setCandidatesView(View view) {
        this.mCandidatesFrame.removeAllViews();
        this.mCandidatesFrame.addView(view, new FrameLayout.LayoutParams(-1, -2));
    }

    public void setCandidatesViewShown(boolean z2) {
        updateCandidatesVisibility(z2);
        if (this.mShowInputRequested || this.mWindowVisible == z2) {
            return;
        }
        if (z2) {
            showWindow(false);
        } else {
            doHideWindow();
        }
    }

    public void setExtractView(View view) {
        this.mExtractFrame.removeAllViews();
        this.mExtractFrame.addView(view, new FrameLayout.LayoutParams(-1, -1));
        this.mExtractView = view;
        if (view == null) {
            this.mExtractEditText = null;
            this.mExtractAccessories = null;
            this.mExtractAction = null;
            return;
        }
        ExtractEditText extractEditText = (ExtractEditText) view.findViewById(16908325);
        this.mExtractEditText = extractEditText;
        extractEditText.setIME(this);
        View viewFindViewById = view.findViewById(R.id.inputExtractAction);
        this.mExtractAction = viewFindViewById;
        if (viewFindViewById != null) {
            this.mExtractAccessories = (ViewGroup) view.findViewById(R.id.inputExtractAccessories);
        }
        startExtractingText(false);
    }

    public void setExtractViewShown(boolean z2) {
        if (this.mExtractViewHidden == z2) {
            this.mExtractViewHidden = !z2;
            updateExtractFrameVisibility();
        }
    }

    public void setInputView(View view) {
        this.mInputFrame.removeAllViews();
        this.mInputFrame.addView(view, new FrameLayout.LayoutParams(-1, -2));
        this.mInputView = view;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        if (this.mWindow != null) {
            throw new IllegalStateException("Must be called before onCreate()");
        }
        this.mTheme = i2;
    }

    public void showStatusIcon(int i2) {
        this.mStatusIcon = i2;
        this.mImm.showStatusIcon(this.mToken, getPackageName(), i2);
    }

    public void showWindow(boolean z2) {
        if (DEBUG) {
            Log.v(TAG, "Showing window: showInput=" + z2 + " mShowInputRequested=" + this.mShowInputRequested + " mWindowAdded=" + this.mWindowAdded + " mWindowCreated=" + this.mWindowCreated + " mWindowVisible=" + this.mWindowVisible + " mInputStarted=" + this.mInputStarted + " mShowInputFlags=" + this.mShowInputFlags);
        }
        if (this.mInShowWindow) {
            Log.w(TAG, "Re-entrance in to showWindow");
            return;
        }
        try {
            try {
                this.mWindowWasVisible = this.mWindowVisible;
                this.mInShowWindow = true;
                showWindowInner(z2);
                this.mWindowWasVisible = true;
                this.mInShowWindow = false;
            } catch (WindowManager.BadTokenException e2) {
                if (DEBUG) {
                    Log.v(TAG, "BadTokenException: IME is done.");
                }
                this.mWindowVisible = false;
                this.mWindowAdded = false;
                throw e2;
            }
        } catch (Throwable th) {
            this.mWindowWasVisible = true;
            this.mInShowWindow = false;
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void showWindowInner(boolean z2) {
        Object[] objArr;
        int i2 = (this.mWindowVisible ? 1 : 0) | (isInputViewShown() ? 2 : 0);
        this.mWindowVisible = true;
        if (!this.mShowInputRequested && this.mInputStarted && z2) {
            this.mShowInputRequested = true;
            objArr = true;
        } else {
            objArr = false;
        }
        if (DEBUG) {
            Log.v(TAG, "showWindow: updating UI");
        }
        initialize();
        updateFullscreenMode();
        updateInputViewShown();
        if (!this.mWindowAdded || !this.mWindowCreated) {
            this.mWindowAdded = true;
            this.mWindowCreated = true;
            initialize();
            if (DEBUG) {
                Log.v(TAG, "CALL: onCreateCandidatesView");
            }
            View viewOnCreateCandidatesView = onCreateCandidatesView();
            if (DEBUG) {
                Log.v(TAG, "showWindow: candidates=" + viewOnCreateCandidatesView);
            }
            if (viewOnCreateCandidatesView != null) {
                setCandidatesView(viewOnCreateCandidatesView);
            }
        }
        if (this.mShowInputRequested) {
            if (!this.mInputViewStarted) {
                if (DEBUG) {
                    Log.v(TAG, "CALL: onStartInputView");
                }
                this.mInputViewStarted = true;
                onStartInputView(this.mInputEditorInfo, false);
            }
        } else if (!this.mCandidatesViewStarted) {
            if (DEBUG) {
                Log.v(TAG, "CALL: onStartCandidatesView");
            }
            this.mCandidatesViewStarted = true;
            onStartCandidatesView(this.mInputEditorInfo, false);
        }
        if (objArr != false) {
            startExtractingText(false);
        }
        int i3 = (isInputViewShown() ? 2 : 0) | 1;
        if (i2 != i3) {
            this.mImm.setImeWindowStatus(this.mToken, this.mStartInputToken, i3, this.mBackDisposition);
        }
        if ((i2 & 1) == 0) {
            if (DEBUG) {
                Log.v(TAG, "showWindow: showing!");
            }
            onWindowShown();
            this.mWindow.show();
            this.mShouldClearInsetOfPreviousIme = false;
        }
    }

    public void startExtractingText(boolean z2) {
        ExtractEditText extractEditText = this.mExtractEditText;
        if (extractEditText != null && getCurrentInputStarted() && isFullscreenMode()) {
            this.mExtractedToken++;
            ExtractedTextRequest extractedTextRequest = new ExtractedTextRequest();
            extractedTextRequest.token = this.mExtractedToken;
            extractedTextRequest.flags = 1;
            extractedTextRequest.hintMaxLines = 10;
            extractedTextRequest.hintMaxChars = 10000;
            InputConnection currentInputConnection = getCurrentInputConnection();
            ExtractedText extractedText = currentInputConnection == null ? null : currentInputConnection.getExtractedText(extractedTextRequest, 1);
            this.mExtractedText = extractedText;
            if (extractedText == null || currentInputConnection == null) {
                Log.e(TAG, "Unexpected null in startExtractingText : mExtractedText = " + this.mExtractedText + ", input connection = " + currentInputConnection);
            }
            EditorInfo currentInputEditorInfo = getCurrentInputEditorInfo();
            try {
                extractEditText.startInternalChanges();
                onUpdateExtractingVisibility(currentInputEditorInfo);
                onUpdateExtractingViews(currentInputEditorInfo);
                int i2 = currentInputEditorInfo.inputType;
                if ((i2 & 15) == 1 && (262144 & i2) != 0) {
                    i2 |= 131072;
                }
                extractEditText.setInputType(i2);
                extractEditText.setHint(currentInputEditorInfo.hintText);
                if (this.mExtractedText != null) {
                    extractEditText.setEnabled(true);
                    extractEditText.setExtractedText(this.mExtractedText);
                } else {
                    extractEditText.setEnabled(false);
                    extractEditText.setText("");
                }
                extractEditText.finishInternalChanges();
                if (z2) {
                    onExtractingInputChanged(currentInputEditorInfo);
                }
            } catch (Throwable th) {
                extractEditText.finishInternalChanges();
                throw th;
            }
        }
    }

    public void switchInputMethod(String str) {
        this.mImm.setInputMethod(this.mToken, str);
    }

    public void updateCandidatesVisibility(boolean z2) {
        int candidatesHiddenVisibility = z2 ? 0 : getCandidatesHiddenVisibility();
        if (this.mCandidatesVisibility != candidatesHiddenVisibility) {
            this.mCandidatesFrame.setVisibility(candidatesHiddenVisibility);
            this.mCandidatesVisibility = candidatesHiddenVisibility;
        }
    }

    public void updateExtractFrameVisibility() {
        int i2;
        if (isFullscreenMode()) {
            i2 = this.mExtractViewHidden ? 4 : 0;
            this.mExtractFrame.setVisibility(i2);
        } else {
            this.mExtractFrame.setVisibility(8);
            i2 = 0;
        }
        updateCandidatesVisibility(this.mCandidatesVisibility == 0);
        if (this.mWindowWasVisible && this.mFullscreenArea.getVisibility() != i2) {
            int resourceId = this.mThemeAttrs.getResourceId(i2 != 0 ? 2 : 1, 0);
            if (resourceId != 0) {
                this.mFullscreenArea.startAnimation(AnimationUtils.loadAnimation(this, resourceId));
            }
        }
        this.mFullscreenArea.setVisibility(i2);
    }

    public void updateFullscreenMode() {
        View viewOnCreateExtractTextView;
        IBinder iBinder;
        boolean z2 = this.mShowInputRequested && onEvaluateFullscreenMode();
        boolean z3 = this.mLastShowInputRequested != this.mShowInputRequested;
        if (this.mIsFullscreen != z2 || !this.mFullscreenApplied) {
            this.mIsFullscreen = z2;
            InputMethodManager inputMethodManager = this.mImm;
            if (inputMethodManager != null && (iBinder = this.mToken) != null) {
                inputMethodManager.reportFullscreenMode(iBinder, z2);
            }
            this.mFullscreenApplied = true;
            initialize();
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mFullscreenArea.getLayoutParams();
            if (z2) {
                this.mFullscreenArea.setBackgroundDrawable(this.mThemeAttrs.getDrawable(0));
                layoutParams.height = 0;
                layoutParams.weight = 1.0f;
            } else {
                this.mFullscreenArea.setBackgroundDrawable(null);
                layoutParams.height = -2;
                layoutParams.weight = 0.0f;
            }
            ((ViewGroup) this.mFullscreenArea.getParent()).updateViewLayout(this.mFullscreenArea, layoutParams);
            if (z2) {
                if (this.mExtractView == null && (viewOnCreateExtractTextView = onCreateExtractTextView()) != null) {
                    setExtractView(viewOnCreateExtractTextView);
                }
                startExtractingText(false);
            }
            updateExtractFrameVisibility();
            z3 = true;
        }
        if (z3) {
            onConfigureWindow(this.mWindow.getWindow(), z2, true ^ this.mShowInputRequested);
            this.mLastShowInputRequested = this.mShowInputRequested;
        }
    }

    public void updateInputViewShown() {
        boolean z2 = this.mShowInputRequested && onEvaluateInputViewShown();
        if (this.mIsInputViewShown == z2 || !this.mWindowVisible) {
            return;
        }
        this.mIsInputViewShown = z2;
        this.mInputFrame.setVisibility(z2 ? 0 : 8);
        if (this.mInputView == null) {
            initialize();
            View viewOnCreateInputView = onCreateInputView();
            if (viewOnCreateInputView != null) {
                setInputView(viewOnCreateInputView);
            }
        }
    }
}
