.class public interface abstract Landroid/content/pm/IPinItemRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPinItemRequest$Stub;
    }
.end annotation


# virtual methods
.method public abstract accept(Landroid/os/Bundle;)Z
.end method

.method public abstract getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getShortcutInfo()Landroid/content/pm/ShortcutInfo;
.end method

.method public abstract isValid()Z
.end method
