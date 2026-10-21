package com.android.internal.view;

import android.view.InputQueue;
import android.view.SurfaceHolder;

/* JADX INFO: loaded from: classes3.dex */
public interface RootViewSurfaceTaker {
    void onRootViewScrollYChanged(int i2);

    void setSurfaceFormat(int i2);

    void setSurfaceKeepScreenOn(boolean z2);

    void setSurfaceType(int i2);

    InputQueue.Callback willYouTakeTheInputQueue();

    SurfaceHolder.Callback2 willYouTakeTheSurface();
}
