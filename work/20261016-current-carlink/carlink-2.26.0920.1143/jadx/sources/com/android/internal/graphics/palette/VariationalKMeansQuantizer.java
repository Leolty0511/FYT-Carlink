package com.android.internal.graphics.palette;

import com.android.internal.graphics.ColorUtils;
import com.android.internal.ml.clustering.KMeans;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class VariationalKMeansQuantizer implements Quantizer {
    private static final boolean DEBUG = false;
    private static final String TAG = "KMeansQuantizer";
    private final int mInitializations;
    private final KMeans mKMeans;
    private final float mMinClusterSqDistance;
    private List<Palette.Swatch> mQuantizedColors;

    public VariationalKMeansQuantizer() {
        this(0.25f);
    }

    private List<KMeans.Mean> getOptimalKMeans(int i2, float[][] fArr) {
        List<KMeans.Mean> list = null;
        double d2 = -1.7976931348623157E308d;
        for (int i3 = this.mInitializations; i3 > 0; i3--) {
            List<KMeans.Mean> listPredict = this.mKMeans.predict(i2, fArr);
            double dScore = KMeans.score(listPredict);
            if (list == null || dScore > d2) {
                list = listPredict;
                d2 = dScore;
            }
        }
        return list;
    }

    @Override // com.android.internal.graphics.palette.Quantizer
    public List<Palette.Swatch> getQuantizedColors() {
        return this.mQuantizedColors;
    }

    @Override // com.android.internal.graphics.palette.Quantizer
    public void quantize(int[] iArr, int i2, Palette.Filter[] filterArr) {
        int i3;
        float[] fArr = {0.0f, 0.0f, 0.0f};
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, iArr.length, 3);
        for (int i4 = 0; i4 < iArr.length; i4++) {
            ColorUtils.colorToHSL(iArr[i4], fArr);
            float[] fArr3 = fArr2[i4];
            fArr3[0] = fArr[0] / 360.0f;
            fArr3[1] = fArr[1];
            fArr3[2] = fArr[2];
        }
        List<KMeans.Mean> optimalKMeans = getOptimalKMeans(i2, fArr2);
        int i5 = 0;
        while (i5 < optimalKMeans.size()) {
            KMeans.Mean mean = optimalKMeans.get(i5);
            float[] centroid = mean.getCentroid();
            i5++;
            int i6 = i5;
            while (i6 < optimalKMeans.size()) {
                KMeans.Mean mean2 = optimalKMeans.get(i6);
                float[] centroid2 = mean2.getCentroid();
                if (KMeans.sqDistance(centroid, centroid2) < this.mMinClusterSqDistance) {
                    optimalKMeans.remove(mean2);
                    mean.getItems().addAll(mean2.getItems());
                    int i7 = 0;
                    while (i7 < centroid.length) {
                        float f2 = centroid[i7];
                        centroid[i7] = (float) ((((double) (centroid2[i7] - f2)) / 2.0d) + ((double) f2));
                        i7++;
                        i5 = i5;
                    }
                    i3 = i5;
                    i6--;
                } else {
                    i3 = i5;
                }
                i6++;
                i5 = i3;
            }
        }
        this.mQuantizedColors = new ArrayList();
        for (KMeans.Mean mean3 : optimalKMeans) {
            if (mean3.getItems().size() != 0) {
                float[] centroid3 = mean3.getCentroid();
                this.mQuantizedColors.add(new Palette.Swatch(new float[]{centroid3[0] * 360.0f, centroid3[1], centroid3[2]}, mean3.getItems().size()));
            }
        }
    }

    public VariationalKMeansQuantizer(float f2) {
        this(f2, 1);
    }

    public VariationalKMeansQuantizer(float f2, int i2) {
        this.mKMeans = new KMeans(new Random(0L), 30, 0.0f);
        this.mMinClusterSqDistance = f2 * f2;
        this.mInitializations = i2;
    }
}
