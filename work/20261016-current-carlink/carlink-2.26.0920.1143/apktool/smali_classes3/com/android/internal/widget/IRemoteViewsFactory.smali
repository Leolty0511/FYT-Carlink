.class public interface abstract Lcom/android/internal/widget/IRemoteViewsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItemId(I)J
.end method

.method public abstract getLoadingView()Landroid/widget/RemoteViews;
.end method

.method public abstract getViewAt(I)Landroid/widget/RemoteViews;
.end method

.method public abstract getViewTypeCount()I
.end method

.method public abstract hasStableIds()Z
.end method

.method public abstract isCreated()Z
.end method

.method public abstract onDataSetChanged()V
.end method

.method public abstract onDataSetChangedAsync()V
.end method

.method public abstract onDestroy(Landroid/content/Intent;)V
.end method
