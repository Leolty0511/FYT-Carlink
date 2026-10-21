.class public interface abstract Landroid/net/INetworkStatsService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsService$Stub;
    }
.end annotation


# virtual methods
.method public abstract advisePersistThreshold(J)V
.end method

.method public abstract forceUpdate()V
.end method

.method public abstract getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
.end method

.method public abstract getMobileIfaces()[Ljava/lang/String;
.end method

.method public abstract getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
.end method

.method public abstract incrementOperationCount(III)V
.end method

.method public abstract openSession()Landroid/net/INetworkStatsSession;
.end method

.method public abstract setUidForeground(IZ)V
.end method
