.class Landroid/widget/AdapterViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-static {p1, v0}, Landroid/widget/AdapterViewFlipper;->access$002(Landroid/widget/AdapterViewFlipper;Z)Z

    .line 4
    iget-object p1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-static {p1}, Landroid/widget/AdapterViewFlipper;->access$100(Landroid/widget/AdapterViewFlipper;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/widget/AdapterViewFlipper;->access$002(Landroid/widget/AdapterViewFlipper;Z)Z

    .line 7
    iget-object p1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-static {p1, v0}, Landroid/widget/AdapterViewFlipper;->access$200(Landroid/widget/AdapterViewFlipper;Z)V

    :cond_1
    :goto_0
    return-void
.end method
