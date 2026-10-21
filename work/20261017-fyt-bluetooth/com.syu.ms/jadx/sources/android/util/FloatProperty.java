package android.util;

/* JADX INFO: loaded from: classes.dex */
public abstract class FloatProperty<T> extends Property<T, Float> {
    public FloatProperty(String str) {
        super(Float.class, str);
    }

    public abstract void setValue(T t2, float f2);

    @Override // android.util.Property
    public final void set(T t2, Float f2) {
        setValue(t2, f2.floatValue());
    }
}
