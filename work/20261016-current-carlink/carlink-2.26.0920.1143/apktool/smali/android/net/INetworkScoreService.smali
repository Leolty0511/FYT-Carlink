.class public interface abstract Landroid/net/INetworkScoreService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkScoreService$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearScores()Z
.end method

.method public abstract disableScoring()V
.end method

.method public abstract getActiveScorer()Landroid/net/NetworkScorerAppData;
.end method

.method public abstract getActiveScorerPackage()Ljava/lang/String;
.end method

.method public abstract getAllValidScorers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCallerActiveScorer(I)Z
.end method

.method public abstract registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
.end method

.method public abstract requestScores([Landroid/net/NetworkKey;)Z
.end method

.method public abstract setActiveScorer(Ljava/lang/String;)Z
.end method

.method public abstract unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
.end method

.method public abstract updateScores([Landroid/net/ScoredNetwork;)Z
.end method
