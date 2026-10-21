package android.os;

import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public interface IBinder {
    public static final int DUMP_TRANSACTION = 1598311760;
    public static final int FIRST_CALL_TRANSACTION = 1;
    public static final int FLAG_ONEWAY = 1;
    public static final int INTERFACE_TRANSACTION = 1598968902;
    public static final int LAST_CALL_TRANSACTION = 16777215;
    public static final int LIKE_TRANSACTION = 1598835019;
    public static final int PING_TRANSACTION = 1599098439;
    public static final int SYSPROPS_TRANSACTION = 1599295570;
    public static final int TWEET_TRANSACTION = 1599362900;

    public interface DeathRecipient {
        void binderDied();
    }

    void dump(FileDescriptor fileDescriptor, String[] strArr);

    void dumpAsync(FileDescriptor fileDescriptor, String[] strArr);

    String getInterfaceDescriptor();

    boolean isBinderAlive();

    void linkToDeath(DeathRecipient deathRecipient, int i2);

    boolean pingBinder();

    IInterface queryLocalInterface(String str);

    boolean transact(int i2, Parcel parcel, Parcel parcel2, int i3);

    boolean unlinkToDeath(DeathRecipient deathRecipient, int i2);
}
