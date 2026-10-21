.class Landroid/app/FragmentManagerImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->popBackStack(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field public final synthetic val$flags:I

.field public final synthetic val$id:I


# direct methods
.method public constructor <init>(Landroid/app/FragmentManagerImpl;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$4;->this$0:Landroid/app/FragmentManagerImpl;

    iput p2, p0, Landroid/app/FragmentManagerImpl$4;->val$id:I

    iput p3, p0, Landroid/app/FragmentManagerImpl$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$4;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v1, v0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget v2, p0, Landroid/app/FragmentManagerImpl$4;->val$id:I

    iget v3, p0, Landroid/app/FragmentManagerImpl$4;->val$flags:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    return-void
.end method
