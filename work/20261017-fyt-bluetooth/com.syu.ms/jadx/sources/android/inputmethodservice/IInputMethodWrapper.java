package android.inputmethodservice;

import android.Manifest;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.util.Log;
import android.view.InputChannel;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputBinding;
import android.view.inputmethod.InputMethod;
import android.view.inputmethod.InputMethodSession;
import android.view.inputmethod.InputMethodSubtype;
import com.android.internal.view.d;
import com.android.internal.view.g;
import com.android.internal.view.h;
import com.android.internal.view.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import o.b;
import o.f;

/* JADX INFO: loaded from: classes.dex */
class IInputMethodWrapper extends d.a implements b.a {
    private static final int DO_ATTACH_TOKEN = 10;
    private static final int DO_CHANGE_INPUTMETHOD_SUBTYPE = 80;
    private static final int DO_CREATE_SESSION = 40;
    private static final int DO_DUMP = 1;
    private static final int DO_HIDE_SOFT_INPUT = 70;
    private static final int DO_RESTART_INPUT = 34;
    private static final int DO_REVOKE_SESSION = 50;
    private static final int DO_SET_INPUT_CONTEXT = 20;
    private static final int DO_SET_SESSION_ENABLED = 45;
    private static final int DO_SHOW_SOFT_INPUT = 60;
    private static final int DO_START_INPUT = 32;
    private static final int DO_UNSET_INPUT_CONTEXT = 30;
    private static final String TAG = "InputMethodWrapper";
    public final b mCaller;
    public final WeakReference<InputMethod> mInputMethod;
    public final WeakReference<AbstractInputMethodService> mTarget;
    public final int mTargetSdkVersion;

    public static final class InputMethodSessionCallbackWrapper implements InputMethod.SessionCallback {
        public final h mCb;
        public final InputChannel mChannel;
        public final Context mContext;

        public InputMethodSessionCallbackWrapper(Context context, InputChannel inputChannel, h hVar) {
            this.mContext = context;
            this.mChannel = inputChannel;
            this.mCb = hVar;
        }

        @Override // android.view.inputmethod.InputMethod.SessionCallback
        public void sessionCreated(InputMethodSession inputMethodSession) {
            try {
                if (inputMethodSession != null) {
                    this.mCb.g(new IInputMethodSessionWrapper(this.mContext, inputMethodSession, this.mChannel));
                } else {
                    InputChannel inputChannel = this.mChannel;
                    if (inputChannel != null) {
                        inputChannel.dispose();
                    }
                    this.mCb.g(null);
                }
            } catch (RemoteException unused) {
            }
        }
    }

    public static class Notifier {
        public boolean notified;
    }

    public IInputMethodWrapper(AbstractInputMethodService abstractInputMethodService, InputMethod inputMethod) {
        this.mTarget = new WeakReference<>(abstractInputMethodService);
        this.mCaller = new b(abstractInputMethodService.getApplicationContext(), null, this, true);
        this.mInputMethod = new WeakReference<>(inputMethod);
        this.mTargetSdkVersion = abstractInputMethodService.getApplicationInfo().targetSdkVersion;
    }

    @Override // com.android.internal.view.d
    public void attachToken(IBinder iBinder) {
        b bVar = this.mCaller;
        bVar.a(bVar.g(10, iBinder));
    }

    @Override // com.android.internal.view.d
    public void bindInput(InputBinding inputBinding) {
        InputBinding inputBinding2 = new InputBinding(new i(com.android.internal.view.b.a.asInterface(inputBinding.getConnectionToken())), inputBinding);
        b bVar = this.mCaller;
        bVar.a(bVar.g(20, inputBinding2));
    }

    @Override // com.android.internal.view.d
    public void changeInputMethodSubtype(InputMethodSubtype inputMethodSubtype) {
        b bVar = this.mCaller;
        bVar.a(bVar.g(80, inputMethodSubtype));
    }

    @Override // com.android.internal.view.d
    public void createSession(InputChannel inputChannel, h hVar) {
        b bVar = this.mCaller;
        bVar.a(bVar.h(40, inputChannel, hVar));
    }

