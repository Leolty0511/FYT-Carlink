package android.os;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class SynchronousResultReceiver extends ResultReceiver {
    private final CompletableFuture<Result> mFuture;
    private final String mName;

    public static class Result {
        public Bundle bundle;
        public int resultCode;

        public Result(int i2, Bundle bundle) {
            this.resultCode = i2;
            this.bundle = bundle;
        }
    }

    public SynchronousResultReceiver() {
        super((Handler) null);
        android.net.lowpan.b.r();
        this.mFuture = android.net.lowpan.b.l();
        this.mName = null;
    }

    public Result awaitResult(long j2) throws TimeoutException {
        long jCurrentTimeMillis = System.currentTimeMillis() + j2;
        while (j2 >= 0) {
            try {
                return (Result) this.mFuture.get(j2, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                j2 -= jCurrentTimeMillis - System.currentTimeMillis();
            } catch (ExecutionException e2) {
                throw new AssertionError("Error receiving response", e2);
            }
        }
        throw new TimeoutException();
    }

    public String getName() {
        return this.mName;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i2, Bundle bundle) {
        super.onReceiveResult(i2, bundle);
        this.mFuture.complete(new Result(i2, bundle));
    }

    public SynchronousResultReceiver(String str) {
        super((Handler) null);
        android.net.lowpan.b.r();
        this.mFuture = android.net.lowpan.b.l();
        this.mName = str;
    }
}
