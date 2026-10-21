package n0;

import module.sound.AudioDevice;
import module.sound.C32107;

/* JADX INFO: loaded from: classes2.dex */
public class r3 extends d3 {
    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        String strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        if (audioDevice instanceof C32107) {
            if (o1.s0.j(strO, "4") || o1.s0.j(strO, "6") || o1.s0.j(strO, "7")) {
                audioDevice.L0(6, C32107.CHANNEL.DVD.f15215a);
                C32107.CHANNEL channel = C32107.CHANNEL.TV;
                audioDevice.L0(2, channel.f15215a);
                audioDevice.L0(3, channel.f15215a);
                return;
            }
            if (o1.s0.j(strO, "0") || o1.s0.j(strO, "8")) {
                audioDevice.L0(2, C32107.CHANNEL.AUX.f15215a);
            }
        }
    }

    @Override // n0.d3, n0.a, n0.c4
    public void L3() {
        super.L3();
        j4.f16465c = "CMEI";
        m1.a.f13515d = 307;
    }
}
