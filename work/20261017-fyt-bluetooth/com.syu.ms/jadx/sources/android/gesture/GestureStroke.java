package android.gesture;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class GestureStroke {
    public static final float TOUCH_TOLERANCE = 3.0f;
    public final RectF boundingBox;
    public final float length;
    private Path mCachedPath;
    public final float[] points;
    private final long[] timestamps;

    public GestureStroke(ArrayList<GesturePoint> arrayList) {
        int size = arrayList.size();
        float[] fArr = new float[size * 2];
        long[] jArr = new long[size];
        RectF rectF = null;
        float f2 = 0.0f;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            GesturePoint gesturePoint = arrayList.get(i3);
            int i4 = i3 * 2;
            float f3 = gesturePoint.f131x;
            fArr[i4] = f3;
            fArr[i4 + 1] = gesturePoint.f132y;
            jArr[i2] = gesturePoint.timestamp;
            if (rectF == null) {
                rectF = new RectF();
                float f4 = gesturePoint.f132y;
                rectF.top = f4;
                float f5 = gesturePoint.f131x;
                rectF.left = f5;
                rectF.right = f5;
                rectF.bottom = f4;
                f2 = 0.0f;
            } else {
                double d2 = f2;
                int i5 = (i3 - 1) * 2;
                float fSqrt = (float) (d2 + Math.sqrt(Math.pow(f3 - fArr[i5], 2.0d) + Math.pow(gesturePoint.f132y - fArr[i5 + 1], 2.0d)));
                rectF.union(gesturePoint.f131x, gesturePoint.f132y);
                f2 = fSqrt;
            }
            i2++;
        }
        this.timestamps = jArr;
        this.points = fArr;
        this.boundingBox = rectF;
        this.length = f2;
    }

    public static GestureStroke deserialize(DataInputStream dataInputStream) throws IOException {
        int i2 = dataInputStream.readInt();
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(GesturePoint.deserialize(dataInputStream));
        }
        return new GestureStroke(arrayList);
    }

    private void makePath() {
        float[] fArr = this.points;
        int length = fArr.length;
        float f2 = 0.0f;
        Path path = null;
        float f3 = 0.0f;
        for (int i2 = 0; i2 < length; i2 += 2) {
            float f4 = fArr[i2];
            float f5 = fArr[i2 + 1];
            if (path == null) {
                Path path2 = new Path();
                path2.moveTo(f4, f5);
                path = path2;
            } else {
                float fAbs = Math.abs(f4 - f2);
                float fAbs2 = Math.abs(f5 - f3);
                if (fAbs >= 3.0f || fAbs2 >= 3.0f) {
                    path.quadTo(f2, f3, (f4 + f2) / 2.0f, (f5 + f3) / 2.0f);
                }
            }
            f2 = f4;
            f3 = f5;
        }
        this.mCachedPath = path;
    }

    public void clearPath() {
        Path path = this.mCachedPath;
        if (path != null) {
            path.rewind();
        }
    }

    public Object clone() {
        return new GestureStroke(this.boundingBox, this.length, this.points, this.timestamps);
    }

    public OrientedBoundingBox computeOrientedBoundingBox() {
        return GestureUtils.computeOrientedBoundingBox(this.points);
    }

    public void draw(Canvas canvas, Paint paint) {
        if (this.mCachedPath == null) {
            makePath();
        }
        canvas.drawPath(this.mCachedPath, paint);
    }

    public Path getPath() {
        if (this.mCachedPath == null) {
            makePath();
        }
        return this.mCachedPath;
    }

    public void serialize(DataOutputStream dataOutputStream) {
        float[] fArr = this.points;
        long[] jArr = this.timestamps;
        int length = fArr.length;
        dataOutputStream.writeInt(length / 2);
        for (int i2 = 0; i2 < length; i2 += 2) {
            dataOutputStream.writeFloat(fArr[i2]);
            dataOutputStream.writeFloat(fArr[i2 + 1]);
            dataOutputStream.writeLong(jArr[i2 / 2]);
        }
    }

    public Path toPath(float f2, float f3, int i2) {
        float[] fArrTemporalSampling = GestureUtils.temporalSampling(this, i2);
        RectF rectF = this.boundingBox;
        GestureUtils.translate(fArrTemporalSampling, -rectF.left, -rectF.top);
        float fWidth = f2 / rectF.width();
        float fHeight = f3 / rectF.height();
        if (fWidth > fHeight) {
            fWidth = fHeight;
        }
        GestureUtils.scale(fArrTemporalSampling, fWidth, fWidth);
        Path path = null;
        int length = fArrTemporalSampling.length;
        float f4 = 0.0f;
        float f5 = 0.0f;
        for (int i3 = 0; i3 < length; i3 += 2) {
            float f6 = fArrTemporalSampling[i3];
            float f7 = fArrTemporalSampling[i3 + 1];
            if (path == null) {
                path = new Path();
                path.moveTo(f6, f7);
            } else {
                float fAbs = Math.abs(f6 - f4);
                float fAbs2 = Math.abs(f7 - f5);
                if (fAbs >= 3.0f || fAbs2 >= 3.0f) {
                    path.quadTo(f4, f5, (f6 + f4) / 2.0f, (f7 + f5) / 2.0f);
                }
            }
            f4 = f6;
            f5 = f7;
        }
        return path;
    }

    private GestureStroke(RectF rectF, float f2, float[] fArr, long[] jArr) {
        this.boundingBox = new RectF(rectF.left, rectF.top, rectF.right, rectF.bottom);
        this.length = f2;
        this.points = (float[]) fArr.clone();
        this.timestamps = (long[]) jArr.clone();
    }
}
