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
.method public abstract clearWallpaper(Ljava/lang/String;II)V
.end method

.method public abstract getHeightHint()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getWallpaperColors(II)Landroid/app/WallpaperColors;
.end method

.method public abstract getWallpaperIdForUser(II)I
.end method

.method public abstract getWallpaperInfo(I)Landroid/app/WallpaperInfo;
.end method

.method public abstract getWidthHint()I
.end method

.method public abstract hasNamedWallpaper(Ljava/lang/String;)Z
.end method

.method public abstract isSetWallpaperAllowed(Ljava/lang/String;)Z
.end method

.method public abstract isWallpaperBackupEligible(II)Z
.end method

.method public abstract isWallpaperSupported(Ljava/lang/String;)Z
.end method

.method public abstract registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;I)V
.end method

.method public abstract setDimensionHints(IILjava/lang/String;)V
.end method

.method public abstract setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
.end method

.method public abstract setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
.end method

.method public abstract setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract setWallpaperComponent(Landroid/content/ComponentName;)V
.end method

.method public abstract setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
.end method

.method public abstract settingsRestored()V
.end method

.method public abstract unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;I)V
.end method
