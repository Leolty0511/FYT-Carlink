.class Lcom/android/internal/widget/SwipeDismissLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SwipeDismissLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SwipeDismissLayout;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/internal/widget/SwipeDismissLayout$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;->lambda$onReceive$0()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$000(Lcom/android/internal/widget/SwipeDismissLayout;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$100(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$200(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    new-instance p2, Lcom/android/internal/widget/d;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/internal/widget/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
