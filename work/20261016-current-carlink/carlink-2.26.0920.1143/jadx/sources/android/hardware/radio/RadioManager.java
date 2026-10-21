package android.hardware.radio;

import android.content.Context;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.telecom.Logging.Session;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.PhoneConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class RadioManager {
    public static final int BAND_AM = 0;
    public static final int BAND_AM_HD = 3;
    public static final int BAND_FM = 1;
    public static final int BAND_FM_HD = 2;
    public static final int BAND_INVALID = -1;
    public static final int CLASS_AM_FM = 0;
    public static final int CLASS_DT = 2;
    public static final int CLASS_SAT = 1;
    public static final int REGION_ITU_1 = 0;
    public static final int REGION_ITU_2 = 1;
    public static final int REGION_JAPAN = 3;
    public static final int REGION_KOREA = 4;
    public static final int REGION_OIRT = 2;
    public static final int STATUS_BAD_VALUE = -22;
    public static final int STATUS_DEAD_OBJECT = -32;
    public static final int STATUS_ERROR = Integer.MIN_VALUE;
    public static final int STATUS_INVALID_OPERATION = -38;
    public static final int STATUS_NO_INIT = -19;
    public static final int STATUS_OK = 0;
    public static final int STATUS_PERMISSION_DENIED = -1;
    public static final int STATUS_TIMED_OUT = -110;
    private static final String TAG = "BroadcastRadio.manager";
    private final Context mContext;
    private final IRadioService mService = IRadioService.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.RADIO_SERVICE));

    public static class AmBandConfig extends BandConfig {
        public static final Parcelable.Creator<AmBandConfig> CREATOR = new Parcelable.Creator<AmBandConfig>() { // from class: android.hardware.radio.RadioManager.AmBandConfig.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AmBandConfig createFromParcel(Parcel parcel) {
                return new AmBandConfig(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AmBandConfig[] newArray(int i2) {
                return new AmBandConfig[i2];
            }
        };
        private final boolean mStereo;

        @Override // android.hardware.radio.RadioManager.BandConfig, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.hardware.radio.RadioManager.BandConfig
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return super.equals(obj) && (obj instanceof AmBandConfig) && this.mStereo == ((AmBandConfig) obj).getStereo();
        }

        public boolean getStereo() {
            return this.mStereo;
        }

        @Override // android.hardware.radio.RadioManager.BandConfig
        public int hashCode() {
            return (super.hashCode() * 31) + (this.mStereo ? 1 : 0);
        }

        @Override // android.hardware.radio.RadioManager.BandConfig
        public String toString() {
            StringBuilder sb = new StringBuilder("AmBandConfig [");
            sb.append(super.toString());
            sb.append(", mStereo=");
            return android.accessibilityservice.c.o(sb, this.mStereo, "]");
        }

        @Override // android.hardware.radio.RadioManager.BandConfig, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.mStereo ? (byte) 1 : (byte) 0);
        }

        public AmBandConfig(AmBandDescriptor amBandDescriptor) {
            super(amBandDescriptor);
            this.mStereo = amBandDescriptor.isStereoSupported();
        }

        public AmBandConfig(int i2, int i3, int i4, int i5, int i6, boolean z2) {
            super(i2, i3, i4, i5, i6);
            this.mStereo = z2;
        }

        public static class Builder {
            private final BandDescriptor mDescriptor;
            private boolean mStereo;

            public Builder(AmBandDescriptor amBandDescriptor) {
                this.mDescriptor = new BandDescriptor(amBandDescriptor.getRegion(), amBandDescriptor.getType(), amBandDescriptor.getLowerLimit(), amBandDescriptor.getUpperLimit(), amBandDescriptor.getSpacing());
                this.mStereo = amBandDescriptor.isStereoSupported();
            }

            public AmBandConfig build() {
                return new AmBandConfig(this.mDescriptor.getRegion(), this.mDescriptor.getType(), this.mDescriptor.getLowerLimit(), this.mDescriptor.getUpperLimit(), this.mDescriptor.getSpacing(), this.mStereo);
            }

            public Builder setStereo(boolean z2) {
                this.mStereo = z2;
                return this;
            }

            public Builder(AmBandConfig amBandConfig) {
                this.mDescriptor = new BandDescriptor(amBandConfig.getRegion(), amBandConfig.getType(), amBandConfig.getLowerLimit(), amBandConfig.getUpperLimit(), amBandConfig.getSpacing());
                this.mStereo = amBandConfig.getStereo();
            }
        }

        private AmBandConfig(Parcel parcel) {
            super(parcel);
            this.mStereo = parcel.readByte() == 1;
        }
    }

    public static class AmBandDescriptor extends BandDescriptor {
        public static final Parcelable.Creator<AmBandDescriptor> CREATOR = new Parcelable.Creator<AmBandDescriptor>() { // from class: android.hardware.radio.RadioManager.AmBandDescriptor.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AmBandDescriptor createFromParcel(Parcel parcel) {
                return new AmBandDescriptor(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AmBandDescriptor[] newArray(int i2) {
                return new AmBandDescriptor[i2];
            }
        };
        private final boolean mStereo;

        @Override // android.hardware.radio.RadioManager.BandDescriptor, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.hardware.radio.RadioManager.BandDescriptor
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return super.equals(obj) && (obj instanceof AmBandDescriptor) && this.mStereo == ((AmBandDescriptor) obj).isStereoSupported();
        }

        @Override // android.hardware.radio.RadioManager.BandDescriptor
        public int hashCode() {
            return (super.hashCode() * 31) + (this.mStereo ? 1 : 0);
        }

        public boolean isStereoSupported() {
            return this.mStereo;
        }

        @Override // android.hardware.radio.RadioManager.BandDescriptor
        public String toString() {
            StringBuilder sb = new StringBuilder("AmBandDescriptor [ ");
            sb.append(super.toString());
            sb.append(" mStereo=");
            return android.accessibilityservice.c.o(sb, this.mStereo, "]");
        }

        @Override // android.hardware.radio.RadioManager.BandDescriptor, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.mStereo ? (byte) 1 : (byte) 0);
        }

        public AmBandDescriptor(int i2, int i3, int i4, int i5, int i6, boolean z2) {
            super(i2, i3, i4, i5, i6);
            this.mStereo = z2;
        }

        private AmBandDescriptor(Parcel parcel) {
            super(parcel);
            this.mStereo = parcel.readByte() == 1;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Band {
    }

    public static class BandConfig implements Parcelable {
        public static final Parcelable.Creator<BandConfig> CREATOR = new Parcelable.Creator<BandConfig>() { // from class: android.hardware.radio.RadioManager.BandConfig.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BandConfig createFromParcel(Parcel parcel) {
                int iLookupTypeFromParcel = BandDescriptor.lookupTypeFromParcel(parcel);
                if (iLookupTypeFromParcel != 0) {
                    if (iLookupTypeFromParcel == 1 || iLookupTypeFromParcel == 2) {
                        return new FmBandConfig(parcel);
                    }
                    if (iLookupTypeFromParcel != 3) {
                        throw new IllegalArgumentException(android.accessibilityservice.c.d("Unsupported band: ", iLookupTypeFromParcel));
                    }
                }
                return new AmBandConfig(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BandConfig[] newArray(int i2) {
                return new BandConfig[i2];
            }
        };
        final BandDescriptor mDescriptor;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BandConfig)) {
                return false;
            }
            BandDescriptor descriptor = ((BandConfig) obj).getDescriptor();
            BandDescriptor bandDescriptor = this.mDescriptor;
            if ((bandDescriptor == null) != (descriptor == null)) {
                return false;
            }
            return bandDescriptor == null || bandDescriptor.equals(descriptor);
        }

        public BandDescriptor getDescriptor() {
            return this.mDescriptor;
        }

        public int getLowerLimit() {
            return this.mDescriptor.getLowerLimit();
        }

        public int getRegion() {
            return this.mDescriptor.getRegion();
        }

        public int getSpacing() {
            return this.mDescriptor.getSpacing();
        }

        public int getType() {
            return this.mDescriptor.getType();
        }

        public int getUpperLimit() {
            return this.mDescriptor.getUpperLimit();
        }

        public int hashCode() {
            return this.mDescriptor.hashCode() + 31;
        }

        public String toString() {
            return "BandConfig [ " + this.mDescriptor.toString() + "]";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            this.mDescriptor.writeToParcel(parcel, i2);
        }

        public BandConfig(BandDescriptor bandDescriptor) {
            this.mDescriptor = bandDescriptor;
        }

        public BandConfig(int i2, int i3, int i4, int i5, int i6) {
            this.mDescriptor = new BandDescriptor(i2, i3, i4, i5, i6);
        }

        private BandConfig(Parcel parcel) {
            this.mDescriptor = new BandDescriptor(parcel);
        }
    }

    public static class BandDescriptor implements Parcelable {
        public static final Parcelable.Creator<BandDescriptor> CREATOR = new Parcelable.Creator<BandDescriptor>() { // from class: android.hardware.radio.RadioManager.BandDescriptor.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BandDescriptor createFromParcel(Parcel parcel) {
                int iLookupTypeFromParcel = BandDescriptor.lookupTypeFromParcel(parcel);
                if (iLookupTypeFromParcel != 0) {
                    if (iLookupTypeFromParcel == 1 || iLookupTypeFromParcel == 2) {
                        return new FmBandDescriptor(parcel);
                    }
                    if (iLookupTypeFromParcel != 3) {
                        throw new IllegalArgumentException(android.accessibilityservice.c.d("Unsupported band: ", iLookupTypeFromParcel));
                    }
                }
                return new AmBandDescriptor(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BandDescriptor[] newArray(int i2) {
                return new BandDescriptor[i2];
            }
        };
        private final int mLowerLimit;
        private final int mRegion;
        private final int mSpacing;
        private final int mType;
        private final int mUpperLimit;

        /* JADX INFO: Access modifiers changed from: private */
        public static int lookupTypeFromParcel(Parcel parcel) {
            int iDataPosition = parcel.dataPosition();
            parcel.readInt();
            int i2 = parcel.readInt();
            parcel.setDataPosition(iDataPosition);
            return i2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BandDescriptor)) {
                return false;
            }
            BandDescriptor bandDescriptor = (BandDescriptor) obj;
            return this.mRegion == bandDescriptor.getRegion() && this.mType == bandDescriptor.getType() && this.mLowerLimit == bandDescriptor.getLowerLimit() && this.mUpperLimit == bandDescriptor.getUpperLimit() && this.mSpacing == bandDescriptor.getSpacing();
        }

        public int getLowerLimit() {
            return this.mLowerLimit;
        }

        public int getRegion() {
            return this.mRegion;
        }

        public int getSpacing() {
            return this.mSpacing;
        }

        public int getType() {
            return this.mType;
        }

        public int getUpperLimit() {
            return this.mUpperLimit;
        }

        public int hashCode() {
            return ((((((((this.mRegion + 31) * 31) + this.mType) * 31) + this.mLowerLimit) * 31) + this.mUpperLimit) * 31) + this.mSpacing;
        }

        public boolean isAmBand() {
            int i2 = this.mType;
            return i2 == 0 || i2 == 3;
        }

        public boolean isFmBand() {
            int i2 = this.mType;
            return i2 == 1 || i2 == 2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BandDescriptor [mRegion=");
            sb.append(this.mRegion);
            sb.append(", mType=");
            sb.append(this.mType);
            sb.append(", mLowerLimit=");
            sb.append(this.mLowerLimit);
            sb.append(", mUpperLimit=");
            sb.append(this.mUpperLimit);
            sb.append(", mSpacing=");
            return android.accessibilityservice.c.m(sb, this.mSpacing, "]");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mRegion);
            parcel.writeInt(this.mType);
            parcel.writeInt(this.mLowerLimit);
            parcel.writeInt(this.mUpperLimit);
            parcel.writeInt(this.mSpacing);
        }

        public BandDescriptor(int i2, int i3, int i4, int i5, int i6) {
            if (i3 != 0 && i3 != 1 && i3 != 2 && i3 != 3) {
                throw new IllegalArgumentException(android.accessibilityservice.c.d("Unsupported band: ", i3));
            }
            this.mRegion = i2;
            this.mType = i3;
            this.mLowerLimit = i4;
            this.mUpperLimit = i5;
            this.mSpacing = i6;
        }

        private BandDescriptor(Parcel parcel) {
            this.mRegion = parcel.readInt();
            this.mType = parcel.readInt();
            this.mLowerLimit = parcel.readInt();
            this.mUpperLimit = parcel.readInt();
            this.mSpacing = parcel.readInt();
        }
    }

    public static class FmBandConfig extends BandConfig {
        public static final Parcelable.Creator<FmBandConfig> CREATOR = new Parcelable.Creator<FmBandConfig>() { // from class: android.hardware.radio.RadioManager.FmBandConfig.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public FmBandConfig createFromParcel(Parcel parcel) {
                return new FmBandConfig(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public FmBandConfig[] newArray(int i2) {
                return new FmBandConfig[i2];
            }
        };
        private final boolean mAf;
        private final boolean mEa;
        private final boolean mRds;
        private final boolean mStereo;
        private final boolean mTa;

        @Override // android.hardware.radio.RadioManager.BandConfig, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.hardware.radio.RadioManager.BandConfig
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!super.equals(obj) || !(obj instanceof FmBandConfig)) {
                return false;
            }
            FmBandConfig fmBandConfig = (FmBandConfig) obj;
            return this.mStereo == fmBandConfig.mStereo && this.mRds == fmBandConfig.mRds && this.mTa == fmBandConfig.mTa && this.mAf == fmBandConfig.mAf && this.mEa == fmBandConfig.mEa;
        }

        public boolean getAf() {
            return this.mAf;
        }

        public boolean getEa() {
            return this.mEa;
        }

        public boolean getRds() {
            return this.mRds;
        }

        public boolean getStereo() {
            return this.mStereo;
        }

        public boolean getTa() {
            return this.mTa;
        }

        @Override // android.hardware.radio.RadioManager.BandConfig
        public int hashCode() {
            return (((((((((super.hashCode() * 31) + (this.mStereo ? 1 : 0)) * 31) + (this.mRds ? 1 : 0)) * 31) + (this.mTa ? 1 : 0)) * 31) + (this.mAf ? 1 : 0)) * 31) + (this.mEa ? 1 : 0);
        }

        @Override // android.hardware.radio.RadioManager.BandConfig
        public String toString() {
            StringBuilder sb = new StringBuilder("FmBandConfig [");
            sb.append(super.toString());
            sb.append(", mStereo=");
            sb.append(this.mStereo);
            sb.append(", mRds=");
            sb.append(this.mRds);
            sb.append(", mTa=");
            sb.append(this.mTa);
            sb.append(", mAf=");
            sb.append(this.mAf);
            sb.append(", mEa =");
            return android.accessibilityservice.c.o(sb, this.mEa, "]");
        }

        @Override // android.hardware.radio.RadioManager.BandConfig, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.mStereo ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mRds ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mTa ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mAf ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mEa ? (byte) 1 : (byte) 0);
        }

        public FmBandConfig(FmBandDescriptor fmBandDescriptor) {
            super(fmBandDescriptor);
            this.mStereo = fmBandDescriptor.isStereoSupported();
            this.mRds = fmBandDescriptor.isRdsSupported();
            this.mTa = fmBandDescriptor.isTaSupported();
            this.mAf = fmBandDescriptor.isAfSupported();
            this.mEa = fmBandDescriptor.isEaSupported();
        }

        public FmBandConfig(int i2, int i3, int i4, int i5, int i6, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
            super(i2, i3, i4, i5, i6);
            this.mStereo = z2;
            this.mRds = z3;
            this.mTa = z4;
            this.mAf = z5;
            this.mEa = z6;
        }

        public static class Builder {
            private boolean mAf;
            private final BandDescriptor mDescriptor;
            private boolean mEa;
            private boolean mRds;
            private boolean mStereo;
            private boolean mTa;

            public Builder(FmBandDescriptor fmBandDescriptor) {
                this.mDescriptor = new BandDescriptor(fmBandDescriptor.getRegion(), fmBandDescriptor.getType(), fmBandDescriptor.getLowerLimit(), fmBandDescriptor.getUpperLimit(), fmBandDescriptor.getSpacing());
                this.mStereo = fmBandDescriptor.isStereoSupported();
                this.mRds = fmBandDescriptor.isRdsSupported();
                this.mTa = fmBandDescriptor.isTaSupported();
                this.mAf = fmBandDescriptor.isAfSupported();
                this.mEa = fmBandDescriptor.isEaSupported();
            }

            public FmBandConfig build() {
                return new FmBandConfig(this.mDescriptor.getRegion(), this.mDescriptor.getType(), this.mDescriptor.getLowerLimit(), this.mDescriptor.getUpperLimit(), this.mDescriptor.getSpacing(), this.mStereo, this.mRds, this.mTa, this.mAf, this.mEa);
            }

            public Builder setAf(boolean z2) {
                this.mAf = z2;
                return this;
            }

            public Builder setEa(boolean z2) {
                this.mEa = z2;
                return this;
            }

            public Builder setRds(boolean z2) {
                this.mRds = z2;
                return this;
            }

            public Builder setStereo(boolean z2) {
                this.mStereo = z2;
                return this;
            }

            public Builder setTa(boolean z2) {
                this.mTa = z2;
                return this;
            }

            public Builder(FmBandConfig fmBandConfig) {
                this.mDescriptor = new BandDescriptor(fmBandConfig.getRegion(), fmBandConfig.getType(), fmBandConfig.getLowerLimit(), fmBandConfig.getUpperLimit(), fmBandConfig.getSpacing());
                this.mStereo = fmBandConfig.getStereo();
                this.mRds = fmBandConfig.getRds();
                this.mTa = fmBandConfig.getTa();
                this.mAf = fmBandConfig.getAf();
                this.mEa = fmBandConfig.getEa();
            }
        }

        private FmBandConfig(Parcel parcel) {
            super(parcel);
            this.mStereo = parcel.readByte() == 1;
            this.mRds = parcel.readByte() == 1;
            this.mTa = parcel.readByte() == 1;
            this.mAf = parcel.readByte() == 1;
            this.mEa = parcel.readByte() == 1;
        }
    }

    public static class FmBandDescriptor extends BandDescriptor {
        public static final Parcelable.Creator<FmBandDescriptor> CREATOR = new Parcelable.Creator<FmBandDescriptor>() { // from class: android.hardware.radio.RadioManager.FmBandDescriptor.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public FmBandDescriptor createFromParcel(Parcel parcel) {
                return new FmBandDescriptor(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public FmBandDescriptor[] newArray(int i2) {
                return new FmBandDescriptor[i2];
            }
        };
        private final boolean mAf;
        private final boolean mEa;
        private final boolean mRds;
        private final boolean mStereo;
        private final boolean mTa;

        @Override // android.hardware.radio.RadioManager.BandDescriptor, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.hardware.radio.RadioManager.BandDescriptor
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!super.equals(obj) || !(obj instanceof FmBandDescriptor)) {
                return false;
            }
            FmBandDescriptor fmBandDescriptor = (FmBandDescriptor) obj;
            return this.mStereo == fmBandDescriptor.isStereoSupported() && this.mRds == fmBandDescriptor.isRdsSupported() && this.mTa == fmBandDescriptor.isTaSupported() && this.mAf == fmBandDescriptor.isAfSupported() && this.mEa == fmBandDescriptor.isEaSupported();
        }

        @Override // android.hardware.radio.RadioManager.BandDescriptor
        public int hashCode() {
            return (((((((((super.hashCode() * 31) + (this.mStereo ? 1 : 0)) * 31) + (this.mRds ? 1 : 0)) * 31) + (this.mTa ? 1 : 0)) * 31) + (this.mAf ? 1 : 0)) * 31) + (this.mEa ? 1 : 0);
        }

        public boolean isAfSupported() {
            return this.mAf;
        }

        public boolean isEaSupported() {
            return this.mEa;
        }

        public boolean isRdsSupported() {
            return this.mRds;
        }

        public boolean isStereoSupported() {
            return this.mStereo;
        }

        public boolean isTaSupported() {
            return this.mTa;
        }

        @Override // android.hardware.radio.RadioManager.BandDescriptor
        public String toString() {
            StringBuilder sb = new StringBuilder("FmBandDescriptor [ ");
            sb.append(super.toString());
            sb.append(" mStereo=");
            sb.append(this.mStereo);
            sb.append(", mRds=");
            sb.append(this.mRds);
            sb.append(", mTa=");
            sb.append(this.mTa);
            sb.append(", mAf=");
            sb.append(this.mAf);
            sb.append(", mEa =");
            return android.accessibilityservice.c.o(sb, this.mEa, "]");
        }

        @Override // android.hardware.radio.RadioManager.BandDescriptor, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.mStereo ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mRds ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mTa ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mAf ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mEa ? (byte) 1 : (byte) 0);
        }

        public FmBandDescriptor(int i2, int i3, int i4, int i5, int i6, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
            super(i2, i3, i4, i5, i6);
            this.mStereo = z2;
            this.mRds = z3;
            this.mTa = z4;
            this.mAf = z5;
            this.mEa = z6;
        }

        private FmBandDescriptor(Parcel parcel) {
            super(parcel);
            this.mStereo = parcel.readByte() == 1;
            this.mRds = parcel.readByte() == 1;
            this.mTa = parcel.readByte() == 1;
            this.mAf = parcel.readByte() == 1;
            this.mEa = parcel.readByte() == 1;
        }
    }

    public static class ModuleProperties implements Parcelable {
        public static final Parcelable.Creator<ModuleProperties> CREATOR = new Parcelable.Creator<ModuleProperties>() { // from class: android.hardware.radio.RadioManager.ModuleProperties.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ModuleProperties createFromParcel(Parcel parcel) {
                return new ModuleProperties(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ModuleProperties[] newArray(int i2) {
                return new ModuleProperties[i2];
            }
        };
        private final BandDescriptor[] mBands;
        private final int mClassId;
        private final int mId;
        private final String mImplementor;
        private final boolean mIsBgScanSupported;
        private final boolean mIsCaptureSupported;
        private final int mNumAudioSources;
        private final int mNumTuners;
        private final String mProduct;
        private final String mSerial;
        private final String mServiceName;
        private final Set<Integer> mSupportedIdentifierTypes;
        private final Set<Integer> mSupportedProgramTypes;
        private final Map<String, String> mVendorInfo;
        private final String mVersion;

        private static Set<Integer> arrayToSet(int[] iArr) {
            return (Set) Arrays.stream(iArr).boxed().collect(Collectors.toSet());
        }

        private static int[] setToArray(Set<Integer> set) {
            return set.stream().mapToInt(new b(0)).toArray();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ModuleProperties)) {
                return false;
            }
            ModuleProperties moduleProperties = (ModuleProperties) obj;
            if (this.mId != moduleProperties.getId() || !TextUtils.equals(this.mServiceName, moduleProperties.mServiceName) || this.mClassId != moduleProperties.getClassId()) {
                return false;
            }
            String str = this.mImplementor;
            if (str == null) {
                if (moduleProperties.getImplementor() != null) {
                    return false;
                }
            } else if (!str.equals(moduleProperties.getImplementor())) {
                return false;
            }
            String str2 = this.mProduct;
            if (str2 == null) {
                if (moduleProperties.getProduct() != null) {
                    return false;
                }
            } else if (!str2.equals(moduleProperties.getProduct())) {
                return false;
            }
            String str3 = this.mVersion;
            if (str3 == null) {
                if (moduleProperties.getVersion() != null) {
                    return false;
                }
            } else if (!str3.equals(moduleProperties.getVersion())) {
                return false;
            }
            String str4 = this.mSerial;
            if (str4 == null) {
                if (moduleProperties.getSerial() != null) {
                    return false;
                }
            } else if (!str4.equals(moduleProperties.getSerial())) {
                return false;
            }
            return this.mNumTuners == moduleProperties.getNumTuners() && this.mNumAudioSources == moduleProperties.getNumAudioSources() && this.mIsCaptureSupported == moduleProperties.isCaptureSupported() && Arrays.equals(this.mBands, moduleProperties.getBands()) && this.mIsBgScanSupported == moduleProperties.isBackgroundScanningSupported() && this.mVendorInfo.equals(moduleProperties.mVendorInfo);
        }

        public BandDescriptor[] getBands() {
            return this.mBands;
        }

        public int getClassId() {
            return this.mClassId;
        }

        public int getId() {
            return this.mId;
        }

        public String getImplementor() {
            return this.mImplementor;
        }

        public int getNumAudioSources() {
            return this.mNumAudioSources;
        }

        public int getNumTuners() {
            return this.mNumTuners;
        }

        public String getProduct() {
            return this.mProduct;
        }

        public String getSerial() {
            return this.mSerial;
        }

        public String getServiceName() {
            return this.mServiceName;
        }

        public Map<String, String> getVendorInfo() {
            return this.mVendorInfo;
        }

        public String getVersion() {
            return this.mVersion;
        }

        public int hashCode() {
            int iHashCode = (((this.mServiceName.hashCode() + ((this.mId + 31) * 31)) * 31) + this.mClassId) * 31;
            String str = this.mImplementor;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.mProduct;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.mVersion;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.mSerial;
            return this.mVendorInfo.hashCode() + ((((((((((((iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.mNumTuners) * 31) + this.mNumAudioSources) * 31) + (this.mIsCaptureSupported ? 1 : 0)) * 31) + Arrays.hashCode(this.mBands)) * 31) + (this.mIsBgScanSupported ? 1 : 0)) * 31);
        }

        public boolean isBackgroundScanningSupported() {
            return this.mIsBgScanSupported;
        }

        public boolean isCaptureSupported() {
            return this.mIsCaptureSupported;
        }

        public boolean isProgramIdentifierSupported(int i2) {
            return this.mSupportedIdentifierTypes.contains(Integer.valueOf(i2));
        }

        public boolean isProgramTypeSupported(int i2) {
            return this.mSupportedProgramTypes.contains(Integer.valueOf(i2));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ModuleProperties [mId=");
            sb.append(this.mId);
            sb.append(", mServiceName=");
            sb.append(this.mServiceName);
            sb.append(", mClassId=");
            sb.append(this.mClassId);
            sb.append(", mImplementor=");
            sb.append(this.mImplementor);
            sb.append(", mProduct=");
            sb.append(this.mProduct);
            sb.append(", mVersion=");
            sb.append(this.mVersion);
            sb.append(", mSerial=");
            sb.append(this.mSerial);
            sb.append(", mNumTuners=");
            sb.append(this.mNumTuners);
            sb.append(", mNumAudioSources=");
            sb.append(this.mNumAudioSources);
            sb.append(", mIsCaptureSupported=");
            sb.append(this.mIsCaptureSupported);
            sb.append(", mIsBgScanSupported=");
            sb.append(this.mIsBgScanSupported);
            sb.append(", mBands=");
            return android.accessibilityservice.c.n(sb, Arrays.toString(this.mBands), "]");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mId);
            parcel.writeString(this.mServiceName);
            parcel.writeInt(this.mClassId);
            parcel.writeString(this.mImplementor);
            parcel.writeString(this.mProduct);
            parcel.writeString(this.mVersion);
            parcel.writeString(this.mSerial);
            parcel.writeInt(this.mNumTuners);
            parcel.writeInt(this.mNumAudioSources);
            parcel.writeInt(this.mIsCaptureSupported ? 1 : 0);
            parcel.writeParcelableArray(this.mBands, i2);
            parcel.writeInt(this.mIsBgScanSupported ? 1 : 0);
            parcel.writeIntArray(setToArray(this.mSupportedProgramTypes));
            parcel.writeIntArray(setToArray(this.mSupportedIdentifierTypes));
            RadioManager.writeStringMap(parcel, this.mVendorInfo);
        }

        public ModuleProperties(int i2, String str, int i3, String str2, String str3, String str4, String str5, int i4, int i5, boolean z2, BandDescriptor[] bandDescriptorArr, boolean z3, int[] iArr, int[] iArr2, Map<String, String> map) {
            this.mId = i2;
            this.mServiceName = TextUtils.isEmpty(str) ? PhoneConstants.APN_TYPE_DEFAULT : str;
            this.mClassId = i3;
            this.mImplementor = str2;
            this.mProduct = str3;
            this.mVersion = str4;
            this.mSerial = str5;
            this.mNumTuners = i4;
            this.mNumAudioSources = i5;
            this.mIsCaptureSupported = z2;
            this.mBands = bandDescriptorArr;
            this.mIsBgScanSupported = z3;
            this.mSupportedProgramTypes = arrayToSet(iArr);
            this.mSupportedIdentifierTypes = arrayToSet(iArr2);
            this.mVendorInfo = map == null ? new HashMap<>() : map;
        }

        private ModuleProperties(Parcel parcel) {
            this.mId = parcel.readInt();
            String string = parcel.readString();
            this.mServiceName = TextUtils.isEmpty(string) ? PhoneConstants.APN_TYPE_DEFAULT : string;
            this.mClassId = parcel.readInt();
            this.mImplementor = parcel.readString();
            this.mProduct = parcel.readString();
            this.mVersion = parcel.readString();
            this.mSerial = parcel.readString();
            this.mNumTuners = parcel.readInt();
            this.mNumAudioSources = parcel.readInt();
            this.mIsCaptureSupported = parcel.readInt() == 1;
            Parcelable[] parcelableArray = parcel.readParcelableArray(BandDescriptor.class.getClassLoader());
            this.mBands = new BandDescriptor[parcelableArray.length];
            for (int i2 = 0; i2 < parcelableArray.length; i2++) {
                this.mBands[i2] = (BandDescriptor) parcelableArray[i2];
            }
            this.mIsBgScanSupported = parcel.readInt() == 1;
            this.mSupportedProgramTypes = arrayToSet(parcel.createIntArray());
            this.mSupportedIdentifierTypes = arrayToSet(parcel.createIntArray());
            this.mVendorInfo = RadioManager.readStringMap(parcel);
        }
    }

    public static class ProgramInfo implements Parcelable {
        public static final Parcelable.Creator<ProgramInfo> CREATOR = new Parcelable.Creator<ProgramInfo>() { // from class: android.hardware.radio.RadioManager.ProgramInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ProgramInfo createFromParcel(Parcel parcel) {
                return new ProgramInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ProgramInfo[] newArray(int i2) {
                return new ProgramInfo[i2];
            }
        };
        private static final int FLAG_LIVE = 1;
        private static final int FLAG_MUTED = 2;
        private static final int FLAG_TRAFFIC_ANNOUNCEMENT = 8;
        private static final int FLAG_TRAFFIC_PROGRAM = 4;
        private final boolean mDigital;
        private final int mFlags;
        private final RadioMetadata mMetadata;
        private final ProgramSelector mSelector;
        private final int mSignalStrength;
        private final boolean mStereo;
        private final boolean mTuned;
        private final Map<String, String> mVendorInfo;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProgramInfo)) {
                return false;
            }
            ProgramInfo programInfo = (ProgramInfo) obj;
            if (!this.mSelector.equals(programInfo.getSelector()) || this.mTuned != programInfo.isTuned() || this.mStereo != programInfo.isStereo() || this.mDigital != programInfo.isDigital() || this.mFlags != programInfo.mFlags || this.mSignalStrength != programInfo.getSignalStrength()) {
                return false;
            }
            RadioMetadata radioMetadata = this.mMetadata;
            if (radioMetadata == null) {
                if (programInfo.getMetadata() != null) {
                    return false;
                }
            } else if (!radioMetadata.equals(programInfo.getMetadata())) {
                return false;
            }
            return this.mVendorInfo.equals(programInfo.mVendorInfo);
        }

        @Deprecated
        public int getChannel() {
            try {
                return (int) this.mSelector.getFirstId(1);
            } catch (IllegalArgumentException unused) {
                Log.w(RadioManager.TAG, "Not an AM/FM program");
                return 0;
            }
        }

        public RadioMetadata getMetadata() {
            return this.mMetadata;
        }

        public ProgramSelector getSelector() {
            return this.mSelector;
        }

        public int getSignalStrength() {
            return this.mSignalStrength;
        }

        @Deprecated
        public int getSubChannel() {
            try {
                return ((int) this.mSelector.getFirstId(4)) + 1;
            } catch (IllegalArgumentException unused) {
                return 0;
            }
        }

        public Map<String, String> getVendorInfo() {
            return this.mVendorInfo;
        }

        public int hashCode() {
            int iHashCode = (((((((((((this.mSelector.hashCode() + 31) * 31) + (this.mTuned ? 1 : 0)) * 31) + (this.mStereo ? 1 : 0)) * 31) + (this.mDigital ? 1 : 0)) * 31) + this.mFlags) * 31) + this.mSignalStrength) * 31;
            RadioMetadata radioMetadata = this.mMetadata;
            return this.mVendorInfo.hashCode() + ((iHashCode + (radioMetadata == null ? 0 : radioMetadata.hashCode())) * 31);
        }

        public boolean isDigital() {
            return this.mDigital;
        }

        public boolean isLive() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isMuted() {
            return (this.mFlags & 2) != 0;
        }

        public boolean isStereo() {
            return this.mStereo;
        }

        public boolean isTrafficAnnouncementActive() {
            return (this.mFlags & 8) != 0;
        }

        public boolean isTrafficProgram() {
            return (this.mFlags & 4) != 0;
        }

        public boolean isTuned() {
            return this.mTuned;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder("ProgramInfo [mSelector=");
            sb.append(this.mSelector);
            sb.append(", mTuned=");
            sb.append(this.mTuned);
            sb.append(", mStereo=");
            sb.append(this.mStereo);
            sb.append(", mDigital=");
            sb.append(this.mDigital);
            sb.append(", mFlags=");
            sb.append(this.mFlags);
            sb.append(", mSignalStrength=");
            sb.append(this.mSignalStrength);
            if (this.mMetadata == null) {
                str = "";
            } else {
                str = ", mMetadata=" + this.mMetadata.toString();
            }
            return android.accessibilityservice.c.n(sb, str, "]");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.mSelector, 0);
            parcel.writeByte(this.mTuned ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mStereo ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mDigital ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.mSignalStrength);
            if (this.mMetadata == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                this.mMetadata.writeToParcel(parcel, i2);
            }
            parcel.writeInt(this.mFlags);
            RadioManager.writeStringMap(parcel, this.mVendorInfo);
        }

        public ProgramInfo(ProgramSelector programSelector, boolean z2, boolean z3, boolean z4, int i2, RadioMetadata radioMetadata, int i3, Map<String, String> map) {
            this.mSelector = programSelector;
            this.mTuned = z2;
            this.mStereo = z3;
            this.mDigital = z4;
            this.mFlags = i3;
            this.mSignalStrength = i2;
            this.mMetadata = radioMetadata;
            this.mVendorInfo = map == null ? new HashMap<>() : map;
        }

        private ProgramInfo(Parcel parcel) {
            this.mSelector = (ProgramSelector) parcel.readParcelable(null);
            this.mTuned = parcel.readByte() == 1;
            this.mStereo = parcel.readByte() == 1;
            this.mDigital = parcel.readByte() == 1;
            this.mSignalStrength = parcel.readInt();
            if (parcel.readByte() == 1) {
                this.mMetadata = RadioMetadata.CREATOR.createFromParcel(parcel);
            } else {
                this.mMetadata = null;
            }
            this.mFlags = parcel.readInt();
            this.mVendorInfo = RadioManager.readStringMap(parcel);
        }
    }

    public RadioManager(Context context) {
        this.mContext = context;
    }

    private native int nativeListModules(List<ModuleProperties> list);

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, String> readStringMap(Parcel parcel) {
        int i2 = parcel.readInt();
        HashMap map = new HashMap();
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                return map;
            }
            map.put(parcel.readString(), parcel.readString());
            i2 = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeStringMap(Parcel parcel, Map<String, String> map) {
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    public int listModules(List<ModuleProperties> list) {
        if (list == null) {
            Log.e(TAG, "the output list must not be empty");
            return -22;
        }
        Log.d(TAG, "Listing available tuners...");
        try {
            List<ModuleProperties> listListModules = this.mService.listModules();
            if (listListModules == null) {
                Log.e(TAG, "Returned list was a null");
                return Integer.MIN_VALUE;
            }
            list.addAll(listListModules);
            return 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed listing available tuners", e2);
            return -32;
        }
    }

    public RadioTuner openTuner(int i2, BandConfig bandConfig, boolean z2, RadioTuner.Callback callback, Handler handler) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be empty");
        }
        Log.d(TAG, "Opening tuner " + i2 + Session.TRUNCATE_STRING);
        try {
            ITuner iTunerOpenTuner = this.mService.openTuner(i2, bandConfig, z2, new TunerCallbackAdapter(callback, handler));
            if (iTunerOpenTuner != null) {
                return new TunerAdapter(iTunerOpenTuner, bandConfig != null ? bandConfig.getType() : -1);
            }
            Log.e(TAG, "Failed to open tuner");
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to open tuner", e2);
            return null;
        }
    }
}
