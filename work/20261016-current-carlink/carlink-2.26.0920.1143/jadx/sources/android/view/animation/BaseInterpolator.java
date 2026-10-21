package android.view.animation;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseInterpolator implements Interpolator {
    private int mChangingConfiguration;

    public int getChangingConfiguration() {
        return this.mChangingConfiguration;
    }

    public void setChangingConfiguration(int i2) {
        this.mChangingConfiguration = i2;
    }
}
