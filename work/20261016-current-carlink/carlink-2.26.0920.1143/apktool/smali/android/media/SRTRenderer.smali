.class public Landroid/media/SRTRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mRender:Z

.field private mRenderingWidget:Landroid/media/WebVttRenderingWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/media/SRTRenderer;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, p0, Landroid/media/SRTRenderer;->mRender:Z

    .line 5
    iput-object p2, p0, Landroid/media/SRTRenderer;->mEventHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/media/WebVttRenderingWidget;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/media/SRTRenderer;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Landroid/media/SRTTrack;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 25
    .line 26
    invoke-direct {v0, v1, p1}, Landroid/media/SRTTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    new-instance v0, Landroid/media/SRTTrack;

    .line 31
    .line 32
    iget-object v1, p0, Landroid/media/SRTRenderer;->mEventHandler:Landroid/os/Handler;

    .line 33
    .line 34
    invoke-direct {v0, v1, p1}, Landroid/media/SRTTrack;-><init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "mime"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "application/x-subrip"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    iget-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    .line 25
    .line 26
    const-string/jumbo v1, "is-timed-text"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v1, 0x1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    move p1, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move p1, v2

    .line 39
    :goto_0
    if-ne v0, p1, :cond_2

    .line 40
    .line 41
    move v2, v1

    .line 42
    :cond_2
    return v2
.end method
