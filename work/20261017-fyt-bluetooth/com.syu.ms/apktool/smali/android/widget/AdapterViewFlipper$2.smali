.class Landroid/widget/AdapterViewFlipper$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/AdapterViewFlipper;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterViewFlipper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AdapterViewFlipper$2;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/widget/AdapterViewFlipper$2;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-static {p1}, Landroid/widget/AdapterViewFlipper;->access$300(Landroid/widget/AdapterViewFlipper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/AdapterViewFlipper$2;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-virtual {p1}, Landroid/widget/AdapterViewFlipper;->showNext()V

    :cond_0
    return-void
.end method
