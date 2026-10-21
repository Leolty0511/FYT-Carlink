.class public Landroid/media/audiofx/AudioEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/AudioEffect$NativeEventHandler;,
        Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$Descriptor;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ALREADY_EXISTS:I = -0x2

.field public static final CONTENT_TYPE_GAME:I = 0x2

.field public static final CONTENT_TYPE_MOVIE:I = 0x1

.field public static final CONTENT_TYPE_MUSIC:I = 0x0

.field public static final CONTENT_TYPE_VOICE:I = 0x3

.field public static final EFFECT_AUXILIARY:Ljava/lang/String; = "Auxiliary"

.field public static final EFFECT_INSERT:Ljava/lang/String; = "Insert"

.field public static final EFFECT_PRE_PROCESSING:Ljava/lang/String; = "Pre Processing"

.field public static final EFFECT_TYPE_AEC:Ljava/util/UUID;

.field public static final EFFECT_TYPE_AGC:Ljava/util/UUID;

.field public static final EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

.field public static final EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

.field public static final EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public static final EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

.field public static final EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field public static final EXTRA_AUDIO_SESSION:Ljava/lang/String; = "android.media.extra.AUDIO_SESSION"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "android.media.extra.CONTENT_TYPE"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.extra.PACKAGE_NAME"

.field public static final NATIVE_EVENT_CONTROL_STATUS:I = 0x0

.field public static final NATIVE_EVENT_ENABLED_STATUS:I = 0x1

.field public static final NATIVE_EVENT_PARAMETER_CHANGED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioEffect-JAVA"


# instance fields
.field private mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

.field private mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

.field private mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

.field private mId:I

.field private mJniData:I

.field public final mListenerLock:Ljava/lang/Object;

.field private mNativeAudioEffect:I

.field public mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

