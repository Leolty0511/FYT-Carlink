package android.inputmethodservice;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseArray;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.InputMethodSession;
import com.android.internal.view.g;
import o.b;
import o.f;

/* JADX INFO: loaded from: classes.dex */
class IInputMethodSessionWrapper extends g.a implements b.a {
    private static final int DO_APP_PRIVATE_COMMAND = 100;
    private static final int DO_DISPLAY_COMPLETIONS = 65;
    private static final int DO_FINISH_INPUT = 60;
    private static final int DO_FINISH_SESSION = 110;
    private static final int DO_TOGGLE_SOFT_INPUT = 105;
    private static final int DO_UPDATE_CURSOR = 95;
    private static final int DO_UPDATE_EXTRACTED_TEXT = 67;
    private static final int DO_UPDATE_SELECTION = 90;
    private static final int DO_VIEW_CLICKED = 115;
    private static final String TAG = "InputMethodWrapper";
    public b mCaller;
    public InputChannel mChannel;
    public InputMethodSession mInputMethodSession;
    public ImeInputEventReceiver mReceiver;

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
        public void onInputEvent(InputEvent inputEvent) {
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
        this.mCaller = new b(context, null, this, true);
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

    @Override // com.android.internal.view.g
    public void appPrivateCommand(String str, Bundle bundle) {
        b bVar = this.mCaller;
        bVar.a(bVar.h(100, str, bundle));
    }

    @Override // com.android.internal.view.g
    public void displayCompletions(CompletionInfo[] completionInfoArr) {
        b bVar = this.mCaller;
        bVar.a(bVar.g(65, completionInfoArr));
    }

    @Override // o.b.a
    public void executeMessage(Message message) {
        InputMethodSession inputMethodSession = this.mInputMethodSession;
        if (inputMethodSession == null) {
            return;
        }
        int i2 = message.what;
        if (i2 == 60) {
            inputMethodSession.finishInput();
            return;
        }
        if (i2 == 65) {
            inputMethodSession.displayCompletions((CompletionInfo[]) message.obj);
            return;
        }
        if (i2 == 67) {
            inputMethodSession.updateExtractedText(message.arg1, (ExtractedText) message.obj);
            return;
        }
        if (i2 == 90) {
            f fVar = (f) message.obj;
            inputMethodSession.updateSelection(fVar.f16714h, fVar.f16715i, fVar.f16716j, fVar.f16717k, fVar.f16718l, fVar.f16719m);
            fVar.c();
            return;
        }
        if (i2 == 95) {
            inputMethodSession.updateCursor((Rect) message.obj);
            return;
        }
        if (i2 == 100) {
            f fVar2 = (f) message.obj;
            inputMethodSession.appPrivateCommand((String) fVar2.f16709c, (Bundle) fVar2.f16710d);
            fVar2.c();
        } else {
            if (i2 == 105) {
                inputMethodSession.toggleSoftInput(message.arg1, message.arg2);
                return;
            }
            if (i2 == 110) {
                doFinishSession();
                return;
            }
            if (i2 == 115) {
                inputMethodSession.viewClicked(message.arg1 == 1);
                return;
            }
            Log.w(TAG, "Unhandled message code: " + message.what);
        }
    }

    @Override // com.android.internal.view.g
    public void finishInput() {
        b bVar = this.mCaller;
        bVar.a(bVar.b(60));
    }

    @Override // com.android.internal.view.g
    public void finishSession() {
        b bVar = this.mCaller;
        bVar.a(bVar.b(110));
    }

    public InputMethodSession getInternalInputMethodSession() {
        return this.mInputMethodSession;
    }

    @Override // com.android.internal.view.g
    public void toggleSoftInput(int i2, int i3) {
        b bVar = this.mCaller;
        bVar.a(bVar.d(105, i2, i3));
    }

    @Override // com.android.internal.view.g
    public void updateCursor(Rect rect) {
        b bVar = this.mCaller;
        bVar.a(bVar.g(95, rect));
    }

    @Override // com.android.internal.view.g
    public void updateExtractedText(int i2, ExtractedText extractedText) {
        b bVar = this.mCaller;
        bVar.a(bVar.f(67, i2, extractedText));
    }

    @Override // com.android.internal.view.g
    public void updateSelection(int i2, int i3, int i4, int i5, int i6, int i7) {
        b bVar = this.mCaller;
        bVar.a(bVar.e(90, i2, i3, i4, i5, i6, i7));
    }

    @Override // com.android.internal.view.g
    public void viewClicked(boolean z2) {
        b bVar = this.mCaller;
        bVar.a(bVar.c(115, z2 ? 1 : 0));
    }
}
