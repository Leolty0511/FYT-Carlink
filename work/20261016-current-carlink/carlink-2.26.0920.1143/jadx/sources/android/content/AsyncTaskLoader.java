package android.content;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.OperationCanceledException;
import android.os.SystemClock;
import android.util.Log;
import android.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class AsyncTaskLoader<D> extends Loader<D> {
    static final boolean DEBUG = true;
    static final String TAG = "AsyncTaskLoader";
    volatile AsyncTaskLoader<D>.LoadTask mCancellingTask;
    private final Executor mExecutor;
    Handler mHandler;
    long mLastLoadCompleteTime;
    volatile AsyncTaskLoader<D>.LoadTask mTask;
    long mUpdateThrottle;

    public final class LoadTask extends AsyncTask<Void, Void, D> implements Runnable {
        private final CountDownLatch mDone = new CountDownLatch(1);
        boolean waiting;

        public LoadTask() {
        }

        @Override // android.os.AsyncTask
        public void onCancelled(D d2) {
            Log.v(AsyncTaskLoader.TAG, this + " onCancelled");
            try {
                AsyncTaskLoader.this.dispatchOnCancelled(this, d2);
            } finally {
                this.mDone.countDown();
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(D d2) {
            Log.v(AsyncTaskLoader.TAG, this + " onPostExecute");
            try {
                AsyncTaskLoader.this.dispatchOnLoadComplete(this, d2);
            } finally {
                this.mDone.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.waiting = false;
            AsyncTaskLoader.this.executePendingTask();
        }

        public void waitForLoader() {
            try {
                this.mDone.await();
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.os.AsyncTask
        public D doInBackground(Void... voidArr) {
            Log.v(AsyncTaskLoader.TAG, this + " >>> doInBackground");
            try {
                D d2 = (D) AsyncTaskLoader.this.onLoadInBackground();
                Log.v(AsyncTaskLoader.TAG, this + "  <<< doInBackground");
                return d2;
            } catch (OperationCanceledException e2) {
                if (!isCancelled()) {
                    throw e2;
                }
                Log.v(AsyncTaskLoader.TAG, this + "  <<< doInBackground (was canceled)", e2);
                return null;
            }
        }
    }

    public AsyncTaskLoader(Context context) {
        this(context, AsyncTask.THREAD_POOL_EXECUTOR);
    }

    public void cancelLoadInBackground() {
    }

    public void dispatchOnCancelled(AsyncTaskLoader<D>.LoadTask loadTask, D d2) {
        onCanceled(d2);
        if (this.mCancellingTask == loadTask) {
            Log.v(TAG, "Cancelled task is now canceled!");
            rollbackContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mCancellingTask = null;
            Log.v(TAG, "Delivering cancellation");
            deliverCancellation();
            executePendingTask();
        }
    }

    public void dispatchOnLoadComplete(AsyncTaskLoader<D>.LoadTask loadTask, D d2) {
        if (this.mTask != loadTask) {
            Log.v(TAG, "Load complete of old task, trying to cancel");
            dispatchOnCancelled(loadTask, d2);
        } else {
            if (isAbandoned()) {
                onCanceled(d2);
                return;
            }
            commitContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mTask = null;
            Log.v(TAG, "Delivering result");
            deliverResult(d2);
        }
    }

    @Override // android.content.Loader
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.mTask != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.mTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mTask.waiting);
        }
        if (this.mCancellingTask != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.mCancellingTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mCancellingTask.waiting);
        }
        if (this.mUpdateThrottle != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            TimeUtils.formatDuration(this.mUpdateThrottle, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            TimeUtils.formatDuration(this.mLastLoadCompleteTime, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    public void executePendingTask() {
        if (this.mCancellingTask != null || this.mTask == null) {
            return;
        }
        if (this.mTask.waiting) {
            this.mTask.waiting = false;
            this.mHandler.removeCallbacks(this.mTask);
        }
        if (this.mUpdateThrottle <= 0 || SystemClock.uptimeMillis() >= this.mLastLoadCompleteTime + this.mUpdateThrottle) {
            Log.v(TAG, "Executing: " + this.mTask);
            this.mTask.executeOnExecutor(this.mExecutor, null);
            return;
        }
        Log.v(TAG, "Waiting until " + (this.mLastLoadCompleteTime + this.mUpdateThrottle) + " to execute: " + this.mTask);
        this.mTask.waiting = true;
        this.mHandler.postAtTime(this.mTask, this.mLastLoadCompleteTime + this.mUpdateThrottle);
    }

    public boolean isLoadInBackgroundCanceled() {
        return this.mCancellingTask != null;
    }

    public abstract D loadInBackground();

    @Override // android.content.Loader
    public boolean onCancelLoad() {
        Log.v(TAG, "onCancelLoad: mTask=" + this.mTask);
        if (this.mTask == null) {
            return false;
        }
        if (!this.mStarted) {
            this.mContentChanged = true;
        }
        if (this.mCancellingTask != null) {
            Log.v(TAG, "cancelLoad: still waiting for cancelled task; dropping next");
            if (this.mTask.waiting) {
                this.mTask.waiting = false;
                this.mHandler.removeCallbacks(this.mTask);
            }
            this.mTask = null;
            return false;
        }
        if (this.mTask.waiting) {
            Log.v(TAG, "cancelLoad: task is waiting, dropping it");
            this.mTask.waiting = false;
            this.mHandler.removeCallbacks(this.mTask);
            this.mTask = null;
            return false;
        }
        boolean zCancel = this.mTask.cancel(false);
        Log.v(TAG, "cancelLoad: cancelled=" + zCancel);
        if (zCancel) {
            this.mCancellingTask = this.mTask;
            cancelLoadInBackground();
        }
        this.mTask = null;
        return zCancel;
    }

    public void onCanceled(D d2) {
    }

    @Override // android.content.Loader
    public void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        this.mTask = new LoadTask();
        Log.v(TAG, "Preparing load: mTask=" + this.mTask);
        executePendingTask();
    }

    public D onLoadInBackground() {
        return loadInBackground();
    }

    public void setUpdateThrottle(long j2) {
        this.mUpdateThrottle = j2;
        if (j2 != 0) {
            this.mHandler = new Handler();
        }
    }

    public void waitForLoader() {
        AsyncTaskLoader<D>.LoadTask loadTask = this.mTask;
        if (loadTask != null) {
            loadTask.waitForLoader();
        }
    }

    public AsyncTaskLoader(Context context, Executor executor) {
        super(context);
        this.mLastLoadCompleteTime = -10000L;
        this.mExecutor = executor;
    }
}
