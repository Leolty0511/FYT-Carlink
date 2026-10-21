package android.print;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes.dex */
public final class PrinterCapabilitiesInfo implements Parcelable {
    public static final int DEFAULT_UNDEFINED = -1;
    private static final int PROPERTY_COLOR_MODE = 2;
    private static final int PROPERTY_COUNT = 4;
    private static final int PROPERTY_DUPLEX_MODE = 3;
    private static final int PROPERTY_MEDIA_SIZE = 0;
    private static final int PROPERTY_RESOLUTION = 1;
    private int mColorModes;
    private final int[] mDefaults;
    private int mDuplexModes;
    private List<PrintAttributes.MediaSize> mMediaSizes;
    private PrintAttributes.Margins mMinMargins;
    private List<PrintAttributes.Resolution> mResolutions;
    private static final PrintAttributes.Margins DEFAULT_MARGINS = new PrintAttributes.Margins(0, 0, 0, 0);
    public static final Parcelable.Creator<PrinterCapabilitiesInfo> CREATOR = new Parcelable.Creator<PrinterCapabilitiesInfo>() { // from class: android.print.PrinterCapabilitiesInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrinterCapabilitiesInfo createFromParcel(Parcel parcel) {
            return new PrinterCapabilitiesInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrinterCapabilitiesInfo[] newArray(int i2) {
            return new PrinterCapabilitiesInfo[i2];
        }
    };

    public static final class Builder {
        private final PrinterCapabilitiesInfo mPrototype;

        public Builder(PrinterId printerId) {
            if (printerId == null) {
                throw new IllegalArgumentException("printerId cannot be null.");
            }
            this.mPrototype = new PrinterCapabilitiesInfo();
        }

        private void throwIfDefaultAlreadySpecified(int i2) {
            if (this.mPrototype.mDefaults[i2] != -1) {
                throw new IllegalArgumentException("Default already specified.");
            }
        }

        public Builder addMediaSize(PrintAttributes.MediaSize mediaSize, boolean z2) {
            if (this.mPrototype.mMediaSizes == null) {
                this.mPrototype.mMediaSizes = new ArrayList();
            }
            int size = this.mPrototype.mMediaSizes.size();
            this.mPrototype.mMediaSizes.add(mediaSize);
            if (z2) {
                throwIfDefaultAlreadySpecified(0);
                this.mPrototype.mDefaults[0] = size;
            }
            return this;
        }

        public Builder addResolution(PrintAttributes.Resolution resolution, boolean z2) {
            if (this.mPrototype.mResolutions == null) {
                this.mPrototype.mResolutions = new ArrayList();
            }
            int size = this.mPrototype.mResolutions.size();
            this.mPrototype.mResolutions.add(resolution);
            if (z2) {
                throwIfDefaultAlreadySpecified(1);
                this.mPrototype.mDefaults[1] = size;
            }
            return this;
        }

        public PrinterCapabilitiesInfo build() {
            if (this.mPrototype.mMediaSizes == null || this.mPrototype.mMediaSizes.isEmpty()) {
                throw new IllegalStateException("No media size specified.");
            }
            if (this.mPrototype.mDefaults[0] == -1) {
                throw new IllegalStateException("No default media size specified.");
            }
            if (this.mPrototype.mResolutions == null || this.mPrototype.mResolutions.isEmpty()) {
                throw new IllegalStateException("No resolution specified.");
            }
            if (this.mPrototype.mDefaults[1] == -1) {
                throw new IllegalStateException("No default resolution specified.");
            }
            if (this.mPrototype.mColorModes == 0) {
                throw new IllegalStateException("No color mode specified.");
            }
            if (this.mPrototype.mDefaults[2] == -1) {
                throw new IllegalStateException("No default color mode specified.");
            }
            if (this.mPrototype.mDuplexModes == 0) {
                setDuplexModes(1, 1);
            }
            if (this.mPrototype.mMinMargins != null) {
                return this.mPrototype;
            }
            throw new IllegalArgumentException("margins cannot be null");
        }

        public Builder setColorModes(int i2, int i3) {
            PrinterCapabilitiesInfo.enforceValidMask(i2, new a(3));
            PrintAttributes.enforceValidColorMode(i3);
            this.mPrototype.mColorModes = i2;
            this.mPrototype.mDefaults[2] = i3;
            return this;
        }

        public Builder setDuplexModes(int i2, int i3) {
            PrinterCapabilitiesInfo.enforceValidMask(i2, new a(2));
            PrintAttributes.enforceValidDuplexMode(i3);
            this.mPrototype.mDuplexModes = i2;
            this.mPrototype.mDefaults[3] = i3;
            return this;
        }

