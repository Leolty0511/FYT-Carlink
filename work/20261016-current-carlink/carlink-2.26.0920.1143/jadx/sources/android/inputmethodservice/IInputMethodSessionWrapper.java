package android.inputmethodservice;

import android.accessibilityservice.c;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.InputMethodSession;
import com.android.internal.os.HandlerCaller;
import com.android.internal.os.SomeArgs;
import com.android.internal.view.IInputMethodSession;

/* JADX INFO: loaded from: classes.dex */
class IInputMethodSessionWrapper extends IInputMethodSession.Stub implements HandlerCaller.Callback {
    private static final int DO_APP_PRIVATE_COMMAND = 100;
    private static final int DO_DISPLAY_COMPLETIONS = 65;
    private static final int DO_FINISH_INPUT = 60;
    private static final int DO_FINISH_SESSION = 110;
    private static final int DO_TOGGLE_SOFT_INPUT = 105;
    private static final int DO_UPDATE_CURSOR = 95;
    private static final int DO_UPDATE_CURSOR_ANCHOR_INFO = 99;
    private static final int DO_UPDATE_EXTRACTED_TEXT = 67;
    private static final int DO_UPDATE_SELECTION = 90;
    private static final int DO_VIEW_CLICKED = 115;
    private static final String TAG = "InputMethodWrapper";
    HandlerCaller mCaller;
    InputChannel mChannel;
    InputMethodSession mInputMethodSession;
    ImeInputEventReceiver mReceiver;

    public final class ImeInputEventReceiver extends InputEventReceiver implements InputMethodSession.EventCallback {
        private final SparseArray<InputEvent> mPendingEvents;

        public ImeInputEventReceiver(InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
            this.mPendingEvents = new SparseArray<>();
        }

        @Override // android.view.inputmethod.InputMethodSession.EventCallback
        public void finishedEvent(int i2, boolean z2) {
            int iIndexOfKey = this.mPendingEvents.indexOfKey(i2);
            if (iIndexOfKey >= 0) {
                InputEvent inputEventValueAt = this.mPendingEvents.valueAt(iIndexOfKey);
                this.mPendingEvents.removeAt(iIndexOfKey);
                finishInputEvent(inputEventValueAt, z2);
            }
        }

        @Override // android.view.InputEventReceiver
        public void onInputEvent(InputEvent inputEvent, int i2) {
            if (IInputMethodSessionWrapper.this.mInputMethodSession == null) {
                finishInputEvent(inputEvent, false);
                return;
            }
            int sequenceNumber = inputEvent.getSequenceNumber();
            this.mPendingEvents.put(sequenceNumber, inputEvent);
            if (inputEvent instanceof KeyEvent) {
                IInputMethodSessionWrapper.this.mInputMethodSession.dispatchKeyEvent(sequenceNumber, (KeyEvent) inputEvent, this);
                return;
            }
            MotionEvent motionEvent = (MotionEvent) inputEvent;
            if (motionEvent.isFromSource(4)) {
                IInputMethodSessionWrapper.this.mInputMethodSession.dispatchTrackballEvent(sequenceNumber, motionEvent, this);
            } else {
                IInputMethodSessionWrapper.this.mInputMethodSession.dispatchGenericMotionEvent(sequenceNumber, motionEvent, this);
            }
        }
    }

    public IInputMethodSessionWrapper(Context context, InputMethodSession inputMethodSession, InputChannel inputChannel) {
        this.mCaller = new HandlerCaller(context, null, this, true);
        this.mInputMethodSession = inputMethodSession;
        this.mChannel = inputChannel;
        if (inputChannel != null) {
            this.mReceiver = new ImeInputEventReceiver(inputChannel, context.getMainLooper());
        }
    }

    private void doFinishSession() {
        this.mInputMethodSession = null;
        ImeInputEventReceiver imeInputEventReceiver = this.mReceiver;
        if (imeInputEventReceiver != null) {
            imeInputEventReceiver.dispose();
            this.mReceiver = null;
        }
        InputChannel inputChannel = this.mChannel;
        if (inputChannel != null) {
            inputChannel.dispose();
            this.mChannel = null;
        }
    }

    @Override // com.android.internal.view.IInputMethodSession
    public void appPrivateCommand(String str, Bundle bundle) {
        HandlerCaller handlerCaller = this.mCaller;
        handlerCaller.executeOrSendMessage(handlerCaller.obtainMessageOO(100, str, bundle));
    }

