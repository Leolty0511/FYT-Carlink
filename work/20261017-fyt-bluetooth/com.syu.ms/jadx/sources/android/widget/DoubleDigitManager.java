package android.widget;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
class DoubleDigitManager {
    private Integer intermediateDigit;
    private final CallBack mCallBack;
    private final long timeoutInMillis;

    public interface CallBack {
        void singleDigitFinal(int i2);

        boolean singleDigitIntermediate(int i2);

        boolean twoDigitsFinal(int i2, int i3);
    }

    public DoubleDigitManager(long j2, CallBack callBack) {
        this.timeoutInMillis = j2;
        this.mCallBack = callBack;
    }

    public void reportDigit(int i2) {
        Integer num = this.intermediateDigit;
        if (num != null) {
            if (this.mCallBack.twoDigitsFinal(num.intValue(), i2)) {
                this.intermediateDigit = null;
            }
        } else {
            this.intermediateDigit = Integer.valueOf(i2);
            new Handler().postDelayed(new Runnable() { // from class: android.widget.DoubleDigitManager.1
                @Override // java.lang.Runnable
                public void run() {
                    if (DoubleDigitManager.this.intermediateDigit != null) {
                        DoubleDigitManager.this.mCallBack.singleDigitFinal(DoubleDigitManager.this.intermediateDigit.intValue());
                        DoubleDigitManager.this.intermediateDigit = null;
                    }
                }
            }, this.timeoutInMillis);
            if (this.mCallBack.singleDigitIntermediate(i2)) {
                return;
            }
            this.intermediateDigit = null;
            this.mCallBack.singleDigitFinal(i2);
        }
    }
}
