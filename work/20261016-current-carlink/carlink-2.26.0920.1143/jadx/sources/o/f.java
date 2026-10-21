package o;

import android.app.m;
import android.util.Log;
import com.syu.ipc.IModuleCallback;
import java.util.Arrays;
import java.util.LinkedHashMap;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends IModuleCallback.Stub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1100b;
    public final LinkedHashMap c = new LinkedHashMap();

    public f(int i2) {
        this.f1100b = i2;
        for (int i3 = 0; i3 < 2; i3++) {
            this.c.put(Integer.valueOf(i3), Boolean.FALSE);
        }
    }

    @Override // com.syu.ipc.IModuleCallback
    public final void update(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Boolean bool = (Boolean) this.c.get(Integer.valueOf(i2));
        if (bool == null || !bool.booleanValue()) {
            return;
        }
        StringBuilder sb = new StringBuilder("-------------->> update : module:");
        m.u(sb, this.f1100b, " - update:", i2, " - ");
        sb.append(Arrays.toString(iArr));
        Log.e("kotlin", sb.toString());
        EventBus.getDefault().post(new b(this.f1100b, Integer.valueOf(i2), iArr, fArr, strArr));
    }
}
