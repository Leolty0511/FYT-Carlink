package android.hardware.camera2.utils;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public class TaskSingleDrainer {
    private final Object mSingleTask = new Object();
    private final TaskDrainer<Object> mTaskDrainer;

    public TaskSingleDrainer(Handler handler, TaskDrainer.DrainListener drainListener) {
        this.mTaskDrainer = new TaskDrainer<>(handler, drainListener);
    }

    public void beginDrain() {
        this.mTaskDrainer.beginDrain();
    }

    public void taskFinished() {
        this.mTaskDrainer.taskFinished(this.mSingleTask);
    }

    public void taskStarted() {
        this.mTaskDrainer.taskStarted(this.mSingleTask);
    }

    public TaskSingleDrainer(Handler handler, TaskDrainer.DrainListener drainListener, String str) {
        this.mTaskDrainer = new TaskDrainer<>(handler, drainListener, str);
    }
}
