package android.view;

/* JADX INFO: loaded from: classes.dex */
public final class WindowManagerImpl implements WindowManager {
    private final Display mDisplay;
    private final WindowManagerGlobal mGlobal;
    private final Window mParentWindow;

    public WindowManagerImpl(Display display) {
        this(display, null);
    }

    @Override // android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mGlobal.addView(view, layoutParams, this.mDisplay, this.mParentWindow);
    }

    public WindowManagerImpl createLocalWindowManager(Window window) {
        return new WindowManagerImpl(this.mDisplay, window);
    }

    public WindowManagerImpl createPresentationWindowManager(Display display) {
        return new WindowManagerImpl(display, this.mParentWindow);
    }

    @Override // android.view.WindowManager
    public Display getDefaultDisplay() {
        return this.mDisplay;
    }

    @Override // android.view.ViewManager
    public void removeView(View view) {
        this.mGlobal.removeView(view, false);
    }

    @Override // android.view.WindowManager
    public void removeViewImmediate(View view) {
        this.mGlobal.removeView(view, true);
    }

    @Override // android.view.ViewManager
    public void updateViewLayout(View view, ViewGroup.LayoutParams layoutParams) {
        this.mGlobal.updateViewLayout(view, layoutParams);
    }

    private WindowManagerImpl(Display display, Window window) {
        this.mGlobal = WindowManagerGlobal.getInstance();
        this.mDisplay = display;
        this.mParentWindow = window;
    }
}
