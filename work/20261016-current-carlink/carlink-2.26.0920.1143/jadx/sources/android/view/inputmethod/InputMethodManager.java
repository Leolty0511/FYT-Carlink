package android.view.inputmethod;

import android.accessibilityservice.c;
import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.Trace;
import android.provider.SettingsStringUtil;
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
import com.android.internal.inputmethod.IInputContentUriToken;
import com.android.internal.os.SomeArgs;
import com.android.internal.view.IInputConnectionWrapper;
import com.android.internal.view.IInputContext;
import com.android.internal.view.IInputMethodClient;
import com.android.internal.view.IInputMethodManager;
import com.android.internal.view.IInputMethodSession;
import com.android.internal.view.InputBindResult;
import com.android.internal.view.InputMethodClient;
import com.android.internal.widget.EditableInputConnection;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class InputMethodManager {
    public static final int CONTROL_START_INITIAL = 256;
    public static final int CONTROL_WINDOW_FIRST = 4;
    public static final int CONTROL_WINDOW_IS_TEXT_EDITOR = 2;
    public static final int CONTROL_WINDOW_VIEW_HAS_FOCUS = 1;
    static boolean DEBUG = false;
    public static final int DISPATCH_HANDLED = 1;
    public static final int DISPATCH_IN_PROGRESS = -1;
    public static final int DISPATCH_NOT_HANDLED = 0;
    public static final int HIDE_IMPLICIT_ONLY = 1;
    public static final int HIDE_NOT_ALWAYS = 2;
    static final long INPUT_METHOD_NOT_RESPONDING_TIMEOUT = 2500;
    static final int MSG_BIND = 2;
    static final int MSG_DUMP = 1;
    static final int MSG_FLUSH_INPUT_EVENT = 7;
    static final int MSG_REPORT_FULLSCREEN_MODE = 10;
    static final int MSG_SEND_INPUT_EVENT = 5;
    static final int MSG_SET_ACTIVE = 4;
    static final int MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER = 9;
    static final int MSG_TIMEOUT_INPUT_EVENT = 6;
    static final int MSG_UNBIND = 3;
    private static final int NOT_AN_ACTION_NOTIFICATION_SEQUENCE_NUMBER = -1;
    static final String PENDING_EVENT_COUNTER = "aq:imm";
    private static final int REQUEST_UPDATE_CURSOR_ANCHOR_INFO_NONE = 0;
    public static final int RESULT_HIDDEN = 3;
    public static final int RESULT_SHOWN = 2;
    public static final int RESULT_UNCHANGED_HIDDEN = 1;
    public static final int RESULT_UNCHANGED_SHOWN = 0;
    public static final int SHOW_FORCED = 2;
    public static final int SHOW_IMPLICIT = 1;
    public static final int SHOW_IM_PICKER_MODE_AUTO = 0;
    public static final int SHOW_IM_PICKER_MODE_EXCLUDE_AUXILIARY_SUBTYPES = 2;
    public static final int SHOW_IM_PICKER_MODE_INCLUDE_AUXILIARY_SUBTYPES = 1;
    static final String TAG = "InputMethodManager";
    static InputMethodManager sInstance;
    boolean mActive;
    int mBindSequence;
    final IInputMethodClient.Stub mClient;
    CompletionInfo[] mCompletions;
    InputChannel mCurChannel;
    String mCurId;
    IInputMethodSession mCurMethod;
    View mCurRootView;
    ImeInputEventSender mCurSender;
    EditorInfo mCurrentTextBoxAttribute;
    private CursorAnchorInfo mCursorAnchorInfo;
    int mCursorCandEnd;
    int mCursorCandStart;
    Rect mCursorRect;
    int mCursorSelEnd;
    int mCursorSelStart;
    final InputConnection mDummyInputConnection;
    boolean mFullscreenMode;
    final H mH;
    boolean mHasBeenInactive;
    final IInputContext mIInputContext;
    private int mLastSentUserActionNotificationSequenceNumber;
    final Looper mMainLooper;
    View mNextServedView;
    private int mNextUserActionNotificationSequenceNumber;
    final Pools.Pool<PendingEvent> mPendingEventPool;
    final SparseArray<PendingEvent> mPendingEvents;
    private int mRequestUpdateCursorAnchorInfoMonitorMode;
    boolean mServedConnecting;
    ControlledInputConnectionWrapper mServedInputConnectionWrapper;
    View mServedView;
    final IInputMethodManager mService;
    Rect mTmpCursorRect;

    public static class ControlledInputConnectionWrapper extends IInputConnectionWrapper {
        private final InputMethodManager mParentInputMethodManager;

        public ControlledInputConnectionWrapper(Looper looper, InputConnection inputConnection, InputMethodManager inputMethodManager) {
            super(looper, inputConnection);
            this.mParentInputMethodManager = inputMethodManager;
        }

        public void deactivate() {
            if (isFinished()) {
                return;
            }
            closeConnection();
        }

        @Override // com.android.internal.view.IInputConnectionWrapper
        public boolean isActive() {
            return this.mParentInputMethodManager.mActive && !isFinished();
        }

        @Override // com.android.internal.view.IInputConnectionWrapper
        public void onUserAction() {
            this.mParentInputMethodManager.notifyUserAction();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ControlledInputConnectionWrapper{connection=");
            sb.append(getInputConnection());
            sb.append(" finished=");
            sb.append(isFinished());
            sb.append(" mParentInputMethodManager.mActive=");
            return c.o(sb, this.mParentInputMethodManager.mActive, "}");
        }
    }

    public interface FinishedInputEventCallback {
        void onFinishedInputEvent(Object obj, boolean z2);
    }

    public class H extends Handler {
        public H(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws Throwable {
            InputConnection inputConnection;
            switch (message.what) {
                case 1:
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    try {
                        InputMethodManager.this.doDump((FileDescriptor) someArgs.arg1, (PrintWriter) someArgs.arg2, (String[]) someArgs.arg3);
                        break;
                    } catch (RuntimeException e2) {
                        ((PrintWriter) someArgs.arg2).println("Exception: " + e2);
                    }
                    synchronized (someArgs.arg4) {
                        ((CountDownLatch) someArgs.arg4).countDown();
                        break;
                    }
                    someArgs.recycle();
                    return;
                case 2:
                    InputBindResult inputBindResult = (InputBindResult) message.obj;
                    if (InputMethodManager.DEBUG) {
                        Log.i(InputMethodManager.TAG, "handleMessage: MSG_BIND " + inputBindResult.sequence + "," + inputBindResult.id);
                    }
                    synchronized (InputMethodManager.this.mH) {
                        InputMethodManager inputMethodManager = InputMethodManager.this;
                        int i2 = inputMethodManager.mBindSequence;
                        if (i2 >= 0 && i2 == inputBindResult.sequence) {
                            inputMethodManager.mRequestUpdateCursorAnchorInfoMonitorMode = 0;
                            InputMethodManager.this.setInputChannelLocked(inputBindResult.channel);
                            InputMethodManager inputMethodManager2 = InputMethodManager.this;
                            inputMethodManager2.mCurMethod = inputBindResult.method;
                            inputMethodManager2.mCurId = inputBindResult.id;
                            inputMethodManager2.mBindSequence = inputBindResult.sequence;
                            inputMethodManager2.startInputInner(5, null, 0, 0, 0);
                            return;
                        }
                        Log.w(InputMethodManager.TAG, "Ignoring onBind: cur seq=" + InputMethodManager.this.mBindSequence + ", given seq=" + inputBindResult.sequence);
                        InputChannel inputChannel = inputBindResult.channel;
                        if (inputChannel != null && inputChannel != InputMethodManager.this.mCurChannel) {
                            inputChannel.dispose();
                        }
                        return;
                    }
                case 3:
                    int i3 = message.arg1;
                    int i4 = message.arg2;
                    if (InputMethodManager.DEBUG) {
                        StringBuilder sbS = c.s("handleMessage: MSG_UNBIND ", i3, " reason=");
                        sbS.append(InputMethodClient.getUnbindReason(i4));
                        Log.i(InputMethodManager.TAG, sbS.toString());
                    }
                    synchronized (InputMethodManager.this.mH) {
                        InputMethodManager inputMethodManager3 = InputMethodManager.this;
                        if (inputMethodManager3.mBindSequence != i3) {
                            return;
                        }
                        inputMethodManager3.clearBindingLocked();
                        View view = InputMethodManager.this.mServedView;
                        if (view != null && view.isFocused()) {
                            InputMethodManager.this.mServedConnecting = true;
                        }
                        InputMethodManager inputMethodManager4 = InputMethodManager.this;
                        boolean z2 = inputMethodManager4.mActive;
                        if (z2) {
                            inputMethodManager4.startInputInner(6, null, 0, 0, 0);
                            return;
                        }
                        return;
                    }
                case 4:
                    boolean z3 = message.arg1 != 0;
                    boolean z4 = message.arg2 != 0;
                    if (InputMethodManager.DEBUG) {
                        Log.i(InputMethodManager.TAG, "handleMessage: MSG_SET_ACTIVE " + z3 + ", was " + InputMethodManager.this.mActive);
                    }
                    synchronized (InputMethodManager.this.mH) {
                        InputMethodManager inputMethodManager5 = InputMethodManager.this;
                        inputMethodManager5.mActive = z3;
                        inputMethodManager5.mFullscreenMode = z4;
                        if (!z3) {
                            inputMethodManager5.mHasBeenInactive = true;
                            try {
                                inputMethodManager5.mIInputContext.finishComposingText();
                                break;
                            } catch (RemoteException unused) {
                            }
                        }
                        View view2 = InputMethodManager.this.mServedView;
                        if (view2 != null && view2.hasWindowFocus()) {
                            InputMethodManager inputMethodManager6 = InputMethodManager.this;
                            if (inputMethodManager6.checkFocusNoStartInput(inputMethodManager6.mHasBeenInactive)) {
                                InputMethodManager.this.startInputInner(z3 ? 7 : 8, null, 0, 0, 0);
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
                case 8:
                default:
                    return;
                case 9:
                    synchronized (InputMethodManager.this.mH) {
                        InputMethodManager.this.mNextUserActionNotificationSequenceNumber = message.arg1;
                        break;
                    }
                    return;
                case 10:
                    boolean z5 = message.arg1 != 0;
                    synchronized (InputMethodManager.this.mH) {
                        InputMethodManager inputMethodManager7 = InputMethodManager.this;
                        inputMethodManager7.mFullscreenMode = z5;
                        ControlledInputConnectionWrapper controlledInputConnectionWrapper = inputMethodManager7.mServedInputConnectionWrapper;
                        inputConnection = controlledInputConnectionWrapper != null ? controlledInputConnectionWrapper.getInputConnection() : null;
                        break;
                    }
                    if (inputConnection != null) {
                        inputConnection.reportFullscreenMode(z5);
                        return;
                    }
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

    public InputMethodManager(Looper looper) {
        this(IInputMethodManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.INPUT_METHOD_SERVICE)), looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkFocusNoStartInput(boolean z2) {
        if (this.mServedView == this.mNextServedView && !z2) {
            return false;
        }
        synchronized (this.mH) {
            if (this.mServedView == this.mNextServedView && !z2) {
                return false;
            }
            if (DEBUG) {
                StringBuilder sb = new StringBuilder("checkFocus: view=");
                sb.append(this.mServedView);
                sb.append(" next=");
                sb.append(this.mNextServedView);
                sb.append(" forceNewFocus=");
                sb.append(z2);
                sb.append(" package=");
                View view = this.mServedView;
                sb.append(view != null ? view.getContext().getPackageName() : "<none>");
                Log.v(TAG, sb.toString());
            }
            View view2 = this.mNextServedView;
            if (view2 == null) {
                finishInputLocked();
                closeCurrentInput();
                return false;
            }
            ControlledInputConnectionWrapper controlledInputConnectionWrapper = this.mServedInputConnectionWrapper;
            this.mServedView = view2;
            this.mCurrentTextBoxAttribute = null;
            this.mCompletions = null;
            this.mServedConnecting = true;
            if (controlledInputConnectionWrapper != null) {
                controlledInputConnectionWrapper.finishComposingText();
            }
            return true;
        }
    }

    private static String dumpViewInfo(View view) {
        if (view == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(view);
        sb.append(",focus=" + view.hasFocus());
        sb.append(",windowFocus=" + view.hasWindowFocus());
        sb.append(",window=" + view.getWindowToken());
        sb.append(",temporaryDetach=" + view.isTemporarilyDetached());
        return sb.toString();
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
                try {
                    sInstance = new InputMethodManager(Looper.getMainLooper());
                } catch (ServiceManager.ServiceNotFoundException e2) {
                    throw new IllegalStateException(e2);
                }
            }
            inputMethodManager = sInstance;
        }
        return inputMethodManager;
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
            this.mService.showInputMethodPickerFromClient(this.mClient, 0);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void checkFocus() {
        if (checkFocusNoStartInput(false)) {
            startInputInner(4, null, 0, 0, 0);
        }
    }

    public void clearBindingLocked() {
        if (DEBUG) {
            Log.v(TAG, "Clearing binding!");
        }
        clearConnectionLocked();
        setInputChannelLocked(null);
        this.mBindSequence = -1;
        this.mCurId = null;
        this.mCurMethod = null;
    }

    public void clearConnectionLocked() {
        this.mCurrentTextBoxAttribute = null;
        ControlledInputConnectionWrapper controlledInputConnectionWrapper = this.mServedInputConnectionWrapper;
        if (controlledInputConnectionWrapper != null) {
            controlledInputConnectionWrapper.deactivate();
            this.mServedInputConnectionWrapper = null;
        }
    }

    public void clearLastInputMethodWindowForTransition(IBinder iBinder) {
        synchronized (this.mH) {
            try {
                try {
                    this.mService.clearLastInputMethodWindowForTransition(iBinder);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void closeCurrentInput() {
        try {
            this.mService.hideSoftInput(this.mClient, 2, null);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
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
            if (DEBUG) {
                Log.v(TAG, "DISPATCH INPUT EVENT: " + this.mCurMethod);
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

    public void dispatchKeyEventFromInputMethod(View view, KeyEvent keyEvent) {
        ViewRootImpl viewRootImpl;
        View view2;
        synchronized (this.mH) {
            if (view != null) {
                try {
                    viewRootImpl = view.getViewRootImpl();
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                viewRootImpl = null;
            }
            if (viewRootImpl == null && (view2 = this.mServedView) != null) {
                viewRootImpl = view2.getViewRootImpl();
            }
            if (viewRootImpl != null) {
                viewRootImpl.dispatchKeyFromIme(keyEvent);
            }
        }
    }

    public void displayCompletions(View view, CompletionInfo[] completionInfoArr) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if (view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) {
                this.mCompletions = completionInfoArr;
                IInputMethodSession iInputMethodSession = this.mCurMethod;
                if (iInputMethodSession != null) {
                    try {
                        iInputMethodSession.displayCompletions(completionInfoArr);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }
    }

    public void doDump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        PrintWriterPrinter printWriterPrinter = new PrintWriterPrinter(printWriter);
        if (strArr != null && strArr.length > 0) {
            if ("enable".equals(strArr[0])) {
                DEBUG = true;
                BaseInputConnection.DEBUG = true;
                EditableInputConnection.DEBUG = true;
                printWriterPrinter.println("InputMethodManager DEBUG is turn on!");
                return;
            }
            if ("disable".equals(strArr[0])) {
                DEBUG = false;
                BaseInputConnection.DEBUG = false;
                EditableInputConnection.DEBUG = false;
                printWriterPrinter.println("InputMethodManager DEBUG is turn off!");
                return;
            }
        }
        printWriterPrinter.println("Input method client state for " + this + SettingsStringUtil.DELIMITER);
        StringBuilder sb = new StringBuilder("  mService=");
        sb.append(this.mService);
        printWriterPrinter.println(sb.toString());
        printWriterPrinter.println("  mMainLooper=" + this.mMainLooper);
        printWriterPrinter.println("  mIInputContext=" + this.mIInputContext);
        printWriterPrinter.println("  mActive=" + this.mActive + " mHasBeenInactive=" + this.mHasBeenInactive + " mBindSequence=" + this.mBindSequence + " mCurId=" + this.mCurId);
        StringBuilder sb2 = new StringBuilder("  mFullscreenMode=");
        sb2.append(this.mFullscreenMode);
        printWriterPrinter.println(sb2.toString());
        StringBuilder sb3 = new StringBuilder("  mCurMethod=");
        sb3.append(this.mCurMethod);
        printWriterPrinter.println(sb3.toString());
        printWriterPrinter.println("  mCurRootView=" + this.mCurRootView);
        printWriterPrinter.println("  mServedView=" + this.mServedView);
        printWriterPrinter.println("  mNextServedView=" + this.mNextServedView);
        printWriterPrinter.println("  mServedConnecting=" + this.mServedConnecting);
        if (this.mCurrentTextBoxAttribute != null) {
            printWriterPrinter.println("  mCurrentTextBoxAttribute:");
            this.mCurrentTextBoxAttribute.dump(printWriterPrinter, "    ");
        } else {
            printWriterPrinter.println("  mCurrentTextBoxAttribute: null");
        }
        printWriterPrinter.println("  mServedInputConnectionWrapper=" + this.mServedInputConnectionWrapper);
        printWriterPrinter.println("  mCompletions=" + Arrays.toString(this.mCompletions));
        printWriterPrinter.println("  mCursorRect=" + this.mCursorRect);
        printWriterPrinter.println("  mCursorSelStart=" + this.mCursorSelStart + " mCursorSelEnd=" + this.mCursorSelEnd + " mCursorCandStart=" + this.mCursorCandStart + " mCursorCandEnd=" + this.mCursorCandEnd);
        StringBuilder sb4 = new StringBuilder("  mNextUserActionNotificationSequenceNumber=");
        sb4.append(this.mNextUserActionNotificationSequenceNumber);
        sb4.append(" mLastSentUserActionNotificationSequenceNumber=");
        sb4.append(this.mLastSentUserActionNotificationSequenceNumber);
        printWriterPrinter.println(sb4.toString());
    }

    public void exposeContent(IBinder iBinder, InputContentInfo inputContentInfo, EditorInfo editorInfo) {
        Uri contentUri = inputContentInfo.getContentUri();
        try {
            IInputContentUriToken iInputContentUriTokenCreateInputContentUriToken = this.mService.createInputContentUriToken(iBinder, contentUri, editorInfo.packageName);
            if (iInputContentUriTokenCreateInputContentUriToken == null) {
                return;
            }
            inputContentInfo.setUriToken(iInputContentUriTokenCreateInputContentUriToken);
        } catch (RemoteException e2) {
            Log.e(TAG, "createInputContentAccessToken failed. contentUri=" + contentUri.toString() + " packageName=" + editorInfo.packageName, e2);
        }
    }

    public void finishInputLocked() {
        this.mNextServedView = null;
        if (this.mServedView != null) {
            if (DEBUG) {
                Log.v(TAG, "FINISH INPUT: mServedView=" + dumpViewInfo(this.mServedView));
            }
            if (this.mCurrentTextBoxAttribute != null) {
                try {
                    this.mService.finishInput(this.mClient);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
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
        if (DEBUG) {
            Log.v(TAG, "focusIn: " + dumpViewInfo(view));
        }
        if (view != null && view.isTemporarilyDetached()) {
            if (DEBUG) {
                Log.v(TAG, "Temporarily detached view, ignoring");
            }
        } else if (this.mCurRootView == view.getRootView()) {
            this.mNextServedView = view;
            scheduleCheckFocusLocked(view);
        } else if (DEBUG) {
            Log.v(TAG, "Not IME target window, ignoring");
        }
    }

    public void focusOut(View view) {
        synchronized (this.mH) {
            if (DEBUG) {
                Log.v(TAG, "focusOut: view=" + dumpViewInfo(view) + " mServedView=" + dumpViewInfo(this.mServedView));
            }
        }
    }

    public IInputMethodClient getClient() {
        return this.mClient;
    }

    public InputMethodSubtype getCurrentInputMethodSubtype() {
        try {
            return this.mService.getCurrentInputMethodSubtype();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<InputMethodInfo> getEnabledInputMethodList() {
        try {
            return this.mService.getEnabledInputMethodList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<InputMethodSubtype> getEnabledInputMethodSubtypeList(InputMethodInfo inputMethodInfo, boolean z2) {
        try {
            return this.mService.getEnabledInputMethodSubtypeList(inputMethodInfo == null ? null : inputMethodInfo.getId(), z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public IInputContext getInputContext() {
        return this.mIInputContext;
    }

    public List<InputMethodInfo> getInputMethodList() {
        try {
            return this.mService.getInputMethodList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getInputMethodWindowVisibleHeight() {
        int inputMethodWindowVisibleHeight;
        synchronized (this.mH) {
            try {
                try {
                    inputMethodWindowVisibleHeight = this.mService.getInputMethodWindowVisibleHeight();
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return inputMethodWindowVisibleHeight;
    }

    public InputMethodSubtype getLastInputMethodSubtype() {
        InputMethodSubtype lastInputMethodSubtype;
        synchronized (this.mH) {
            try {
                try {
                    lastInputMethodSubtype = this.mService.getLastInputMethodSubtype();
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return lastInputMethodSubtype;
    }

    public Map<InputMethodInfo, List<InputMethodSubtype>> getShortcutInputMethodsAndSubtypes() {
        HashMap map;
        synchronized (this.mH) {
            try {
                map = new HashMap();
                try {
                    List shortcutInputMethodsAndSubtypes = this.mService.getShortcutInputMethodsAndSubtypes();
                    if (shortcutInputMethodsAndSubtypes != null && !shortcutInputMethodsAndSubtypes.isEmpty()) {
                        int size = shortcutInputMethodsAndSubtypes.size();
                        ArrayList arrayList = null;
                        for (int i2 = 0; i2 < size; i2++) {
                            Object obj = shortcutInputMethodsAndSubtypes.get(i2);
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
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return map;
    }

    public void hideSoftInputFromInputMethod(IBinder iBinder, int i2) {
        try {
            this.mService.hideMySoftInput(iBinder, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean hideSoftInputFromWindow(IBinder iBinder, int i2) {
        return hideSoftInputFromWindow(iBinder, i2, null);
    }

    public void hideStatusIcon(IBinder iBinder) {
        try {
            this.mService.updateStatusIcon(iBinder, null, 0);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
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
        ControlledInputConnectionWrapper controlledInputConnectionWrapper = this.mServedInputConnectionWrapper;
        return (controlledInputConnectionWrapper == null || controlledInputConnectionWrapper.getInputConnection() == null) ? false : true;
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

    public boolean isCursorAnchorInfoEnabled() {
        boolean z2;
        synchronized (this.mH) {
            int i2 = this.mRequestUpdateCursorAnchorInfoMonitorMode;
            z2 = ((i2 & 1) != 0) || ((i2 & 2) != 0);
        }
        return z2;
    }

    public boolean isFullscreenMode() {
        boolean z2;
        synchronized (this.mH) {
            z2 = this.mFullscreenMode;
        }
        return z2;
    }

    @Deprecated
    public boolean isWatchingCursor(View view) {
        return false;
    }

    public void notifySuggestionPicked(SuggestionSpan suggestionSpan, String str, int i2) {
        try {
            this.mService.notifySuggestionPicked(suggestionSpan, str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void notifyUserAction() {
        synchronized (this.mH) {
            if (this.mLastSentUserActionNotificationSequenceNumber == this.mNextUserActionNotificationSequenceNumber) {
                if (DEBUG) {
                    Log.w(TAG, "Ignoring notifyUserAction as it has already been sent. mLastSentUserActionNotificationSequenceNumber: " + this.mLastSentUserActionNotificationSequenceNumber + " mNextUserActionNotificationSequenceNumber: " + this.mNextUserActionNotificationSequenceNumber);
                }
                return;
            }
            try {
                if (DEBUG) {
                    Log.w(TAG, "notifyUserAction:  mLastSentUserActionNotificationSequenceNumber: " + this.mLastSentUserActionNotificationSequenceNumber + " mNextUserActionNotificationSequenceNumber: " + this.mNextUserActionNotificationSequenceNumber);
                }
                this.mService.notifyUserAction(this.mNextUserActionNotificationSequenceNumber);
                this.mLastSentUserActionNotificationSequenceNumber = this.mNextUserActionNotificationSequenceNumber;
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public void onPostWindowFocus(View view, View view2, int i2, boolean z2, int i3) {
        int i4;
        boolean z3;
        synchronized (this.mH) {
            if (DEBUG) {
                Log.v(TAG, "onWindowFocus: " + view2 + " softInputMode=" + InputMethodClient.softInputModeToString(i2) + " first=" + z2 + " flags=#" + Integer.toHexString(i3));
            }
            i4 = 1;
            if (this.mHasBeenInactive) {
                if (DEBUG) {
                    Log.v(TAG, "Has been inactive!  Starting fresh");
                }
                this.mHasBeenInactive = false;
                z3 = true;
            } else {
                z3 = false;
            }
            focusInLocked(view2 != null ? view2 : view);
        }
        if (view2 == null) {
            i4 = 0;
        } else if (view2.onCheckIsTextEditor()) {
            i4 = 3;
        }
        if (z2) {
            i4 |= 4;
        }
        int i5 = i4;
        if (checkFocusNoStartInput(z3) && startInputInner(1, view.getWindowToken(), i5, i2, i3)) {
            return;
        }
        synchronized (this.mH) {
            try {
                try {
                    if (DEBUG) {
                        Log.v(TAG, "Reporting focus gain, without startInput");
                    }
                    this.mService.startInputOrWindowGainedFocus(2, this.mClient, view.getWindowToken(), i5, i2, i3, null, null, 0);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onPreWindowFocus(View view, boolean z2) {
        synchronized (this.mH) {
            if (view == null) {
                try {
                    this.mCurRootView = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z2) {
                this.mCurRootView = view;
            } else if (view == this.mCurRootView) {
                this.mCurRootView = null;
            } else if (DEBUG) {
                Log.v(TAG, "Ignoring onPreWindowFocus(). mCurRootView=" + this.mCurRootView + " rootView=" + view);
            }
        }
    }

    public void onViewDetachedFromWindow(View view) {
        synchronized (this.mH) {
            if (DEBUG) {
                Log.v(TAG, "onViewDetachedFromWindow: view=" + dumpViewInfo(view) + " mServedView=" + dumpViewInfo(this.mServedView));
            }
            if (this.mServedView == view && this.mNextServedView == view) {
                this.mNextServedView = null;
                scheduleCheckFocusLocked(view);
            }
        }
    }

    public void registerSuggestionSpansForNotification(SuggestionSpan[] suggestionSpanArr) {
        try {
            this.mService.registerSuggestionSpansForNotification(suggestionSpanArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void reportFullscreenMode(IBinder iBinder, boolean z2) {
        try {
            this.mService.reportFullscreenMode(iBinder, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void restartInput(View view) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if (view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) {
                this.mServedConnecting = true;
                startInputInner(3, null, 0, 0, 0);
            }
        }
    }

    public void sendAppPrivateCommand(View view, String str, Bundle bundle) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if ((view2 != view && (view2 == null || !view2.checkInputConnectionProxy(view))) || this.mCurrentTextBoxAttribute == null || this.mCurMethod == null) {
                return;
            }
            try {
                if (DEBUG) {
                    Log.v(TAG, "APP PRIVATE COMMAND " + str + ": " + bundle);
                }
                this.mCurMethod.appPrivateCommand(str, bundle);
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
        if (inputChannel != null) {
            if (this.mCurSender == null) {
                this.mCurSender = new ImeInputEventSender(inputChannel, this.mH.getLooper());
            }
            InputEvent inputEvent = pendingEvent.mEvent;
            int sequenceNumber = inputEvent.getSequenceNumber();
            if (this.mCurSender.sendInputEvent(sequenceNumber, inputEvent)) {
                this.mPendingEvents.put(sequenceNumber, pendingEvent);
                Trace.traceCounter(4L, PENDING_EVENT_COUNTER, this.mPendingEvents.size());
                Message messageObtainMessage = this.mH.obtainMessage(6, sequenceNumber, 0, pendingEvent);
                messageObtainMessage.setAsynchronous(true);
                this.mH.sendMessageDelayed(messageObtainMessage, INPUT_METHOD_NOT_RESPONDING_TIMEOUT);
                return -1;
            }
            Log.w(TAG, "Unable to send input event to IME: " + this.mCurId + " dropping: " + inputEvent);
        }
        return 0;
    }

    public void setAdditionalInputMethodSubtypes(String str, InputMethodSubtype[] inputMethodSubtypeArr) {
        synchronized (this.mH) {
            try {
                try {
                    this.mService.setAdditionalInputMethodSubtypes(str, inputMethodSubtypeArr);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean setCurrentInputMethodSubtype(InputMethodSubtype inputMethodSubtype) {
        boolean currentInputMethodSubtype;
        synchronized (this.mH) {
            try {
                try {
                    currentInputMethodSubtype = this.mService.setCurrentInputMethodSubtype(inputMethodSubtype);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return currentInputMethodSubtype;
    }

    public void setImeWindowStatus(IBinder iBinder, IBinder iBinder2, int i2, int i3) {
        try {
            this.mService.setImeWindowStatus(iBinder, iBinder2, i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
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
            this.mService.setInputMethod(iBinder, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setInputMethodAndSubtype(IBinder iBinder, String str, InputMethodSubtype inputMethodSubtype) {
        try {
            this.mService.setInputMethodAndSubtype(iBinder, str, inputMethodSubtype);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUpdateCursorAnchorInfoMode(int i2) {
        synchronized (this.mH) {
            this.mRequestUpdateCursorAnchorInfoMonitorMode = i2;
        }
    }

    public boolean shouldOfferSwitchingToNextInputMethod(IBinder iBinder) {
        boolean zShouldOfferSwitchingToNextInputMethod;
        synchronized (this.mH) {
            try {
                try {
                    zShouldOfferSwitchingToNextInputMethod = this.mService.shouldOfferSwitchingToNextInputMethod(iBinder);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zShouldOfferSwitchingToNextInputMethod;
    }

    public void showInputMethodAndSubtypeEnabler(String str) {
        synchronized (this.mH) {
            try {
                try {
                    this.mService.showInputMethodAndSubtypeEnablerFromClient(this.mClient, str);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
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
            this.mService.showMySoftInput(iBinder, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void showSoftInputUnchecked(int i2, ResultReceiver resultReceiver) {
        try {
            Log.w(TAG, "showSoftInputUnchecked() is a hidden method, which will be removed soon. If you are using android.support.v7.widget.SearchView, please update to version 26.0 or newer version.");
            this.mService.showSoftInput(this.mClient, i2, resultReceiver);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void showStatusIcon(IBinder iBinder, String str, int i2) {
        try {
            this.mService.updateStatusIcon(iBinder, str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean startInputInner(final int i2, IBinder iBinder, int i3, int i4, int i5) throws Throwable {
        int i6;
        ControlledInputConnectionWrapper controlledInputConnectionWrapper;
        H h2;
        boolean z2;
        CompletionInfo[] completionInfoArr;
        synchronized (this.mH) {
            View view = this.mServedView;
            if (DEBUG) {
                Log.v(TAG, "Starting input: view=" + dumpViewInfo(view) + " reason=" + InputMethodClient.getStartInputReason(i2));
            }
            if (view == null) {
                if (DEBUG) {
                    Log.v(TAG, "ABORT input: no served view!");
                }
                return false;
            }
            Handler handler = view.getHandler();
            if (handler == null) {
                if (DEBUG) {
                    Log.v(TAG, "ABORT input: no handler for view! Close current input.");
                }
                closeCurrentInput();
                return false;
            }
            if (handler.getLooper() != Looper.myLooper()) {
                if (DEBUG) {
                    Log.v(TAG, "Starting input: reschedule to view thread");
                }
                handler.post(new Runnable() { // from class: android.view.inputmethod.InputMethodManager.2
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        InputMethodManager.this.startInputInner(i2, null, 0, 0, 0);
                    }
                });
                return false;
            }
            EditorInfo editorInfo = new EditorInfo();
            editorInfo.packageName = view.getContext().getOpPackageName();
            editorInfo.fieldId = view.getId();
            InputConnection inputConnectionOnCreateInputConnection = view.onCreateInputConnection(editorInfo);
            if (DEBUG) {
                Log.v(TAG, "Starting input: tba=" + editorInfo + " ic=" + inputConnectionOnCreateInputConnection);
            }
            H h3 = this.mH;
            synchronized (h3) {
                try {
                    try {
                        if (this.mServedView == view && this.mServedConnecting) {
                            int i7 = this.mCurrentTextBoxAttribute == null ? i3 | 256 : i3;
                            this.mCurrentTextBoxAttribute = editorInfo;
                            this.mServedConnecting = false;
                            ControlledInputConnectionWrapper controlledInputConnectionWrapper2 = this.mServedInputConnectionWrapper;
                            Handler handler2 = null;
                            if (controlledInputConnectionWrapper2 != null) {
                                controlledInputConnectionWrapper2.deactivate();
                                this.mServedInputConnectionWrapper = null;
                            }
                            if (inputConnectionOnCreateInputConnection != null) {
                                this.mCursorSelStart = editorInfo.initialSelStart;
                                this.mCursorSelEnd = editorInfo.initialSelEnd;
                                this.mCursorCandStart = -1;
                                this.mCursorCandEnd = -1;
                                this.mCursorRect.setEmpty();
                                this.mCursorAnchorInfo = null;
                                int missingMethodFlags = InputConnectionInspector.getMissingMethodFlags(inputConnectionOnCreateInputConnection);
                                if ((missingMethodFlags & 32) == 0) {
                                    handler2 = inputConnectionOnCreateInputConnection.getHandler();
                                }
                                i6 = missingMethodFlags;
                                controlledInputConnectionWrapper = new ControlledInputConnectionWrapper(handler2 != null ? handler2.getLooper() : handler.getLooper(), inputConnectionOnCreateInputConnection, this);
                            } else {
                                i6 = 0;
                                controlledInputConnectionWrapper = null;
                            }
                            this.mServedInputConnectionWrapper = controlledInputConnectionWrapper;
                            try {
                                if (DEBUG) {
                                    Log.v(TAG, "START INPUT: view=" + dumpViewInfo(view) + " ic=" + inputConnectionOnCreateInputConnection + " tba=" + editorInfo + " controlFlags=#" + Integer.toHexString(i7));
                                }
                                z2 = true;
                                h2 = h3;
                                try {
                                    InputBindResult inputBindResultStartInputOrWindowGainedFocus = this.mService.startInputOrWindowGainedFocus(i2, this.mClient, iBinder, i7, i4, i5, editorInfo, controlledInputConnectionWrapper, i6);
                                    if (DEBUG) {
                                        Log.v(TAG, "Starting input: Bind result=" + inputBindResultStartInputOrWindowGainedFocus);
                                    }
                                    if (inputBindResultStartInputOrWindowGainedFocus != null) {
                                        if (inputBindResultStartInputOrWindowGainedFocus.id != null) {
                                            setInputChannelLocked(inputBindResultStartInputOrWindowGainedFocus.channel);
                                            this.mBindSequence = inputBindResultStartInputOrWindowGainedFocus.sequence;
                                            this.mCurMethod = inputBindResultStartInputOrWindowGainedFocus.method;
                                            this.mCurId = inputBindResultStartInputOrWindowGainedFocus.id;
                                            this.mNextUserActionNotificationSequenceNumber = inputBindResultStartInputOrWindowGainedFocus.userActionNotificationSequenceNumber;
                                        } else {
                                            InputChannel inputChannel = inputBindResultStartInputOrWindowGainedFocus.channel;
                                            if (inputChannel != null && inputChannel != this.mCurChannel) {
                                                inputChannel.dispose();
                                            }
                                            if (this.mCurMethod == null) {
                                                if (DEBUG) {
                                                    Log.v(TAG, "ABORT input: no input method!");
                                                }
                                                return true;
                                            }
                                        }
                                    } else if (i2 == 1) {
                                        if (DEBUG) {
                                            Log.w(TAG, "startInputOrWindowGainedFocus failed. Window focus may have already been lost. win=" + iBinder + " view=" + dumpViewInfo(view));
                                        }
                                        if (!this.mActive) {
                                            this.mHasBeenInactive = true;
                                        }
                                    }
                                    IInputMethodSession iInputMethodSession = this.mCurMethod;
                                    if (iInputMethodSession != null && (completionInfoArr = this.mCompletions) != null) {
                                        try {
                                            iInputMethodSession.displayCompletions(completionInfoArr);
                                        } catch (RemoteException unused) {
                                        }
                                    }
                                } catch (RemoteException e2) {
                                    e = e2;
                                    Log.w(TAG, "IME died: " + this.mCurId, e);
                                }
                            } catch (RemoteException e3) {
                                e = e3;
                                h2 = h3;
                                z2 = true;
                            }
                            return z2;
                        }
                        if (DEBUG) {
                            Log.v(TAG, "Starting input: finished by someone else. view=" + dumpViewInfo(view) + " mServedView=" + dumpViewInfo(this.mServedView) + " mServedConnecting=" + this.mServedConnecting);
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
    }

    public boolean switchToLastInputMethod(IBinder iBinder) {
        boolean zSwitchToLastInputMethod;
        synchronized (this.mH) {
            try {
                try {
                    zSwitchToLastInputMethod = this.mService.switchToLastInputMethod(iBinder);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zSwitchToLastInputMethod;
    }

    public boolean switchToNextInputMethod(IBinder iBinder, boolean z2) {
        boolean zSwitchToNextInputMethod;
        synchronized (this.mH) {
            try {
                try {
                    zSwitchToNextInputMethod = this.mService.switchToNextInputMethod(iBinder, z2);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zSwitchToNextInputMethod;
    }

    public void toggleSoftInput(int i2, int i3) {
        IInputMethodSession iInputMethodSession = this.mCurMethod;
        if (iInputMethodSession != null) {
            try {
                iInputMethodSession.toggleSoftInput(i2, i3);
            } catch (RemoteException unused) {
            }
        }
    }

    public void toggleSoftInputFromWindow(IBinder iBinder, int i2, int i3) {
        synchronized (this.mH) {
            View view = this.mServedView;
            if (view != null && view.getWindowToken() == iBinder) {
                IInputMethodSession iInputMethodSession = this.mCurMethod;
                if (iInputMethodSession != null) {
                    try {
                        iInputMethodSession.toggleSoftInput(i2, i3);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }
    }

    @Deprecated
    public void updateCursor(View view, int i2, int i3, int i4, int i5) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if ((view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) && this.mCurrentTextBoxAttribute != null && this.mCurMethod != null) {
                this.mTmpCursorRect.set(i2, i3, i4, i5);
                if (!this.mCursorRect.equals(this.mTmpCursorRect)) {
                    if (DEBUG) {
                        Log.d(TAG, "updateCursor");
                    }
                    try {
                        if (DEBUG) {
                            Log.v(TAG, "CURSOR CHANGE: " + this.mCurMethod);
                        }
                        this.mCurMethod.updateCursor(this.mTmpCursorRect);
                        this.mCursorRect.set(this.mTmpCursorRect);
                    } catch (RemoteException e2) {
                        Log.w(TAG, "IME died: " + this.mCurId, e2);
                    }
                }
            }
        }
    }

    public void updateCursorAnchorInfo(View view, CursorAnchorInfo cursorAnchorInfo) {
        if (view == null || cursorAnchorInfo == null) {
            return;
        }
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if ((view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) && this.mCurrentTextBoxAttribute != null && this.mCurMethod != null) {
                boolean z2 = true;
                if ((this.mRequestUpdateCursorAnchorInfoMonitorMode & 1) == 0) {
                    z2 = false;
                }
                if (!z2 && Objects.equals(this.mCursorAnchorInfo, cursorAnchorInfo)) {
                    if (DEBUG) {
                        Log.w(TAG, "Ignoring redundant updateCursorAnchorInfo: info=" + cursorAnchorInfo);
                    }
                    return;
                }
                if (DEBUG) {
                    Log.v(TAG, "updateCursorAnchorInfo: " + cursorAnchorInfo);
                }
                try {
                    this.mCurMethod.updateCursorAnchorInfo(cursorAnchorInfo);
                    this.mCursorAnchorInfo = cursorAnchorInfo;
                    this.mRequestUpdateCursorAnchorInfoMonitorMode &= -2;
                } catch (RemoteException e2) {
                    Log.w(TAG, "IME died: " + this.mCurId, e2);
                }
            }
        }
    }

    public void updateExtractedText(View view, int i2, ExtractedText extractedText) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if (view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) {
                IInputMethodSession iInputMethodSession = this.mCurMethod;
                if (iInputMethodSession != null) {
                    try {
                        iInputMethodSession.updateExtractedText(i2, extractedText);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }
    }

    public void updateSelection(View view, int i2, int i3, int i4, int i5) {
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if ((view2 == view || (view2 != null && view2.checkInputConnectionProxy(view))) && this.mCurrentTextBoxAttribute != null && this.mCurMethod != null) {
                if (this.mCursorSelStart != i2 || this.mCursorSelEnd != i3 || this.mCursorCandStart != i4 || this.mCursorCandEnd != i5) {
                    if (DEBUG) {
                        Log.d(TAG, "updateSelection");
                    }
                    try {
                        if (DEBUG) {
                            Log.v(TAG, "SELECTION CHANGE: " + this.mCurMethod);
                        }
                        int i6 = this.mCursorSelStart;
                        int i7 = this.mCursorSelEnd;
                        this.mCursorSelStart = i2;
                        this.mCursorSelEnd = i3;
                        this.mCursorCandStart = i4;
                        this.mCursorCandEnd = i5;
                        this.mCurMethod.updateSelection(i6, i7, i2, i3, i4, i5);
                    } catch (RemoteException e2) {
                        Log.w(TAG, "IME died: " + this.mCurId, e2);
                    }
                }
            }
        }
    }

    public void viewClicked(View view) {
        boolean z2 = this.mServedView != this.mNextServedView;
        checkFocus();
        synchronized (this.mH) {
            View view2 = this.mServedView;
            if ((view2 != view && (view2 == null || !view2.checkInputConnectionProxy(view))) || this.mCurrentTextBoxAttribute == null || this.mCurMethod == null) {
                return;
            }
            try {
                if (DEBUG) {
                    Log.v(TAG, "onViewClicked: " + z2);
                }
                this.mCurMethod.viewClicked(z2);
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
                return this.mService.hideSoftInput(this.mClient, i2, resultReceiver);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
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
                return this.mService.showSoftInput(this.mClient, i2, resultReceiver);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public InputMethodManager(IInputMethodManager iInputMethodManager, Looper looper) {
        this.mActive = false;
        this.mHasBeenInactive = true;
        this.mTmpCursorRect = new Rect();
        this.mCursorRect = new Rect();
        this.mNextUserActionNotificationSequenceNumber = -1;
        this.mLastSentUserActionNotificationSequenceNumber = -1;
        this.mCursorAnchorInfo = null;
        this.mBindSequence = -1;
        this.mRequestUpdateCursorAnchorInfoMonitorMode = 0;
        this.mPendingEventPool = new Pools.SimplePool(20);
        this.mPendingEvents = new SparseArray<>(20);
        this.mClient = new IInputMethodClient.Stub() { // from class: android.view.inputmethod.InputMethodManager.1
            @Override // android.os.Binder
            public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
                CountDownLatch countDownLatch = new CountDownLatch(1);
                SomeArgs someArgsObtain = SomeArgs.obtain();
                someArgsObtain.arg1 = fileDescriptor;
                someArgsObtain.arg2 = printWriter;
                someArgsObtain.arg3 = strArr;
                someArgsObtain.arg4 = countDownLatch;
                H h2 = InputMethodManager.this.mH;
                h2.sendMessage(h2.obtainMessage(1, someArgsObtain));
                try {
                    if (countDownLatch.await(5L, TimeUnit.SECONDS)) {
                        return;
                    }
                    printWriter.println("Timeout waiting for dump");
                } catch (InterruptedException unused) {
                    printWriter.println("Interrupted waiting for dump");
                }
            }

            @Override // com.android.internal.view.IInputMethodClient
            public void onBindMethod(InputBindResult inputBindResult) {
                InputMethodManager.this.mH.obtainMessage(2, inputBindResult).sendToTarget();
            }

            @Override // com.android.internal.view.IInputMethodClient
            public void onUnbindMethod(int i2, int i3) {
                InputMethodManager.this.mH.obtainMessage(3, i2, i3).sendToTarget();
            }

            @Override // com.android.internal.view.IInputMethodClient
            public void reportFullscreenMode(boolean z2) {
                InputMethodManager.this.mH.obtainMessage(10, z2 ? 1 : 0, 0).sendToTarget();
            }

            @Override // com.android.internal.view.IInputMethodClient
            public void setActive(boolean z2, boolean z3) {
                InputMethodManager.this.mH.obtainMessage(4, z2 ? 1 : 0, z3 ? 1 : 0).sendToTarget();
            }

            @Override // com.android.internal.view.IInputMethodClient
            public void setUserActionNotificationSequenceNumber(int i2) {
                InputMethodManager.this.mH.obtainMessage(9, i2, 0).sendToTarget();
            }

            @Override // com.android.internal.view.IInputMethodClient
            public void setUsingInputMethod(boolean z2) {
            }
        };
        BaseInputConnection baseInputConnection = new BaseInputConnection(this, false);
        this.mDummyInputConnection = baseInputConnection;
        this.mService = iInputMethodManager;
        this.mMainLooper = looper;
        this.mH = new H(looper);
        this.mIInputContext = new ControlledInputConnectionWrapper(looper, baseInputConnection, this);
        boolean zEquals = WifiEnterpriseConfig.ENGINE_ENABLE.equals(SystemProperties.get("imm.debug", WifiEnterpriseConfig.ENGINE_DISABLE));
        DEBUG = zEquals;
        BaseInputConnection.DEBUG = zEquals;
        EditableInputConnection.DEBUG = DEBUG;
    }

    public void showInputMethodPicker(boolean z2) {
        synchronized (this.mH) {
            try {
                try {
                    this.mService.showInputMethodPickerFromClient(this.mClient, z2 ? 1 : 2);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
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
