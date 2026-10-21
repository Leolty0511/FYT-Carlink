.class public Lcom/syu/jni/ControlNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/syu/jni/ControlNative;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/syu/jni/ControlNative;

    invoke-direct {v0}, Lcom/syu/jni/ControlNative;-><init>()V

    sput-object v0, Lcom/syu/jni/ControlNative;->INSTANCE:Lcom/syu/jni/ControlNative;

    const-string/jumbo v0, "sqlcontrol"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/syu/jni/ControlNative;
    .locals 1

    .line 1
    sget-object v0, Lcom/syu/jni/ControlNative;->INSTANCE:Lcom/syu/jni/ControlNative;

    return-object v0
.end method


# virtual methods
.method public native Getpid()[I
.end method

.method public native Setflashflag(I)V
.end method

.method public native fytDisableMute()C
.end method

.method public native fytEnableMute()C
.end method

.method public native fytMuteAMP(I)I
.end method

.method public native fytReset8288()I
.end method

.method public native fytResetBluetooth()I
.end method

.method public native fytResetGps(I)I
.end method

.method public native fytSetLedColor(I)I
.end method

.method public native fytSetVideoPosition([BI)I
.end method

.method public native fytTurnOffLcdc(I)I
.end method

.method public native fyt_Clone_Screen_Ratio(III)I
.end method

.method public native fyt_Get_Clone_Ratio([I)I
.end method

.method public native fyt_Onoff_Dac(I)I
.end method

.method public native fyt_Save_Clone_Ratio([I)I
.end method

.method public native fyt_audio_status()I
.end method

.method public native fyt_backtype_get()I
.end method

.method public native fyt_backtype_set(I)I
.end method

.method public native fyt_car_image_get_on()I
.end method

.method public native fyt_car_image_set_on(I)I
.end method

.method public native fyt_carback_result()C
.end method

.method public native fyt_encryption_result()I
.end method

.method public native fyt_get8288_NP()I
.end method

.method public native fyt_get8288_signal()I
.end method

.method public native fyt_get_ui_time()[B
.end method

.method public native fyt_gpio_read(I)I
.end method

.method public native fyt_gpio_setup(III)I
.end method

.method public native fyt_gpio_write(II)I
.end method

.method public native fyt_gps_sound_status_listen()I
.end method

.method public native fyt_iopstatus_result()C
.end method

.method public native fyt_is_carbacking()I
.end method

.method public native fyt_is_sql5002()C
.end method

.method public native fyt_lightoff_timeout_listen()I
.end method

.method public native fyt_lightoff_timeout_set(I)I
.end method

.method public native fyt_logo_write([BI)I
.end method

.method public native fyt_multicolour_light_read()C
.end method

.method public native fyt_onoff_overlay(I)I
.end method

.method public native fyt_set_dvd_gpio(C)I
.end method

.method public native fyt_sound_control(C)I
.end method

.method public native fyt_sound_spectrogram_close(I)I
.end method

.method public native fyt_sound_spectrogram_open()I
.end method

.method public native fyt_sound_spectrogram_read(I)I
.end method

.method public native fyt_sound_spectrogram_write(II)I
.end method

.method public native fyt_update_clear()I
.end method

.method public native fyt_update_get()I
.end method

.method public native fyt_vehicle_read()[B
.end method

.method public native fyt_vehicle_write([BI)I
.end method
