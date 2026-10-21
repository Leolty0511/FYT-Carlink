.class public Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RpmStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerStateSubsystem"
.end annotation


# instance fields
.field public mStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/RpmStats$PowerStateElement;",
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
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->mStates:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public putState(Ljava/lang/String;JI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->mStates:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/internal/os/RpmStats$PowerStateElement;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->mStates:Ljava/util/Map;

    .line 12
    .line 13
    new-instance v1, Lcom/android/internal/os/RpmStats$PowerStateElement;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p2, p3, p4, v2}, Lcom/android/internal/os/RpmStats$PowerStateElement;-><init>(JILcom/android/internal/os/RpmStats$1;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-wide p2, v0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mTimeMs:J

    .line 24
    .line 25
    iput p4, v0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mCount:I

    .line 26
    .line 27
    :goto_0
    return-void
.end method
