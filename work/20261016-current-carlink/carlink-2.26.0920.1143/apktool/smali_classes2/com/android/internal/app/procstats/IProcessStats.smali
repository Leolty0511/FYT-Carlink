.class public interface abstract Lcom/android/internal/app/procstats/IProcessStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/IProcessStats$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCurrentMemoryState()I
.end method

.method public abstract getCurrentStats(Ljava/util/List;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation
.end method

.method public abstract getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
.end method
