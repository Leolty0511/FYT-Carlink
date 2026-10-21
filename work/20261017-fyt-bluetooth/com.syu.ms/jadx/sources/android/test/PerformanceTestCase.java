package android.test;

/* JADX INFO: loaded from: classes.dex */
public interface PerformanceTestCase {

    public interface Intermediates {
        void addIntermediate(String str);

        void addIntermediate(String str, long j2);

        void finishTiming(boolean z2);

        void setInternalIterations(int i2);

        void startTiming(boolean z2);
    }

    boolean isPerformanceOnly();

    int startPerformance(Intermediates intermediates);
}