    @Override // com.android.internal.view.IInputMethodSession
    public void displayCompletions(CompletionInfo[] completionInfoArr) {
        HandlerCaller handlerCaller = this.mCaller;
        handlerCaller.executeOrSendMessage(handlerCaller.obtainMessageO(65, completionInfoArr));
    }

    @Override // com.android.internal.os.HandlerCaller.Callback
    public void executeMessage(Message message) {
        InputMethodSession inputMethodSession = this.mInputMethodSession;
        if (inputMethodSession == null) {
            int i2 = message.what;
            if (i2 == 90 || i2 == 100) {
                ((SomeArgs) message.obj).recycle();
                return;
            }
            return;
        }
        int i3 = message.what;
        if (i3 == 60) {
            inputMethodSession.finishInput();
            return;
        }
        if (i3 == 65) {
            inputMethodSession.displayCompletions((CompletionInfo[]) message.obj);
            return;
        }
        if (i3 == 67) {
            inputMethodSession.updateExtractedText(message.arg1, (ExtractedText) message.obj);
            return;
        }
        if (i3 == 90) {
            SomeArgs someArgs = (SomeArgs) message.obj;
            inputMethodSession.updateSelection(someArgs.argi1, someArgs.argi2, someArgs.argi3, someArgs.argi4, someArgs.argi5, someArgs.argi6);
            someArgs.recycle();
            return;
        }
        if (i3 == 95) {
            inputMethodSession.updateCursor((Rect) message.obj);
            return;
        }
        if (i3 == 105) {
            inputMethodSession.toggleSoftInput(message.arg1, message.arg2);
            return;
        }
        if (i3 == 110) {
            doFinishSession();
            return;
        }
        if (i3 == 115) {
            inputMethodSession.viewClicked(message.arg1 == 1);
            return;
        }
        if (i3 == 99) {
            inputMethodSession.updateCursorAnchorInfo((CursorAnchorInfo) message.obj);
        } else {
            if (i3 != 100) {
                c.A(new StringBuilder("Unhandled message code: "), message.what, TAG);
                return;
            }
            SomeArgs someArgs2 = (SomeArgs) message.obj;
            inputMethodSession.appPrivateCommand((String) someArgs2.arg1, (Bundle) someArgs2.arg2);
            someArgs2.recycle();
        }
    }

    @Override // com.android.internal.view.IInputMethodSession
    public void finishInput() {
        HandlerCaller handlerCaller = this.mCaller;
        handlerCaller.executeOrSendMessage(handlerCaller.obtainMessage(60));
    }

    @Override // com.android.internal.view.IInputMethodSession
    public void finishSession() {
        HandlerCaller handlerCaller = this.mCaller;
        handlerCaller.executeOrSendMessage(handlerCaller.obtainMessage(110));
    }

    public InputMethodSession getInternalInputMethodSession() {
        return this.mInputMethodSession;
    }

    @Override // com.android.internal.view.IInputMethodSession
    public void toggleSoftInput(int i2, int i3) {
        HandlerCaller handlerCaller = this.mCaller;
        handlerCaller.executeOrSendMessage(handlerCaller.obtainMessageII(105, i2, i3));
    }

    @Override // com.android.internal.view.IInputMethodSession
    public void updateCursor(Rect rect) {
        HandlerCaller handlerCaller = this.mCaller;
        handlerCaller.executeOrSendMessage(handlerCaller.obtainMessageO(95, rect));
    }

    @Override // com.android.internal.view.IInputMethodSession
    public void updateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo) {
        HandlerCaller handlerCaller = this.mCaller;
        handlerCaller.executeOrSendMessage(handlerCaller.obtainMessageO(99, cursorAnchorInfo));
    }

    @Override // com.android.internal.view.IInputMethodSession
    public void updateExtractedText(int i2, ExtractedText extractedText) {
        HandlerCaller handlerCaller = this.mCaller;
        handlerCaller.executeOrSendMessage(handlerCaller.obtainMessageIO(67, i2, extractedText));
    }

    @Override // com.android.internal.view.IInputMethodSession
    public void updateSelection(int i2, int i3, int i4, int i5, int i6, int i7) {
        HandlerCaller handlerCaller = this.mCaller;
        handlerCaller.executeOrSendMessage(handlerCaller.obtainMessageIIIIII(90, i2, i3, i4, i5, i6, i7));
    }

    @Override // com.android.internal.view.IInputMethodSession
    public void viewClicked(boolean z2) {
        HandlerCaller handlerCaller = this.mCaller;
        handlerCaller.executeOrSendMessage(handlerCaller.obtainMessageI(115, z2 ? 1 : 0));
    }
}
