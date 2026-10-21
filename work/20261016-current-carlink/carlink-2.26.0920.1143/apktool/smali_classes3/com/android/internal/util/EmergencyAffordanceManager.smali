.class public Lcom/android/internal/util/EmergencyAffordanceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMERGENCY_CALL_NUMBER_SETTING:Ljava/lang/String; = "emergency_affordance_number"

.field public static final ENABLED:Z = true

.field private static final FORCE_EMERGENCY_AFFORDANCE_SETTING:Ljava/lang/String; = "force_emergency_affordance"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private forceShowing()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_emergency_affordance"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x1040135

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v1, "emergency_affordance_number"

    .line 21
    .line 22
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    :cond_0
    const-string p0, "tel"

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {p0, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_affordance_needed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static performEmergencyCall(Landroid/content/Context;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public needsEmergencyAffordance()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->forceShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->isEmergencyAffordanceNeeded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final performEmergencyCall()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall(Landroid/content/Context;)V

    return-void
.end method
