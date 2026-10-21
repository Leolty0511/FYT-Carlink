.class public Landroid/media/MediaRecorderEx;
.super Landroid/media/MediaRecorder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRecorder;-><init>()V

    return-void
.end method


# virtual methods
.method public setParam64BitFileOffset(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string/jumbo p1, "param-use-64bit-offset=1"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string/jumbo p1, "param-use-64bit-offset=0"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
