package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class FuncJni {
    private static int sFD = -1;

    public static int readSpectGram() {
        if (sFD == -1) {
            sFD = ControlNative.getInstance().fyt_sound_spectrogram_open();
        }
        if (sFD != -1) {
            return ControlNative.getInstance().fyt_sound_spectrogram_read(sFD);
        }
        return 1;
    }
}
