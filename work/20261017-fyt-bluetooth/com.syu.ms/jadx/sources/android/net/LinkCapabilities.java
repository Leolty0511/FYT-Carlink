package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class LinkCapabilities implements Parcelable {
    public static final Parcelable.Creator<LinkCapabilities> CREATOR = new Parcelable.Creator<LinkCapabilities>() { // from class: android.net.LinkCapabilities.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LinkCapabilities createFromParcel(Parcel parcel) {
            LinkCapabilities linkCapabilities = new LinkCapabilities();
            int i2 = parcel.readInt();
            while (true) {
                int i3 = i2 - 1;
                if (i2 == 0) {
                    return linkCapabilities;
                }
                linkCapabilities.mCapabilities.put(Integer.valueOf(parcel.readInt()), parcel.readString());
                i2 = i3;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LinkCapabilities[] newArray(int i2) {
            return new LinkCapabilities[i2];
        }
    };
    private static final boolean DBG = false;
    private static final String TAG = "LinkCapabilities";
    private HashMap<Integer, String> mCapabilities;

    public static final class Key {
        public static final int RO_AVAILABLE_FWD_BW = 4;
        public static final int RO_AVAILABLE_REV_BW = 7;
        public static final int RO_BOUND_INTERFACE = 9;
        public static final int RO_NETWORK_TYPE = 1;
        public static final int RO_PHYSICAL_INTERFACE = 10;
        public static final int RW_DESIRED_FWD_BW = 2;
        public static final int RW_DESIRED_REV_BW = 5;
        public static final int RW_MAX_ALLOWED_LATENCY = 8;
        public static final int RW_REQUIRED_FWD_BW = 3;
        public static final int RW_REQUIRED_REV_BW = 6;

        private Key() {
        }
    }

    public static final class Role {
        public static final String BULK_DOWNLOAD = "bulk.download";
        public static final String BULK_UPLOAD = "bulk.upload";
        public static final String DEFAULT = "default";
        public static final String VIDEO_CHAT_360P = "video.chat.360p";
        public static final String VIDEO_CHAT_480P = "video.chat.480i";
        public static final String VIDEO_STREAMING_480P = "video.streaming.480p";
        public static final String VIDEO_STREAMING_720I = "video.streaming.720i";
        public static final String VOIP_24KBPS = "voip.24k";
        public static final String VOIP_32KBPS = "voip.32k";

        private Role() {
        }
    }

    public LinkCapabilities() {
        this.mCapabilities = new HashMap<>();
    }

    public static LinkCapabilities createNeedsMap(String str) {
        return new LinkCapabilities();
    }

    public static void log(String str) {
        Log.d(TAG, str);
    }

    public void clear() {
        this.mCapabilities.clear();
    }

    public boolean containsKey(int i2) {
        return this.mCapabilities.containsKey(Integer.valueOf(i2));
    }

    public boolean containsValue(String str) {
        return this.mCapabilities.containsValue(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Set<Map.Entry<Integer, String>> entrySet() {
        return this.mCapabilities.entrySet();
    }

    public String get(int i2) {
        return this.mCapabilities.get(Integer.valueOf(i2));
    }

    public boolean isEmpty() {
        return this.mCapabilities.isEmpty();
    }

    public Set<Integer> keySet() {
        return this.mCapabilities.keySet();
    }

    public void put(int i2, String str) {
        this.mCapabilities.put(Integer.valueOf(i2), str);
    }

    public int size() {
        return this.mCapabilities.size();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        boolean z2 = true;
        for (Map.Entry<Integer, String> entry : this.mCapabilities.entrySet()) {
            if (z2) {
                z2 = false;
            } else {
                sb.append(",");
            }
            sb.append(entry.getKey());
            sb.append(":\"");
            sb.append(entry.getValue());
            sb.append("\"");
        }
        sb.append("}");
        return sb.toString();
    }

    public Collection<String> values() {
        return this.mCapabilities.values();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCapabilities.size());
        for (Map.Entry<Integer, String> entry : this.mCapabilities.entrySet()) {
            parcel.writeInt(entry.getKey().intValue());
            parcel.writeString(entry.getValue());
        }
    }

    public LinkCapabilities(LinkCapabilities linkCapabilities) {
        if (linkCapabilities != null) {
            this.mCapabilities = new HashMap<>(linkCapabilities.mCapabilities);
        } else {
            this.mCapabilities = new HashMap<>();
        }
    }
}