.field private mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "audioeffect_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_init()V

    const-string v0, "c2e5d5f0-94bd-4763-9cac-4e234d06839e"

    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    const-string v0, "47382d60-ddd8-11db-bf3a-0002a5d5c51b"

    .line 4
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    const-string v0, "0bed4300-ddd6-11db-8f34-0002a5d5c51b"

    .line 5
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    const-string v0, "0634f220-ddd4-11db-a0fc-0002a5d5c51b"

    .line 6
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    const-string v0, "37cc2c00-dddd-11db-8577-0002a5d5c51b"

    .line 7
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    const-string v0, "0a8abfe0-654c-11e0-ba26-0002a5d5c51b"

    .line 8
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    const-string v0, "7b491460-8d4d-11e0-bd61-0002a5d5c51b"

    .line 9
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    const-string v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    .line 10
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    const-string v0, "fe3199be-aed0-413f-87bb-11260eb63cf1"

    .line 11
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    .line 12
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .locals 15

    move-object v9, p0

    move-object/from16 v0, p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    .line 2
    iput v10, v9, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 3
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v11, v9, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v9, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 5
    iput-object v1, v9, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 6
    iput-object v1, v9, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 7
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v9, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    .line 8
    iput-object v1, v9, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    const/4 v12, 0x1

    new-array v13, v12, [I

    new-array v14, v12, [Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 9
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v13

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Landroid/media/audiofx/AudioEffect;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    const-string v2, "AudioEffect-JAVA"

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when initializing AudioEffect."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x5

    if-eq v1, v2, :cond_1

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    .line 11
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot initialize effect engine for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Error: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Effect type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not supported."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Effect library not loaded"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    aget v0, v13, v10

    iput v0, v9, Landroid/media/audiofx/AudioEffect;->mId:I

    .line 15
    aget-object v0, v14, v10

    iput-object v0, v9, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 16
    monitor-enter v11

    .line 17
    :try_start_0
    iput v12, v9, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 18
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic access$000(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    return-object p0
.end method

.method private createNativeEventHandler()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    :goto_0
    return-void
.end method

.method public static isEffectTypeAvailable(Ljava/util/UUID;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v3, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isError(I)Z
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final native native_command(II[BI[B)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getParameter(I[BI[B)I
.end method

.method private final native native_hasControl()Z
.end method

.method private static final native native_init()V
.end method

.method private static native native_query_effects()[Ljava/lang/Object;
.end method

.method private static native native_query_pre_processing(I)[Ljava/lang/Object;
.end method

.method private final native native_release()V
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setParameter(I[BI[B)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/audiofx/AudioEffect;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public static queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_query_effects()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static queryPreProcessings(I)[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/media/audiofx/AudioEffect;->native_query_pre_processing(I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object p0
.end method


# virtual methods
.method public byteArrayToInt([B)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    return p1
.end method

.method public byteArrayToInt([BI)I
    .locals 1

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public byteArrayToShort([B)S
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result p1

    return p1
.end method

.method public byteArrayToShort([BI)S
    .locals 1

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public checkState(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called on uninitialized AudioEffect."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkStatus(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->isError(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x5

    if-eq p1, v0, :cond_1

    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "AudioEffect: set/get parameter error"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AudioEffect: bad parameter value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AudioEffect: invalid parameter operation"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public command(I[B[B)I
    .locals 7

    const-string v0, "command()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 2
    array-length v3, p2

    array-length v5, p3

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/audiofx/AudioEffect;->native_command(II[BI[B)I

    move-result p1

    return p1
.end method

.method public varargs concatArrays([[B)[B
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    .line 2
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-array v0, v3, [B

    .line 4
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v5, p1, v3

    .line 5
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_finalize()V

    return-void
.end method

.method public getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    const-string v0, "getDescriptor()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    const-string v0, "getEnabled()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_getEnabled()Z

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    const-string v0, "getId()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    return v0
.end method

.method public getParameter(I[B)I
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result p1

    return p1
.end method

.method public getParameter(I[I)I
    .locals 5

    .line 5
    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 p1, -0x4

    return p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    .line 7
    array-length v0, p2

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v4

    aput v4, p2, v3

    if-ne p1, v2, :cond_3

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    aput v0, p2, v2

    .line 11
    :cond_3
    div-int/2addr p1, v1

    :goto_1
    return p1
.end method

.method public getParameter(I[S)I
    .locals 5

    .line 12
    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 p1, -0x4

    return p1

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    .line 14
    array-length v0, p2

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result p1

    const/4 v2, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v4

    aput-short v4, p2, v3

    if-ne p1, v2, :cond_3

    const/4 v2, 0x1

    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    aput-short v0, p2, v2

    .line 18
    :cond_3
    div-int/2addr p1, v1

    :goto_1
    return p1
.end method

.method public getParameter([B[B)I
    .locals 2

    const-string v0, "getParameter()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_getParameter(I[BI[B)I

    move-result p1

    return p1
.end method

.method public getParameter([I[B)I
    .locals 5

    .line 39
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 p1, -0x4

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 40
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 41
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 42
    aget p1, p1, v4

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    new-array v1, v1, [[B

    aput-object v2, v1, v0

    aput-object p1, v1, v4

    .line 43
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 44
    :cond_1
    invoke-virtual {p0, v2, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result p1

    return p1
.end method

.method public getParameter([I[I)I
    .locals 6

    .line 19
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 20
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 21
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 22
    aget p1, p1, v4

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    new-array v1, v1, [[B

    aput-object v2, v1, v0

    aput-object p1, v1, v4

    .line 23
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 24
    :cond_1
    array-length p1, p2

    const/4 v1, 0x4

    mul-int/2addr p1, v1

    new-array p1, p1, [B

    .line 25
    invoke-virtual {p0, v2, p1}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v1, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    goto :goto_1

    .line 26
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v5

    aput v5, p2, v0

    if-ne v2, v3, :cond_4

    .line 27
    invoke-virtual {p0, p1, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    aput p1, p2, v4

    .line 28
    :cond_4
    div-int/lit8 p1, v2, 0x4

    :goto_1
    return p1

    :cond_5
    :goto_2
    const/4 p1, -0x4

    return p1
.end method

.method public getParameter([I[S)I
    .locals 6

    .line 29
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 30
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 31
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 32
    aget p1, p1, v4

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    new-array v3, v1, [[B

    aput-object v2, v3, v0

    aput-object p1, v3, v4

    .line 33
    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 34
    :cond_1
    array-length p1, p2

    mul-int/2addr p1, v1

    new-array p1, p1, [B

    .line 35
    invoke-virtual {p0, v2, p1}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v1, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    goto :goto_1

    .line 36
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v5

    aput-short v5, p2, v0

    if-ne v2, v3, :cond_4

    .line 37
    invoke-virtual {p0, p1, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result p1

    aput-short p1, p2, v4

    .line 38
    :cond_4
    div-int/lit8 p1, v2, 0x2

    :goto_1
    return p1

    :cond_5
    :goto_2
    const/4 p1, -0x4

    return p1
.end method

.method public hasControl()Z
    .locals 1

    const-string v0, "hasControl()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_hasControl()Z

    move-result v0

    return v0
.end method

.method public intToByteArray(I)[B
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_release()V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEnabled(Z)I
    .locals 1

    const-string/jumbo v0, "setEnabled()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/media/audiofx/AudioEffect;->native_setEnabled(Z)I

    move-result p1

    return p1
.end method

.method public setParameter(II)I
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    .line 4
    invoke-virtual {p0, p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result p1

    return p1
.end method

.method public setParameter(IS)I
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    .line 7
    invoke-virtual {p0, p2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p2

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result p1

    return p1
.end method

.method public setParameter(I[B)I
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result p1

    return p1
.end method

.method public setParameter([B[B)I
    .locals 2

    const-string/jumbo v0, "setParameter()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_setParameter(I[BI[B)I

    move-result p1

    return p1
.end method

.method public setParameter([I[B)I
    .locals 5

    .line 31
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 p1, -0x4

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 32
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 33
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 34
    aget p1, p1, v4

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    new-array v1, v1, [[B

    aput-object v2, v1, v0

    aput-object p1, v1, v4

    .line 35
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 36
    :cond_1
    invoke-virtual {p0, v2, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result p1

    return p1
.end method

.method public setParameter([I[I)I
    .locals 5

    .line 11
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 13
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 14
    aget p1, p1, v4

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    new-array v3, v1, [[B

    aput-object v2, v3, v0

    aput-object p1, v3, v4

    .line 15
    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 16
    :cond_1
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    .line 17
    array-length v3, p2

    if-le v3, v4, :cond_2

    .line 18
    aget p2, p2, v4

    invoke-virtual {p0, p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p2

    new-array v1, v1, [[B

    aput-object p1, v1, v0

    aput-object p2, v1, v4

    .line 19
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object p1

    .line 20
    :cond_2
    invoke-virtual {p0, v2, p1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, -0x4

    return p1
.end method

.method public setParameter([I[S)I
    .locals 5

    .line 21
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 23
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 24
    aget p1, p1, v4

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    new-array v3, v1, [[B

    aput-object v2, v3, v0

    aput-object p1, v3, v4

    .line 25
    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 26
    :cond_1
    aget-short p1, p2, v0

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p1

    .line 27
    array-length v3, p2

    if-le v3, v4, :cond_2

    .line 28
    aget-short p2, p2, v4

    invoke-virtual {p0, p2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p2

    new-array v1, v1, [[B

    aput-object p1, v1, v0

    aput-object p2, v1, v4

    .line 29
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object p1

    .line 30
    :cond_2
    invoke-virtual {p0, v2, p1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, -0x4

    return p1
.end method

.method public setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public shortToByteArray(S)[B
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
