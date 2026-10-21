.class Landroid/widget/FastScroller$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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
    iput-object p1, p0, Landroid/widget/FastScroller$3;->this$0:Landroid/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/FastScroller$3;->this$0:Landroid/widget/FastScroller;

    invoke-static {p1}, Landroid/widget/FastScroller;->access$700(Landroid/widget/FastScroller;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Landroid/widget/FastScroller;->access$702(Landroid/widget/FastScroller;Z)Z

    return-void
.end method
