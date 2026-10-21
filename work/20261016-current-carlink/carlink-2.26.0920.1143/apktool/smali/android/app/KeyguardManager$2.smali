.class Landroid/app/KeyguardManager$2;
.super Landroid/view/IOnKeyguardExitResult$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/KeyguardManager;

.field final synthetic val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;


# direct methods
.method public constructor <init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 0

    iput-object p1, p0, Landroid/app/KeyguardManager$2;->this$0:Landroid/app/KeyguardManager;

    iput-object p2, p0, Landroid/app/KeyguardManager$2;->val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;

    invoke-direct {p0}, Landroid/view/IOnKeyguardExitResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/KeyguardManager$2;->val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/app/KeyguardManager$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
