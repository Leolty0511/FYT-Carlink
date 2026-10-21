package android.accounts;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public interface AccountManagerFuture<V> {
    boolean cancel(boolean z2);

    V getResult();

    V getResult(long j2, TimeUnit timeUnit);

    boolean isCancelled();

    boolean isDone();
}
