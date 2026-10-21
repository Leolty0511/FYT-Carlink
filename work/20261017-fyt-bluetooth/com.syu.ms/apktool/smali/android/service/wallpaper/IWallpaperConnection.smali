.class public interface abstract Landroid/service/wallpaper/IWallpaperConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
.end method

.method public abstract engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
.end method

.method public abstract setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method
