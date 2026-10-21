package android.os;

/* JADX INFO: loaded from: classes.dex */
public abstract class BatteryManagerInternal {
    public abstract int getBatteryLevel();

    public abstract boolean getBatteryLevelLow();

    public abstract int getInvalidCharger();

    public abstract int getPlugType();

    public abstract boolean isPowered(int i2);
}
