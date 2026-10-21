package android.net;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface INetworkStatsSession extends IInterface {

    public static abstract class Stub extends Binder implements INetworkStatsSession {
        private static final String DESCRIPTOR = "android.net.INetworkStatsSession";
        static final int TRANSACTION_close = 8;
        static final int TRANSACTION_getDeviceSummaryForNetwork = 1;
        static final int TRANSACTION_getHistoryForNetwork = 3;
        static final int TRANSACTION_getHistoryForUid = 5;
        static final int TRANSACTION_getHistoryIntervalForUid = 6;
        static final int TRANSACTION_getRelevantUids = 7;
        static final int TRANSACTION_getSummaryForAllUid = 4;
        static final int TRANSACTION_getSummaryForNetwork = 2;

        public static class Proxy implements INetworkStatsSession {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.net.INetworkStatsSession
            public void close() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetworkStatsSession
            public NetworkStats getDeviceSummaryForNetwork(NetworkTemplate networkTemplate, long j2, long j3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkTemplate != null) {
                        parcelObtain.writeInt(1);
                        networkTemplate.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NetworkStats.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetworkStatsSession
            public NetworkStatsHistory getHistoryForNetwork(NetworkTemplate networkTemplate, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkTemplate != null) {
                        parcelObtain.writeInt(1);
                        networkTemplate.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NetworkStatsHistory.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetworkStatsSession
            public NetworkStatsHistory getHistoryForUid(NetworkTemplate networkTemplate, int i2, int i3, int i4, int i5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkTemplate != null) {
                        parcelObtain.writeInt(1);
                        networkTemplate.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NetworkStatsHistory.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetworkStatsSession
            public NetworkStatsHistory getHistoryIntervalForUid(NetworkTemplate networkTemplate, int i2, int i3, int i4, int i5, long j2, long j3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkTemplate != null) {
                        parcelObtain.writeInt(1);
                        networkTemplate.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NetworkStatsHistory.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.net.INetworkStatsSession
            public int[] getRelevantUids() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetworkStatsSession
            public NetworkStats getSummaryForAllUid(NetworkTemplate networkTemplate, long j2, long j3, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    if (networkTemplate != null) {
                        parcelObtain.writeInt(1);
                        networkTemplate.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NetworkStats.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetworkStatsSession
            public NetworkStats getSummaryForNetwork(NetworkTemplate networkTemplate, long j2, long j3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkTemplate != null) {
                        parcelObtain.writeInt(1);
                        networkTemplate.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NetworkStats.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static INetworkStatsSession asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof INetworkStatsSession)) ? new Proxy(iBinder) : (INetworkStatsSession) iInterfaceQueryLocalInterface;
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
                    NetworkStats deviceSummaryForNetwork = getDeviceSummaryForNetwork(parcel.readInt() != 0 ? NetworkTemplate.CREATOR.createFromParcel(parcel) : null, parcel.readLong(), parcel.readLong());
                    parcel2.writeNoException();
                    if (deviceSummaryForNetwork != null) {
                        parcel2.writeInt(1);
                        deviceSummaryForNetwork.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    NetworkStats summaryForNetwork = getSummaryForNetwork(parcel.readInt() != 0 ? NetworkTemplate.CREATOR.createFromParcel(parcel) : null, parcel.readLong(), parcel.readLong());
                    parcel2.writeNoException();
                    if (summaryForNetwork != null) {
                        parcel2.writeInt(1);
                        summaryForNetwork.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    NetworkStatsHistory historyForNetwork = getHistoryForNetwork(parcel.readInt() != 0 ? NetworkTemplate.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (historyForNetwork != null) {
                        parcel2.writeInt(1);
                        historyForNetwork.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    NetworkStats summaryForAllUid = getSummaryForAllUid(parcel.readInt() != 0 ? NetworkTemplate.CREATOR.createFromParcel(parcel) : null, parcel.readLong(), parcel.readLong(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (summaryForAllUid != null) {
                        parcel2.writeInt(1);
                        summaryForAllUid.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    NetworkStatsHistory historyForUid = getHistoryForUid(parcel.readInt() != 0 ? NetworkTemplate.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (historyForUid != null) {
                        parcel2.writeInt(1);
                        historyForUid.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    NetworkStatsHistory historyIntervalForUid = getHistoryIntervalForUid(parcel.readInt() != 0 ? NetworkTemplate.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readLong());
                    parcel2.writeNoException();
                    if (historyIntervalForUid != null) {
                        parcel2.writeInt(1);
                        historyIntervalForUid.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] relevantUids = getRelevantUids();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(relevantUids);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    close();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void close();

    NetworkStats getDeviceSummaryForNetwork(NetworkTemplate networkTemplate, long j2, long j3);

    NetworkStatsHistory getHistoryForNetwork(NetworkTemplate networkTemplate, int i2);

    NetworkStatsHistory getHistoryForUid(NetworkTemplate networkTemplate, int i2, int i3, int i4, int i5);

    NetworkStatsHistory getHistoryIntervalForUid(NetworkTemplate networkTemplate, int i2, int i3, int i4, int i5, long j2, long j3);

    int[] getRelevantUids();

    NetworkStats getSummaryForAllUid(NetworkTemplate networkTemplate, long j2, long j3, boolean z2);

    NetworkStats getSummaryForNetwork(NetworkTemplate networkTemplate, long j2, long j3);
}