    @Override // android.os.Binder
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        AbstractInputMethodService abstractInputMethodService = this.mTarget.get();
        if (abstractInputMethodService == null) {
            return;
        }
        if (abstractInputMethodService.checkCallingOrSelfPermission(Manifest.permission.DUMP) != 0) {
            printWriter.println("Permission Denial: can't dump InputMethodManager from from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            return;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        b bVar = this.mCaller;
        bVar.a(bVar.i(1, fileDescriptor, printWriter, strArr, countDownLatch));
        try {
            if (countDownLatch.await(5L, TimeUnit.SECONDS)) {
                return;
            }
            printWriter.println("Timeout waiting for dump");
        } catch (InterruptedException unused) {
            printWriter.println("Interrupted waiting for dump");
        }
    }

    @Override // o.b.a
    public void executeMessage(Message message) {
        i iVar;
        InputMethod inputMethod = this.mInputMethod.get();
        if (inputMethod == null && message.what != 1) {
            Log.w(TAG, "Input method reference was null, ignoring message: " + message.what);
            return;
        }
        switch (message.what) {
            case 1:
                AbstractInputMethodService abstractInputMethodService = this.mTarget.get();
                if (abstractInputMethodService == null) {
                    return;
                }
                f fVar = (f) message.obj;
                try {
                    abstractInputMethodService.dump((FileDescriptor) fVar.f16709c, (PrintWriter) fVar.f16710d, (String[]) fVar.f16711e);
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
            case 10:
                inputMethod.attachToken((IBinder) message.obj);
                return;
            case 20:
                inputMethod.bindInput((InputBinding) message.obj);
                return;
            case 30:
                inputMethod.unbindInput();
                return;
            case 32:
                f fVar2 = (f) message.obj;
                com.android.internal.view.b bVar = (com.android.internal.view.b) fVar2.f16709c;
                iVar = bVar != null ? new i(bVar) : null;
                EditorInfo editorInfo = (EditorInfo) fVar2.f16710d;
                editorInfo.makeCompatible(this.mTargetSdkVersion);
                inputMethod.startInput(iVar, editorInfo);
                fVar2.c();
                return;
            case 34:
                f fVar3 = (f) message.obj;
                com.android.internal.view.b bVar2 = (com.android.internal.view.b) fVar3.f16709c;
                iVar = bVar2 != null ? new i(bVar2) : null;
                EditorInfo editorInfo2 = (EditorInfo) fVar3.f16710d;
                editorInfo2.makeCompatible(this.mTargetSdkVersion);
                inputMethod.restartInput(iVar, editorInfo2);
                fVar3.c();
                return;
            case 40:
                f fVar4 = (f) message.obj;
                inputMethod.createSession(new InputMethodSessionCallbackWrapper(this.mCaller.f16688a, (InputChannel) fVar4.f16709c, (h) fVar4.f16710d));
                fVar4.c();
                return;
            case 45:
                inputMethod.setSessionEnabled((InputMethodSession) message.obj, message.arg1 != 0);
                return;
            case 50:
                inputMethod.revokeSession((InputMethodSession) message.obj);
                return;
            case 60:
                inputMethod.showSoftInput(message.arg1, (ResultReceiver) message.obj);
                return;
            case 70:
                inputMethod.hideSoftInput(message.arg1, (ResultReceiver) message.obj);
                return;
            case 80:
                inputMethod.changeInputMethodSubtype((InputMethodSubtype) message.obj);
                return;
            default:
                Log.w(TAG, "Unhandled message code: " + message.what);
                return;
        }
    }

    public InputMethod getInternalInputMethod() {
        return this.mInputMethod.get();
    }

    @Override // com.android.internal.view.d
    public void hideSoftInput(int i2, ResultReceiver resultReceiver) {
        b bVar = this.mCaller;
        bVar.a(bVar.f(70, i2, resultReceiver));
    }

    @Override // com.android.internal.view.d
    public void restartInput(com.android.internal.view.b bVar, EditorInfo editorInfo) {
        b bVar2 = this.mCaller;
        bVar2.a(bVar2.h(34, bVar, editorInfo));
    }

    @Override // com.android.internal.view.d
    public void revokeSession(g gVar) {
        try {
            InputMethodSession internalInputMethodSession = ((IInputMethodSessionWrapper) gVar).getInternalInputMethodSession();
            if (internalInputMethodSession != null) {
                b bVar = this.mCaller;
                bVar.a(bVar.g(50, internalInputMethodSession));
            } else {
                Log.w(TAG, "Session is already finished: " + gVar);
            }
        } catch (ClassCastException e2) {
            Log.w(TAG, "Incoming session not of correct type: " + gVar, e2);
        }
    }

    @Override // com.android.internal.view.d
    public void setSessionEnabled(g gVar, boolean z2) {
        try {
            InputMethodSession internalInputMethodSession = ((IInputMethodSessionWrapper) gVar).getInternalInputMethodSession();
            if (internalInputMethodSession != null) {
                b bVar = this.mCaller;
                bVar.a(bVar.f(45, z2 ? 1 : 0, internalInputMethodSession));
            } else {
                Log.w(TAG, "Session is already finished: " + gVar);
            }
        } catch (ClassCastException e2) {
            Log.w(TAG, "Incoming session not of correct type: " + gVar, e2);
        }
    }

    @Override // com.android.internal.view.d
    public void showSoftInput(int i2, ResultReceiver resultReceiver) {
        b bVar = this.mCaller;
        bVar.a(bVar.f(60, i2, resultReceiver));
    }

    @Override // com.android.internal.view.d
    public void startInput(com.android.internal.view.b bVar, EditorInfo editorInfo) {
        b bVar2 = this.mCaller;
        bVar2.a(bVar2.h(32, bVar, editorInfo));
    }

    @Override // com.android.internal.view.d
    public void unbindInput() {
        b bVar = this.mCaller;
        bVar.a(bVar.b(30));
    }
}
