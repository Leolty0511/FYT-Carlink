.class public interface abstract Landroid/content/IClipboard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IClipboard$Stub;
    }
.end annotation


# virtual methods
.method public abstract addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
.end method

.method public abstract getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
.end method

.method public abstract getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
.end method

.method public abstract hasClipboardText(Ljava/lang/String;)Z
.end method

.method public abstract hasPrimaryClip(Ljava/lang/String;)Z
.end method

.method public abstract removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
.end method

.method public abstract setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
.end method
