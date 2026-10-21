.class Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ActivityChooserModel$OnChooseActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareActivityChooserModelPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Landroid/widget/ShareActionProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public onChooseActivity(Landroid/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/widget/ShareActionProvider;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/ShareActionProvider;->access$400(Landroid/widget/ShareActionProvider;)Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/widget/ShareActionProvider;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/widget/ShareActionProvider;->access$400(Landroid/widget/ShareActionProvider;)Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/widget/ShareActionProvider;

    .line 16
    .line 17
    invoke-interface {p1, v0, p2}, Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method
