.class public final Landroid/content/pm/AuxiliaryResolveInfo;
.super Landroid/content/IntentFilter;
.source "SourceFile"


# instance fields
.field public final failureIntent:Landroid/content/Intent;

.field public final installFailureActivity:Landroid/content/ComponentName;

.field public final needsPhaseTwo:Z

.field public final packageName:Ljava/lang/String;

.field public final resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

.field public final splitName:Ljava/lang/String;

.field public final token:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Landroid/content/pm/InstantAppResolveInfo;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 2
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 3
    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->packageName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->splitName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 7
    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result p1

    iput p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->versionCode:I

    .line 8
    iput-object p6, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->packageName:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 13
    iput-object p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->splitName:Ljava/lang/String;

    .line 14
    iput p4, p0, Landroid/content/pm/AuxiliaryResolveInfo;->versionCode:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 16
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 18
    iput-object p5, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    return-void
.end method
