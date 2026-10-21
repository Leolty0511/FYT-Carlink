package android.content;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SyncInfo implements Parcelable {
    public final Account account;
    public final String authority;
    public final int authorityId;
    public final long startTime;
    private static final Account REDACTED_ACCOUNT = new Account("*****", "*****");
    public static final Parcelable.Creator<SyncInfo> CREATOR = new Parcelable.Creator<SyncInfo>() { // from class: android.content.SyncInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncInfo createFromParcel(Parcel parcel) {
            return new SyncInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncInfo[] newArray(int i2) {
            return new SyncInfo[i2];
        }
    };

    public SyncInfo(int i2, Account account, String str, long j2) {
        this.authorityId = i2;
        this.account = account;
        this.authority = str;
        this.startTime = j2;
    }

    public static SyncInfo createAccountRedacted(int i2, String str, long j2) {
        return new SyncInfo(i2, REDACTED_ACCOUNT, str, j2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.authorityId);
        parcel.writeParcelable(this.account, i2);
        parcel.writeString(this.authority);
        parcel.writeLong(this.startTime);
    }

    public SyncInfo(SyncInfo syncInfo) {
        this.authorityId = syncInfo.authorityId;
        Account account = syncInfo.account;
        this.account = new Account(account.name, account.type);
        this.authority = syncInfo.authority;
        this.startTime = syncInfo.startTime;
    }

    public SyncInfo(Parcel parcel) {
        this.authorityId = parcel.readInt();
        this.account = (Account) parcel.readParcelable(Account.class.getClassLoader());
        this.authority = parcel.readString();
        this.startTime = parcel.readLong();
    }
}
