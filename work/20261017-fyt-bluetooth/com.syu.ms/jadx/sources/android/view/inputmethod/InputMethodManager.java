package android.view.inputmethod;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.Trace;
import android.text.style.SuggestionSpan;
import android.util.Log;
import android.util.Pools;
import android.util.PrintWriterPrinter;
import android.util.SparseArray;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventSender;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewRootImpl;
import com.android.internal.view.InputBindResult;
import com.android.internal.view.a;
import com.android.internal.view.b;
import com.android.internal.view.e;
import com.android.internal.view.f;
import com.android.internal.view.g;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class InputMethodManager {
    public static final int CONTROL_START_INITIAL = 256;
    public static final int CONTROL_WINDOW_FIRST = 4;
    public static final int CONTROL_WINDOW_IS_TEXT_EDITOR = 2;
    public static final int CONTROL_WINDOW_VIEW_HAS_FOCUS = 1;
    public static final boolean DEBUG = false;
    public static final int DISPATCH_HANDLED = 1;
    public static final int DISPATCH_IN_PROGRESS = -1;
    public static final int DISPATCH_NOT_HANDLED = 0;
    public static final int HIDE_IMPLICIT_ONLY = 1;
    public static final int HIDE_NOT_ALWAYS = 2;
    public static final long INPUT_METHOD_NOT_RESPONDING_TIMEOUT = 2500;
    public static final int MSG_BIND = 2;
    public static final int MSG_DUMP = 1;
    public static final int MSG_FLUSH_INPUT_EVENT = 7;
    public static final int MSG_SEND_INPUT_EVENT = 5;
    public static final int MSG_SET_ACTIVE = 4;
    public static final int MSG_TIMEOUT_INPUT_EVENT = 6;
    public static final int MSG_UNBIND = 3;
    public static final String PENDING_EVENT_COUNTER = "aq:imm";
    public static final int RESULT_HIDDEN = 3;
    public static final int RESULT_SHOWN = 2;
    public static final int RESULT_UNCHANGED_HIDDEN = 1;
    public static final int RESULT_UNCHANGED_SHOWN = 0;
    public static final int SHOW_FORCED = 2;
    public static final int SHOW_IMPLICIT = 1;
    public static final String TAG = "InputMethodManager";
    public static InputMethodManager sInstance;
    public CompletionInfo[] mCompletions;
    public InputChannel mCurChannel;
    public String mCurId;
    public g mCurMethod;
    public View mCurRootView;
    public ImeInputEventSender mCurSender;
    public EditorInfo mCurrentTextBoxAttribute;
    public int mCursorCandEnd;
    public int mCursorCandStart;
    public int mCursorSelEnd;
    public int mCursorSelStart;
    public final InputConnection mDummyInputConnection;
    public boolean mFullscreenMode;
    public final H mH;
    public final b mIInputContext;
    public final Looper mMainLooper;
    public View mNextServedView;
    public boolean mServedConnecting;
    public InputConnection mServedInputConnection;
    public ControlledInputConnectionWrapper mServedInputConnectionWrapper;
    public View mServedView;
    public final f mService;
    public boolean mActive = false;
    public boolean mHasBeenInactive = true;
    public Rect mTmpCursorRect = new Rect();
    public Rect mCursorRect = new Rect();
    public int mBindSequence = -1;
    public final Pools.Pool<PendingEvent> mPendingEventPool = new Pools.SimplePool(20);
    public final SparseArray<PendingEvent> mPendingEvents = new SparseArray<>(20);
    public final e.a mClient = new e.a() { // from class: android.view.inputmethod.InputMethodManager.1
        @Override // android.os.Binder
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            o.f fVarB = o.f.b();
            fVarB.f16709c = fileDescriptor;
            fVarB.f16710d = printWriter;
            fVarB.f16711e = strArr;
            fVarB.f16712f = countDownLatch;
            H h2 = InputMethodManager.this.mH;
            h2.sendMessage(h2.obtainMessage(1, fVarB));
            try {
                if (countDownLatch.await(5L, TimeUnit.SECONDS)) {
                    return;
                }
                printWriter.println("Timeout waiting for dump");
            } catch (InterruptedException unused) {
                printWriter.println("Interrupted waiting for dump");
            }
        }

        @Override // com.android.internal.view.e
        public void onBindMethod(InputBindResult inputBindResult) {
            H h2 = InputMethodManager.this.mH;
            h2.sendMessage(h2.obtainMessage(2, inputBindResult));
        }

        @Override // com.android.internal.view.e
        public void onUnbindMethod(int i2) {
            H h2 = InputMethodManager.this.mH;
            h2.sendMessage(h2.obtainMessage(3, i2, 0));
        }

        @Override // com.android.internal.view.e
        public void setActive(boolean z2) {
            H h2 = InputMethodManager.this.mH;
            h2.sendMessage(h2.obtainMessage(4, z2 ? 1 : 0, 0));
        }

        @Override // com.android.internal.view.e
        public void setUsingInputMethod(boolean z2) {
        }
    };

    public static class ControlledInputConnectionWrapper extends a {
        private boolean mActive;
        private final InputMethodManager mParentInputMethodManager;

        public ControlledInputConnectionWrapper(Looper looper, InputConnection inputConnection, InputMethodManager inputMethodManager) {
            super(looper, inputConnection);
            this.mParentInputMethodManager = inputMethodManager;
            this.mActive = true;
        }

        public void deactivate() {
            this.mActive = false;
        }

        @Override // com.android.internal.view.a
        public boolean isActive() {
            return this.mParentInputMethodManager.mActive && this.mActive;
        }
    }

    public interface FinishedInputEventCallback {
        void onFinishedInputEvent(Object obj, boolean z2);
    }

    public class H extends Handler {
        public H(Looper looper) {
            super(looper, null, true);
        }

        /* JADX WARN: Code duplicated, block: B:45:0x0085  */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z2 = true;
            switch (message.what) {
                case 1:
                    o.f fVar = (o.f) message.obj;
                    try {
                        InputMethodManager.this.doDump((FileDescriptor) fVar.f16709c, (PrintWriter) fVar.f16710d, (String[]) fVar.f16711e);
                        break;
                    } catch (RuntimeException e2) {
                        ((PrintWriter) fVar.f16710d).println("Exception: " + e2);
                    }
                    synchronized (fVar.f16712f) {
                        ((CountDownLatch) fVar.f16712f).countDown();
                        break;
                    }
                    fVar.c();
                    return;
                case 2:
                    InputBindResult inputBindResult = (InputBindResult) message.obj;
                    synchronized (InputMethodManager.this.mH) {
                        InputMethodManager inputMethodManager = InputMethodManager.this;
                        int i2 = inputMethodManager.mBindSequence;
                        if (i2 >= 0 && i2 == inputBindResult.f1235d) {
                            inputMethodManager.setInputChannelLocked(inputBindResult.f1233b);
                            InputMethodManager inputMethodManager2 = InputMethodManager.this;
                            inputMethodManager2.mCurMethod = inputBindResult.f1232a;
                            inputMethodManager2.mCurId = inputBindResult.f1234c;
                            inputMethodManager2.mBindSequence = inputBindResult.f1235d;
                            inputMethodManager2.startInputInner(null, 0, 0, 0);
                            return;
                        }
                        Log.w(InputMethodManager.TAG, "Ignoring onBind: cur seq=" + InputMethodManager.this.mBindSequence + ", given seq=" + inputBindResult.f1235d);
                        InputChannel inputChannel = inputBindResult.f1233b;
                        if (inputChannel != null && inputChannel != InputMethodManager.this.mCurChannel) {
                            inputChannel.dispose();
                        }
                        return;
                    }
                case 3:
                    int i3 = message.arg1;
                    synchronized (InputMethodManager.this.mH) {
                        InputMethodManager inputMethodManager3 = InputMethodManager.this;
                        if (inputMethodManager3.mBindSequence == i3) {
                            inputMethodManager3.clearBindingLocked();
                            View view = InputMethodManager.this.mServedView;
                            if (view != null && view.isFocused()) {
                                InputMethodManager.this.mServedConnecting = true;
                            }
                            if (!InputMethodManager.this.mActive) {
                                z2 = false;
                            }
                        } else {
                            z2 = false;
                        }
                        break;
                    }
                    if (z2) {
                        InputMethodManager.this.startInputInner(null, 0, 0, 0);
                        return;
                    }
                    return;
                case 4:
                    boolean z3 = message.arg1 != 0;
                    synchronized (InputMethodManager.this.mH) {
                        InputMethodManager inputMethodManager4 = InputMethodManager.this;
                        inputMethodManager4.mActive = z3;
                        inputMethodManager4.mFullscreenMode = false;
                        if (!z3) {
                            inputMethodManager4.mHasBeenInactive = true;
                            try {
                                inputMethodManager4.mIInputContext.finishComposingText();
                                break;
                            } catch (RemoteException unused) {
                            }
                            View view2 = InputMethodManager.this.mServedView;
                            if (view2 != null && view2.hasWindowFocus()) {
                                InputMethodManager inputMethodManager5 = InputMethodManager.this;
                                if (inputMethodManager5.checkFocusNoStartInput(inputMethodManager5.mHasBeenInactive, false)) {
                                    InputMethodManager.this.startInputInner(null, 0, 0, 0);
                                }
                            }
                        }
                        break;
                    }
                    return;
                case 5:
                    InputMethodManager.this.sendInputEventAndReportResultOnMainLooper((PendingEvent) message.obj);
                    return;
                case 6:
                    InputMethodManager.this.finishedInputEvent(message.arg1, false, true);
                    return;
                case 7:
                    InputMethodManager.this.finishedInputEvent(message.arg1, false, false);
                    return;
                default:
                    return;
            }
        }
    }

    public final class ImeInputEventSender extends InputEventSender {
        public ImeInputEventSender(InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
        }

        @Override // android.view.InputEventSender
        public void onInputEventFinished(int i2, boolean z2) {
            InputMethodManager.this.finishedInputEvent(i2, z2, false);
        }
    }

    public final class PendingEvent implements Runnable {
        public FinishedInputEventCallback mCallback;
        public InputEvent mEvent;
        public boolean mHandled;
        public Handler mHandler;
        public String mInputMethodId;
        public Object mToken;

        private PendingEvent() {
        }

        public void recycle() {
            this.mEvent = null;
            this.mToken = null;
            this.mInputMethodId = null;
            this.mCallback = null;
            this.mHandler = null;
            this.mHandled = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mCallback.onFinishedInputEvent(this.mToken, this.mHandled);
            synchronized (InputMethodManager.this.mH) {
                InputMethodManager.this.recyclePendingEventLocked(this);
            }
        }
    }

    public InputMethodManager(f fVar, Looper looper) {
        BaseInputConnection baseInputConnection = new BaseInputConnection(this, false);
        this.mDummyInputConnection = baseInputConnection;
        this.mService = fVar;
        this.mMainLooper = looper;
        this.mH = new H(looper);
        this.mIInputContext = new ControlledInputConnectionWrapper(looper, baseInputConnection, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkFocusNoStartInput(boolean z2, boolean z3) {
        if (this.mServedView == this.mNextServedView && !z2) {
            return false;
        }
        synchronized (this.mH) {
            View view = this.mServedView;
            View view2 = this.mNextServedView;
            if (view == view2 && !z2) {
                return false;
            }
            if (view2 == null) {
                finishInputLocked();
                closeCurrentInput();
                return false;
            }
            InputConnection inputConnection = this.mServedInputConnection;
            this.mServedView = view2;
            this.mCurrentTextBoxAttribute = null;
            this.mCompletions = null;
            this.mServedConnecting = true;
            if (z3 && inputConnection != null) {
                inputConnection.finishComposingText();
            }
            return true;
        }
    }

    private void flushPendingEventsLocked() {
        this.mH.removeMessages(7);
        int size = this.mPendingEvents.size();
        for (int i2 = 0; i2 < size; i2++) {
            Message messageObtainMessage = this.mH.obtainMessage(7, this.mPendingEvents.keyAt(i2), 0);
            messageObtainMessage.setAsynchronous(true);
            messageObtainMessage.sendToTarget();
        }
    }

    public static InputMethodManager getInstance() {
        InputMethodManager inputMethodManager;
        synchronized (InputMethodManager.class) {
            if (sInstance == null) {
                sInstance = new InputMethodManager(f.a.J2(ServiceManager.getService(Context.INPUT_METHOD_SERVICE)), Looper.getMainLooper());
            }
            inputMethodManager = sInstance;
        }
        return inputMethodManager;
    }

    private void notifyInputConnectionFinished() {
        ViewRootImpl viewRootImpl;
        View view = this.mServedView;
        if (view == null || this.mServedInputConnection == null || (viewRootImpl = view.getViewRootImpl()) == null) {
            return;
        }
        viewRootImpl.dispatchFinishInputConnection(this.mServedInputConnection);
    }

    private PendingEvent obtainPendingEventLocked(InputEvent inputEvent, Object obj, String str, FinishedInputEventCallback finishedInputEventCallback, Handler handler) {
        PendingEvent pendingEventAcquire = this.mPendingEventPool.acquire();
        if (pendingEventAcquire == null) {
            pendingEventAcquire = new PendingEvent();
        }
        pendingEventAcquire.mEvent = inputEvent;
        pendingEventAcquire.mToken = obj;
        pendingEventAcquire.mInputMethodId = str;
        pendingEventAcquire.mCallback = finishedInputEventCallback;
        pendingEventAcquire.mHandler = handler;
        return pendingEventAcquire;
    }

    public static InputMethodManager peekInstance() {
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recyclePendingEventLocked(PendingEvent pendingEvent) {
        pendingEvent.recycle();
        this.mPendingEventPool.release(pendingEvent);
    }

    public static void scheduleCheckFocusLocked(View view) {
        ViewRootImpl viewRootImpl = view.getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.dispatchCheckFocus();
        }
    }

    private void showInputMethodPickerLocked() {
        try {
            this.mService.p(this.mClient);
        } catch (RemoteException e2) {
            Log.w(TAG, "IME died: " + this.mCurId, e2);
        }
    }

    public void checkFocus() {
        if (checkFocusNoStartInput(false, true)) {
            startInputInner(null, 0, 0, 0);
        }
    }

    public void clearBindingLocked() {
        clearConnectionLocked();
        setInputChannelLocked(null);
        this.mBindSequence = -1;
        this.mCurId = null;
        this.mCurMethod = null;
    }

    public void clearConnectionLocked() {
        this.mCurrentTextBoxAttribute = null;
        this.mServedInputConnection = null;
        ControlledInputConnectionWrapper controlledInputConnectionWrapper = this.mServedInputConnectionWrapper;
        if (controlledInputConnectionWrapper != null) {
            controlledInputConnectionWrapper.deactivate();
            this.mServedInputConnectionWrapper = null;
        }
    }

    public void closeCurrentInput() {
        try {
            this.mService.C(this.mClient, 2, null);
        } catch (RemoteException unused) {
        }
    }

    public int dispatchInputEvent(InputEvent inputEvent, Object obj, FinishedInputEventCallback finishedInputEventCallback, Handler handler) {
        synchronized (this.mH) {
            if (this.mCurMethod == null) {
                return 0;
            }
            if (inputEvent instanceof KeyEvent) {
                KeyEvent keyEvent = (KeyEvent) inputEvent;
                if (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 63 && keyEvent.getRepeatCount() == 0) {
                    showInputMethodPickerLocked();
                    return 1;
                }
            }
            PendingEvent pendingEventObtainPendingEventLocked = obtainPendingEventLocked(inputEvent, obj, this.mCurId, finishedInputEventCallback, handler);
            if (this.mMainLooper.isCurrentThread()) {
                return sendInputEventOnMainLooperLocked(pendingEventObtainPendingEventLocked);
            }
            Message messageObtainMessage = this.mH.obtainMessage(5, pendingEventObtainPendingEventLocked);
            messageObtainMessage.setAsynchronous(true);
            this.mH.sendMessage(messageObtainMessage);
            return -1;
        }
    }

    public void displayCompletions(View view, CompletionInfo[] completionInfoArr) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if (view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) {
                this.mCompletions = completionInfoArr;
                g gVar = this.mCurMethod;
                if (gVar != null) {
                    try {
                        gVar.displayCompletions(completionInfoArr);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }
    }

    public void doDump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        PrintWriterPrinter printWriterPrinter = new PrintWriterPrinter(printWriter);
        printWriterPrinter.println("Input method client state for " + this + ":");
        StringBuilder sb = new StringBuilder();
        sb.append("  mService=");
        sb.append(this.mService);
        printWriterPrinter.println(sb.toString());
        printWriterPrinter.println("  mMainLooper=" + this.mMainLooper);
        printWriterPrinter.println("  mIInputContext=" + this.mIInputContext);
        printWriterPrinter.println("  mActive=" + this.mActive + " mHasBeenInactive=" + this.mHasBeenInactive + " mBindSequence=" + this.mBindSequence + " mCurId=" + this.mCurId);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  mCurMethod=");
        sb2.append(this.mCurMethod);
        printWriterPrinter.println(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("  mCurRootView=");
        sb3.append(this.mCurRootView);
        printWriterPrinter.println(sb3.toString());
        printWriterPrinter.println("  mServedView=" + this.mServedView);
        printWriterPrinter.println("  mNextServedView=" + this.mNextServedView);
        printWriterPrinter.println("  mServedConnecting=" + this.mServedConnecting);
        if (this.mCurrentTextBoxAttribute != null) {
            printWriterPrinter.println("  mCurrentTextBoxAttribute:");
            this.mCurrentTextBoxAttribute.dump(printWriterPrinter, "    ");
        } else {
            printWriterPrinter.println("  mCurrentTextBoxAttribute: null");
        }
        printWriterPrinter.println("  mServedInputConnection=" + this.mServedInputConnection);
        printWriterPrinter.println("  mCompletions=" + this.mCompletions);
        printWriterPrinter.println("  mCursorRect=" + this.mCursorRect);
        printWriterPrinter.println("  mCursorSelStart=" + this.mCursorSelStart + " mCursorSelEnd=" + this.mCursorSelEnd + " mCursorCandStart=" + this.mCursorCandStart + " mCursorCandEnd=" + this.mCursorCandEnd);
    }

    public void finishInputLocked() {
        this.mCurRootView = null;
        this.mNextServedView = null;
        if (this.mServedView != null) {
            if (this.mCurrentTextBoxAttribute != null) {
                try {
                    this.mService.b2(this.mClient);
                } catch (RemoteException unused) {
                }
            }
            notifyInputConnectionFinished();
            this.mServedView = null;
            this.mCompletions = null;
            this.mServedConnecting = false;
            clearConnectionLocked();
        }
    }

    public void finishedInputEvent(int i2, boolean z2, boolean z3) {
        synchronized (this.mH) {
            int iIndexOfKey = this.mPendingEvents.indexOfKey(i2);
            if (iIndexOfKey < 0) {
                return;
            }
            PendingEvent pendingEventValueAt = this.mPendingEvents.valueAt(iIndexOfKey);
            this.mPendingEvents.removeAt(iIndexOfKey);
            Trace.traceCounter(4L, PENDING_EVENT_COUNTER, this.mPendingEvents.size());
            if (z3) {
                Log.w(TAG, "Timeout waiting for IME to handle input event after 2500 ms: " + pendingEventValueAt.mInputMethodId);
            } else {
                this.mH.removeMessages(6, pendingEventValueAt);
            }
            invokeFinishedInputEventCallback(pendingEventValueAt, z2);
        }
    }

    public void focusIn(View view) {
        synchronized (this.mH) {
            focusInLocked(view);
        }
    }

    public void focusInLocked(View view) {
        if (this.mCurRootView != view.getRootView()) {
            return;
        }
        this.mNextServedView = view;
        scheduleCheckFocusLocked(view);
    }

    public void focusOut(View view) {
        synchronized (this.mH) {
        }
    }

    public e getClient() {
        return this.mClient;
    }

    public InputMethodSubtype getCurrentInputMethodSubtype() {
        InputMethodSubtype inputMethodSubtypeD2;
        synchronized (this.mH) {
            try {
                try {
                    inputMethodSubtypeD2 = this.mService.d2();
                } catch (RemoteException e2) {
                    Log.w(TAG, "IME died: " + this.mCurId, e2);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return inputMethodSubtypeD2;
    }

    public List<InputMethodInfo> getEnabledInputMethodList() {
        try {
            return this.mService.c0();
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public List<InputMethodSubtype> getEnabledInputMethodSubtypeList(InputMethodInfo inputMethodInfo, boolean z2) {
        try {
            return this.mService.c2(inputMethodInfo == null ? null : inputMethodInfo.getId(), z2);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public b getInputContext() {
        return this.mIInputContext;
    }

    public List<InputMethodInfo> getInputMethodList() {
        try {
            return this.mService.n2();
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public InputMethodSubtype getLastInputMethodSubtype() {
        InputMethodSubtype inputMethodSubtypeD0;
        synchronized (this.mH) {
            try {
                try {
                    inputMethodSubtypeD0 = this.mService.D0();
                } catch (RemoteException e2) {
                    Log.w(TAG, "IME died: " + this.mCurId, e2);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return inputMethodSubtypeD0;
    }

    public Map<InputMethodInfo, List<InputMethodSubtype>> getShortcutInputMethodsAndSubtypes() {
        HashMap map;
        synchronized (this.mH) {
            map = new HashMap();
            try {
                List listL1 = this.mService.l1();
                ArrayList arrayList = null;
                int size = listL1.size();
                if (size > 0) {
                    for (int i2 = 0; i2 < size; i2++) {
                        Object obj = listL1.get(i2);
                        if (obj instanceof InputMethodInfo) {
                            if (map.containsKey(obj)) {
                                Log.e(TAG, "IMI list already contains the same InputMethod.");
                                break;
                            }
                            arrayList = new ArrayList();
                            map.put((InputMethodInfo) obj, arrayList);
                        } else if (arrayList != null && (obj instanceof InputMethodSubtype)) {
                            arrayList.add((InputMethodSubtype) obj);
                        }
                    }
                }
            } catch (RemoteException e2) {
                Log.w(TAG, "IME died: " + this.mCurId, e2);
            }
        }
        return map;
    }

    public void hideSoftInputFromInputMethod(IBinder iBinder, int i2) {
        try {
            this.mService.w(iBinder, i2);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean hideSoftInputFromWindow(IBinder iBinder, int i2) {
        return hideSoftInputFromWindow(iBinder, i2, null);
    }

    public void hideStatusIcon(IBinder iBinder) {
        try {
            this.mService.w0(iBinder, null, 0);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void invokeFinishedInputEventCallback(PendingEvent pendingEvent, boolean z2) {
        pendingEvent.mHandled = z2;
        if (pendingEvent.mHandler.getLooper().isCurrentThread()) {
            pendingEvent.run();
            return;
        }
        Message messageObtain = Message.obtain(pendingEvent.mHandler, pendingEvent);
        messageObtain.setAsynchronous(true);
        messageObtain.sendToTarget();
    }

    public boolean isAcceptingText() {
        checkFocus();
        return this.mServedInputConnection != null;
    }

    public boolean isActive(View view) {
        boolean z2;
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            z2 = (view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) && this.mCurrentTextBoxAttribute != null;
        }
        return z2;
    }

    public boolean isFullscreenMode() {
        return this.mFullscreenMode;
    }

    public boolean isWatchingCursor(View view) {
        return false;
    }

    public void notifySuggestionPicked(SuggestionSpan suggestionSpan, String str, int i2) {
        try {
            this.mService.A0(suggestionSpan, str, i2);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void onWindowFocus(View view, View view2, int i2, boolean z2, int i3) {
        int i4;
        boolean z3;
        synchronized (this.mH) {
            i4 = 0;
            if (this.mHasBeenInactive) {
                this.mHasBeenInactive = false;
                z3 = true;
            } else {
                z3 = false;
            }
            focusInLocked(view2 != null ? view2 : view);
        }
        if (view2 != null) {
            i4 = view2.onCheckIsTextEditor() ? 3 : 1;
        }
        if (z2) {
            i4 |= 4;
        }
        int i5 = i4;
        if (checkFocusNoStartInput(z3, true) && startInputInner(view.getWindowToken(), i5, i2, i3)) {
            return;
        }
        synchronized (this.mH) {
            try {
                this.mService.J(this.mClient, view.getWindowToken(), i5, i2, i3, null, null);
            } catch (RemoteException unused) {
            }
        }
    }

    public void registerSuggestionSpansForNotification(SuggestionSpan[] suggestionSpanArr) {
        try {
            this.mService.k0(suggestionSpanArr);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void reportFinishInputConnection(InputConnection inputConnection) {
        if (this.mServedInputConnection != inputConnection) {
            inputConnection.finishComposingText();
            if (inputConnection instanceof BaseInputConnection) {
                ((BaseInputConnection) inputConnection).reportFinish();
            }
        }
    }

    public void restartInput(View view) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if (view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) {
                this.mServedConnecting = true;
                startInputInner(null, 0, 0, 0);
            }
        }
    }

    public void sendAppPrivateCommand(View view, String str, Bundle bundle) {
        g gVar;
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if ((view2 != view && (view2 == null || !view2.checkInputConnectionProxy(view))) || this.mCurrentTextBoxAttribute == null || (gVar = this.mCurMethod) == null) {
                return;
            }
            try {
                gVar.appPrivateCommand(str, bundle);
            } catch (RemoteException e2) {
                Log.w(TAG, "IME died: " + this.mCurId, e2);
            }
        }
    }

    public void sendInputEventAndReportResultOnMainLooper(PendingEvent pendingEvent) {
        synchronized (this.mH) {
            int iSendInputEventOnMainLooperLocked = sendInputEventOnMainLooperLocked(pendingEvent);
            if (iSendInputEventOnMainLooperLocked == -1) {
                return;
            }
            boolean z2 = true;
            if (iSendInputEventOnMainLooperLocked != 1) {
                z2 = false;
            }
            invokeFinishedInputEventCallback(pendingEvent, z2);
        }
    }

    public int sendInputEventOnMainLooperLocked(PendingEvent pendingEvent) {
        InputChannel inputChannel = this.mCurChannel;
        if (inputChannel == null) {
            return 0;
        }
        if (this.mCurSender == null) {
            this.mCurSender = new ImeInputEventSender(inputChannel, this.mH.getLooper());
        }
        InputEvent inputEvent = pendingEvent.mEvent;
        int sequenceNumber = inputEvent.getSequenceNumber();
        if (this.mCurSender.sendInputEvent(sequenceNumber, inputEvent)) {
            this.mPendingEvents.put(sequenceNumber, pendingEvent);
            Trace.traceCounter(4L, PENDING_EVENT_COUNTER, this.mPendingEvents.size());
            Message messageObtainMessage = this.mH.obtainMessage(6, pendingEvent);
            messageObtainMessage.setAsynchronous(true);
            this.mH.sendMessageDelayed(messageObtainMessage, INPUT_METHOD_NOT_RESPONDING_TIMEOUT);
            return -1;
        }
        Log.w(TAG, "Unable to send input event to IME: " + this.mCurId + " dropping: " + inputEvent);
        return 0;
    }

    public void setAdditionalInputMethodSubtypes(String str, InputMethodSubtype[] inputMethodSubtypeArr) {
        synchronized (this.mH) {
            try {
                this.mService.R(str, inputMethodSubtypeArr);
            } catch (RemoteException e2) {
                Log.w(TAG, "IME died: " + this.mCurId, e2);
            }
        }
    }

    public boolean setCurrentInputMethodSubtype(InputMethodSubtype inputMethodSubtype) {
        boolean zQ;
        synchronized (this.mH) {
            try {
                try {
                    zQ = this.mService.Q(inputMethodSubtype);
                } catch (RemoteException e2) {
                    Log.w(TAG, "IME died: " + this.mCurId, e2);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zQ;
    }

    public void setFullscreenMode(boolean z2) {
        this.mFullscreenMode = z2;
    }

    public void setImeWindowStatus(IBinder iBinder, int i2, int i3) {
        try {
            this.mService.R1(iBinder, i2, i3);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void setInputChannelLocked(InputChannel inputChannel) {
        if (this.mCurChannel != inputChannel) {
            if (this.mCurSender != null) {
                flushPendingEventsLocked();
                this.mCurSender.dispose();
                this.mCurSender = null;
            }
            InputChannel inputChannel2 = this.mCurChannel;
            if (inputChannel2 != null) {
                inputChannel2.dispose();
            }
            this.mCurChannel = inputChannel;
        }
    }

    public void setInputMethod(IBinder iBinder, String str) {
        try {
            this.mService.A2(iBinder, str);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void setInputMethodAndSubtype(IBinder iBinder, String str, InputMethodSubtype inputMethodSubtype) {
        try {
            this.mService.O0(iBinder, str, inputMethodSubtype);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean shouldOfferSwitchingToNextInputMethod(IBinder iBinder) {
        boolean zV0;
        synchronized (this.mH) {
            try {
                try {
                    zV0 = this.mService.v0(iBinder);
                } catch (RemoteException e2) {
                    Log.w(TAG, "IME died: " + this.mCurId, e2);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zV0;
    }

    public void showInputMethodAndSubtypeEnabler(String str) {
        synchronized (this.mH) {
            try {
                this.mService.Y(this.mClient, str);
            } catch (RemoteException e2) {
                Log.w(TAG, "IME died: " + this.mCurId, e2);
            }
        }
    }

    public void showInputMethodPicker() {
        synchronized (this.mH) {
            showInputMethodPickerLocked();
        }
    }

    public boolean showSoftInput(View view, int i2) {
        return showSoftInput(view, i2, null);
    }

    public void showSoftInputFromInputMethod(IBinder iBinder, int i2) {
        try {
            this.mService.m0(iBinder, i2);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void showSoftInputUnchecked(int i2, ResultReceiver resultReceiver) {
        try {
            this.mService.U0(this.mClient, i2, resultReceiver);
        } catch (RemoteException unused) {
        }
    }

    public void showStatusIcon(IBinder iBinder, String str, int i2) {
        try {
            this.mService.w0(iBinder, str, i2);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void startGettingWindowFocus(View view) {
        synchronized (this.mH) {
            this.mCurRootView = view;
        }
    }

    public boolean startInputInner(IBinder iBinder, int i2, int i3, int i4) {
        ControlledInputConnectionWrapper controlledInputConnectionWrapper;
        CompletionInfo[] completionInfoArr;
        synchronized (this.mH) {
            View view = this.mServedView;
            if (view == null) {
                return false;
            }
            Handler handler = view.getHandler();
            if (handler == null) {
                closeCurrentInput();
                return false;
            }
            if (handler.getLooper() != Looper.myLooper()) {
                handler.post(new Runnable() { // from class: android.view.inputmethod.InputMethodManager.2
                    @Override // java.lang.Runnable
                    public void run() {
                        InputMethodManager.this.startInputInner(null, 0, 0, 0);
                    }
                });
                return false;
            }
            EditorInfo editorInfo = new EditorInfo();
            editorInfo.packageName = view.getContext().getPackageName();
            editorInfo.fieldId = view.getId();
            InputConnection inputConnectionOnCreateInputConnection = view.onCreateInputConnection(editorInfo);
            synchronized (this.mH) {
                if (this.mServedView == view && this.mServedConnecting) {
                    int i5 = this.mCurrentTextBoxAttribute == null ? i2 | 256 : i2;
                    this.mCurrentTextBoxAttribute = editorInfo;
                    this.mServedConnecting = false;
                    notifyInputConnectionFinished();
                    this.mServedInputConnection = inputConnectionOnCreateInputConnection;
                    if (inputConnectionOnCreateInputConnection != null) {
                        this.mCursorSelStart = editorInfo.initialSelStart;
                        this.mCursorSelEnd = editorInfo.initialSelEnd;
                        this.mCursorCandStart = -1;
                        this.mCursorCandEnd = -1;
                        this.mCursorRect.setEmpty();
                        controlledInputConnectionWrapper = new ControlledInputConnectionWrapper(handler.getLooper(), inputConnectionOnCreateInputConnection, this);
                    } else {
                        controlledInputConnectionWrapper = null;
                    }
                    ControlledInputConnectionWrapper controlledInputConnectionWrapper2 = controlledInputConnectionWrapper;
                    ControlledInputConnectionWrapper controlledInputConnectionWrapper3 = this.mServedInputConnectionWrapper;
                    if (controlledInputConnectionWrapper3 != null) {
                        controlledInputConnectionWrapper3.deactivate();
                    }
                    this.mServedInputConnectionWrapper = controlledInputConnectionWrapper2;
                    try {
                        InputBindResult inputBindResultJ = iBinder != null ? this.mService.J(this.mClient, iBinder, i5, i3, i4, editorInfo, controlledInputConnectionWrapper2) : this.mService.S1(this.mClient, controlledInputConnectionWrapper2, editorInfo, i5);
                        if (inputBindResultJ != null) {
                            if (inputBindResultJ.f1234c != null) {
                                setInputChannelLocked(inputBindResultJ.f1233b);
                                this.mBindSequence = inputBindResultJ.f1235d;
                                this.mCurMethod = inputBindResultJ.f1232a;
                                this.mCurId = inputBindResultJ.f1234c;
                            } else {
                                InputChannel inputChannel = inputBindResultJ.f1233b;
                                if (inputChannel != null && inputChannel != this.mCurChannel) {
                                    inputChannel.dispose();
                                }
                                if (this.mCurMethod == null) {
                                    return true;
                                }
                            }
                        }
                        g gVar = this.mCurMethod;
                        if (gVar != null && (completionInfoArr = this.mCompletions) != null) {
                            try {
                                gVar.displayCompletions(completionInfoArr);
                            } catch (RemoteException unused) {
                            }
                        }
                    } catch (RemoteException e2) {
                        Log.w(TAG, "IME died: " + this.mCurId, e2);
                    }
                    return true;
                }
                return false;
            }
        }
    }

    public boolean switchToLastInputMethod(IBinder iBinder) {
        boolean zA1;
        synchronized (this.mH) {
            try {
                try {
                    zA1 = this.mService.A1(iBinder);
                } catch (RemoteException e2) {
                    Log.w(TAG, "IME died: " + this.mCurId, e2);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zA1;
    }

    public boolean switchToNextInputMethod(IBinder iBinder, boolean z2) {
        boolean zR0;
        synchronized (this.mH) {
            try {
                try {
                    zR0 = this.mService.R0(iBinder, z2);
                } catch (RemoteException e2) {
                    Log.w(TAG, "IME died: " + this.mCurId, e2);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zR0;
    }

    public void toggleSoftInput(int i2, int i3) {
        g gVar = this.mCurMethod;
        if (gVar != null) {
            try {
                gVar.toggleSoftInput(i2, i3);
            } catch (RemoteException unused) {
            }
        }
    }

    public void toggleSoftInputFromWindow(IBinder iBinder, int i2, int i3) {
        synchronized (this.mH) {
            View view = this.mServedView;
            if (view != null && view.getWindowToken() == iBinder) {
                g gVar = this.mCurMethod;
                if (gVar != null) {
                    try {
                        gVar.toggleSoftInput(i2, i3);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }
    }

    public void updateCursor(View view, int i2, int i3, int i4, int i5) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if ((view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) && this.mCurrentTextBoxAttribute != null && this.mCurMethod != null) {
                this.mTmpCursorRect.set(i2, i3, i4, i5);
                if (!this.mCursorRect.equals(this.mTmpCursorRect)) {
                    try {
                        this.mCurMethod.updateCursor(this.mTmpCursorRect);
                        this.mCursorRect.set(this.mTmpCursorRect);
                    } catch (RemoteException e2) {
                        Log.w(TAG, "IME died: " + this.mCurId, e2);
                    }
                }
            }
        }
    }

    public void updateExtractedText(View view, int i2, ExtractedText extractedText) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if (view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) {
                g gVar = this.mCurMethod;
                if (gVar != null) {
                    try {
                        gVar.updateExtractedText(i2, extractedText);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }
    }

    public void updateSelection(View view, int i2, int i3, int i4, int i5) {
        g gVar;
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if ((view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) && this.mCurrentTextBoxAttribute != null && (gVar = this.mCurMethod) != null) {
                int i6 = this.mCursorSelStart;
                if (i6 != i2 || this.mCursorSelEnd != i3 || this.mCursorCandStart != i4 || this.mCursorCandEnd != i5) {
                    try {
                        int i7 = this.mCursorSelEnd;
                        this.mCursorSelStart = i2;
                        this.mCursorSelEnd = i3;
                        this.mCursorCandStart = i4;
                        this.mCursorCandEnd = i5;
                        gVar.updateSelection(i6, i7, i2, i3, i4, i5);
                    } catch (RemoteException e2) {
                        Log.w(TAG, "IME died: " + this.mCurId, e2);
                    }
                }
            }
        }
    }

    public void viewClicked(View view) {
        g gVar;
        boolean z2 = this.mServedView != this.mNextServedView;
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if ((view2 != view && (view2 == null || !view2.checkInputConnectionProxy(view))) || this.mCurrentTextBoxAttribute == null || (gVar = this.mCurMethod) == null) {
                return;
            }
            try {
                gVar.viewClicked(z2);
            } catch (RemoteException e2) {
                Log.w(TAG, "IME died: " + this.mCurId, e2);
            }
        }
    }

    public void windowDismissed(IBinder iBinder) {
        checkFocus();
        synchronized (this.mH) {
            View view = this.mServedView;
            if (view != null && view.getWindowToken() == iBinder) {
                finishInputLocked();
            }
        }
    }

    public boolean hideSoftInputFromWindow(IBinder iBinder, int i2, ResultReceiver resultReceiver) {
        checkFocus();
        synchronized (this.mH) {
            View view = this.mServedView;
            if (view == null || view.getWindowToken() != iBinder) {
                return false;
            }
            try {
                return this.mService.C(this.mClient, i2, resultReceiver);
            } catch (RemoteException unused) {
                return false;
            }
        }
    }

    public boolean showSoftInput(View view, int i2, ResultReceiver resultReceiver) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if (view2 != view && (view2 == null || !view2.checkInputConnectionProxy(view))) {
                return false;
            }
            try {
                return this.mService.U0(this.mClient, i2, resultReceiver);
            } catch (RemoteException unused) {
                return false;
            }
        }
    }

    public boolean isActive() {
        boolean z2;
        checkFocus();
        synchronized (this.mH) {
            z2 = (this.mServedView == null || this.mCurrentTextBoxAttribute == null) ? false : true;
        }
        return z2;
    }
}
