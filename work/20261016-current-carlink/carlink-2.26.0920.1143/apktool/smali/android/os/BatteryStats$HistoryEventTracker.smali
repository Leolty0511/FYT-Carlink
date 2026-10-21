.class public final Landroid/os/BatteryStats$HistoryEventTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryEventTracker"
.end annotation


# instance fields
.field private final mActiveEvents:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x16

    .line 5
    .line 6
    new-array v0, v0, [Ljava/util/HashMap;

    .line 7
    .line 8
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getStateForEvent(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public removeEvents(I)V
    .locals 2

    const v0, -0xc001

    and-int/2addr p1, v0

    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method public updateState(ILjava/lang/String;II)Z
    .locals 3

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    and-int/2addr v0, p1

    .line 5
    const v1, -0xc001

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    and-int/2addr p1, v1

    .line 12
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    .line 13
    .line 14
    aget-object v0, v0, p1

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    .line 24
    .line 25
    aput-object v0, v1, p1

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/util/SparseIntArray;

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    new-instance p1, Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-ltz p2, :cond_2

    .line 48
    .line 49
    return v2

    .line 50
    :cond_2
    invoke-virtual {p1, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    and-int/lit16 p4, p1, 0x4000

    .line 55
    .line 56
    if-eqz p4, :cond_7

    .line 57
    .line 58
    and-int/2addr p1, v1

    .line 59
    iget-object p4, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    .line 60
    .line 61
    aget-object p1, p4, p1

    .line 62
    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    return v2

    .line 66
    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    check-cast p4, Landroid/util/SparseIntArray;

    .line 71
    .line 72
    if-nez p4, :cond_5

    .line 73
    .line 74
    return v2

    .line 75
    :cond_5
    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    if-gez p3, :cond_6

    .line 80
    .line 81
    return v2

    .line 82
    :cond_6
    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-gtz p3, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_7
    :goto_0
    const/4 p1, 0x1

    .line 95
    return p1
.end method
