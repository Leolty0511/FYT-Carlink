package n0;

import android.bluetooth.BluetoothClass;

/* JADX INFO: loaded from: classes2.dex */
public class a3 extends a {
    @Override // n0.c4
    public void I3(e1.c cVar) {
        super.I3(cVar);
        int iA = g.e.a();
        if ((cVar instanceof e1.e) && iA == 7) {
            cVar.v(5, 4);
        }
    }

    @Override // n0.a, n0.c4
    public void L3() {
        j4.f16465c = "ZHIF";
        m1.a.f13515d = BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA;
    }
}
