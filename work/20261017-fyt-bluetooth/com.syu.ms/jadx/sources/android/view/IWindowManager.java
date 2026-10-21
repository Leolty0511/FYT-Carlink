package android.view;

import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.IRemoteCallback;
import android.os.Parcel;
import android.text.TextUtils;
import com.android.internal.view.b;
import com.android.internal.view.e;

/* JADX INFO: loaded from: classes.dex */
public interface IWindowManager extends IInterface {

    public static abstract class Stub extends Binder implements IWindowManager {
        private static final String DESCRIPTOR = "android.view.IWindowManager";
        public static final int TRANSACTION_addAppToken = 20;
        public static final int TRANSACTION_addWindowToken = 18;
        public static final int TRANSACTION_clearForcedDisplayDensity = 13;
        public static final int TRANSACTION_clearForcedDisplaySize = 9;
        public static final int TRANSACTION_closeSystemDialogs = 48;
        public static final int TRANSACTION_disableKeyguard = 41;
        public static final int TRANSACTION_dismissKeyguard = 47;
        public static final int TRANSACTION_executeAppTransition = 30;
        public static final int TRANSACTION_exitKeyguardSecurely = 43;
        public static final int TRANSACTION_freezeRotation = 61;
        public static final int TRANSACTION_getAnimationScale = 49;
        public static final int TRANSACTION_getAnimationScales = 50;
        public static final int TRANSACTION_getAppOrientation = 23;
        public static final int TRANSACTION_getBaseDisplayDensity = 11;
        public static final int TRANSACTION_getBaseDisplaySize = 7;
        public static final int TRANSACTION_getCompatibleMagnificationSpecForWindow = 75;
        public static final int TRANSACTION_getFocusedWindowToken = 69;
        public static final int TRANSACTION_getInitialDisplayDensity = 10;
        public static final int TRANSACTION_getInitialDisplaySize = 6;
        public static final int TRANSACTION_getPendingAppTransition = 26;
        public static final int TRANSACTION_getPreferredOptionsPanelGravity = 60;
        public static final int TRANSACTION_getRotation = 57;
        public static final int TRANSACTION_getWindowFrame = 71;
        public static final int TRANSACTION_hasNavigationBar = 67;
        public static final int TRANSACTION_inKeyguardRestrictedInputMode = 46;
        public static final int TRANSACTION_inputMethodClientHasFocus = 5;
        public static final int TRANSACTION_isKeyguardLocked = 44;
        public static final int TRANSACTION_isKeyguardSecure = 45;
        public static final int TRANSACTION_isRotationFrozen = 63;
        public static final int TRANSACTION_isSafeModeEnabled = 72;
        public static final int TRANSACTION_isViewServerRunning = 3;
        public static final int TRANSACTION_lockNow = 68;
        public static final int TRANSACTION_openSession = 4;
        public static final int TRANSACTION_overridePendingAppTransition = 27;
        public static final int TRANSACTION_overridePendingAppTransitionScaleUp = 28;
        public static final int TRANSACTION_overridePendingAppTransitionThumb = 29;
        public static final int TRANSACTION_pauseKeyDispatching = 15;
        public static final int TRANSACTION_prepareAppTransition = 25;
        public static final int TRANSACTION_reenableKeyguard = 42;
        public static final int TRANSACTION_removeAppToken = 36;
        public static final int TRANSACTION_removeRotationWatcher = 59;
        public static final int TRANSACTION_removeWindowToken = 19;
        public static final int TRANSACTION_resumeKeyDispatching = 16;
        public static final int TRANSACTION_screenshotApplications = 64;
        public static final int TRANSACTION_setAnimationScale = 51;
        public static final int TRANSACTION_setAnimationScales = 52;
        public static final int TRANSACTION_setAppGroupId = 21;
        public static final int TRANSACTION_setAppOrientation = 22;
        public static final int TRANSACTION_setAppStartingWindow = 31;
        public static final int TRANSACTION_setAppVisibility = 33;
        public static final int TRANSACTION_setAppWillBeHidden = 32;
        public static final int TRANSACTION_setEventDispatching = 17;
        public static final int TRANSACTION_setFocusedApp = 24;
        public static final int TRANSACTION_setForcedDisplayDensity = 12;
        public static final int TRANSACTION_setForcedDisplaySize = 8;
        public static final int TRANSACTION_setInTouchMode = 53;
        public static final int TRANSACTION_setInputFilter = 70;
        public static final int TRANSACTION_setMagnificationCallbacks = 73;
        public static final int TRANSACTION_setMagnificationSpec = 74;
        public static final int TRANSACTION_setNewConfiguration = 38;
        public static final int TRANSACTION_setOverscan = 14;
        public static final int TRANSACTION_setStrictModeVisualIndicatorPreference = 55;
        public static final int TRANSACTION_setTouchExplorationEnabled = 76;
        public static final int TRANSACTION_showStrictModeViolation = 54;
        public static final int TRANSACTION_startAppFreezingScreen = 34;
        public static final int TRANSACTION_startFreezingScreen = 39;
        public static final int TRANSACTION_startViewServer = 1;
        public static final int TRANSACTION_statusBarVisibilityChanged = 65;
        public static final int TRANSACTION_stopAppFreezingScreen = 35;
        public static final int TRANSACTION_stopFreezingScreen = 40;
        public static final int TRANSACTION_stopViewServer = 2;
        public static final int TRANSACTION_thawRotation = 62;
        public static final int TRANSACTION_updateOrientationFromAppTokens = 37;
        public static final int TRANSACTION_updateRotation = 56;
        public static final int TRANSACTION_waitForWindowDrawn = 66;
        public static final int TRANSACTION_watchRotation = 58;

