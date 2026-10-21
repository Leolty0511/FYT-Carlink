.class public interface abstract Lcom/android/internal/appwidget/IAppWidgetService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetService$Stub;
    }
.end annotation


# virtual methods
.method public abstract allocateAppWidgetId(Ljava/lang/String;I)I
.end method

.method public abstract bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
.end method

.method public abstract bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
.end method

.method public abstract createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
.end method

.method public abstract deleteAllHosts()V
.end method

.method public abstract deleteAppWidgetId(Ljava/lang/String;I)V
.end method

.method public abstract deleteHost(Ljava/lang/String;I)V
.end method

.method public abstract getAppWidgetIds(Landroid/content/ComponentName;)[I
.end method

.method public abstract getAppWidgetIdsForHost(Ljava/lang/String;I)[I
.end method

.method public abstract getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;
.end method

.method public abstract getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
.end method

.method public abstract getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract hasBindAppWidgetPermission(Ljava/lang/String;I)Z
.end method

.method public abstract isBoundWidgetPackage(Ljava/lang/String;I)Z
.end method

.method public abstract isRequestPinAppWidgetSupported()Z
.end method

.method public abstract notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
.end method

.method public abstract partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
.end method

.method public abstract requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
.end method

.method public abstract setBindAppWidgetPermission(Ljava/lang/String;IZ)V
.end method

.method public abstract startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract stopListening(Ljava/lang/String;I)V
.end method

.method public abstract unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
.end method

.method public abstract updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
.end method

.method public abstract updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
.end method
