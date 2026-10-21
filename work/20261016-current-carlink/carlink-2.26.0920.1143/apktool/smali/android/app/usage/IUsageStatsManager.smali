.class public interface abstract Landroid/app/usage/IUsageStatsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IUsageStatsManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract isAppInactive(Ljava/lang/String;I)Z
.end method

.method public abstract onCarrierPrivilegedAppsChanged()V
.end method

.method public abstract queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
.end method

.method public abstract queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAppInactive(Ljava/lang/String;ZI)V
.end method

.method public abstract whitelistAppTemporarily(Ljava/lang/String;JI)V
.end method
