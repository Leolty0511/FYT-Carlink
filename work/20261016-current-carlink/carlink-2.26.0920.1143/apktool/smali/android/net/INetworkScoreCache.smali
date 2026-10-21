.class public interface abstract Landroid/net/INetworkScoreCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkScoreCache$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearScores()V
.end method

.method public abstract updateScores(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation
.end method
