package android.printservice;

import android.content.Context;
import android.os.RemoteException;
import android.print.PrintJobId;
import android.print.PrintJobInfo;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class PrintJob {
    private static final String LOG_TAG = "PrintJob";
    private PrintJobInfo mCachedInfo;
    private final Context mContext;
    private final PrintDocument mDocument;
    private final IPrintServiceClient mPrintServiceClient;

    public PrintJob(Context context, PrintJobInfo printJobInfo, IPrintServiceClient iPrintServiceClient) {
        this.mContext = context;
        this.mCachedInfo = printJobInfo;
        this.mPrintServiceClient = iPrintServiceClient;
        this.mDocument = new PrintDocument(printJobInfo.getId(), iPrintServiceClient, printJobInfo.getDocumentInfo());
    }

    private boolean isInImmutableState() {
        int state = this.mCachedInfo.getState();
        return state == 5 || state == 7 || state == 6;
    }

    private boolean setState(int i2, String str) {
        try {
            if (!this.mPrintServiceClient.setPrintJobState(this.mCachedInfo.getId(), i2, str)) {
                return false;
            }
            this.mCachedInfo.setState(i2);
            this.mCachedInfo.setStatus(str);
            return true;
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error setting the state of job: " + this.mCachedInfo.getId(), e2);
            return false;
        }
    }

    public boolean block(String str) {
        PrintService.throwIfNotCalledOnMainThread();
        int state = getInfo().getState();
        if (state == 3 || state == 4) {
            return setState(4, str);
        }
        return false;
    }

    public boolean cancel() {
        PrintService.throwIfNotCalledOnMainThread();
        if (isInImmutableState()) {
            return false;
        }
        return setState(7, null);
    }

    public boolean complete() {
        PrintService.throwIfNotCalledOnMainThread();
        if (isStarted()) {
            return setState(5, null);
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && PrintJob.class == obj.getClass()) {
            return this.mCachedInfo.getId().equals(((PrintJob) obj).mCachedInfo.getId());
        }
        return false;
    }

    public boolean fail(String str) {
        PrintService.throwIfNotCalledOnMainThread();
        if (isInImmutableState()) {
            return false;
        }
        return setState(6, str);
    }

    public int getAdvancedIntOption(String str) {
        PrintService.throwIfNotCalledOnMainThread();
        return getInfo().getAdvancedIntOption(str);
    }

    public String getAdvancedStringOption(String str) {
        PrintService.throwIfNotCalledOnMainThread();
        return getInfo().getAdvancedStringOption(str);
    }

    public PrintDocument getDocument() {
        PrintService.throwIfNotCalledOnMainThread();
        return this.mDocument;
    }

    public PrintJobId getId() {
        PrintService.throwIfNotCalledOnMainThread();
        return this.mCachedInfo.getId();
    }

    public PrintJobInfo getInfo() {
        PrintJobInfo printJobInfo;
        PrintService.throwIfNotCalledOnMainThread();
        if (isInImmutableState()) {
            return this.mCachedInfo;
        }
        try {
            printJobInfo = this.mPrintServiceClient.getPrintJobInfo(this.mCachedInfo.getId());
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Couldn't get info for job: " + this.mCachedInfo.getId(), e2);
            printJobInfo = null;
        }
        if (printJobInfo != null) {
            this.mCachedInfo = printJobInfo;
        }
        return this.mCachedInfo;
    }

    public String getTag() {
        PrintService.throwIfNotCalledOnMainThread();
        return getInfo().getTag();
    }

    public boolean hasAdvancedOption(String str) {
        PrintService.throwIfNotCalledOnMainThread();
        return getInfo().hasAdvancedOption(str);
    }

    public int hashCode() {
        return this.mCachedInfo.getId().hashCode();
    }

    public boolean isBlocked() {
        PrintService.throwIfNotCalledOnMainThread();
        return getInfo().getState() == 4;
    }

    public boolean isCancelled() {
        PrintService.throwIfNotCalledOnMainThread();
        return getInfo().getState() == 7;
    }

    public boolean isCompleted() {
        PrintService.throwIfNotCalledOnMainThread();
        return getInfo().getState() == 5;
    }

    public boolean isFailed() {
        PrintService.throwIfNotCalledOnMainThread();
        return getInfo().getState() == 6;
    }

    public boolean isQueued() {
        PrintService.throwIfNotCalledOnMainThread();
        return getInfo().getState() == 2;
    }

    public boolean isStarted() {
        PrintService.throwIfNotCalledOnMainThread();
        return getInfo().getState() == 3;
    }

    public void setProgress(float f2) {
        PrintService.throwIfNotCalledOnMainThread();
        try {
            this.mPrintServiceClient.setProgress(this.mCachedInfo.getId(), f2);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error setting progress for job: " + this.mCachedInfo.getId(), e2);
        }
    }

    public void setStatus(CharSequence charSequence) {
        PrintService.throwIfNotCalledOnMainThread();
        try {
            this.mPrintServiceClient.setStatus(this.mCachedInfo.getId(), charSequence);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error setting status for job: " + this.mCachedInfo.getId(), e2);
        }
    }

    public boolean setTag(String str) {
        PrintService.throwIfNotCalledOnMainThread();
        if (isInImmutableState()) {
            return false;
        }
        try {
            return this.mPrintServiceClient.setPrintJobTag(this.mCachedInfo.getId(), str);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error setting tag for job: " + this.mCachedInfo.getId(), e2);
            return false;
        }
    }

    public boolean start() {
        PrintService.throwIfNotCalledOnMainThread();
        int state = getInfo().getState();
        if (state == 2 || state == 4) {
            return setState(3, null);
        }
        return false;
    }

    public void setStatus(int i2) {
        PrintService.throwIfNotCalledOnMainThread();
        try {
            this.mPrintServiceClient.setStatusRes(this.mCachedInfo.getId(), i2, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error setting status for job: " + this.mCachedInfo.getId(), e2);
        }
    }
}
