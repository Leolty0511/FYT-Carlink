package android.service.resolver;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.util.Log;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ResolverRankerService extends Service {
    public static final String BIND_PERMISSION = "android.permission.BIND_RESOLVER_RANKER_SERVICE";
    private static final boolean DEBUG = false;
    private static final String HANDLER_THREAD_NAME = "RESOLVER_RANKER_SERVICE";
    public static final String HOLD_PERMISSION = "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE";
    public static final String SERVICE_INTERFACE = "android.service.resolver.ResolverRankerService";
    private static final String TAG = "ResolverRankerService";
    private volatile Handler mHandler;
    private HandlerThread mHandlerThread;
    private ResolverRankerServiceWrapper mWrapper = null;

    public class ResolverRankerServiceWrapper extends IResolverRankerService.Stub {
        private ResolverRankerServiceWrapper() {
        }

        @Override // android.service.resolver.IResolverRankerService
        public void predict(final List<ResolverTarget> list, final IResolverRankerResult iResolverRankerResult) {
            Runnable runnable = new Runnable() { // from class: android.service.resolver.ResolverRankerService.ResolverRankerServiceWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ResolverRankerService.this.onPredictSharingProbabilities(list);
                        ResolverRankerService.sendResult(list, iResolverRankerResult);
                    } catch (Exception e2) {
                        Log.e(ResolverRankerService.TAG, "onPredictSharingProbabilities failed; send null results: " + e2);
                        ResolverRankerService.sendResult(null, iResolverRankerResult);
                    }
                }
            };
            Handler handler = ResolverRankerService.this.mHandler;
            if (handler != null) {
                handler.post(runnable);
            }
        }

        @Override // android.service.resolver.IResolverRankerService
        public void train(final List<ResolverTarget> list, final int i2) {
            Runnable runnable = new Runnable() { // from class: android.service.resolver.ResolverRankerService.ResolverRankerServiceWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ResolverRankerService.this.onTrainRankingModel(list, i2);
                    } catch (Exception e2) {
                        Log.e(ResolverRankerService.TAG, "onTrainRankingModel failed; skip train: " + e2);
                    }
                }
            };
            Handler handler = ResolverRankerService.this.mHandler;
            if (handler != null) {
                handler.post(runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendResult(List<ResolverTarget> list, IResolverRankerResult iResolverRankerResult) {
        try {
            iResolverRankerResult.sendResult(list);
        } catch (Exception e2) {
            Log.e(TAG, "failed to send results: " + e2);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (!SERVICE_INTERFACE.equals(intent.getAction())) {
            return null;
        }
        if (this.mHandlerThread == null) {
            HandlerThread handlerThread = new HandlerThread(HANDLER_THREAD_NAME);
            this.mHandlerThread = handlerThread;
            handlerThread.start();
            this.mHandler = new Handler(this.mHandlerThread.getLooper());
        }
        if (this.mWrapper == null) {
            this.mWrapper = new ResolverRankerServiceWrapper();
        }
        return this.mWrapper;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mHandler = null;
        HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        super.onDestroy();
    }

    public void onPredictSharingProbabilities(List<ResolverTarget> list) {
    }

    public void onTrainRankingModel(List<ResolverTarget> list, int i2) {
    }
}
