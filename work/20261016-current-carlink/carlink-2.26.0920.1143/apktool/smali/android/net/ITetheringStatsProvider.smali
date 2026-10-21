.class public interface abstract Landroid/net/ITetheringStatsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ITetheringStatsProvider$Stub;
    }
.end annotation


# static fields
.field public static final QUOTA_UNLIMITED:I = -0x1


# virtual methods
.method public abstract getTetherStats(I)Landroid/net/NetworkStats;
.end method

.method public abstract setInterfaceQuota(Ljava/lang/String;J)V
.end method
