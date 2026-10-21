package android.inputmethodservice;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Rect;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class SoftInputWindow extends Dialog {
    private final Rect mBounds;
    final Callback mCallback;
    final KeyEvent.DispatcherState mDispatcherState;
    final int mGravity;
    final KeyEvent.Callback mKeyEventCallback;
    final String mName;
    final boolean mTakesFocus;
    final int mWindowType;

    public interface Callback {
        void onBackPressed();
    }

    public SoftInputWindow(Context context, String str, int i2, Callback callback, KeyEvent.Callback callback2, KeyEvent.DispatcherState dispatcherState, int i3, int i4, boolean z2) {
        super(context, i2);
        this.mBounds = new Rect();
        this.mName = str;
        this.mCallback = callback;
        this.mKeyEventCallback = callback2;
        this.mDispatcherState = dispatcherState;
        this.mWindowType = i3;
        this.mGravity = i4;
        this.mTakesFocus = z2;
        initDockWindow();
    }

    private void initDockWindow() {
        int i2;
        int i3;
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.type = this.mWindowType;
        attributes.setTitle(this.mName);
        attributes.gravity = this.mGravity;
        updateWidthHeight(attributes);
        getWindow().setAttributes(attributes);
        if (this.mTakesFocus) {
            i2 = 288;
            i3 = 298;
        } else {
            i3 = 266;
            i2 = 264;
        }
        getWindow().setFlags(i2, i3);
    }

    private void updateWidthHeight(WindowManager.LayoutParams layoutParams) {
        int i2 = layoutParams.gravity;
        if (i2 == 48 || i2 == 80) {
            layoutParams.width = -1;
            layoutParams.height = -2;
        } else {
            layoutParams.width = -2;
            layoutParams.height = -1;
        }
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

    public int getGravity() {
        return getWindow().getAttributes().gravity;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onBackPressed();
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        KeyEvent.Callback callback = this.mKeyEventCallback;
        if (callback == null || !callback.onKeyDown(i2, keyEvent)) {
            return super.onKeyDown(i2, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
        KeyEvent.Callback callback = this.mKeyEventCallback;
        if (callback == null || !callback.onKeyLongPress(i2, keyEvent)) {
            return super.onKeyLongPress(i2, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent) {
        KeyEvent.Callback callback = this.mKeyEventCallback;
        if (callback == null || !callback.onKeyMultiple(i2, i3, keyEvent)) {
            return super.onKeyMultiple(i2, i3, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        KeyEvent.Callback callback = this.mKeyEventCallback;
        if (callback == null || !callback.onKeyUp(i2, keyEvent)) {
            return super.onKeyUp(i2, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        this.mDispatcherState.reset();
    }

    public void setGravity(int i2) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.gravity = i2;
        updateWidthHeight(attributes);
        getWindow().setAttributes(attributes);
    }

    public void setToken(IBinder iBinder) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.token = iBinder;
        getWindow().setAttributes(attributes);
    }
}
