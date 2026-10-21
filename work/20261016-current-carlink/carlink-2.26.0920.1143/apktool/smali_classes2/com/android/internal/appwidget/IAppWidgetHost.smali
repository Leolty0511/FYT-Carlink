.class public interface abstract Lcom/android/internal/appwidget/IAppWidgetHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetHost$Stub;
    }
.end annotation


# virtual methods
.method public abstract providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
.end method

.method public abstract providersChanged()V
.end method

.method public abstract updateAppWidget(ILandroid/widget/RemoteViews;)V
.end method

.method public abstract viewDataChanged(II)V
.end method
