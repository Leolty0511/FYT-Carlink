package kotlin.jvm.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class h {
    public static String a(e eVar) {
        String string = eVar.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }
}
