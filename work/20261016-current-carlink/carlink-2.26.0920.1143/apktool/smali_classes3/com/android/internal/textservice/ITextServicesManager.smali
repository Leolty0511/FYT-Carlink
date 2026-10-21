.class public interface abstract Lcom/android/internal/textservice/ITextServicesManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ITextServicesManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
.end method

.method public abstract getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
.end method

.method public abstract getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
.end method

.method public abstract getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
.end method

.method public abstract getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
.end method

.method public abstract isSpellCheckerEnabled()Z
.end method
