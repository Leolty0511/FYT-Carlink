package android.telephony;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class VisualVoicemailSmsFilterSettings implements Parcelable {
    public static final String DEFAULT_CLIENT_PREFIX = "//VVM";
    public static final int DEFAULT_DESTINATION_PORT = -1;
    public static final int DESTINATION_PORT_ANY = -1;
    public static final int DESTINATION_PORT_DATA_SMS = -2;
    public final String clientPrefix;
    public final int destinationPort;
    public final List<String> originatingNumbers;
    public static final List<String> DEFAULT_ORIGINATING_NUMBERS = Collections.emptyList();
    public static final Parcelable.Creator<VisualVoicemailSmsFilterSettings> CREATOR = new Parcelable.Creator<VisualVoicemailSmsFilterSettings>() { // from class: android.telephony.VisualVoicemailSmsFilterSettings.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VisualVoicemailSmsFilterSettings createFromParcel(Parcel parcel) {
            Builder builder = new Builder();
            builder.setClientPrefix(parcel.readString());
            builder.setOriginatingNumbers(parcel.createStringArrayList());
            builder.setDestinationPort(parcel.readInt());
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VisualVoicemailSmsFilterSettings[] newArray(int i2) {
            return new VisualVoicemailSmsFilterSettings[i2];
        }
    };

    public static class Builder {
        private String mClientPrefix = VisualVoicemailSmsFilterSettings.DEFAULT_CLIENT_PREFIX;
        private List<String> mOriginatingNumbers = VisualVoicemailSmsFilterSettings.DEFAULT_ORIGINATING_NUMBERS;
        private int mDestinationPort = -1;

        public VisualVoicemailSmsFilterSettings build() {
            return new VisualVoicemailSmsFilterSettings(this);
        }

        public Builder setClientPrefix(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Client prefix cannot be null");
            }
            this.mClientPrefix = str;
            return this;
        }

        public Builder setDestinationPort(int i2) {
            this.mDestinationPort = i2;
            return this;
        }

        public Builder setOriginatingNumbers(List<String> list) {
            if (list == null) {
                throw new IllegalArgumentException("Originating numbers cannot be null");
            }
            this.mOriginatingNumbers = list;
            return this;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[VisualVoicemailSmsFilterSettings clientPrefix=");
        sb.append(this.clientPrefix);
        sb.append(", originatingNumbers=");
        sb.append(this.originatingNumbers);
        sb.append(", destinationPort=");
        return c.m(sb, this.destinationPort, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.clientPrefix);
        parcel.writeStringList(this.originatingNumbers);
        parcel.writeInt(this.destinationPort);
    }

    private VisualVoicemailSmsFilterSettings(Builder builder) {
        this.clientPrefix = builder.mClientPrefix;
        this.originatingNumbers = builder.mOriginatingNumbers;
        this.destinationPort = builder.mDestinationPort;
    }
}
