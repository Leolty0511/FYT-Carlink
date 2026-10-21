package android.hardware.camera2.utils;

import android.os.Handler;
import com.android.internal.util.Preconditions;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class TaskDrainer<T> {
    private static final String TAG = "TaskDrainer";
    private final boolean DEBUG;
    private boolean mDrainFinished;
    private boolean mDraining;
    private final Set<T> mEarlyFinishedTaskSet;
    private final Handler mHandler;
    private final DrainListener mListener;
    private final Object mLock;
    private final String mName;
    private final Set<T> mTaskSet;

    public interface DrainListener {
        void onDrained();
    }

    public TaskDrainer(Handler handler, DrainListener drainListener) {
        this.DEBUG = false;
        this.mTaskSet = new HashSet();
        this.mEarlyFinishedTaskSet = new HashSet();
        this.mLock = new Object();
        this.mDraining = false;
        this.mDrainFinished = false;
        this.mHandler = (Handler) Preconditions.checkNotNull(handler, "handler must not be null");
        this.mListener = (DrainListener) Preconditions.checkNotNull(drainListener, "listener must not be null");
        this.mName = null;
    }

    private void checkIfDrainFinished() {
        if (this.mTaskSet.isEmpty() && this.mDraining && !this.mDrainFinished) {
            this.mDrainFinished = true;
            postDrained();
        }
    }

    private void postDrained() {
        this.mHandler.post(new Runnable() { // from class: android.hardware.camera2.utils.TaskDrainer.1
            @Override // java.lang.Runnable
            public void run() {
                TaskDrainer.this.mListener.onDrained();
            }
        });
    }

    public void beginDrain() {
        synchronized (this.mLock) {
            if (!this.mDraining) {
                this.mDraining = true;
                checkIfDrainFinished();
            }
        }
    }

    public void taskFinished(T t2) {
        synchronized (this.mLock) {
            if (!this.mTaskSet.remove(t2) && !this.mEarlyFinishedTaskSet.add(t2)) {
                throw new IllegalStateException("Task " + t2 + " was already finished");
            }
            checkIfDrainFinished();
        }
    }

    public void taskStarted(T t2) {
        synchronized (this.mLock) {
            if (this.mDraining) {
                throw new IllegalStateException("Can't start more tasks after draining has begun");
            }
            if (!this.mEarlyFinishedTaskSet.remove(t2) && !this.mTaskSet.add(t2)) {
                throw new IllegalStateException("Task " + t2 + " was already started");
            }
        }
    }

    public TaskDrainer(Handler handler, DrainListener drainListener, String str) {
        this.DEBUG = false;
        this.mTaskSet = new HashSet();
        this.mEarlyFinishedTaskSet = new HashSet();
        this.mLock = new Object();
        this.mDraining = false;
        this.mDrainFinished = false;
        this.mHandler = (Handler) Preconditions.checkNotNull(handler, "handler must not be null");
        this.mListener = (DrainListener) Preconditions.checkNotNull(drainListener, "listener must not be null");
        this.mName = str;
    }
}
