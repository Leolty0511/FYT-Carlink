.class public interface abstract Landroid/service/quicksettings/IQSService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/IQSService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;
.end method

.method public abstract isLocked()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract onDialogHidden(Landroid/os/IBinder;)V
.end method

.method public abstract onShowDialog(Landroid/os/IBinder;)V
.end method

.method public abstract onStartActivity(Landroid/os/IBinder;)V
.end method

.method public abstract onStartSuccessful(Landroid/os/IBinder;)V
.end method

.method public abstract startUnlockAndRun(Landroid/os/IBinder;)V
.end method

.method public abstract updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
.end method

.method public abstract updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
.end method
