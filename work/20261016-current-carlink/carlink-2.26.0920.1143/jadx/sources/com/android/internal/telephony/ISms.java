package com.android.internal.telephony;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface ISms extends IInterface {

    public static abstract class Stub extends Binder implements ISms {
        private static final String DESCRIPTOR = "com.android.internal.telephony.ISms";
        static final int TRANSACTION_copyMessageToIccEfForSubscriber = 3;
        static final int TRANSACTION_createAppSpecificSmsToken = 25;
        static final int TRANSACTION_disableCellBroadcastForSubscriber = 11;
        static final int TRANSACTION_disableCellBroadcastRangeForSubscriber = 13;
        static final int TRANSACTION_enableCellBroadcastForSubscriber = 10;
        static final int TRANSACTION_enableCellBroadcastRangeForSubscriber = 12;
        static final int TRANSACTION_getAllMessagesFromIccEfForSubscriber = 1;
        static final int TRANSACTION_getImsSmsFormatForSubscriber = 21;
        static final int TRANSACTION_getPreferredSmsSubscription = 20;
        static final int TRANSACTION_getPremiumSmsPermission = 14;
        static final int TRANSACTION_getPremiumSmsPermissionForSubscriber = 15;
        static final int TRANSACTION_injectSmsPduForSubscriber = 8;
        static final int TRANSACTION_isImsSmsSupportedForSubscriber = 18;
        static final int TRANSACTION_isSMSPromptEnabled = 22;
        static final int TRANSACTION_isSmsSimPickActivityNeeded = 19;
        static final int TRANSACTION_sendDataForSubscriber = 4;
        static final int TRANSACTION_sendDataForSubscriberWithSelfPermissions = 5;
        static final int TRANSACTION_sendMultipartTextForSubscriber = 9;
        static final int TRANSACTION_sendStoredMultipartText = 24;
        static final int TRANSACTION_sendStoredText = 23;
        static final int TRANSACTION_sendTextForSubscriber = 6;
        static final int TRANSACTION_sendTextForSubscriberWithSelfPermissions = 7;
        static final int TRANSACTION_setPremiumSmsPermission = 16;
        static final int TRANSACTION_setPremiumSmsPermissionForSubscriber = 17;
        static final int TRANSACTION_updateMessageOnIccEfForSubscriber = 2;

        public static class Proxy implements ISms {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.internal.telephony.ISms
            public boolean copyMessageToIccEfForSubscriber(int i2, String str, int i3, byte[] bArr, byte[] bArr2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeByteArray(bArr2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public String createAppSpecificSmsToken(int i2, String str, PendingIntent pendingIntent) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public boolean disableCellBroadcastForSubscriber(int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public boolean disableCellBroadcastRangeForSubscriber(int i2, int i3, int i4, int i5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public boolean enableCellBroadcastForSubscriber(int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public boolean enableCellBroadcastRangeForSubscriber(int i2, int i3, int i4, int i5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public List<SmsRawData> getAllMessagesFromIccEfForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(SmsRawData.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public String getImsSmsFormatForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
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

            @Override // com.android.internal.telephony.ISms
            public int getPreferredSmsSubscription() {
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

            @Override // com.android.internal.telephony.ISms
            public int getPremiumSmsPermission(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public int getPremiumSmsPermissionForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public void injectSmsPduForSubscriber(int i2, byte[] bArr, String str, PendingIntent pendingIntent) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeString(str);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public boolean isImsSmsSupportedForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public boolean isSMSPromptEnabled() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public boolean isSmsSimPickActivityNeeded(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public void sendDataForSubscriber(int i2, String str, String str2, String str3, int i3, byte[] bArr, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeByteArray(bArr);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (pendingIntent2 != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public void sendDataForSubscriberWithSelfPermissions(int i2, String str, String str2, String str3, int i3, byte[] bArr, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeByteArray(bArr);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (pendingIntent2 != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public void sendMultipartTextForSubscriber(int i2, String str, String str2, String str3, List<String> list, List<PendingIntent> list2, List<PendingIntent> list3, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeTypedList(list2);
                    parcelObtain.writeTypedList(list3);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public void sendStoredMultipartText(int i2, String str, Uri uri, String str2, List<PendingIntent> list, List<PendingIntent> list2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    parcelObtain.writeTypedList(list);
                    parcelObtain.writeTypedList(list2);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public void sendStoredText(int i2, String str, Uri uri, String str2, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (pendingIntent2 != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public void sendTextForSubscriber(int i2, String str, String str2, String str3, String str4, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    int i3 = 1;
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (pendingIntent2 != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public void sendTextForSubscriberWithSelfPermissions(int i2, String str, String str2, String str3, String str4, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    int i3 = 1;
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (pendingIntent2 != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public void setPremiumSmsPermission(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public void setPremiumSmsPermissionForSubscriber(int i2, String str, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISms
            public boolean updateMessageOnIccEfForSubscriber(int i2, String str, int i3, int i4, byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeByteArray(bArr);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
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

        public static ISms asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISms)) ? new Proxy(iBinder) : (ISms) iInterfaceQueryLocalInterface;
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
                    List<SmsRawData> allMessagesFromIccEfForSubscriber = getAllMessagesFromIccEfForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allMessagesFromIccEfForSubscriber);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUpdateMessageOnIccEfForSubscriber = updateMessageOnIccEfForSubscriber(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(zUpdateMessageOnIccEfForSubscriber ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCopyMessageToIccEfForSubscriber = copyMessageToIccEfForSubscriber(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.createByteArray(), parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(zCopyMessageToIccEfForSubscriber ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendDataForSubscriber(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.createByteArray(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendDataForSubscriberWithSelfPermissions(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.createByteArray(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendTextForSubscriber(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendTextForSubscriberWithSelfPermissions(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    injectSmsPduForSubscriber(parcel.readInt(), parcel.createByteArray(), parcel.readString(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i4 = parcel.readInt();
                    String string = parcel.readString();
                    String string2 = parcel.readString();
                    String string3 = parcel.readString();
                    ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                    Parcelable.Creator<PendingIntent> creator = PendingIntent.CREATOR;
                    sendMultipartTextForSubscriber(i4, string, string2, string3, arrayListCreateStringArrayList, parcel.createTypedArrayList(creator), parcel.createTypedArrayList(creator), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zEnableCellBroadcastForSubscriber = enableCellBroadcastForSubscriber(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zEnableCellBroadcastForSubscriber ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDisableCellBroadcastForSubscriber = disableCellBroadcastForSubscriber(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zDisableCellBroadcastForSubscriber ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zEnableCellBroadcastRangeForSubscriber = enableCellBroadcastRangeForSubscriber(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zEnableCellBroadcastRangeForSubscriber ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDisableCellBroadcastRangeForSubscriber = disableCellBroadcastRangeForSubscriber(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zDisableCellBroadcastRangeForSubscriber ? 1 : 0);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    int premiumSmsPermission = getPremiumSmsPermission(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(premiumSmsPermission);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int premiumSmsPermissionForSubscriber = getPremiumSmsPermissionForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(premiumSmsPermissionForSubscriber);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPremiumSmsPermission(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPremiumSmsPermissionForSubscriber(parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsImsSmsSupportedForSubscriber = isImsSmsSupportedForSubscriber(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsImsSmsSupportedForSubscriber ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSmsSimPickActivityNeeded = isSmsSimPickActivityNeeded(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSmsSimPickActivityNeeded ? 1 : 0);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int preferredSmsSubscription = getPreferredSmsSubscription();
                    parcel2.writeNoException();
                    parcel2.writeInt(preferredSmsSubscription);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    String imsSmsFormatForSubscriber = getImsSmsFormatForSubscriber(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(imsSmsFormatForSubscriber);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSMSPromptEnabled = isSMSPromptEnabled();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSMSPromptEnabled ? 1 : 0);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendStoredText(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i5 = parcel.readInt();
                    String string4 = parcel.readString();
                    Uri uriCreateFromParcel = parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null;
                    String string5 = parcel.readString();
                    Parcelable.Creator<PendingIntent> creator2 = PendingIntent.CREATOR;
                    sendStoredMultipartText(i5, string4, uriCreateFromParcel, string5, parcel.createTypedArrayList(creator2), parcel.createTypedArrayList(creator2));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strCreateAppSpecificSmsToken = createAppSpecificSmsToken(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeString(strCreateAppSpecificSmsToken);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    boolean copyMessageToIccEfForSubscriber(int i2, String str, int i3, byte[] bArr, byte[] bArr2);

    String createAppSpecificSmsToken(int i2, String str, PendingIntent pendingIntent);

    boolean disableCellBroadcastForSubscriber(int i2, int i3, int i4);

    boolean disableCellBroadcastRangeForSubscriber(int i2, int i3, int i4, int i5);

    boolean enableCellBroadcastForSubscriber(int i2, int i3, int i4);

    boolean enableCellBroadcastRangeForSubscriber(int i2, int i3, int i4, int i5);

    List<SmsRawData> getAllMessagesFromIccEfForSubscriber(int i2, String str);

    String getImsSmsFormatForSubscriber(int i2);

    int getPreferredSmsSubscription();

    int getPremiumSmsPermission(String str);

    int getPremiumSmsPermissionForSubscriber(int i2, String str);

    void injectSmsPduForSubscriber(int i2, byte[] bArr, String str, PendingIntent pendingIntent);

    boolean isImsSmsSupportedForSubscriber(int i2);

    boolean isSMSPromptEnabled();

    boolean isSmsSimPickActivityNeeded(int i2);

    void sendDataForSubscriber(int i2, String str, String str2, String str3, int i3, byte[] bArr, PendingIntent pendingIntent, PendingIntent pendingIntent2);

    void sendDataForSubscriberWithSelfPermissions(int i2, String str, String str2, String str3, int i3, byte[] bArr, PendingIntent pendingIntent, PendingIntent pendingIntent2);

    void sendMultipartTextForSubscriber(int i2, String str, String str2, String str3, List<String> list, List<PendingIntent> list2, List<PendingIntent> list3, boolean z2);

    void sendStoredMultipartText(int i2, String str, Uri uri, String str2, List<PendingIntent> list, List<PendingIntent> list2);

    void sendStoredText(int i2, String str, Uri uri, String str2, PendingIntent pendingIntent, PendingIntent pendingIntent2);

    void sendTextForSubscriber(int i2, String str, String str2, String str3, String str4, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z2);

    void sendTextForSubscriberWithSelfPermissions(int i2, String str, String str2, String str3, String str4, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z2);

    void setPremiumSmsPermission(String str, int i2);

    void setPremiumSmsPermissionForSubscriber(int i2, String str, int i3);

    boolean updateMessageOnIccEfForSubscriber(int i2, String str, int i3, int i4, byte[] bArr);
}
