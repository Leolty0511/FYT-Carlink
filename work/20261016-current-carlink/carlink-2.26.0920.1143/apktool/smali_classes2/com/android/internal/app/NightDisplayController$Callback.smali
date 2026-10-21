.class public interface abstract Lcom/android/internal/app/NightDisplayController$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NightDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onActivated(Z)V
.end method

.method public abstract onAutoModeChanged(I)V
.end method

.method public abstract onColorTemperatureChanged(I)V
.end method

.method public abstract onCustomEndTimeChanged(Ljava/time/LocalTime;)V
.end method

.method public abstract onCustomStartTimeChanged(Ljava/time/LocalTime;)V
.end method

.method public abstract onDisplayColorModeChanged(I)V
.end method
