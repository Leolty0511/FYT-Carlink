package android.print;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class PrinterInfo implements Parcelable {
    public static final Parcelable.Creator<PrinterInfo> CREATOR = new Parcelable.Creator<PrinterInfo>() { // from class: android.print.PrinterInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrinterInfo createFromParcel(Parcel parcel) {
            return new PrinterInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrinterInfo[] newArray(int i2) {
            return new PrinterInfo[i2];
        }
    };
    public static final int STATUS_BUSY = 2;
    public static final int STATUS_IDLE = 1;
    public static final int STATUS_UNAVAILABLE = 3;
    private PrinterCapabilitiesInfo mCapabilities;
    private String mDescription;
    private PrinterId mId;
    private String mName;
    private int mStatus;

    public void copyFrom(PrinterInfo printerInfo) {
        if (this == printerInfo) {
            return;
        }
        this.mId = printerInfo.mId;
        this.mName = printerInfo.mName;
        this.mStatus = printerInfo.mStatus;
        this.mDescription = printerInfo.mDescription;
        PrinterCapabilitiesInfo printerCapabilitiesInfo = printerInfo.mCapabilities;
        if (printerCapabilitiesInfo == null) {
            this.mCapabilities = null;
            return;
        }
        PrinterCapabilitiesInfo printerCapabilitiesInfo2 = this.mCapabilities;
        if (printerCapabilitiesInfo2 != null) {
            printerCapabilitiesInfo2.copyFrom(printerCapabilitiesInfo);
        } else {
            this.mCapabilities = new PrinterCapabilitiesInfo(printerInfo.mCapabilities);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PrinterInfo.class != obj.getClass()) {
            return false;
        }
        PrinterInfo printerInfo = (PrinterInfo) obj;
        PrinterId printerId = this.mId;
        if (printerId == null) {
            if (printerInfo.mId != null) {
                return false;
            }
        } else if (!printerId.equals(printerInfo.mId)) {
            return false;
        }
        if (!TextUtils.equals(this.mName, printerInfo.mName) || this.mStatus != printerInfo.mStatus || !TextUtils.equals(this.mDescription, printerInfo.mDescription)) {
            return false;
        }
        PrinterCapabilitiesInfo printerCapabilitiesInfo = this.mCapabilities;
        if (printerCapabilitiesInfo == null) {
            if (printerInfo.mCapabilities != null) {
                return false;
            }
        } else if (!printerCapabilitiesInfo.equals(printerInfo.mCapabilities)) {
            return false;
        }
        return true;
    }

    public PrinterCapabilitiesInfo getCapabilities() {
        return this.mCapabilities;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public PrinterId getId() {
        return this.mId;
    }

    public String getName() {
        return this.mName;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public int hashCode() {
        PrinterId printerId = this.mId;
        int iHashCode = ((printerId != null ? printerId.hashCode() : 0) + 31) * 31;
        String str = this.mName;
        int iHashCode2 = (((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.mStatus) * 31;
        String str2 = this.mDescription;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        PrinterCapabilitiesInfo printerCapabilitiesInfo = this.mCapabilities;
        return iHashCode3 + (printerCapabilitiesInfo != null ? printerCapabilitiesInfo.hashCode() : 0);
    }

    public String toString() {
        return "PrinterInfo{id=" + this.mId + ", name=" + this.mName + ", status=" + this.mStatus + ", description=" + this.mDescription + ", capabilities=" + this.mCapabilities + "\"}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mId, i2);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mStatus);
        parcel.writeString(this.mDescription);
        parcel.writeParcelable(this.mCapabilities, i2);
    }

    private PrinterInfo() {
    }

    private PrinterInfo(PrinterInfo printerInfo) {
        copyFrom(printerInfo);
    }

    private PrinterInfo(Parcel parcel) {
        this.mId = (PrinterId) parcel.readParcelable(null);
        this.mName = parcel.readString();
        this.mStatus = parcel.readInt();
        this.mDescription = parcel.readString();
        this.mCapabilities = (PrinterCapabilitiesInfo) parcel.readParcelable(null);
    }

    public static final class Builder {
        private final PrinterInfo mPrototype;

        public Builder(PrinterId printerId, String str, int i2) {
            if (printerId == null) {
                throw new IllegalArgumentException("printerId cannot be null.");
            }
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("name cannot be empty.");
            }
            if (!isValidStatus(i2)) {
                throw new IllegalArgumentException("status is invalid.");
            }
            PrinterInfo printerInfo = new PrinterInfo();
            this.mPrototype = printerInfo;
            printerInfo.mId = printerId;
            printerInfo.mName = str;
            printerInfo.mStatus = i2;
        }

        private boolean isValidStatus(int i2) {
            return i2 == 1 || i2 == 2 || i2 == 3;
        }

        public PrinterInfo build() {
            return this.mPrototype;
        }

        public Builder setCapabilities(PrinterCapabilitiesInfo printerCapabilitiesInfo) {
            this.mPrototype.mCapabilities = printerCapabilitiesInfo;
            return this;
        }

        public Builder setDescription(String str) {
            this.mPrototype.mDescription = str;
            return this;
        }

        public Builder setName(String str) {
            this.mPrototype.mName = str;
            return this;
        }

        public Builder setStatus(int i2) {
            this.mPrototype.mStatus = i2;
            return this;
        }

        public Builder(PrinterInfo printerInfo) {
            PrinterInfo printerInfo2 = new PrinterInfo();
            this.mPrototype = printerInfo2;
            printerInfo2.copyFrom(printerInfo);
        }
    }
}
