package base;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;
import o1.s0;

/* JADX INFO: loaded from: classes.dex */
public class Configure {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Properties f283a = new Properties();

    public enum Key {
        DVD_MODULE("dvd_module"),
        RADIO_MODULE("radio_module"),
        BLUETOOTH_MODULE("bt_module"),
        AUDIO_MODULE("audio_module"),
        IMAGE_MODULE("image_module"),
        KEEP_SERVICES("keep_services"),
        DISABLE_PACKAGES("disable_packages");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f292a;

        Key(String str) {
            this.f292a = str;
        }
    }

    public enum Property {
        TPMS_SERIAL_ENABLE("persist.lsec.tpms_enable"),
        SECONDARY_DISPLAY_BRIGHTNESS("persist.lsec.sec_display.brightness"),
        CHIP8918L_LVDS_DUAL_PORT("persist.lsec.c8918L.dual_port"),
        C3031_ECNR_DISABLE("persist.blinkbt.qcc3031.ecnr.disable"),
        BACKLIGHT_LINKAGE("persist.lsec.backlight_linkage"),
        CHIP2850_INIT_FORMAT("persist.lsec.c2850.def_format"),
        DISABLE_APPS("persist.lsec.disable_apps"),
        POWER_KEY_EVENT("persist.lsec.power_event"),
        CHIP8918_COMP_ADAPTIVE("persist.lsec.chip8918_adaptive"),
        HOST_BACKCAR_ENABLE("persist.lsec.host_backcar_enable"),
        PANEL_LIGHT_ALWAYS_ON("persist.lsec.plight_always_on"),
        BLOCK_GOOGLE_MAP("persist.lsec.block_google_map"),
        BLOCK_YOUTUBE("persist.lsec.block_youtube"),
        BLOCK_VIDEO_APPS("persist.lsec.block_videos"),
        ROTATION_BY_HAND("persist.fyt.rotaionbyhand"),
        MODULE_DEBUG_PREFIX("persist.lsec.debug_"),
        BOOT_IGNORE_CAR_UI("sys.lsec.boot_ignore_carui"),
        RADIO_LOC_FM_SENS_OFFSET("sys.lsec.fm_sens_offset"),
        CTRL_UI_MODE("sys.lsec.ctrl_ui_mode"),
        MD_SHARE_VOICE_KEY("sys.lsec.md_share_voice"),
        MD_SHARE_VOICE_ACTION_KEY("sys.lsec.md_voice_with_link"),
        S869_AMBIENT_ARM_SWITCH("sys.lsec.ambient_light_arm"),
        S869_AUX_IN_BACK("sys.lsec.aux_in_back"),
        PHONE_LINK_TYPE("zj.phonelink.type"),
        AUDIO_STREAM_MAX_LIMIT("sys.lsec.audio_stream_max_limit_"),
        SLEEP_WHEN_ACC_OFF("sys.lsec.sleep_when_acc_off"),
        CHIP_6911C_NO_NEED_RESET("sys.lsec.6911c_no_reset"),
        SYSTEM_VOLUME_DUCK("sys.lsec.volume_duck"),
        EQ_CONFIG("sys.lsec.eqconfig"),
        CHIP6854_INIT_FORMAT("persist.lsec.c6854.ref_format"),
        GD_NAVI_CONTROL("persist.lsec.gaode.ctrl"),
        CHIP9963_INIT_FORMAT("persist.lsec.c9963.ref_format"),
        VOLUME_BALANCE_OFFSET("sys.lsec.volume_balance_offset_"),
        CLEANUP_WHEN_SLEEP("persist.lsec.cleanup_when_sleep"),
        CUSTOM_BOOT_APP("sys.lsec.boot_app"),
        MAIN_VOLUME_OFFSET("sys.lsec.volume_offset"),
        MAIN_VOLUME_OFFSET_UI("sys.lsec.vol_ui_offset"),
        APPID_IGNORE("persist.lsec.appid_ignore"),
        IGNORE_MUTEX("persist.lsec.ignore_mutex"),
        EASY_CONN_MIX("persist.lsec.easy_conn_mix"),
        MS_HANDLE_RADIO("persist.lsec.radio.ms_handler"),
        DEBUG_MCU("persist.lsec.debug_mcu"),
        DEBUG_CALLING_PID("sys.lsec.debug"),
        EQ_MULTI_CUSTOME("sys.lsec.eq_multi_custome"),
        BLUETOOTH_TYPE("sys.fyt.bluetooth_type"),
        FAN_CFG("sys.lsec.fan_cfg"),
        BUTTON_SOUND_EFFECT_HANDLE("sys.lsec.button_effect_enable"),
        BUTTON_SOUND_EFFECT_CUSTOM("sys.lsec.button_effect_custom"),
        HAND_BREAK_CTL_THIRD_VIDEO("sys.lsec.hb_ctl_third_video"),
        REAL_PLATFORM("ro.fyt.realplatform"),
        DUAL_MIPI("ro.fyt.dual_mipi"),
        CUSTOMER_PLATFORM("sys.lesc.customer_platform"),
        CUSTOMER_PLATFORM_P("persist.lesc.customer_platform"),
        CUSTOM_APP("sys.lesc.custom_app");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f322a;

        Property(String str) {
            this.f322a = str;
        }

        public boolean b(boolean z2) {
            return s0.l(this.f322a, z2);
        }

        public boolean c(String str, boolean z2) {
            return s0.l(this.f322a + str, z2);
        }

        public int d(int i2) {
            return s0.m(this.f322a, i2);
        }

        public int e(int i2, int i3) {
            return s0.m(this.f322a + i2, i3);
        }

        public int f(String str, int i2) {
            return s0.m(this.f322a + str, i2);
        }

        public void g(String str) {
            s0.F(this.f322a, str);
        }

        public String h(String str) {
            return s0.o(this.f322a, str);
        }
    }

    public String a(String str, String str2) {
        return this.f283a.getProperty(str, str2);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0020 A[Catch: IOException -> 0x002b, PHI: r0
  0x0020: PHI (r0v4 java.io.FileReader) = (r0v3 java.io.FileReader), (r0v5 java.io.FileReader) binds: [B:17:0x001e, B:22:0x0028] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #5 {IOException -> 0x002b, blocks: (B:5:0x000b, B:18:0x0020), top: B:36:0x0001 }] */
    public void b(String str) throws Throwable {
        FileReader fileReader = null;
        try {
            try {
                try {
                    FileReader fileReader2 = new FileReader(str);
                    try {
                        this.f283a.load(fileReader2);
                        fileReader2.close();
                    } catch (FileNotFoundException e2) {
                        e = e2;
                        fileReader = fileReader2;
                        e.printStackTrace();
                        if (fileReader != null) {
                            fileReader.close();
                        }
                    } catch (Exception e3) {
                        e = e3;
                        fileReader = fileReader2;
                        e.printStackTrace();
                        if (fileReader != null) {
                            fileReader.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileReader = fileReader2;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e4) {
                e = e4;
            } catch (Exception e5) {
                e = e5;
            }
        } catch (IOException unused2) {
        }
    }
}
