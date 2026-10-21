.class public Landroid/app/ActivityOptionsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptionsHelper$AnimationHelper;,
        Landroid/app/ActivityOptionsHelper$AnimationParameters;
    }
.end annotation


# static fields
.field private static final KEY_ANIM_TYPE_OVERRIDE:Ljava/lang/String; = "sprd:activity.animTypeOverride"

.field public static final TRANSIT_ANIM_TYPE_CUSTOM_SCALEUP:I = 0x1

.field private static final TRANSIT_ANIM_TYPE_MAX:I = 0x2

.field public static final TRANSIT_ANIM_TYPE_NORMAL:I = 0x0

.field private static sAnimationHelperLocal:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/app/ActivityOptionsHelper$AnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoaded:Z = false

.field private static sOverrideAnimationType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityOptionsHelper;->sAnimationHelperLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendAdditionalOptions(Landroid/app/ActivityOptions;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "sprd:activity.animTypeOverride"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Landroid/app/ActivityOptions;->animTypeOverride:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private static ensureConfigurations()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/app/ActivityOptionsHelper;->sLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x10e0077

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Landroid/app/ActivityOptionsHelper;->sOverrideAnimationType:I

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-lt v0, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    sput v0, Landroid/app/ActivityOptionsHelper;->sOverrideAnimationType:I

    .line 26
    .line 27
    :cond_2
    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Landroid/app/ActivityOptionsHelper;->sLoaded:Z

    .line 29
    .line 30
    return-void
.end method

.method public static getAnimationHelper()Landroid/app/ActivityOptionsHelper$AnimationHelper;
    .locals 1

    sget-object v0, Landroid/app/ActivityOptionsHelper;->sAnimationHelperLocal:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityOptionsHelper$AnimationHelper;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getOverrideAppTransitionAnimationType()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityOptionsHelper;->ensureConfigurations()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/app/ActivityOptionsHelper;->sOverrideAnimationType:I

    .line 5
    .line 6
    return v0
.end method

.method public static overrideOptsBundle(Landroid/view/View;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptionsHelper;->getOverrideAppTransitionAnimationType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    if-nez p0, :cond_2

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_2
    const-string v1, "android:activity.animType"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v1, v2, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {p0, v2, v2, p1, v1}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_3
    const-string/jumbo p0, "sprd:activity.animTypeOverride"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method public static setAnimationHelper(Landroid/app/ActivityOptions;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroid/app/ActivityOptionsHelper;->sAnimationHelperLocal:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/app/ActivityOptionsHelper$AnimationHelper;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/app/ActivityOptionsHelper$AnimationHelper;-><init>()V

    .line 13
    .line 14
    .line 15
    iget p0, p0, Landroid/app/ActivityOptions;->animTypeOverride:I

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptionsHelper$AnimationHelper;->setOverrideAnimationType(I)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Landroid/app/ActivityOptionsHelper;->sAnimationHelperLocal:Ljava/lang/ThreadLocal;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
