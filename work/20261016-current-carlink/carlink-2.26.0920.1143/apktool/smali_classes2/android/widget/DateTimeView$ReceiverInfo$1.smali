.class Landroid/widget/DateTimeView$ReceiverInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView$ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DateTimeView$ReceiverInfo;


# direct methods
.method public constructor <init>(Landroid/widget/DateTimeView$ReceiverInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$0:Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.TIME_TICK"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$0:Landroid/widget/DateTimeView$ReceiverInfo;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/DateTimeView$ReceiverInfo;->getSoonestUpdateTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    cmp-long p1, p1, v0

    .line 24
    .line 25
    if-gez p1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$0:Landroid/widget/DateTimeView$ReceiverInfo;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/DateTimeView$ReceiverInfo;->updateAll()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
