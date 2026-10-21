.class public interface abstract Lcom/android/internal/telephony/vowifisms/IVowifiSmsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/vowifisms/IVowifiSmsListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNewSmsDetected(Ljava/lang/String;)V
.end method

.method public abstract onNewSmsStatusReportDetected(Ljava/lang/String;)V
.end method

.method public abstract onReportVowifiSmsMemoryStatusResponse(Z)V
.end method

.method public abstract onSendSmsResponseDetected(ILjava/lang/String;II)V
.end method
