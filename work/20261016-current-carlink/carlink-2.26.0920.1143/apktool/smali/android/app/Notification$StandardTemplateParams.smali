.class Landroid/app/Notification$StandardTemplateParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandardTemplateParams"
.end annotation


# instance fields
.field ambient:Z

.field hasProgress:Z

.field text:Ljava/lang/CharSequence;

.field title:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Notification$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/app/Notification$StandardTemplateParams;-><init>()V

    return-void
.end method


# virtual methods
.method public final ambient(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const-string/jumbo v1, "must set ambient before text"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    .line 19
    .line 20
    return-object p0
.end method

.method public final fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v1, "android.title"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    .line 14
    .line 15
    invoke-static {p1, v1, v2}, Landroid/app/Notification$Builder;->access$4300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 20
    .line 21
    const-string v1, "android.bigText"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-boolean v2, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    :cond_0
    const-string v1, "android.text"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    .line 44
    .line 45
    invoke-static {p1, v1, v0}, Landroid/app/Notification$Builder;->access$4300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 50
    .line 51
    return-object p0
.end method

.method public final hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    return-object p0
.end method

.method public final reset()Landroid/app/Notification$StandardTemplateParams;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 11
    .line 12
    return-object p0
.end method

.method public final text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    return-object p0
.end method
