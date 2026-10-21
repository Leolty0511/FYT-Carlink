package android.app;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Size;
import com.android.internal.graphics.ColorUtils;
import com.android.internal.graphics.palette.Palette;
import com.android.internal.graphics.palette.VariationalKMeansQuantizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final class WallpaperColors implements Parcelable {
    private static final float BRIGHT_IMAGE_MEAN_LUMINANCE = 0.75f;
    public static final Parcelable.Creator<WallpaperColors> CREATOR = new Parcelable.Creator<WallpaperColors>() { // from class: android.app.WallpaperColors.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WallpaperColors createFromParcel(Parcel parcel) {
            return new WallpaperColors(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WallpaperColors[] newArray(int i2) {
            return new WallpaperColors[i2];
        }
    };
    private static final float DARK_PIXEL_LUMINANCE = 0.45f;
    private static final float DARK_THEME_MEAN_LUMINANCE = 0.25f;
    public static final int HINT_FROM_BITMAP = 4;
    public static final int HINT_SUPPORTS_DARK_TEXT = 1;
    public static final int HINT_SUPPORTS_DARK_THEME = 2;
    private static final int MAX_BITMAP_SIZE = 112;
    private static final float MAX_DARK_AREA = 0.05f;
    private static final int MAX_WALLPAPER_EXTRACTION_AREA = 12544;
    private static final float MIN_COLOR_OCCURRENCE = 0.05f;
    private int mColorHints;
    private final ArrayList<Color> mMainColors;

    public WallpaperColors(Parcel parcel) {
        this.mMainColors = new ArrayList<>();
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            this.mMainColors.add(Color.valueOf(parcel.readInt()));
        }
        this.mColorHints = parcel.readInt();
    }

    private static int calculateDarkHints(Bitmap bitmap) {
        int i2 = 0;
        if (bitmap == null) {
            return 0;
        }
        int height = bitmap.getHeight() * bitmap.getWidth();
        int[] iArr = new int[height];
        int i3 = (int) (height * 0.05f);
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        float[] fArr = new float[3];
        double d2 = 0.0d;
        int i4 = 0;
        for (int i5 = 0; i5 < height; i5++) {
            ColorUtils.colorToHSL(iArr[i5], fArr);
            float f2 = fArr[2];
            int iAlpha = Color.alpha(iArr[i5]);
            if (f2 < DARK_PIXEL_LUMINANCE && iAlpha != 0) {
                i4++;
            }
            d2 += (double) f2;
        }
        double d3 = d2 / ((double) height);
        if (d3 > 0.75d && i4 < i3) {
            i2 = 1;
        }
        return d3 < 0.25d ? i2 | 2 : i2;
    }

    private static Size calculateOptimalSize(int i2, int i3) {
        int i4 = i2 * i3;
        double dSqrt = i4 > MAX_WALLPAPER_EXTRACTION_AREA ? Math.sqrt(12544.0d / ((double) i4)) : 1.0d;
        int i5 = (int) (((double) i2) * dSqrt);
        int i6 = (int) (((double) i3) * dSqrt);
        if (i5 == 0) {
            i5 = 1;
        }
        if (i6 == 0) {
            i6 = 1;
        }
        return new Size(i5, i6);
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [android.app.q] */
    public static WallpaperColors fromBitmap(Bitmap bitmap) {
        boolean z2;
        if (bitmap == null) {
            throw new IllegalArgumentException("Bitmap can't be null");
        }
        int i2 = 0;
        if (bitmap.getHeight() * bitmap.getWidth() > MAX_WALLPAPER_EXTRACTION_AREA) {
            Size sizeCalculateOptimalSize = calculateOptimalSize(bitmap.getWidth(), bitmap.getHeight());
            bitmap = Bitmap.createScaledBitmap(bitmap, sizeCalculateOptimalSize.getWidth(), sizeCalculateOptimalSize.getHeight(), true);
            z2 = true;
        } else {
            z2 = false;
        }
        ArrayList arrayList = new ArrayList(Palette.from(bitmap).setQuantizer(new VariationalKMeansQuantizer()).maximumColorCount(5).clearFilters().resizeBitmapArea(MAX_WALLPAPER_EXTRACTION_AREA).generate().getSwatches());
        final float height = bitmap.getHeight() * bitmap.getWidth() * 0.05f;
        arrayList.removeIf(new Predicate() { // from class: android.app.q
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WallpaperColors.lambda$fromBitmap$0(height, (Palette.Swatch) obj);
            }
        });
        arrayList.sort(new r(i2));
        int size = arrayList.size();
        Color color = null;
        Color color2 = null;
        Color color3 = null;
        while (i2 < size) {
            Color colorValueOf = Color.valueOf(((Palette.Swatch) arrayList.get(i2)).getRgb());
            if (i2 == 0) {
                color = colorValueOf;
            } else if (i2 == 1) {
                color2 = colorValueOf;
            } else {
                if (i2 != 2) {
                    break;
                }
                color3 = colorValueOf;
            }
            i2++;
        }
        int iCalculateDarkHints = calculateDarkHints(bitmap);
        if (z2) {
            bitmap.recycle();
        }
        return new WallpaperColors(color, color2, color3, iCalculateDarkHints | 4);
    }

    public static WallpaperColors fromDrawable(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            intrinsicWidth = 112;
            intrinsicHeight = 112;
        }
        Size sizeCalculateOptimalSize = calculateOptimalSize(intrinsicWidth, intrinsicHeight);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(sizeCalculateOptimalSize.getWidth(), sizeCalculateOptimalSize.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
        drawable.draw(canvas);
        WallpaperColors wallpaperColorsFromBitmap = fromBitmap(bitmapCreateBitmap);
        bitmapCreateBitmap.recycle();
        return wallpaperColorsFromBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$fromBitmap$0(float f2, Palette.Swatch swatch) {
        return ((float) swatch.getPopulation()) < f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$fromBitmap$1(Palette.Swatch swatch, Palette.Swatch swatch2) {
        return swatch2.getPopulation() - swatch.getPopulation();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null || WallpaperColors.class != obj.getClass()) {
            return false;
        }
        WallpaperColors wallpaperColors = (WallpaperColors) obj;
        return this.mMainColors.equals(wallpaperColors.mMainColors) && this.mColorHints == wallpaperColors.mColorHints;
    }

    public int getColorHints() {
        return this.mColorHints;
    }

    public List<Color> getMainColors() {
        return Collections.unmodifiableList(this.mMainColors);
    }

    public Color getPrimaryColor() {
        return this.mMainColors.get(0);
    }

    public Color getSecondaryColor() {
        if (this.mMainColors.size() < 2) {
            return null;
        }
        return this.mMainColors.get(1);
    }

    public Color getTertiaryColor() {
        if (this.mMainColors.size() < 3) {
            return null;
        }
        return this.mMainColors.get(2);
    }

    public int hashCode() {
        return (this.mMainColors.hashCode() * 31) + this.mColorHints;
    }

    public void setColorHints(int i2) {
        this.mColorHints = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < this.mMainColors.size(); i2++) {
            sb.append(Integer.toHexString(this.mMainColors.get(i2).toArgb()));
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        }
        StringBuilder sb2 = new StringBuilder("[WallpaperColors: ");
        sb2.append(sb.toString());
        sb2.append("h: ");
        return android.accessibilityservice.c.m(sb2, this.mColorHints, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        List<Color> mainColors = getMainColors();
        int size = mainColors.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeInt(mainColors.get(i3).toArgb());
        }
        parcel.writeInt(this.mColorHints);
    }

    public WallpaperColors(Color color, Color color2, Color color3) {
        this(color, color2, color3, 0);
    }

    public WallpaperColors(Color color, Color color2, Color color3, int i2) {
        if (color != null) {
            ArrayList<Color> arrayList = new ArrayList<>(3);
            this.mMainColors = arrayList;
            arrayList.add(color);
            if (color2 != null) {
                arrayList.add(color2);
            }
            if (color3 != null) {
                if (color2 != null) {
                    arrayList.add(color3);
                } else {
                    throw new IllegalArgumentException("tertiaryColor can't be specified when secondaryColor is null");
                }
            }
            this.mColorHints = i2;
            return;
        }
        throw new IllegalArgumentException("Primary color should never be null.");
    }
}
