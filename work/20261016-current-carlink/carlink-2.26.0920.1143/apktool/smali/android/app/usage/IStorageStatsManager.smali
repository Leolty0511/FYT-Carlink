.class public interface abstract Landroid/app/usage/IStorageStatsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IStorageStatsManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
.end method

.method public abstract getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
.end method

.method public abstract queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
.end method

.method public abstract queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
.end method

.method public abstract queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
.end method
