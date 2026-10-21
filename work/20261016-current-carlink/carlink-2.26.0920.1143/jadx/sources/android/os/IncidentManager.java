package android.os;

import android.content.Context;
import android.provider.Settings;
import android.util.Slog;

/* JADX INFO: loaded from: classes.dex */
public class IncidentManager {
    private static final String TAG = "incident";
    private Context mContext;

    public IncidentManager(Context context) {
        this.mContext = context;
    }

    public void reportIncident(IncidentReportArgs incidentReportArgs) {
        IIncidentManager iIncidentManagerAsInterface = IIncidentManager.Stub.asInterface(ServiceManager.getService("incident"));
        if (iIncidentManagerAsInterface == null) {
            Slog.e("incident", "reportIncident can't find incident binder service");
            return;
        }
        try {
            iIncidentManagerAsInterface.reportIncident(incidentReportArgs);
        } catch (RemoteException e2) {
            Slog.e("incident", "reportIncident failed", e2);
        }
    }

    public void reportIncident(String str, byte[] bArr) {
        try {
            IncidentReportArgs setting = IncidentReportArgs.parseSetting(Settings.System.getString(this.mContext.getContentResolver(), str));
            if (setting == null) {
                Slog.i("incident", "Incident report requested but disabled: " + str);
                return;
            }
            setting.addHeader(bArr);
            IIncidentManager iIncidentManagerAsInterface = IIncidentManager.Stub.asInterface(ServiceManager.getService("incident"));
            if (iIncidentManagerAsInterface == null) {
                Slog.e("incident", "reportIncident can't find incident binder service");
                return;
            }
            Slog.i("incident", "Taking incident report: " + str);
            try {
                iIncidentManagerAsInterface.reportIncident(setting);
            } catch (RemoteException e2) {
                Slog.e("incident", "reportIncident failed", e2);
            }
        } catch (IllegalArgumentException e3) {
            Slog.w("incident", "Bad value for incident report setting '" + str + "'", e3);
        }
    }
}
