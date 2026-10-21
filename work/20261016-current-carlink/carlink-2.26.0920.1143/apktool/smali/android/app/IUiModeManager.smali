.class public interface abstract Landroid/app/IUiModeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract disableCarMode(I)V
.end method

.method public abstract enableCarMode(I)V
.end method

.method public abstract getCurrentModeType()I
.end method

.method public abstract getNightMode()I
.end method

.method public abstract isNightModeLocked()Z
.end method

.method public abstract isUiModeLocked()Z
.end method

.method public abstract setNightMode(I)V
.end method
