package n1;

import a.f;
import a.i;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import android.os.SystemProperties;
import android.view.View;
import android.view.WindowManager;
import app.App;
import com.syu.jni.ControlNative;
import com.syu.jni.SyuJniNative;
import com.syu.ms.R;
import java.util.ArrayList;
import java.util.List;
import o1.j0;

/* JADX INFO: loaded from: classes2.dex */
public class e extends View implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager.LayoutParams f16680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Paint f16681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f16683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o1.c<String> f16685f;

    public e(Context context) {
        super(context);
        this.f16680a = i.e(-1, -1);
        this.f16681b = new Paint();
        this.f16682c = false;
        this.f16683d = false;
        this.f16684e = 25;
        this.f16685f = new o1.c<>(32);
        this.f16681b.setAntiAlias(true);
        this.f16681b.setTextSize(this.f16684e);
        this.f16681b.setColor(-1);
    }

    public void h() {
        if (this.f16682c) {
            return;
        }
        this.f16682c = true;
        i(true);
        j0.f16915j.c(this);
        f.y().addView(this, this.f16680a);
    }

    public final void i(boolean z2) {
        if (g.f.f(4)) {
            Bundle bundle = new Bundle();
            bundle.putInt("param0", z2 ? 1 : 0);
            SyuJniNative.getInstance().syu_jni_command(151, bundle, null);
        } else {
            if (g.e.a() != 3 || SystemProperties.getInt("sys.emmc.debug", 0) == 0) {
                return;
            }
            ControlNative.getInstance().Setflashflag(z2 ? 1 : 0);
        }
    }

    public final void j() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int[] iArrGetpid = null;
        if (g.f.f(4)) {
            Bundle bundle = new Bundle();
            SyuJniNative.getInstance().syu_jni_command(150, null, bundle);
            iArrGetpid = bundle.getIntArray("param0");
        } else if (g.e.a() == 3 && SystemProperties.getInt("sys.emmc.debug", 0) != 0) {
            iArrGetpid = ControlNative.getInstance().Getpid();
        }
        if (iArrGetpid == null || iArrGetpid.length < 2 || (runningAppProcesses = f.d().getRunningAppProcesses()) == null) {
            return;
        }
        new ArrayList();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            for (int i2 = 1; i2 < iArrGetpid.length; i2 += 2) {
                if (runningAppProcessInfo.pid == iArrGetpid[i2 - 1]) {
                    o1.c<String> cVar = this.f16685f;
                    String str = runningAppProcessInfo.processName;
                    cVar.f(str, cVar.d(str, 0) + iArrGetpid[i2]);
                }
            }
        }
    }

    public void k() {
        if (this.f16682c) {
            this.f16682c = false;
            j0.f16915j.d(this);
            i(false);
            f.y().removeView(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.drawColor(Integer.MIN_VALUE);
        canvas.drawText(App.c().getString(R.string.flash_test_open), 10.0f, this.f16684e + 5, this.f16681b);
        if (this.f16683d) {
            this.f16683d = false;
            j();
        }
        if (this.f16685f.h() == 0) {
            return;
        }
        for (int i2 = 0; i2 < this.f16685f.h(); i2++) {
            canvas.drawText(String.format("%s:%d", this.f16685f.e(i2), Integer.valueOf(this.f16685f.i(i2))), 10.0f, (i2 + 2) * (this.f16684e + 5), this.f16681b);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f16683d = true;
        postInvalidate();
    }
}
