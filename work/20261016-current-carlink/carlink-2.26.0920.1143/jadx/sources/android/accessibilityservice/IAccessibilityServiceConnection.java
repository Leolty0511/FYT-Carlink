package android.accessibilityservice;

import android.content.pm.ParceledListSlice;
import android.graphics.Region;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.accessibility.AccessibilityWindowInfo;
import android.view.accessibility.IAccessibilityInteractionConnectionCallback;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IAccessibilityServiceConnection extends IInterface {

    public static abstract class Stub extends Binder implements IAccessibilityServiceConnection {
        private static final String DESCRIPTOR = "android.accessibilityservice.IAccessibilityServiceConnection";
        static final int TRANSACTION_disableSelf = 12;
        static final int TRANSACTION_findAccessibilityNodeInfoByAccessibilityId = 2;
        static final int TRANSACTION_findAccessibilityNodeInfosByText = 3;
        static final int TRANSACTION_findAccessibilityNodeInfosByViewId = 4;
        static final int TRANSACTION_findFocus = 5;
        static final int TRANSACTION_focusSearch = 6;
        static final int TRANSACTION_getMagnificationCenterX = 15;
        static final int TRANSACTION_getMagnificationCenterY = 16;
        static final int TRANSACTION_getMagnificationRegion = 17;
        static final int TRANSACTION_getMagnificationScale = 14;
        static final int TRANSACTION_getServiceInfo = 10;
        static final int TRANSACTION_getWindow = 8;
        static final int TRANSACTION_getWindows = 9;
        static final int TRANSACTION_isAccessibilityButtonAvailable = 23;
        static final int TRANSACTION_isFingerprintGestureDetectionAvailable = 25;
        static final int TRANSACTION_performAccessibilityAction = 7;
        static final int TRANSACTION_performGlobalAction = 11;
        static final int TRANSACTION_resetMagnification = 18;
        static final int TRANSACTION_sendGesture = 24;
        static final int TRANSACTION_setMagnificationCallbackEnabled = 20;
        static final int TRANSACTION_setMagnificationScaleAndCenter = 19;
        static final int TRANSACTION_setOnKeyEventResult = 13;
        static final int TRANSACTION_setServiceInfo = 1;
        static final int TRANSACTION_setSoftKeyboardCallbackEnabled = 22;
        static final int TRANSACTION_setSoftKeyboardShowMode = 21;

        public static class Proxy implements IAccessibilityServiceConnection {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public void disableSelf() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean findAccessibilityNodeInfoByAccessibilityId(int i2, long j2, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, long j3, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeLong(j3);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean findAccessibilityNodeInfosByText(int i2, long j2, String str, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, long j3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean findAccessibilityNodeInfosByViewId(int i2, long j2, String str, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, long j3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean findFocus(int i2, long j2, int i3, int i4, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, long j3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean focusSearch(int i2, long j2, int i3, int i4, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, long j3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public float getMagnificationCenterX() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readFloat();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public float getMagnificationCenterY() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readFloat();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public Region getMagnificationRegion() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Region.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public float getMagnificationScale() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readFloat();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public AccessibilityServiceInfo getServiceInfo() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AccessibilityServiceInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public AccessibilityWindowInfo getWindow(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AccessibilityWindowInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public List<AccessibilityWindowInfo> getWindows() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(AccessibilityWindowInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean isAccessibilityButtonAvailable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean isFingerprintGestureDetectionAvailable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean performAccessibilityAction(int i2, long j2, int i3, Bundle bundle, int i4, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, long j3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i3);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean performGlobalAction(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean resetMagnification(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public void sendGesture(int i2, ParceledListSlice parceledListSlice) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (parceledListSlice != null) {
                        parcelObtain.writeInt(1);
                        parceledListSlice.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public void setMagnificationCallbackEnabled(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean setMagnificationScaleAndCenter(float f2, float f3, float f4, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeFloat(f3);
                    parcelObtain.writeFloat(f4);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public void setOnKeyEventResult(boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public void setServiceInfo(AccessibilityServiceInfo accessibilityServiceInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (accessibilityServiceInfo != null) {
                        parcelObtain.writeInt(1);
                        accessibilityServiceInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public void setSoftKeyboardCallbackEnabled(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceConnection
            public boolean setSoftKeyboardShowMode(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAccessibilityServiceConnection asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAccessibilityServiceConnection)) ? new Proxy(iBinder) : (IAccessibilityServiceConnection) iInterfaceQueryLocalInterface;
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
                    setServiceInfo(parcel.readInt() != 0 ? AccessibilityServiceInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zFindAccessibilityNodeInfoByAccessibilityId = findAccessibilityNodeInfoByAccessibilityId(parcel.readInt(), parcel.readLong(), parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readLong(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zFindAccessibilityNodeInfoByAccessibilityId ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zFindAccessibilityNodeInfosByText = findAccessibilityNodeInfosByText(parcel.readInt(), parcel.readLong(), parcel.readString(), parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFindAccessibilityNodeInfosByText ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zFindAccessibilityNodeInfosByViewId = findAccessibilityNodeInfosByViewId(parcel.readInt(), parcel.readLong(), parcel.readString(), parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFindAccessibilityNodeInfosByViewId ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zFindFocus = findFocus(parcel.readInt(), parcel.readLong(), parcel.readInt(), parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFindFocus ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zFocusSearch = focusSearch(parcel.readInt(), parcel.readLong(), parcel.readInt(), parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFocusSearch ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPerformAccessibilityAction = performAccessibilityAction(parcel.readInt(), parcel.readLong(), parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zPerformAccessibilityAction ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    AccessibilityWindowInfo window = getWindow(parcel.readInt());
                    parcel2.writeNoException();
                    if (window != null) {
                        parcel2.writeInt(1);
                        window.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<AccessibilityWindowInfo> windows = getWindows();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(windows);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    AccessibilityServiceInfo serviceInfo = getServiceInfo();
                    parcel2.writeNoException();
                    if (serviceInfo != null) {
                        parcel2.writeInt(1);
                        serviceInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPerformGlobalAction = performGlobalAction(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zPerformGlobalAction ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableSelf();
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    setOnKeyEventResult(parcel.readInt() != 0, parcel.readInt());
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    float magnificationScale = getMagnificationScale();
                    parcel2.writeNoException();
                    parcel2.writeFloat(magnificationScale);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    float magnificationCenterX = getMagnificationCenterX();
                    parcel2.writeNoException();
                    parcel2.writeFloat(magnificationCenterX);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    float magnificationCenterY = getMagnificationCenterY();
                    parcel2.writeNoException();
                    parcel2.writeFloat(magnificationCenterY);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    Region magnificationRegion = getMagnificationRegion();
                    parcel2.writeNoException();
                    if (magnificationRegion != null) {
                        parcel2.writeInt(1);
                        magnificationRegion.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zResetMagnification = resetMagnification(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zResetMagnification ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean magnificationScaleAndCenter = setMagnificationScaleAndCenter(parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(magnificationScaleAndCenter ? 1 : 0);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMagnificationCallbackEnabled(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean softKeyboardShowMode = setSoftKeyboardShowMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(softKeyboardShowMode ? 1 : 0);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSoftKeyboardCallbackEnabled(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsAccessibilityButtonAvailable = isAccessibilityButtonAvailable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAccessibilityButtonAvailable ? 1 : 0);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendGesture(parcel.readInt(), parcel.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsFingerprintGestureDetectionAvailable = isFingerprintGestureDetectionAvailable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsFingerprintGestureDetectionAvailable ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void disableSelf();

    boolean findAccessibilityNodeInfoByAccessibilityId(int i2, long j2, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, long j3, Bundle bundle);

    boolean findAccessibilityNodeInfosByText(int i2, long j2, String str, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, long j3);

    boolean findAccessibilityNodeInfosByViewId(int i2, long j2, String str, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, long j3);

    boolean findFocus(int i2, long j2, int i3, int i4, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, long j3);

    boolean focusSearch(int i2, long j2, int i3, int i4, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, long j3);

    float getMagnificationCenterX();

    float getMagnificationCenterY();

    Region getMagnificationRegion();

    float getMagnificationScale();

    AccessibilityServiceInfo getServiceInfo();

    AccessibilityWindowInfo getWindow(int i2);

    List<AccessibilityWindowInfo> getWindows();

    boolean isAccessibilityButtonAvailable();

    boolean isFingerprintGestureDetectionAvailable();

    boolean performAccessibilityAction(int i2, long j2, int i3, Bundle bundle, int i4, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, long j3);

    boolean performGlobalAction(int i2);

    boolean resetMagnification(boolean z2);

    void sendGesture(int i2, ParceledListSlice parceledListSlice);

    void setMagnificationCallbackEnabled(boolean z2);

    boolean setMagnificationScaleAndCenter(float f2, float f3, float f4, boolean z2);

    void setOnKeyEventResult(boolean z2, int i2);

    void setServiceInfo(AccessibilityServiceInfo accessibilityServiceInfo);

    void setSoftKeyboardCallbackEnabled(boolean z2);

    boolean setSoftKeyboardShowMode(int i2);
}
