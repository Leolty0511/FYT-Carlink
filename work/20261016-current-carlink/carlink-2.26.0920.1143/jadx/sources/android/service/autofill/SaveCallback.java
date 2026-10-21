package android.service.autofill;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class SaveCallback {
    private final ISaveCallback mCallback;
    private boolean mCalled;

    public SaveCallback(ISaveCallback iSaveCallback) {
        this.mCallback = iSaveCallback;
    }

    private void assertNotCalled() {
        if (this.mCalled) {
            throw new IllegalStateException("Already called");
        }
    }

    public void onFailure(CharSequence charSequence) {
        assertNotCalled();
        this.mCalled = true;
        try {
            this.mCallback.onFailure(charSequence);
        } catch (RemoteException e2) {
            e2.rethrowAsRuntimeException();
        }
    }

    public void onSuccess() {
        assertNotCalled();
        this.mCalled = true;
        try {
            this.mCallback.onSuccess();
        } catch (RemoteException e2) {
            e2.rethrowAsRuntimeException();
        }
    }
}
