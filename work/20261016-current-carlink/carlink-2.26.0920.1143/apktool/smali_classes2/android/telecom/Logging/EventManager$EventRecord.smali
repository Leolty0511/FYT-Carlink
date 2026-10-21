.class public Landroid/telecom/Logging/EventManager$EventRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;,
        Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;
    }
.end annotation


# instance fields
.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

.field final synthetic this$0:Landroid/telecom/Logging/EventManager;


# direct methods
.method public constructor <init>(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$Loggable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    .line 12
    .line 13
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    .line 2
    .line 3
    new-instance v7, Landroid/telecom/Logging/EventManager$Event;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    move-object v1, v7

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v6, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Landroid/telecom/Logging/EventManager$Event;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x3

    .line 20
    new-array p2, p2, [Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    .line 23
    .line 24
    invoke-interface {v0}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    aput-object v0, p2, v1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object p1, p2, v0

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    aput-object p3, p2, p1

    .line 36
    .line 37
    const-string p1, "Event"

    .line 38
    .line 39
    const-string p3, "RecordEntry %s: %s, %s"

    .line 40
    .line 41
    invoke-static {p1, p3, p2}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/telecom/Logging/EventManager$Loggable;->getDescription()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/telecom/Logging/EventManager$Event;

    .line 30
    .line 31
    iget-object v2, p0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    .line 32
    .line 33
    invoke-static {v2}, Landroid/telecom/Logging/EventManager;->access$100(Landroid/telecom/Logging/EventManager;)Ljava/text/DateFormat;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Ljava/util/Date;

    .line 38
    .line 39
    iget-wide v4, v1, Landroid/telecom/Logging/EventManager$Event;->time:J

    .line 40
    .line 41
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v2, " - "

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    const-string v2, " ("

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    .line 71
    .line 72
    instance-of v3, v2, Landroid/telecom/Logging/EventManager$Loggable;

    .line 73
    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    iget-object v3, p0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    .line 77
    .line 78
    invoke-static {v3}, Landroid/telecom/Logging/EventManager;->access$200(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 87
    .line 88
    if-eqz v3, :cond_0

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v4, "RecordEntry "

    .line 93
    .line 94
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v3, v3, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    .line 98
    .line 99
    invoke-interface {v3}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const-string v2, ")"

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_2

    .line 125
    .line 126
    const-string v2, ":"

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v1, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    const-string v0, "Timings (average for this call, milliseconds):"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/telecom/Logging/EventManager$EventRecord;->extractEventTimings()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/telecom/Logging/TimedEvent;->averageTimings(Ljava/util/Collection;)Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_4

    .line 177
    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Ljava/lang/String;

    .line 183
    .line 184
    const/4 v3, 0x2

    .line 185
    new-array v3, v3, [Ljava/lang/Object;

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    aput-object v2, v3, v4

    .line 189
    .line 190
    const/4 v4, 0x1

    .line 191
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    aput-object v2, v3, v4

    .line 196
    .line 197
    const-string v2, "%s: %.2f\n"

    .line 198
    .line 199
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public extractEventTimings()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    iget-object v0, v8, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v9, Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v10, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v0, v8, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v11

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v12, v0

    .line 39
    check-cast v12, Landroid/telecom/Logging/EventManager$Event;

    .line 40
    .line 41
    iget-object v0, v8, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/telecom/Logging/EventManager;->access$000(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, v12, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, v8, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    .line 56
    .line 57
    invoke-static {v0}, Landroid/telecom/Logging/EventManager;->access$000(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, v12, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/telecom/Logging/EventManager$TimedEventPair;

    .line 84
    .line 85
    iget-object v14, v0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mResponse:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v15, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;

    .line 88
    .line 89
    iget-object v2, v12, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    .line 90
    .line 91
    iget-wide v3, v12, Landroid/telecom/Logging/EventManager$Event;->time:J

    .line 92
    .line 93
    iget-wide v5, v0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    .line 94
    .line 95
    iget-object v7, v0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mName:Ljava/lang/String;

    .line 96
    .line 97
    move-object v0, v15

    .line 98
    move-object/from16 v1, p0

    .line 99
    .line 100
    invoke-direct/range {v0 .. v7}, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;-><init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;JJLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v10, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, v12, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;

    .line 114
    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    iget-wide v1, v12, Landroid/telecom/Logging/EventManager$Event;->time:J

    .line 118
    .line 119
    iget-wide v3, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->requestEventTimeMillis:J

    .line 120
    .line 121
    sub-long/2addr v1, v3

    .line 122
    iget-wide v3, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->timeoutMillis:J

    .line 123
    .line 124
    cmp-long v3, v1, v3

    .line 125
    .line 126
    if-gez v3, :cond_1

    .line 127
    .line 128
    new-instance v3, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;

    .line 129
    .line 130
    iget-object v0, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->name:Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {v3, v8, v0, v1, v2}, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;-><init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    return-object v9
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$Event;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    return-object v0
.end method

.method public getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    return-object v0
.end method
