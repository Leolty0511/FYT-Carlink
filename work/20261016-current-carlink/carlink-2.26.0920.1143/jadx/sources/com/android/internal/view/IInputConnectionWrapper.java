package com.android.internal.view;

import android.accessibilityservice.c;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionInspector;
import android.view.inputmethod.InputContentInfo;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.os.SomeArgs;

/* JADX INFO: loaded from: classes3.dex */
public abstract class IInputConnectionWrapper extends IInputContext.Stub {
    private static final boolean DEBUG = false;
    private static final int DO_BEGIN_BATCH_EDIT = 90;
    private static final int DO_CLEAR_META_KEY_STATES = 130;
    private static final int DO_CLOSE_CONNECTION = 150;
    private static final int DO_COMMIT_COMPLETION = 55;
    private static final int DO_COMMIT_CONTENT = 160;
    private static final int DO_COMMIT_CORRECTION = 56;
    private static final int DO_COMMIT_TEXT = 50;
    private static final int DO_DELETE_SURROUNDING_TEXT = 80;
    private static final int DO_DELETE_SURROUNDING_TEXT_IN_CODE_POINTS = 81;
    private static final int DO_END_BATCH_EDIT = 95;
    private static final int DO_FINISH_COMPOSING_TEXT = 65;
    private static final int DO_GET_CURSOR_CAPS_MODE = 30;
    private static final int DO_GET_EXTRACTED_TEXT = 40;
    private static final int DO_GET_SELECTED_TEXT = 25;
    private static final int DO_GET_TEXT_AFTER_CURSOR = 10;
    private static final int DO_GET_TEXT_BEFORE_CURSOR = 20;
    private static final int DO_PERFORM_CONTEXT_MENU_ACTION = 59;
    private static final int DO_PERFORM_EDITOR_ACTION = 58;
    private static final int DO_PERFORM_PRIVATE_COMMAND = 120;
    private static final int DO_REQUEST_UPDATE_CURSOR_ANCHOR_INFO = 140;
    private static final int DO_SEND_KEY_EVENT = 70;
    private static final int DO_SET_COMPOSING_REGION = 63;
    private static final int DO_SET_COMPOSING_TEXT = 60;
    private static final int DO_SET_SELECTION = 57;
    private static final String TAG = "IInputConnectionWrapper";
    private Handler mH;

    @GuardedBy("mLock")
    private InputConnection mInputConnection;
    private Looper mMainLooper;
    private Object mLock = new Object();

    @GuardedBy("mLock")
    private boolean mFinished = false;

