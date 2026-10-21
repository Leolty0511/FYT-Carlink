package android.printservice;

import android.graphics.drawable.Icon;
import android.os.RemoteException;
import android.print.PrinterId;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class CustomPrinterIconCallback {
    private static final String LOG_TAG = "CustomPrinterIconCB";
    private final IPrintServiceClient mObserver;
    private final PrinterId mPrinterId;

    public CustomPrinterIconCallback(PrinterId printerId, IPrintServiceClient iPrintServiceClient) {
        this.mPrinterId = printerId;
        this.mObserver = iPrintServiceClient;
    }

    public boolean onCustomPrinterIconLoaded(Icon icon) {
        try {
            this.mObserver.onCustomPrinterIconLoaded(this.mPrinterId, icon);
            return true;
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Could not update icon", e2);
            return false;
        }
    }
}
