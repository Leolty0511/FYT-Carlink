package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class ControlNative {
    private static final ControlNative INSTANCE = new ControlNative();

    static {
        System.loadLibrary("sqlcontrol");
    }

    private ControlNative() {
    }

    public static ControlNative getInstance() {
        return INSTANCE;
    }

    public native int[] Getpid();

    public native void Setflashflag(int i2);

    public native char fytDisableMute();

    public native char fytEnableMute();

    public native int fytMuteAMP(int i2);

    public native int fytReset8288();

    public native int fytResetBluetooth();

    public native int fytResetGps(int i2);

    public native int fytSetLedColor(int i2);

    public native int fytSetVideoPosition(byte[] bArr, int i2);

    public native int fytTurnOffLcdc(int i2);

    public native int fyt_Clone_Screen_Ratio(int i2, int i3, int i4);

    public native int fyt_Get_Clone_Ratio(int[] iArr);

    public native int fyt_Onoff_Dac(int i2);

    public native int fyt_Save_Clone_Ratio(int[] iArr);

    public native int fyt_audio_status();

    public native int fyt_backtype_get();

    public native int fyt_backtype_set(int i2);

    public native int fyt_car_image_get_on();

    public native int fyt_car_image_set_on(int i2);

    public native char fyt_carback_result();

    public native int fyt_encryption_result();

    public native int fyt_get8288_NP();

    public native int fyt_get8288_signal();

    public native byte[] fyt_get_ui_time();

    public native int fyt_gpio_read(int i2);

    public native int fyt_gpio_setup(int i2, int i3, int i4);

    public native int fyt_gpio_write(int i2, int i3);

    public native int fyt_gps_sound_status_listen();

    public native char fyt_iopstatus_result();

    public native int fyt_is_carbacking();

    public native char fyt_is_sql5002();

    public native int fyt_lightoff_timeout_listen();

    public native int fyt_lightoff_timeout_set(int i2);

    public native int fyt_logo_write(byte[] bArr, int i2);

    public native char fyt_multicolour_light_read();

    public native int fyt_onoff_overlay(int i2);

    public native int fyt_set_dvd_gpio(char c2);

    public native int fyt_sound_control(char c2);

    public native int fyt_sound_spectrogram_close(int i2);

    public native int fyt_sound_spectrogram_open();

    public native int fyt_sound_spectrogram_read(int i2);

    public native int fyt_sound_spectrogram_write(int i2, int i3);

    public native int fyt_update_clear();

    public native int fyt_update_get();

    public native byte[] fyt_vehicle_read();

    public native int fyt_vehicle_write(byte[] bArr, int i2);
}
