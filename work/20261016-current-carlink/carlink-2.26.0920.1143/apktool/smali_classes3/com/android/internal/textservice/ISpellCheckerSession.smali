.class public interface abstract Lcom/android/internal/textservice/ISpellCheckerSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ISpellCheckerSession$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onClose()V
.end method

.method public abstract onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
.end method

.method public abstract onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
.end method
