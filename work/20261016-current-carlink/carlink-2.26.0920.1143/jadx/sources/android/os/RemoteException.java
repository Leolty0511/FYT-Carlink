package android.os;

import android.util.AndroidException;

/* JADX INFO: loaded from: classes.dex */
public class RemoteException extends AndroidException {
    public RemoteException() {
    }

    public RuntimeException rethrowAsRuntimeException() {
        throw new RuntimeException(this);
    }

    public RuntimeException rethrowFromSystemServer() {
        if (this instanceof DeadObjectException) {
            throw new RuntimeException(new DeadSystemException());
        }
        throw new RuntimeException(this);
    }

    public RemoteException(String str) {
        super(str);
    }
}
