.class Landroid/filterpacks/videosrc/MediaSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method public constructor <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .locals 0

    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->access$000(Landroid/filterpacks/videosrc/MediaSource;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "MediaSource"

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "MediaPlayer sent dimensions: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " x "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 37
    .line 38
    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->access$100(Landroid/filterpacks/videosrc/MediaSource;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 45
    .line 46
    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->access$200(Landroid/filterpacks/videosrc/MediaSource;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 53
    .line 54
    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->access$200(Landroid/filterpacks/videosrc/MediaSource;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/16 v0, 0xb4

    .line 59
    .line 60
    if-ne p1, v0, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 64
    .line 65
    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, p3, p2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 74
    .line 75
    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, p2, p3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 83
    .line 84
    invoke-static {p1, p2}, Landroid/filterpacks/videosrc/MediaSource;->access$402(Landroid/filterpacks/videosrc/MediaSource;I)I

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 88
    .line 89
    invoke-static {p1, p3}, Landroid/filterpacks/videosrc/MediaSource;->access$502(Landroid/filterpacks/videosrc/MediaSource;I)I

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 94
    .line 95
    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-ne p1, p2, :cond_4

    .line 104
    .line 105
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 106
    .line 107
    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eq p1, p3, :cond_5

    .line 116
    .line 117
    :cond_4
    const-string p1, "MediaSource"

    .line 118
    .line 119
    const-string p2, "Multiple video size change events received!"

    .line 120
    .line 121
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_2
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 125
    .line 126
    monitor-enter p1

    .line 127
    :try_start_0
    iget-object p2, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 128
    .line 129
    const/4 p3, 0x1

    .line 130
    invoke-static {p2, p3}, Landroid/filterpacks/videosrc/MediaSource;->access$102(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    .line 131
    .line 132
    .line 133
    iget-object p2, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 136
    .line 137
    .line 138
    monitor-exit p1

    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception p2

    .line 141
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw p2
.end method
