package android.print;

import android.content.Context;
import android.content.Loader;
import android.os.Handler;
import android.os.Message;
import android.printservice.recommendation.RecommendationInfo;
import com.android.internal.util.Preconditions;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PrintServiceRecommendationsLoader extends Loader<List<RecommendationInfo>> {
    private final Handler mHandler;
    private PrintManager.PrintServiceRecommendationsChangeListener mListener;
    private final PrintManager mPrintManager;

    public class MyHandler extends Handler {
        public MyHandler() {
            super(PrintServiceRecommendationsLoader.this.getContext().getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (PrintServiceRecommendationsLoader.this.isStarted()) {
                PrintServiceRecommendationsLoader.this.deliverResult((List) message.obj);
            }
        }
    }

    public PrintServiceRecommendationsLoader(PrintManager printManager, Context context) {
        super((Context) Preconditions.checkNotNull(context));
        this.mHandler = new MyHandler();
        this.mPrintManager = (PrintManager) Preconditions.checkNotNull(printManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueNewResult() {
        Message messageObtainMessage = this.mHandler.obtainMessage(0);
        messageObtainMessage.obj = this.mPrintManager.getPrintServiceRecommendations();
        this.mHandler.sendMessage(messageObtainMessage);
    }

    @Override // android.content.Loader
    public void onForceLoad() {
        queueNewResult();
    }

    @Override // android.content.Loader
    public void onReset() {
        onStopLoading();
    }

    @Override // android.content.Loader
    public void onStartLoading() {
        PrintManager.PrintServiceRecommendationsChangeListener printServiceRecommendationsChangeListener = new PrintManager.PrintServiceRecommendationsChangeListener() { // from class: android.print.PrintServiceRecommendationsLoader.1
            @Override // android.print.PrintManager.PrintServiceRecommendationsChangeListener
            public void onPrintServiceRecommendationsChanged() {
                PrintServiceRecommendationsLoader.this.queueNewResult();
            }
        };
        this.mListener = printServiceRecommendationsChangeListener;
        this.mPrintManager.addPrintServiceRecommendationsChangeListener(printServiceRecommendationsChangeListener, null);
        deliverResult(this.mPrintManager.getPrintServiceRecommendations());
    }

    @Override // android.content.Loader
    public void onStopLoading() {
        PrintManager.PrintServiceRecommendationsChangeListener printServiceRecommendationsChangeListener = this.mListener;
        if (printServiceRecommendationsChangeListener != null) {
            this.mPrintManager.removePrintServiceRecommendationsChangeListener(printServiceRecommendationsChangeListener);
            this.mListener = null;
        }
        this.mHandler.removeMessages(0);
    }
}
