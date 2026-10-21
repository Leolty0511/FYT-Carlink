.class Landroid/media/SubtitleTrack$CueList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Landroid/media/SubtitleTrack$Cue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SubtitleTrack$CueList;

.field final synthetic val$lastTimeMs:J

.field final synthetic val$timeMs:J


# direct methods
.method public constructor <init>(Landroid/media/SubtitleTrack$CueList;JJ)V
    .locals 0

    iput-object p1, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    iput-wide p2, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    iput-wide p4, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "slice ("

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-wide v1, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-wide v1, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "]="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "CueList"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/SubtitleTrack$CueList$EntryIterator;

    .line 45
    .line 46
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    .line 47
    .line 48
    invoke-static {v1}, Landroid/media/SubtitleTrack$CueList;->access$200(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-wide v3, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    .line 53
    .line 54
    const-wide/16 v5, 0x1

    .line 55
    .line 56
    add-long/2addr v3, v5

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-wide v7, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    .line 62
    .line 63
    add-long/2addr v7, v5

    .line 64
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-interface {v2, v3, v4}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v0, v1, v2}, Landroid/media/SubtitleTrack$CueList$EntryIterator;-><init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :catch_0
    new-instance v0, Landroid/media/SubtitleTrack$CueList$EntryIterator;

    .line 77
    .line 78
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-direct {v0, v1, v2}, Landroid/media/SubtitleTrack$CueList$EntryIterator;-><init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method
