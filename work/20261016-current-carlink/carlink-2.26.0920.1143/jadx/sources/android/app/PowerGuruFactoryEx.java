package android.app;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class PowerGuruFactoryEx extends PowerGuruFactory {
    @Override // android.app.PowerGuruFactory
    public AbsPowerGuru createExtraPowerGuru(IPowerGuru iPowerGuru, Context context) {
        return new PowerGuru(iPowerGuru, context);
    }
}
