package android.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class NotificationChannelGroup implements Parcelable {
    private static final String ATT_ID = "id";
    private static final String ATT_NAME = "name";
    public static final Parcelable.Creator<NotificationChannelGroup> CREATOR = new Parcelable.Creator<NotificationChannelGroup>() { // from class: android.app.NotificationChannelGroup.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotificationChannelGroup createFromParcel(Parcel parcel) {
            return new NotificationChannelGroup(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotificationChannelGroup[] newArray(int i2) {
            return new NotificationChannelGroup[i2];
        }
    };
    private static final int MAX_TEXT_LENGTH = 1000;
    private static final String TAG_GROUP = "channelGroup";
    private List<NotificationChannel> mChannels = new ArrayList();
    private final String mId;
    private CharSequence mName;

    public NotificationChannelGroup(String str, CharSequence charSequence) {
        this.mId = getTrimmedString(str);
        this.mName = charSequence != null ? getTrimmedString(charSequence.toString()) : null;
    }

    private String getTrimmedString(String str) {
        return (str == null || str.length() <= 1000) ? str : str.substring(0, 1000);
    }

    public void addChannel(NotificationChannel notificationChannel) {
        this.mChannels.add(notificationChannel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NotificationChannelGroup.class != obj.getClass()) {
            return false;
        }
        NotificationChannelGroup notificationChannelGroup = (NotificationChannelGroup) obj;
        if (getId() == null ? notificationChannelGroup.getId() == null : getId().equals(notificationChannelGroup.getId())) {
            return getName() == null ? notificationChannelGroup.getName() == null : getName().equals(notificationChannelGroup.getName());
        }
        return false;
    }

    public List<NotificationChannel> getChannels() {
        return this.mChannels;
    }

    public String getId() {
        return this.mId;
    }

    public CharSequence getName() {
        return this.mName;
    }

    public int hashCode() {
        return ((getId() != null ? getId().hashCode() : 0) * 31) + (getName() != null ? getName().hashCode() : 0);
    }

    public JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", getId());
        jSONObject.put("name", getName());
        return jSONObject;
    }

    public String toString() {
        return "NotificationChannelGroup{mId='" + this.mId + "', mName=" + ((Object) this.mName) + ", mChannels=" + this.mChannels + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mId != null) {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.mId);
        } else {
            parcel.writeByte((byte) 0);
        }
        TextUtils.writeToParcel(this.mName, parcel, i2);
        parcel.writeParcelableList(this.mChannels, i2);
    }

    public void writeXml(XmlSerializer xmlSerializer) throws IOException {
        xmlSerializer.startTag(null, TAG_GROUP);
        xmlSerializer.attribute(null, "id", getId());
        if (getName() != null) {
            xmlSerializer.attribute(null, "name", getName().toString());
        }
        xmlSerializer.endTag(null, TAG_GROUP);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NotificationChannelGroup m13clone() {
        return new NotificationChannelGroup(getId(), getName());
    }

    public NotificationChannelGroup(Parcel parcel) {
        if (parcel.readByte() != 0) {
            this.mId = parcel.readString();
        } else {
            this.mId = null;
        }
        this.mName = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        parcel.readParcelableList(this.mChannels, NotificationChannel.class.getClassLoader());
    }
}
