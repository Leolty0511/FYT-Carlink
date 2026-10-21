package android.content.res;

import android.content.Context;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class CompatResources extends Resources {
    private WeakReference<Context> mContext;

    public CompatResources(ClassLoader classLoader) {
        super(classLoader);
        this.mContext = new WeakReference<>(null);
    }

    private Resources.Theme getTheme() {
        Context context = this.mContext.get();
        if (context != null) {
            return context.getTheme();
        }
        return null;
    }

    @Override // android.content.res.Resources
    public int getColor(int i2) {
        return getColor(i2, getTheme());
    }

    @Override // android.content.res.Resources
    public ColorStateList getColorStateList(int i2) {
        return getColorStateList(i2, getTheme());
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i2) {
        return getDrawable(i2, getTheme());
    }

    @Override // android.content.res.Resources
    public Drawable getDrawableForDensity(int i2, int i3) {
        return getDrawableForDensity(i2, i3, getTheme());
    }

    public void setContext(Context context) {
        this.mContext = new WeakReference<>(context);
    }
}
