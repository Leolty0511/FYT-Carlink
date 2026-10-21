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
public final class SubscribeConfig implements Parcelable {
    public static final Parcelable.Creator<SubscribeConfig> CREATOR = new Parcelable.Creator<SubscribeConfig>() { // from class: android.net.wifi.aware.SubscribeConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubscribeConfig createFromParcel(Parcel parcel) {
            return new SubscribeConfig(parcel.createByteArray(), parcel.createByteArray(), parcel.createByteArray(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubscribeConfig[] newArray(int i2) {
            return new SubscribeConfig[i2];
        }
    };
    public static final int SUBSCRIBE_TYPE_ACTIVE = 1;
    public static final int SUBSCRIBE_TYPE_PASSIVE = 0;
    public final boolean mEnableTerminateNotification;
    public final byte[] mMatchFilter;
    public final byte[] mServiceName;
    public final byte[] mServiceSpecificInfo;
    public final int mSubscribeType;
    public final int mTtlSec;

    public static final class Builder {
        private byte[] mMatchFilter;
        private byte[] mServiceName;
        private byte[] mServiceSpecificInfo;
        private int mSubscribeType = 0;
        private int mTtlSec = 0;
        private boolean mEnableTerminateNotification = true;

        public SubscribeConfig build() {
            return new SubscribeConfig(this.mServiceName, this.mServiceSpecificInfo, this.mMatchFilter, this.mSubscribeType, this.mTtlSec, this.mEnableTerminateNotification);
        }

        public Builder setMatchFilter(List<byte[]> list) {
            this.mMatchFilter = new TlvBufferUtils.TlvConstructor(0, 1).allocateAndPut(list).getArray();
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

        public Builder setSubscribeType(int i2) {
            if (i2 < 0 || i2 > 1) {
                throw new IllegalArgumentException(c.d("Invalid subscribeType - ", i2));
            }
            this.mSubscribeType = i2;
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
    public @interface SubscribeTypes {
    }

    public SubscribeConfig(byte[] bArr, byte[] bArr2, byte[] bArr3, int i2, int i3, boolean z2) {
        this.mServiceName = bArr;
        this.mServiceSpecificInfo = bArr2;
        this.mMatchFilter = bArr3;
        this.mSubscribeType = i2;
        this.mTtlSec = i3;
        this.mEnableTerminateNotification = z2;
    }

    public void assertValid(Characteristics characteristics) {
        byte[] bArr;
        byte[] bArr2;
        WifiAwareUtils.validateServiceName(this.mServiceName);
        if (!TlvBufferUtils.isValid(this.mMatchFilter, 0, 1)) {
            throw new IllegalArgumentException("Invalid matchFilter configuration - LV fields do not match up to length");
        }
        int i2 = this.mSubscribeType;
        if (i2 < 0 || i2 > 1) {
            throw new IllegalArgumentException("Invalid subscribeType - " + this.mSubscribeType);
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
        if (!(obj instanceof SubscribeConfig)) {
            return false;
        }
        SubscribeConfig subscribeConfig = (SubscribeConfig) obj;
        return Arrays.equals(this.mServiceName, subscribeConfig.mServiceName) && Arrays.equals(this.mServiceSpecificInfo, subscribeConfig.mServiceSpecificInfo) && Arrays.equals(this.mMatchFilter, subscribeConfig.mMatchFilter) && this.mSubscribeType == subscribeConfig.mSubscribeType && this.mTtlSec == subscribeConfig.mTtlSec && this.mEnableTerminateNotification == subscribeConfig.mEnableTerminateNotification;
    }

    public int hashCode() {
        return ((((((Arrays.hashCode(this.mMatchFilter) + ((Arrays.hashCode(this.mServiceSpecificInfo) + ((Arrays.hashCode(this.mServiceName) + MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE) * 31)) * 31)) * 31) + this.mSubscribeType) * 31) + this.mTtlSec) * 31) + (this.mEnableTerminateNotification ? 1 : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SubscribeConfig [mServiceName='");
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
        sb.append(", mSubscribeType=");
        sb.append(this.mSubscribeType);
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
        parcel.writeInt(this.mSubscribeType);
        parcel.writeInt(this.mTtlSec);
        parcel.writeInt(this.mEnableTerminateNotification ? 1 : 0);
    }
}
