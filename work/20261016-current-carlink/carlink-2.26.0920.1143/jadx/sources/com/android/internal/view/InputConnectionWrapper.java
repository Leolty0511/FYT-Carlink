package com.android.internal.view;

import android.inputmethodservice.AbstractInputMethodService;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionInspector;
import android.view.inputmethod.InputContentInfo;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class InputConnectionWrapper implements InputConnection {
    private static final int MAX_WAIT_TIME_MILLIS = 2000;
    private final IInputContext mIInputContext;
    private final WeakReference<AbstractInputMethodService> mInputMethodService;
    private final int mMissingMethods;

    public static class InputContextCallback extends IInputContextCallback.Stub {
        private static final String TAG = "InputConnectionWrapper.ICC";
        private static InputContextCallback sInstance = new InputContextCallback();
        private static int sSequenceNumber = 1;
        public boolean mCommitContentResult;
        public int mCursorCapsMode;
        public ExtractedText mExtractedText;
        public boolean mHaveValue;
        public boolean mRequestUpdateCursorAnchorInfoResult;
        public CharSequence mSelectedText;
        public int mSeq;
        public CharSequence mTextAfterCursor;
        public CharSequence mTextBeforeCursor;

        /* JADX INFO: Access modifiers changed from: private */
        public void dispose() {
            synchronized (InputContextCallback.class) {
                if (sInstance == null) {
                    this.mTextAfterCursor = null;
                    this.mTextBeforeCursor = null;
                    this.mExtractedText = null;
                    sInstance = this;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static InputContextCallback getInstance() {
            InputContextCallback inputContextCallback;
            synchronized (InputContextCallback.class) {
                inputContextCallback = sInstance;
                if (inputContextCallback != null) {
                    sInstance = null;
                    inputContextCallback.mHaveValue = false;
                } else {
                    inputContextCallback = new InputContextCallback();
                }
                int i2 = sSequenceNumber;
                sSequenceNumber = i2 + 1;
                inputContextCallback.mSeq = i2;
            }
            return inputContextCallback;
        }

        @Override // com.android.internal.view.IInputContextCallback
        public void setCommitContentResult(boolean z2, int i2) {
            synchronized (this) {
                if (i2 == this.mSeq) {
                    this.mCommitContentResult = z2;
                    this.mHaveValue = true;
                    notifyAll();
                } else {
                    Log.i(TAG, "Got out-of-sequence callback " + i2 + " (expected " + this.mSeq + ") in setCommitContentResult, ignoring.");
                }
            }
        }

        @Override // com.android.internal.view.IInputContextCallback
        public void setCursorCapsMode(int i2, int i3) {
            synchronized (this) {
                if (i3 == this.mSeq) {
                    this.mCursorCapsMode = i2;
                    this.mHaveValue = true;
                    notifyAll();
                } else {
                    Log.i(TAG, "Got out-of-sequence callback " + i3 + " (expected " + this.mSeq + ") in setCursorCapsMode, ignoring.");
                }
            }
        }

        @Override // com.android.internal.view.IInputContextCallback
        public void setExtractedText(ExtractedText extractedText, int i2) {
            synchronized (this) {
                if (i2 == this.mSeq) {
                    this.mExtractedText = extractedText;
                    this.mHaveValue = true;
                    notifyAll();
                } else {
                    Log.i(TAG, "Got out-of-sequence callback " + i2 + " (expected " + this.mSeq + ") in setExtractedText, ignoring.");
                }
            }
        }

        @Override // com.android.internal.view.IInputContextCallback
        public void setRequestUpdateCursorAnchorInfoResult(boolean z2, int i2) {
            synchronized (this) {
                if (i2 == this.mSeq) {
                    this.mRequestUpdateCursorAnchorInfoResult = z2;
                    this.mHaveValue = true;
                    notifyAll();
                } else {
                    Log.i(TAG, "Got out-of-sequence callback " + i2 + " (expected " + this.mSeq + ") in setCursorAnchorInfoRequestResult, ignoring.");
                }
            }
        }

        @Override // com.android.internal.view.IInputContextCallback
        public void setSelectedText(CharSequence charSequence, int i2) {
            synchronized (this) {
                if (i2 == this.mSeq) {
                    this.mSelectedText = charSequence;
                    this.mHaveValue = true;
                    notifyAll();
                } else {
                    Log.i(TAG, "Got out-of-sequence callback " + i2 + " (expected " + this.mSeq + ") in setSelectedText, ignoring.");
                }
            }
        }

        @Override // com.android.internal.view.IInputContextCallback
        public void setTextAfterCursor(CharSequence charSequence, int i2) {
            synchronized (this) {
                if (i2 == this.mSeq) {
                    this.mTextAfterCursor = charSequence;
                    this.mHaveValue = true;
                    notifyAll();
                } else {
                    Log.i(TAG, "Got out-of-sequence callback " + i2 + " (expected " + this.mSeq + ") in setTextAfterCursor, ignoring.");
                }
            }
        }

        @Override // com.android.internal.view.IInputContextCallback
        public void setTextBeforeCursor(CharSequence charSequence, int i2) {
            synchronized (this) {
                if (i2 == this.mSeq) {
                    this.mTextBeforeCursor = charSequence;
                    this.mHaveValue = true;
                    notifyAll();
                } else {
                    Log.i(TAG, "Got out-of-sequence callback " + i2 + " (expected " + this.mSeq + ") in setTextBeforeCursor, ignoring.");
                }
            }
        }

        public void waitForResultLocked() {
            long jUptimeMillis = SystemClock.uptimeMillis() + 2000;
            while (!this.mHaveValue) {
                long jUptimeMillis2 = jUptimeMillis - SystemClock.uptimeMillis();
                if (jUptimeMillis2 <= 0) {
                    Log.w(TAG, "Timed out waiting on IInputContextCallback");
                    return;
                }
                try {
                    wait(jUptimeMillis2);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public InputConnectionWrapper(WeakReference<AbstractInputMethodService> weakReference, IInputContext iInputContext, int i2) {
        this.mInputMethodService = weakReference;
        this.mIInputContext = iInputContext;
        this.mMissingMethods = i2;
    }

    private boolean isMethodMissing(int i2) {
        return (this.mMissingMethods & i2) == i2;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        try {
            this.mIInputContext.beginBatchEdit();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i2) {
        try {
            this.mIInputContext.clearMetaKeyStates(i2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public void closeConnection() {
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCompletion(CompletionInfo completionInfo) {
        if (isMethodMissing(4)) {
            return false;
        }
        try {
            this.mIInputContext.commitCompletion(completionInfo);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle) {
        boolean z2;
        if (isMethodMissing(128)) {
            return false;
        }
        if ((i2 & 1) != 0) {
            try {
                AbstractInputMethodService abstractInputMethodService = this.mInputMethodService.get();
                if (abstractInputMethodService == null) {
                    return false;
                }
                abstractInputMethodService.exposeContent(inputContentInfo, this);
            } catch (RemoteException unused) {
                return false;
            }
        }
        InputContextCallback inputContextCallback = InputContextCallback.getInstance();
        this.mIInputContext.commitContent(inputContentInfo, i2, bundle, inputContextCallback.mSeq, inputContextCallback);
        synchronized (inputContextCallback) {
            inputContextCallback.waitForResultLocked();
            z2 = inputContextCallback.mHaveValue ? inputContextCallback.mCommitContentResult : false;
        }
        inputContextCallback.dispose();
        return z2;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        try {
            this.mIInputContext.commitCorrection(correctionInfo);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i2) {
        try {
            this.mIInputContext.commitText(charSequence, i2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i2, int i3) {
        try {
            this.mIInputContext.deleteSurroundingText(i2, i3);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i2, int i3) {
        if (isMethodMissing(16)) {
            return false;
        }
        try {
            this.mIInputContext.deleteSurroundingTextInCodePoints(i2, i3);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        try {
            this.mIInputContext.endBatchEdit();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        try {
            this.mIInputContext.finishComposingText();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public int getCursorCapsMode(int i2) {
        int i3;
        try {
            InputContextCallback inputContextCallback = InputContextCallback.getInstance();
            this.mIInputContext.getCursorCapsMode(i2, inputContextCallback.mSeq, inputContextCallback);
            synchronized (inputContextCallback) {
                inputContextCallback.waitForResultLocked();
                i3 = inputContextCallback.mHaveValue ? inputContextCallback.mCursorCapsMode : 0;
            }
            inputContextCallback.dispose();
            return i3;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2) {
        ExtractedText extractedText;
        try {
            InputContextCallback inputContextCallback = InputContextCallback.getInstance();
            this.mIInputContext.getExtractedText(extractedTextRequest, i2, inputContextCallback.mSeq, inputContextCallback);
            synchronized (inputContextCallback) {
                inputContextCallback.waitForResultLocked();
                extractedText = inputContextCallback.mHaveValue ? inputContextCallback.mExtractedText : null;
            }
            inputContextCallback.dispose();
            return extractedText;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public Handler getHandler() {
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getSelectedText(int i2) {
        CharSequence charSequence;
        if (isMethodMissing(1)) {
            return null;
        }
        try {
            InputContextCallback inputContextCallback = InputContextCallback.getInstance();
            this.mIInputContext.getSelectedText(i2, inputContextCallback.mSeq, inputContextCallback);
            synchronized (inputContextCallback) {
                inputContextCallback.waitForResultLocked();
                charSequence = inputContextCallback.mHaveValue ? inputContextCallback.mSelectedText : null;
            }
            inputContextCallback.dispose();
            return charSequence;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextAfterCursor(int i2, int i3) {
        CharSequence charSequence;
        try {
            InputContextCallback inputContextCallback = InputContextCallback.getInstance();
            this.mIInputContext.getTextAfterCursor(i2, i3, inputContextCallback.mSeq, inputContextCallback);
            synchronized (inputContextCallback) {
                inputContextCallback.waitForResultLocked();
                charSequence = inputContextCallback.mHaveValue ? inputContextCallback.mTextAfterCursor : null;
            }
            inputContextCallback.dispose();
            return charSequence;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextBeforeCursor(int i2, int i3) {
        CharSequence charSequence;
        try {
            InputContextCallback inputContextCallback = InputContextCallback.getInstance();
            this.mIInputContext.getTextBeforeCursor(i2, i3, inputContextCallback.mSeq, inputContextCallback);
            synchronized (inputContextCallback) {
                inputContextCallback.waitForResultLocked();
                charSequence = inputContextCallback.mHaveValue ? inputContextCallback.mTextBeforeCursor : null;
            }
            inputContextCallback.dispose();
            return charSequence;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i2) {
        try {
            this.mIInputContext.performContextMenuAction(i2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i2) {
        try {
            this.mIInputContext.performEditorAction(i2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        try {
            this.mIInputContext.performPrivateCommand(str, bundle);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean reportFullscreenMode(boolean z2) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean requestCursorUpdates(int i2) {
        boolean z2;
        if (isMethodMissing(8)) {
            return false;
        }
        try {
            InputContextCallback inputContextCallback = InputContextCallback.getInstance();
            this.mIInputContext.requestUpdateCursorAnchorInfo(i2, inputContextCallback.mSeq, inputContextCallback);
            synchronized (inputContextCallback) {
                inputContextCallback.waitForResultLocked();
                z2 = inputContextCallback.mHaveValue ? inputContextCallback.mRequestUpdateCursorAnchorInfoResult : false;
            }
            inputContextCallback.dispose();
            return z2;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        try {
            this.mIInputContext.sendKeyEvent(keyEvent);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i2, int i3) {
        if (isMethodMissing(2)) {
            return false;
        }
        try {
            this.mIInputContext.setComposingRegion(i2, i3);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i2) {
        try {
            this.mIInputContext.setComposingText(charSequence, i2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setSelection(int i2, int i3) {
        try {
            this.mIInputContext.setSelection(i2, i3);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public String toString() {
        return "InputConnectionWrapper{idHash=#" + Integer.toHexString(System.identityHashCode(this)) + " mMissingMethods=" + InputConnectionInspector.getMissingMethodFlagsAsString(this.mMissingMethods) + "}";
    }
}
