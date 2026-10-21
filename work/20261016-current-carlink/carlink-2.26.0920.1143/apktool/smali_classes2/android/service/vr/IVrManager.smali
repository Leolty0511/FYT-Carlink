.class public interface abstract Landroid/service/vr/IVrManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IVrManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPersistentVrModeEnabled()Z
.end method

.method public abstract getVr2dDisplayId()I
.end method

.method public abstract getVrModeState()Z
.end method

.method public abstract registerListener(Landroid/service/vr/IVrStateCallbacks;)V
.end method

.method public abstract registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
.end method

.method public abstract setAndBindCompositor(Ljava/lang/String;)V
.end method

.method public abstract setPersistentVrModeEnabled(Z)V
.end method

.method public abstract setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
.end method

.method public abstract unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
.end method

.method public abstract unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
.end method
