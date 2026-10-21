package android.view;

import android.content.res.CompatibilityInfo;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import libcore.util.Objects;

/* JADX INFO: loaded from: classes.dex */
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
    public int appWidth;
    public int flags;
    public int largestNominalAppHeight;
    public int largestNominalAppWidth;
    public int layerStack;
    public int logicalDensityDpi;
    public int logicalHeight;
    public int logicalWidth;
    public String name;
    public int overscanBottom;
    public int overscanLeft;
    public int overscanRight;
    public int overscanTop;
    public String ownerPackageName;
    public int ownerUid;
    public float physicalXDpi;
    public float physicalYDpi;
    public float refreshRate;
    public int rotation;
    public int smallestNominalAppHeight;
    public int smallestNominalAppWidth;
    public int type;

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
        return sb.toString();
    }

    private void getMetricsWithSize(DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo, IBinder iBinder, int i2, int i3) {
        int i4 = this.logicalDensityDpi;
        displayMetrics.noncompatDensityDpi = i4;
        displayMetrics.densityDpi = i4;
        displayMetrics.widthPixels = i2;
        displayMetrics.noncompatWidthPixels = i2;
        displayMetrics.heightPixels = i3;
        displayMetrics.noncompatHeightPixels = i3;
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
        this.refreshRate = displayInfo.refreshRate;
        this.logicalDensityDpi = displayInfo.logicalDensityDpi;
        this.physicalXDpi = displayInfo.physicalXDpi;
        this.physicalYDpi = displayInfo.physicalYDpi;
        this.ownerUid = displayInfo.ownerUid;
        this.ownerPackageName = displayInfo.ownerPackageName;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof DisplayInfo) && equals((DisplayInfo) obj);
    }

    public void getAppMetrics(DisplayMetrics displayMetrics) {
        getAppMetrics(displayMetrics, CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO, null);
    }

    public void getLogicalMetrics(DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo, IBinder iBinder) {
        getMetricsWithSize(displayMetrics, compatibilityInfo, iBinder, this.logicalWidth, this.logicalHeight);
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
        this.refreshRate = parcel.readFloat();
        this.logicalDensityDpi = parcel.readInt();
        this.physicalXDpi = parcel.readFloat();
        this.physicalYDpi = parcel.readFloat();
        this.ownerUid = parcel.readInt();
        this.ownerPackageName = parcel.readString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DisplayInfo{\"");
        sb.append(this.name);
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
        sb.append(", ");
        sb.append(this.refreshRate);
        sb.append(" fps, rotation");
        sb.append(this.rotation);
        sb.append(", density ");
        sb.append(this.logicalDensityDpi);
        sb.append(" (");
        sb.append(this.physicalXDpi);
        sb.append(" x ");
        sb.append(this.physicalYDpi);
        sb.append(") dpi, layerStack ");
        sb.append(this.layerStack);
        sb.append(", type ");
        sb.append(Display.typeToString(this.type));
        if (this.address != null) {
            sb.append(", address ");
            sb.append(this.address);
        }
        if (this.ownerUid != 0 || this.ownerPackageName != null) {
            sb.append(", owner ");
            sb.append(this.ownerPackageName);
            sb.append(" (uid ");
            sb.append(this.ownerUid);
            sb.append(")");
        }
        sb.append(flagsToString(this.flags));
        sb.append("}");
        return sb.toString();
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
        parcel.writeFloat(this.refreshRate);
        parcel.writeInt(this.logicalDensityDpi);
        parcel.writeFloat(this.physicalXDpi);
        parcel.writeFloat(this.physicalYDpi);
        parcel.writeInt(this.ownerUid);
        parcel.writeString(this.ownerPackageName);
    }

    public DisplayInfo() {
    }

    public boolean equals(DisplayInfo displayInfo) {
        return displayInfo != null && this.layerStack == displayInfo.layerStack && this.flags == displayInfo.flags && this.type == displayInfo.type && Objects.equal(this.address, displayInfo.address) && Objects.equal(this.name, displayInfo.name) && this.appWidth == displayInfo.appWidth && this.appHeight == displayInfo.appHeight && this.smallestNominalAppWidth == displayInfo.smallestNominalAppWidth && this.smallestNominalAppHeight == displayInfo.smallestNominalAppHeight && this.largestNominalAppWidth == displayInfo.largestNominalAppWidth && this.largestNominalAppHeight == displayInfo.largestNominalAppHeight && this.logicalWidth == displayInfo.logicalWidth && this.logicalHeight == displayInfo.logicalHeight && this.overscanLeft == displayInfo.overscanLeft && this.overscanTop == displayInfo.overscanTop && this.overscanRight == displayInfo.overscanRight && this.overscanBottom == displayInfo.overscanBottom && this.rotation == displayInfo.rotation && this.refreshRate == displayInfo.refreshRate && this.logicalDensityDpi == displayInfo.logicalDensityDpi && this.physicalXDpi == displayInfo.physicalXDpi && this.physicalYDpi == displayInfo.physicalYDpi && this.ownerUid == displayInfo.ownerUid && Objects.equal(this.ownerPackageName, displayInfo.ownerPackageName);
    }

    public void getAppMetrics(DisplayMetrics displayMetrics, DisplayAdjustments displayAdjustments) {
        getMetricsWithSize(displayMetrics, displayAdjustments.getCompatibilityInfo(), displayAdjustments.getActivityToken(), this.appWidth, this.appHeight);
    }

    public DisplayInfo(DisplayInfo displayInfo) {
        copyFrom(displayInfo);
    }

    public void getAppMetrics(DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo, IBinder iBinder) {
        getMetricsWithSize(displayMetrics, compatibilityInfo, iBinder, this.appWidth, this.appHeight);
    }

    private DisplayInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
