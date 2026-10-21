package com.android.internal.statusbar;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes3.dex */
public class NotificationVisibility implements Parcelable {
    private static final int MAX_POOL_SIZE = 25;
    private static final String TAG = "NoViz";
    int id;
    public String key;
    public int rank;
    public boolean visible;
    private static ArrayDeque<NotificationVisibility> sPool = new ArrayDeque<>(25);
    private static int sNexrId = 0;
    public static final Parcelable.Creator<NotificationVisibility> CREATOR = new Parcelable.Creator<NotificationVisibility>() { // from class: com.android.internal.statusbar.NotificationVisibility.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotificationVisibility createFromParcel(Parcel parcel) {
            return NotificationVisibility.obtain(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotificationVisibility[] newArray(int i2) {
            return new NotificationVisibility[i2];
        }
    };

    private NotificationVisibility() {
        this.visible = true;
        int i2 = sNexrId;
        sNexrId = i2 + 1;
        this.id = i2;
    }

    public static NotificationVisibility obtain(String str, int i2, boolean z2) {
        NotificationVisibility notificationVisibilityObtain = obtain();
        notificationVisibilityObtain.key = str;
        notificationVisibilityObtain.rank = i2;
        notificationVisibilityObtain.visible = z2;
        return notificationVisibilityObtain;
    }

    private void readFromParcel(Parcel parcel) {
        this.key = parcel.readString();
        this.rank = parcel.readInt();
        this.visible = parcel.readInt() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NotificationVisibility)) {
            return false;
        }
        NotificationVisibility notificationVisibility = (NotificationVisibility) obj;
        String str = this.key;
        return (str == null && notificationVisibility.key == null) || str.equals(notificationVisibility.key);
    }

    public int hashCode() {
        String str = this.key;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public void recycle() {
        if (this.key == null) {
            return;
        }
        this.key = null;
        if (sPool.size() < 25) {
            synchronized (sPool) {
                sPool.offer(this);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NotificationVisibility(id=");
        sb.append(this.id);
        sb.append("key=");
        sb.append(this.key);
        sb.append(" rank=");
        sb.append(this.rank);
        return c.n(sb, this.visible ? " visible" : "", " )");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.key);
        parcel.writeInt(this.rank);
        parcel.writeInt(this.visible ? 1 : 0);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NotificationVisibility m55clone() {
        return obtain(this.key, this.rank, this.visible);
    }

    private NotificationVisibility(String str, int i2, boolean z2) {
        this();
        this.key = str;
        this.rank = i2;
        this.visible = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static NotificationVisibility obtain(Parcel parcel) {
        NotificationVisibility notificationVisibilityObtain = obtain();
        notificationVisibilityObtain.readFromParcel(parcel);
        return notificationVisibilityObtain;
    }

    private static NotificationVisibility obtain() {
        synchronized (sPool) {
            if (!sPool.isEmpty()) {
                return sPool.poll();
            }
            return new NotificationVisibility();
        }
    }
}
