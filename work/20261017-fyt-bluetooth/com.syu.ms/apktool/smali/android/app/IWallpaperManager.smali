.class public interface abstract Landroid/app/IWallpaperManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearWallpaper()V
.end method

.method public abstract getHeightHint()I
.end method

.method public abstract getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getWallpaperInfo()Landroid/app/WallpaperInfo;
.end method

.method public abstract getWidthHint()I
.end method

.method public abstract hasNamedWallpaper(Ljava/lang/String;)Z
.end method

.method public abstract setDimensionHints(II)V
.end method

.method public abstract setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract setWallpaperComponent(Landroid/content/ComponentName;)V
.end method
