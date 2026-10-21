.class public interface abstract Lcom/android/internal/telephony/vowifisms/IVowifiSms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/vowifisms/IVowifiSms$Stub;
    }
.end annotation


# virtual methods
.method public abstract acknowledgeIncomingVowifiSmsWithPdu(ZLjava/lang/String;)V
.end method

.method public abstract acknowledgeLastIncomingVowifiSms(ZI)V
.end method

.method public abstract addListener(Ljava/lang/String;Lcom/android/internal/telephony/vowifisms/IVowifiSmsListener;)V
.end method

.method public abstract removeListener(Ljava/lang/String;)V
.end method

.method public abstract reportVowifiSmsMemoryStatus(Z)V
.end method

.method public abstract sendImsVowifiSms(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end method
