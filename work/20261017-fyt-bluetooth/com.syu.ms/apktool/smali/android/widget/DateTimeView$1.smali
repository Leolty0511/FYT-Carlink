.class Landroid/widget/DateTimeView$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/DateTimeView;


# direct methods
.method public constructor <init>(Landroid/widget/DateTimeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/DateTimeView$1;->this$0:Landroid/widget/DateTimeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Landroid/widget/DateTimeView$1;->this$0:Landroid/widget/DateTimeView;

    invoke-static {v0}, Landroid/widget/DateTimeView;->access$000(Landroid/widget/DateTimeView;)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/DateTimeView$1;->this$0:Landroid/widget/DateTimeView;

    const/4 p2, 0x0

    iput-object p2, p1, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 5
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method
