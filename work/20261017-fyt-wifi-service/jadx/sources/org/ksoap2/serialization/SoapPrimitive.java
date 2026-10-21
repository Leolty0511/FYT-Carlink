package org.ksoap2.serialization;

/* JADX INFO: loaded from: classes.dex */
public class SoapPrimitive extends AttributeContainer {
    protected String name;
    protected String namespace;
    protected Object value;
    public static final Object NullSkip = new Object();
    public static final Object NullNilElement = new Object();

    public SoapPrimitive(String namespace, String name, Object value) {
        this.namespace = namespace;
        this.name = name;
        this.value = value;
    }

    public boolean equals(Object o) {
        String str;
        Object obj;
        if (!(o instanceof SoapPrimitive)) {
            return false;
        }
        SoapPrimitive p = (SoapPrimitive) o;
        boolean varsEqual = this.name.equals(p.name) && ((str = this.namespace) != null ? str.equals(p.namespace) : p.namespace == null) && ((obj = this.value) != null ? obj.equals(p.value) : p.value == null);
        return varsEqual && attributesAreEqual(p);
    }

    public int hashCode() {
        int iHashCode = this.name.hashCode();
        String str = this.namespace;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        Object obj = this.value;
        if (obj != null) {
            return obj.toString();
        }
        return null;
    }

    public String getNamespace() {
        return this.namespace;
    }

    public String getName() {
        return this.name;
    }

    public Object getValue() {
        return this.value;
    }
}
