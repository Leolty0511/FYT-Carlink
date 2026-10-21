.class Landroid/widget/SlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlidingHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Landroid/widget/SlidingDrawer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/SlidingDrawer$SlidingHandler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer$SlidingHandler;-><init>(Landroid/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/widget/SlidingDrawer$SlidingHandler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-static {p1}, Landroid/widget/SlidingDrawer;->access$400(Landroid/widget/SlidingDrawer;)V

    :goto_0
    return-void
.end method
