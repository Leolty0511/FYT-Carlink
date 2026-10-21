package android.media;

import android.hardware.Camera;
import android.net.ProxyProperties;

/* JADX INFO: loaded from: classes.dex */
class TextTrackRegion {
    public static final int SCROLL_VALUE_NONE = 300;
    public static final int SCROLL_VALUE_SCROLL_UP = 301;
    public String mId = ProxyProperties.LOCAL_EXCL_LIST;
    public float mWidth = 100.0f;
    public int mLines = 3;
    public float mViewportAnchorPointX = 0.0f;
    public float mAnchorPointX = 0.0f;
    public float mViewportAnchorPointY = 100.0f;
    public float mAnchorPointY = 100.0f;
    public int mScrollValue = 300;

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder(" {id:\"");
        sb.append(this.mId);
        sb.append("\", width:");
        sb.append(this.mWidth);
        sb.append(", lines:");
        sb.append(this.mLines);
        sb.append(", anchorPoint:(");
        sb.append(this.mAnchorPointX);
        sb.append(", ");
        sb.append(this.mAnchorPointY);
        sb.append("), viewportAnchorPoints:");
        sb.append(this.mViewportAnchorPointX);
        sb.append(", ");
        sb.append(this.mViewportAnchorPointY);
        sb.append("), scrollValue:");
        int i2 = this.mScrollValue;
        if (i2 == 300) {
            str = Camera.Parameters.EFFECT_NONE;
        } else {
            str = i2 == 301 ? "scroll_up" : "INVALID";
        }
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
