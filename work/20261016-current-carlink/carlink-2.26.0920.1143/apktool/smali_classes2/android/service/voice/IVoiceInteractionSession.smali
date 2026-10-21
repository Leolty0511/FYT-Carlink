.class public interface abstract Landroid/service/voice/IVoiceInteractionSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionSession$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeSystemDialogs()V
.end method

.method public abstract destroy()V
.end method

.method public abstract handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
.end method

.method public abstract handleScreenshot(Landroid/graphics/Bitmap;)V
.end method

.method public abstract hide()V
.end method

.method public abstract onLockscreenShown()V
.end method

.method public abstract show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
.end method

.method public abstract taskFinished(Landroid/content/Intent;I)V
.end method

.method public abstract taskStarted(Landroid/content/Intent;I)V
.end method
