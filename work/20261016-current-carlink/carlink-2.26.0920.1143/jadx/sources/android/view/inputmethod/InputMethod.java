package android.view.inputmethod;

import android.os.IBinder;
import android.os.ResultReceiver;

/* JADX INFO: loaded from: classes2.dex */
public interface InputMethod {
    public static final String SERVICE_INTERFACE = "android.view.InputMethod";
    public static final String SERVICE_META_DATA = "android.view.im";
    public static final int SHOW_EXPLICIT = 1;
    public static final int SHOW_FORCED = 2;

    public interface SessionCallback {
        void sessionCreated(InputMethodSession inputMethodSession);
    }

    void attachToken(IBinder iBinder);

    void bindInput(InputBinding inputBinding);

    void changeInputMethodSubtype(InputMethodSubtype inputMethodSubtype);

    void createSession(SessionCallback sessionCallback);

    void dispatchStartInputWithToken(InputConnection inputConnection, EditorInfo editorInfo, boolean z2, IBinder iBinder);

    void hideSoftInput(int i2, ResultReceiver resultReceiver);

    void restartInput(InputConnection inputConnection, EditorInfo editorInfo);

    void revokeSession(InputMethodSession inputMethodSession);

    void setSessionEnabled(InputMethodSession inputMethodSession, boolean z2);

    void showSoftInput(int i2, ResultReceiver resultReceiver);

    void startInput(InputConnection inputConnection, EditorInfo editorInfo);

    void unbindInput();
}
