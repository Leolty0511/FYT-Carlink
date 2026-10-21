package android.view;

import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArraySet;
import android.util.DisplayMetrics;
import java.util.Arrays;
import java.util.Iterator;
import libcore.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class DisplayInfo implements Parcelable {
    public static final Parcelable.Creator<DisplayInfo> CREATOR = new Parcelable.Creator<DisplayInfo>() { // from class: android.view.DisplayInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DisplayInfo createFromParcel(Parcel parcel) {
            return new DisplayInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DisplayInfo[] newArray(int i2) {
            return new DisplayInfo[i2];
        }
    };
    public String address;
    public int appHeight;
    public long appVsyncOffsetNanos;
    public int appWidth;
    public int colorMode;
    public int defaultModeId;
    public int flags;
    public Display.HdrCapabilities hdrCapabilities;
    public int largestNominalAppHeight;
    public int largestNominalAppWidth;
    public int layerStack;
    public int logicalDensityDpi;
    public int logicalHeight;
    public int logicalWidth;
    public int modeId;
    public String name;
    public int overscanBottom;
    public int overscanLeft;
    public int overscanRight;
    public int overscanTop;
    public String ownerPackageName;
    public int ownerUid;
    public float physicalXDpi;
    public float physicalYDpi;
    public long presentationDeadlineNanos;
    public int removeMode;
    public int rotation;
    public int smallestNominalAppHeight;
    public int smallestNominalAppWidth;
    public int state;
    public int[] supportedColorModes;
    public Display.Mode[] supportedModes;
    public int type;
    public String uniqueId;

    private Display.Mode findMode(int i2) {
        int i3 = 0;
        while (true) {
            Display.Mode[] modeArr = this.supportedModes;
            if (i3 >= modeArr.length) {
                throw new IllegalStateException(android.accessibilityservice.c.d("Unable to locate mode ", i2));
            }
            if (modeArr[i3].getModeId() == i2) {
                return this.supportedModes[i3];
            }
            i3++;
        }
    }

    private static String flagsToString(int i2) {
        StringBuilder sb = new StringBuilder();
        if ((i2 & 2) != 0) {
            sb.append(", FLAG_SECURE");
        }
        if ((i2 & 1) != 0) {
            sb.append(", FLAG_SUPPORTS_PROTECTED_BUFFERS");
        }
        if ((i2 & 4) != 0) {
            sb.append(", FLAG_PRIVATE");
        }
        if ((i2 & 8) != 0) {
            sb.append(", FLAG_PRESENTATION");
        }
        if ((1073741824 & i2) != 0) {
            sb.append(", FLAG_SCALING_DISABLED");
        }
        if ((i2 & 16) != 0) {
            sb.append(", FLAG_ROUND");
        }
        return sb.toString();
    }

    private void getMetricsWithSize(DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo, Configuration configuration, int i2, int i3) {
        Rect rect;
        Rect rect2;
        int i4 = this.logicalDensityDpi;
        displayMetrics.noncompatDensityDpi = i4;
        displayMetrics.densityDpi = i4;
        float f2 = i4 * 0.00625f;
        displayMetrics.noncompatDensity = f2;
        displayMetrics.density = f2;
        displayMetrics.noncompatScaledDensity = f2;
        displayMetrics.scaledDensity = f2;
        float f3 = this.physicalXDpi;
        displayMetrics.noncompatXdpi = f3;
        displayMetrics.xdpi = f3;
        float f4 = this.physicalYDpi;
        displayMetrics.noncompatYdpi = f4;
        displayMetrics.ydpi = f4;
        if (configuration != null && (rect2 = configuration.appBounds) != null) {
            i2 = rect2.width();
        }
        if (configuration != null && (rect = configuration.appBounds) != null) {
            i3 = rect.height();
        }
        displayMetrics.widthPixels = i2;
        displayMetrics.noncompatWidthPixels = i2;
        displayMetrics.heightPixels = i3;
        displayMetrics.noncompatHeightPixels = i3;
        if (compatibilityInfo.equals(CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO)) {
            return;
        }
        compatibilityInfo.applyToDisplayMetrics(displayMetrics);
    }

    public void copyFrom(DisplayInfo displayInfo) {
        this.layerStack = displayInfo.layerStack;
        this.flags = displayInfo.flags;
        this.type = displayInfo.type;
        this.address = displayInfo.address;
        this.name = displayInfo.name;
        this.uniqueId = displayInfo.uniqueId;
        this.appWidth = displayInfo.appWidth;
        this.appHeight = displayInfo.appHeight;
        this.smallestNominalAppWidth = displayInfo.smallestNominalAppWidth;
        this.smallestNominalAppHeight = displayInfo.smallestNominalAppHeight;
        this.largestNominalAppWidth = displayInfo.largestNominalAppWidth;
        this.largestNominalAppHeight = displayInfo.largestNominalAppHeight;
        this.logicalWidth = displayInfo.logicalWidth;
        this.logicalHeight = displayInfo.logicalHeight;
        this.overscanLeft = displayInfo.overscanLeft;
        this.overscanTop = displayInfo.overscanTop;
        this.overscanRight = displayInfo.overscanRight;
        this.overscanBottom = displayInfo.overscanBottom;
        this.rotation = displayInfo.rotation;
        this.modeId = displayInfo.modeId;
        this.defaultModeId = displayInfo.defaultModeId;
        Display.Mode[] modeArr = displayInfo.supportedModes;
        this.supportedModes = (Display.Mode[]) Arrays.copyOf(modeArr, modeArr.length);
        this.colorMode = displayInfo.colorMode;
        int[] iArr = displayInfo.supportedColorModes;
        this.supportedColorModes = Arrays.copyOf(iArr, iArr.length);
        this.hdrCapabilities = displayInfo.hdrCapabilities;
        this.logicalDensityDpi = displayInfo.logicalDensityDpi;
        this.physicalXDpi = displayInfo.physicalXDpi;
        this.physicalYDpi = displayInfo.physicalYDpi;
        this.appVsyncOffsetNanos = displayInfo.appVsyncOffsetNanos;
        this.presentationDeadlineNanos = displayInfo.presentationDeadlineNanos;
        this.state = displayInfo.state;
        this.ownerUid = displayInfo.ownerUid;
        this.ownerPackageName = displayInfo.ownerPackageName;
        this.removeMode = displayInfo.removeMode;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof DisplayInfo) && equals((DisplayInfo) obj);
    }

    public int findDefaultModeByRefreshRate(float f2) {
        Display.Mode[] modeArr = this.supportedModes;
        Display.Mode defaultMode = getDefaultMode();
        for (int i2 = 0; i2 < modeArr.length; i2++) {
            if (modeArr[i2].matches(defaultMode.getPhysicalWidth(), defaultMode.getPhysicalHeight(), f2)) {
                return modeArr[i2].getModeId();
            }
        }
        return 0;
    }

    public void getAppMetrics(DisplayMetrics displayMetrics) {
        getAppMetrics(displayMetrics, CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO, null);
    }

    public Display.Mode getDefaultMode() {
        return findMode(this.defaultModeId);
    }

    public float[] getDefaultRefreshRates() {
        Display.Mode[] modeArr = this.supportedModes;
        ArraySet arraySet = new ArraySet();
        Display.Mode defaultMode = getDefaultMode();
        int i2 = 0;
        for (Display.Mode mode : modeArr) {
            if (mode.getPhysicalWidth() == defaultMode.getPhysicalWidth() && mode.getPhysicalHeight() == defaultMode.getPhysicalHeight()) {
                arraySet.add(Float.valueOf(mode.getRefreshRate()));
            }
        }
        float[] fArr = new float[arraySet.size()];
        Iterator it = arraySet.iterator();
        while (it.hasNext()) {
            fArr[i2] = ((Float) it.next()).floatValue();
            i2++;
        }
        return fArr;
    }

    public void getLogicalMetrics(DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo, Configuration configuration) {
        getMetricsWithSize(displayMetrics, compatibilityInfo, configuration, this.logicalWidth, this.logicalHeight);
    }

    public Display.Mode getMode() {
        return findMode(this.modeId);
    }

    public int getNaturalHeight() {
        int i2 = this.rotation;
        return (i2 == 0 || i2 == 2) ? this.logicalHeight : this.logicalWidth;
    }

    public int getNaturalWidth() {
        int i2 = this.rotation;
        return (i2 == 0 || i2 == 2) ? this.logicalWidth : this.logicalHeight;
    }

    public boolean hasAccess(int i2) {
        return Display.hasAccess(i2, this.flags, this.ownerUid);
    }

    public int hashCode() {
        return 0;
    }

    public boolean isHdr() {
        Display.HdrCapabilities hdrCapabilities = this.hdrCapabilities;
        int[] supportedHdrTypes = hdrCapabilities != null ? hdrCapabilities.getSupportedHdrTypes() : null;
        return supportedHdrTypes != null && supportedHdrTypes.length > 0;
    }

    public boolean isWideColorGamut() {
        for (int i2 : this.supportedColorModes) {
            if (i2 == 6 || i2 > 7) {
                return true;
            }
        }
        return false;
    }

    public void readFromParcel(Parcel parcel) {
        this.layerStack = parcel.readInt();
        this.flags = parcel.readInt();
        this.type = parcel.readInt();
        this.address = parcel.readString();
        this.name = parcel.readString();
        this.appWidth = parcel.readInt();
        this.appHeight = parcel.readInt();
        this.smallestNominalAppWidth = parcel.readInt();
        this.smallestNominalAppHeight = parcel.readInt();
        this.largestNominalAppWidth = parcel.readInt();
        this.largestNominalAppHeight = parcel.readInt();
        this.logicalWidth = parcel.readInt();
        this.logicalHeight = parcel.readInt();
        this.overscanLeft = parcel.readInt();
        this.overscanTop = parcel.readInt();
        this.overscanRight = parcel.readInt();
        this.overscanBottom = parcel.readInt();
        this.rotation = parcel.readInt();
        this.modeId = parcel.readInt();
        this.defaultModeId = parcel.readInt();
        int i2 = parcel.readInt();
        this.supportedModes = new Display.Mode[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.supportedModes[i3] = Display.Mode.CREATOR.createFromParcel(parcel);
        }
        this.colorMode = parcel.readInt();
        int i4 = parcel.readInt();
        this.supportedColorModes = new int[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            this.supportedColorModes[i5] = parcel.readInt();
        }
        this.hdrCapabilities = (Display.HdrCapabilities) parcel.readParcelable(null);
        this.logicalDensityDpi = parcel.readInt();
        this.physicalXDpi = parcel.readFloat();
        this.physicalYDpi = parcel.readFloat();
        this.appVsyncOffsetNanos = parcel.readLong();
        this.presentationDeadlineNanos = parcel.readLong();
        this.state = parcel.readInt();
        this.ownerUid = parcel.readInt();
        this.ownerPackageName = parcel.readString();
        this.uniqueId = parcel.readString();
        this.removeMode = parcel.readInt();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DisplayInfo{\"");
        sb.append(this.name);
        sb.append("\", uniqueId \"");
        sb.append(this.uniqueId);
        sb.append("\", app ");
        sb.append(this.appWidth);
        sb.append(" x ");
        sb.append(this.appHeight);
        sb.append(", real ");
        sb.append(this.logicalWidth);
        sb.append(" x ");
        sb.append(this.logicalHeight);
        if (this.overscanLeft != 0 || this.overscanTop != 0 || this.overscanRight != 0 || this.overscanBottom != 0) {
            sb.append(", overscan (");
            sb.append(this.overscanLeft);
            sb.append(",");
            sb.append(this.overscanTop);
            sb.append(",");
            sb.append(this.overscanRight);
            sb.append(",");
            sb.append(this.overscanBottom);
            sb.append(")");
        }
        sb.append(", largest app ");
        sb.append(this.largestNominalAppWidth);
        sb.append(" x ");
        sb.append(this.largestNominalAppHeight);
        sb.append(", smallest app ");
        sb.append(this.smallestNominalAppWidth);
        sb.append(" x ");
        sb.append(this.smallestNominalAppHeight);
        sb.append(", mode ");
        sb.append(this.modeId);
        sb.append(", defaultMode ");
        sb.append(this.defaultModeId);
        sb.append(", modes ");
        sb.append(Arrays.toString(this.supportedModes));
        sb.append(", colorMode ");
        sb.append(this.colorMode);
        sb.append(", supportedColorModes ");
        sb.append(Arrays.toString(this.supportedColorModes));
        sb.append(", hdrCapabilities ");
        sb.append(this.hdrCapabilities);
        sb.append(", rotation ");
        sb.append(this.rotation);
        sb.append(", density ");
        sb.append(this.logicalDensityDpi);
        sb.append(" (");
        sb.append(this.physicalXDpi);
        sb.append(" x ");
        sb.append(this.physicalYDpi);
        sb.append(") dpi, layerStack ");
        sb.append(this.layerStack);
        sb.append(", appVsyncOff ");
        sb.append(this.appVsyncOffsetNanos);
        sb.append(", presDeadline ");
        sb.append(this.presentationDeadlineNanos);
        sb.append(", type ");
        sb.append(Display.typeToString(this.type));
        if (this.address != null) {
            sb.append(", address ");
            sb.append(this.address);
        }
        sb.append(", state ");
        sb.append(Display.stateToString(this.state));
        if (this.ownerUid != 0 || this.ownerPackageName != null) {
            sb.append(", owner ");
            sb.append(this.ownerPackageName);
            sb.append(" (uid ");
            sb.append(this.ownerUid);
            sb.append(")");
        }
        sb.append(flagsToString(this.flags));
        sb.append(", removeMode ");
        return android.accessibilityservice.c.m(sb, this.removeMode, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.layerStack);
        parcel.writeInt(this.flags);
        parcel.writeInt(this.type);
        parcel.writeString(this.address);
        parcel.writeString(this.name);
        parcel.writeInt(this.appWidth);
        parcel.writeInt(this.appHeight);
        parcel.writeInt(this.smallestNominalAppWidth);
        parcel.writeInt(this.smallestNominalAppHeight);
        parcel.writeInt(this.largestNominalAppWidth);
        parcel.writeInt(this.largestNominalAppHeight);
        parcel.writeInt(this.logicalWidth);
        parcel.writeInt(this.logicalHeight);
        parcel.writeInt(this.overscanLeft);
        parcel.writeInt(this.overscanTop);
        parcel.writeInt(this.overscanRight);
        parcel.writeInt(this.overscanBottom);
        parcel.writeInt(this.rotation);
        parcel.writeInt(this.modeId);
        parcel.writeInt(this.defaultModeId);
        parcel.writeInt(this.supportedModes.length);
        int i3 = 0;
        int i4 = 0;
        while (true) {
            Display.Mode[] modeArr = this.supportedModes;
            if (i4 >= modeArr.length) {
                break;
            }
            modeArr[i4].writeToParcel(parcel, i2);
            i4++;
        }
        parcel.writeInt(this.colorMode);
        parcel.writeInt(this.supportedColorModes.length);
        while (true) {
            int[] iArr = this.supportedColorModes;
            if (i3 >= iArr.length) {
                parcel.writeParcelable(this.hdrCapabilities, i2);
                parcel.writeInt(this.logicalDensityDpi);
                parcel.writeFloat(this.physicalXDpi);
                parcel.writeFloat(this.physicalYDpi);
                parcel.writeLong(this.appVsyncOffsetNanos);
                parcel.writeLong(this.presentationDeadlineNanos);
                parcel.writeInt(this.state);
                parcel.writeInt(this.ownerUid);
                parcel.writeString(this.ownerPackageName);
                parcel.writeString(this.uniqueId);
                parcel.writeInt(this.removeMode);
                return;
            }
            parcel.writeInt(iArr[i3]);
            i3++;
        }
    }

    public DisplayInfo() {
        this.supportedModes = Display.Mode.EMPTY_ARRAY;
        this.supportedColorModes = new int[]{0};
        this.removeMode = 0;
    }

    public boolean equals(DisplayInfo displayInfo) {
        return displayInfo != null && this.layerStack == displayInfo.layerStack && this.flags == displayInfo.flags && this.type == displayInfo.type && Objects.equal(this.address, displayInfo.address) && Objects.equal(this.uniqueId, displayInfo.uniqueId) && this.appWidth == displayInfo.appWidth && this.appHeight == displayInfo.appHeight && this.smallestNominalAppWidth == displayInfo.smallestNominalAppWidth && this.smallestNominalAppHeight == displayInfo.smallestNominalAppHeight && this.largestNominalAppWidth == displayInfo.largestNominalAppWidth && this.largestNominalAppHeight == displayInfo.largestNominalAppHeight && this.logicalWidth == displayInfo.logicalWidth && this.logicalHeight == displayInfo.logicalHeight && this.overscanLeft == displayInfo.overscanLeft && this.overscanTop == displayInfo.overscanTop && this.overscanRight == displayInfo.overscanRight && this.overscanBottom == displayInfo.overscanBottom && this.rotation == displayInfo.rotation && this.modeId == displayInfo.modeId && this.defaultModeId == displayInfo.defaultModeId && this.colorMode == displayInfo.colorMode && Arrays.equals(this.supportedColorModes, displayInfo.supportedColorModes) && Objects.equal(this.hdrCapabilities, displayInfo.hdrCapabilities) && this.logicalDensityDpi == displayInfo.logicalDensityDpi && this.physicalXDpi == displayInfo.physicalXDpi && this.physicalYDpi == displayInfo.physicalYDpi && this.appVsyncOffsetNanos == displayInfo.appVsyncOffsetNanos && this.presentationDeadlineNanos == displayInfo.presentationDeadlineNanos && this.state == displayInfo.state && this.ownerUid == displayInfo.ownerUid && Objects.equal(this.ownerPackageName, displayInfo.ownerPackageName) && this.removeMode == displayInfo.removeMode;
    }

    public void getAppMetrics(DisplayMetrics displayMetrics, DisplayAdjustments displayAdjustments) {
        getMetricsWithSize(displayMetrics, displayAdjustments.getCompatibilityInfo(), displayAdjustments.getConfiguration(), this.appWidth, this.appHeight);
    }

    public void getAppMetrics(DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo, Configuration configuration) {
        getMetricsWithSize(displayMetrics, compatibilityInfo, configuration, this.appWidth, this.appHeight);
    }

    public DisplayInfo(DisplayInfo displayInfo) {
        this.supportedModes = Display.Mode.EMPTY_ARRAY;
        this.supportedColorModes = new int[]{0};
        this.removeMode = 0;
        copyFrom(displayInfo);
    }

    private DisplayInfo(Parcel parcel) {
        this.supportedModes = Display.Mode.EMPTY_ARRAY;
        this.supportedColorModes = new int[]{0};
        this.removeMode = 0;
        readFromParcel(parcel);
    }
}
