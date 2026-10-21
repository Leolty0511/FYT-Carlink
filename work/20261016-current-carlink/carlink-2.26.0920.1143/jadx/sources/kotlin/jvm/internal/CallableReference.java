package kotlin.jvm.internal;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.reflect.KVisibility;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CallableReference implements d0.b, Serializable {
    public static final Object NO_RECEIVER = NoReceiver.f1002b;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient d0.b reflected;
    private final String signature;

    public static class NoReceiver implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final NoReceiver f1002b = new NoReceiver();

        private Object readResolve() {
            return f1002b;
        }
    }

    public CallableReference(Object obj, Class cls, String str, String str2, boolean z2) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z2;
    }

    @Override // d0.b
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // d0.b
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public d0.b compute() {
        d0.b bVar = this.reflected;
        if (bVar != null) {
            return bVar;
        }
        d0.b bVarComputeReflected = computeReflected();
        this.reflected = bVarComputeReflected;
        return bVarComputeReflected;
    }

    public abstract d0.b computeReflected();

    @Override // d0.a
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        return this.name;
    }

    public d0.d getOwner() {
        d0.d cVar;
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (this.isTopLevel) {
            g.f1006a.getClass();
            cVar = new f(cls);
        } else {
            g.f1006a.getClass();
            cVar = new c(cls);
        }
        return cVar;
    }

    @Override // d0.b
    public List<Object> getParameters() {
        return getReflected().getParameters();
    }

    public abstract d0.b getReflected();

    @Override // d0.b
    public d0.f getReturnType() {
        getReflected().getReturnType();
        return null;
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // d0.b
    public List<Object> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // d0.b
    public KVisibility getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // d0.b
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // d0.b
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // d0.b
    public boolean isOpen() {
        return getReflected().isOpen();
    }
}
