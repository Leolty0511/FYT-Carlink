package android.app;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.IAccessibilityServiceClient;
import android.content.Context;
import android.graphics.Bitmap;
import android.hardware.input.InputManager;
import android.os.Binder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.IWindowManager;
import android.view.InputEvent;
import android.view.SurfaceControl;
import android.view.accessibility.IAccessibilityManager;

/* JADX INFO: loaded from: classes.dex */
public final class UiAutomationConnection extends IUiAutomationConnection.Stub {
    private static final int INITIAL_FROZEN_ROTATION_UNSPECIFIED = -1;
    private IAccessibilityServiceClient mClient;
    private boolean mIsShutdown;
    private int mOwningUid;
    private final IWindowManager mWindowManager = IWindowManager.Stub.asInterface(ServiceManager.getService(Context.WINDOW_SERVICE));
    private final Object mLock = new Object();
    private final Binder mToken = new Binder();
    private int mInitialFrozenRotation = -1;

    private boolean isConnectedLocked() {
        return this.mClient != null;
    }

    private void registerUiTestAutomationServiceLocked(IAccessibilityServiceClient iAccessibilityServiceClient) {
        IAccessibilityManager iAccessibilityManagerAsInterface = IAccessibilityManager.Stub.asInterface(ServiceManager.getService(Context.ACCESSIBILITY_SERVICE));
        AccessibilityServiceInfo accessibilityServiceInfo = new AccessibilityServiceInfo();
        accessibilityServiceInfo.eventTypes = -1;
        accessibilityServiceInfo.feedbackType = 16;
        accessibilityServiceInfo.flags |= 18;
        accessibilityServiceInfo.setCapabilities(15);
        try {
            iAccessibilityManagerAsInterface.registerUiTestAutomationService(this.mToken, iAccessibilityServiceClient, accessibilityServiceInfo);
            this.mClient = iAccessibilityServiceClient;
        } catch (RemoteException e2) {
            throw new IllegalStateException("Error while registering UiTestAutomationService.", e2);
        }
    }

    private void restoreRotationStateLocked() {
        try {
            int i2 = this.mInitialFrozenRotation;
            if (i2 != -1) {
                this.mWindowManager.freezeRotation(i2);
            } else {
                this.mWindowManager.thawRotation();
            }
        } catch (RemoteException unused) {
        }
    }

    private void storeRotationStateLocked() {
        try {
            if (this.mWindowManager.isRotationFrozen()) {
                this.mInitialFrozenRotation = this.mWindowManager.getRotation();
            }
        } catch (RemoteException unused) {
        }
    }

    private void throwIfCalledByNotTrustedUidLocked() {
        int callingUid = Binder.getCallingUid();
        int i2 = this.mOwningUid;
        if (callingUid != i2 && i2 != 1000 && callingUid != 0) {
            throw new SecurityException("Calling from not trusted UID!");
        }
    }

    private void throwIfNotConnectedLocked() {
        if (!isConnectedLocked()) {
            throw new IllegalStateException("Not connected!");
        }
    }

    private void throwIfShutdownLocked() {
        if (this.mIsShutdown) {
            throw new IllegalStateException("Connection shutdown!");
        }
    }

    private void unregisterUiTestAutomationServiceLocked() {
        try {
            IAccessibilityManager.Stub.asInterface(ServiceManager.getService(Context.ACCESSIBILITY_SERVICE)).unregisterUiTestAutomationService(this.mClient);
            this.mClient = null;
        } catch (RemoteException e2) {
            throw new IllegalStateException("Error while unregistering UiTestAutomationService", e2);
        }
    }

    @Override // android.app.IUiAutomationConnection
    public void connect(IAccessibilityServiceClient iAccessibilityServiceClient) {
        if (iAccessibilityServiceClient == null) {
            throw new IllegalArgumentException("Client cannot be null!");
        }
        synchronized (this.mLock) {
            throwIfShutdownLocked();
            if (isConnectedLocked()) {
                throw new IllegalStateException("Already connected.");
            }
            this.mOwningUid = Binder.getCallingUid();
            registerUiTestAutomationServiceLocked(iAccessibilityServiceClient);
            storeRotationStateLocked();
        }
    }

    @Override // android.app.IUiAutomationConnection
    public void disconnect() {
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            if (!isConnectedLocked()) {
                throw new IllegalStateException("Already disconnected.");
            }
            this.mOwningUid = -1;
            unregisterUiTestAutomationServiceLocked();
            restoreRotationStateLocked();
        }
    }

    @Override // android.app.IUiAutomationConnection
    public boolean injectInputEvent(InputEvent inputEvent, boolean z2) {
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            throwIfNotConnectedLocked();
        }
        int i2 = z2 ? 2 : 0;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return InputManager.getInstance().injectInputEvent(inputEvent, i2);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // android.app.IUiAutomationConnection
    public boolean setRotation(int i2) {
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            throwIfNotConnectedLocked();
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (i2 == -2) {
                this.mWindowManager.thawRotation();
            } else {
                this.mWindowManager.freezeRotation(i2);
            }
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            return true;
        } catch (RemoteException unused) {
            return false;
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // android.app.IUiAutomationConnection
    public void shutdown() {
        synchronized (this.mLock) {
            if (isConnectedLocked()) {
                throwIfCalledByNotTrustedUidLocked();
            }
            throwIfShutdownLocked();
            this.mIsShutdown = true;
            if (isConnectedLocked()) {
                disconnect();
            }
        }
    }

    @Override // android.app.IUiAutomationConnection
    public Bitmap takeScreenshot(int i2, int i3) {
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            throwIfNotConnectedLocked();
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return SurfaceControl.screenshot(i2, i3);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }
}
