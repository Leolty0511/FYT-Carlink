.class Landroid/app/FragmentManagerImpl$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field public final synthetic val$finalFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$6;->this$0:Landroid/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl$6;->val$finalFragment:Landroid/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/app/FragmentManagerImpl$6;->val$finalFragment:Landroid/app/Fragment;

    iget-object p1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
