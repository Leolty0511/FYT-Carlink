package com.android.internal.statusbar;

import android.content.ComponentName;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes3.dex */
public interface IStatusBar extends IInterface {

    public static abstract class Stub extends Binder implements IStatusBar {
        private static final String DESCRIPTOR = "com.android.internal.statusbar.IStatusBar";
        static final int TRANSACTION_addQsTile = 31;
        static final int TRANSACTION_animateCollapsePanels = 6;
        static final int TRANSACTION_animateExpandNotificationsPanel = 4;
        static final int TRANSACTION_animateExpandSettingsPanel = 5;
        static final int TRANSACTION_appTransitionCancelled = 22;
        static final int TRANSACTION_appTransitionFinished = 24;
        static final int TRANSACTION_appTransitionPending = 21;
        static final int TRANSACTION_appTransitionStarting = 23;
        static final int TRANSACTION_cancelPreloadRecentApps = 17;
        static final int TRANSACTION_clickQsTile = 33;
        static final int TRANSACTION_disable = 3;
        static final int TRANSACTION_dismissKeyboardShortcutsMenu = 19;
        static final int TRANSACTION_handleSystemKey = 34;
        static final int TRANSACTION_hideRecentApps = 13;
        static final int TRANSACTION_onCameraLaunchGestureDetected = 27;
        static final int TRANSACTION_preloadRecentApps = 16;
        static final int TRANSACTION_remQsTile = 32;
        static final int TRANSACTION_removeIcon = 2;
        static final int TRANSACTION_setIcon = 1;
        static final int TRANSACTION_setImeWindowStatus = 10;
        static final int TRANSACTION_setSystemUiVisibility = 8;
        static final int TRANSACTION_setTopAppHidesStatusBar = 30;
        static final int TRANSACTION_setWindowState = 11;
        static final int TRANSACTION_showAssistDisclosure = 25;
        static final int TRANSACTION_showGlobalActionsMenu = 29;
        static final int TRANSACTION_showPictureInPictureMenu = 28;
        static final int TRANSACTION_showRecentApps = 12;
        static final int TRANSACTION_showScreenPinningRequest = 18;
        static final int TRANSACTION_showShutdownUi = 35;
        static final int TRANSACTION_startAssist = 26;
        static final int TRANSACTION_toggleKeyboardShortcutsMenu = 20;
        static final int TRANSACTION_togglePanel = 7;
        static final int TRANSACTION_toggleRecentApps = 14;
        static final int TRANSACTION_toggleSplitScreen = 15;
        static final int TRANSACTION_topAppWindowChanged = 9;

        public static class Proxy implements IStatusBar {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void addQsTile(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(31, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void animateCollapsePanels() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void animateExpandNotificationsPanel() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void animateExpandSettingsPanel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void appTransitionCancelled() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void appTransitionFinished() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(24, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void appTransitionPending() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void appTransitionStarting(long j2, long j3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(23, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void cancelPreloadRecentApps() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void clickQsTile(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(33, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void disable(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void dismissKeyboardShortcutsMenu() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void handleSystemKey(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(34, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void hideRecentApps(boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    this.mRemote.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void onCameraLaunchGestureDetected(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(27, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void preloadRecentApps() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void remQsTile(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(32, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void removeIcon(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void setIcon(String str, StatusBarIcon statusBarIcon) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (statusBarIcon != null) {
                        parcelObtain.writeInt(1);
                        statusBarIcon.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void setImeWindowStatus(IBinder iBinder, int i2, int i3, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void setSystemUiVisibility(int i2, int i3, int i4, int i5, Rect rect, Rect rect2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (rect2 != null) {
                        parcelObtain.writeInt(1);
                        rect2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void setTopAppHidesStatusBar(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(30, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void setWindowState(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(11, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void showAssistDisclosure() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(25, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void showGlobalActionsMenu() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(29, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void showPictureInPictureMenu() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(28, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void showRecentApps(boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    this.mRemote.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void showScreenPinningRequest(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(18, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void showShutdownUi(boolean z2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(35, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void startAssist(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(26, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void toggleKeyboardShortcutsMenu(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(20, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void togglePanel() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void toggleRecentApps() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void toggleSplitScreen() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.statusbar.IStatusBar
            public void topAppWindowChanged(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IStatusBar asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IStatusBar)) ? new Proxy(iBinder) : (IStatusBar) iInterfaceQueryLocalInterface;
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
                    setIcon(parcel.readString(), parcel.readInt() != 0 ? StatusBarIcon.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeIcon(parcel.readString());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    disable(parcel.readInt(), parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    animateExpandNotificationsPanel();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    animateExpandSettingsPanel(parcel.readString());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    animateCollapsePanels();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    togglePanel();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSystemUiVisibility(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    topAppWindowChanged(parcel.readInt() != 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setImeWindowStatus(parcel.readStrongBinder(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWindowState(parcel.readInt(), parcel.readInt());
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    showRecentApps(parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    hideRecentApps(parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    toggleRecentApps();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    toggleSplitScreen();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    preloadRecentApps();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelPreloadRecentApps();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    showScreenPinningRequest(parcel.readInt());
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    dismissKeyboardShortcutsMenu();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    toggleKeyboardShortcutsMenu(parcel.readInt());
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    appTransitionPending();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    appTransitionCancelled();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    appTransitionStarting(parcel.readLong(), parcel.readLong());
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    appTransitionFinished();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    showAssistDisclosure();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    startAssist(parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    onCameraLaunchGestureDetected(parcel.readInt());
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    showPictureInPictureMenu();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    showGlobalActionsMenu();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTopAppHidesStatusBar(parcel.readInt() != 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    addQsTile(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    remQsTile(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    clickQsTile(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    handleSystemKey(parcel.readInt());
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    showShutdownUi(parcel.readInt() != 0, parcel.readString());
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void addQsTile(ComponentName componentName);

    void animateCollapsePanels();

    void animateExpandNotificationsPanel();

    void animateExpandSettingsPanel(String str);

    void appTransitionCancelled();

    void appTransitionFinished();

    void appTransitionPending();

    void appTransitionStarting(long j2, long j3);

    void cancelPreloadRecentApps();

    void clickQsTile(ComponentName componentName);

    void disable(int i2, int i3);

    void dismissKeyboardShortcutsMenu();

    void handleSystemKey(int i2);

    void hideRecentApps(boolean z2, boolean z3);

    void onCameraLaunchGestureDetected(int i2);

    void preloadRecentApps();

    void remQsTile(ComponentName componentName);

    void removeIcon(String str);

    void setIcon(String str, StatusBarIcon statusBarIcon);

    void setImeWindowStatus(IBinder iBinder, int i2, int i3, boolean z2);

    void setSystemUiVisibility(int i2, int i3, int i4, int i5, Rect rect, Rect rect2);

    void setTopAppHidesStatusBar(boolean z2);

    void setWindowState(int i2, int i3);

    void showAssistDisclosure();

    void showGlobalActionsMenu();

    void showPictureInPictureMenu();

    void showRecentApps(boolean z2, boolean z3);

    void showScreenPinningRequest(int i2);

    void showShutdownUi(boolean z2, String str);

    void startAssist(Bundle bundle);

    void toggleKeyboardShortcutsMenu(int i2);

    void togglePanel();

    void toggleRecentApps();

    void toggleSplitScreen();

    void topAppWindowChanged(boolean z2);
}
