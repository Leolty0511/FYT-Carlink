package o1;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.StateListDrawable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int[] f16970a = new int[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int[] f16971b = {R.attr.state_pressed};

    /* JADX WARN: Code duplicated, block: B:36:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.InputStream] */
    public static BitmapDrawable a(String str) {
        Throwable th;
        InputStream inputStreamOpen;
        try {
            try {
                inputStreamOpen = a.f.e().open(str);
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
                    bitmapDecodeStream.setDensity(160);
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapDecodeStream);
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    return bitmapDrawable;
                } catch (IOException e3) {
                    e = e3;
                    e.printStackTrace();
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (str != 0) {
                    try {
                        str.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            inputStreamOpen = null;
        } catch (Throwable th3) {
            th = th3;
            str = 0;
            if (str != 0) {
                str.close();
            }
            throw th;
        }
    }

    public static StateListDrawable b(String str, String str2) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        BitmapDrawable bitmapDrawableA = a(str2);
        BitmapDrawable bitmapDrawableA2 = a(str);
        int[] iArr = f16971b;
        if (bitmapDrawableA == null) {
            bitmapDrawableA = bitmapDrawableA2;
        }
        stateListDrawable.addState(iArr, bitmapDrawableA);
        stateListDrawable.addState(f16970a, bitmapDrawableA2);
        if (bitmapDrawableA2 == null) {
            return null;
        }
        return stateListDrawable;
    }
}
