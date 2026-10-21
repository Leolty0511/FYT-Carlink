package android.net.wifi.aware;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.logging.nano.MetricsProto;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import libcore.util.HexEncoding;

/* JADX INFO: loaded from: classes.dex */
public final class PublishConfig implements Parcelable {
    public static final Parcelable.Creator<PublishConfig> CREATOR = new Parcelable.Creator<PublishConfig>() { // from class: android.net.wifi.aware.PublishConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PublishConfig createFromParcel(Parcel parcel) {
            return new PublishConfig(parcel.createByteArray(), parcel.createByteArray(), parcel.createByteArray(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PublishConfig[] newArray(int i2) {
            return new PublishConfig[i2];
        }
    };
    public static final int PUBLISH_TYPE_SOLICITED = 1;
    public static final int PUBLISH_TYPE_UNSOLICITED = 0;
    public final boolean mEnableTerminateNotification;
    public final byte[] mMatchFilter;
    public final int mPublishType;
    public final byte[] mServiceName;
    public final byte[] mServiceSpecificInfo;
    public final int mTtlSec;

    public static final class Builder {
        private byte[] mMatchFilter;
        private byte[] mServiceName;
        private byte[] mServiceSpecificInfo;
        private int mPublishType = 0;
        private int mTtlSec = 0;
        private boolean mEnableTerminateNotification = true;

        public PublishConfig build() {
            return new PublishConfig(this.mServiceName, this.mServiceSpecificInfo, this.mMatchFilter, this.mPublishType, this.mTtlSec, this.mEnableTerminateNotification);
        }

        public Builder setMatchFilter(List<byte[]> list) {
            this.mMatchFilter = new TlvBufferUtils.TlvConstructor(0, 1).allocateAndPut(list).getArray();
            return this;
        }

        public Builder setPublishType(int i2) {
            if (i2 < 0 || i2 > 1) {
                throw new IllegalArgumentException(c.d("Invalid publishType - ", i2));
            }
            this.mPublishType = i2;
            return this;
        }

        public Builder setServiceName(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Invalid service name - must be non-null");
            }
            this.mServiceName = str.getBytes(StandardCharsets.UTF_8);
            return this;
        }

        public Builder setServiceSpecificInfo(byte[] bArr) {
            this.mServiceSpecificInfo = bArr;
            return this;
        }

        public Builder setTerminateNotificationEnabled(boolean z2) {
            this.mEnableTerminateNotification = z2;
            return this;
        }

        public Builder setTtlSec(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Invalid ttlSec - must be non-negative");
            }
            this.mTtlSec = i2;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PublishTypes {
    }

    public PublishConfig(byte[] bArr, byte[] bArr2, byte[] bArr3, int i2, int i3, boolean z2) {
        this.mServiceName = bArr;
        this.mServiceSpecificInfo = bArr2;
        this.mMatchFilter = bArr3;
        this.mPublishType = i2;
        this.mTtlSec = i3;
        this.mEnableTerminateNotification = z2;
    }

    public void assertValid(Characteristics characteristics) {
        byte[] bArr;
        byte[] bArr2;
        WifiAwareUtils.validateServiceName(this.mServiceName);
        if (!TlvBufferUtils.isValid(this.mMatchFilter, 0, 1)) {
            throw new IllegalArgumentException("Invalid txFilter configuration - LV fields do not match up to length");
        }
        int i2 = this.mPublishType;
        if (i2 < 0 || i2 > 1) {
            throw new IllegalArgumentException("Invalid publishType - " + this.mPublishType);
        }
        if (this.mTtlSec < 0) {
            throw new IllegalArgumentException("Invalid ttlSec - must be non-negative");
        }
        if (characteristics != null) {
            int maxServiceNameLength = characteristics.getMaxServiceNameLength();
            if (maxServiceNameLength != 0 && this.mServiceName.length > maxServiceNameLength) {
                throw new IllegalArgumentException("Service name longer than supported by device characteristics");
            }
            int maxServiceSpecificInfoLength = characteristics.getMaxServiceSpecificInfoLength();
            if (maxServiceSpecificInfoLength != 0 && (bArr2 = this.mServiceSpecificInfo) != null && bArr2.length > maxServiceSpecificInfoLength) {
                throw new IllegalArgumentException("Service specific info longer than supported by device characteristics");
            }
            int maxMatchFilterLength = characteristics.getMaxMatchFilterLength();
            if (maxMatchFilterLength != 0 && (bArr = this.mMatchFilter) != null && bArr.length > maxMatchFilterLength) {
                throw new IllegalArgumentException("Match filter longer than supported by device characteristics");
            }
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
        if (!(obj instanceof PublishConfig)) {
            return false;
        }
        PublishConfig publishConfig = (PublishConfig) obj;
        return Arrays.equals(this.mServiceName, publishConfig.mServiceName) && Arrays.equals(this.mServiceSpecificInfo, publishConfig.mServiceSpecificInfo) && Arrays.equals(this.mMatchFilter, publishConfig.mMatchFilter) && this.mPublishType == publishConfig.mPublishType && this.mTtlSec == publishConfig.mTtlSec && this.mEnableTerminateNotification == publishConfig.mEnableTerminateNotification;
    }

    public int hashCode() {
        return ((((((Arrays.hashCode(this.mMatchFilter) + ((Arrays.hashCode(this.mServiceSpecificInfo) + ((Arrays.hashCode(this.mServiceName) + MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE) * 31)) * 31)) * 31) + this.mPublishType) * 31) + this.mTtlSec) * 31) + (this.mEnableTerminateNotification ? 1 : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PublishConfig [mServiceName='");
        byte[] bArr = this.mServiceName;
        sb.append(bArr == null ? "<null>" : String.valueOf(HexEncoding.encode(bArr)));
        sb.append(", mServiceName.length=");
        byte[] bArr2 = this.mServiceName;
        sb.append(bArr2 == null ? 0 : bArr2.length);
        sb.append(", mServiceSpecificInfo='");
        byte[] bArr3 = this.mServiceSpecificInfo;
        sb.append(bArr3 != null ? String.valueOf(HexEncoding.encode(bArr3)) : "<null>");
        sb.append(", mServiceSpecificInfo.length=");
        byte[] bArr4 = this.mServiceSpecificInfo;
        sb.append(bArr4 == null ? 0 : bArr4.length);
        sb.append(", mMatchFilter=");
        sb.append(new TlvBufferUtils.TlvIterable(0, 1, this.mMatchFilter).toString());
        sb.append(", mMatchFilter.length=");
        byte[] bArr5 = this.mMatchFilter;
        sb.append(bArr5 != null ? bArr5.length : 0);
        sb.append(", mPublishType=");
        sb.append(this.mPublishType);
        sb.append(", mTtlSec=");
        sb.append(this.mTtlSec);
        sb.append(", mEnableTerminateNotification=");
        return c.o(sb, this.mEnableTerminateNotification, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByteArray(this.mServiceName);
        parcel.writeByteArray(this.mServiceSpecificInfo);
        parcel.writeByteArray(this.mMatchFilter);
        parcel.writeInt(this.mPublishType);
        parcel.writeInt(this.mTtlSec);
        parcel.writeInt(this.mEnableTerminateNotification ? 1 : 0);
    }
}
