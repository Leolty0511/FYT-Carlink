package y;

import android.os.RemoteCallbackList;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public class e extends RemoteCallbackList<b> {
    public static void a(b bVar, int i2, int i3) {
        if (bVar != null) {
            synchronized (bVar) {
                try {
                    bVar.H0(i2, new int[]{i3}, null, null);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void b(e[] eVarArr, int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (eVarArr == null || i2 < 0 || i2 >= eVarArr.length) {
            return;
        }
        e eVar = eVarArr[i2];
    }
}
