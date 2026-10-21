package android.util;

import android.os.SystemClock;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class TimingLogger {
    private boolean mDisabled;
    private String mLabel;
    public ArrayList<String> mSplitLabels;
    public ArrayList<Long> mSplits;
    private String mTag;

    public TimingLogger(String str, String str2) {
        reset(str, str2);
    }

    public void addSplit(String str) {
        if (this.mDisabled) {
            return;
        }
        this.mSplits.add(Long.valueOf(SystemClock.elapsedRealtime()));
        this.mSplitLabels.add(str);
    }

    public void dumpToLog() {
        if (this.mDisabled) {
            return;
        }
        Log.d(this.mTag, this.mLabel + ": begin");
        long jLongValue = this.mSplits.get(0).longValue();
        long jLongValue2 = jLongValue;
        for (int i2 = 1; i2 < this.mSplits.size(); i2++) {
            jLongValue2 = this.mSplits.get(i2).longValue();
            String str = this.mSplitLabels.get(i2);
            long jLongValue3 = this.mSplits.get(i2 - 1).longValue();
            Log.d(this.mTag, this.mLabel + ":      " + (jLongValue2 - jLongValue3) + " ms, " + str);
        }
        Log.d(this.mTag, this.mLabel + ": end, " + (jLongValue2 - jLongValue) + " ms");
    }

    public void reset(String str, String str2) {
        this.mTag = str;
        this.mLabel = str2;
        reset();
    }

    public void reset() {
        boolean z2 = !Log.isLoggable(this.mTag, 2);
        this.mDisabled = z2;
        if (z2) {
            return;
        }
        ArrayList<Long> arrayList = this.mSplits;
        if (arrayList == null) {
            this.mSplits = new ArrayList<>();
            this.mSplitLabels = new ArrayList<>();
        } else {
            arrayList.clear();
            this.mSplitLabels.clear();
        }
        addSplit(null);
    }
}
