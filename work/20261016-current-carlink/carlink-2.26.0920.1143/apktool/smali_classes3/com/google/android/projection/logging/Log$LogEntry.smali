.class Lcom/google/android/projection/logging/Log$LogEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/logging/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEntry"
.end annotation


# instance fields
.field final exception:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mainThread:Z

.field final message:Ljava/lang/String;

.field final severity:I

.field final tag:Ljava/lang/String;

.field final threadId:J

.field final timestamp:J


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;JZLjava/lang/Throwable;)V
    .locals 0
    .param p9    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/projection/logging/Log$LogEntry;->timestamp:J

    .line 5
    .line 6
    iput p3, p0, Lcom/google/android/projection/logging/Log$LogEntry;->severity:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/projection/logging/Log$LogEntry;->tag:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/projection/logging/Log$LogEntry;->message:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/google/android/projection/logging/Log$LogEntry;->threadId:J

    .line 13
    .line 14
    iput-boolean p8, p0, Lcom/google/android/projection/logging/Log$LogEntry;->mainThread:Z

    .line 15
    .line 16
    iput-object p9, p0, Lcom/google/android/projection/logging/Log$LogEntry;->exception:Ljava/lang/Throwable;

    .line 17
    .line 18
    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/projection/logging/Log$LogEntry;
    .locals 13
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v12, Lcom/google/android/projection/logging/Log$LogEntry;

    .line 10
    .line 11
    new-instance v2, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    int-to-long v8, v0

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    move v10, v0

    .line 27
    move-object v2, v12

    .line 28
    move v5, p0

    .line 29
    move-object v6, p1

    .line 30
    move-object v7, p2

    .line 31
    move-object/from16 v11, p3

    .line 32
    .line 33
    invoke-direct/range {v2 .. v11}, Lcom/google/android/projection/logging/Log$LogEntry;-><init>(JILjava/lang/String;Ljava/lang/String;JZLjava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-object v12
.end method
