package app;

import a.g;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import z.k;

/* JADX INFO: loaded from: classes.dex */
public class ToolkitService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return g.K2();
    }

    @Override // android.app.Service
    public void onDestroy() {
        k.s(-86, 86);
        super.onDestroy();
    }
}
