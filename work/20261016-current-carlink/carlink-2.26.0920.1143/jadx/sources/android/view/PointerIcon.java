package android.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.R;
import com.android.internal.util.XmlUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerIcon implements Parcelable {
    private static final String TAG = "PointerIcon";
    public static final int TYPE_ALIAS = 1010;
    public static final int TYPE_ALL_SCROLL = 1013;
    public static final int TYPE_ARROW = 1000;
    public static final int TYPE_CELL = 1006;
    public static final int TYPE_CONTEXT_MENU = 1001;
    public static final int TYPE_COPY = 1011;
    public static final int TYPE_CROSSHAIR = 1007;
    public static final int TYPE_CUSTOM = -1;
    public static final int TYPE_DEFAULT = 1000;
    public static final int TYPE_GRAB = 1020;
    public static final int TYPE_GRABBING = 1021;
    public static final int TYPE_HAND = 1002;
    public static final int TYPE_HELP = 1003;
    public static final int TYPE_HORIZONTAL_DOUBLE_ARROW = 1014;
    public static final int TYPE_NOT_SPECIFIED = 1;
    public static final int TYPE_NO_DROP = 1012;
    public static final int TYPE_NULL = 0;
    private static final int TYPE_OEM_FIRST = 10000;
    public static final int TYPE_SPOT_ANCHOR = 2002;
    public static final int TYPE_SPOT_HOVER = 2000;
    public static final int TYPE_SPOT_TOUCH = 2001;
    public static final int TYPE_TEXT = 1008;
    public static final int TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW = 1017;
    public static final int TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW = 1016;
    public static final int TYPE_VERTICAL_DOUBLE_ARROW = 1015;
    public static final int TYPE_VERTICAL_TEXT = 1009;
    public static final int TYPE_WAIT = 1004;
    public static final int TYPE_ZOOM_IN = 1018;
    public static final int TYPE_ZOOM_OUT = 1019;
    private Bitmap mBitmap;
    private Bitmap[] mBitmapFrames;
    private int mDurationPerFrame;
    private float mHotSpotX;
    private float mHotSpotY;
    private int mSystemIconResourceId;
    private final int mType;
    private static final PointerIcon gNullIcon = new PointerIcon(0);
    private static final SparseArray<PointerIcon> gSystemIcons = new SparseArray<>();
    private static boolean sUseLargeIcons = false;
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
                return PointerIcon.create(Bitmap.CREATOR.createFromParcel(parcel), parcel.readFloat(), parcel.readFloat());
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

    public static PointerIcon create(Bitmap bitmap, float f2, float f3) {
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
        SparseArray<PointerIcon> sparseArray = gSystemIcons;
        PointerIcon pointerIcon = sparseArray.get(i2);
        if (pointerIcon != null) {
            return pointerIcon;
        }
        int systemIconTypeIndex = getSystemIconTypeIndex(i2);
        if (systemIconTypeIndex == 0) {
            systemIconTypeIndex = getSystemIconTypeIndex(1000);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.Pointer, 0, sUseLargeIcons ? R.style.LargePointer : R.style.Pointer);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(systemIconTypeIndex, -1);
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId == -1) {
            android.app.m.A("Missing theme resources for pointer icon type ", i2, TAG);
            return i2 == 1000 ? gNullIcon : getSystemIcon(context, 1000);
        }
        PointerIcon pointerIcon2 = new PointerIcon(i2);
        if (((-16777216) & resourceId) == 16777216) {
            pointerIcon2.mSystemIconResourceId = resourceId;
        } else {
            pointerIcon2.loadResource(context, context.getResources(), resourceId);
        }
        sparseArray.append(i2, pointerIcon2);
        return pointerIcon2;
    }

    private static int getSystemIconTypeIndex(int i2) {
        switch (i2) {
            case 1000:
                return 2;
            case 1001:
                return 4;
            case 1002:
                return 9;
            case 1003:
                return 10;
            case 1004:
                return 21;
            default:
                switch (i2) {
                    case 1006:
                        return 3;
                    case 1007:
                        return 6;
                    case 1008:
                        return 16;
                    case 1009:
                        return 20;
                    default:
                        switch (i2) {
                            case 1011:
                                return 5;
                            case 1012:
                                return 12;
                            case 1013:
                                return 1;
                            case 1014:
                                return 11;
                            case 1015:
                                return 19;
                            case 1016:
                                return 18;
                            case 1017:
                                return 17;
                            case 1018:
                                return 22;
                            case 1019:
                                return 23;
                            case 1020:
                                return 7;
                            case 1021:
                                return 8;
                            default:
                                switch (i2) {
                                    case 2000:
                                        return 14;
                                    case 2001:
                                        return 15;
                                    case 2002:
                                        return 13;
                                    default:
                                        return 0;
                                }
                        }
                }
        }
    }

    public static PointerIcon load(Resources resources, int i2) {
        if (resources == null) {
            throw new IllegalArgumentException("resources must not be null");
        }
        PointerIcon pointerIcon = new PointerIcon(-1);
        pointerIcon.loadResource(null, resources, i2);
        return pointerIcon;
    }

    private void loadResource(Context context, Resources resources, int i2) {
        XmlResourceParser xml = resources.getXml(i2);
        try {
            try {
                XmlUtils.beginDocument(xml, "pointer-icon");
                TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xml, R.styleable.PointerIcon);
                int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
                float dimension = typedArrayObtainAttributes.getDimension(1, 0.0f);
                float dimension2 = typedArrayObtainAttributes.getDimension(2, 0.0f);
                typedArrayObtainAttributes.recycle();
                xml.close();
                if (resourceId == 0) {
                    throw new IllegalArgumentException("<pointer-icon> is missing bitmap attribute.");
                }
                Drawable drawable = context == null ? resources.getDrawable(resourceId) : context.getDrawable(resourceId);
                if (drawable instanceof AnimationDrawable) {
                    AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
                    int numberOfFrames = animationDrawable.getNumberOfFrames();
                    Drawable frame = animationDrawable.getFrame(0);
                    if (numberOfFrames == 1) {
                        Log.w(TAG, "Animation icon with single frame -- simply treating the first frame as a normal bitmap icon.");
                    } else {
                        this.mDurationPerFrame = animationDrawable.getDuration(0);
                        this.mBitmapFrames = new Bitmap[numberOfFrames - 1];
                        int intrinsicWidth = frame.getIntrinsicWidth();
                        int intrinsicHeight = frame.getIntrinsicHeight();
                        for (int i3 = 1; i3 < numberOfFrames; i3++) {
                            Drawable frame2 = animationDrawable.getFrame(i3);
                            if (!(frame2 instanceof BitmapDrawable)) {
                                throw new IllegalArgumentException("Frame of an animated pointer icon must refer to a bitmap drawable.");
                            }
                            if (frame2.getIntrinsicWidth() != intrinsicWidth || frame2.getIntrinsicHeight() != intrinsicHeight) {
                                throw new IllegalArgumentException(android.accessibilityservice.c.e("The bitmap size of ", i3, "-th frame is different. All frames should have the exact same size and share the same hotspot."));
                            }
                            this.mBitmapFrames[i3 - 1] = ((BitmapDrawable) frame2).getBitmap();
                        }
                    }
                    drawable = frame;
                }
                if (!(drawable instanceof BitmapDrawable)) {
                    throw new IllegalArgumentException("<pointer-icon> bitmap attribute must refer to a bitmap drawable.");
                }
                this.mBitmap = ((BitmapDrawable) drawable).getBitmap();
                this.mHotSpotX = dimension;
                this.mHotSpotY = dimension2;
            } catch (Exception e2) {
                throw new IllegalArgumentException("Exception parsing pointer icon resource.", e2);
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    public static void setUseLargeIcons(boolean z2) {
        sUseLargeIcons = z2;
        gSystemIcons.clear();
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
            if (this.mType == pointerIcon.mType && (i2 = this.mSystemIconResourceId) == pointerIcon.mSystemIconResourceId) {
                return i2 != 0 || (this.mBitmap == pointerIcon.mBitmap && this.mHotSpotX == pointerIcon.mHotSpotX && this.mHotSpotY == pointerIcon.mHotSpotY);
            }
        }
        return false;
    }

    public int getType() {
        return this.mType;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mType);
        if (this.mType != 0) {
            parcel.writeInt(this.mSystemIconResourceId);
            if (this.mSystemIconResourceId == 0) {
                this.mBitmap.writeToParcel(parcel, i2);
                parcel.writeFloat(this.mHotSpotX);
                parcel.writeFloat(this.mHotSpotY);
            }
        }
    }

    private PointerIcon(int i2) {
        this.mType = i2;
    }

    public PointerIcon load(Context context) {
        if (context != null) {
            if (this.mSystemIconResourceId == 0 || this.mBitmap != null) {
                return this;
            }
            PointerIcon pointerIcon = new PointerIcon(this.mType);
            pointerIcon.mSystemIconResourceId = this.mSystemIconResourceId;
            pointerIcon.loadResource(context, context.getResources(), this.mSystemIconResourceId);
            return pointerIcon;
        }
        throw new IllegalArgumentException("context must not be null");
    }
}
