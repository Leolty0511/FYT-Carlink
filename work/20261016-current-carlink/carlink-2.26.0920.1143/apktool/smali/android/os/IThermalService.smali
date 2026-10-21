.class public interface abstract Landroid/os/IThermalService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isThrottling()Z
.end method

.method public abstract notifyThrottling(ZLandroid/os/Temperature;)V
.end method

.method public abstract registerThermalEventListener(Landroid/os/IThermalEventListener;)V
.end method

.method public abstract unregisterThermalEventListener(Landroid/os/IThermalEventListener;)V
.end method
