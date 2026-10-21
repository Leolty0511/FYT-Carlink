.class public interface abstract Lcom/android/internal/app/IMediaContainerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IMediaContainerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J
.end method

.method public abstract clearDirectory(Ljava/lang/String;)V
.end method

.method public abstract copyPackage(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I
.end method

.method public abstract copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
.end method

.method public abstract getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
.end method
