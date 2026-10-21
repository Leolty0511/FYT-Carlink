package com.android.internal.graphics.palette;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseBooleanArray;
import com.android.internal.graphics.ColorUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class Palette {
    static final int DEFAULT_CALCULATE_NUMBER_COLORS = 16;
    static final Filter DEFAULT_FILTER = new Filter() { // from class: com.android.internal.graphics.palette.Palette.1
        private static final float BLACK_MAX_LIGHTNESS = 0.05f;
        private static final float WHITE_MIN_LIGHTNESS = 0.95f;

        private boolean isBlack(float[] fArr) {
            return fArr[2] <= BLACK_MAX_LIGHTNESS;
        }

        private boolean isNearRedILine(float[] fArr) {
            float f2 = fArr[0];
            return f2 >= 10.0f && f2 <= 37.0f && fArr[1] <= 0.82f;
        }

        private boolean isWhite(float[] fArr) {
            return fArr[2] >= WHITE_MIN_LIGHTNESS;
        }

        @Override // com.android.internal.graphics.palette.Palette.Filter
        public boolean isAllowed(int i2, float[] fArr) {
            return (isWhite(fArr) || isBlack(fArr) || isNearRedILine(fArr)) ? false : true;
        }
    };
    static final int DEFAULT_RESIZE_BITMAP_AREA = 12544;
    static final String LOG_TAG = "Palette";
    static final boolean LOG_TIMINGS = false;
    static final float MIN_CONTRAST_BODY_TEXT = 4.5f;
    static final float MIN_CONTRAST_TITLE_TEXT = 3.0f;
    private final List<Swatch> mSwatches;
    private final List<Target> mTargets;
    private final SparseBooleanArray mUsedColors = new SparseBooleanArray();
    private final Map<Target, Swatch> mSelectedSwatches = new ArrayMap();
    private final Swatch mDominantSwatch = findDominantSwatch();

    public interface Filter {
        boolean isAllowed(int i2, float[] fArr);
    }

    public interface PaletteAsyncListener {
        void onGenerated(Palette palette);
    }

    public Palette(List<Swatch> list, List<Target> list2) {
        this.mSwatches = list;
        this.mTargets = list2;
    }

    private static float[] copyHslValues(Swatch swatch) {
        float[] fArr = new float[3];
        System.arraycopy(swatch.getHsl(), 0, fArr, 0, 3);
        return fArr;
    }

    private Swatch findDominantSwatch() {
        int size = this.mSwatches.size();
        int population = Integer.MIN_VALUE;
        Swatch swatch = null;
        for (int i2 = 0; i2 < size; i2++) {
            Swatch swatch2 = this.mSwatches.get(i2);
            if (swatch2.getPopulation() > population) {
                population = swatch2.getPopulation();
                swatch = swatch2;
            }
        }
        return swatch;
    }

    public static Builder from(Bitmap bitmap) {
        return new Builder(bitmap);
    }

    @Deprecated
    public static Palette generate(Bitmap bitmap) {
        return from(bitmap).generate();
    }

    @Deprecated
    public static AsyncTask<Bitmap, Void, Palette> generateAsync(Bitmap bitmap, PaletteAsyncListener paletteAsyncListener) {
        return from(bitmap).generate(paletteAsyncListener);
    }

    private float generateScore(Swatch swatch, Target target) {
        float fAbs;
        float fAbs2;
        float[] hsl = swatch.getHsl();
        Swatch swatch2 = this.mDominantSwatch;
        int population = swatch2 != null ? swatch2.getPopulation() : 1;
        float population2 = 0.0f;
        if (target.getSaturationWeight() > 0.0f) {
            fAbs = (1.0f - Math.abs(hsl[1] - target.getTargetSaturation())) * target.getSaturationWeight();
        } else {
            fAbs = 0.0f;
        }
        if (target.getLightnessWeight() > 0.0f) {
            fAbs2 = (1.0f - Math.abs(hsl[2] - target.getTargetLightness())) * target.getLightnessWeight();
        } else {
            fAbs2 = 0.0f;
        }
        if (target.getPopulationWeight() > 0.0f) {
            population2 = (swatch.getPopulation() / population) * target.getPopulationWeight();
        }
        return fAbs + fAbs2 + population2;
    }

    private Swatch generateScoredTarget(Target target) {
        Swatch maxScoredSwatchForTarget = getMaxScoredSwatchForTarget(target);
        if (maxScoredSwatchForTarget != null && target.isExclusive()) {
            this.mUsedColors.append(maxScoredSwatchForTarget.getRgb(), true);
        }
        return maxScoredSwatchForTarget;
    }

    private Swatch getMaxScoredSwatchForTarget(Target target) {
        int size = this.mSwatches.size();
        float f2 = 0.0f;
        Swatch swatch = null;
        for (int i2 = 0; i2 < size; i2++) {
            Swatch swatch2 = this.mSwatches.get(i2);
            if (shouldBeScoredForTarget(swatch2, target)) {
                float fGenerateScore = generateScore(swatch2, target);
                if (swatch == null || fGenerateScore > f2) {
                    swatch = swatch2;
                    f2 = fGenerateScore;
                }
            }
        }
        return swatch;
    }

    private boolean shouldBeScoredForTarget(Swatch swatch, Target target) {
        float[] hsl = swatch.getHsl();
        return hsl[1] >= target.getMinimumSaturation() && hsl[1] <= target.getMaximumSaturation() && hsl[2] >= target.getMinimumLightness() && hsl[2] <= target.getMaximumLightness() && !this.mUsedColors.get(swatch.getRgb());
    }

    public int getColorForTarget(Target target, int i2) {
        Swatch swatchForTarget = getSwatchForTarget(target);
        return swatchForTarget != null ? swatchForTarget.getRgb() : i2;
    }

    public int getDarkMutedColor(int i2) {
        return getColorForTarget(Target.DARK_MUTED, i2);
    }

    public Swatch getDarkMutedSwatch() {
        return getSwatchForTarget(Target.DARK_MUTED);
    }

    public int getDarkVibrantColor(int i2) {
        return getColorForTarget(Target.DARK_VIBRANT, i2);
    }

    public Swatch getDarkVibrantSwatch() {
        return getSwatchForTarget(Target.DARK_VIBRANT);
    }

    public int getDominantColor(int i2) {
        Swatch swatch = this.mDominantSwatch;
        return swatch != null ? swatch.getRgb() : i2;
    }

    public Swatch getDominantSwatch() {
        return this.mDominantSwatch;
    }

    public int getLightMutedColor(int i2) {
        return getColorForTarget(Target.LIGHT_MUTED, i2);
    }

    public Swatch getLightMutedSwatch() {
        return getSwatchForTarget(Target.LIGHT_MUTED);
    }

    public int getLightVibrantColor(int i2) {
        return getColorForTarget(Target.LIGHT_VIBRANT, i2);
    }

    public Swatch getLightVibrantSwatch() {
        return getSwatchForTarget(Target.LIGHT_VIBRANT);
    }

    public int getMutedColor(int i2) {
        return getColorForTarget(Target.MUTED, i2);
    }

    public Swatch getMutedSwatch() {
        return getSwatchForTarget(Target.MUTED);
    }

    public Swatch getSwatchForTarget(Target target) {
        return this.mSelectedSwatches.get(target);
    }

    public List<Swatch> getSwatches() {
        return Collections.unmodifiableList(this.mSwatches);
    }

    public List<Target> getTargets() {
        return Collections.unmodifiableList(this.mTargets);
    }

    public int getVibrantColor(int i2) {
        return getColorForTarget(Target.VIBRANT, i2);
    }

    public Swatch getVibrantSwatch() {
        return getSwatchForTarget(Target.VIBRANT);
    }

    public static Palette from(List<Swatch> list) {
        return new Builder(list).generate();
    }

    @Deprecated
    public static Palette generate(Bitmap bitmap, int i2) {
        return from(bitmap).maximumColorCount(i2).generate();
    }

    @Deprecated
    public static AsyncTask<Bitmap, Void, Palette> generateAsync(Bitmap bitmap, int i2, PaletteAsyncListener paletteAsyncListener) {
        return from(bitmap).maximumColorCount(i2).generate(paletteAsyncListener);
    }

    public void generate() {
        int size = this.mTargets.size();
        for (int i2 = 0; i2 < size; i2++) {
            Target target = this.mTargets.get(i2);
            target.normalizeWeights();
            this.mSelectedSwatches.put(target, generateScoredTarget(target));
        }
        this.mUsedColors.clear();
    }

    public static final class Swatch {
        private final int mBlue;
        private int mBodyTextColor;
        private boolean mGeneratedTextColors;
        private final int mGreen;
        private float[] mHsl;
        private final int mPopulation;
        private final int mRed;
        private final int mRgb;
        private int mTitleTextColor;

        public Swatch(int i2, int i3) {
            this.mRed = Color.red(i2);
            this.mGreen = Color.green(i2);
            this.mBlue = Color.blue(i2);
            this.mRgb = i2;
            this.mPopulation = i3;
        }

        private void ensureTextColorsGenerated() {
            if (this.mGeneratedTextColors) {
                return;
            }
            int iCalculateMinimumAlpha = ColorUtils.calculateMinimumAlpha(-1, this.mRgb, Palette.MIN_CONTRAST_BODY_TEXT);
            int iCalculateMinimumAlpha2 = ColorUtils.calculateMinimumAlpha(-1, this.mRgb, Palette.MIN_CONTRAST_TITLE_TEXT);
            if (iCalculateMinimumAlpha != -1 && iCalculateMinimumAlpha2 != -1) {
                this.mBodyTextColor = ColorUtils.setAlphaComponent(-1, iCalculateMinimumAlpha);
                this.mTitleTextColor = ColorUtils.setAlphaComponent(-1, iCalculateMinimumAlpha2);
                this.mGeneratedTextColors = true;
                return;
            }
            int iCalculateMinimumAlpha3 = ColorUtils.calculateMinimumAlpha(-16777216, this.mRgb, Palette.MIN_CONTRAST_BODY_TEXT);
            int iCalculateMinimumAlpha4 = ColorUtils.calculateMinimumAlpha(-16777216, this.mRgb, Palette.MIN_CONTRAST_TITLE_TEXT);
            if (iCalculateMinimumAlpha3 == -1 || iCalculateMinimumAlpha4 == -1) {
                this.mBodyTextColor = iCalculateMinimumAlpha != -1 ? ColorUtils.setAlphaComponent(-1, iCalculateMinimumAlpha) : ColorUtils.setAlphaComponent(-16777216, iCalculateMinimumAlpha3);
                this.mTitleTextColor = iCalculateMinimumAlpha2 != -1 ? ColorUtils.setAlphaComponent(-1, iCalculateMinimumAlpha2) : ColorUtils.setAlphaComponent(-16777216, iCalculateMinimumAlpha4);
                this.mGeneratedTextColors = true;
            } else {
                this.mBodyTextColor = ColorUtils.setAlphaComponent(-16777216, iCalculateMinimumAlpha3);
                this.mTitleTextColor = ColorUtils.setAlphaComponent(-16777216, iCalculateMinimumAlpha4);
                this.mGeneratedTextColors = true;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Swatch.class != obj.getClass()) {
                return false;
            }
            Swatch swatch = (Swatch) obj;
            return this.mPopulation == swatch.mPopulation && this.mRgb == swatch.mRgb;
        }

        public int getBodyTextColor() {
            ensureTextColorsGenerated();
            return this.mBodyTextColor;
        }

        public float[] getHsl() {
            if (this.mHsl == null) {
                this.mHsl = new float[3];
            }
            ColorUtils.RGBToHSL(this.mRed, this.mGreen, this.mBlue, this.mHsl);
            return this.mHsl;
        }

        public int getPopulation() {
            return this.mPopulation;
        }

        public int getRgb() {
            return this.mRgb;
        }

        public int getTitleTextColor() {
            ensureTextColorsGenerated();
            return this.mTitleTextColor;
        }

        public int hashCode() {
            return (this.mRgb * 31) + this.mPopulation;
        }

        public String toString() {
            return Swatch.class.getSimpleName() + " [RGB: #" + Integer.toHexString(getRgb()) + "] [HSL: " + Arrays.toString(getHsl()) + "] [Population: " + this.mPopulation + "] [Title Text: #" + Integer.toHexString(getTitleTextColor()) + "] [Body Text: #" + Integer.toHexString(getBodyTextColor()) + ']';
        }

        public Swatch(int i2, int i3, int i4, int i5) {
            this.mRed = i2;
            this.mGreen = i3;
            this.mBlue = i4;
            this.mRgb = Color.rgb(i2, i3, i4);
            this.mPopulation = i5;
        }

        public Swatch(float[] fArr, int i2) {
            this(ColorUtils.HSLToColor(fArr), i2);
            this.mHsl = fArr;
        }
    }

    public static final class Builder {
        private final Bitmap mBitmap;
        private final List<Filter> mFilters;
        private int mMaxColors;
        private Quantizer mQuantizer;
        private Rect mRegion;
        private int mResizeArea;
        private int mResizeMaxDimension;
        private final List<Swatch> mSwatches;
        private final List<Target> mTargets;

        public Builder(Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.mTargets = arrayList;
            this.mMaxColors = 16;
            this.mResizeArea = Palette.DEFAULT_RESIZE_BITMAP_AREA;
            this.mResizeMaxDimension = -1;
            ArrayList arrayList2 = new ArrayList();
            this.mFilters = arrayList2;
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            arrayList2.add(Palette.DEFAULT_FILTER);
            this.mBitmap = bitmap;
            this.mSwatches = null;
            arrayList.add(Target.LIGHT_VIBRANT);
            arrayList.add(Target.VIBRANT);
            arrayList.add(Target.DARK_VIBRANT);
            arrayList.add(Target.LIGHT_MUTED);
            arrayList.add(Target.MUTED);
            arrayList.add(Target.DARK_MUTED);
        }

        private int[] getPixelsFromBitmap(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            Rect rect = this.mRegion;
            if (rect == null) {
                return iArr;
            }
            int iWidth = rect.width();
            int iHeight = this.mRegion.height();
            int[] iArr2 = new int[iWidth * iHeight];
            for (int i2 = 0; i2 < iHeight; i2++) {
                Rect rect2 = this.mRegion;
                System.arraycopy(iArr, ((rect2.top + i2) * width) + rect2.left, iArr2, i2 * iWidth, iWidth);
            }
            return iArr2;
        }

        private Bitmap scaleBitmapDown(Bitmap bitmap) {
            int iMax;
            int i2;
            double dSqrt = -1.0d;
            if (this.mResizeArea > 0) {
                int height = bitmap.getHeight() * bitmap.getWidth();
                int i3 = this.mResizeArea;
                if (height > i3) {
                    dSqrt = Math.sqrt(((double) i3) / ((double) height));
                }
            } else if (this.mResizeMaxDimension > 0 && (iMax = Math.max(bitmap.getWidth(), bitmap.getHeight())) > (i2 = this.mResizeMaxDimension)) {
                dSqrt = ((double) i2) / ((double) iMax);
            }
            return dSqrt <= 0.0d ? bitmap : Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dSqrt), (int) Math.ceil(((double) bitmap.getHeight()) * dSqrt), false);
        }

        public Builder addFilter(Filter filter) {
            if (filter != null) {
                this.mFilters.add(filter);
            }
            return this;
        }

        public Builder addTarget(Target target) {
            if (!this.mTargets.contains(target)) {
                this.mTargets.add(target);
            }
            return this;
        }

        public Builder clearFilters() {
            this.mFilters.clear();
            return this;
        }

        public Builder clearRegion() {
            this.mRegion = null;
            return this;
        }

        public Builder clearTargets() {
            List<Target> list = this.mTargets;
            if (list != null) {
                list.clear();
            }
            return this;
        }

        public Palette generate() {
            List<Swatch> quantizedColors;
            Filter[] filterArr;
            Bitmap bitmap = this.mBitmap;
            if (bitmap != null) {
                Bitmap bitmapScaleBitmapDown = scaleBitmapDown(bitmap);
                Rect rect = this.mRegion;
                if (bitmapScaleBitmapDown != this.mBitmap && rect != null) {
                    double width = ((double) bitmapScaleBitmapDown.getWidth()) / ((double) this.mBitmap.getWidth());
                    rect.left = (int) Math.floor(((double) rect.left) * width);
                    rect.top = (int) Math.floor(((double) rect.top) * width);
                    rect.right = Math.min((int) Math.ceil(((double) rect.right) * width), bitmapScaleBitmapDown.getWidth());
                    rect.bottom = Math.min((int) Math.ceil(((double) rect.bottom) * width), bitmapScaleBitmapDown.getHeight());
                }
                if (this.mQuantizer == null) {
                    this.mQuantizer = new ColorCutQuantizer();
                }
                Quantizer quantizer = this.mQuantizer;
                int[] pixelsFromBitmap = getPixelsFromBitmap(bitmapScaleBitmapDown);
                int i2 = this.mMaxColors;
                if (this.mFilters.isEmpty()) {
                    filterArr = null;
                } else {
                    List<Filter> list = this.mFilters;
                    filterArr = (Filter[]) list.toArray(new Filter[list.size()]);
                }
                quantizer.quantize(pixelsFromBitmap, i2, filterArr);
                if (bitmapScaleBitmapDown != this.mBitmap) {
                    bitmapScaleBitmapDown.recycle();
                }
                quantizedColors = this.mQuantizer.getQuantizedColors();
            } else {
                quantizedColors = this.mSwatches;
            }
            Palette palette = new Palette(quantizedColors, this.mTargets);
            palette.generate();
            return palette;
        }

        public Builder maximumColorCount(int i2) {
            this.mMaxColors = i2;
            return this;
        }

        public Builder resizeBitmapArea(int i2) {
            this.mResizeArea = i2;
            this.mResizeMaxDimension = -1;
            return this;
        }

        @Deprecated
        public Builder resizeBitmapSize(int i2) {
            this.mResizeMaxDimension = i2;
            this.mResizeArea = -1;
            return this;
        }

        public Builder setQuantizer(Quantizer quantizer) {
            this.mQuantizer = quantizer;
            return this;
        }

        public Builder setRegion(int i2, int i3, int i4, int i5) {
            if (this.mBitmap != null) {
                if (this.mRegion == null) {
                    this.mRegion = new Rect();
                }
                this.mRegion.set(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
                if (!this.mRegion.intersect(i2, i3, i4, i5)) {
                    throw new IllegalArgumentException("The given region must intersect with the Bitmap's dimensions.");
                }
            }
            return this;
        }

        public Builder(List<Swatch> list) {
            this.mTargets = new ArrayList();
            this.mMaxColors = 16;
            this.mResizeArea = Palette.DEFAULT_RESIZE_BITMAP_AREA;
            this.mResizeMaxDimension = -1;
            ArrayList arrayList = new ArrayList();
            this.mFilters = arrayList;
            if (list != null && !list.isEmpty()) {
                arrayList.add(Palette.DEFAULT_FILTER);
                this.mSwatches = list;
                this.mBitmap = null;
                return;
            }
            throw new IllegalArgumentException("List of Swatches is not valid");
        }

        public AsyncTask<Bitmap, Void, Palette> generate(final PaletteAsyncListener paletteAsyncListener) {
            if (paletteAsyncListener != null) {
                return new AsyncTask<Bitmap, Void, Palette>() { // from class: com.android.internal.graphics.palette.Palette.Builder.1
                    @Override // android.os.AsyncTask
                    public Palette doInBackground(Bitmap... bitmapArr) {
                        try {
                            return Builder.this.generate();
                        } catch (Exception e2) {
                            Log.e(Palette.LOG_TAG, "Exception thrown during async generate", e2);
                            return null;
                        }
                    }

                    @Override // android.os.AsyncTask
                    public void onPostExecute(Palette palette) {
                        paletteAsyncListener.onGenerated(palette);
                    }
                }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.mBitmap);
            }
            throw new IllegalArgumentException("listener can not be null");
        }
    }
}
