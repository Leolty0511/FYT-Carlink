package android.os;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class PMFactoryEx extends PMFactory {
    @Override // android.os.PMFactory
    public AbsPowerManager createExtraPowerManager(Context context) {
        return new PowerManagerEx(context);
    }
}
