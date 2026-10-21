.class Landroid/app/ActivityOptions$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions;->setListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/app/ActivityOptions;

.field public final synthetic val$finalListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

.field public final synthetic val$h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/ActivityOptions$1;->this$0:Landroid/app/ActivityOptions;

    iput-object p2, p0, Landroid/app/ActivityOptions$1;->val$h:Landroid/os/Handler;

    iput-object p3, p0, Landroid/app/ActivityOptions$1;->val$finalListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/app/ActivityOptions$1;->val$h:Landroid/os/Handler;

    new-instance v0, Landroid/app/ActivityOptions$1$1;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions$1$1;-><init>(Landroid/app/ActivityOptions$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
