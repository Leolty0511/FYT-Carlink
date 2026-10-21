package android.security;

import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.service.gatekeeper.IGateKeeperService;

/* JADX INFO: loaded from: classes.dex */
public abstract class GateKeeper {
    public static final long INVALID_SECURE_USER_ID = 0;

    private GateKeeper() {
    }

    public static long getSecureUserId() {
        try {
            return getService().getSecureUserId(UserHandle.myUserId());
        } catch (RemoteException e2) {
            throw new IllegalStateException("Failed to obtain secure user ID from gatekeeper", e2);
        }
    }

    public static IGateKeeperService getService() {
        IGateKeeperService iGateKeeperServiceAsInterface = IGateKeeperService.Stub.asInterface(ServiceManager.getService(Context.GATEKEEPER_SERVICE));
        if (iGateKeeperServiceAsInterface != null) {
            return iGateKeeperServiceAsInterface;
        }
        throw new IllegalStateException("Gatekeeper service not available");
    }
}
