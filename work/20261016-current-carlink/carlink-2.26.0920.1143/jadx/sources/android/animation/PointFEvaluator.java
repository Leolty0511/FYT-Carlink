package android.animation;

import android.accessibilityservice.c;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes.dex */
public class PointFEvaluator implements TypeEvaluator<PointF> {
    private PointF mPoint;

    public PointFEvaluator() {
    }

    public PointFEvaluator(PointF pointF) {
        this.mPoint = pointF;
    }

    @Override // android.animation.TypeEvaluator
    public PointF evaluate(float f2, PointF pointF, PointF pointF2) {
        float f3 = pointF.f73x;
        float fA = c.a(pointF2.f73x, f3, f2, f3);
        float f4 = pointF.f74y;
        float fA2 = c.a(pointF2.f74y, f4, f2, f4);
        PointF pointF3 = this.mPoint;
        if (pointF3 == null) {
            return new PointF(fA, fA2);
        }
        pointF3.set(fA, fA2);
        return this.mPoint;
    }
}
