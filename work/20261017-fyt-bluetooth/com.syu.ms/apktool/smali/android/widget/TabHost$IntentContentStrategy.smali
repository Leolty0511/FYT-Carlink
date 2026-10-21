.class Landroid/widget/TabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field public final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroid/widget/TabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;Landroid/widget/TabHost$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost$IntentContentStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    iget-object v0, v0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Landroid/widget/TabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v1, v0, :cond_1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    invoke-static {v1}, Landroid/widget/TabHost;->access$100(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    iput-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 10
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 11
    :cond_2
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v0

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tabClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
