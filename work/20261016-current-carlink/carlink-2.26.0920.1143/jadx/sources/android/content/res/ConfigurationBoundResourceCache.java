package android.content.res;

/* JADX INFO: loaded from: classes.dex */
public class ConfigurationBoundResourceCache<T> extends ThemedResourceCache<ConstantState<T>> {
    public T getInstance(long j2, Resources resources, Resources.Theme theme) {
        ConstantState constantState = (ConstantState) get(j2, theme);
        if (constantState != null) {
            return (T) constantState.newInstance2(resources, theme);
        }
        return null;
    }

    @Override // android.content.res.ThemedResourceCache
    public /* bridge */ /* synthetic */ void onConfigurationChange(int i2) {
        super.onConfigurationChange(i2);
    }

    @Override // android.content.res.ThemedResourceCache
    public boolean shouldInvalidateEntry(ConstantState<T> constantState, int i2) {
        return Configuration.needNewResources(i2, constantState.getChangingConfigurations());
    }
}
