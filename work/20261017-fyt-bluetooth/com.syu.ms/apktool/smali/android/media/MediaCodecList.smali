.class public final Landroid/media/MediaCodecList;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "media_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/media/MediaCodecList;->native_init()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native findCodecByName(Ljava/lang/String;)I
.end method

.method public static final native getCodecCapabilities(ILjava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
.end method

.method public static final native getCodecCount()I
.end method

.method public static final getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1

    if-ltz p0, :cond_0

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    if-gt p0, v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/MediaCodecInfo;

    invoke-direct {v0, p0}, Landroid/media/MediaCodecInfo;-><init>(I)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static final native getCodecName(I)Ljava/lang/String;
.end method

.method public static final native getSupportedTypes(I)[Ljava/lang/String;
.end method

.method public static final native isEncoder(I)Z
.end method

.method private static final native native_init()V
.end method
