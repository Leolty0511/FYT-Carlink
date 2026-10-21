package r;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.telephony.CellInfo;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {
        private static final String DESCRIPTOR = "com.android.internal.telephony.IPhoneStateListener";
        public static final int TRANSACTION_onCallForwardingIndicatorChanged = 4;
        public static final int TRANSACTION_onCallStateChanged = 6;
        public static final int TRANSACTION_onCellInfoChanged = 11;
        public static final int TRANSACTION_onCellLocationChanged = 5;
        public static final int TRANSACTION_onDataActivity = 8;
        public static final int TRANSACTION_onDataConnectionStateChanged = 7;
        public static final int TRANSACTION_onMessageWaitingIndicatorChanged = 3;
        public static final int TRANSACTION_onOtaspChanged = 10;
        public static final int TRANSACTION_onServiceStateChanged = 1;
        public static final int TRANSACTION_onSignalStrengthChanged = 2;
        public static final int TRANSACTION_onSignalStrengthsChanged = 9;

        /* JADX INFO: renamed from: r.b$a$a, reason: collision with other inner class name */
        public static class C0098a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17140a;

            public C0098a(IBinder iBinder) {
                this.f17140a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17140a;
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static b asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0098a(iBinder) : (b) iInterfaceQueryLocalInterface;
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
                    onServiceStateChanged(parcel.readInt() != 0 ? ServiceState.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSignalStrengthChanged(parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMessageWaitingIndicatorChanged(parcel.readInt() != 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onCallForwardingIndicatorChanged(parcel.readInt() != 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onCellLocationChanged(parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onCallStateChanged(parcel.readInt(), parcel.readString());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDataConnectionStateChanged(parcel.readInt(), parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDataActivity(parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSignalStrengthsChanged(parcel.readInt() != 0 ? SignalStrength.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onOtaspChanged(parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onCellInfoChanged(parcel.createTypedArrayList(CellInfo.CREATOR));
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void onCallForwardingIndicatorChanged(boolean z2);

    void onCallStateChanged(int i2, String str);

    void onCellInfoChanged(List<CellInfo> list);

    void onCellLocationChanged(Bundle bundle);

    void onDataActivity(int i2);

    void onDataConnectionStateChanged(int i2, int i3);

    void onMessageWaitingIndicatorChanged(boolean z2);

    void onOtaspChanged(int i2);

    void onServiceStateChanged(ServiceState serviceState);

    void onSignalStrengthChanged(int i2);

    void onSignalStrengthsChanged(SignalStrength signalStrength);
}
