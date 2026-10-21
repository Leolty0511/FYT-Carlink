package android.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IRemoteControlClient extends IInterface {

    public static abstract class Stub extends Binder implements IRemoteControlClient {
        private static final String DESCRIPTOR = "android.media.IRemoteControlClient";
        public static final int TRANSACTION_enableRemoteControlDisplay = 8;
        public static final int TRANSACTION_informationRequestForDisplay = 2;
        public static final int TRANSACTION_onInformationRequested = 1;
        public static final int TRANSACTION_plugRemoteControlDisplay = 4;
        public static final int TRANSACTION_seekTo = 9;
        public static final int TRANSACTION_setBitmapSizeForDisplay = 6;
        public static final int TRANSACTION_setCurrentClientGenerationId = 3;
        public static final int TRANSACTION_setWantsSyncForDisplay = 7;
        public static final int TRANSACTION_unplugRemoteControlDisplay = 5;
        public static final int TRANSACTION_updateMetadata = 10;

        public static class Proxy implements IRemoteControlClient {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.media.IRemoteControlClient
            public void enableRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.media.IRemoteControlClient
            public void informationRequestForDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IRemoteControlClient
            public void onInformationRequested(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IRemoteControlClient
            public void plugRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IRemoteControlClient
            public void seekTo(int i2, long j2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IRemoteControlClient
            public void setBitmapSizeForDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IRemoteControlClient
            public void setCurrentClientGenerationId(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IRemoteControlClient
            public void setWantsSyncForDisplay(IRemoteControlDisplay iRemoteControlDisplay, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IRemoteControlClient
            public void unplugRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IRemoteControlClient
            public void updateMetadata(int i2, int i3, Rating rating) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (rating != null) {
                        parcelObtain.writeInt(1);
                        rating.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRemoteControlClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRemoteControlClient)) ? new Proxy(iBinder) : (IRemoteControlClient) iInterfaceQueryLocalInterface;
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
                    onInformationRequested(parcel.readInt(), parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    informationRequestForDisplay(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCurrentClientGenerationId(parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    plugRemoteControlDisplay(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    unplugRemoteControlDisplay(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBitmapSizeForDisplay(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWantsSyncForDisplay(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableRemoteControlDisplay(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    seekTo(parcel.readInt(), parcel.readLong());
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateMetadata(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Rating.CREATOR.createFromParcel(parcel) : null);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void enableRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay, boolean z2);

    void informationRequestForDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3);

    void onInformationRequested(int i2, int i3);

    void plugRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3);

    void seekTo(int i2, long j2);

    void setBitmapSizeForDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3);

    void setCurrentClientGenerationId(int i2);

    void setWantsSyncForDisplay(IRemoteControlDisplay iRemoteControlDisplay, boolean z2);

    void unplugRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay);

    void updateMetadata(int i2, int i3, Rating rating);
}
