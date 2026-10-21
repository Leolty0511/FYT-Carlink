package com.android.ims.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IImsServiceEx extends IInterface {

    public static abstract class Stub extends Binder implements IImsServiceEx {
        private static final String DESCRIPTOR = "com.android.ims.internal.IImsServiceEx";
        static final int TRANSACTION_addImsPdnStateListener = 26;
        static final int TRANSACTION_cancelCurrentRequest = 9;
        static final int TRANSACTION_getAliveCallJitter = 19;
        static final int TRANSACTION_getAliveCallLose = 18;
        static final int TRANSACTION_getAliveCallRtt = 20;
        static final int TRANSACTION_getCLIRStatus = 28;
        static final int TRANSACTION_getCallType = 22;
        static final int TRANSACTION_getCallWaitingStatus = 33;
        static final int TRANSACTION_getCurLocalAddress = 16;
        static final int TRANSACTION_getCurPcscfAddress = 13;
        static final int TRANSACTION_getCurrentImsFeature = 4;
        static final int TRANSACTION_getCurrentImsVideoState = 17;
        static final int TRANSACTION_getImsPcscfAddress = 24;
        static final int TRANSACTION_getImsRegAddress = 6;
        static final int TRANSACTION_getVolteRegisterState = 21;
        static final int TRANSACTION_isSupportMobike = 32;
        static final int TRANSACTION_notifyNetworkUnavailable = 3;
        static final int TRANSACTION_notifySrvccCallInfos = 23;
        static final int TRANSACTION_notifyVideoCapabilityChange = 30;
        static final int TRANSACTION_registerforImsRegisterStateChanged = 10;
        static final int TRANSACTION_releaseVoWifiResource = 7;
        static final int TRANSACTION_removeImsPdnStateListener = 27;
        static final int TRANSACTION_setImsServiceListener = 5;
        static final int TRANSACTION_setMonitorPeriodForNoData = 14;
        static final int TRANSACTION_setVoWifiUnavailable = 8;
        static final int TRANSACTION_setVowifiRegister = 25;
        static final int TRANSACTION_showVowifiNotification = 15;
        static final int TRANSACTION_startHandover = 2;
        static final int TRANSACTION_startMobike = 31;
        static final int TRANSACTION_switchImsFeature = 1;
        static final int TRANSACTION_terminateCalls = 12;
        static final int TRANSACTION_unregisterforImsRegisterStateChanged = 11;
        static final int TRANSACTION_updateCLIRStatus = 29;

        public static class Proxy implements IImsServiceEx {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void addImsPdnStateListener(int i2, IImsPdnStateListener iImsPdnStateListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iImsPdnStateListener != null ? iImsPdnStateListener.asBinder() : null);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
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

            @Override // com.android.ims.internal.IImsServiceEx
            public int cancelCurrentRequest() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int getAliveCallJitter() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int getAliveCallLose() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int getAliveCallRtt() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int getCLIRStatus(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int getCallType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void getCallWaitingStatus(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public String getCurLocalAddress() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public String getCurPcscfAddress() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int getCurrentImsFeature() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int getCurrentImsVideoState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public String getImsPcscfAddress() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public String getImsRegAddress() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int getVolteRegisterState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public boolean isSupportMobike() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void notifyNetworkUnavailable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void notifySrvccCallInfos(List<ImsSrvccCallInfo> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(list);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void notifyVideoCapabilityChange() {
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

            @Override // com.android.ims.internal.IImsServiceEx
            public void registerforImsRegisterStateChanged(IImsRegisterListener iImsRegisterListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsRegisterListener != null ? iImsRegisterListener.asBinder() : null);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int releaseVoWifiResource() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void removeImsPdnStateListener(int i2, IImsPdnStateListener iImsPdnStateListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iImsPdnStateListener != null ? iImsPdnStateListener.asBinder() : null);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void setImsServiceListener(IImsServiceListenerEx iImsServiceListenerEx) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsServiceListenerEx != null ? iImsServiceListenerEx.asBinder() : null);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void setMonitorPeriodForNoData(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int setVoWifiUnavailable(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void setVowifiRegister(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void showVowifiNotification() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int startHandover(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void startMobike() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int switchImsFeature(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void terminateCalls(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public void unregisterforImsRegisterStateChanged(IImsRegisterListener iImsRegisterListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsRegisterListener != null ? iImsRegisterListener.asBinder() : null);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsServiceEx
            public int updateCLIRStatus(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
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

        public static IImsServiceEx asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IImsServiceEx)) ? new Proxy(iBinder) : (IImsServiceEx) iInterfaceQueryLocalInterface;
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
                    int iSwitchImsFeature = switchImsFeature(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSwitchImsFeature);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStartHandover = startHandover(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartHandover);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyNetworkUnavailable();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentImsFeature = getCurrentImsFeature();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentImsFeature);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    setImsServiceListener(IImsServiceListenerEx.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String imsRegAddress = getImsRegAddress();
                    parcel2.writeNoException();
                    parcel2.writeString(imsRegAddress);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iReleaseVoWifiResource = releaseVoWifiResource();
                    parcel2.writeNoException();
                    parcel2.writeInt(iReleaseVoWifiResource);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voWifiUnavailable = setVoWifiUnavailable(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(voWifiUnavailable);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCancelCurrentRequest = cancelCurrentRequest();
                    parcel2.writeNoException();
                    parcel2.writeInt(iCancelCurrentRequest);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerforImsRegisterStateChanged(IImsRegisterListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterforImsRegisterStateChanged(IImsRegisterListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    terminateCalls(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    String curPcscfAddress = getCurPcscfAddress();
                    parcel2.writeNoException();
                    parcel2.writeString(curPcscfAddress);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMonitorPeriodForNoData(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    showVowifiNotification();
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    String curLocalAddress = getCurLocalAddress();
                    parcel2.writeNoException();
                    parcel2.writeString(curLocalAddress);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentImsVideoState = getCurrentImsVideoState();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentImsVideoState);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    int aliveCallLose = getAliveCallLose();
                    parcel2.writeNoException();
                    parcel2.writeInt(aliveCallLose);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int aliveCallJitter = getAliveCallJitter();
                    parcel2.writeNoException();
                    parcel2.writeInt(aliveCallJitter);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int aliveCallRtt = getAliveCallRtt();
                    parcel2.writeNoException();
                    parcel2.writeInt(aliveCallRtt);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int volteRegisterState = getVolteRegisterState();
                    parcel2.writeNoException();
                    parcel2.writeInt(volteRegisterState);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int callType = getCallType();
                    parcel2.writeNoException();
                    parcel2.writeInt(callType);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifySrvccCallInfos(parcel.createTypedArrayList(ImsSrvccCallInfo.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    String imsPcscfAddress = getImsPcscfAddress();
                    parcel2.writeNoException();
                    parcel2.writeString(imsPcscfAddress);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVowifiRegister(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    addImsPdnStateListener(parcel.readInt(), IImsPdnStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeImsPdnStateListener(parcel.readInt(), IImsPdnStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cLIRStatus = getCLIRStatus(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(cLIRStatus);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUpdateCLIRStatus = updateCLIRStatus(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iUpdateCLIRStatus);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyVideoCapabilityChange();
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    startMobike();
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSupportMobike = isSupportMobike();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSupportMobike ? 1 : 0);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    getCallWaitingStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void addImsPdnStateListener(int i2, IImsPdnStateListener iImsPdnStateListener);

    int cancelCurrentRequest();

    int getAliveCallJitter();

    int getAliveCallLose();

    int getAliveCallRtt();

    int getCLIRStatus(int i2);

    int getCallType();

    void getCallWaitingStatus(int i2);

    String getCurLocalAddress();

    String getCurPcscfAddress();

    int getCurrentImsFeature();

    int getCurrentImsVideoState();

    String getImsPcscfAddress();

    String getImsRegAddress();

    int getVolteRegisterState();

    boolean isSupportMobike();

    void notifyNetworkUnavailable();

    void notifySrvccCallInfos(List<ImsSrvccCallInfo> list);

    void notifyVideoCapabilityChange();

    void registerforImsRegisterStateChanged(IImsRegisterListener iImsRegisterListener);

    int releaseVoWifiResource();

    void removeImsPdnStateListener(int i2, IImsPdnStateListener iImsPdnStateListener);

    void setImsServiceListener(IImsServiceListenerEx iImsServiceListenerEx);

    void setMonitorPeriodForNoData(int i2);

    int setVoWifiUnavailable(int i2, boolean z2);

    void setVowifiRegister(int i2);

    void showVowifiNotification();

    int startHandover(int i2);

    void startMobike();

    int switchImsFeature(int i2);

    void terminateCalls(int i2);

    void unregisterforImsRegisterStateChanged(IImsRegisterListener iImsRegisterListener);

    int updateCLIRStatus(int i2);
}
