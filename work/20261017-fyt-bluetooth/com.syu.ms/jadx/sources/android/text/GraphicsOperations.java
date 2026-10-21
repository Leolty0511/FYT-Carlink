package android.text;

import android.graphics.Canvas;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes.dex */
public interface GraphicsOperations extends CharSequence {
    void drawText(Canvas canvas, int i2, int i3, float f2, float f3, Paint paint);

    void drawTextRun(Canvas canvas, int i2, int i3, int i4, int i5, float f2, float f3, int i6, Paint paint);

    float getTextRunAdvances(int i2, int i3, int i4, int i5, int i6, float[] fArr, int i7, Paint paint);

    int getTextRunCursor(int i2, int i3, int i4, int i5, int i6, Paint paint);

    int getTextWidths(int i2, int i3, float[] fArr, Paint paint);

    float measureText(int i2, int i3, Paint paint);
}
