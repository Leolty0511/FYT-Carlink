package com.android.internal.telephony;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes3.dex */
public interface ITelephonyEx extends IInterface {

    public static abstract class Stub extends Binder implements ITelephonyEx {
        private static final String DESCRIPTOR = "com.android.internal.telephony.ITelephonyEx";
        static final int TRANSACTION_getCellLocationForPhone = 15;
        static final int TRANSACTION_getDataState = 10;
        static final int TRANSACTION_getHighPriorityPlmn = 1;
        static final int TRANSACTION_getIccFdnEnabledForSubscriber = 7;
        static final int TRANSACTION_getIntFromSharedPreference = 19;
        static final int TRANSACTION_getLTECapabilityForPhone = 9;
        static final int TRANSACTION_getOriginalServiceProviderName = 20;
        static final int TRANSACTION_getPnnHomeName = 16;
        static final int TRANSACTION_getSmscForSubscriber = 5;
        static final int TRANSACTION_getStringFromSharedPreference = 18;
        static final int TRANSACTION_isEnhanced4gLteModeSettingEnabledByUser = 12;
        static final int TRANSACTION_isInternationalNetworkRoaming = 14;
        static final int TRANSACTION_isRingtongUriAvailable = 17;
        static final int TRANSACTION_isUsimCard = 4;
        static final int TRANSACTION_isVolteEnabledByPlatform = 11;
        static final int TRANSACTION_setEnhanced4gLteModeSetting = 13;
        static final int TRANSACTION_setLine1NumberForDisplayForSubscriberEx = 8;
        static final int TRANSACTION_setSimEnabled = 3;
        static final int TRANSACTION_setSmscForSubscriber = 6;
        static final int TRANSACTION_updateNetworkList = 2;

        public static class Proxy implements ITelephonyEx {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public Bundle getCellLocationForPhone(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public int getDataState(int i2) {
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

            @Override // com.android.internal.telephony.ITelephonyEx
            public String getHighPriorityPlmn(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public boolean getIccFdnEnabledForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public int getIntFromSharedPreference(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
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

            @Override // com.android.internal.telephony.ITelephonyEx
            public boolean getLTECapabilityForPhone(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public String getOriginalServiceProviderName(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public String getPnnHomeName(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public String getSmscForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public String getStringFromSharedPreference(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public boolean isEnhanced4gLteModeSettingEnabledByUser(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public boolean isInternationalNetworkRoaming(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public boolean isRingtongUriAvailable(Uri uri) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public boolean isUsimCard(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public boolean isVolteEnabledByPlatform() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public void setEnhanced4gLteModeSetting(boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public boolean setLine1NumberForDisplayForSubscriberEx(int i2, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public void setSimEnabled(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public boolean setSmscForSubscriber(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephonyEx
            public String updateNetworkList(int i2, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITelephonyEx asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITelephonyEx)) ? new Proxy(iBinder) : (ITelephonyEx) iInterfaceQueryLocalInterface;
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
                    String highPriorityPlmn = getHighPriorityPlmn(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(highPriorityPlmn);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strUpdateNetworkList = updateNetworkList(parcel.readInt(), parcel.createStringArray());
                    parcel2.writeNoException();
                    parcel2.writeString(strUpdateNetworkList);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSimEnabled(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsUsimCard = isUsimCard(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsUsimCard ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    String smscForSubscriber = getSmscForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(smscForSubscriber);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean smscForSubscriber2 = setSmscForSubscriber(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(smscForSubscriber2 ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean iccFdnEnabledForSubscriber = getIccFdnEnabledForSubscriber(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iccFdnEnabledForSubscriber ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean line1NumberForDisplayForSubscriberEx = setLine1NumberForDisplayForSubscriberEx(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(line1NumberForDisplayForSubscriberEx ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean lTECapabilityForPhone = getLTECapabilityForPhone(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(lTECapabilityForPhone ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int dataState = getDataState(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(dataState);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsVolteEnabledByPlatform = isVolteEnabledByPlatform();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsVolteEnabledByPlatform ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsEnhanced4gLteModeSettingEnabledByUser = isEnhanced4gLteModeSettingEnabledByUser(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsEnhanced4gLteModeSettingEnabledByUser ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    setEnhanced4gLteModeSetting(parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsInternationalNetworkRoaming = isInternationalNetworkRoaming(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsInternationalNetworkRoaming ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle cellLocationForPhone = getCellLocationForPhone(parcel.readInt());
                    parcel2.writeNoException();
                    if (cellLocationForPhone != null) {
                        parcel2.writeInt(1);
                        cellLocationForPhone.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    String pnnHomeName = getPnnHomeName(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(pnnHomeName);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsRingtongUriAvailable = isRingtongUriAvailable(parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsRingtongUriAvailable ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    String stringFromSharedPreference = getStringFromSharedPreference(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(stringFromSharedPreference);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int intFromSharedPreference = getIntFromSharedPreference(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(intFromSharedPreference);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    String originalServiceProviderName = getOriginalServiceProviderName(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(originalServiceProviderName);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    Bundle getCellLocationForPhone(int i2);

    int getDataState(int i2);

    String getHighPriorityPlmn(int i2, String str);

    boolean getIccFdnEnabledForSubscriber(int i2);

    int getIntFromSharedPreference(String str, String str2);

    boolean getLTECapabilityForPhone(int i2);

    String getOriginalServiceProviderName(int i2);

    String getPnnHomeName(int i2);

    String getSmscForSubscriber(int i2, String str);

    String getStringFromSharedPreference(String str, String str2);

    boolean isEnhanced4gLteModeSettingEnabledByUser(int i2);

    boolean isInternationalNetworkRoaming(int i2);

    boolean isRingtongUriAvailable(Uri uri);

    boolean isUsimCard(int i2);

    boolean isVolteEnabledByPlatform();

    void setEnhanced4gLteModeSetting(boolean z2, int i2);

    boolean setLine1NumberForDisplayForSubscriberEx(int i2, String str, String str2);

    void setSimEnabled(int i2, boolean z2);

    boolean setSmscForSubscriber(String str, int i2);

    String updateNetworkList(int i2, String[] strArr);
}
