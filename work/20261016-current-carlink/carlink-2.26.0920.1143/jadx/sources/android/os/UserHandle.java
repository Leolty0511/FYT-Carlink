package android.os;

import android.provider.Telephony;
import android.text.format.DateFormat;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public final class UserHandle implements Parcelable {
    public static final int AID_APP_END = 19999;
    public static final int AID_APP_START = 10000;
    public static final int AID_CACHE_GID_START = 20000;
    public static final int AID_ROOT = 0;
    public static final int AID_SHARED_GID_START = 50000;
    public static final int ERR_GID = -1;
    public static final boolean MU_ENABLED = true;
    public static final int PER_USER_RANGE = 100000;
    public static final int USER_ALL = -1;
    public static final int USER_CURRENT = -2;
    public static final int USER_CURRENT_OR_SELF = -3;
    public static final int USER_NULL = -10000;

    @Deprecated
    public static final int USER_OWNER = 0;
    public static final int USER_SERIAL_SYSTEM = 0;
    public static final int USER_SYSTEM = 0;
    final int mHandle;
    public static final UserHandle ALL = new UserHandle(-1);
    public static final UserHandle CURRENT = new UserHandle(-2);
    public static final UserHandle CURRENT_OR_SELF = new UserHandle(-3);

    @Deprecated
    public static final UserHandle OWNER = new UserHandle(0);
    public static final UserHandle SYSTEM = new UserHandle(0);
    public static final Parcelable.Creator<UserHandle> CREATOR = new Parcelable.Creator<UserHandle>() { // from class: android.os.UserHandle.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserHandle createFromParcel(Parcel parcel) {
            return new UserHandle(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserHandle[] newArray(int i2) {
            return new UserHandle[i2];
        }
    };

    public UserHandle(int i2) {
        this.mHandle = i2;
    }

    public static void formatUid(StringBuilder sb, int i2) {
        if (i2 < 10000) {
            sb.append(i2);
            return;
        }
        sb.append('u');
        sb.append(getUserId(i2));
        int appId = getAppId(i2);
        if (appId >= 99000 && appId <= 99999) {
            sb.append('i');
            sb.append(appId - Process.FIRST_ISOLATED_UID);
        } else if (appId >= 10000) {
            sb.append(DateFormat.AM_PM);
            sb.append(appId - 10000);
        } else {
            sb.append('s');
            sb.append(appId);
        }
    }

    public static int getAppId(int i2) {
        return i2 % PER_USER_RANGE;
    }

    public static int getAppIdFromSharedAppGid(int i2) {
        int appId = (getAppId(i2) + 10000) - 50000;
        if (appId < 0 || appId >= 50000) {
            return -1;
        }
        return appId;
    }

    public static int getCacheAppGid(int i2) {
        return getCacheAppGid(getUserId(i2), getAppId(i2));
    }

    public static int getCallingAppId() {
        return getAppId(Binder.getCallingUid());
    }

    public static int getCallingUserId() {
        return getUserId(Binder.getCallingUid());
    }

    public static int getSharedAppGid(int i2, int i3) {
        if (i3 >= 10000 && i3 <= 19999) {
            return (i3 - 10000) + 50000;
        }
        if (i3 < 0 || i3 > 10000) {
            return -1;
        }
        return i3;
    }

    public static int getUid(int i2, int i3) {
        return (i3 % PER_USER_RANGE) + (i2 * PER_USER_RANGE);
    }

    public static int getUserGid(int i2) {
        return getUid(i2, Process.SHARED_USER_GID);
    }

    public static UserHandle getUserHandleForUid(int i2) {
        return of(getUserId(i2));
    }

    public static int getUserId(int i2) {
        return i2 / PER_USER_RANGE;
    }

    public static boolean isApp(int i2) {
        int appId;
        return i2 > 0 && (appId = getAppId(i2)) >= 10000 && appId <= 19999;
    }

    public static boolean isIsolated(int i2) {
        int appId;
        return i2 > 0 && (appId = getAppId(i2)) >= 99000 && appId <= 99999;
    }

    public static boolean isSameApp(int i2, int i3) {
        return getAppId(i2) == getAppId(i3);
    }

    public static boolean isSameUser(int i2, int i3) {
        return getUserId(i2) == getUserId(i3);
    }

    public static int myUserId() {
        return getUserId(Process.myUid());
    }

    public static UserHandle of(int i2) {
        return i2 == 0 ? SYSTEM : new UserHandle(i2);
    }

    public static int parseUserArg(String str) {
        if ("all".equals(str)) {
            return -1;
        }
        if (Telephony.Carriers.CURRENT.equals(str) || "cur".equals(str)) {
            return -2;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException(android.accessibilityservice.c.j("Bad user number: ", str));
        }
    }

    public static UserHandle readFromParcel(Parcel parcel) {
        int i2 = parcel.readInt();
        if (i2 != -10000) {
            return new UserHandle(i2);
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.mHandle == ((UserHandle) obj).mHandle;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int getIdentifier() {
        return this.mHandle;
    }

    public int hashCode() {
        return this.mHandle;
    }

    @Deprecated
    public boolean isOwner() {
        return equals(OWNER);
    }

    public boolean isSystem() {
        return equals(SYSTEM);
    }

    public String toString() {
        return android.accessibilityservice.c.m(new StringBuilder("UserHandle{"), this.mHandle, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mHandle);
    }

    public static int getCacheAppGid(int i2, int i3) {
        if (i3 < 10000 || i3 > 19999) {
            return -1;
        }
        return getUid(i2, (i3 - 10000) + 20000);
    }

    public static int getSharedAppGid(int i2) {
        return getSharedAppGid(getUserId(i2), getAppId(i2));
    }

    public static void writeToParcel(UserHandle userHandle, Parcel parcel) {
        if (userHandle != null) {
            userHandle.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(-10000);
        }
    }

    public UserHandle(Parcel parcel) {
        this.mHandle = parcel.readInt();
    }

    public static String formatUid(int i2) {
        StringBuilder sb = new StringBuilder();
        formatUid(sb, i2);
        return sb.toString();
    }

    public static void formatUid(PrintWriter printWriter, int i2) {
        if (i2 < 10000) {
            printWriter.print(i2);
            return;
        }
        printWriter.print('u');
        printWriter.print(getUserId(i2));
        int appId = getAppId(i2);
        if (appId >= 99000 && appId <= 99999) {
            printWriter.print('i');
            printWriter.print(appId - Process.FIRST_ISOLATED_UID);
        } else if (appId >= 10000) {
            printWriter.print(DateFormat.AM_PM);
            printWriter.print(appId - 10000);
        } else {
            printWriter.print('s');
            printWriter.print(appId);
        }
    }
}
