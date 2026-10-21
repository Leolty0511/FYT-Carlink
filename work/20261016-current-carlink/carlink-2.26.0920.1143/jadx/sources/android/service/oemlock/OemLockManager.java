package android.service.oemlock;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public class OemLockManager {
    private IOemLockService mService;

    public OemLockManager(IOemLockService iOemLockService) {
        this.mService = iOemLockService;
    }

    public boolean isDeviceOemUnlocked() {
        try {
            return this.mService.isDeviceOemUnlocked();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isOemUnlockAllowed() {
        try {
            return this.mService.isOemUnlockAllowed();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isOemUnlockAllowedByCarrier() {
        try {
            return this.mService.isOemUnlockAllowedByCarrier();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isOemUnlockAllowedByUser() {
        try {
            return this.mService.isOemUnlockAllowedByUser();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setOemUnlockAllowedByCarrier(boolean z2, byte[] bArr) {
        try {
            this.mService.setOemUnlockAllowedByCarrier(z2, bArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setOemUnlockAllowedByUser(boolean z2) {
        try {
            this.mService.setOemUnlockAllowedByUser(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
