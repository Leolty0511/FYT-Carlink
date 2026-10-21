.class public interface abstract Landroid/os/IInstalld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$Stub;
    }
.end annotation


# virtual methods
.method public abstract backupApp(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
.end method

.method public abstract clearAppProfiles(Ljava/lang/String;)V
.end method

.method public abstract copyFileToDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract copySystemProfile(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
.end method

.method public abstract createOatDir(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract createUserData(Ljava/lang/String;III)V
.end method

.method public abstract deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
.end method

.method public abstract destroyAppProfiles(Ljava/lang/String;)V
.end method

.method public abstract destroyUserData(Ljava/lang/String;II)V
.end method

.method public abstract dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract dumpProfiles(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract fixupAppData(Ljava/lang/String;I)V
.end method

.method public abstract freeCache(Ljava/lang/String;JJI)V
.end method

.method public abstract getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J
.end method

.method public abstract getExternalSize(Ljava/lang/String;II[I)[J
.end method

.method public abstract getUserSize(Ljava/lang/String;II[I)[J
.end method

.method public abstract idmap(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract invalidateMounts()V
.end method

.method public abstract isQuotaSupported(Ljava/lang/String;)Z
.end method

.method public abstract linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract markBootComplete(Ljava/lang/String;)V
.end method

.method public abstract mergeProfiles(ILjava/lang/String;)Z
.end method

.method public abstract migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method public abstract reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract removeIdmap(Ljava/lang/String;)V
.end method

.method public abstract restoreApp(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract rmPackageDir(Ljava/lang/String;)V
.end method

.method public abstract rmdex(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAppQuota(Ljava/lang/String;IIJ)V
.end method
