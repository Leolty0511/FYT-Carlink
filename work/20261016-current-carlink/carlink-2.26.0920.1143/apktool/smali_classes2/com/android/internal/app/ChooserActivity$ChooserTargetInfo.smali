.class final Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChooserTargetInfo"
.end annotation


# instance fields
.field private final mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mBadgeContentDescription:Ljava/lang/CharSequence;

.field private mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private final mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final mFillInFlags:I

.field private final mFillInIntent:Landroid/content/Intent;

.field private final mModifiedScore:F

.field private final mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;Landroid/content/Intent;I)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    iget-object p1, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 21
    iget-object p1, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 22
    iget-object p1, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 23
    iget-object p1, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    iget-object p1, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 25
    iget-object p1, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 27
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    .line 28
    iget p1, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 4
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 5
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 7
    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p4, :cond_0

    .line 8
    iget-object v1, p4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 10
    iget-object v2, p4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 11
    iget-object p4, p4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 14
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 16
    :goto_1
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 17
    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    return-void
.end method

.method private getBaseIntentToSend()Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v1, "ChooserActivity"

    .line 8
    .line 9
    const-string v2, "ChooserTargetInfo: no base intent available to send"

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$500(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 37
    .line 38
    .line 39
    move-object v0, v1

    .line 40
    :goto_0
    return-object v0
.end method


# virtual methods
.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2

    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiedScore()F
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    :goto_0
    return-object v0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroid/content/ComponentName;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 17
    .line 18
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 19
    .line 20
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public isPinned()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->isPinned()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ChooserTargets should be started as caller."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getBaseIntentToSend()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    move v1, v3

    .line 57
    :cond_1
    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 58
    .line 59
    .line 60
    return v3
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ChooserTargets should be started as caller."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
