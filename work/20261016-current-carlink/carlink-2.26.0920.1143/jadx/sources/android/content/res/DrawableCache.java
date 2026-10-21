package android.content.res;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
class DrawableCache extends ThemedResourceCache<Drawable.ConstantState> {
    public Drawable getInstance(long j2, Resources resources, Resources.Theme theme) {
        Drawable.ConstantState constantState = get(j2, theme);
        if (constantState != null) {
            return constantState.newDrawable(resources, theme);
        }
        return null;
    }

    @Override // android.content.res.ThemedResourceCache
    public boolean shouldInvalidateEntry(Drawable.ConstantState constantState, int i2) {
        return Configuration.needNewResources(i2, constantState.getChangingConfigurations());
    }
}
