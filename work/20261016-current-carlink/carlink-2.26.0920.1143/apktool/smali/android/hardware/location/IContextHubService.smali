.class public interface abstract Landroid/hardware/location/IContextHubService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubService$Stub;
    }
.end annotation


# virtual methods
.method public abstract findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
.end method

.method public abstract getContextHubHandles()[I
.end method

.method public abstract getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
.end method

.method public abstract getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
.end method

.method public abstract loadNanoApp(ILandroid/hardware/location/NanoApp;)I
.end method

.method public abstract registerCallback(Landroid/hardware/location/IContextHubCallback;)I
.end method

.method public abstract sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
.end method

.method public abstract unloadNanoApp(I)I
.end method
