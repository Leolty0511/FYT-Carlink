package n1;

import a.f;
import a.i;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.SparseArray;
import android.view.View;
import android.view.WindowManager;
import app.App;
import java.util.Locale;
import o1.m;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class b extends View {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static boolean f16645m = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager.LayoutParams f16646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f16649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16650e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16651f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String[] f16652g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f16653h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Paint f16654i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16655j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SparseArray<Boolean> f16656k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[] f16657l;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f16658a;

        public a(String str) {
            this.f16658a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.j(b.this);
            b.m(b.this);
            if (b.this.f16647b > 15) {
                b.this.f16647b = 0;
            }
            if (b.this.f16648c > 16) {
                b.this.f16648c = 16;
            }
            b.o(b.this);
            b.this.f16652g[b.this.f16647b] = String.format("%06d @ %s", Integer.valueOf(b.this.f16655j), this.f16658a);
            int[] iArr = b.this.f16653h;
            int i2 = b.this.f16647b;
            b bVar = b.this;
            int[] iArr2 = bVar.f16657l;
            int i3 = bVar.f16647b;
            b bVar2 = b.this;
            iArr[i2] = iArr2[i3 % bVar2.f16657l.length];
            bVar2.invalidate();
        }
    }

    public b(Context context) {
        super(context);
        this.f16646a = null;
        this.f16649d = 16;
        this.f16650e = 25;
        this.f16651f = 20;
        this.f16652g = new String[16];
        this.f16653h = new int[16];
        this.f16654i = new Paint();
        this.f16656k = new SparseArray<>();
        this.f16657l = new int[]{-65536, -1, Color.GREEN, -256};
        init();
    }

    public static /* synthetic */ int j(b bVar) {
        int i2 = bVar.f16647b;
        bVar.f16647b = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int m(b bVar) {
        int i2 = bVar.f16648c;
        bVar.f16648c = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int o(b bVar) {
        int i2 = bVar.f16655j;
        bVar.f16655j = i2 + 1;
        return i2;
    }

    public SparseArray<Boolean> getFlags() {
        return this.f16656k;
    }

    public WindowManager.LayoutParams getWindowLayoutParams() {
        if (this.f16646a == null) {
            this.f16646a = i.e(-1, -1);
        }
        return this.f16646a;
    }

    public final void init() {
        this.f16654i.setAntiAlias(true);
        this.f16654i.setTextSize(20.0f);
        this.f16654i.setColor(-1);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f16648c == 0) {
            return;
        }
        float width = getWidth() / 1024.0f;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            width = getWidth() / 768.0f;
        }
        this.f16654i.setTextSize(20.0f * width);
        int i2 = this.f16648c;
        int i3 = (this.f16647b - i2) + 1;
        if (i3 < 0) {
            i3 += 16;
        }
        int i4 = 0;
        if (i3 + i2 > 16) {
            int i5 = 16 - i3;
            int i6 = i2 - i5;
            int i7 = 0;
            while (i7 < i5) {
                int i8 = i3 + i7;
                this.f16654i.setColor(this.f16653h[i8]);
                i7++;
                canvas.drawText(this.f16652g[i8], 5, this.f16650e * i7 * width, this.f16654i);
            }
            while (i4 < i6) {
                this.f16654i.setColor(this.f16653h[i4]);
                canvas.drawText(this.f16652g[i4], 5, (i5 + i4 + 1) * this.f16650e * width, this.f16654i);
                i4++;
            }
        } else {
            while (i4 < i2) {
                int i9 = i3 + i4;
                this.f16654i.setColor(this.f16653h[i9]);
                i4++;
                canvas.drawText(this.f16652g[i9], 5, this.f16650e * i4 * width, this.f16654i);
            }
        }
        if (g.e.a() == 1) {
            canvas.drawColor(16842496);
        }
    }

    public boolean r() {
        return f16645m;
    }

    public void s(String str) {
        t(LogType.LOG1, str);
    }

    public void setDbg(boolean z2) {
        f16645m = z2;
    }

    public void t(LogType logType, String str) {
        if (!f16645m || str == null) {
            return;
        }
        int iOrdinal = logType.ordinal();
        if (this.f16656k.indexOfKey(iOrdinal) < 0 ? false : this.f16656k.get(iOrdinal).booleanValue()) {
            m.a().post(new a(str));
        }
    }

    public void u(String str) {
        t(LogType.LOG2, str);
    }

    public void v(String str) {
        t(LogType.LOG3, str);
    }

    public void w(String str) {
        t(LogType.LOG4, str);
    }

    public void x(String str, byte[] bArr, int i2, int i3) {
        if (!f16645m || bArr == null) {
            return;
        }
        if (bArr.length - i2 < i3) {
            i3 = bArr.length - i2;
        }
        String str2 = str + " * ";
        for (int i4 = 0; i4 < i3; i4++) {
            String upperCase = Integer.toHexString(bArr[i2 + i4] & 255).toUpperCase(Locale.CHINA);
            if (upperCase.length() < 2) {
                upperCase = "0" + upperCase;
            }
            str2 = str2 + upperCase + " ";
        }
        m.a().post(new a(str2));
    }

    public void y(String str, int[] iArr, int i2, int i3) {
        if (!f16645m || iArr == null) {
            return;
        }
        if (iArr.length - i2 < i3) {
            i3 = iArr.length - i2;
        }
        String str2 = str + " * ";
        for (int i4 = 0; i4 < i3; i4++) {
            String upperCase = Integer.toHexString(iArr[i2 + i4] & 255).toUpperCase(Locale.CHINA);
            if (upperCase.length() < 2) {
                upperCase = "0" + upperCase;
            }
            str2 = str2 + upperCase + " ";
        }
        m.a().post(new a(str2));
    }

    public void z(int i2, boolean z2) {
        if (z2) {
            this.f16656k.put(i2, Boolean.valueOf(z2));
        } else if (this.f16656k.indexOfKey(i2) >= 0) {
            this.f16656k.remove(i2);
        }
        if (this.f16656k.size() > 0 || getParent() == null) {
            return;
        }
        try {
            f.y().removeView(this);
            f16645m = false;
        } catch (Exception unused) {
        }
    }
}
