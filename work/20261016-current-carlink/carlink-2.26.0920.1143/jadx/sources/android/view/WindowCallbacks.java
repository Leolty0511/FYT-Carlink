package android.view;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public interface WindowCallbacks {
    public static final int RESIZE_MODE_DOCKED_DIVIDER = 1;
    public static final int RESIZE_MODE_FREEFORM = 0;
    public static final int RESIZE_MODE_INVALID = -1;

    boolean onContentDrawn(int i2, int i3, int i4, int i5);

    void onPostDraw(DisplayListCanvas displayListCanvas);

    void onRequestDraw(boolean z2);

    void onWindowDragResizeEnd();

    void onWindowDragResizeStart(Rect rect, boolean z2, Rect rect2, Rect rect3, int i2);

    void onWindowSizeIsChanging(Rect rect, boolean z2, Rect rect2, Rect rect3);
}