        public static class Proxy implements IWindowManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.view.IWindowManager
            public void addAppToken(int i2, IApplicationToken iApplicationToken, int i3, int i4, int i5, boolean z2, boolean z3, int i6, int i7) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iApplicationToken != null ? iApplicationToken.asBinder() : null);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    int i8 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i8 = 0;
                    }
                    parcelObtain.writeInt(i8);
                    parcelObtain.writeInt(i6);
                    parcelObtain.writeInt(i7);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void addWindowToken(IBinder iBinder, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.view.IWindowManager
            public void clearForcedDisplayDensity(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void clearForcedDisplaySize(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void closeSystemDialogs(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void disableKeyguard(IBinder iBinder, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void dismissKeyguard() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void executeAppTransition() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void exitKeyguardSecurely(IOnKeyguardExitResult iOnKeyguardExitResult) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iOnKeyguardExitResult != null ? iOnKeyguardExitResult.asBinder() : null);
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void freezeRotation(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(61, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public float getAnimationScale(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readFloat();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public float[] getAnimationScales() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createFloatArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getAppOrientation(IApplicationToken iApplicationToken) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationToken != null ? iApplicationToken.asBinder() : null);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getBaseDisplayDensity(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void getBaseDisplaySize(int i2, Point point) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        point.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public MagnificationSpec getCompatibleMagnificationSpecForWindow(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(75, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? MagnificationSpec.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public IBinder getFocusedWindowToken() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(69, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getInitialDisplayDensity(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void getInitialDisplaySize(int i2, Point point) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        point.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.view.IWindowManager
            public int getPendingAppTransition() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getPreferredOptionsPanelGravity() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(60, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getRotation() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(57, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void getWindowFrame(IBinder iBinder, Rect rect) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(71, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        rect.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean hasNavigationBar() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(67, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean inKeyguardRestrictedInputMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean inputMethodClientHasFocus(e eVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(eVar != null ? eVar.asBinder() : null);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isKeyguardLocked() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isKeyguardSecure() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isRotationFrozen() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(63, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isSafeModeEnabled() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(72, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isViewServerRunning() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void lockNow(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(68, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public IWindowSession openSession(e eVar, b bVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(eVar != null ? eVar.asBinder() : null);
                    parcelObtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IWindowSession.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void overridePendingAppTransition(String str, int i2, int i3, IRemoteCallback iRemoteCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iRemoteCallback != null ? iRemoteCallback.asBinder() : null);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void overridePendingAppTransitionScaleUp(int i2, int i3, int i4, int i5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void overridePendingAppTransitionThumb(Bitmap bitmap, int i2, int i3, IRemoteCallback iRemoteCallback, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i4 = 1;
                    if (bitmap != null) {
                        parcelObtain.writeInt(1);
                        bitmap.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iRemoteCallback != null ? iRemoteCallback.asBinder() : null);
                    if (!z2) {
                        i4 = 0;
                    }
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void pauseKeyDispatching(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void prepareAppTransition(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void reenableKeyguard(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void removeAppToken(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void removeRotationWatcher(IRotationWatcher iRotationWatcher) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRotationWatcher != null ? iRotationWatcher.asBinder() : null);
                    this.mRemote.transact(59, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void removeWindowToken(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void resumeKeyDispatching(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public Bitmap screenshotApplications(IBinder iBinder, int i2, int i3, int i4, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(64, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Bitmap.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setAnimationScale(int i2, float f2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeFloat(f2);
                    this.mRemote.transact(51, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setAnimationScales(float[] fArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloatArray(fArr);
                    this.mRemote.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setAppGroupId(IBinder iBinder, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setAppOrientation(IApplicationToken iApplicationToken, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationToken != null ? iApplicationToken.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setAppStartingWindow(IBinder iBinder, String str, int i2, CompatibilityInfo compatibilityInfo, CharSequence charSequence, int i3, int i4, int i5, int i6, IBinder iBinder2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    int i7 = 1;
                    if (compatibilityInfo != null) {
                        parcelObtain.writeInt(1);
                        compatibilityInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (charSequence != null) {
                        parcelObtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    parcelObtain.writeStrongBinder(iBinder2);
                    if (!z2) {
                        i7 = 0;
                    }
                    parcelObtain.writeInt(i7);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setAppVisibility(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setAppWillBeHidden(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setEventDispatching(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setFocusedApp(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setForcedDisplayDensity(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setForcedDisplaySize(int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setInTouchMode(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(53, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setInputFilter(IInputFilter iInputFilter) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iInputFilter != null ? iInputFilter.asBinder() : null);
                    this.mRemote.transact(70, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setMagnificationCallbacks(IMagnificationCallbacks iMagnificationCallbacks) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMagnificationCallbacks != null ? iMagnificationCallbacks.asBinder() : null);
                    this.mRemote.transact(73, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setMagnificationSpec(MagnificationSpec magnificationSpec) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (magnificationSpec != null) {
                        parcelObtain.writeInt(1);
                        magnificationSpec.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(74, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setNewConfiguration(Configuration configuration) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (configuration != null) {
                        parcelObtain.writeInt(1);
                        configuration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setOverscan(int i2, int i3, int i4, int i5, int i6) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setStrictModeVisualIndicatorPreference(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setTouchExplorationEnabled(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(76, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void showStrictModeViolation(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void startAppFreezingScreen(IBinder iBinder, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void startFreezingScreen(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean startViewServer(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void statusBarVisibilityChanged(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(65, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void stopAppFreezingScreen(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void stopFreezingScreen() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean stopViewServer() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void thawRotation() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(62, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public Configuration updateOrientationFromAppTokens(Configuration configuration, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (configuration != null) {
                        parcelObtain.writeInt(1);
                        configuration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Configuration.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void updateRotation(boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(56, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean waitForWindowDrawn(IBinder iBinder, IRemoteCallback iRemoteCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeStrongBinder(iRemoteCallback != null ? iRemoteCallback.asBinder() : null);
                    this.mRemote.transact(66, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int watchRotation(IRotationWatcher iRotationWatcher) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRotationWatcher != null ? iRotationWatcher.asBinder() : null);
                    this.mRemote.transact(58, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWindowManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IWindowManager)) ? new Proxy(iBinder) : (IWindowManager) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStartViewServer = startViewServer(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartViewServer ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStopViewServer = stopViewServer();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStopViewServer ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsViewServerRunning = isViewServerRunning();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsViewServerRunning ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    IWindowSession iWindowSessionOpenSession = openSession(e.a.asInterface(parcel.readStrongBinder()), b.a.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iWindowSessionOpenSession != null ? iWindowSessionOpenSession.asBinder() : null);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zInputMethodClientHasFocus = inputMethodClientHasFocus(e.a.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zInputMethodClientHasFocus ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i4 = parcel.readInt();
                    Point point = new Point();
                    getInitialDisplaySize(i4, point);
                    parcel2.writeNoException();
                    parcel2.writeInt(1);
                    point.writeToParcel(parcel2, 1);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i5 = parcel.readInt();
                    Point point2 = new Point();
                    getBaseDisplaySize(i5, point2);
                    parcel2.writeNoException();
                    parcel2.writeInt(1);
                    point2.writeToParcel(parcel2, 1);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setForcedDisplaySize(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearForcedDisplaySize(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int initialDisplayDensity = getInitialDisplayDensity(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(initialDisplayDensity);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int baseDisplayDensity = getBaseDisplayDensity(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(baseDisplayDensity);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    setForcedDisplayDensity(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearForcedDisplayDensity(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    setOverscan(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    pauseKeyDispatching(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    resumeKeyDispatching(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    setEventDispatching(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    addWindowToken(parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeWindowToken(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    addAppToken(parcel.readInt(), IApplicationToken.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAppGroupId(parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAppOrientation(IApplicationToken.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    int appOrientation = getAppOrientation(IApplicationToken.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(appOrientation);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFocusedApp(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    prepareAppTransition(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    int pendingAppTransition = getPendingAppTransition();
                    parcel2.writeNoException();
                    parcel2.writeInt(pendingAppTransition);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    overridePendingAppTransition(parcel.readString(), parcel.readInt(), parcel.readInt(), IRemoteCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    overridePendingAppTransitionScaleUp(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    overridePendingAppTransitionThumb(parcel.readInt() != 0 ? Bitmap.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), IRemoteCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    executeAppTransition();
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAppStartingWindow(parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? CompatibilityInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAppWillBeHidden(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAppVisibility(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    startAppFreezingScreen(parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopAppFreezingScreen(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeAppToken(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    Configuration configurationUpdateOrientationFromAppTokens = updateOrientationFromAppTokens(parcel.readInt() != 0 ? Configuration.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder());
                    parcel2.writeNoException();
                    if (configurationUpdateOrientationFromAppTokens != null) {
                        parcel2.writeInt(1);
                        configurationUpdateOrientationFromAppTokens.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNewConfiguration(parcel.readInt() != 0 ? Configuration.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    startFreezingScreen(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopFreezingScreen();
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableKeyguard(parcel.readStrongBinder(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    reenableKeyguard(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    exitKeyguardSecurely(IOnKeyguardExitResult.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsKeyguardLocked = isKeyguardLocked();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsKeyguardLocked ? 1 : 0);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsKeyguardSecure = isKeyguardSecure();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsKeyguardSecure ? 1 : 0);
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zInKeyguardRestrictedInputMode = inKeyguardRestrictedInputMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(zInKeyguardRestrictedInputMode ? 1 : 0);
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    dismissKeyguard();
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    closeSystemDialogs(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    float animationScale = getAnimationScale(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeFloat(animationScale);
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    float[] animationScales = getAnimationScales();
                    parcel2.writeNoException();
                    parcel2.writeFloatArray(animationScales);
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAnimationScale(parcel.readInt(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAnimationScales(parcel.createFloatArray());
                    parcel2.writeNoException();
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    setInTouchMode(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    showStrictModeViolation(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    setStrictModeVisualIndicatorPreference(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateRotation(parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    int rotation = getRotation();
                    parcel2.writeNoException();
                    parcel2.writeInt(rotation);
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iWatchRotation = watchRotation(IRotationWatcher.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iWatchRotation);
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeRotationWatcher(IRotationWatcher.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    int preferredOptionsPanelGravity = getPreferredOptionsPanelGravity();
                    parcel2.writeNoException();
                    parcel2.writeInt(preferredOptionsPanelGravity);
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    freezeRotation(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    thawRotation();
                    parcel2.writeNoException();
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsRotationFrozen = isRotationFrozen();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsRotationFrozen ? 1 : 0);
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bitmap bitmapScreenshotApplications = screenshotApplications(parcel.readStrongBinder(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (bitmapScreenshotApplications != null) {
                        parcel2.writeInt(1);
                        bitmapScreenshotApplications.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    statusBarVisibilityChanged(parcel.readInt());
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zWaitForWindowDrawn = waitForWindowDrawn(parcel.readStrongBinder(), IRemoteCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zWaitForWindowDrawn ? 1 : 0);
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHasNavigationBar = hasNavigationBar();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasNavigationBar ? 1 : 0);
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    lockNow(parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder focusedWindowToken = getFocusedWindowToken();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(focusedWindowToken);
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    setInputFilter(IInputFilter.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder strongBinder = parcel.readStrongBinder();
                    Rect rect = new Rect();
                    getWindowFrame(strongBinder, rect);
                    parcel2.writeNoException();
                    parcel2.writeInt(1);
                    rect.writeToParcel(parcel2, 1);
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSafeModeEnabled = isSafeModeEnabled();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSafeModeEnabled ? 1 : 0);
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMagnificationCallbacks(IMagnificationCallbacks.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMagnificationSpec(parcel.readInt() != 0 ? MagnificationSpec.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    MagnificationSpec compatibleMagnificationSpecForWindow = getCompatibleMagnificationSpecForWindow(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    if (compatibleMagnificationSpecForWindow != null) {
                        parcel2.writeInt(1);
                        compatibleMagnificationSpecForWindow.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTouchExplorationEnabled(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void addAppToken(int i2, IApplicationToken iApplicationToken, int i3, int i4, int i5, boolean z2, boolean z3, int i6, int i7);

    void addWindowToken(IBinder iBinder, int i2);

    void clearForcedDisplayDensity(int i2);

    void clearForcedDisplaySize(int i2);

    void closeSystemDialogs(String str);

    void disableKeyguard(IBinder iBinder, String str);

    void dismissKeyguard();

    void executeAppTransition();

    void exitKeyguardSecurely(IOnKeyguardExitResult iOnKeyguardExitResult);

    void freezeRotation(int i2);

    float getAnimationScale(int i2);

    float[] getAnimationScales();

    int getAppOrientation(IApplicationToken iApplicationToken);

    int getBaseDisplayDensity(int i2);

    void getBaseDisplaySize(int i2, Point point);

    MagnificationSpec getCompatibleMagnificationSpecForWindow(IBinder iBinder);

    IBinder getFocusedWindowToken();

    int getInitialDisplayDensity(int i2);

    void getInitialDisplaySize(int i2, Point point);

    int getPendingAppTransition();

    int getPreferredOptionsPanelGravity();

    int getRotation();

    void getWindowFrame(IBinder iBinder, Rect rect);

    boolean hasNavigationBar();

    boolean inKeyguardRestrictedInputMode();

    boolean inputMethodClientHasFocus(e eVar);

    boolean isKeyguardLocked();

    boolean isKeyguardSecure();

    boolean isRotationFrozen();

    boolean isSafeModeEnabled();

    boolean isViewServerRunning();

    void lockNow(Bundle bundle);

    IWindowSession openSession(e eVar, b bVar);

    void overridePendingAppTransition(String str, int i2, int i3, IRemoteCallback iRemoteCallback);

    void overridePendingAppTransitionScaleUp(int i2, int i3, int i4, int i5);

    void overridePendingAppTransitionThumb(Bitmap bitmap, int i2, int i3, IRemoteCallback iRemoteCallback, boolean z2);

    void pauseKeyDispatching(IBinder iBinder);

    void prepareAppTransition(int i2, boolean z2);

    void reenableKeyguard(IBinder iBinder);

    void removeAppToken(IBinder iBinder);

    void removeRotationWatcher(IRotationWatcher iRotationWatcher);

    void removeWindowToken(IBinder iBinder);

    void resumeKeyDispatching(IBinder iBinder);

    Bitmap screenshotApplications(IBinder iBinder, int i2, int i3, int i4, boolean z2);

    void setAnimationScale(int i2, float f2);

    void setAnimationScales(float[] fArr);

    void setAppGroupId(IBinder iBinder, int i2);

    void setAppOrientation(IApplicationToken iApplicationToken, int i2);

    void setAppStartingWindow(IBinder iBinder, String str, int i2, CompatibilityInfo compatibilityInfo, CharSequence charSequence, int i3, int i4, int i5, int i6, IBinder iBinder2, boolean z2);

    void setAppVisibility(IBinder iBinder, boolean z2);

    void setAppWillBeHidden(IBinder iBinder);

    void setEventDispatching(boolean z2);

    void setFocusedApp(IBinder iBinder, boolean z2);

    void setForcedDisplayDensity(int i2, int i3);

    void setForcedDisplaySize(int i2, int i3, int i4);

    void setInTouchMode(boolean z2);

    void setInputFilter(IInputFilter iInputFilter);

    void setMagnificationCallbacks(IMagnificationCallbacks iMagnificationCallbacks);

    void setMagnificationSpec(MagnificationSpec magnificationSpec);

    void setNewConfiguration(Configuration configuration);

    void setOverscan(int i2, int i3, int i4, int i5, int i6);

    void setStrictModeVisualIndicatorPreference(String str);

    void setTouchExplorationEnabled(boolean z2);

    void showStrictModeViolation(boolean z2);

    void startAppFreezingScreen(IBinder iBinder, int i2);

    void startFreezingScreen(int i2, int i3);

    boolean startViewServer(int i2);

    void statusBarVisibilityChanged(int i2);

    void stopAppFreezingScreen(IBinder iBinder, boolean z2);

    void stopFreezingScreen();

    boolean stopViewServer();

    void thawRotation();

    Configuration updateOrientationFromAppTokens(Configuration configuration, IBinder iBinder);

    void updateRotation(boolean z2, boolean z3);

    boolean waitForWindowDrawn(IBinder iBinder, IRemoteCallback iRemoteCallback);

    int watchRotation(IRotationWatcher iRotationWatcher);
}
