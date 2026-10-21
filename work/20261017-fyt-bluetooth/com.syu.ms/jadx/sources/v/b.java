package v;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.view.DragEvent;
import android.view.IWindow;
import android.view.IWindowSession;

/* JADX INFO: loaded from: classes.dex */
public class b extends IWindow.Stub {
    public int mSeq;
    private IWindowSession mSession;

    @Override // android.view.IWindow
    public void closeSystemDialogs(String str) {
    }

    public void dispatchAppVisibility(boolean z2) {
    }

    @Override // android.view.IWindow
    public void dispatchDragEvent(DragEvent dragEvent) {
    }

    public void dispatchGetNewSurface() {
    }

    @Override // android.view.IWindow
    public void dispatchScreenState(boolean z2) {
    }

    @Override // android.view.IWindow
    public void dispatchSystemUiVisibilityChanged(int i2, int i3, int i4, int i5) {
        this.mSeq = i2;
    }

    public void dispatchWallpaperCommand(String str, int i2, int i3, int i4, Bundle bundle, boolean z2) {
        if (z2) {
            try {
                this.mSession.wallpaperCommandComplete(asBinder(), null);
            } catch (RemoteException unused) {
            }
        }
    }

    public void dispatchWallpaperOffsets(float f2, float f3, float f4, float f5, boolean z2) {
        if (z2) {
            try {
                this.mSession.wallpaperOffsetsComplete(asBinder());
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.view.IWindow
    public void doneAnimating() {
    }

    public void executeCommand(String str, String str2, ParcelFileDescriptor parcelFileDescriptor) {
    }

    public void moved(int i2, int i3) {
    }

    public void resized(Rect rect, Rect rect2, Rect rect3, Rect rect4, boolean z2, Configuration configuration) {
        if (z2) {
            try {
                this.mSession.finishDrawing(this);
            } catch (RemoteException unused) {
            }
        }
    }

    public void setSession(IWindowSession iWindowSession) {
        this.mSession = iWindowSession;
    }

    public void windowFocusChanged(boolean z2, boolean z3) {
    }
}
