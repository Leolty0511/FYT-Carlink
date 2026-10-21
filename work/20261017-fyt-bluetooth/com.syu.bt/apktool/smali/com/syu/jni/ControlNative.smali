.class public Lcom/syu/jni/ControlNative;
.super Ljava/lang/Object;
.source "ControlNative.java"


# static fields
.field public static INSTANCE:Lcom/syu/jni/ControlNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Lcom/syu/jni/ControlNative;->INSTANCE:Lcom/syu/jni/ControlNative;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "sqlcontrol"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public static getInstance()Lcom/syu/jni/ControlNative;
    .locals 2

    .prologue
    .line 12
    :try_start_0
    sget-object v1, Lcom/syu/jni/ControlNative;->INSTANCE:Lcom/syu/jni/ControlNative;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/syu/jni/ControlNative;

    invoke-direct {v1}, Lcom/syu/jni/ControlNative;-><init>()V

    sput-object v1, Lcom/syu/jni/ControlNative;->INSTANCE:Lcom/syu/jni/ControlNative;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v1, Lcom/syu/jni/ControlNative;->INSTANCE:Lcom/syu/jni/ControlNative;

    return-object v1

    .line 14
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 15
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-object v1, Lcom/syu/jni/ControlNative;->INSTANCE:Lcom/syu/jni/ControlNative;

    goto :goto_0
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

.method public native fyt_Get_Backcar_Signal()I
.end method

.method public native fyt_Get_Clone_Ratio([I)I
.end method

.method public native fyt_Onoff_Dac(I)I
.end method

.method public native fyt_Save_Clone_Ratio([I)I
.end method

.method public native fyt_audio_status()I
.end method

.method public native fyt_backcar_get_settings([C)I
.end method

.method public native fyt_backcar_setdefault()I
.end method

.method public native fyt_backcar_settings(CCCC)I
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

.method public native fyt_multicolour_light_set(C)I
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

.method public native fyt_usb_speed_get()I
.end method

.method public native fyt_usb_speed_set(I)C
.end method

.method public native fyt_vehicle_read()[B
.end method

.method public native fyt_vehicle_write([BI)I
.end method
