package android.view.accessibility;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.MagnificationSpec;

/* JADX INFO: loaded from: classes.dex */
public interface IAccessibilityInteractionConnection extends IInterface {

    public static abstract class Stub extends Binder implements IAccessibilityInteractionConnection {
        private static final String DESCRIPTOR = "android.view.accessibility.IAccessibilityInteractionConnection";
        public static final int TRANSACTION_findAccessibilityNodeInfoByAccessibilityId = 1;
        public static final int TRANSACTION_findAccessibilityNodeInfosByText = 3;
        public static final int TRANSACTION_findAccessibilityNodeInfosByViewId = 2;
        public static final int TRANSACTION_findFocus = 4;
        public static final int TRANSACTION_focusSearch = 5;
        public static final int TRANSACTION_performAccessibilityAction = 6;

        public static class Proxy implements IAccessibilityInteractionConnection {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.view.accessibility.IAccessibilityInteractionConnection
            public void findAccessibilityNodeInfoByAccessibilityId(long j2, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeLong(j3);
                    if (magnificationSpec != null) {
                        parcelObtain.writeInt(1);
                        magnificationSpec.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.accessibility.IAccessibilityInteractionConnection
            public void findAccessibilityNodeInfosByText(long j2, String str, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeLong(j3);
                    if (magnificationSpec != null) {
                        parcelObtain.writeInt(1);
                        magnificationSpec.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.accessibility.IAccessibilityInteractionConnection
            public void findAccessibilityNodeInfosByViewId(long j2, String str, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeLong(j3);
                    if (magnificationSpec != null) {
                        parcelObtain.writeInt(1);
                        magnificationSpec.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.accessibility.IAccessibilityInteractionConnection
            public void findFocus(long j2, int i2, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeLong(j3);
                    if (magnificationSpec != null) {
                        parcelObtain.writeInt(1);
                        magnificationSpec.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.accessibility.IAccessibilityInteractionConnection
            public void focusSearch(long j2, int i2, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeLong(j3);
                    if (magnificationSpec != null) {
                        parcelObtain.writeInt(1);
                        magnificationSpec.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.view.accessibility.IAccessibilityInteractionConnection
            public void performAccessibilityAction(long j2, int i2, Bundle bundle, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iAccessibilityInteractionConnectionCallback != null ? iAccessibilityInteractionConnectionCallback.asBinder() : null);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAccessibilityInteractionConnection asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAccessibilityInteractionConnection)) ? new Proxy(iBinder) : (IAccessibilityInteractionConnection) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    findAccessibilityNodeInfoByAccessibilityId(parcel.readLong(), parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readInt() != 0 ? (MagnificationSpec) MagnificationSpec.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    findAccessibilityNodeInfosByViewId(parcel.readLong(), parcel.readString(), parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readInt() != 0 ? (MagnificationSpec) MagnificationSpec.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    findAccessibilityNodeInfosByText(parcel.readLong(), parcel.readString(), parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readInt() != 0 ? (MagnificationSpec) MagnificationSpec.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    findFocus(parcel.readLong(), parcel.readInt(), parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readInt() != 0 ? (MagnificationSpec) MagnificationSpec.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    focusSearch(parcel.readLong(), parcel.readInt(), parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readInt() != 0 ? (MagnificationSpec) MagnificationSpec.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    performAccessibilityAction(parcel.readLong(), parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), IAccessibilityInteractionConnectionCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readLong());
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void findAccessibilityNodeInfoByAccessibilityId(long j2, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec);

    void findAccessibilityNodeInfosByText(long j2, String str, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec);

    void findAccessibilityNodeInfosByViewId(long j2, String str, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec);

    void findFocus(long j2, int i2, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec);

    void focusSearch(long j2, int i2, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec);

    void performAccessibilityAction(long j2, int i2, Bundle bundle, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3);
}
