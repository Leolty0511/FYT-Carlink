package com.android.internal.colorextraction;

import android.accessibilityservice.c;
import android.app.WallpaperColors;
import android.app.WallpaperManager;
import android.app.u;
import android.content.Context;
import android.os.Trace;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.colorextraction.types.ExtractionType;
import com.android.internal.colorextraction.types.Tonal;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ColorExtractor implements WallpaperManager.OnColorsChangedListener {
    private static final boolean DEBUG = false;
    private static final String TAG = "ColorExtractor";
    public static final int TYPE_DARK = 1;
    public static final int TYPE_EXTRA_DARK = 2;
    public static final int TYPE_NORMAL = 0;
    private static final int[] sGradientTypes = {0, 1, 2};
    private final Context mContext;
    private final ExtractionType mExtractionType;
    protected final SparseArray<GradientColors[]> mGradientColors;
    protected WallpaperColors mLockColors;
    private final ArrayList<WeakReference<OnColorsChangedListener>> mOnColorsChangedListeners;
    protected WallpaperColors mSystemColors;

    public static class GradientColors {
        private int mMainColor;
        private int mSecondaryColor;
        private boolean mSupportsDarkText;

        public boolean equals(Object obj) {
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            GradientColors gradientColors = (GradientColors) obj;
            return gradientColors.mMainColor == this.mMainColor && gradientColors.mSecondaryColor == this.mSecondaryColor && gradientColors.mSupportsDarkText == this.mSupportsDarkText;
        }

        public int getMainColor() {
            return this.mMainColor;
        }

        public int getSecondaryColor() {
            return this.mSecondaryColor;
        }

        public int hashCode() {
            return (((this.mMainColor * 31) + this.mSecondaryColor) * 31) + (!this.mSupportsDarkText ? 1 : 0);
        }

        public void set(GradientColors gradientColors) {
            this.mMainColor = gradientColors.mMainColor;
            this.mSecondaryColor = gradientColors.mSecondaryColor;
            this.mSupportsDarkText = gradientColors.mSupportsDarkText;
        }

        public void setMainColor(int i2) {
            this.mMainColor = i2;
        }

        public void setSecondaryColor(int i2) {
            this.mSecondaryColor = i2;
        }

        public void setSupportsDarkText(boolean z2) {
            this.mSupportsDarkText = z2;
        }

        public boolean supportsDarkText() {
            return this.mSupportsDarkText;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("GradientColors(");
            c.x(this.mMainColor, sb, ", ");
            sb.append(Integer.toHexString(this.mSecondaryColor));
            sb.append(")");
            return sb.toString();
        }
    }

    public interface OnColorsChangedListener {
        void onColorsChanged(ColorExtractor colorExtractor, int i2);
    }

    public ColorExtractor(Context context) {
        this(context, new Tonal(context));
    }

    private void extractInto(WallpaperColors wallpaperColors, GradientColors gradientColors, GradientColors gradientColors2, GradientColors gradientColors3) {
        this.mExtractionType.extractInto(wallpaperColors, gradientColors, gradientColors2, gradientColors3);
    }

    public void addOnColorsChangedListener(OnColorsChangedListener onColorsChangedListener) {
        this.mOnColorsChangedListeners.add(new WeakReference<>(onColorsChangedListener));
    }

    public void destroy() {
        WallpaperManager wallpaperManager = (WallpaperManager) this.mContext.getSystemService(WallpaperManager.class);
        if (wallpaperManager != null) {
            wallpaperManager.removeOnColorsChangedListener(this);
        }
    }

    public GradientColors getColors(int i2) {
        return getColors(i2, 1);
    }

    public WallpaperColors getWallpaperColors(int i2) {
        if (i2 == 2) {
            return this.mLockColors;
        }
        if (i2 == 1) {
            return this.mSystemColors;
        }
        throw new IllegalArgumentException(c.d("Invalid value for which: ", i2));
    }

    @Override // android.app.WallpaperManager.OnColorsChangedListener
    public final /* synthetic */ void onColorsChanged(WallpaperColors wallpaperColors, int i2, int i3) {
        u.a(this, wallpaperColors, i2, i3);
    }

    public void removeOnColorsChangedListener(OnColorsChangedListener onColorsChangedListener) {
        ArrayList arrayList = new ArrayList(this.mOnColorsChangedListeners);
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            WeakReference weakReference = (WeakReference) arrayList.get(i2);
            if (weakReference.get() == onColorsChangedListener) {
                this.mOnColorsChangedListeners.remove(weakReference);
                return;
            }
        }
    }

    public void triggerColorsChanged(int i2) {
        ArrayList arrayList = new ArrayList(this.mOnColorsChangedListeners);
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            WeakReference weakReference = (WeakReference) arrayList.get(i3);
            OnColorsChangedListener onColorsChangedListener = (OnColorsChangedListener) weakReference.get();
            if (onColorsChangedListener == null) {
                this.mOnColorsChangedListeners.remove(weakReference);
            } else {
                onColorsChangedListener.onColorsChanged(this, i2);
            }
        }
    }

    public ColorExtractor(Context context, ExtractionType extractionType) {
        this.mContext = context;
        this.mExtractionType = extractionType;
        this.mGradientColors = new SparseArray<>();
        int[] iArr = {2, 1};
        for (int i2 = 0; i2 < 2; i2++) {
            int i3 = iArr[i2];
            int[] iArr2 = sGradientTypes;
            GradientColors[] gradientColorsArr = new GradientColors[iArr2.length];
            this.mGradientColors.append(i3, gradientColorsArr);
            for (int i4 : iArr2) {
                gradientColorsArr[i4] = new GradientColors();
            }
        }
        this.mOnColorsChangedListeners = new ArrayList<>();
        GradientColors[] gradientColorsArr2 = this.mGradientColors.get(1);
        GradientColors[] gradientColorsArr3 = this.mGradientColors.get(2);
        WallpaperManager wallpaperManager = (WallpaperManager) this.mContext.getSystemService(WallpaperManager.class);
        if (wallpaperManager == null) {
            Log.w(TAG, "Can't listen to color changes!");
        } else {
            wallpaperManager.addOnColorsChangedListener(this, null);
            Trace.beginSection("ColorExtractor#getWallpaperColors");
            this.mSystemColors = wallpaperManager.getWallpaperColors(1);
            this.mLockColors = wallpaperManager.getWallpaperColors(2);
            Trace.endSection();
        }
        extractInto(this.mSystemColors, gradientColorsArr2[0], gradientColorsArr2[1], gradientColorsArr2[2]);
        extractInto(this.mLockColors, gradientColorsArr3[0], gradientColorsArr3[1], gradientColorsArr3[2]);
    }

    public GradientColors getColors(int i2, int i3) {
        if (i3 != 0 && i3 != 1 && i3 != 2) {
            throw new IllegalArgumentException("type should be TYPE_NORMAL, TYPE_DARK or TYPE_EXTRA_DARK");
        }
        if (i2 == 2 || i2 == 1) {
            return this.mGradientColors.get(i2)[i3];
        }
        throw new IllegalArgumentException("which should be FLAG_SYSTEM or FLAG_NORMAL");
    }

    @Override // android.app.WallpaperManager.OnColorsChangedListener
    public void onColorsChanged(WallpaperColors wallpaperColors, int i2) {
        boolean z2;
        boolean z3 = true;
        if ((i2 & 2) != 0) {
            this.mLockColors = wallpaperColors;
            GradientColors[] gradientColorsArr = this.mGradientColors.get(2);
            extractInto(wallpaperColors, gradientColorsArr[0], gradientColorsArr[1], gradientColorsArr[2]);
            z2 = true;
        } else {
            z2 = false;
        }
        if ((i2 & 1) != 0) {
            this.mSystemColors = wallpaperColors;
            GradientColors[] gradientColorsArr2 = this.mGradientColors.get(1);
            extractInto(wallpaperColors, gradientColorsArr2[0], gradientColorsArr2[1], gradientColorsArr2[2]);
        } else {
            z3 = z2;
        }
        if (z3) {
            triggerColorsChanged(i2);
        }
    }
}
