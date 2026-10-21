.class public interface abstract Lcom/android/ims/internal/IImsUtEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUtEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract changeBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getCallForwardingOption(IIILjava/lang/String;)I
.end method

.method public abstract queryFacilityLock(ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract setCallForwardingOption(IIIILjava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract setFacilityLock(ILjava/lang/String;ZLjava/lang/String;I)I
.end method

.method public abstract setListenerEx(ILcom/android/ims/internal/IImsUtListenerEx;)V
.end method
