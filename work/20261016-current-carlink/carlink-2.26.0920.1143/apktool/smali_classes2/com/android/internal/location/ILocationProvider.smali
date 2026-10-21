.class public interface abstract Lcom/android/internal/location/ILocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/ILocationProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract getProperties()Lcom/android/internal/location/ProviderProperties;
.end method

.method public abstract getStatus(Landroid/os/Bundle;)I
.end method

.method public abstract getStatusUpdateTime()J
.end method

.method public abstract sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
.end method
