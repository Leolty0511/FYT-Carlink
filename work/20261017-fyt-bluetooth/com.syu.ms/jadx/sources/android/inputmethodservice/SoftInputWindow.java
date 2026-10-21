package android.inputmethodservice;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Rect;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
class SoftInputWindow extends Dialog {
    private final Rect mBounds;
    public final KeyEvent.DispatcherState mDispatcherState;

    public SoftInputWindow(Context context, int i2, KeyEvent.DispatcherState dispatcherState) {
        super(context, i2);
        this.mBounds = new Rect();
        this.mDispatcherState = dispatcherState;
        initDockWindow();
    }

    private void initDockWindow() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.type = WindowManager.LayoutParams.TYPE_INPUT_METHOD;
        attributes.setTitle("InputMethod");
        attributes.gravity = 80;
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        getWindow().setFlags(264, 266);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        getWindow().getDecorView().getHitRect(this.mBounds);
        Rect rect = this.mBounds;
        if (motionEvent.isWithinBoundsNoHistory(rect.left, rect.top, rect.right - 1, rect.bottom - 1)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        Rect rect2 = this.mBounds;
        MotionEvent motionEventClampNoHistory = motionEvent.clampNoHistory(rect2.left, rect2.top, rect2.right - 1, rect2.bottom - 1);
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEventClampNoHistory);
        motionEventClampNoHistory.recycle();
        return zDispatchTouchEvent;
    }

    public int getSize() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        int i2 = attributes.gravity;
        return (i2 == 48 || i2 == 80) ? attributes.height : attributes.width;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        this.mDispatcherState.reset();
    }

    public void setGravity(int i2) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        int i3 = attributes.gravity;
        boolean z2 = i3 == 48 || i3 == 80;
        attributes.gravity = i2;
        if (z2 != (i2 == 48 || i2 == 80)) {
            int i4 = attributes.width;
            attributes.width = attributes.height;
            attributes.height = i4;
            getWindow().setAttributes(attributes);
        }
    }

    public void setSize(int i2) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        int i3 = attributes.gravity;
        if (i3 == 48 || i3 == 80) {
            attributes.width = -1;
            attributes.height = i2;
        } else {
            attributes.width = i2;
            attributes.height = -1;
        }
        getWindow().setAttributes(attributes);
    }

    public void setToken(IBinder iBinder) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.token = iBinder;
        getWindow().setAttributes(attributes);
    }
}
