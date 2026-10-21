.class public Lcom/android/server/AppWidgetBackupBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sAppWidgetService:Lcom/android/server/WidgetBackupProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWidgetParticipants(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->getWidgetParticipants(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static getWidgetState(Ljava/lang/String;I)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Lcom/android/server/WidgetBackupProvider;->getWidgetState(Ljava/lang/String;I)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static register(Lcom/android/server/WidgetBackupProvider;)V
    .locals 0

    sput-object p0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    return-void
.end method

.method public static restoreFinished(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->restoreFinished(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static restoreStarting(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->restoreStarting(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static restoreWidgetState(Ljava/lang/String;[BI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/WidgetBackupProvider;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
