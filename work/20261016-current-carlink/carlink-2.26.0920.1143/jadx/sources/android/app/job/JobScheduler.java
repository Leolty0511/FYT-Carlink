package android.app.job;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class JobScheduler {
    public static final int RESULT_FAILURE = 0;
    public static final int RESULT_SUCCESS = 1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Result {
    }

    public abstract void cancel(int i2);

    public abstract void cancelAll();

    public abstract int enqueue(JobInfo jobInfo, JobWorkItem jobWorkItem);

    public abstract List<JobInfo> getAllPendingJobs();

    public abstract JobInfo getPendingJob(int i2);

    public abstract int schedule(JobInfo jobInfo);

    public abstract int scheduleAsPackage(JobInfo jobInfo, String str, int i2, String str2);
}
