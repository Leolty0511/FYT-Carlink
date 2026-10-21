.class final Landroid/view/ViewDebug$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$method:Ljava/lang/reflect/Method;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewDebug$7;->val$method:Ljava/lang/reflect/Method;

    iput-object p2, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
