package android.service.voice;

import android.accessibilityservice.c;
import android.app.Dialog;
import android.app.Instrumentation;
import android.app.VoiceInteractor;
import android.app.assist.AssistContent;
import android.app.assist.AssistStructure;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Region;
import android.inputmethodservice.SoftInputWindow;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.SettingsStringUtil;
import android.util.ArrayMap;
import android.util.DebugUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.android.internal.R;
import com.android.internal.app.IVoiceInteractionManagerService;
import com.android.internal.app.IVoiceInteractionSessionShowCallback;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.app.IVoiceInteractorCallback;
import com.android.internal.app.IVoiceInteractorRequest;
import com.android.internal.os.HandlerCaller;
import com.android.internal.os.SomeArgs;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class VoiceInteractionSession implements KeyEvent.Callback, ComponentCallbacks2 {
    static final boolean DEBUG = false;
    public static final String KEY_CONTENT = "content";
    public static final String KEY_DATA = "data";
    public static final String KEY_RECEIVER_EXTRAS = "receiverExtras";
    public static final String KEY_STRUCTURE = "structure";
    static final int MSG_CANCEL = 7;
    static final int MSG_CLOSE_SYSTEM_DIALOGS = 102;
    static final int MSG_DESTROY = 103;
    static final int MSG_HANDLE_ASSIST = 104;
    static final int MSG_HANDLE_SCREENSHOT = 105;
    static final int MSG_HIDE = 107;
    static final int MSG_ON_LOCKSCREEN_SHOWN = 108;
    static final int MSG_SHOW = 106;
    static final int MSG_START_ABORT_VOICE = 4;
    static final int MSG_START_COMMAND = 5;
    static final int MSG_START_COMPLETE_VOICE = 3;
    static final int MSG_START_CONFIRMATION = 1;
    static final int MSG_START_PICK_OPTION = 2;
    static final int MSG_SUPPORTS_COMMANDS = 6;
    static final int MSG_TASK_FINISHED = 101;
    static final int MSG_TASK_STARTED = 100;
    public static final int SHOW_SOURCE_ACTIVITY = 16;
    public static final int SHOW_SOURCE_APPLICATION = 8;
    public static final int SHOW_SOURCE_ASSIST_GESTURE = 4;
    public static final int SHOW_WITH_ASSIST = 1;
    public static final int SHOW_WITH_SCREENSHOT = 2;
    static final String TAG = "VoiceInteractionSession";
    final ArrayMap<IBinder, Request> mActiveRequests;
    final MyCallbacks mCallbacks;
    FrameLayout mContentFrame;
    final Context mContext;
    final KeyEvent.DispatcherState mDispatcherState;
    final HandlerCaller mHandlerCaller;
    boolean mInShowWindow;
    LayoutInflater mInflater;
    boolean mInitialized;
    final ViewTreeObserver.OnComputeInternalInsetsListener mInsetsComputer;
    final IVoiceInteractor mInteractor;
    View mRootView;
    final IVoiceInteractionSession mSession;
    IVoiceInteractionManagerService mSystemService;
    int mTheme;
    TypedArray mThemeAttrs;
    final Insets mTmpInsets;
    IBinder mToken;
    boolean mUiEnabled;
    final WeakReference<VoiceInteractionSession> mWeakRef;
    SoftInputWindow mWindow;
    boolean mWindowAdded;
    boolean mWindowVisible;
    boolean mWindowWasVisible;

    public static final class AbortVoiceRequest extends Request {
        final VoiceInteractor.Prompt mPrompt;

        public AbortVoiceRequest(String str, int i2, IVoiceInteractorCallback iVoiceInteractorCallback, VoiceInteractionSession voiceInteractionSession, VoiceInteractor.Prompt prompt, Bundle bundle) {
            super(str, i2, iVoiceInteractorCallback, voiceInteractionSession, bundle);
            this.mPrompt = prompt;
        }

        @Override // android.service.voice.VoiceInteractionSession.Request
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            printWriter.print(str);
            printWriter.print("mPrompt=");
            printWriter.println(this.mPrompt);
        }

        @Deprecated
        public CharSequence getMessage() {
            VoiceInteractor.Prompt prompt = this.mPrompt;
            if (prompt != null) {
                return prompt.getVoicePromptAt(0);
            }
            return null;
        }

        public VoiceInteractor.Prompt getVoicePrompt() {
            return this.mPrompt;
        }

        public void sendAbortResult(Bundle bundle) {
            try {
                finishRequest();
                this.mCallback.deliverAbortVoiceResult(this.mInterface, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    public static final class CommandRequest extends Request {
        final String mCommand;

        public CommandRequest(String str, int i2, IVoiceInteractorCallback iVoiceInteractorCallback, VoiceInteractionSession voiceInteractionSession, String str2, Bundle bundle) {
            super(str, i2, iVoiceInteractorCallback, voiceInteractionSession, bundle);
            this.mCommand = str2;
        }

        @Override // android.service.voice.VoiceInteractionSession.Request
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            printWriter.print(str);
            printWriter.print("mCommand=");
            printWriter.println(this.mCommand);
        }

        public String getCommand() {
            return this.mCommand;
        }

        public void sendCommandResult(boolean z2, Bundle bundle) {
            if (z2) {
                try {
                    finishRequest();
                } catch (RemoteException unused) {
                    return;
                }
            }
            this.mCallback.deliverCommandResult(this.mInterface, z2, bundle);
        }

        public void sendIntermediateResult(Bundle bundle) {
            sendCommandResult(false, bundle);
        }

        public void sendResult(Bundle bundle) {
            sendCommandResult(true, bundle);
        }
    }

    public static final class CompleteVoiceRequest extends Request {
        final VoiceInteractor.Prompt mPrompt;

        public CompleteVoiceRequest(String str, int i2, IVoiceInteractorCallback iVoiceInteractorCallback, VoiceInteractionSession voiceInteractionSession, VoiceInteractor.Prompt prompt, Bundle bundle) {
            super(str, i2, iVoiceInteractorCallback, voiceInteractionSession, bundle);
            this.mPrompt = prompt;
        }

        @Override // android.service.voice.VoiceInteractionSession.Request
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            printWriter.print(str);
            printWriter.print("mPrompt=");
            printWriter.println(this.mPrompt);
        }

        @Deprecated
        public CharSequence getMessage() {
            VoiceInteractor.Prompt prompt = this.mPrompt;
            if (prompt != null) {
                return prompt.getVoicePromptAt(0);
            }
            return null;
        }

        public VoiceInteractor.Prompt getVoicePrompt() {
            return this.mPrompt;
        }

        public void sendCompleteResult(Bundle bundle) {
            try {
                finishRequest();
                this.mCallback.deliverCompleteVoiceResult(this.mInterface, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    public static final class ConfirmationRequest extends Request {
        final VoiceInteractor.Prompt mPrompt;

        public ConfirmationRequest(String str, int i2, IVoiceInteractorCallback iVoiceInteractorCallback, VoiceInteractionSession voiceInteractionSession, VoiceInteractor.Prompt prompt, Bundle bundle) {
            super(str, i2, iVoiceInteractorCallback, voiceInteractionSession, bundle);
            this.mPrompt = prompt;
        }

        @Override // android.service.voice.VoiceInteractionSession.Request
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            printWriter.print(str);
            printWriter.print("mPrompt=");
            printWriter.println(this.mPrompt);
        }

        @Deprecated
        public CharSequence getPrompt() {
            VoiceInteractor.Prompt prompt = this.mPrompt;
            if (prompt != null) {
                return prompt.getVoicePromptAt(0);
            }
            return null;
        }

        public VoiceInteractor.Prompt getVoicePrompt() {
            return this.mPrompt;
        }

        public void sendConfirmationResult(boolean z2, Bundle bundle) {
            try {
                finishRequest();
                this.mCallback.deliverConfirmationResult(this.mInterface, z2, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    public static final class Insets {
        public static final int TOUCHABLE_INSETS_CONTENT = 1;
        public static final int TOUCHABLE_INSETS_FRAME = 0;
        public static final int TOUCHABLE_INSETS_REGION = 3;
        public int touchableInsets;
        public final Rect contentInsets = new Rect();
        public final Region touchableRegion = new Region();
    }

    public class MyCallbacks implements HandlerCaller.Callback, SoftInputWindow.Callback {
        public MyCallbacks() {
        }

        @Override // com.android.internal.os.HandlerCaller.Callback
        public void executeMessage(Message message) {
            int i2 = message.what;
            SomeArgs someArgs = null;
            switch (i2) {
                case 1:
                    VoiceInteractionSession.this.onRequestConfirmation((ConfirmationRequest) message.obj);
                    break;
                case 2:
                    VoiceInteractionSession.this.onRequestPickOption((PickOptionRequest) message.obj);
                    break;
                case 3:
                    VoiceInteractionSession.this.onRequestCompleteVoice((CompleteVoiceRequest) message.obj);
                    break;
                case 4:
                    VoiceInteractionSession.this.onRequestAbortVoice((AbortVoiceRequest) message.obj);
                    break;
                case 5:
                    VoiceInteractionSession.this.onRequestCommand((CommandRequest) message.obj);
                    break;
                case 6:
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    someArgs2.arg1 = VoiceInteractionSession.this.onGetSupportedCommands((String[]) someArgs2.arg1);
                    someArgs2.complete();
                    break;
                case 7:
                    VoiceInteractionSession.this.onCancelRequest((Request) message.obj);
                    break;
                default:
                    switch (i2) {
                        case 100:
                            VoiceInteractionSession.this.onTaskStarted((Intent) message.obj, message.arg1);
                            break;
                        case 101:
                            VoiceInteractionSession.this.onTaskFinished((Intent) message.obj, message.arg1);
                            break;
                        case 102:
                            VoiceInteractionSession.this.onCloseSystemDialogs();
                            break;
                        case 103:
                            VoiceInteractionSession.this.doDestroy();
                            break;
                        case 104:
                            someArgs = (SomeArgs) message.obj;
                            int i3 = someArgs.argi5;
                            if (i3 != 0) {
                                VoiceInteractionSession.this.doOnHandleAssistSecondary((Bundle) someArgs.arg1, (AssistStructure) someArgs.arg2, (Throwable) someArgs.arg3, (AssistContent) someArgs.arg4, i3, someArgs.argi6);
                            } else {
                                VoiceInteractionSession.this.doOnHandleAssist((Bundle) someArgs.arg1, (AssistStructure) someArgs.arg2, (Throwable) someArgs.arg3, (AssistContent) someArgs.arg4);
                            }
                            break;
                        case 105:
                            VoiceInteractionSession.this.onHandleScreenshot((Bitmap) message.obj);
                            break;
                        case 106:
                            someArgs = (SomeArgs) message.obj;
                            VoiceInteractionSession.this.doShow((Bundle) someArgs.arg1, message.arg1, (IVoiceInteractionSessionShowCallback) someArgs.arg2);
                            break;
                        case 107:
                            VoiceInteractionSession.this.doHide();
                            break;
                        case 108:
                            VoiceInteractionSession.this.onLockscreenShown();
                            break;
                    }
                    break;
            }
            if (someArgs != null) {
                someArgs.recycle();
            }
        }

        @Override // android.inputmethodservice.SoftInputWindow.Callback
        public void onBackPressed() {
            VoiceInteractionSession.this.onBackPressed();
        }
    }

    public static class Request {
        final IVoiceInteractorCallback mCallback;
        final String mCallingPackage;
        final int mCallingUid;
        final Bundle mExtras;
        final IVoiceInteractorRequest mInterface = new IVoiceInteractorRequest.Stub() { // from class: android.service.voice.VoiceInteractionSession.Request.1
            @Override // com.android.internal.app.IVoiceInteractorRequest
            public void cancel() {
                VoiceInteractionSession voiceInteractionSession = Request.this.mSession.get();
                if (voiceInteractionSession != null) {
                    HandlerCaller handlerCaller = voiceInteractionSession.mHandlerCaller;
                    handlerCaller.sendMessage(handlerCaller.obtainMessageO(7, Request.this));
                }
            }
        };
        final WeakReference<VoiceInteractionSession> mSession;

        public Request(String str, int i2, IVoiceInteractorCallback iVoiceInteractorCallback, VoiceInteractionSession voiceInteractionSession, Bundle bundle) {
            this.mCallingPackage = str;
            this.mCallingUid = i2;
            this.mCallback = iVoiceInteractorCallback;
            this.mSession = voiceInteractionSession.mWeakRef;
            this.mExtras = bundle;
        }

        public void cancel() {
            try {
                finishRequest();
                this.mCallback.deliverCancel(this.mInterface);
            } catch (RemoteException unused) {
            }
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mInterface=");
            printWriter.println(this.mInterface.asBinder());
            printWriter.print(str);
            printWriter.print("mCallingPackage=");
            printWriter.print(this.mCallingPackage);
            printWriter.print(" mCallingUid=");
            UserHandle.formatUid(printWriter, this.mCallingUid);
            printWriter.println();
            printWriter.print(str);
            printWriter.print("mCallback=");
            printWriter.println(this.mCallback.asBinder());
            if (this.mExtras != null) {
                printWriter.print(str);
                printWriter.print("mExtras=");
                printWriter.println(this.mExtras);
            }
        }

        public void finishRequest() {
            VoiceInteractionSession voiceInteractionSession = this.mSession.get();
            if (voiceInteractionSession == null) {
                throw new IllegalStateException("VoiceInteractionSession has been destroyed");
            }
            Request requestRemoveRequest = voiceInteractionSession.removeRequest(this.mInterface.asBinder());
            if (requestRemoveRequest == null) {
                throw new IllegalStateException("Request not active: " + this);
            }
            if (requestRemoveRequest == this) {
                return;
            }
            throw new IllegalStateException("Current active request " + requestRemoveRequest + " not same as calling request " + this);
        }

        public String getCallingPackage() {
            return this.mCallingPackage;
        }

        public int getCallingUid() {
            return this.mCallingUid;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public boolean isActive() {
            VoiceInteractionSession voiceInteractionSession = this.mSession.get();
            if (voiceInteractionSession == null) {
                return false;
            }
            return voiceInteractionSession.isRequestActive(this.mInterface.asBinder());
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            DebugUtils.buildShortClassTag(this, sb);
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sb.append(this.mInterface.asBinder());
            sb.append(" pkg=");
            sb.append(this.mCallingPackage);
            sb.append(" uid=");
            UserHandle.formatUid(sb, this.mCallingUid);
            sb.append('}');
            return sb.toString();
        }
    }

    public VoiceInteractionSession(Context context) {
        this(context, new Handler());
    }

    private void doOnCreate() {
        int i2 = this.mTheme;
        if (i2 == 0) {
            i2 = R.style.Theme_DeviceDefault_VoiceInteractionSession;
        }
        this.mTheme = i2;
    }

    public void addRequest(Request request) {
        synchronized (this) {
            this.mActiveRequests.put(request.mInterface.asBinder(), request);
        }
    }

    public void closeSystemDialogs() {
        IBinder iBinder = this.mToken;
        if (iBinder == null) {
            throw new IllegalStateException("Can't call before onCreate()");
        }
        try {
            this.mSystemService.closeSystemDialogs(iBinder);
        } catch (RemoteException unused) {
        }
    }

    public void doCreate(IVoiceInteractionManagerService iVoiceInteractionManagerService, IBinder iBinder) {
        this.mSystemService = iVoiceInteractionManagerService;
        this.mToken = iBinder;
        onCreate();
    }

    public void doDestroy() {
        onDestroy();
        if (this.mInitialized) {
            this.mRootView.getViewTreeObserver().removeOnComputeInternalInsetsListener(this.mInsetsComputer);
            if (this.mWindowAdded) {
                this.mWindow.dismiss();
                this.mWindowAdded = false;
            }
            this.mInitialized = false;
        }
    }

    public void doHide() {
        if (this.mWindowVisible) {
            ensureWindowHidden();
            this.mWindowVisible = false;
            onHide();
        }
    }

    public void doOnHandleAssist(Bundle bundle, AssistStructure assistStructure, Throwable th, AssistContent assistContent) {
        if (th != null) {
            onAssistStructureFailure(th);
        }
        onHandleAssist(bundle, assistStructure, assistContent);
    }

    public void doOnHandleAssistSecondary(Bundle bundle, AssistStructure assistStructure, Throwable th, AssistContent assistContent, int i2, int i3) {
        if (th != null) {
            onAssistStructureFailure(th);
        }
        onHandleAssistSecondary(bundle, assistStructure, assistContent, i2, i3);
    }

    public void doShow(Bundle bundle, int i2, final IVoiceInteractionSessionShowCallback iVoiceInteractionSessionShowCallback) {
        if (this.mInShowWindow) {
            Log.w(TAG, "Re-entrance in to showWindow");
            return;
        }
        try {
            this.mInShowWindow = true;
            onPrepareShow(bundle, i2);
            if (!this.mWindowVisible) {
                ensureWindowAdded();
            }
            onShow(bundle, i2);
            if (!this.mWindowVisible) {
                this.mWindowVisible = true;
                if (this.mUiEnabled) {
                    this.mWindow.show();
                }
            }
            if (iVoiceInteractionSessionShowCallback != null) {
                if (this.mUiEnabled) {
                    this.mRootView.invalidate();
                    this.mRootView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.service.voice.VoiceInteractionSession.4
                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public boolean onPreDraw() {
                            VoiceInteractionSession.this.mRootView.getViewTreeObserver().removeOnPreDrawListener(this);
                            try {
                                iVoiceInteractionSessionShowCallback.onShown();
                                return true;
                            } catch (RemoteException e2) {
                                Log.w(VoiceInteractionSession.TAG, "Error calling onShown", e2);
                                return true;
                            }
                        }
                    });
                } else {
                    try {
                        iVoiceInteractionSessionShowCallback.onShown();
                    } catch (RemoteException e2) {
                        Log.w(TAG, "Error calling onShown", e2);
                    }
                }
            }
            this.mWindowWasVisible = true;
            this.mInShowWindow = false;
        } catch (Throwable th) {
            this.mWindowWasVisible = true;
            this.mInShowWindow = false;
            throw th;
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mToken=");
        printWriter.println(this.mToken);
        printWriter.print(str);
        printWriter.print("mTheme=#");
        printWriter.println(Integer.toHexString(this.mTheme));
        printWriter.print(str);
        printWriter.print("mUiEnabled=");
        printWriter.println(this.mUiEnabled);
        printWriter.print(" mInitialized=");
        c.y(printWriter, this.mInitialized, str, "mWindowAdded=");
        printWriter.print(this.mWindowAdded);
        printWriter.print(" mWindowVisible=");
        c.y(printWriter, this.mWindowVisible, str, "mWindowWasVisible=");
        printWriter.print(this.mWindowWasVisible);
        printWriter.print(" mInShowWindow=");
        printWriter.println(this.mInShowWindow);
        if (this.mActiveRequests.size() > 0) {
            printWriter.print(str);
            printWriter.println("Active requests:");
            String str2 = str + "    ";
            for (int i2 = 0; i2 < this.mActiveRequests.size(); i2++) {
                Request requestValueAt = this.mActiveRequests.valueAt(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(requestValueAt);
                requestValueAt.dump(str2, fileDescriptor, printWriter, strArr);
            }
        }
    }

    public void ensureWindowAdded() {
        if (!this.mUiEnabled || this.mWindowAdded) {
            return;
        }
        this.mWindowAdded = true;
        ensureWindowCreated();
        View viewOnCreateContentView = onCreateContentView();
        if (viewOnCreateContentView != null) {
            setContentView(viewOnCreateContentView);
        }
    }

    public void ensureWindowCreated() {
        if (this.mInitialized) {
            return;
        }
        if (!this.mUiEnabled) {
            throw new IllegalStateException("setUiEnabled is false");
        }
        this.mInitialized = true;
        this.mInflater = (LayoutInflater) this.mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        SoftInputWindow softInputWindow = new SoftInputWindow(this.mContext, TAG, this.mTheme, this.mCallbacks, this, this.mDispatcherState, WindowManager.LayoutParams.TYPE_VOICE_INTERACTION, 80, true);
        this.mWindow = softInputWindow;
        softInputWindow.getWindow().addFlags(16843008);
        this.mThemeAttrs = this.mContext.obtainStyledAttributes(android.R.styleable.VoiceInteractionSession);
        View viewInflate = this.mInflater.inflate(R.layout.voice_interaction_session, (ViewGroup) null);
        this.mRootView = viewInflate;
        viewInflate.setSystemUiVisibility(1792);
        this.mWindow.setContentView(this.mRootView);
        this.mRootView.getViewTreeObserver().addOnComputeInternalInsetsListener(this.mInsetsComputer);
        this.mContentFrame = (FrameLayout) this.mRootView.findViewById(16908290);
        this.mWindow.getWindow().setLayout(-1, -1);
        this.mWindow.setToken(this.mToken);
    }

    public void ensureWindowHidden() {
        SoftInputWindow softInputWindow = this.mWindow;
        if (softInputWindow != null) {
            softInputWindow.hide();
        }
    }

    public void finish() {
        IBinder iBinder = this.mToken;
        if (iBinder == null) {
            throw new IllegalStateException("Can't call before onCreate()");
        }
        try {
            this.mSystemService.finish(iBinder);
        } catch (RemoteException unused) {
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getDisabledShowContext() {
        try {
            return this.mSystemService.getDisabledShowContext();
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public LayoutInflater getLayoutInflater() {
        ensureWindowCreated();
        return this.mInflater;
    }

    public int getUserDisabledShowContext() {
        try {
            return this.mSystemService.getUserDisabledShowContext();
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public Dialog getWindow() {
        ensureWindowCreated();
        return this.mWindow;
    }

    public void hide() {
        IBinder iBinder = this.mToken;
        if (iBinder == null) {
            throw new IllegalStateException("Can't call before onCreate()");
        }
        try {
            this.mSystemService.hideSessionFromSession(iBinder);
        } catch (RemoteException unused) {
        }
    }

    public boolean isRequestActive(IBinder iBinder) {
        boolean zContainsKey;
        synchronized (this) {
            zContainsKey = this.mActiveRequests.containsKey(iBinder);
        }
        return zContainsKey;
    }

    public void onAssistStructureFailure(Throwable th) {
    }

    public void onBackPressed() {
        hide();
    }

    public void onCancelRequest(Request request) {
    }

    public void onCloseSystemDialogs() {
        hide();
    }

    public void onComputeInsets(Insets insets) {
        Rect rect = insets.contentInsets;
        rect.left = 0;
        rect.bottom = 0;
        rect.right = 0;
        View decorView = getWindow().getWindow().getDecorView();
        insets.contentInsets.top = decorView.getHeight();
        insets.touchableInsets = 0;
        insets.touchableRegion.setEmpty();
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    public void onCreate() {
        doOnCreate();
    }

    public View onCreateContentView() {
        return null;
    }

    public void onDestroy() {
    }

    public boolean[] onGetSupportedCommands(String[] strArr) {
        return new boolean[strArr.length];
    }

    public void onHandleAssist(Bundle bundle, AssistStructure assistStructure, AssistContent assistContent) {
    }

    public void onHandleAssistSecondary(Bundle bundle, AssistStructure assistStructure, AssistContent assistContent, int i2, int i3) {
    }

    public void onHandleScreenshot(Bitmap bitmap) {
    }

    public void onHide() {
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        return false;
    }

    public void onLockscreenShown() {
        hide();
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    public void onPrepareShow(Bundle bundle, int i2) {
    }

    public void onRequestAbortVoice(AbortVoiceRequest abortVoiceRequest) {
    }

    public void onRequestCommand(CommandRequest commandRequest) {
    }

    public void onRequestCompleteVoice(CompleteVoiceRequest completeVoiceRequest) {
    }

    public void onRequestConfirmation(ConfirmationRequest confirmationRequest) {
    }

    public void onRequestPickOption(PickOptionRequest pickOptionRequest) {
    }

    public void onShow(Bundle bundle, int i2) {
    }

    public void onTaskFinished(Intent intent, int i2) {
        hide();
    }

    public void onTaskStarted(Intent intent, int i2) {
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
    }

    public Request removeRequest(IBinder iBinder) {
        Request requestRemove;
        synchronized (this) {
            requestRemove = this.mActiveRequests.remove(iBinder);
        }
        return requestRemove;
    }

    public void setContentView(View view) {
        ensureWindowCreated();
        this.mContentFrame.removeAllViews();
        this.mContentFrame.addView(view, new FrameLayout.LayoutParams(-1, -1));
        this.mContentFrame.requestApplyInsets();
    }

    public void setDisabledShowContext(int i2) {
        try {
            this.mSystemService.setDisabledShowContext(i2);
        } catch (RemoteException unused) {
        }
    }

    public void setKeepAwake(boolean z2) {
        IBinder iBinder = this.mToken;
        if (iBinder == null) {
            throw new IllegalStateException("Can't call before onCreate()");
        }
        try {
            this.mSystemService.setKeepAwake(iBinder, z2);
        } catch (RemoteException unused) {
        }
    }

    public void setTheme(int i2) {
        if (this.mWindow != null) {
            throw new IllegalStateException("Must be called before onCreate()");
        }
        this.mTheme = i2;
    }

    public void setUiEnabled(boolean z2) {
        if (this.mUiEnabled != z2) {
            this.mUiEnabled = z2;
            if (this.mWindowVisible) {
                if (!z2) {
                    ensureWindowHidden();
                } else {
                    ensureWindowAdded();
                    this.mWindow.show();
                }
            }
        }
    }

    public void show(Bundle bundle, int i2) {
        IBinder iBinder = this.mToken;
        if (iBinder == null) {
            throw new IllegalStateException("Can't call before onCreate()");
        }
        try {
            this.mSystemService.showSessionFromSession(iBinder, bundle, i2);
        } catch (RemoteException unused) {
        }
    }

    public void startAssistantActivity(Intent intent) {
        if (this.mToken == null) {
            throw new IllegalStateException("Can't call before onCreate()");
        }
        try {
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess(this.mContext);
            Instrumentation.checkStartActivityResult(this.mSystemService.startAssistantActivity(this.mToken, intent, intent.resolveType(this.mContext.getContentResolver())), intent);
        } catch (RemoteException unused) {
        }
    }

    public void startVoiceActivity(Intent intent) {
        if (this.mToken == null) {
            throw new IllegalStateException("Can't call before onCreate()");
        }
        try {
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess(this.mContext);
            Instrumentation.checkStartActivityResult(this.mSystemService.startVoiceActivity(this.mToken, intent, intent.resolveType(this.mContext.getContentResolver())), intent);
        } catch (RemoteException unused) {
        }
    }

    public static final class PickOptionRequest extends Request {
        final VoiceInteractor.PickOptionRequest.Option[] mOptions;
        final VoiceInteractor.Prompt mPrompt;

        public PickOptionRequest(String str, int i2, IVoiceInteractorCallback iVoiceInteractorCallback, VoiceInteractionSession voiceInteractionSession, VoiceInteractor.Prompt prompt, VoiceInteractor.PickOptionRequest.Option[] optionArr, Bundle bundle) {
            super(str, i2, iVoiceInteractorCallback, voiceInteractionSession, bundle);
            this.mPrompt = prompt;
            this.mOptions = optionArr;
        }

        @Override // android.service.voice.VoiceInteractionSession.Request
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            printWriter.print(str);
            printWriter.print("mPrompt=");
            printWriter.println(this.mPrompt);
            if (this.mOptions == null) {
                return;
            }
            printWriter.print(str);
            printWriter.println("Options:");
            int i2 = 0;
            while (true) {
                VoiceInteractor.PickOptionRequest.Option[] optionArr = this.mOptions;
                if (i2 >= optionArr.length) {
                    return;
                }
                VoiceInteractor.PickOptionRequest.Option option = optionArr[i2];
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.println(SettingsStringUtil.DELIMITER);
                printWriter.print(str);
                printWriter.print("    mLabel=");
                printWriter.println(option.getLabel());
                printWriter.print(str);
                printWriter.print("    mIndex=");
                printWriter.println(option.getIndex());
                if (option.countSynonyms() > 0) {
                    printWriter.print(str);
                    printWriter.println("    Synonyms:");
                    for (int i3 = 0; i3 < option.countSynonyms(); i3++) {
                        printWriter.print(str);
                        printWriter.print("      #");
                        printWriter.print(i3);
                        printWriter.print(": ");
                        printWriter.println(option.getSynonymAt(i3));
                    }
                }
                if (option.getExtras() != null) {
                    printWriter.print(str);
                    printWriter.print("    mExtras=");
                    printWriter.println(option.getExtras());
                }
                i2++;
            }
        }

        public VoiceInteractor.PickOptionRequest.Option[] getOptions() {
            return this.mOptions;
        }

        @Deprecated
        public CharSequence getPrompt() {
            VoiceInteractor.Prompt prompt = this.mPrompt;
            if (prompt != null) {
                return prompt.getVoicePromptAt(0);
            }
            return null;
        }

        public VoiceInteractor.Prompt getVoicePrompt() {
            return this.mPrompt;
        }

        public void sendIntermediatePickOptionResult(VoiceInteractor.PickOptionRequest.Option[] optionArr, Bundle bundle) {
            sendPickOptionResult(false, optionArr, bundle);
        }

        public void sendPickOptionResult(boolean z2, VoiceInteractor.PickOptionRequest.Option[] optionArr, Bundle bundle) {
            if (z2) {
                try {
                    finishRequest();
                } catch (RemoteException unused) {
                    return;
                }
            }
            this.mCallback.deliverPickOptionResult(this.mInterface, z2, optionArr, bundle);
        }

        public void sendPickOptionResult(VoiceInteractor.PickOptionRequest.Option[] optionArr, Bundle bundle) {
            sendPickOptionResult(true, optionArr, bundle);
        }
    }

    public VoiceInteractionSession(Context context, Handler handler) {
        this.mDispatcherState = new KeyEvent.DispatcherState();
        this.mTheme = 0;
        this.mUiEnabled = true;
        this.mActiveRequests = new ArrayMap<>();
        this.mTmpInsets = new Insets();
        this.mWeakRef = new WeakReference<>(this);
        this.mInteractor = new IVoiceInteractor.Stub() { // from class: android.service.voice.VoiceInteractionSession.1
            @Override // com.android.internal.app.IVoiceInteractor
            public IVoiceInteractorRequest startAbortVoice(String str, IVoiceInteractorCallback iVoiceInteractorCallback, VoiceInteractor.Prompt prompt, Bundle bundle) {
                AbortVoiceRequest abortVoiceRequest = new AbortVoiceRequest(str, Binder.getCallingUid(), iVoiceInteractorCallback, VoiceInteractionSession.this, prompt, bundle);
                VoiceInteractionSession.this.addRequest(abortVoiceRequest);
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageO(4, abortVoiceRequest));
                return abortVoiceRequest.mInterface;
            }

            @Override // com.android.internal.app.IVoiceInteractor
            public IVoiceInteractorRequest startCommand(String str, IVoiceInteractorCallback iVoiceInteractorCallback, String str2, Bundle bundle) {
                CommandRequest commandRequest = new CommandRequest(str, Binder.getCallingUid(), iVoiceInteractorCallback, VoiceInteractionSession.this, str2, bundle);
                VoiceInteractionSession.this.addRequest(commandRequest);
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageO(5, commandRequest));
                return commandRequest.mInterface;
            }

            @Override // com.android.internal.app.IVoiceInteractor
            public IVoiceInteractorRequest startCompleteVoice(String str, IVoiceInteractorCallback iVoiceInteractorCallback, VoiceInteractor.Prompt prompt, Bundle bundle) {
                CompleteVoiceRequest completeVoiceRequest = new CompleteVoiceRequest(str, Binder.getCallingUid(), iVoiceInteractorCallback, VoiceInteractionSession.this, prompt, bundle);
                VoiceInteractionSession.this.addRequest(completeVoiceRequest);
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageO(3, completeVoiceRequest));
                return completeVoiceRequest.mInterface;
            }

            @Override // com.android.internal.app.IVoiceInteractor
            public IVoiceInteractorRequest startConfirmation(String str, IVoiceInteractorCallback iVoiceInteractorCallback, VoiceInteractor.Prompt prompt, Bundle bundle) {
                ConfirmationRequest confirmationRequest = new ConfirmationRequest(str, Binder.getCallingUid(), iVoiceInteractorCallback, VoiceInteractionSession.this, prompt, bundle);
                VoiceInteractionSession.this.addRequest(confirmationRequest);
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageO(1, confirmationRequest));
                return confirmationRequest.mInterface;
            }

            @Override // com.android.internal.app.IVoiceInteractor
            public IVoiceInteractorRequest startPickOption(String str, IVoiceInteractorCallback iVoiceInteractorCallback, VoiceInteractor.Prompt prompt, VoiceInteractor.PickOptionRequest.Option[] optionArr, Bundle bundle) {
                PickOptionRequest pickOptionRequest = new PickOptionRequest(str, Binder.getCallingUid(), iVoiceInteractorCallback, VoiceInteractionSession.this, prompt, optionArr, bundle);
                VoiceInteractionSession.this.addRequest(pickOptionRequest);
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageO(2, pickOptionRequest));
                return pickOptionRequest.mInterface;
            }

            @Override // com.android.internal.app.IVoiceInteractor
            public boolean[] supportsCommands(String str, String[] strArr) {
                SomeArgs someArgsSendMessageAndWait = VoiceInteractionSession.this.mHandlerCaller.sendMessageAndWait(VoiceInteractionSession.this.mHandlerCaller.obtainMessageIOO(6, 0, strArr, null));
                if (someArgsSendMessageAndWait == null) {
                    return new boolean[strArr.length];
                }
                boolean[] zArr = (boolean[]) someArgsSendMessageAndWait.arg1;
                someArgsSendMessageAndWait.recycle();
                return zArr;
            }
        };
        this.mSession = new IVoiceInteractionSession.Stub() { // from class: android.service.voice.VoiceInteractionSession.2
            @Override // android.service.voice.IVoiceInteractionSession
            public void closeSystemDialogs() {
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessage(102));
            }

            @Override // android.service.voice.IVoiceInteractionSession
            public void destroy() {
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessage(103));
            }

            @Override // android.service.voice.IVoiceInteractionSession
            public void handleAssist(final Bundle bundle, final AssistStructure assistStructure, final AssistContent assistContent, final int i2, final int i3) {
                new Thread("AssistStructure retriever") { // from class: android.service.voice.VoiceInteractionSession.2.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        Throwable th;
                        AssistStructure assistStructure2 = assistStructure;
                        if (assistStructure2 != null) {
                            try {
                                assistStructure2.ensureData();
                            } catch (Throwable th2) {
                                Log.w(VoiceInteractionSession.TAG, "Failure retrieving AssistStructure", th2);
                                th = th2;
                            }
                        }
                        th = null;
                        HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                        handlerCaller.sendMessage(handlerCaller.obtainMessageOOOOII(104, bundle, th == null ? assistStructure : null, th, assistContent, i2, i3));
                    }
                }.start();
            }

            @Override // android.service.voice.IVoiceInteractionSession
            public void handleScreenshot(Bitmap bitmap) {
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageO(105, bitmap));
            }

            @Override // android.service.voice.IVoiceInteractionSession
            public void hide() {
                VoiceInteractionSession.this.mHandlerCaller.removeMessages(106);
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessage(107));
            }

            @Override // android.service.voice.IVoiceInteractionSession
            public void onLockscreenShown() {
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessage(108));
            }

            @Override // android.service.voice.IVoiceInteractionSession
            public void show(Bundle bundle, int i2, IVoiceInteractionSessionShowCallback iVoiceInteractionSessionShowCallback) {
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageIOO(106, i2, bundle, iVoiceInteractionSessionShowCallback));
            }

            @Override // android.service.voice.IVoiceInteractionSession
            public void taskFinished(Intent intent, int i2) {
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageIO(101, i2, intent));
            }

            @Override // android.service.voice.IVoiceInteractionSession
            public void taskStarted(Intent intent, int i2) {
                HandlerCaller handlerCaller = VoiceInteractionSession.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageIO(100, i2, intent));
            }
        };
        MyCallbacks myCallbacks = new MyCallbacks();
        this.mCallbacks = myCallbacks;
        this.mInsetsComputer = new ViewTreeObserver.OnComputeInternalInsetsListener() { // from class: android.service.voice.VoiceInteractionSession.3
            @Override // android.view.ViewTreeObserver.OnComputeInternalInsetsListener
            public void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
                VoiceInteractionSession voiceInteractionSession = VoiceInteractionSession.this;
                voiceInteractionSession.onComputeInsets(voiceInteractionSession.mTmpInsets);
                internalInsetsInfo.contentInsets.set(VoiceInteractionSession.this.mTmpInsets.contentInsets);
                internalInsetsInfo.visibleInsets.set(VoiceInteractionSession.this.mTmpInsets.contentInsets);
                internalInsetsInfo.touchableRegion.set(VoiceInteractionSession.this.mTmpInsets.touchableRegion);
                internalInsetsInfo.setTouchableInsets(VoiceInteractionSession.this.mTmpInsets.touchableInsets);
            }
        };
        this.mContext = context;
        this.mHandlerCaller = new HandlerCaller(context, handler.getLooper(), myCallbacks, true);
    }
}
