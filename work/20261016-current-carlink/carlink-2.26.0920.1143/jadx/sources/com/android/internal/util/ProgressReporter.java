package com.android.internal.util;

import android.content.Intent;
import android.os.Bundle;
import android.os.IProgressListener;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.MathUtils;
import com.android.internal.annotations.GuardedBy;

/* JADX INFO: loaded from: classes3.dex */
public class ProgressReporter {
    private static final int STATE_FINISHED = 2;
    private static final int STATE_INIT = 0;
    private static final int STATE_STARTED = 1;
    private final int mId;

    @GuardedBy("this")
    private final RemoteCallbackList<IProgressListener> mListeners = new RemoteCallbackList<>();

    @GuardedBy("this")
    private int mState = 0;

    @GuardedBy("this")
    private int mProgress = 0;

    @GuardedBy("this")
    private Bundle mExtras = new Bundle();

    @GuardedBy("this")
    private int[] mSegmentRange = {0, 100};

    public ProgressReporter(int i2) {
        this.mId = i2;
    }

    private void notifyFinished(int i2, Bundle bundle) {
        for (int iBeginBroadcast = this.mListeners.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IProgressListener) this.mListeners.getBroadcastItem(iBeginBroadcast)).onFinished(i2, bundle);
            } catch (RemoteException unused) {
            }
        }
        this.mListeners.finishBroadcast();
    }

    private void notifyProgress(int i2, int i3, Bundle bundle) {
        for (int iBeginBroadcast = this.mListeners.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IProgressListener) this.mListeners.getBroadcastItem(iBeginBroadcast)).onProgress(i2, i3, bundle);
            } catch (RemoteException unused) {
            }
        }
        this.mListeners.finishBroadcast();
    }

    private void notifyStarted(int i2, Bundle bundle) {
        for (int iBeginBroadcast = this.mListeners.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IProgressListener) this.mListeners.getBroadcastItem(iBeginBroadcast)).onStarted(i2, bundle);
            } catch (RemoteException unused) {
            }
        }
        this.mListeners.finishBroadcast();
    }

    public void addListener(IProgressListener iProgressListener) {
        if (iProgressListener == null) {
            return;
        }
        synchronized (this) {
            this.mListeners.register(iProgressListener);
            int i2 = this.mState;
            try {
                if (i2 == 1) {
                    iProgressListener.onStarted(this.mId, null);
                    iProgressListener.onProgress(this.mId, this.mProgress, this.mExtras);
                } else if (i2 == 2) {
                    iProgressListener.onFinished(this.mId, null);
                }
            } catch (RemoteException unused) {
            }
        }
    }

    public void endSegment(int[] iArr) {
        synchronized (this) {
            int[] iArr2 = this.mSegmentRange;
            this.mProgress = iArr2[0] + iArr2[1];
            this.mSegmentRange = iArr;
        }
    }

    public void finish() {
        synchronized (this) {
            this.mState = 2;
            notifyFinished(this.mId, null);
            this.mListeners.kill();
        }
    }

    public int getProgress() {
        return this.mProgress;
    }

    public int[] getSegmentRange() {
        return this.mSegmentRange;
    }

    public void setProgress(int i2) {
        setProgress(i2, 100, null);
    }

    public void start() {
        synchronized (this) {
            this.mState = 1;
            notifyStarted(this.mId, null);
            notifyProgress(this.mId, this.mProgress, this.mExtras);
        }
    }

    public int[] startSegment(int i2) {
        int[] iArr;
        synchronized (this) {
            iArr = this.mSegmentRange;
            this.mSegmentRange = new int[]{this.mProgress, (i2 * iArr[1]) / 100};
        }
        return iArr;
    }

    public void setProgress(int i2, CharSequence charSequence) {
        setProgress(i2, 100, charSequence);
    }

    public void setProgress(int i2, int i3) {
        setProgress(i2, i3, null);
    }

    public void setProgress(int i2, int i3, CharSequence charSequence) {
        synchronized (this) {
            if (this.mState == 1) {
                int[] iArr = this.mSegmentRange;
                int i4 = iArr[0];
                int i5 = iArr[1];
                this.mProgress = i4 + MathUtils.constrain((i2 * i5) / i3, 0, i5);
                if (charSequence != null) {
                    this.mExtras.putCharSequence(Intent.EXTRA_TITLE, charSequence);
                }
                notifyProgress(this.mId, this.mProgress, this.mExtras);
            } else {
                throw new IllegalStateException("Must be started to change progress");
            }
        }
    }
}
