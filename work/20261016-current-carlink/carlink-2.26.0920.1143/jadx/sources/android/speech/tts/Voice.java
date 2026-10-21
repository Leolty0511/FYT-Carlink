package android.speech.tts;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class Voice implements Parcelable {
    public static final Parcelable.Creator<Voice> CREATOR = new Parcelable.Creator<Voice>() { // from class: android.speech.tts.Voice.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Voice createFromParcel(Parcel parcel) {
            return new Voice(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Voice[] newArray(int i2) {
            return new Voice[i2];
        }
    };
    public static final int LATENCY_HIGH = 400;
    public static final int LATENCY_LOW = 200;
    public static final int LATENCY_NORMAL = 300;
    public static final int LATENCY_VERY_HIGH = 500;
    public static final int LATENCY_VERY_LOW = 100;
    public static final int QUALITY_HIGH = 400;
    public static final int QUALITY_LOW = 200;
    public static final int QUALITY_NORMAL = 300;
    public static final int QUALITY_VERY_HIGH = 500;
    public static final int QUALITY_VERY_LOW = 100;
    private final Set<String> mFeatures;
    private final int mLatency;
    private final Locale mLocale;
    private final String mName;
    private final int mQuality;
    private final boolean mRequiresNetworkConnection;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Voice voice = (Voice) obj;
        Set<String> set = this.mFeatures;
        if (set == null) {
            if (voice.mFeatures != null) {
                return false;
            }
        } else if (!set.equals(voice.mFeatures)) {
            return false;
        }
        if (this.mLatency != voice.mLatency) {
            return false;
        }
        Locale locale = this.mLocale;
        if (locale == null) {
            if (voice.mLocale != null) {
                return false;
            }
        } else if (!locale.equals(voice.mLocale)) {
            return false;
        }
        String str = this.mName;
        if (str == null) {
            if (voice.mName != null) {
                return false;
            }
        } else if (!str.equals(voice.mName)) {
            return false;
        }
        return this.mQuality == voice.mQuality && this.mRequiresNetworkConnection == voice.mRequiresNetworkConnection;
    }

    public Set<String> getFeatures() {
        return this.mFeatures;
    }

    public int getLatency() {
        return this.mLatency;
    }

    public Locale getLocale() {
        return this.mLocale;
    }

    public String getName() {
        return this.mName;
    }

    public int getQuality() {
        return this.mQuality;
    }

    public int hashCode() {
        Set<String> set = this.mFeatures;
        int iHashCode = ((((set == null ? 0 : set.hashCode()) + 31) * 31) + this.mLatency) * 31;
        Locale locale = this.mLocale;
        int iHashCode2 = (iHashCode + (locale == null ? 0 : locale.hashCode())) * 31;
        String str = this.mName;
        return ((((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31) + this.mQuality) * 31) + (this.mRequiresNetworkConnection ? 1231 : 1237);
    }

    public boolean isNetworkConnectionRequired() {
        return this.mRequiresNetworkConnection;
    }

    public String toString() {
        StringBuilder sbQ = c.q(64, "Voice[Name: ");
        sbQ.append(this.mName);
        sbQ.append(", locale: ");
        sbQ.append(this.mLocale);
        sbQ.append(", quality: ");
        sbQ.append(this.mQuality);
        sbQ.append(", latency: ");
        sbQ.append(this.mLatency);
        sbQ.append(", requiresNetwork: ");
        sbQ.append(this.mRequiresNetworkConnection);
        sbQ.append(", features: ");
        sbQ.append(this.mFeatures.toString());
        sbQ.append("]");
        return sbQ.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mName);
        parcel.writeSerializable(this.mLocale);
        parcel.writeInt(this.mQuality);
        parcel.writeInt(this.mLatency);
        parcel.writeByte(this.mRequiresNetworkConnection ? (byte) 1 : (byte) 0);
        parcel.writeStringList(new ArrayList(this.mFeatures));
    }

    public Voice(String str, Locale locale, int i2, int i3, boolean z2, Set<String> set) {
        this.mName = str;
        this.mLocale = locale;
        this.mQuality = i2;
        this.mLatency = i3;
        this.mRequiresNetworkConnection = z2;
        this.mFeatures = set;
    }

    private Voice(Parcel parcel) {
        this.mName = parcel.readString();
        this.mLocale = (Locale) parcel.readSerializable();
        this.mQuality = parcel.readInt();
        this.mLatency = parcel.readInt();
        this.mRequiresNetworkConnection = parcel.readByte() == 1;
        HashSet hashSet = new HashSet();
        this.mFeatures = hashSet;
        Collections.addAll(hashSet, parcel.readStringArray());
    }
}
