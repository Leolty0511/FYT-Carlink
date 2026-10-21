.class public final Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field public static final EXTRA_PACKAGE_TITLE:Ljava/lang/String; = "package_title"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.notification.NotificationAccessConfirmationActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launcherIntent(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "user_id"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "component_name"

    .line 20
    .line 21
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "package_title"

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
