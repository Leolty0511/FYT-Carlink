.class Landroid/media/MediaPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSubtitleDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/media/SubtitleData;->getTrackIndex()I

    move-result p1

    .line 2
    iget-object v0, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)[Landroid/media/SubtitleTrack;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)[Landroid/media/SubtitleTrack;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p2}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 5
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/media/SubtitleTrack;->onData(Ljava/lang/String;ZJ)V

    .line 6
    invoke-virtual {p2}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/SubtitleTrack;->setRunDiscardTimeMs(JJ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subtitle data for track "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not UTF-8 encoded: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayer"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
