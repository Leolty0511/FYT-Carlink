.class Landroid/media/WebVttTrack;
.super Landroid/media/SubtitleTrack;
.source "SourceFile"

# interfaces
.implements Landroid/media/WebVttCueListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebVttTrack"


# instance fields
.field private mCurrentRunID:Ljava/lang/Long;

.field private final mExtractor:Landroid/media/UnstyledTextExtractor;

.field private final mParser:Landroid/media/WebVttParser;

.field private final mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/TextTrackRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderingWidget:Landroid/media/WebVttRenderingWidget;

.field private final mTimestamps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenizer:Landroid/media/Tokenizer;


# direct methods
.method public constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroid/media/WebVttParser;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Landroid/media/WebVttParser;-><init>(Landroid/media/WebVttCueListener;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    .line 10
    .line 11
    new-instance p2, Landroid/media/UnstyledTextExtractor;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/media/UnstyledTextExtractor;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    .line 17
    .line 18
    new-instance v0, Landroid/media/Tokenizer;

    .line 19
    .line 20
    invoke-direct {v0, p2}, Landroid/media/Tokenizer;-><init>(Landroid/media/Tokenizer$OnTokenListener;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    .line 24
    .line 25
    new-instance p2, Ljava/util/Vector;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 31
    .line 32
    new-instance p2, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    .line 38
    .line 39
    iput-object p1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/WebVttTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingWidget()Landroid/media/WebVttRenderingWidget;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    return-object v0
.end method

.method public onCueParsed(Landroid/media/TextTrackCue;)V
    .locals 13

    .line 1
    const-string v0, "adding cue "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    .line 15
    .line 16
    iget-object v3, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/media/TextTrackRegion;

    .line 23
    .line 24
    iput-object v2, p1, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 25
    .line 26
    :cond_0
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const-string v2, "WebVttTrack"

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/media/Tokenizer;->reset()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 53
    .line 54
    array-length v2, v0

    .line 55
    const/4 v3, 0x0

    .line 56
    move v4, v3

    .line 57
    :goto_0
    if-ge v4, v2, :cond_2

    .line 58
    .line 59
    aget-object v5, v0, v4

    .line 60
    .line 61
    iget-object v6, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    .line 62
    .line 63
    invoke-virtual {v6, v5}, Landroid/media/Tokenizer;->tokenize(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/media/UnstyledTextExtractor;->getText()[[Landroid/media/TextTrackCueSpan;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 76
    .line 77
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    const-string v0, "WebVttTrack"

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v4, " simplified to: "

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/media/TextTrackCue;->appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v0, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 109
    .line 110
    array-length v2, v0

    .line 111
    move v4, v3

    .line 112
    :goto_1
    if-ge v4, v2, :cond_6

    .line 113
    .line 114
    aget-object v5, v0, v4

    .line 115
    .line 116
    array-length v6, v5

    .line 117
    move v7, v3

    .line 118
    :goto_2
    if-ge v7, v6, :cond_5

    .line 119
    .line 120
    aget-object v8, v5, v7

    .line 121
    .line 122
    iget-wide v9, v8, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 123
    .line 124
    iget-wide v11, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 125
    .line 126
    cmp-long v11, v9, v11

    .line 127
    .line 128
    if-lez v11, :cond_4

    .line 129
    .line 130
    iget-wide v11, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    .line 131
    .line 132
    cmp-long v11, v9, v11

    .line 133
    .line 134
    if-gez v11, :cond_4

    .line 135
    .line 136
    iget-object v11, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 137
    .line 138
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-virtual {v11, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-nez v9, :cond_4

    .line 147
    .line 148
    iget-object v9, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 149
    .line 150
    iget-wide v10, v8, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 151
    .line 152
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    iget-object v0, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-lez v0, :cond_8

    .line 172
    .line 173
    iget-object v0, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    new-array v0, v0, [J

    .line 180
    .line 181
    iput-object v0, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    .line 182
    .line 183
    :goto_3
    iget-object v0, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-ge v3, v0, :cond_7

    .line 190
    .line 191
    iget-object v0, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    .line 192
    .line 193
    iget-object v2, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Ljava/lang/Long;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 202
    .line 203
    .line 204
    move-result-wide v4

    .line 205
    aput-wide v4, v0, v3

    .line 206
    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_7
    iget-object v0, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_8
    const/4 v0, 0x0

    .line 217
    iput-object v0, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    .line 218
    .line 219
    :goto_4
    iget-object v0, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 222
    .line 223
    .line 224
    move-result-wide v2

    .line 225
    iput-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    .line 226
    .line 227
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {p0, p1}, Landroid/media/SubtitleTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :catchall_0
    move-exception p1

    .line 233
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    throw p1
.end method

.method public onData([BZJ)V
    .locals 4

    .line 1
    const-string v0, "Run #"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "UTF-8"

    .line 6
    .line 7
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    .line 11
    .line 12
    monitor-enter p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    iget-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmp-long v2, p3, v2

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " in progress.  Cannot process run #"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2

    .line 54
    :cond_1
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 59
    .line 60
    iget-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/media/WebVttParser;->parse(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, p3, p4}, Landroid/media/SubtitleTrack;->finishedRun(J)V

    .line 68
    .line 69
    .line 70
    iget-object p2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/media/WebVttParser;->eos()V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 78
    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    iput-object p2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 82
    .line 83
    :cond_2
    monitor-exit p1

    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception p2

    .line 86
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :catch_0
    move-exception p1

    .line 89
    const-string p2, "WebVttTrack"

    .line 90
    .line 91
    new-instance p3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo p4, "subtitle data is not UTF-8 encoded: "

    .line 94
    .line 95
    .line 96
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void
.end method

.method public onRegionParsed(Landroid/media/TextTrackRegion;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    .line 5
    .line 6
    iget-object v2, p1, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "WebVttTrack"

    .line 2
    .line 3
    const-string v1, "at "

    .line 4
    .line 5
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-interface {v1, v3, v4}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    const-wide/16 v5, 0x3e8

    .line 32
    .line 33
    div-long/2addr v3, v5

    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " ms the active cues are:"

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    const-string v1, "at (illegal state) the active cues are:"

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/media/WebVttRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method
