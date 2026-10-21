.class public interface abstract Landroid/content/pm/IShortcutService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IShortcutService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
.end method

.method public abstract applyRestore([BI)V
.end method

.method public abstract createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
.end method

.method public abstract disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
.end method

.method public abstract enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
.end method

.method public abstract getBackupPayload(I)[B
.end method

.method public abstract getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getIconMaxDimensions(Ljava/lang/String;I)I
.end method

.method public abstract getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
.end method

.method public abstract getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getRateLimitResetTime(Ljava/lang/String;I)J
.end method

.method public abstract getRemainingCallCount(Ljava/lang/String;I)I
.end method

.method public abstract isRequestPinItemSupported(II)Z
.end method

.method public abstract onApplicationActive(Ljava/lang/String;I)V
.end method

.method public abstract removeAllDynamicShortcuts(Ljava/lang/String;I)V
.end method

.method public abstract removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
.end method

.method public abstract reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
.end method

.method public abstract resetThrottling()V
.end method

.method public abstract setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
.end method

.method public abstract updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
.end method
