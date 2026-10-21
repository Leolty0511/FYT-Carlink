package android.hardware.display;

import android.accessibilityservice.c;
import android.graphics.Rect;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayViewport {
    public int deviceHeight;
    public int deviceWidth;
    public int displayId;
    public int orientation;
    public String uniqueId;
    public boolean valid;
    public final Rect logicalFrame = new Rect();
    public final Rect physicalFrame = new Rect();

    public void copyFrom(DisplayViewport displayViewport) {
        this.valid = displayViewport.valid;
        this.displayId = displayViewport.displayId;
        this.orientation = displayViewport.orientation;
        this.logicalFrame.set(displayViewport.logicalFrame);
        this.physicalFrame.set(displayViewport.physicalFrame);
        this.deviceWidth = displayViewport.deviceWidth;
        this.deviceHeight = displayViewport.deviceHeight;
        this.uniqueId = displayViewport.uniqueId;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DisplayViewport)) {
            return false;
        }
        DisplayViewport displayViewport = (DisplayViewport) obj;
        return this.valid == displayViewport.valid && this.displayId == displayViewport.displayId && this.orientation == displayViewport.orientation && this.logicalFrame.equals(displayViewport.logicalFrame) && this.physicalFrame.equals(displayViewport.physicalFrame) && this.deviceWidth == displayViewport.deviceWidth && this.deviceHeight == displayViewport.deviceHeight && TextUtils.equals(this.uniqueId, displayViewport.uniqueId);
    }

    public int hashCode() {
        int i2 = 31 + (this.valid ? 1 : 0) + 1;
        int i3 = (i2 * 31) + this.displayId + i2;
        int i4 = (i3 * 31) + this.orientation + i3;
        int iHashCode = this.logicalFrame.hashCode() + (i4 * 31) + i4;
        int iHashCode2 = this.physicalFrame.hashCode() + (iHashCode * 31) + iHashCode;
        int i5 = (iHashCode2 * 31) + this.deviceWidth + iHashCode2;
        int i6 = (i5 * 31) + this.deviceHeight + i5;
        return this.uniqueId.hashCode() + (i6 * 31) + i6;
    }

    public DisplayViewport makeCopy() {
        DisplayViewport displayViewport = new DisplayViewport();
        displayViewport.copyFrom(this);
        return displayViewport;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DisplayViewport{valid=");
        sb.append(this.valid);
        sb.append(", displayId=");
        sb.append(this.displayId);
        sb.append(", uniqueId='");
        sb.append(this.uniqueId);
        sb.append("', orientation=");
        sb.append(this.orientation);
        sb.append(", logicalFrame=");
        sb.append(this.logicalFrame);
        sb.append(", physicalFrame=");
        sb.append(this.physicalFrame);
        sb.append(", deviceWidth=");
        sb.append(this.deviceWidth);
        sb.append(", deviceHeight=");
        return c.m(sb, this.deviceHeight, "}");
    }
}
