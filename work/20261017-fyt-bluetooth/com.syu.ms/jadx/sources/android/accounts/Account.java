package android.accounts;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class Account implements Parcelable {
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
    public final String name;
    public final String type;

    public Account(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the name must not be empty: " + str);
        }
        if (!TextUtils.isEmpty(str2)) {
            this.name = str;
            this.type = str2;
        } else {
            throw new IllegalArgumentException("the type must not be empty: " + str2);
        }
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

    public int hashCode() {
        return ((527 + this.name.hashCode()) * 31) + this.type.hashCode();
    }

    public String toString() {
        return "Account {name=" + this.name + ", type=" + this.type + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.name);
        parcel.writeString(this.type);
    }

    public Account(Parcel parcel) {
        this.name = parcel.readString();
        this.type = parcel.readString();
    }
}