        public Builder setMinMargins(PrintAttributes.Margins margins) {
            if (margins == null) {
                throw new IllegalArgumentException("margins cannot be null");
            }
            this.mPrototype.mMinMargins = margins;
            return this;
        }
    }

    private String colorModesToString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        int i2 = this.mColorModes;
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            if (sb.length() > 1) {
                sb.append(", ");
            }
            sb.append(PrintAttributes.colorModeToString(iNumberOfTrailingZeros));
        }
        sb.append(']');
        return sb.toString();
    }

    private String duplexModesToString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        int i2 = this.mDuplexModes;
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            if (sb.length() > 1) {
                sb.append(", ");
            }
            sb.append(PrintAttributes.duplexModeToString(iNumberOfTrailingZeros));
        }
        sb.append(']');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void enforceValidMask(int i2, IntConsumer intConsumer) {
        while (i2 > 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            intConsumer.accept(iNumberOfTrailingZeros);
        }
    }

    private void readDefaults(Parcel parcel) {
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            this.mDefaults[i3] = parcel.readInt();
        }
    }

    private PrintAttributes.Margins readMargins(Parcel parcel) {
        if (parcel.readInt() == 1) {
            return PrintAttributes.Margins.createFromParcel(parcel);
        }
        return null;
    }

    private void readMediaSizes(Parcel parcel) {
        int i2 = parcel.readInt();
        if (i2 > 0 && this.mMediaSizes == null) {
            this.mMediaSizes = new ArrayList();
        }
        for (int i3 = 0; i3 < i2; i3++) {
            this.mMediaSizes.add(PrintAttributes.MediaSize.createFromParcel(parcel));
        }
    }

    private void readResolutions(Parcel parcel) {
        int i2 = parcel.readInt();
        if (i2 > 0 && this.mResolutions == null) {
            this.mResolutions = new ArrayList();
        }
        for (int i3 = 0; i3 < i2; i3++) {
            this.mResolutions.add(PrintAttributes.Resolution.createFromParcel(parcel));
        }
    }

    private void writeDefaults(Parcel parcel) {
        int length = this.mDefaults.length;
        parcel.writeInt(length);
        for (int i2 = 0; i2 < length; i2++) {
            parcel.writeInt(this.mDefaults[i2]);
        }
    }

    private void writeMargins(PrintAttributes.Margins margins, Parcel parcel) {
        if (margins == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            margins.writeToParcel(parcel);
        }
    }

    private void writeMediaSizes(Parcel parcel) {
        List<PrintAttributes.MediaSize> list = this.mMediaSizes;
        if (list == null) {
            parcel.writeInt(0);
            return;
        }
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.mMediaSizes.get(i2).writeToParcel(parcel);
        }
    }

    private void writeResolutions(Parcel parcel) {
        List<PrintAttributes.Resolution> list = this.mResolutions;
        if (list == null) {
            parcel.writeInt(0);
            return;
        }
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.mResolutions.get(i2).writeToParcel(parcel);
        }
    }

    public void copyFrom(PrinterCapabilitiesInfo printerCapabilitiesInfo) {
        if (this == printerCapabilitiesInfo) {
            return;
        }
        this.mMinMargins = printerCapabilitiesInfo.mMinMargins;
        if (printerCapabilitiesInfo.mMediaSizes != null) {
            List<PrintAttributes.MediaSize> list = this.mMediaSizes;
            if (list != null) {
                list.clear();
                this.mMediaSizes.addAll(printerCapabilitiesInfo.mMediaSizes);
            } else {
                this.mMediaSizes = new ArrayList(printerCapabilitiesInfo.mMediaSizes);
            }
        } else {
            this.mMediaSizes = null;
        }
        if (printerCapabilitiesInfo.mResolutions != null) {
            List<PrintAttributes.Resolution> list2 = this.mResolutions;
            if (list2 != null) {
                list2.clear();
                this.mResolutions.addAll(printerCapabilitiesInfo.mResolutions);
            } else {
                this.mResolutions = new ArrayList(printerCapabilitiesInfo.mResolutions);
            }
        } else {
            this.mResolutions = null;
        }
        this.mColorModes = printerCapabilitiesInfo.mColorModes;
        this.mDuplexModes = printerCapabilitiesInfo.mDuplexModes;
        int length = printerCapabilitiesInfo.mDefaults.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mDefaults[i2] = printerCapabilitiesInfo.mDefaults[i2];
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
        if (obj == null || PrinterCapabilitiesInfo.class != obj.getClass()) {
            return false;
        }
        PrinterCapabilitiesInfo printerCapabilitiesInfo = (PrinterCapabilitiesInfo) obj;
        PrintAttributes.Margins margins = this.mMinMargins;
        if (margins == null) {
            if (printerCapabilitiesInfo.mMinMargins != null) {
                return false;
            }
        } else if (!margins.equals(printerCapabilitiesInfo.mMinMargins)) {
            return false;
        }
        List<PrintAttributes.MediaSize> list = this.mMediaSizes;
        if (list == null) {
            if (printerCapabilitiesInfo.mMediaSizes != null) {
                return false;
            }
        } else if (!list.equals(printerCapabilitiesInfo.mMediaSizes)) {
            return false;
        }
        List<PrintAttributes.Resolution> list2 = this.mResolutions;
        if (list2 == null) {
            if (printerCapabilitiesInfo.mResolutions != null) {
                return false;
            }
        } else if (!list2.equals(printerCapabilitiesInfo.mResolutions)) {
            return false;
        }
        return this.mColorModes == printerCapabilitiesInfo.mColorModes && this.mDuplexModes == printerCapabilitiesInfo.mDuplexModes && Arrays.equals(this.mDefaults, printerCapabilitiesInfo.mDefaults);
    }

    public int getColorModes() {
        return this.mColorModes;
    }

    public PrintAttributes getDefaults() {
        PrintAttributes.Builder builder = new PrintAttributes.Builder();
        builder.setMinMargins(this.mMinMargins);
        int i2 = this.mDefaults[0];
        if (i2 >= 0) {
            builder.setMediaSize(this.mMediaSizes.get(i2));
        }
        int i3 = this.mDefaults[1];
        if (i3 >= 0) {
            builder.setResolution(this.mResolutions.get(i3));
        }
        int i4 = this.mDefaults[2];
        if (i4 > 0) {
            builder.setColorMode(i4);
        }
        int i5 = this.mDefaults[3];
        if (i5 > 0) {
            builder.setDuplexMode(i5);
        }
        return builder.build();
    }

    public int getDuplexModes() {
        return this.mDuplexModes;
    }

    public List<PrintAttributes.MediaSize> getMediaSizes() {
        return Collections.unmodifiableList(this.mMediaSizes);
    }

    public PrintAttributes.Margins getMinMargins() {
        return this.mMinMargins;
    }

    public List<PrintAttributes.Resolution> getResolutions() {
        return Collections.unmodifiableList(this.mResolutions);
    }

    public int hashCode() {
        PrintAttributes.Margins margins = this.mMinMargins;
        int iHashCode = ((margins == null ? 0 : margins.hashCode()) + 31) * 31;
        List<PrintAttributes.MediaSize> list = this.mMediaSizes;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<PrintAttributes.Resolution> list2 = this.mResolutions;
        return Arrays.hashCode(this.mDefaults) + ((((((iHashCode2 + (list2 != null ? list2.hashCode() : 0)) * 31) + this.mColorModes) * 31) + this.mDuplexModes) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PrinterInfo{minMargins=");
        sb.append(this.mMinMargins);
        sb.append(", mediaSizes=");
        sb.append(this.mMediaSizes);
        sb.append(", resolutions=");
        sb.append(this.mResolutions);
        sb.append(", colorModes=");
        sb.append(colorModesToString());
        sb.append(", duplexModes=");
        return c.n(sb, duplexModesToString(), "\"}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        writeMargins(this.mMinMargins, parcel);
        writeMediaSizes(parcel);
        writeResolutions(parcel);
        parcel.writeInt(this.mColorModes);
        parcel.writeInt(this.mDuplexModes);
        writeDefaults(parcel);
    }

    public PrinterCapabilitiesInfo() {
        this.mMinMargins = DEFAULT_MARGINS;
        int[] iArr = new int[4];
        this.mDefaults = iArr;
        Arrays.fill(iArr, -1);
    }

    public PrinterCapabilitiesInfo(PrinterCapabilitiesInfo printerCapabilitiesInfo) {
        this.mMinMargins = DEFAULT_MARGINS;
        this.mDefaults = new int[4];
        copyFrom(printerCapabilitiesInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private PrinterCapabilitiesInfo(Parcel parcel) {
        this.mMinMargins = DEFAULT_MARGINS;
        int[] iArr = new int[4];
        this.mDefaults = iArr;
        this.mMinMargins = (PrintAttributes.Margins) Preconditions.checkNotNull(readMargins(parcel));
        readMediaSizes(parcel);
        readResolutions(parcel);
        int i2 = parcel.readInt();
        this.mColorModes = i2;
        enforceValidMask(i2, new a(0 == true ? 1 : 0));
        int i3 = parcel.readInt();
        this.mDuplexModes = i3;
        enforceValidMask(i3, new a(1));
        readDefaults(parcel);
        Preconditions.checkArgument(this.mMediaSizes.size() > iArr[0]);
        Preconditions.checkArgument(this.mResolutions.size() > iArr[1]);
    }
}
