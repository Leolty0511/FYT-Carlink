package android.app;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class ServiceStartArgs implements Parcelable {
    public static final Parcelable.Creator<ServiceStartArgs> CREATOR = new Parcelable.Creator<ServiceStartArgs>() { // from class: android.app.ServiceStartArgs.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServiceStartArgs createFromParcel(Parcel parcel) {
            return new ServiceStartArgs(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServiceStartArgs[] newArray(int i2) {
            return new ServiceStartArgs[i2];
        }
    };
    public final Intent args;
    public final int flags;
    public final int startId;
    public final boolean taskRemoved;

    public ServiceStartArgs(boolean z2, int i2, int i3, Intent intent) {
        this.taskRemoved = z2;
        this.startId = i2;
        this.flags = i3;
        this.args = intent;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ServiceStartArgs{taskRemoved=");
        sb.append(this.taskRemoved);
        sb.append(", startId=");
        sb.append(this.startId);
        sb.append(", flags=0x");
        android.accessibilityservice.c.x(this.flags, sb, ", args=");
        sb.append(this.args);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.taskRemoved ? 1 : 0);
        parcel.writeInt(this.startId);
        parcel.writeInt(i2);
        if (this.args == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.args.writeToParcel(parcel, 0);
        }
    }

    public ServiceStartArgs(Parcel parcel) {
        this.taskRemoved = parcel.readInt() != 0;
        this.startId = parcel.readInt();
        this.flags = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.args = Intent.CREATOR.createFromParcel(parcel);
        } else {
            this.args = null;
        }
    }
}
