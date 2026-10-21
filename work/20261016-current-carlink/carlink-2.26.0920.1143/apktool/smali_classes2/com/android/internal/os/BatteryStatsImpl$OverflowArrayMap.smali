.class public abstract Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OverflowArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OVERFLOW_NAME:Ljava/lang/String; = "*overflow*"


# instance fields
.field mActiveOverflow:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field mCurOverflow:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mLastCleanupTime:J

.field mLastClearTime:J

.field mLastOverflowFinishTime:J

.field mLastOverflowTime:J

.field final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field final mUid:I

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 12
    .line 13
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string v0, "*overflow*"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public cleanup()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTime:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 21
    .line 22
    const-string v2, "BatteryStatsImpl"

    .line 23
    .line 24
    const-string v3, "*overflow*"

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "Cleaning up with no active overflow, but have overflow entry "

    .line 39
    .line 40
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_1
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v1, "Cleaning up with active overflow, but no overflow entry: cur="

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, " map="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTime:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 16
    .line 17
    return-void
.end method

.method public getMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public abstract instantiateObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public startObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "*overflow*"

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/util/MutableInt;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v4, "Have active overflow "

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " but null overflow"

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v3, "BatteryStatsImpl"

    .line 53
    .line 54
    invoke-static {v3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_2
    iget p1, v0, Landroid/util/MutableInt;->value:I

    .line 69
    .line 70
    add-int/2addr p1, v1

    .line 71
    iput p1, v0, Landroid/util/MutableInt;->value:I

    .line 72
    .line 73
    return-object v3

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-lt v0, v3, :cond_6

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 87
    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 102
    .line 103
    if-nez v2, :cond_5

    .line 104
    .line 105
    new-instance v2, Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 111
    .line 112
    :cond_5
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 113
    .line 114
    new-instance v3, Landroid/util/MutableInt;

    .line 115
    .line 116
    invoke-direct {v3, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTime:J

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    return-object v0
.end method

.method public stopObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/util/MutableInt;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget v2, v0, Landroid/util/MutableInt;->value:I

    .line 31
    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    iput v2, v0, Landroid/util/MutableInt;->value:I

    .line 35
    .line 36
    if-gtz v2, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTime:J

    .line 48
    .line 49
    :cond_2
    return-object v1

    .line 50
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "Unable to find object for "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, " in uid "

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " mapsize="

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, " activeoverflow="

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, " curoverflow="

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTime:J

    .line 112
    .line 113
    const-wide/16 v5, 0x0

    .line 114
    .line 115
    cmp-long p1, v3, v5

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    const-string p1, " lastOverflowTime="

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTime:J

    .line 125
    .line 126
    sub-long/2addr v3, v1

    .line 127
    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTime:J

    .line 131
    .line 132
    cmp-long p1, v3, v5

    .line 133
    .line 134
    if-eqz p1, :cond_5

    .line 135
    .line 136
    const-string p1, " lastOverflowFinishTime="

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTime:J

    .line 142
    .line 143
    sub-long/2addr v3, v1

    .line 144
    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTime:J

    .line 148
    .line 149
    cmp-long p1, v3, v5

    .line 150
    .line 151
    if-eqz p1, :cond_6

    .line 152
    .line 153
    const-string p1, " lastClearTime="

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTime:J

    .line 159
    .line 160
    sub-long/2addr v3, v1

    .line 161
    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTime:J

    .line 165
    .line 166
    cmp-long p1, v3, v5

    .line 167
    .line 168
    if-eqz p1, :cond_7

    .line 169
    .line 170
    const-string p1, " lastCleanupTime="

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTime:J

    .line 176
    .line 177
    sub-long/2addr v3, v1

    .line 178
    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    const-string p1, "BatteryStatsImpl"

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    const/4 p1, 0x0

    .line 191
    return-object p1
.end method
