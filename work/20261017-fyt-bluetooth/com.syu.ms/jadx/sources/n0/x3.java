package n0;

import android.os.Process;
import android.util.Log;
import chip.Chip;
import com.syu.jni.ToolsJni;
import plugins.EasyConn;

/* JADX INFO: loaded from: classes2.dex */
public class x3 extends a {
    @Override // n0.a, n0.c4
    public void L3() {
        super.L3();
        j4.f16465c = "MTA";
        m1.a.f13515d = 313;
        EasyConn.Z().d0(true);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // n0.c4
    public void f3(boolean z2) {
        g.g gVar = g.e.f2254a;
        if (gVar instanceof Chip) {
            Chip chip2 = (Chip) gVar;
            if (this.f16347l != z2) {
                Log.e("AA", "===========>>>  isAutoFanCtrl : " + this.f16346k + " last isFanEnable : " + this.f16347l + " TO " + z2);
                this.f16347l = z2;
                u0.d.p0(z2 ? 1 : 0);
                this.f16340e.q(Process.VPN_UID, this.f16347l ? 1 : 0);
                this.f16340e.e(Process.VPN_UID);
            }
            if (!chip2.I()) {
                ToolsJni.cmd_31_fan_en(z2 ? 1 : 0);
                return;
            }
            int[] iArr = new int[3];
            iArr[0] = 1;
            iArr[1] = 0;
            iArr[2] = z2 ? 87 : 86;
            z.k.s(iArr);
        }
    }
}
