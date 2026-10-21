package android.view.inputmethod;

import android.os.IBinder;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static void a(InputMethod inputMethod, InputConnection inputConnection, EditorInfo editorInfo, boolean z2, IBinder iBinder) {
        if (z2) {
            inputMethod.restartInput(inputConnection, editorInfo);
        } else {
            inputMethod.startInput(inputConnection, editorInfo);
        }
    }
}
