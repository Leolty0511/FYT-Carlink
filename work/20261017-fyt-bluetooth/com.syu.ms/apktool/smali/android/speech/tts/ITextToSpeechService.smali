.class public interface abstract Landroid/speech/tts/ITextToSpeechService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getClientDefaultLanguage()[Ljava/lang/String;
.end method

.method public abstract getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getLanguage()[Ljava/lang/String;
.end method

.method public abstract isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract isSpeaking()Z
.end method

.method public abstract loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;)I
.end method

.method public abstract playSilence(Landroid/os/IBinder;JILandroid/os/Bundle;)I
.end method

.method public abstract setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
.end method

.method public abstract speak(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Bundle;)I
.end method

.method public abstract stop(Landroid/os/IBinder;)I
.end method

.method public abstract synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
.end method
