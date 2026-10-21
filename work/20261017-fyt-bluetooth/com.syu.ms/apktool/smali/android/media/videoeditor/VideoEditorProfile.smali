.class public Landroid/media/videoeditor/VideoEditorProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public maxInputVideoFrameHeight:I

.field public maxInputVideoFrameWidth:I

.field public maxOutputVideoFrameHeight:I

.field public maxOutputVideoFrameWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "media_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->native_init()V

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameWidth:I

    .line 3
    iput p2, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameHeight:I

    .line 4
    iput p3, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameWidth:I

    .line 5
    iput p4, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameHeight:I

    return-void
.end method

.method public static get()Landroid/media/videoeditor/VideoEditorProfile;
    .locals 1

    .line 1
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->native_get_videoeditor_profile()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v0

    return-object v0
.end method

.method public static getExportLevel(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video codec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/media/videoeditor/VideoEditorProfile;->native_get_videoeditor_export_level(I)I

    move-result p0

    return p0
.end method

.method public static getExportProfile(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video codec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/media/videoeditor/VideoEditorProfile;->native_get_videoeditor_export_profile(I)I

    move-result p0

    return p0
.end method

.method private static final native native_get_videoeditor_export_level(I)I
.end method

.method private static final native native_get_videoeditor_export_profile(I)I
.end method

.method private static final native native_get_videoeditor_profile()Landroid/media/videoeditor/VideoEditorProfile;
.end method

.method private static final native native_init()V
.end method
