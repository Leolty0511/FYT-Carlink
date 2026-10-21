package com.android.internal.view;

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
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.android.internal.view.b.a {
    private static final int DO_BEGIN_BATCH_EDIT = 90;
    private static final int DO_CLEAR_META_KEY_STATES = 130;
    private static final int DO_COMMIT_COMPLETION = 55;
    private static final int DO_COMMIT_CORRECTION = 56;
    private static final int DO_COMMIT_TEXT = 50;
    private static final int DO_DELETE_SURROUNDING_TEXT = 80;
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
    private static final int DO_REPORT_FULLSCREEN_MODE = 100;
    private static final int DO_SEND_KEY_EVENT = 70;
    private static final int DO_SET_COMPOSING_REGION = 63;
    private static final int DO_SET_COMPOSING_TEXT = 60;
    private static final int DO_SET_SELECTION = 57;
    public static final String TAG = "IInputConnectionWrapper";
    private Handler mH;
    private WeakReference<InputConnection> mInputConnection;
    private Looper mMainLooper;

    /* JADX INFO: renamed from: com.android.internal.view.a$a, reason: collision with other inner class name */
    public class HandlerC0021a extends Handler {
        public HandlerC0021a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a.this.executeMessage(message);
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f1237a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f1238b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public c f1239c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1240d;
    }

    public a(Looper looper, InputConnection inputConnection) {
        this.mInputConnection = new WeakReference<>(inputConnection);
        this.mMainLooper = looper;
        this.mH = new HandlerC0021a(looper);
    }

    @Override // com.android.internal.view.b
    public void beginBatchEdit() {
        dispatchMessage(obtainMessage(90));
    }

    @Override // com.android.internal.view.b
    public void clearMetaKeyStates(int i2) {
        dispatchMessage(obtainMessageII(130, i2, 0));
    }

    @Override // com.android.internal.view.b
    public void commitCompletion(CompletionInfo completionInfo) {
        dispatchMessage(obtainMessageO(55, completionInfo));
    }

    @Override // com.android.internal.view.b
    public void commitCorrection(CorrectionInfo correctionInfo) {
        dispatchMessage(obtainMessageO(56, correctionInfo));
    }

    @Override // com.android.internal.view.b
    public void commitText(CharSequence charSequence, int i2) {
        dispatchMessage(obtainMessageIO(50, i2, charSequence));
    }

    @Override // com.android.internal.view.b
    public void deleteSurroundingText(int i2, int i3) {
        dispatchMessage(obtainMessageII(80, i2, i3));
    }

    public void dispatchMessage(Message message) {
        if (Looper.myLooper() != this.mMainLooper) {
            this.mH.sendMessage(message);
        } else {
            executeMessage(message);
            message.recycle();
        }
    }

    @Override // com.android.internal.view.b
    public void endBatchEdit() {
        dispatchMessage(obtainMessage(95));
    }

    public void executeMessage(Message message) {
        int i2 = message.what;
        switch (i2) {
            case 10:
                b bVar = (b) message.obj;
                try {
                    InputConnection inputConnection = this.mInputConnection.get();
                    if (inputConnection != null && isActive()) {
                        bVar.f1239c.E(inputConnection.getTextAfterCursor(message.arg1, message.arg2), bVar.f1240d);
                    }
                    Log.w(TAG, "getTextAfterCursor on inactive InputConnection");
                    bVar.f1239c.E(null, bVar.f1240d);
                } catch (RemoteException e2) {
                    Log.w(TAG, "Got RemoteException calling setTextAfterCursor", e2);
                    return;
                }
                break;
            case 20:
                b bVar2 = (b) message.obj;
                try {
                    InputConnection inputConnection2 = this.mInputConnection.get();
                    if (inputConnection2 != null && isActive()) {
                        bVar2.f1239c.f1(inputConnection2.getTextBeforeCursor(message.arg1, message.arg2), bVar2.f1240d);
                    }
                    Log.w(TAG, "getTextBeforeCursor on inactive InputConnection");
                    bVar2.f1239c.f1(null, bVar2.f1240d);
                } catch (RemoteException e3) {
                    Log.w(TAG, "Got RemoteException calling setTextBeforeCursor", e3);
                    return;
                }
                break;
            case 25:
                b bVar3 = (b) message.obj;
                try {
                    InputConnection inputConnection3 = this.mInputConnection.get();
                    if (inputConnection3 != null && isActive()) {
                        bVar3.f1239c.p1(inputConnection3.getSelectedText(message.arg1), bVar3.f1240d);
                    }
                    Log.w(TAG, "getSelectedText on inactive InputConnection");
                    bVar3.f1239c.p1(null, bVar3.f1240d);
                } catch (RemoteException e4) {
                    Log.w(TAG, "Got RemoteException calling setSelectedText", e4);
                    return;
                }
                break;
            case 30:
                b bVar4 = (b) message.obj;
                try {
                    InputConnection inputConnection4 = this.mInputConnection.get();
                    if (inputConnection4 != null && isActive()) {
                        bVar4.f1239c.x1(inputConnection4.getCursorCapsMode(message.arg1), bVar4.f1240d);
                    }
                    Log.w(TAG, "getCursorCapsMode on inactive InputConnection");
                    bVar4.f1239c.x1(0, bVar4.f1240d);
                } catch (RemoteException e5) {
                    Log.w(TAG, "Got RemoteException calling setCursorCapsMode", e5);
                    return;
                }
                break;
            case 40:
                b bVar5 = (b) message.obj;
                try {
                    InputConnection inputConnection5 = this.mInputConnection.get();
                    if (inputConnection5 != null && isActive()) {
                        bVar5.f1239c.B0(inputConnection5.getExtractedText((ExtractedTextRequest) bVar5.f1237a, message.arg1), bVar5.f1240d);
                    }
                    Log.w(TAG, "getExtractedText on inactive InputConnection");
                    bVar5.f1239c.B0(null, bVar5.f1240d);
                } catch (RemoteException e6) {
                    Log.w(TAG, "Got RemoteException calling setExtractedText", e6);
                    return;
                }
                break;
            case 50:
                InputConnection inputConnection6 = this.mInputConnection.get();
                if (inputConnection6 != null && isActive()) {
                    inputConnection6.commitText((CharSequence) message.obj, message.arg1);
                } else {
                    Log.w(TAG, "commitText on inactive InputConnection");
                }
                break;
            case 63:
                InputConnection inputConnection7 = this.mInputConnection.get();
                if (inputConnection7 != null && isActive()) {
                    inputConnection7.setComposingRegion(message.arg1, message.arg2);
                } else {
                    Log.w(TAG, "setComposingRegion on inactive InputConnection");
                }
                break;
            case 65:
                InputConnection inputConnection8 = this.mInputConnection.get();
                if (inputConnection8 != null) {
                    inputConnection8.finishComposingText();
                } else {
                    Log.w(TAG, "finishComposingText on inactive InputConnection");
                }
                break;
            case 70:
                InputConnection inputConnection9 = this.mInputConnection.get();
                if (inputConnection9 != null && isActive()) {
                    inputConnection9.sendKeyEvent((KeyEvent) message.obj);
                } else {
                    Log.w(TAG, "sendKeyEvent on inactive InputConnection");
                }
                break;
            case 80:
                InputConnection inputConnection10 = this.mInputConnection.get();
                if (inputConnection10 != null && isActive()) {
                    inputConnection10.deleteSurroundingText(message.arg1, message.arg2);
                } else {
                    Log.w(TAG, "deleteSurroundingText on inactive InputConnection");
                }
                break;
            case 90:
                InputConnection inputConnection11 = this.mInputConnection.get();
                if (inputConnection11 != null && isActive()) {
                    inputConnection11.beginBatchEdit();
                } else {
                    Log.w(TAG, "beginBatchEdit on inactive InputConnection");
                }
                break;
            case 95:
                InputConnection inputConnection12 = this.mInputConnection.get();
                if (inputConnection12 != null && isActive()) {
                    inputConnection12.endBatchEdit();
                } else {
                    Log.w(TAG, "endBatchEdit on inactive InputConnection");
                }
                break;
            case 100:
                InputConnection inputConnection13 = this.mInputConnection.get();
                if (inputConnection13 != null && isActive()) {
                    inputConnection13.reportFullscreenMode(message.arg1 == 1);
                } else {
                    Log.w(TAG, "showStatusIcon on inactive InputConnection");
                }
                break;
            case 120:
                InputConnection inputConnection14 = this.mInputConnection.get();
                if (inputConnection14 != null && isActive()) {
                    b bVar6 = (b) message.obj;
                    inputConnection14.performPrivateCommand((String) bVar6.f1237a, (Bundle) bVar6.f1238b);
                } else {
                    Log.w(TAG, "performPrivateCommand on inactive InputConnection");
                }
                break;
            case 130:
                InputConnection inputConnection15 = this.mInputConnection.get();
                if (inputConnection15 != null && isActive()) {
                    inputConnection15.clearMetaKeyStates(message.arg1);
                } else {
                    Log.w(TAG, "clearMetaKeyStates on inactive InputConnection");
                }
                break;
            default:
                switch (i2) {
                    case 55:
                        InputConnection inputConnection16 = this.mInputConnection.get();
                        if (inputConnection16 != null && isActive()) {
                            inputConnection16.commitCompletion((CompletionInfo) message.obj);
                        } else {
                            Log.w(TAG, "commitCompletion on inactive InputConnection");
                        }
                        break;
                    case 56:
                        InputConnection inputConnection17 = this.mInputConnection.get();
                        if (inputConnection17 != null && isActive()) {
                            inputConnection17.commitCorrection((CorrectionInfo) message.obj);
                        } else {
                            Log.w(TAG, "commitCorrection on inactive InputConnection");
                        }
                        break;
                    case 57:
                        InputConnection inputConnection18 = this.mInputConnection.get();
                        if (inputConnection18 != null && isActive()) {
                            inputConnection18.setSelection(message.arg1, message.arg2);
                        } else {
                            Log.w(TAG, "setSelection on inactive InputConnection");
                        }
                        break;
                    case 58:
                        InputConnection inputConnection19 = this.mInputConnection.get();
                        if (inputConnection19 != null && isActive()) {
                            inputConnection19.performEditorAction(message.arg1);
                        } else {
                            Log.w(TAG, "performEditorAction on inactive InputConnection");
                        }
                        break;
                    case 59:
                        InputConnection inputConnection20 = this.mInputConnection.get();
                        if (inputConnection20 != null && isActive()) {
                            inputConnection20.performContextMenuAction(message.arg1);
                        } else {
                            Log.w(TAG, "performContextMenuAction on inactive InputConnection");
                        }
                        break;
                    case 60:
                        InputConnection inputConnection21 = this.mInputConnection.get();
                        if (inputConnection21 != null && isActive()) {
                            inputConnection21.setComposingText((CharSequence) message.obj, message.arg1);
                        } else {
                            Log.w(TAG, "setComposingText on inactive InputConnection");
                        }
                        break;
                    default:
                        Log.w(TAG, "Unhandled message code: " + message.what);
                        break;
                }
                break;
        }
    }

    @Override // com.android.internal.view.b
    public void finishComposingText() {
        dispatchMessage(obtainMessage(65));
    }

    @Override // com.android.internal.view.b
    public void getCursorCapsMode(int i2, int i3, c cVar) {
        dispatchMessage(obtainMessageISC(30, i2, i3, cVar));
    }

    @Override // com.android.internal.view.b
    public void getExtractedText(ExtractedTextRequest extractedTextRequest, int i2, int i3, c cVar) {
        dispatchMessage(obtainMessageIOSC(40, i2, extractedTextRequest, i3, cVar));
    }

    @Override // com.android.internal.view.b
    public void getSelectedText(int i2, int i3, c cVar) {
        dispatchMessage(obtainMessageISC(25, i2, i3, cVar));
    }

    @Override // com.android.internal.view.b
    public void getTextAfterCursor(int i2, int i3, int i4, c cVar) {
        dispatchMessage(obtainMessageIISC(10, i2, i3, i4, cVar));
    }

    @Override // com.android.internal.view.b
    public void getTextBeforeCursor(int i2, int i3, int i4, c cVar) {
        dispatchMessage(obtainMessageIISC(20, i2, i3, i4, cVar));
    }

    public boolean isActive() {
        return true;
    }

    public Message obtainMessage(int i2) {
        return this.mH.obtainMessage(i2);
    }

    public Message obtainMessageII(int i2, int i3, int i4) {
        return this.mH.obtainMessage(i2, i3, i4);
    }

    public Message obtainMessageIISC(int i2, int i3, int i4, int i5, c cVar) {
        b bVar = new b();
        bVar.f1239c = cVar;
        bVar.f1240d = i5;
        return this.mH.obtainMessage(i2, i3, i4, bVar);
    }

    public Message obtainMessageIO(int i2, int i3, Object obj) {
        return this.mH.obtainMessage(i2, i3, 0, obj);
    }

    public Message obtainMessageIOSC(int i2, int i3, Object obj, int i4, c cVar) {
        b bVar = new b();
        bVar.f1237a = obj;
        bVar.f1239c = cVar;
        bVar.f1240d = i4;
        return this.mH.obtainMessage(i2, i3, 0, bVar);
    }

    public Message obtainMessageISC(int i2, int i3, int i4, c cVar) {
        b bVar = new b();
        bVar.f1239c = cVar;
        bVar.f1240d = i4;
        return this.mH.obtainMessage(i2, i3, 0, bVar);
    }

    public Message obtainMessageO(int i2, Object obj) {
        return this.mH.obtainMessage(i2, 0, 0, obj);
    }

    public Message obtainMessageOO(int i2, Object obj, Object obj2) {
        b bVar = new b();
        bVar.f1237a = obj;
        bVar.f1238b = obj2;
        return this.mH.obtainMessage(i2, 0, 0, bVar);
    }

    @Override // com.android.internal.view.b
    public void performContextMenuAction(int i2) {
        dispatchMessage(obtainMessageII(59, i2, 0));
    }

    @Override // com.android.internal.view.b
    public void performEditorAction(int i2) {
        dispatchMessage(obtainMessageII(58, i2, 0));
    }

    @Override // com.android.internal.view.b
    public void performPrivateCommand(String str, Bundle bundle) {
        dispatchMessage(obtainMessageOO(120, str, bundle));
    }

    @Override // com.android.internal.view.b
    public void reportFullscreenMode(boolean z2) {
        dispatchMessage(obtainMessageII(100, z2 ? 1 : 0, 0));
    }

    @Override // com.android.internal.view.b
    public void sendKeyEvent(KeyEvent keyEvent) {
        dispatchMessage(obtainMessageO(70, keyEvent));
    }

    @Override // com.android.internal.view.b
    public void setComposingRegion(int i2, int i3) {
        dispatchMessage(obtainMessageII(63, i2, i3));
    }

    @Override // com.android.internal.view.b
    public void setComposingText(CharSequence charSequence, int i2) {
        dispatchMessage(obtainMessageIO(60, i2, charSequence));
    }

    @Override // com.android.internal.view.b
    public void setSelection(int i2, int i3) {
        dispatchMessage(obtainMessageII(57, i2, i3));
    }
}
