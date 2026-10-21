.class public interface abstract Lcom/android/ims/internal/uce/options/IOptionsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract cmdStatus(Lcom/android/ims/internal/uce/options/OptionsCmdStatus;)V
.end method

.method public abstract getVersionCb(Ljava/lang/String;)V
.end method

.method public abstract incomingOptions(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;I)V
.end method

.method public abstract serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
.end method

.method public abstract serviceUnavailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
.end method

.method public abstract sipResponseReceived(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsSipResponse;Lcom/android/ims/internal/uce/options/OptionsCapInfo;)V
.end method