    public class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            IInputConnectionWrapper.this.executeMessage(message);
        }
    }

    public IInputConnectionWrapper(Looper looper, InputConnection inputConnection) {
        this.mInputConnection = inputConnection;
        this.mMainLooper = looper;
        this.mH = new MyHandler(this.mMainLooper);
    }

    @Override // com.android.internal.view.IInputContext
    public void beginBatchEdit() {
        dispatchMessage(obtainMessage(90));
    }

    @Override // com.android.internal.view.IInputContext
    public void clearMetaKeyStates(int i2) {
        dispatchMessage(obtainMessageII(130, i2, 0));
    }

    public void closeConnection() {
        dispatchMessage(obtainMessage(150));
    }

    @Override // com.android.internal.view.IInputContext
    public void commitCompletion(CompletionInfo completionInfo) {
        dispatchMessage(obtainMessageO(55, completionInfo));
    }

    @Override // com.android.internal.view.IInputContext
    public void commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle, int i3, IInputContextCallback iInputContextCallback) {
        dispatchMessage(obtainMessageIOOSC(160, i2, inputContentInfo, bundle, i3, iInputContextCallback));
    }

    @Override // com.android.internal.view.IInputContext
    public void commitCorrection(CorrectionInfo correctionInfo) {
        dispatchMessage(obtainMessageO(56, correctionInfo));
    }

    @Override // com.android.internal.view.IInputContext
    public void commitText(CharSequence charSequence, int i2) {
        dispatchMessage(obtainMessageIO(50, i2, charSequence));
    }

    @Override // com.android.internal.view.IInputContext
    public void deleteSurroundingText(int i2, int i3) {
        dispatchMessage(obtainMessageII(80, i2, i3));
    }

    @Override // com.android.internal.view.IInputContext
    public void deleteSurroundingTextInCodePoints(int i2, int i3) {
        dispatchMessage(obtainMessageII(81, i2, i3));
    }

    public void dispatchMessage(Message message) {
        if (Looper.myLooper() != this.mMainLooper) {
            this.mH.sendMessage(message);
        } else {
            executeMessage(message);
            message.recycle();
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void endBatchEdit() {
        dispatchMessage(obtainMessage(95));
    }

    public void executeMessage(Message message) {
        int i2 = message.what;
        if (i2 == 80) {
            InputConnection inputConnection = getInputConnection();
            if (inputConnection == null || !isActive()) {
                Log.w(TAG, "deleteSurroundingText on inactive InputConnection");
                return;
            } else {
                inputConnection.deleteSurroundingText(message.arg1, message.arg2);
                return;
            }
        }
        if (i2 == 81) {
            InputConnection inputConnection2 = getInputConnection();
            if (inputConnection2 == null || !isActive()) {
                Log.w(TAG, "deleteSurroundingTextInCodePoints on inactive InputConnection");
                return;
            } else {
                inputConnection2.deleteSurroundingTextInCodePoints(message.arg1, message.arg2);
                return;
            }
        }
        switch (i2) {
            case 10:
                SomeArgs someArgs = (SomeArgs) message.obj;
                try {
                    try {
                        IInputContextCallback iInputContextCallback = (IInputContextCallback) someArgs.arg6;
                        int i3 = someArgs.argi6;
                        InputConnection inputConnection3 = getInputConnection();
                        if (inputConnection3 != null && isActive()) {
                            iInputContextCallback.setTextAfterCursor(inputConnection3.getTextAfterCursor(message.arg1, message.arg2), i3);
                            return;
                        }
                        Log.w(TAG, "getTextAfterCursor on inactive InputConnection");
                        iInputContextCallback.setTextAfterCursor(null, i3);
                        return;
                    } catch (RemoteException e2) {
                        Log.w(TAG, "Got RemoteException calling setTextAfterCursor", e2);
                    }
                } finally {
                    someArgs.recycle();
                }
                break;
            case 20:
                SomeArgs someArgs2 = (SomeArgs) message.obj;
                try {
                    try {
                        IInputContextCallback iInputContextCallback2 = (IInputContextCallback) someArgs2.arg6;
                        int i4 = someArgs2.argi6;
                        InputConnection inputConnection4 = getInputConnection();
                        if (inputConnection4 != null && isActive()) {
                            iInputContextCallback2.setTextBeforeCursor(inputConnection4.getTextBeforeCursor(message.arg1, message.arg2), i4);
                            return;
                        }
                        Log.w(TAG, "getTextBeforeCursor on inactive InputConnection");
                        iInputContextCallback2.setTextBeforeCursor(null, i4);
                        return;
                    } finally {
                        someArgs2.recycle();
                    }
                } catch (RemoteException e3) {
                    Log.w(TAG, "Got RemoteException calling setTextBeforeCursor", e3);
                }
                break;
            case 25:
                SomeArgs someArgs3 = (SomeArgs) message.obj;
                try {
                    try {
                        IInputContextCallback iInputContextCallback3 = (IInputContextCallback) someArgs3.arg6;
                        int i5 = someArgs3.argi6;
                        InputConnection inputConnection5 = getInputConnection();
                        if (inputConnection5 != null && isActive()) {
                            iInputContextCallback3.setSelectedText(inputConnection5.getSelectedText(message.arg1), i5);
                            return;
                        }
                        Log.w(TAG, "getSelectedText on inactive InputConnection");
                        iInputContextCallback3.setSelectedText(null, i5);
                        return;
                    } finally {
                        someArgs3.recycle();
                    }
                } catch (RemoteException e4) {
                    Log.w(TAG, "Got RemoteException calling setSelectedText", e4);
                }
                break;
            case 30:
                SomeArgs someArgs4 = (SomeArgs) message.obj;
                try {
                    try {
                        IInputContextCallback iInputContextCallback4 = (IInputContextCallback) someArgs4.arg6;
                        int i6 = someArgs4.argi6;
                        InputConnection inputConnection6 = getInputConnection();
                        if (inputConnection6 != null && isActive()) {
                            iInputContextCallback4.setCursorCapsMode(inputConnection6.getCursorCapsMode(message.arg1), i6);
                            return;
                        }
                        Log.w(TAG, "getCursorCapsMode on inactive InputConnection");
                        iInputContextCallback4.setCursorCapsMode(0, i6);
                        return;
                    } finally {
                        someArgs4.recycle();
                    }
                } catch (RemoteException e5) {
                    Log.w(TAG, "Got RemoteException calling setCursorCapsMode", e5);
                }
                break;
            case 40:
                SomeArgs someArgs5 = (SomeArgs) message.obj;
                try {
                    try {
                        IInputContextCallback iInputContextCallback5 = (IInputContextCallback) someArgs5.arg6;
                        int i7 = someArgs5.argi6;
                        InputConnection inputConnection7 = getInputConnection();
                        if (inputConnection7 != null && isActive()) {
                            iInputContextCallback5.setExtractedText(inputConnection7.getExtractedText((ExtractedTextRequest) someArgs5.arg1, message.arg1), i7);
                            return;
                        }
                        Log.w(TAG, "getExtractedText on inactive InputConnection");
                        iInputContextCallback5.setExtractedText(null, i7);
                        return;
                    } finally {
                        someArgs5.recycle();
                    }
                } catch (RemoteException e6) {
                    Log.w(TAG, "Got RemoteException calling setExtractedText", e6);
                }
                break;
            case 50:
                InputConnection inputConnection8 = getInputConnection();
                if (inputConnection8 == null || !isActive()) {
                    Log.w(TAG, "commitText on inactive InputConnection");
                    return;
                } else {
                    inputConnection8.commitText((CharSequence) message.obj, message.arg1);
                    onUserAction();
                    return;
                }
            case 63:
                InputConnection inputConnection9 = getInputConnection();
                if (inputConnection9 == null || !isActive()) {
                    Log.w(TAG, "setComposingRegion on inactive InputConnection");
                    return;
                } else {
                    inputConnection9.setComposingRegion(message.arg1, message.arg2);
                    return;
                }
            case 65:
                if (isFinished()) {
                    return;
                }
                InputConnection inputConnection10 = getInputConnection();
                if (inputConnection10 == null) {
                    Log.w(TAG, "finishComposingText on inactive InputConnection");
                    return;
                } else {
                    inputConnection10.finishComposingText();
                    return;
                }
            case 70:
                InputConnection inputConnection11 = getInputConnection();
                if (inputConnection11 == null || !isActive()) {
                    Log.w(TAG, "sendKeyEvent on inactive InputConnection");
                    return;
                } else {
                    inputConnection11.sendKeyEvent((KeyEvent) message.obj);
                    onUserAction();
                    return;
                }
            case 90:
                InputConnection inputConnection12 = getInputConnection();
                if (inputConnection12 == null || !isActive()) {
                    Log.w(TAG, "beginBatchEdit on inactive InputConnection");
                    return;
                } else {
                    inputConnection12.beginBatchEdit();
                    return;
                }
            case 95:
                InputConnection inputConnection13 = getInputConnection();
                if (inputConnection13 == null || !isActive()) {
                    Log.w(TAG, "endBatchEdit on inactive InputConnection");
                    return;
                } else {
                    inputConnection13.endBatchEdit();
                    return;
                }
            case 120:
                SomeArgs someArgs6 = (SomeArgs) message.obj;
                try {
                    String str = (String) someArgs6.arg1;
                    Bundle bundle = (Bundle) someArgs6.arg2;
                    InputConnection inputConnection14 = getInputConnection();
                    if (inputConnection14 != null && isActive()) {
                        inputConnection14.performPrivateCommand(str, bundle);
                        return;
                    }
                    Log.w(TAG, "performPrivateCommand on inactive InputConnection");
                    return;
                } finally {
                    someArgs6.recycle();
                }
            case 130:
                InputConnection inputConnection15 = getInputConnection();
                if (inputConnection15 == null || !isActive()) {
                    Log.w(TAG, "clearMetaKeyStates on inactive InputConnection");
                    return;
                } else {
                    inputConnection15.clearMetaKeyStates(message.arg1);
                    return;
                }
            case 140:
                SomeArgs someArgs7 = (SomeArgs) message.obj;
                try {
                    try {
                        IInputContextCallback iInputContextCallback6 = (IInputContextCallback) someArgs7.arg6;
                        int i8 = someArgs7.argi6;
                        InputConnection inputConnection16 = getInputConnection();
                        if (inputConnection16 != null && isActive()) {
                            iInputContextCallback6.setRequestUpdateCursorAnchorInfoResult(inputConnection16.requestCursorUpdates(message.arg1), i8);
                            return;
                        }
                        Log.w(TAG, "requestCursorAnchorInfo on inactive InputConnection");
                        iInputContextCallback6.setRequestUpdateCursorAnchorInfoResult(false, i8);
                        return;
                    } catch (RemoteException e7) {
                        Log.w(TAG, "Got RemoteException calling requestCursorAnchorInfo", e7);
                    }
                } finally {
                    someArgs7.recycle();
                }
                break;
            case 150:
                if (isFinished()) {
                    return;
                }
                try {
                    InputConnection inputConnection17 = getInputConnection();
                    if (inputConnection17 == null) {
                        synchronized (this.mLock) {
                            this.mInputConnection = null;
                            this.mFinished = true;
                            break;
                        }
                        return;
                    }
                    if ((InputConnectionInspector.getMissingMethodFlags(inputConnection17) & 64) == 0) {
                        inputConnection17.closeConnection();
                        break;
                    }
                    synchronized (this.mLock) {
                        this.mInputConnection = null;
                        this.mFinished = true;
                        break;
                    }
                    return;
                } catch (Throwable th) {
                    synchronized (this.mLock) {
                        this.mInputConnection = null;
                        this.mFinished = true;
                        throw th;
                    }
                }
            case 160:
                int i9 = message.arg1;
                SomeArgs someArgs8 = (SomeArgs) message.obj;
                try {
                    try {
                        IInputContextCallback iInputContextCallback7 = (IInputContextCallback) someArgs8.arg6;
                        int i10 = someArgs8.argi6;
                        InputConnection inputConnection18 = getInputConnection();
                        if (inputConnection18 != null && isActive()) {
                            InputContentInfo inputContentInfo = (InputContentInfo) someArgs8.arg1;
                            if (inputContentInfo != null && inputContentInfo.validate()) {
                                iInputContextCallback7.setCommitContentResult(inputConnection18.commitContent(inputContentInfo, i9, (Bundle) someArgs8.arg2), i10);
                                return;
                            }
                            Log.w(TAG, "commitContent with invalid inputContentInfo=" + inputContentInfo);
                            iInputContextCallback7.setCommitContentResult(false, i10);
                            return;
                        }
                        Log.w(TAG, "commitContent on inactive InputConnection");
                        iInputContextCallback7.setCommitContentResult(false, i10);
                        return;
                    } catch (RemoteException e8) {
                        Log.w(TAG, "Got RemoteException calling commitContent", e8);
                    }
                } finally {
                    someArgs8.recycle();
                }
                break;
            default:
                switch (i2) {
                    case 55:
                        InputConnection inputConnection19 = getInputConnection();
                        if (inputConnection19 == null || !isActive()) {
                            Log.w(TAG, "commitCompletion on inactive InputConnection");
                            return;
                        } else {
                            inputConnection19.commitCompletion((CompletionInfo) message.obj);
                            return;
                        }
                    case 56:
                        InputConnection inputConnection20 = getInputConnection();
                        if (inputConnection20 == null || !isActive()) {
                            Log.w(TAG, "commitCorrection on inactive InputConnection");
                            return;
                        } else {
                            inputConnection20.commitCorrection((CorrectionInfo) message.obj);
                            return;
                        }
                    case 57:
                        InputConnection inputConnection21 = getInputConnection();
                        if (inputConnection21 == null || !isActive()) {
                            Log.w(TAG, "setSelection on inactive InputConnection");
                            return;
                        } else {
                            inputConnection21.setSelection(message.arg1, message.arg2);
                            return;
                        }
                    case 58:
                        InputConnection inputConnection22 = getInputConnection();
                        if (inputConnection22 == null || !isActive()) {
                            Log.w(TAG, "performEditorAction on inactive InputConnection");
                            return;
                        } else {
                            inputConnection22.performEditorAction(message.arg1);
                            return;
                        }
                    case 59:
                        InputConnection inputConnection23 = getInputConnection();
                        if (inputConnection23 == null || !isActive()) {
                            Log.w(TAG, "performContextMenuAction on inactive InputConnection");
                            return;
                        } else {
                            inputConnection23.performContextMenuAction(message.arg1);
                            return;
                        }
                    case 60:
                        InputConnection inputConnection24 = getInputConnection();
                        if (inputConnection24 == null || !isActive()) {
                            Log.w(TAG, "setComposingText on inactive InputConnection");
                            return;
                        } else {
                            inputConnection24.setComposingText((CharSequence) message.obj, message.arg1);
                            onUserAction();
                            return;
                        }
                    default:
                        c.A(new StringBuilder("Unhandled message code: "), message.what, TAG);
                        return;
                }
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void finishComposingText() {
        dispatchMessage(obtainMessage(65));
    }

    @Override // com.android.internal.view.IInputContext
    public void getCursorCapsMode(int i2, int i3, IInputContextCallback iInputContextCallback) {
        dispatchMessage(obtainMessageISC(30, i2, i3, iInputContextCallback));
    }

    @Override // com.android.internal.view.IInputContext
    public void getExtractedText(ExtractedTextRequest extractedTextRequest, int i2, int i3, IInputContextCallback iInputContextCallback) {
        dispatchMessage(obtainMessageIOSC(40, i2, extractedTextRequest, i3, iInputContextCallback));
    }

    public InputConnection getInputConnection() {
        InputConnection inputConnection;
        synchronized (this.mLock) {
            inputConnection = this.mInputConnection;
        }
        return inputConnection;
    }

    @Override // com.android.internal.view.IInputContext
    public void getSelectedText(int i2, int i3, IInputContextCallback iInputContextCallback) {
        dispatchMessage(obtainMessageISC(25, i2, i3, iInputContextCallback));
    }

    @Override // com.android.internal.view.IInputContext
    public void getTextAfterCursor(int i2, int i3, int i4, IInputContextCallback iInputContextCallback) {
        dispatchMessage(obtainMessageIISC(10, i2, i3, i4, iInputContextCallback));
    }

    @Override // com.android.internal.view.IInputContext
    public void getTextBeforeCursor(int i2, int i3, int i4, IInputContextCallback iInputContextCallback) {
        dispatchMessage(obtainMessageIISC(20, i2, i3, i4, iInputContextCallback));
    }

    public abstract boolean isActive();

    public boolean isFinished() {
        boolean z2;
        synchronized (this.mLock) {
            z2 = this.mFinished;
        }
        return z2;
    }

    public Message obtainMessage(int i2) {
        return this.mH.obtainMessage(i2);
    }

    public Message obtainMessageII(int i2, int i3, int i4) {
        return this.mH.obtainMessage(i2, i3, i4);
    }

    public Message obtainMessageIISC(int i2, int i3, int i4, int i5, IInputContextCallback iInputContextCallback) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg6 = iInputContextCallback;
        someArgsObtain.argi6 = i5;
        return this.mH.obtainMessage(i2, i3, i4, someArgsObtain);
    }

    public Message obtainMessageIO(int i2, int i3, Object obj) {
        return this.mH.obtainMessage(i2, i3, 0, obj);
    }

    public Message obtainMessageIOOSC(int i2, int i3, Object obj, Object obj2, int i4, IInputContextCallback iInputContextCallback) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        someArgsObtain.arg6 = iInputContextCallback;
        someArgsObtain.argi6 = i4;
        return this.mH.obtainMessage(i2, i3, 0, someArgsObtain);
    }

    public Message obtainMessageIOSC(int i2, int i3, Object obj, int i4, IInputContextCallback iInputContextCallback) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg6 = iInputContextCallback;
        someArgsObtain.argi6 = i4;
        return this.mH.obtainMessage(i2, i3, 0, someArgsObtain);
    }

    public Message obtainMessageISC(int i2, int i3, int i4, IInputContextCallback iInputContextCallback) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg6 = iInputContextCallback;
        someArgsObtain.argi6 = i4;
        return this.mH.obtainMessage(i2, i3, 0, someArgsObtain);
    }

    public Message obtainMessageO(int i2, Object obj) {
        return this.mH.obtainMessage(i2, 0, 0, obj);
    }

    public Message obtainMessageOO(int i2, Object obj, Object obj2) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        return this.mH.obtainMessage(i2, 0, 0, someArgsObtain);
    }

    public abstract void onUserAction();

    @Override // com.android.internal.view.IInputContext
    public void performContextMenuAction(int i2) {
        dispatchMessage(obtainMessageII(59, i2, 0));
    }

    @Override // com.android.internal.view.IInputContext
    public void performEditorAction(int i2) {
        dispatchMessage(obtainMessageII(58, i2, 0));
    }

    @Override // com.android.internal.view.IInputContext
    public void performPrivateCommand(String str, Bundle bundle) {
        dispatchMessage(obtainMessageOO(120, str, bundle));
    }

    @Override // com.android.internal.view.IInputContext
    public void requestUpdateCursorAnchorInfo(int i2, int i3, IInputContextCallback iInputContextCallback) {
        dispatchMessage(obtainMessageISC(140, i2, i3, iInputContextCallback));
    }

    @Override // com.android.internal.view.IInputContext
    public void sendKeyEvent(KeyEvent keyEvent) {
        dispatchMessage(obtainMessageO(70, keyEvent));
    }

    @Override // com.android.internal.view.IInputContext
    public void setComposingRegion(int i2, int i3) {
        dispatchMessage(obtainMessageII(63, i2, i3));
    }

    @Override // com.android.internal.view.IInputContext
    public void setComposingText(CharSequence charSequence, int i2) {
        dispatchMessage(obtainMessageIO(60, i2, charSequence));
    }

    @Override // com.android.internal.view.IInputContext
    public void setSelection(int i2, int i3) {
        dispatchMessage(obtainMessageII(57, i2, i3));
    }
}
