package android.view;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
final class FrameInfo {
    private static final int ANIMATION_START = 6;
    private static final int DRAW_START = 8;
    private static final int FLAGS = 0;
    public static final long FLAG_WINDOW_LAYOUT_CHANGED = 1;
    private static final int HANDLE_INPUT_START = 5;
    private static final int INTENDED_VSYNC = 1;
    private static final int NEWEST_INPUT_EVENT = 4;
    private static final int OLDEST_INPUT_EVENT = 3;
    private static final int PERFORM_TRAVERSALS_START = 7;
    private static final int VSYNC = 2;
    long[] mFrameInfo = new long[9];

    @Retention(RetentionPolicy.SOURCE)
    public @interface FrameInfoFlags {
    }

    public void addFlags(long j2) {
        long[] jArr = this.mFrameInfo;
        jArr[0] = j2 | jArr[0];
    }

    public void markAnimationsStart() {
        this.mFrameInfo[6] = System.nanoTime();
    }

    public void markDrawStart() {
        this.mFrameInfo[8] = System.nanoTime();
    }

    public void markInputHandlingStart() {
        this.mFrameInfo[5] = System.nanoTime();
    }

    public void markPerformTraversalsStart() {
        this.mFrameInfo[7] = System.nanoTime();
    }

    public void setVsync(long j2, long j3) {
        long[] jArr = this.mFrameInfo;
        jArr[1] = j2;
        jArr[2] = j3;
        jArr[3] = Long.MAX_VALUE;
        jArr[4] = 0;
        jArr[0] = 0;
    }

    public void updateInputEventTime(long j2, long j3) {
        long[] jArr = this.mFrameInfo;
        if (j3 < jArr[3]) {
            jArr[3] = j3;
        }
        if (j2 > jArr[4]) {
            jArr[4] = j2;
        }
    }
}
