.class public Lcom/syu/jni/TouchNative;
.super Ljava/lang/Object;
.source "TouchNative.java"


# static fields
.field public static INSTANCE:Lcom/syu/jni/TouchNative; = null

.field public static final STATUS_CALIBRATED:I = 0x1

.field public static final STATUS_KEY_STUDYED:I = 0x2

.field public static final STATUS_UNKNOW:I = 0x0

.field public static final TOCH_STUDY_MODE:I = 0xc2

.field public static final TOUCH_CAL_MODE:I = 0xc1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Lcom/syu/jni/TouchNative;->INSTANCE:Lcom/syu/jni/TouchNative;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "sqltouch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/syu/jni/TouchNative;
    .locals 2

    .prologue
    .line 19
    :try_start_0
    sget-object v1, Lcom/syu/jni/TouchNative;->INSTANCE:Lcom/syu/jni/TouchNative;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/syu/jni/TouchNative;

    invoke-direct {v1}, Lcom/syu/jni/TouchNative;-><init>()V

    sput-object v1, Lcom/syu/jni/TouchNative;->INSTANCE:Lcom/syu/jni/TouchNative;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v1, Lcom/syu/jni/TouchNative;->INSTANCE:Lcom/syu/jni/TouchNative;

    return-object v1

    .line 21
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 22
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-object v1, Lcom/syu/jni/TouchNative;->INSTANCE:Lcom/syu/jni/TouchNative;

    goto :goto_0
.end method


# virtual methods
.method public native native_calibrate_touch([I[I)I
.end method

.method public native native_get_control(I)I
.end method

.method public native native_get_coordinate([I[I)I
.end method

.method public native native_get_key(II[I)I
.end method

.method public native native_get_points([I[I)I
.end method

.method public native native_get_resolutions([I[I)I
.end method

.method public native native_get_tconfig([I)I
.end method

.method public native native_save_config()I
.end method

.method public native native_set_control(II)I
.end method

.method public native native_set_key(II[I)I
.end method

.method public native native_set_tconfig([I)I
.end method

.method public native native_touch_close(I)V
.end method

.method public native native_touch_open()I
.end method
