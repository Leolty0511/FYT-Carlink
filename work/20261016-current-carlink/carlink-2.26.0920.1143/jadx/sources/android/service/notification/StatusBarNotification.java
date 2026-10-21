package android.service.notification;

import android.accessibilityservice.c;
import android.app.Notification;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;

/* JADX INFO: loaded from: classes2.dex */
public class StatusBarNotification implements Parcelable {
    public static final Parcelable.Creator<StatusBarNotification> CREATOR = new Parcelable.Creator<StatusBarNotification>() { // from class: android.service.notification.StatusBarNotification.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StatusBarNotification createFromParcel(Parcel parcel) {
            return new StatusBarNotification(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StatusBarNotification[] newArray(int i2) {
            return new StatusBarNotification[i2];
        }
    };
    private String groupKey;
    private final int id;
    private final int initialPid;
    private final String key;
    private Context mContext;
    private final Notification notification;
    private final String opPkg;
    private String overrideGroupKey;
    private final String pkg;
    private final long postTime;
    private final String tag;
    private final int uid;
    private final UserHandle user;

    public StatusBarNotification(String str, String str2, int i2, String str3, int i3, int i4, Notification notification, UserHandle userHandle, String str4, long j2) {
        str.getClass();
        notification.getClass();
        this.pkg = str;
        this.opPkg = str2;
        this.id = i2;
        this.tag = str3;
        this.uid = i3;
        this.initialPid = i4;
        this.notification = notification;
        this.user = userHandle;
        this.postTime = j2;
        this.overrideGroupKey = str4;
        this.key = key();
        this.groupKey = groupKey();
    }

    private String groupKey() {
        String strConcat;
        if (this.overrideGroupKey != null) {
            return this.user.getIdentifier() + "|" + this.pkg + "|g:" + this.overrideGroupKey;
        }
        String group = getNotification().getGroup();
        String sortKey = getNotification().getSortKey();
        if (group == null && sortKey == null) {
            return this.key;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.user.getIdentifier());
        sb.append("|");
        sb.append(this.pkg);
        sb.append("|");
        if (group == null) {
            strConcat = "c:" + this.notification.getChannelId();
        } else {
            strConcat = "g:".concat(group);
        }
        sb.append(strConcat);
        return sb.toString();
    }

    private String key() {
        String str = this.user.getIdentifier() + "|" + this.pkg + "|" + this.id + "|" + this.tag + "|" + this.uid;
        if (this.overrideGroupKey == null || !getNotification().isGroupSummary()) {
            return str;
        }
        StringBuilder sbU = c.u(str, "|");
        sbU.append(this.overrideGroupKey);
        return sbU.toString();
    }

    public StatusBarNotification cloneLight() {
        Notification notification = new Notification();
        this.notification.cloneInto(notification, false);
        return new StatusBarNotification(this.pkg, this.opPkg, this.id, this.tag, this.uid, this.initialPid, notification, this.user, this.overrideGroupKey, this.postTime);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getGroup() {
        String str = this.overrideGroupKey;
        return str != null ? str : getNotification().getGroup();
    }

    public String getGroupKey() {
        return this.groupKey;
    }

    public int getId() {
        return this.id;
    }

    public int getInitialPid() {
        return this.initialPid;
    }

    public String getKey() {
        return this.key;
    }

    public Notification getNotification() {
        return this.notification;
    }

    public String getOpPkg() {
        return this.opPkg;
    }

    public String getOverrideGroupKey() {
        return this.overrideGroupKey;
    }

    public Context getPackageContext(Context context) {
        if (this.mContext == null) {
            try {
                this.mContext = context.createApplicationContext(context.getPackageManager().getApplicationInfoAsUser(this.pkg, 8192, getUserId()), 4);
            } catch (PackageManager.NameNotFoundException unused) {
                this.mContext = null;
            }
        }
        if (this.mContext == null) {
            this.mContext = context;
        }
        return this.mContext;
    }

    public String getPackageName() {
        return this.pkg;
    }

    public long getPostTime() {
        return this.postTime;
    }

    public String getTag() {
        return this.tag;
    }

    public int getUid() {
        return this.uid;
    }

    public UserHandle getUser() {
        return this.user;
    }

    @Deprecated
    public int getUserId() {
        return this.user.getIdentifier();
    }

    public boolean isAppGroup() {
        return (getNotification().getGroup() == null && getNotification().getSortKey() == null) ? false : true;
    }

    public boolean isClearable() {
        int i2 = this.notification.flags;
        return (i2 & 2) == 0 && (i2 & 32) == 0;
    }

    public boolean isGroup() {
        return this.overrideGroupKey != null || isAppGroup();
    }

    public boolean isOngoing() {
        return (this.notification.flags & 2) != 0;
    }

    public void setOverrideGroupKey(String str) {
        this.overrideGroupKey = str;
        this.groupKey = groupKey();
    }

    public String toString() {
        return String.format("StatusBarNotification(pkg=%s user=%s id=%d tag=%s key=%s: %s)", this.pkg, this.user, Integer.valueOf(this.id), this.tag, this.key, this.notification);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.pkg);
        parcel.writeString(this.opPkg);
        parcel.writeInt(this.id);
        if (this.tag != null) {
            parcel.writeInt(1);
            parcel.writeString(this.tag);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.uid);
        parcel.writeInt(this.initialPid);
        this.notification.writeToParcel(parcel, i2);
        this.user.writeToParcel(parcel, i2);
        parcel.writeLong(this.postTime);
        if (this.overrideGroupKey == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(this.overrideGroupKey);
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public StatusBarNotification m26clone() {
        return new StatusBarNotification(this.pkg, this.opPkg, this.id, this.tag, this.uid, this.initialPid, this.notification.m8clone(), this.user, this.overrideGroupKey, this.postTime);
    }

    @Deprecated
    public StatusBarNotification(String str, String str2, int i2, String str3, int i3, int i4, int i5, Notification notification, UserHandle userHandle, long j2) {
        str.getClass();
        notification.getClass();
        this.pkg = str;
        this.opPkg = str2;
        this.id = i2;
        this.tag = str3;
        this.uid = i3;
        this.initialPid = i4;
        this.notification = notification;
        this.user = userHandle;
        this.postTime = j2;
        this.key = key();
        this.groupKey = groupKey();
    }

    public StatusBarNotification(Parcel parcel) {
        this.pkg = parcel.readString();
        this.opPkg = parcel.readString();
        this.id = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.tag = parcel.readString();
        } else {
            this.tag = null;
        }
        this.uid = parcel.readInt();
        this.initialPid = parcel.readInt();
        this.notification = new Notification(parcel);
        this.user = UserHandle.readFromParcel(parcel);
        this.postTime = parcel.readLong();
        if (parcel.readInt() != 0) {
            this.overrideGroupKey = parcel.readString();
        } else {
            this.overrideGroupKey = null;
        }
        this.key = key();
        this.groupKey = groupKey();
    }
}
