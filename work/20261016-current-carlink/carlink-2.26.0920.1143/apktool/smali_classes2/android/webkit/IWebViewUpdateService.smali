.class public interface abstract Landroid/webkit/IWebViewUpdateService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/IWebViewUpdateService$Stub;
    }
.end annotation


# virtual methods
.method public abstract changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract enableFallbackLogic(Z)V
.end method

.method public abstract enableMultiProcess(Z)V
.end method

.method public abstract getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
.end method

.method public abstract getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
.end method

.method public abstract getCurrentWebViewPackageName()Ljava/lang/String;
.end method

.method public abstract getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
.end method

.method public abstract isFallbackPackage(Ljava/lang/String;)Z
.end method

.method public abstract isMultiProcessEnabled()Z
.end method

.method public abstract notifyRelroCreationCompleted()V
.end method

.method public abstract waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
.end method
