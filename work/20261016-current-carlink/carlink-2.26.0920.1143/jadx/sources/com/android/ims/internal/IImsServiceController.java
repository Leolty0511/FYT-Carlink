package com.android.ims.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import com.android.ims.ImsCallProfile;

/* JADX INFO: loaded from: classes2.dex */
public interface IImsServiceController extends IInterface {

    public static abstract class Stub extends Binder implements IImsServiceController {
        private static final String DESCRIPTOR = "com.android.ims.internal.IImsServiceController";
        static final int TRANSACTION_addRegistrationListener = 8;
        static final int TRANSACTION_createCallProfile = 10;
        static final int TRANSACTION_createCallSession = 11;
        static final int TRANSACTION_createImsFeature = 1;
        static final int TRANSACTION_endSession = 4;
        static final int TRANSACTION_getConfigInterface = 14;
        static final int TRANSACTION_getEcbmInterface = 17;
        static final int TRANSACTION_getFeatureStatus = 7;
        static final int TRANSACTION_getMultiEndpointInterface = 19;
        static final int TRANSACTION_getPendingCallSession = 12;
        static final int TRANSACTION_getUtInterface = 13;
        static final int TRANSACTION_isConnected = 5;
        static final int TRANSACTION_isOpened = 6;
        static final int TRANSACTION_removeImsFeature = 2;
        static final int TRANSACTION_removeRegistrationListener = 9;
        static final int TRANSACTION_setUiTTYMode = 18;
        static final int TRANSACTION_startSession = 3;
        static final int TRANSACTION_turnOffIms = 16;
        static final int TRANSACTION_turnOnIms = 15;

        public static class Proxy implements IImsServiceController {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.android.ims.internal.IImsServiceController
            public void addRegistrationListener(int i2, int i3, IImsRegistrationListener iImsRegistrationListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iImsRegistrationListener != null ? iImsRegistrationListener.asBinder() : null);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
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

            @Override // com.android.ims.internal.IImsServiceController
            public ImsCallProfile createCallProfile(int i2, int i3, int i4, int i5, int i6) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public IImsCallSession createCallSession(int i2, int i3, int i4, ImsCallProfile imsCallProfile, IImsCallSessionListener iImsCallSessionListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iImsCallSessionListener != null ? iImsCallSessionListener.asBinder() : null);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IImsCallSession.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public void createImsFeature(int i2, int i3, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iImsFeatureStatusCallback != null ? iImsFeatureStatusCallback.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public void endSession(int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public IImsConfig getConfigInterface(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IImsConfig.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public IImsEcbm getEcbmInterface(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IImsEcbm.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public int getFeatureStatus(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.ims.internal.IImsServiceController
            public IImsMultiEndpoint getMultiEndpointInterface(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IImsMultiEndpoint.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public IImsCallSession getPendingCallSession(int i2, int i3, int i4, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IImsCallSession.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public IImsUt getUtInterface(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IImsUt.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public boolean isConnected(int i2, int i3, int i4, int i5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public boolean isOpened(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public void removeImsFeature(int i2, int i3, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iImsFeatureStatusCallback != null ? iImsFeatureStatusCallback.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public void removeRegistrationListener(int i2, int i3, IImsRegistrationListener iImsRegistrationListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iImsRegistrationListener != null ? iImsRegistrationListener.asBinder() : null);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public void setUiTTYMode(int i2, int i3, int i4, Message message) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    if (message != null) {
                        parcelObtain.writeInt(1);
                        message.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public int startSession(int i2, int i3, PendingIntent pendingIntent, IImsRegistrationListener iImsRegistrationListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iImsRegistrationListener != null ? iImsRegistrationListener.asBinder() : null);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public void turnOffIms(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceController
            public void turnOnIms(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IImsServiceController asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IImsServiceController)) ? new Proxy(iBinder) : (IImsServiceController) iInterfaceQueryLocalInterface;
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
                    createImsFeature(parcel.readInt(), parcel.readInt(), IImsFeatureStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeImsFeature(parcel.readInt(), parcel.readInt(), IImsFeatureStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStartSession = startSession(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, IImsRegistrationListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartSession);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    endSession(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsConnected = isConnected(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsConnected ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsOpened = isOpened(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsOpened ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int featureStatus = getFeatureStatus(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(featureStatus);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    addRegistrationListener(parcel.readInt(), parcel.readInt(), IImsRegistrationListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeRegistrationListener(parcel.readInt(), parcel.readInt(), IImsRegistrationListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    ImsCallProfile imsCallProfileCreateCallProfile = createCallProfile(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (imsCallProfileCreateCallProfile != null) {
                        parcel2.writeInt(1);
                        imsCallProfileCreateCallProfile.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    IImsCallSession iImsCallSessionCreateCallSession = createCallSession(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null, IImsCallSessionListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iImsCallSessionCreateCallSession != null ? iImsCallSessionCreateCallSession.asBinder() : null);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    IImsCallSession pendingCallSession = getPendingCallSession(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(pendingCallSession != null ? pendingCallSession.asBinder() : null);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    IImsUt utInterface = getUtInterface(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(utInterface != null ? utInterface.asBinder() : null);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    IImsConfig configInterface = getConfigInterface(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(configInterface != null ? configInterface.asBinder() : null);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    turnOnIms(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    turnOffIms(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    IImsEcbm ecbmInterface = getEcbmInterface(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(ecbmInterface != null ? ecbmInterface.asBinder() : null);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUiTTYMode(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Message.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    IImsMultiEndpoint multiEndpointInterface = getMultiEndpointInterface(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(multiEndpointInterface != null ? multiEndpointInterface.asBinder() : null);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void addRegistrationListener(int i2, int i3, IImsRegistrationListener iImsRegistrationListener);

    ImsCallProfile createCallProfile(int i2, int i3, int i4, int i5, int i6);

    IImsCallSession createCallSession(int i2, int i3, int i4, ImsCallProfile imsCallProfile, IImsCallSessionListener iImsCallSessionListener);

    void createImsFeature(int i2, int i3, IImsFeatureStatusCallback iImsFeatureStatusCallback);

    void endSession(int i2, int i3, int i4);

    IImsConfig getConfigInterface(int i2, int i3);

    IImsEcbm getEcbmInterface(int i2, int i3);

    int getFeatureStatus(int i2, int i3);

    IImsMultiEndpoint getMultiEndpointInterface(int i2, int i3);

    IImsCallSession getPendingCallSession(int i2, int i3, int i4, String str);

    IImsUt getUtInterface(int i2, int i3);

    boolean isConnected(int i2, int i3, int i4, int i5);

    boolean isOpened(int i2, int i3);

    void removeImsFeature(int i2, int i3, IImsFeatureStatusCallback iImsFeatureStatusCallback);

    void removeRegistrationListener(int i2, int i3, IImsRegistrationListener iImsRegistrationListener);

    void setUiTTYMode(int i2, int i3, int i4, Message message);

    int startSession(int i2, int i3, PendingIntent pendingIntent, IImsRegistrationListener iImsRegistrationListener);

    void turnOffIms(int i2, int i3);

    void turnOnIms(int i2, int i3);
}
