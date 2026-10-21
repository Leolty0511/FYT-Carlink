.class public Landroid/media/TtmlRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "SourceFile"


# static fields
.field private static final MEDIA_MIMETYPE_TEXT_TTML:Ljava/lang/String; = "application/ttml+xml"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRenderingWidget:Landroid/media/TtmlRenderingWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/TtmlRenderer;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/TtmlRenderer;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/media/TtmlRenderingWidget;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/media/TtmlRenderer;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/media/TtmlRenderer;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroid/media/TtmlTrack;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/media/TtmlRenderer;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    .line 17
    .line 18
    invoke-direct {v0, v1, p1}, Landroid/media/TtmlTrack;-><init>(Landroid/media/TtmlRenderingWidget;Landroid/media/MediaFormat;)V

    .line 19
    .line 20
    .line 21
    return-object v0
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
    const-string v0, "application/ttml+xml"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method
