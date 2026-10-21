.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IntentForwarderActivity$Injector;,
        Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;
    }
.end annotation


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile"

.field public static FORWARD_INTENT_TO_PARENT:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToParent"

.field public static TAG:Ljava/lang/String; = "IntentForwarderActivity"


# instance fields
.field private mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getManagedProfile()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " has been called, but there is no managed profile"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/16 v0, -0x2710

    .line 65
    .line 66
    return v0
.end method

.method private getProfileParent()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " has been called, but there is no parent"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/16 v0, -0x2710

    .line 42
    .line 43
    return v0

    .line 44
    :cond_0
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 45
    .line 46
    return v0
.end method

.method private sanitizeIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public canForward(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    const/high16 p1, 0x3000000

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "android.intent.action.CHOOSER"

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const-string p1, "android.intent.extra.INITIAL_INTENTS"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string p2, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    .line 38
    .line 39
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    const-string p1, "android.intent.extra.REPLACEMENT_EXTRAS"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p2, "A chooser intent with replacement extras cannot be forwarded to a different user"

    .line 54
    .line 55
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_1
    const-string p1, "android.intent.extra.INTENT"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/content/Intent;

    .line 66
    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    const-string p2, "Cannot forward a chooser intent with no extra android.intent.extra.INTENT"

    .line 72
    .line 73
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_2
    move-object p1, v0

    .line 78
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 97
    .line 98
    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 100
    .line 101
    invoke-interface {v3}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getUserId()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-interface {v3, p1, v2, v4, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    .line 110
    .line 111
    .line 112
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    return-object v0

    .line 116
    :catch_0
    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    const-string p2, "PackageManagerService is dead?"

    .line 119
    .line 120
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_5
    return-object v1
.end method

.method public createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;
    .locals 2

    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Lcom/android/internal/app/IntentForwarderActivity$1;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, -0x2710

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getProfileParent()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const v1, 0x1040237

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const v1, 0x1040238

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-class v1, Lcom/android/internal/app/IntentForwarderActivity;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v4, " cannot be called directly"

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move v0, v2

    .line 75
    move v1, v3

    .line 76
    :goto_0
    if-ne v0, v2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getUserId()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    const-string p1, "android.intent.action.CHOOSER"

    .line 93
    .line 94
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    const-string p1, "android.intent.extra.INTENT"

    .line 105
    .line 106
    invoke-virtual {v4, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/content/Intent;

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {v4, v2}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 117
    .line 118
    .line 119
    :goto_1
    iget-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 120
    .line 121
    invoke-interface {p1}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const/high16 v2, 0x10000

    .line 126
    .line 127
    invoke-virtual {p1, v4, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const/4 v2, 0x0

    .line 132
    const/4 v5, 0x1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 136
    .line 137
    if-eqz v6, :cond_5

    .line 138
    .line 139
    const-string v7, "android"

    .line 140
    .line 141
    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_5

    .line 148
    .line 149
    const-class v6, Lcom/android/internal/app/ResolverActivity;

    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 156
    .line 157
    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-nez v6, :cond_4

    .line 164
    .line 165
    const-class v6, Lcom/android/internal/app/ChooserActivity;

    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 172
    .line 173
    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_4

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    move p1, v2

    .line 183
    goto :goto_3

    .line 184
    :cond_5
    :goto_2
    move p1, v5

    .line 185
    :goto_3
    const/4 v6, 0x0

    .line 186
    :try_start_0
    invoke-virtual {p0, v4, v6, v2, v0}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :catch_0
    move-exception v0

    .line 191
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    goto :goto_4

    .line 216
    :catch_1
    const-string v2, "?"

    .line 217
    .line 218
    :goto_4
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 219
    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v7, "Unable to launch as UID "

    .line 223
    .line 224
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v3, " package "

    .line 231
    .line 232
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v2, ", while running in "

    .line 239
    .line 240
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .line 256
    .line 257
    :goto_5
    if-eqz p1, :cond_7

    .line 258
    .line 259
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_6
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 272
    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string/jumbo v4, "the intent: "

    .line 276
    .line 277
    .line 278
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string p1, " cannot be forwarded from user "

    .line 285
    .line 286
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string p1, " to user "

    .line 293
    .line 294
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    :cond_7
    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 308
    .line 309
    .line 310
    return-void
.end method
