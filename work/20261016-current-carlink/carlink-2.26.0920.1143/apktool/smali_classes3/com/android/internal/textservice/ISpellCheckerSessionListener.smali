.class public interface abstract Lcom/android/internal/textservice/ISpellCheckerSessionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
.end method

.method public abstract onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
.end method
