package j;

import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.app.ListFragment;
import android.app.backup.BackupManager;
import android.content.res.Configuration;
import android.os.RemoteException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class f extends ListFragment {
    public static void a(Locale locale) {
        try {
            IActivityManager iActivityManager = ActivityManagerNative.getDefault();
            Configuration configuration = iActivityManager.getConfiguration();
            configuration.setLocale(locale);
            iActivityManager.updateConfiguration(configuration);
            BackupManager.dataChanged("com.android.providers.settings");
        } catch (RemoteException unused) {
        }
    }
}
