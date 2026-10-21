package android.service.autofill;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class FillCallback {
    private final IFillCallback mCallback;
    private boolean mCalled;
    private final int mRequestId;

    public FillCallback(IFillCallback iFillCallback, int i2) {
        this.mCallback = iFillCallback;
        this.mRequestId = i2;
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

    public void onSuccess(FillResponse fillResponse) {
        assertNotCalled();
        this.mCalled = true;
        if (fillResponse != null) {
            fillResponse.setRequestId(this.mRequestId);
        }
        try {
            this.mCallback.onSuccess(fillResponse);
        } catch (RemoteException e2) {
            e2.rethrowAsRuntimeException();
        }
    }
}
