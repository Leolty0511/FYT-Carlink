.class public final Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final mDisplayLabel:Ljava/lang/CharSequence;

.field private final mExtendedInfo:Ljava/lang/CharSequence;

.field private mPinned:Z

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mResolvedIntent:Landroid/content/Intent;

.field private final mSourceIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 5
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 6
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 7
    new-instance p2, Landroid/content/Intent;

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 8
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object p5

    invoke-virtual {p1, p4, p5}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p6

    :goto_0
    invoke-direct {p2, p6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p1, 0x3000000

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    iget-object p1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 11
    new-instance p3, Landroid/content/ComponentName;

    iget-object p4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p4, p4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {p3, p4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/content/Intent;I)V
    .locals 1

    .line 13
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 15
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object p1, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 17
    iget-object p1, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 18
    iget-object p1, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    iget-object p1, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 20
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 21
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 22
    iget-boolean p1, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    return-void
.end method

.method public static synthetic access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method


# virtual methods
.method public addAlternateSourceIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2

    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    iget v0, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget v3, v2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 34
    .line 35
    if-ne v0, v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    return-object v1

    .line 50
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    return-object v0
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hasDisplayIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPinned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    return v0
.end method

.method public setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPinned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    return-void
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    const/4 p1, 0x1

    return p1
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 p1, 0x0

    return p1
.end method
