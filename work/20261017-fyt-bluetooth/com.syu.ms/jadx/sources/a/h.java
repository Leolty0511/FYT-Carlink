package a;

import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.MotionEvent;
import com.syu.jni.SyuUInput;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j1.c f72b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f71a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray<MotionEvent.PointerCoords> f73c = new SparseArray<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SyuUInput f74d = new SyuUInput();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f75e = null;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f76a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f77b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f78c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f79d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f80e = 0;

        public void a(int i2, int i3) {
            this.f76a = i2;
            this.f77b = i3;
        }

        public boolean b(boolean z2) {
            if (this.f78c == z2) {
                return false;
            }
            this.f78c = z2;
            if (z2) {
                this.f79d |= 1;
            } else {
                this.f79d &= -2;
            }
            return true;
        }
    }

    public void a(int i2, float f2, float f3) {
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.f204x = f2;
        pointerCoords.f205y = f3;
        pointerCoords.pressure = 1.0f;
        pointerCoords.size = 1.0f;
        this.f73c.put(i2, pointerCoords);
    }

    public final void b() {
        if (this.f75e == null) {
            a aVar = new a();
            this.f75e = aVar;
            aVar.a(10, 10);
            Log.e("Mouse", "====>> result: " + this.f74d.openDev());
            SyuUInput syuUInput = this.f74d;
            a aVar2 = this.f75e;
            syuUInput.move(aVar2.f76a, aVar2.f77b);
        }
    }

    public final boolean c(InputEvent inputEvent) {
        return d(inputEvent, 2);
    }

    public final boolean d(InputEvent inputEvent, int i2) {
        if (this.f72b == null) {
            this.f72b = new j1.c("injectInputEvent").g(f.l()).c(InputEvent.class, Integer.TYPE);
        }
        return ((Boolean) this.f72b.d(inputEvent, Integer.valueOf(i2)).a()).booleanValue();
    }

    public boolean e() {
        if (this.f73c.size() > 0) {
            this.f73c.clear();
        }
        Log.e("Mouse", "mouseLeftDown");
        b();
        if (!this.f75e.b(true)) {
            return false;
        }
        this.f74d.keyEvent(0, 1);
        return true;
    }

    public boolean f() {
        if (this.f73c.size() > 0) {
            this.f73c.clear();
        }
        Log.e("Mouse", "mouseLeftUp");
        b();
        if (!this.f75e.b(false)) {
            return false;
        }
        this.f74d.keyEvent(0, 0);
        return true;
    }

    public boolean g(int i2, int i3) {
        if (this.f73c.size() > 0) {
            this.f73c.clear();
        }
        b();
        a aVar = this.f75e;
        if (aVar.f76a == i2 && aVar.f77b == i3) {
            return false;
        }
        this.f74d.move(i2, i3);
        Log.e("Mouse", "move : x: " + i2 + ", y: " + i3);
        return true;
    }

    public void h(int i2) {
        this.f73c.remove(i2);
    }

    public boolean i(int i2, int i3) {
        int i4;
        int size = this.f73c.size();
        if (size == 0) {
            return false;
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[size];
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[size];
        for (int i5 = 0; i5 < size; i5++) {
            pointerPropertiesArr[i5] = new MotionEvent.PointerProperties();
            pointerPropertiesArr[i5].id = this.f73c.keyAt(i5);
            pointerPropertiesArr[i5].toolType = 1;
            pointerCoordsArr[i5] = new MotionEvent.PointerCoords(this.f73c.valueAt(i5));
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (i2 == 0) {
            this.f71a = jUptimeMillis;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(this.f71a, jUptimeMillis, i2, size, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, InputDevice.SOURCE_TOUCHSCREEN, 0);
        if (i2 == 5 || i2 == 6) {
            i4 = i3;
            motionEventObtain.setAction((i4 << 8) | i2);
        } else {
            i4 = i3;
        }
        boolean zC = c(motionEventObtain);
        motionEventObtain.recycle();
        if (i2 == 1 || i2 == 3) {
            this.f71a = 0L;
            this.f73c.clear();
        } else if (i2 == 6) {
            this.f73c.remove(i4);
        }
        return zC;
    }

    public void j(int i2, float f2, float f3) {
        MotionEvent.PointerCoords pointerCoords = this.f73c.get(i2);
        if (pointerCoords != null) {
            pointerCoords.f204x = f2;
            pointerCoords.f205y = f3;
        }
    }
}
