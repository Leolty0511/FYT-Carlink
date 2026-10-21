package android.util;

/* JADX INFO: loaded from: classes.dex */
public abstract class IntProperty<T> extends Property<T, Integer> {
    public IntProperty(String str) {
        super(Integer.class, str);
    }

    public abstract void setValue(T t2, int i2);

    @Override // android.util.Property
    public final void set(T t2, Integer num) {
        setValue(t2, num.intValue());
    }
}
