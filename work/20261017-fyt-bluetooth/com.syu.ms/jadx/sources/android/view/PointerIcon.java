package android.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import i.a;
import u.n;

/* JADX INFO: loaded from: classes.dex */
public final class PointerIcon implements Parcelable {
    public static final int STYLE_ARROW = 1000;
    public static final int STYLE_CUSTOM = -1;
    private static final int STYLE_DEFAULT = 1000;
    public static final int STYLE_NULL = 0;
    private static final int STYLE_OEM_FIRST = 10000;
    public static final int STYLE_SPOT_ANCHOR = 2002;
    public static final int STYLE_SPOT_HOVER = 2000;
    public static final int STYLE_SPOT_TOUCH = 2001;
    private static final String TAG = "PointerIcon";
    private Bitmap mBitmap;
    private float mHotSpotX;
    private float mHotSpotY;
    private final int mStyle;
    private int mSystemIconResourceId;
    private static final PointerIcon gNullIcon = new PointerIcon(0);
    public static final Parcelable.Creator<PointerIcon> CREATOR = new Parcelable.Creator<PointerIcon>() { // from class: android.view.PointerIcon.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PointerIcon createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == 0) {
                return PointerIcon.getNullIcon();
            }
            int i3 = parcel.readInt();
            if (i3 == 0) {
                return PointerIcon.createCustomIcon(Bitmap.CREATOR.createFromParcel(parcel), parcel.readFloat(), parcel.readFloat());
            }
            PointerIcon pointerIcon = new PointerIcon(i2);
            pointerIcon.mSystemIconResourceId = i3;
            return pointerIcon;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PointerIcon[] newArray(int i2) {
            return new PointerIcon[i2];
        }
    };

    public static PointerIcon createCustomIcon(Bitmap bitmap, float f2, float f3) {
        if (bitmap == null) {
            throw new IllegalArgumentException("bitmap must not be null");
        }
        validateHotSpot(bitmap, f2, f3);
        PointerIcon pointerIcon = new PointerIcon(-1);
        pointerIcon.mBitmap = bitmap;
        pointerIcon.mHotSpotX = f2;
        pointerIcon.mHotSpotY = f3;
        return pointerIcon;
    }

    public static PointerIcon getDefaultIcon(Context context) {
        return getSystemIcon(context, 1000);
    }

    public static PointerIcon getNullIcon() {
        return gNullIcon;
    }

    public static PointerIcon getSystemIcon(Context context, int i2) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        if (i2 == 0) {
            return gNullIcon;
        }
        int systemIconStyleIndex = getSystemIconStyleIndex(i2);
        if (systemIconStyleIndex == 0) {
            systemIconStyleIndex = getSystemIconStyleIndex(1000);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, a.Pointer, 16843808, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(systemIconStyleIndex, -1);
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId == -1) {
            Log.w(TAG, "Missing theme resources for pointer icon style " + i2);
            return i2 == 1000 ? gNullIcon : getSystemIcon(context, 1000);
        }
        PointerIcon pointerIcon = new PointerIcon(i2);
        if (((-16777216) & resourceId) == 16777216) {
            pointerIcon.mSystemIconResourceId = resourceId;
        } else {
            pointerIcon.loadResource(context.getResources(), resourceId);
        }
        return pointerIcon;
    }

    private static int getSystemIconStyleIndex(int i2) {
        switch (i2) {
            case 2000:
                return 1;
            case 2001:
                return 2;
            case 2002:
                return 3;
            default:
                return 0;
        }
    }

    public static PointerIcon loadCustomIcon(Resources resources, int i2) {
        if (resources == null) {
            throw new IllegalArgumentException("resources must not be null");
        }
        PointerIcon pointerIcon = new PointerIcon(-1);
        pointerIcon.loadResource(resources, i2);
        return pointerIcon;
    }

    private void loadResource(Resources resources, int i2) {
        XmlResourceParser xml = resources.getXml(i2);
        try {
            try {
                n.a(xml, "pointer-icon");
                TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xml, a.PointerIcon);
                int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
                float f2 = typedArrayObtainAttributes.getFloat(1, 0.0f);
                float f3 = typedArrayObtainAttributes.getFloat(2, 0.0f);
                typedArrayObtainAttributes.recycle();
                xml.close();
                if (resourceId == 0) {
                    throw new IllegalArgumentException("<pointer-icon> is missing bitmap attribute.");
                }
                Drawable drawable = resources.getDrawable(resourceId);
                if (!(drawable instanceof BitmapDrawable)) {
                    throw new IllegalArgumentException("<pointer-icon> bitmap attribute must refer to a bitmap drawable.");
                }
                this.mBitmap = ((BitmapDrawable) drawable).getBitmap();
                this.mHotSpotX = f2;
                this.mHotSpotY = f3;
            } catch (Exception e2) {
                throw new IllegalArgumentException("Exception parsing pointer icon resource.", e2);
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    private void throwIfIconIsNotLoaded() {
        if (!isLoaded()) {
            throw new IllegalStateException("The icon is not loaded.");
        }
    }

    private static void validateHotSpot(Bitmap bitmap, float f2, float f3) {
        if (f2 < 0.0f || f2 >= bitmap.getWidth()) {
            throw new IllegalArgumentException("x hotspot lies outside of the bitmap area");
        }
        if (f3 < 0.0f || f3 >= bitmap.getHeight()) {
            throw new IllegalArgumentException("y hotspot lies outside of the bitmap area");
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        int i2;
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof PointerIcon)) {
            PointerIcon pointerIcon = (PointerIcon) obj;
            if (this.mStyle == pointerIcon.mStyle && (i2 = this.mSystemIconResourceId) == pointerIcon.mSystemIconResourceId) {
                return i2 != 0 || (this.mBitmap == pointerIcon.mBitmap && this.mHotSpotX == pointerIcon.mHotSpotX && this.mHotSpotY == pointerIcon.mHotSpotY);
            }
        }
        return false;
    }

    public Bitmap getBitmap() {
        throwIfIconIsNotLoaded();
        return this.mBitmap;
    }

    public float getHotSpotX() {
        throwIfIconIsNotLoaded();
        return this.mHotSpotX;
    }

    public float getHotSpotY() {
        throwIfIconIsNotLoaded();
        return this.mHotSpotY;
    }

    public int getStyle() {
        return this.mStyle;
    }

    public boolean isLoaded() {
        return this.mBitmap != null || this.mStyle == 0;
    }

    public boolean isNullIcon() {
        return this.mStyle == 0;
    }

    public PointerIcon load(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        if (this.mSystemIconResourceId == 0 || this.mBitmap != null) {
            return this;
        }
        PointerIcon pointerIcon = new PointerIcon(this.mStyle);
        pointerIcon.mSystemIconResourceId = this.mSystemIconResourceId;
        pointerIcon.loadResource(context.getResources(), this.mSystemIconResourceId);
        return pointerIcon;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mStyle);
        if (this.mStyle != 0) {
            parcel.writeInt(this.mSystemIconResourceId);
            if (this.mSystemIconResourceId == 0) {
                this.mBitmap.writeToParcel(parcel, i2);
                parcel.writeFloat(this.mHotSpotX);
                parcel.writeFloat(this.mHotSpotY);
            }
        }
    }

    private PointerIcon(int i2) {
        this.mStyle = i2;
    }
}
