package android.view;

import android.os.Handler;
import com.android.internal.util.GrowingArrayUtils;

/* JADX INFO: loaded from: classes2.dex */
public class HandlerActionQueue {
    private HandlerAction[] mActions;
    private int mCount;

    public static class HandlerAction {
        final Runnable action;
        final long delay;

        public HandlerAction(Runnable runnable, long j2) {
            this.action = runnable;
            this.delay = j2;
        }

        public boolean matches(Runnable runnable) {
            Runnable runnable2;
            return (runnable == null && this.action == null) || ((runnable2 = this.action) != null && runnable2.equals(runnable));
        }
    }

    public void executeActions(Handler handler) {
        synchronized (this) {
            HandlerAction[] handlerActionArr = this.mActions;
            int i2 = this.mCount;
            for (int i3 = 0; i3 < i2; i3++) {
                HandlerAction handlerAction = handlerActionArr[i3];
                handler.postDelayed(handlerAction.action, handlerAction.delay);
            }
            this.mActions = null;
            this.mCount = 0;
        }
    }

    public long getDelay(int i2) {
        if (i2 < this.mCount) {
            return this.mActions[i2].delay;
        }
        throw new IndexOutOfBoundsException();
    }

    public Runnable getRunnable(int i2) {
        if (i2 < this.mCount) {
            return this.mActions[i2].action;
        }
        throw new IndexOutOfBoundsException();
    }

    public void post(Runnable runnable) {
        postDelayed(runnable, 0L);
    }

    public void postDelayed(Runnable runnable, long j2) {
        HandlerAction handlerAction = new HandlerAction(runnable, j2);
        synchronized (this) {
            if (this.mActions == null) {
                this.mActions = new HandlerAction[4];
            }
            this.mActions = (HandlerAction[]) GrowingArrayUtils.append(this.mActions, this.mCount, handlerAction);
            this.mCount++;
        }
    }

    public void removeCallbacks(Runnable runnable) {
        synchronized (this) {
            int i2 = this.mCount;
            HandlerAction[] handlerActionArr = this.mActions;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                if (!handlerActionArr[i4].matches(runnable)) {
                    if (i3 != i4) {
                        handlerActionArr[i3] = handlerActionArr[i4];
                    }
                    i3++;
                }
            }
            this.mCount = i3;
            while (i3 < i2) {
                handlerActionArr[i3] = null;
                i3++;
            }
        }
    }

    public int size() {
        return this.mCount;
    }
}
