package android.app;

import android.content.ComponentName;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class AutomaticZenRule implements Parcelable {
    public static final Parcelable.Creator<AutomaticZenRule> CREATOR = new Parcelable.Creator<AutomaticZenRule>() { // from class: android.app.AutomaticZenRule.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AutomaticZenRule createFromParcel(Parcel parcel) {
            return new AutomaticZenRule(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AutomaticZenRule[] newArray(int i2) {
            return new AutomaticZenRule[i2];
        }
    };
    private Uri conditionId;
    private long creationTime;
    private boolean enabled;
    private int interruptionFilter;
    private String name;
    private ComponentName owner;

    public AutomaticZenRule(String str, ComponentName componentName, Uri uri, int i2, boolean z2) {
        this.name = str;
        this.owner = componentName;
        this.conditionId = uri;
        this.interruptionFilter = i2;
        this.enabled = z2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AutomaticZenRule)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        AutomaticZenRule automaticZenRule = (AutomaticZenRule) obj;
        return automaticZenRule.enabled == this.enabled && Objects.equals(automaticZenRule.name, this.name) && automaticZenRule.interruptionFilter == this.interruptionFilter && Objects.equals(automaticZenRule.conditionId, this.conditionId) && Objects.equals(automaticZenRule.owner, this.owner) && automaticZenRule.creationTime == this.creationTime;
    }

    public Uri getConditionId() {
        return this.conditionId;
    }

    public long getCreationTime() {
        return this.creationTime;
    }

    public int getInterruptionFilter() {
        return this.interruptionFilter;
    }

    public String getName() {
        return this.name;
    }

    public ComponentName getOwner() {
        return this.owner;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.enabled), this.name, Integer.valueOf(this.interruptionFilter), this.conditionId, this.owner, Long.valueOf(this.creationTime));
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void setConditionId(Uri uri) {
        this.conditionId = uri;
    }

    public void setEnabled(boolean z2) {
        this.enabled = z2;
    }

    public void setInterruptionFilter(int i2) {
        this.interruptionFilter = i2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "AutomaticZenRule[enabled=" + this.enabled + ",name=" + this.name + ",interruptionFilter=" + this.interruptionFilter + ",conditionId=" + this.conditionId + ",owner=" + this.owner + ",creationTime=" + this.creationTime + ']';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.enabled ? 1 : 0);
        if (this.name != null) {
            parcel.writeInt(1);
            parcel.writeString(this.name);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.interruptionFilter);
        parcel.writeParcelable(this.conditionId, 0);
        parcel.writeParcelable(this.owner, 0);
        parcel.writeLong(this.creationTime);
    }

    public AutomaticZenRule(String str, ComponentName componentName, Uri uri, int i2, boolean z2, long j2) {
        this(str, componentName, uri, i2, z2);
        this.creationTime = j2;
    }

    public AutomaticZenRule(Parcel parcel) {
        this.enabled = false;
        this.enabled = parcel.readInt() == 1;
        if (parcel.readInt() == 1) {
            this.name = parcel.readString();
        }
        this.interruptionFilter = parcel.readInt();
        this.conditionId = (Uri) parcel.readParcelable(null);
        this.owner = (ComponentName) parcel.readParcelable(null);
        this.creationTime = parcel.readLong();
    }
}
