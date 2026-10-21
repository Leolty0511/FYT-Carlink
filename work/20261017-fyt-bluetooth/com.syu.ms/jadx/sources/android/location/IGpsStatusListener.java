package android.location;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IGpsStatusListener extends IInterface {

    public static abstract class Stub extends Binder implements IGpsStatusListener {
        private static final String DESCRIPTOR = "android.location.IGpsStatusListener";
        public static final int TRANSACTION_onFirstFix = 3;
        public static final int TRANSACTION_onGpsStarted = 1;
        public static final int TRANSACTION_onGpsStopped = 2;
        public static final int TRANSACTION_onNmeaReceived = 5;
        public static final int TRANSACTION_onSvStatusChanged = 4;

        public static class Proxy implements IGpsStatusListener {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.location.IGpsStatusListener
            public void onFirstFix(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.location.IGpsStatusListener
            public void onGpsStarted() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.location.IGpsStatusListener
            public void onGpsStopped() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.location.IGpsStatusListener
            public void onNmeaReceived(long j2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.location.IGpsStatusListener
            public void onSvStatusChanged(int i2, int[] iArr, float[] fArr, float[] fArr2, float[] fArr3, int[] iArr2, int[] iArr3, int[] iArr4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeFloatArray(fArr);
                    parcelObtain.writeFloatArray(fArr2);
                    parcelObtain.writeFloatArray(fArr3);
                    parcelObtain.writeIntArray(iArr2);
                    parcelObtain.writeIntArray(iArr3);
                    parcelObtain.writeIntArray(iArr4);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IGpsStatusListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGpsStatusListener)) ? new Proxy(iBinder) : (IGpsStatusListener) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onGpsStarted();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onGpsStopped();
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onFirstFix(parcel.readInt());
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                onSvStatusChanged(parcel.readInt(), parcel.createIntArray(), parcel.createFloatArray(), parcel.createFloatArray(), parcel.createFloatArray(), parcel.createIntArray(), parcel.createIntArray(), parcel.createIntArray());
                return true;
            }
            if (i2 == 5) {
                parcel.enforceInterface(DESCRIPTOR);
                onNmeaReceived(parcel.readLong(), parcel.readString());
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onFirstFix(int i2);

    void onGpsStarted();

    void onGpsStopped();

    void onNmeaReceived(long j2, String str);

    void onSvStatusChanged(int i2, int[] iArr, float[] fArr, float[] fArr2, float[] fArr3, int[] iArr2, int[] iArr3, int[] iArr4);
}
