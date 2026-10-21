.class public Landroid/content/pm/LauncherActivityInfoEx;
.super Landroid/content/pm/LauncherActivityInfo;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResolveInfo:Landroid/content/pm/ActivityInfo;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/os/UserHandle;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/content/pm/LauncherActivityInfoEx;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/content/pm/LauncherActivityInfoEx;->mResolveInfo:Landroid/content/pm/ActivityInfo;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroid/content/pm/LauncherActivityInfoEx;->mPm:Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/pm/LauncherActivityInfoEx;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroid/content/pm/AppCloneUserInfo;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/content/pm/AppCloneUserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/pm/AppCloneUserInfo;->isAppClone()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "-"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfoEx;->mResolveInfo:Landroid/content/pm/ActivityInfo;

    .line 42
    .line 43
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfoEx;->mPm:Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoEx;->mResolveInfo:Landroid/content/pm/ActivityInfo;

    .line 58
    .line 59
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfoEx;->mPm:Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

.method public getUserIfProfile(I)Landroid/content/pm/UserInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfoEx;->getUserManager()Landroid/os/UserManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 28
    .line 29
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 30
    .line 31
    if-ne v2, p1, :cond_0

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoEx;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoEx;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoEx;->mUserManager:Landroid/os/UserManager;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoEx;->mUserManager:Landroid/os/UserManager;

    .line 14
    .line 15
    return-object v0
.end method
