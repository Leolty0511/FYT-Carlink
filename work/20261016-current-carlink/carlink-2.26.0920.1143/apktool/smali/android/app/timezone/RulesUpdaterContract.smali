.class public final Landroid/app/timezone/RulesUpdaterContract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_TRIGGER_RULES_UPDATE_CHECK:Ljava/lang/String; = "com.android.intent.action.timezone.TRIGGER_RULES_UPDATE_CHECK"

.field public static final EXTRA_CHECK_TOKEN:Ljava/lang/String; = "com.android.intent.extra.timezone.CHECK_TOKEN"

.field public static final TRIGGER_TIME_ZONE_RULES_CHECK_PERMISSION:Ljava/lang/String; = "android.permission.TRIGGER_TIME_ZONE_RULES_CHECK"

.field public static final UPDATE_TIME_ZONE_RULES_PERMISSION:Ljava/lang/String; = "android.permission.UPDATE_TIME_ZONE_RULES"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUpdaterIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.android.intent.action.timezone.TRIGGER_RULES_UPDATE_CHECK"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const/16 p0, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static sendBroadcast(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/app/timezone/RulesUpdaterContract;->createUpdaterIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.android.intent.extra.timezone.CHECK_TOKEN"

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "android.permission.UPDATE_TIME_ZONE_RULES"

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
