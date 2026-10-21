package android.filterfw.core;

/* JADX INFO: loaded from: classes.dex */
class GLFrameTimer {
    private static StopWatchMap mTimer;

    public static StopWatchMap get() {
        if (mTimer == null) {
            mTimer = new StopWatchMap();
        }
        return mTimer;
    }
}
