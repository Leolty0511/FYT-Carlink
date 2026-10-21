.class public interface abstract Landroid/os/IBatteryPropertiesRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IBatteryPropertiesRegistrar$Stub;
    }
.end annotation


# virtual methods
.method public abstract getProperty(ILandroid/os/BatteryProperty;)I
.end method

.method public abstract registerListener(Landroid/os/IBatteryPropertiesListener;)V
.end method

.method public abstract scheduleUpdate()V
.end method

.method public abstract unregisterListener(Landroid/os/IBatteryPropertiesListener;)V
.end method
