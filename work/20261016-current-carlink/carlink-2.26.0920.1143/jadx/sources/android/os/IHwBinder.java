package android.os;

/* JADX INFO: loaded from: classes.dex */
public interface IHwBinder {
    public static final int FIRST_CALL_TRANSACTION = 1;
    public static final int FLAG_ONEWAY = 1;

    public interface DeathRecipient {
        void serviceDied(long j2);
    }

    boolean linkToDeath(DeathRecipient deathRecipient, long j2);

    IHwInterface queryLocalInterface(String str);

    void transact(int i2, HwParcel hwParcel, HwParcel hwParcel2, int i3);

    boolean unlinkToDeath(DeathRecipient deathRecipient);
}
