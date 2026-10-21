package com.android.internal.telecom;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.telecom.PhoneAccountHandle;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface IInCallAdapter extends IInterface {

    public static abstract class Stub extends Binder implements IInCallAdapter {
        private static final String DESCRIPTOR = "com.android.internal.telecom.IInCallAdapter";
        static final int TRANSACTION_answerCall = 1;
        static final int TRANSACTION_conference = 12;
        static final int TRANSACTION_disconnectCall = 3;
        static final int TRANSACTION_holdCall = 4;
        static final int TRANSACTION_mergeConference = 14;
        static final int TRANSACTION_mute = 6;
        static final int TRANSACTION_phoneAccountSelected = 11;
        static final int TRANSACTION_playDtmfTone = 8;
        static final int TRANSACTION_postDialContinue = 10;
        static final int TRANSACTION_pullExternalCall = 18;
        static final int TRANSACTION_putExtras = 20;
        static final int TRANSACTION_rejectCall = 2;
        static final int TRANSACTION_removeExtras = 21;
        static final int TRANSACTION_respondToRttRequest = 23;
        static final int TRANSACTION_sendCallEvent = 19;
        static final int TRANSACTION_sendRttRequest = 22;
        static final int TRANSACTION_setAudioRoute = 7;
        static final int TRANSACTION_setRttMode = 25;
        static final int TRANSACTION_splitFromConference = 13;
        static final int TRANSACTION_stopDtmfTone = 9;
        static final int TRANSACTION_stopRtt = 24;
        static final int TRANSACTION_swapConference = 15;
        static final int TRANSACTION_turnOffProximitySensor = 17;
        static final int TRANSACTION_turnOnProximitySensor = 16;
        static final int TRANSACTION_unholdCall = 5;

        public static class Proxy implements IInCallAdapter {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void answerCall(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void conference(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void disconnectCall(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void holdCall(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void mergeConference(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(14, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void mute(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void phoneAccountSelected(String str, PhoneAccountHandle phoneAccountHandle, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (phoneAccountHandle != null) {
                        parcelObtain.writeInt(1);
                        phoneAccountHandle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(11, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void playDtmfTone(String str, char c) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(c);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void postDialContinue(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void pullExternalCall(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(18, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void putExtras(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(20, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void rejectCall(String str, boolean z2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void removeExtras(String str, List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(21, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void respondToRttRequest(String str, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(23, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void sendCallEvent(String str, String str2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(19, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void sendRttRequest(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(22, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void setAudioRoute(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void setRttMode(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(25, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void splitFromConference(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void stopDtmfTone(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void stopRtt(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(24, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void swapConference(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(15, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void turnOffProximitySensor(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(17, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void turnOnProximitySensor() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telecom.IInCallAdapter
            public void unholdCall(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IInCallAdapter asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IInCallAdapter)) ? new Proxy(iBinder) : (IInCallAdapter) iInterfaceQueryLocalInterface;
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
                    answerCall(parcel.readString(), parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    rejectCall(parcel.readString(), parcel.readInt() != 0, parcel.readString());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    disconnectCall(parcel.readString());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    holdCall(parcel.readString());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    unholdCall(parcel.readString());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    mute(parcel.readInt() != 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAudioRoute(parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    playDtmfTone(parcel.readString(), (char) parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopDtmfTone(parcel.readString());
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    postDialContinue(parcel.readString(), parcel.readInt() != 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    phoneAccountSelected(parcel.readString(), parcel.readInt() != 0 ? PhoneAccountHandle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    conference(parcel.readString(), parcel.readString());
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    splitFromConference(parcel.readString());
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    mergeConference(parcel.readString());
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    swapConference(parcel.readString());
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    turnOnProximitySensor();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    turnOffProximitySensor(parcel.readInt() != 0);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    pullExternalCall(parcel.readString());
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendCallEvent(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    putExtras(parcel.readString(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeExtras(parcel.readString(), parcel.createStringArrayList());
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendRttRequest(parcel.readString());
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    respondToRttRequest(parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopRtt(parcel.readString());
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRttMode(parcel.readString(), parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void answerCall(String str, int i2);

    void conference(String str, String str2);

    void disconnectCall(String str);

    void holdCall(String str);

    void mergeConference(String str);

    void mute(boolean z2);

    void phoneAccountSelected(String str, PhoneAccountHandle phoneAccountHandle, boolean z2);

    void playDtmfTone(String str, char c);

    void postDialContinue(String str, boolean z2);

    void pullExternalCall(String str);

    void putExtras(String str, Bundle bundle);

    void rejectCall(String str, boolean z2, String str2);

    void removeExtras(String str, List<String> list);

    void respondToRttRequest(String str, int i2, boolean z2);

    void sendCallEvent(String str, String str2, Bundle bundle);

    void sendRttRequest(String str);

    void setAudioRoute(int i2);

    void setRttMode(String str, int i2);

    void splitFromConference(String str);

    void stopDtmfTone(String str);

    void stopRtt(String str);

    void swapConference(String str);

    void turnOffProximitySensor(boolean z2);

    void turnOnProximitySensor();

    void unholdCall(String str);
}
