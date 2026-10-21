.class Landroid/view/OrientationListener$OrientationEventListenerInternal;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrientationEventListenerInternal"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/view/OrientationListener;


# direct methods
.method public constructor <init>(Landroid/view/OrientationListener;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/OrientationListener$OrientationEventListenerInternal;->this$0:Landroid/view/OrientationListener;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/OrientationListener;Landroid/content/Context;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroid/view/OrientationListener$OrientationEventListenerInternal;->this$0:Landroid/view/OrientationListener;

    .line 4
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/OrientationEventListener;->registerListener(Landroid/view/OrientationListener;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/OrientationListener$OrientationEventListenerInternal;->this$0:Landroid/view/OrientationListener;

    invoke-virtual {v0, p1}, Landroid/view/OrientationListener;->onOrientationChanged(I)V

    return-void
.end method
