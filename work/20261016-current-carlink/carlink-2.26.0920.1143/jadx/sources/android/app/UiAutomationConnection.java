package android.app;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.IAccessibilityServiceClient;
import android.content.Context;
import android.content.pm.IPackageManager;
import android.graphics.Bitmap;
import android.hardware.input.InputManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.Log;
import android.view.IWindowManager;
import android.view.InputEvent;
import android.view.SurfaceControl;
import android.view.WindowAnimationFrameStats;
import android.view.WindowContentFrameStats;
import android.view.accessibility.IAccessibilityManager;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public final class UiAutomationConnection extends IUiAutomationConnection.Stub {
    private static final int INITIAL_FROZEN_ROTATION_UNSPECIFIED = -1;
    private static final String TAG = "UiAutomationConnection";
    private IAccessibilityServiceClient mClient;
    private boolean mIsShutdown;
    private int mOwningUid;
    private final IWindowManager mWindowManager = IWindowManager.Stub.asInterface(ServiceManager.getService(Context.WINDOW_SERVICE));
    private final IAccessibilityManager mAccessibilityManager = IAccessibilityManager.Stub.asInterface(ServiceManager.getService(Context.ACCESSIBILITY_SERVICE));
    private final IPackageManager mPackageManager = IPackageManager.Stub.asInterface(ServiceManager.getService("package"));
    private final Object mLock = new Object();
    private final Binder mToken = new Binder();
    private int mInitialFrozenRotation = -1;

    public class Repeater implements Runnable {
        private final InputStream readFrom;
        private final OutputStream writeTo;

        public Repeater(InputStream inputStream, OutputStream outputStream) {
            this.readFrom = inputStream;
            this.writeTo = outputStream;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i2 = this.readFrom.read(bArr);
                        if (i2 < 0) {
                            IoUtils.closeQuietly(this.readFrom);
                            IoUtils.closeQuietly(this.writeTo);
                            return;
                        } else {
                            this.writeTo.write(bArr, 0, i2);
                            this.writeTo.flush();
                        }
                    }
                } catch (IOException e2) {
                    throw new RuntimeException("Error while reading/writing ", e2);
                }
            } catch (Throwable th) {
                IoUtils.closeQuietly(this.readFrom);
                IoUtils.closeQuietly(this.writeTo);
                throw th;
            }
        }
    }

    private boolean isConnectedLocked() {
        return this.mClient != null;
    }

    private void registerUiTestAutomationServiceLocked(IAccessibilityServiceClient iAccessibilityServiceClient, int i2) {
        IAccessibilityManager iAccessibilityManagerAsInterface = IAccessibilityManager.Stub.asInterface(ServiceManager.getService(Context.ACCESSIBILITY_SERVICE));
        AccessibilityServiceInfo accessibilityServiceInfo = new AccessibilityServiceInfo();
        accessibilityServiceInfo.eventTypes = -1;
        accessibilityServiceInfo.feedbackType = 16;
        accessibilityServiceInfo.flags |= 65554;
        accessibilityServiceInfo.setCapabilities(15);
        try {
            iAccessibilityManagerAsInterface.registerUiTestAutomationService(this.mToken, iAccessibilityServiceClient, accessibilityServiceInfo, i2);
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
                this.mInitialFrozenRotation = this.mWindowManager.getDefaultDisplayRotation();
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
    public void clearWindowAnimationFrameStats() {
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            throwIfNotConnectedLocked();
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            SurfaceControl.clearAnimationFrameStats();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // android.app.IUiAutomationConnection
    public boolean clearWindowContentFrameStats(int i2) {
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            throwIfNotConnectedLocked();
        }
        int callingUserId = UserHandle.getCallingUserId();
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            IBinder windowToken = this.mAccessibilityManager.getWindowToken(i2, callingUserId);
            if (windowToken == null) {
                return false;
            }
            return this.mWindowManager.clearWindowContentFrameStats(windowToken);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // android.app.IUiAutomationConnection
    public void connect(IAccessibilityServiceClient iAccessibilityServiceClient, int i2) {
        if (iAccessibilityServiceClient == null) {
            throw new IllegalArgumentException("Client cannot be null!");
        }
        synchronized (this.mLock) {
            throwIfShutdownLocked();
            if (isConnectedLocked()) {
                throw new IllegalStateException("Already connected.");
            }
            this.mOwningUid = Binder.getCallingUid();
            registerUiTestAutomationServiceLocked(iAccessibilityServiceClient, i2);
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
    public void executeShellCommand(String str, final ParcelFileDescriptor parcelFileDescriptor, final ParcelFileDescriptor parcelFileDescriptor2) {
        final Thread thread;
        final Thread thread2;
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            throwIfNotConnectedLocked();
        }
        try {
            final Process processExec = Runtime.getRuntime().exec(str);
            if (parcelFileDescriptor != null) {
                Thread thread3 = new Thread(new Repeater(processExec.getInputStream(), new FileOutputStream(parcelFileDescriptor.getFileDescriptor())));
                thread3.start();
                thread = thread3;
            } else {
                thread = null;
            }
            if (parcelFileDescriptor2 != null) {
                Thread thread4 = new Thread(new Repeater(new FileInputStream(parcelFileDescriptor2.getFileDescriptor()), processExec.getOutputStream()));
                thread4.start();
                thread2 = thread4;
            } else {
                thread2 = null;
            }
            new Thread(new Runnable() { // from class: android.app.UiAutomationConnection.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread thread5 = thread2;
                        if (thread5 != null) {
                            thread5.join();
                        }
                        Thread thread6 = thread;
                        if (thread6 != null) {
                            thread6.join();
                        }
                    } catch (InterruptedException unused) {
                        Log.e(UiAutomationConnection.TAG, "At least one of the threads was interrupted");
                    }
                    IoUtils.closeQuietly(parcelFileDescriptor);
                    IoUtils.closeQuietly(parcelFileDescriptor2);
                    processExec.destroy();
                }
            }).start();
        } catch (IOException e2) {
            throw new RuntimeException(android.accessibilityservice.c.k("Error running shell command '", str, "'"), e2);
        }
    }

    @Override // android.app.IUiAutomationConnection
    public WindowAnimationFrameStats getWindowAnimationFrameStats() {
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            throwIfNotConnectedLocked();
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            WindowAnimationFrameStats windowAnimationFrameStats = new WindowAnimationFrameStats();
            SurfaceControl.getAnimationFrameStats(windowAnimationFrameStats);
            return windowAnimationFrameStats;
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // android.app.IUiAutomationConnection
    public WindowContentFrameStats getWindowContentFrameStats(int i2) {
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            throwIfNotConnectedLocked();
        }
        int callingUserId = UserHandle.getCallingUserId();
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            IBinder windowToken = this.mAccessibilityManager.getWindowToken(i2, callingUserId);
            if (windowToken == null) {
                return null;
            }
            return this.mWindowManager.getWindowContentFrameStats(windowToken);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // android.app.IUiAutomationConnection
    public void grantRuntimePermission(String str, String str2, int i2) {
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            throwIfNotConnectedLocked();
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mPackageManager.grantRuntimePermission(str, str2, i2);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
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
    public void revokeRuntimePermission(String str, String str2, int i2) {
        synchronized (this.mLock) {
            throwIfCalledByNotTrustedUidLocked();
            throwIfShutdownLocked();
            throwIfNotConnectedLocked();
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mPackageManager.revokeRuntimePermission(str, str2, i2);
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
