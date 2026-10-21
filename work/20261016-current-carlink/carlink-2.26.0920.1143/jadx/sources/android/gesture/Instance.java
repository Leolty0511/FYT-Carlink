package android.gesture;

/* JADX INFO: loaded from: classes.dex */
class Instance {
    private static final float[] ORIENTATIONS = {0.0f, 0.7853982f, 1.5707964f, 2.3561945f, 3.1415927f, 0.0f, -0.7853982f, -1.5707964f, -2.3561945f, -3.1415927f};
    private static final int PATCH_SAMPLE_SIZE = 16;
    private static final int SEQUENCE_SAMPLE_SIZE = 16;
    final long id;
    final String label;
    final float[] vector;

    private Instance(long j2, float[] fArr, String str) {
        this.id = j2;
        this.vector = fArr;
        this.label = str;
    }

    public static Instance createInstance(int i2, int i3, Gesture gesture, String str) {
        if (i2 != 2) {
            return new Instance(gesture.getID(), spatialSampler(gesture), str);
        }
        Instance instance = new Instance(gesture.getID(), temporalSampler(i3, gesture), str);
        instance.normalize();
        return instance;
    }

    private void normalize() {
        float[] fArr = this.vector;
        int length = fArr.length;
        float f2 = 0.0f;
        for (float f3 : fArr) {
            f2 += f3 * f3;
        }
        float fSqrt = (float) Math.sqrt(f2);
        for (int i2 = 0; i2 < length; i2++) {
            fArr[i2] = fArr[i2] / fSqrt;
        }
    }

    private static float[] spatialSampler(Gesture gesture) {
        return GestureUtils.spatialSampling(gesture, 16, false);
    }

    private static float[] temporalSampler(int i2, Gesture gesture) {
        float[] fArrTemporalSampling = GestureUtils.temporalSampling(gesture.getStrokes().get(0), 16);
        float[] fArrComputeCentroid = GestureUtils.computeCentroid(fArrTemporalSampling);
        float fAtan2 = (float) Math.atan2(fArrTemporalSampling[1] - fArrComputeCentroid[1], fArrTemporalSampling[0] - fArrComputeCentroid[0]);
        float f2 = -fAtan2;
        if (i2 != 1) {
            int length = ORIENTATIONS.length;
            for (int i3 = 0; i3 < length; i3++) {
                float f3 = ORIENTATIONS[i3] - fAtan2;
                if (Math.abs(f3) < Math.abs(f2)) {
                    f2 = f3;
                }
            }
        }
        GestureUtils.translate(fArrTemporalSampling, -fArrComputeCentroid[0], -fArrComputeCentroid[1]);
        GestureUtils.rotate(fArrTemporalSampling, f2);
        return fArrTemporalSampling;
    }
}
