package android.app.backup;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.drawable.Icon;
import android.view.DisplayCutout;
import android.view.WindowInsetsAnimation;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ void C() {
    }

    public static /* synthetic */ Notification.BubbleMetadata.Builder f(PendingIntent pendingIntent, Icon icon) {
        return new Notification.BubbleMetadata.Builder(pendingIntent, icon);
    }

    public static /* synthetic */ Notification.BubbleMetadata.Builder g(String str) {
        return new Notification.BubbleMetadata.Builder(str);
    }

    public static /* synthetic */ DisplayCutout k(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
        return new DisplayCutout(insets, rect, rect2, rect3, rect4, insets2);
    }

    public static /* synthetic */ WindowInsetsAnimation.Bounds l(Insets insets, Insets insets2) {
        return new WindowInsetsAnimation.Bounds(insets, insets2);
    }

    public static /* synthetic */ WindowInsetsAnimation m(int i2, Interpolator interpolator, long j2) {
        return new WindowInsetsAnimation(i2, interpolator, j2);
    }

    public static /* bridge */ /* synthetic */ WindowInsetsAnimation n(Object obj) {
        return (WindowInsetsAnimation) obj;
    }

    public static /* synthetic */ void s() {
    }
}
