package android.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;

/* JADX INFO: loaded from: classes.dex */
public class ContextThemeWrapper extends ContextWrapper {
    private Context mBase;
    private LayoutInflater mInflater;
    private Configuration mOverrideConfiguration;
    private Resources mResources;
    private Resources.Theme mTheme;
    private int mThemeResource;

    public ContextThemeWrapper() {
        super(null);
    }

    private void initializeTheme() {
        boolean z2 = this.mTheme == null;
        if (z2) {
            this.mTheme = getResources().newTheme();
            Resources.Theme theme = this.mBase.getTheme();
            if (theme != null) {
                this.mTheme.setTo(theme);
            }
        }
        onApplyThemeResource(this.mTheme, this.mThemeResource, z2);
    }

    public void applyOverrideConfiguration(Configuration configuration) {
        if (this.mResources != null) {
            throw new IllegalStateException("getResources() has already been called");
        }
        if (this.mOverrideConfiguration != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.mOverrideConfiguration = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        this.mBase = context;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = this.mResources;
        if (resources != null) {
            return resources;
        }
        Configuration configuration = this.mOverrideConfiguration;
        if (configuration == null) {
            Resources resources2 = super.getResources();
            this.mResources = resources2;
            return resources2;
        }
        Resources resources3 = createConfigurationContext(configuration).getResources();
        this.mResources = resources3;
        return resources3;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!Context.LAYOUT_INFLATER_SERVICE.equals(str)) {
            return this.mBase.getSystemService(str);
        }
        if (this.mInflater == null) {
            this.mInflater = LayoutInflater.from(this.mBase).cloneInContext(this);
        }
        return this.mInflater;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.mTheme;
        if (theme != null) {
            return theme;
        }
        this.mThemeResource = Resources.selectDefaultTheme(this.mThemeResource, getApplicationInfo().targetSdkVersion);
        initializeTheme();
        return this.mTheme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int getThemeResId() {
        return this.mThemeResource;
    }

    public void onApplyThemeResource(Resources.Theme theme, int i2, boolean z2) {
        theme.applyStyle(i2, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        this.mThemeResource = i2;
        initializeTheme();
    }

    public ContextThemeWrapper(Context context, int i2) {
        super(context);
        this.mBase = context;
        this.mThemeResource = i2;
    }
}
