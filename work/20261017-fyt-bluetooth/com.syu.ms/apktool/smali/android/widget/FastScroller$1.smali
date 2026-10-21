.class Landroid/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/FastScroller;


# direct methods
.method public constructor <init>(Landroid/widget/FastScroller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    invoke-static {v0}, Landroid/widget/FastScroller;->access$000(Landroid/widget/FastScroller;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    invoke-static {v0}, Landroid/widget/FastScroller;->access$100(Landroid/widget/FastScroller;)V

    .line 3
    iget-object v0, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    invoke-static {v0}, Landroid/widget/FastScroller;->access$200(Landroid/widget/FastScroller;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/FastScroller;->access$300(Landroid/widget/FastScroller;F)F

    move-result v0

    .line 4
    iget-object v1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    invoke-static {v1, v0}, Landroid/widget/FastScroller;->access$400(Landroid/widget/FastScroller;F)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/FastScroller;->access$502(Landroid/widget/FastScroller;Z)Z

    return-void
.end method
