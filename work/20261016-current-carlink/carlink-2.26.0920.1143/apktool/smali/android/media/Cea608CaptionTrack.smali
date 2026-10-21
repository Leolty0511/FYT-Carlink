.class Landroid/media/Cea608CaptionTrack;
.super Landroid/media/SubtitleTrack;
.source "SourceFile"


# instance fields
.field private final mCCParser:Landroid/media/Cea608CCParser;

.field private final mRenderingWidget:Landroid/media/Cea608CCWidget;


# direct methods
.method public constructor <init>(Landroid/media/Cea608CCWidget;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/Cea608CaptionTrack;->mRenderingWidget:Landroid/media/Cea608CCWidget;

    .line 5
    .line 6
    new-instance p2, Landroid/media/Cea608CCParser;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Landroid/media/Cea608CCParser;-><init>(Landroid/media/Cea608CCParser$DisplayListener;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Landroid/media/Cea608CaptionTrack;->mCCParser:Landroid/media/Cea608CCParser;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    iget-object v0, p0, Landroid/media/Cea608CaptionTrack;->mRenderingWidget:Landroid/media/Cea608CCWidget;

    return-object v0
.end method

.method public onData([BZJ)V
    .locals 0

    iget-object p2, p0, Landroid/media/Cea608CaptionTrack;->mCCParser:Landroid/media/Cea608CCParser;

    invoke-virtual {p2, p1}, Landroid/media/Cea608CCParser;->parse([B)V

    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
