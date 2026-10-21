.class public interface abstract Landroid/media/tv/ITvInputManagerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputManagerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInputAdded(Ljava/lang/String;)V
.end method

.method public abstract onInputRemoved(Ljava/lang/String;)V
.end method

.method public abstract onInputStateChanged(Ljava/lang/String;I)V
.end method

.method public abstract onInputUpdated(Ljava/lang/String;)V
.end method

.method public abstract onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
.end method
