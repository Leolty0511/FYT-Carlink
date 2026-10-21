package android.accounts;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.logging.nano.MetricsProto;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Account implements Parcelable {
    private static final String TAG = "Account";
    private final String accessId;
    public final String name;
    public final String type;

    @GuardedBy("sAccessedAccounts")
    private static final Set<Account> sAccessedAccounts = new ArraySet();
    public static final Parcelable.Creator<Account> CREATOR = new Parcelable.Creator<Account>() { // from class: android.accounts.Account.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Account createFromParcel(Parcel parcel) {
            return new Account(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Account[] newArray(int i2) {
            return new Account[i2];
        }
    };

    public Account(String str, String str2) {
        this(str, str2, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Account)) {
            return false;
        }
        Account account = (Account) obj;
        return this.name.equals(account.name) && this.type.equals(account.type);
    }

    public String getAccessId() {
        return this.accessId;
    }

    public int hashCode() {
        return this.type.hashCode() + ((this.name.hashCode() + MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Account {name=");
        sb.append(this.name);
        sb.append(", type=");
        return c.n(sb, this.type, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.name);
        parcel.writeString(this.type);
        parcel.writeString(this.accessId);
    }

    public Account(Account account, String str) {
        this(account.name, account.type, str);
    }

    public Account(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2)) {
                this.name = str;
                this.type = str2;
                this.accessId = str3;
                return;
            }
            throw new IllegalArgumentException(c.j("the type must not be empty: ", str2));
        }
        throw new IllegalArgumentException(c.j("the name must not be empty: ", str));
    }

    public Account(Parcel parcel) {
        this.name = parcel.readString();
        this.type = parcel.readString();
        String string = parcel.readString();
        this.accessId = string;
        if (string != null) {
            Set<Account> set = sAccessedAccounts;
            synchronized (set) {
                if (set.add(this)) {
                    try {
                        IAccountManager.Stub.asInterface(ServiceManager.getService("account")).onAccountAccessed(string);
                    } catch (RemoteException e2) {
                        Log.e(TAG, "Error noting account access", e2);
                    }
                }
            }
        }
    }
}
