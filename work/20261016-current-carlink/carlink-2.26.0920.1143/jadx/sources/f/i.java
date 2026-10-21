package f;

import com.syu.carlink.CarLink;
import com.syu.ipc.IModuleCallback;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class i extends IModuleCallback.Stub {
    @Override // com.syu.ipc.IModuleCallback
    public final void update(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 8) {
            return;
        }
        n.b.a("HDL", "------------->>  strs: " + Arrays.toString(strArr) + " ints: " + Arrays.toString(iArr));
        CarLink.f562i.l();
    }
}
