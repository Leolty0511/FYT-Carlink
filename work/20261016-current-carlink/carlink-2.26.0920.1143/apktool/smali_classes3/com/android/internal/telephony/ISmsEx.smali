.class public interface abstract Lcom/android/internal/telephony/ISmsEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISmsEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract commonInterfaceForMessaging(IJLjava/lang/String;[I)Z
.end method

.method public abstract copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)I
.end method

.method public abstract getSimCapacityForSubscriber(I)Ljava/lang/String;
.end method

.method public abstract setCMMSForSubscriber(II)V
.end method

.method public abstract setPropertyForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
.end method
