package k0;

import e0.j;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g0.f f990a;

    /* JADX WARN: Code duplicated, block: B:32:0x0071  */
    /* JADX WARN: Code duplicated, block: B:34:0x0074 A[Catch: all -> 0x007c, TRY_ENTER, TryCatch #2 {, blocks: (B:9:0x0011, B:13:0x002b, B:25:0x0062, B:34:0x0074, B:35:0x007b, B:30:0x006c, B:16:0x003b, B:19:0x0046, B:20:0x004d, B:23:0x005c, B:12:0x0025, B:28:0x0067), top: B:42:0x0011, inners: #1 }] */
    static {
        String property;
        Object next;
        int i2 = h.f991a;
        g0.f fVarCreateDispatcher = null;
        try {
            property = System.getProperty("kotlinx.coroutines.fast.service.loader");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property != null) {
            Boolean.parseBoolean(property);
        }
        Iterator itK = android.renderscript.a.k();
        t.b.h(itK, "<this>");
        j jVar = new j(itK, 1);
        List listI = kotlin.sequences.b.I(jVar instanceof e0.a ? jVar : new e0.a(jVar));
        Iterator it = listI.iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                int loadPriority = ((e) next).getLoadPriority();
                do {
                    Object next2 = it.next();
                    int loadPriority2 = ((e) next2).getLoadPriority();
                    if (loadPriority < loadPriority2) {
                        next = next2;
                        loadPriority = loadPriority2;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        e eVar = (e) next;
        if (eVar == null) {
            if (fVarCreateDispatcher != null) {
                throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
            }
            f990a = fVarCreateDispatcher;
            return;
        } else {
            try {
                fVarCreateDispatcher = eVar.createDispatcher(listI);
            } catch (Throwable unused2) {
                eVar.hintOnError();
            }
            if (fVarCreateDispatcher != null) {
                throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
            }
            f990a = fVarCreateDispatcher;
            return;
        }
        throw th;
    }
}
