.class public Lcom/syu/bt/util/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public bCanUninstall:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public intent:Landroid/content/Intent;

.field public packageName:Ljava/lang/String;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/util/AppInfo;->bCanUninstall:Z

    .line 7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    if-ne p0, p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    instance-of v3, p1, Lcom/syu/bt/util/AppInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 27
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 29
    check-cast v0, Lcom/syu/bt/util/AppInfo;

    .line 30
    .local v0, "that":Lcom/syu/bt/util/AppInfo;
    iget-object v3, p0, Lcom/syu/bt/util/AppInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/syu/bt/util/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 31
    iget-object v3, p0, Lcom/syu/bt/util/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 32
    iget-object v4, v0, Lcom/syu/bt/util/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 30
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v3, p0, Lcom/syu/bt/util/AppInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/syu/bt/util/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 39
    .local v1, "result":I
    :goto_0
    iget-object v3, p0, Lcom/syu/bt/util/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "name":Ljava/lang/String;
    mul-int/lit8 v3, v1, 0x1f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v1, v3, v2

    .line 41
    return v1

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "result":I
    :cond_1
    move v1, v2

    .line 38
    goto :goto_0
.end method

.method public final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "launchFlags"    # I

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/syu/bt/util/AppInfo;->intent:Landroid/content/Intent;

    .line 16
    iget-object v0, p0, Lcom/syu/bt/util/AppInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v0, p0, Lcom/syu/bt/util/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 18
    iget-object v0, p0, Lcom/syu/bt/util/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 19
    return-void
.end method
