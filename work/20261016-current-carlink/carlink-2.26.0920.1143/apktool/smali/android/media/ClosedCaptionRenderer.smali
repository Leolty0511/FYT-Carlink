.class public Landroid/media/ClosedCaptionRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "SourceFile"


# instance fields
.field private mCCWidget:Landroid/media/Cea608CCWidget;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 3

    .line 1
    const-string/jumbo v0, "mime"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "text/cea-608"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/media/ClosedCaptionRenderer;->mCCWidget:Landroid/media/Cea608CCWidget;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Landroid/media/Cea608CCWidget;

    .line 22
    .line 23
    iget-object v1, p0, Landroid/media/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroid/media/Cea608CCWidget;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroid/media/ClosedCaptionRenderer;->mCCWidget:Landroid/media/Cea608CCWidget;

    .line 29
    .line 30
    :cond_0
    new-instance v0, Landroid/media/Cea608CaptionTrack;

    .line 31
    .line 32
    iget-object v1, p0, Landroid/media/ClosedCaptionRenderer;->mCCWidget:Landroid/media/Cea608CCWidget;

    .line 33
    .line 34
    invoke-direct {v0, v1, p1}, Landroid/media/Cea608CaptionTrack;-><init>(Landroid/media/Cea608CCWidget;Landroid/media/MediaFormat;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "No matching format: "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 2

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
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string/jumbo v0, "text/cea-608"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method
