.class Landroid/app/FragmentManagerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->popBackStack(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field public final synthetic val$flags:I

.field public final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$3;->this$0:Landroid/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl$3;->val$name:Ljava/lang/String;

    iput p3, p0, Landroid/app/FragmentManagerImpl$3;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$3;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v1, v0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl$3;->val$name:Ljava/lang/String;

    iget v3, p0, Landroid/app/FragmentManagerImpl$3;->val$flags:I

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    return-void
.end method
