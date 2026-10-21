package android.media;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class AudioRoutesInfo implements Parcelable {
    public static final Parcelable.Creator<AudioRoutesInfo> CREATOR = new Parcelable.Creator<AudioRoutesInfo>() { // from class: android.media.AudioRoutesInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioRoutesInfo createFromParcel(Parcel parcel) {
            return new AudioRoutesInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioRoutesInfo[] newArray(int i2) {
            return new AudioRoutesInfo[i2];
        }
    };
    public static final int MAIN_DOCK_SPEAKERS = 4;
    public static final int MAIN_HDMI = 8;
    public static final int MAIN_HEADPHONES = 2;
    public static final int MAIN_HEADSET = 1;
    public static final int MAIN_SPEAKER = 0;
    public static final int MAIN_USB = 16;
    public CharSequence bluetoothName;
    public int mainType;

    public AudioRoutesInfo() {
        this.mainType = 0;
    }

    private static String typeToString(int i2) {
        if (i2 == 0) {
            return "SPEAKER";
        }
        if ((i2 & 1) != 0) {
            return "HEADSET";
        }
        if ((i2 & 2) != 0) {
            return "HEADPHONES";
        }
        if ((i2 & 4) != 0) {
            return "DOCK_SPEAKERS";
        }
        if ((i2 & 8) != 0) {
            return "HDMI";
        }
        return (i2 & 16) != 0 ? "USB" : Integer.toHexString(i2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("{ type=");
        sb.append(typeToString(this.mainType));
        if (TextUtils.isEmpty(this.bluetoothName)) {
            str = "";
        } else {
            str = ", bluetoothName=" + ((Object) this.bluetoothName);
        }
        return c.n(sb, str, " }");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        TextUtils.writeToParcel(this.bluetoothName, parcel, i2);
        parcel.writeInt(this.mainType);
    }

    public AudioRoutesInfo(AudioRoutesInfo audioRoutesInfo) {
        this.mainType = 0;
        this.bluetoothName = audioRoutesInfo.bluetoothName;
        this.mainType = audioRoutesInfo.mainType;
    }

    public AudioRoutesInfo(Parcel parcel) {
        this.mainType = 0;
        this.bluetoothName = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mainType = parcel.readInt();
    }
}
