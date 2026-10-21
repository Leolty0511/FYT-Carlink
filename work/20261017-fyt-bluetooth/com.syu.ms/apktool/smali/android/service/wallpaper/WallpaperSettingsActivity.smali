.class public Landroid/service/wallpaper/WallpaperSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# static fields
.field public static final EXTRA_PREVIEW_MODE:Ljava/lang/String; = "android.service.wallpaper.PREVIEW_MODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
