.class Landroid/widget/DigitalClock$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DigitalClock;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DigitalClock;


# direct methods
.method public constructor <init>(Landroid/widget/DigitalClock;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/DigitalClock;->access$000(Landroid/widget/DigitalClock;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    .line 11
    .line 12
    iget-object v0, v0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    .line 22
    .line 23
    iget-object v1, v0, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, v0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const-wide/16 v2, 0x3e8

    .line 44
    .line 45
    rem-long v4, v0, v2

    .line 46
    .line 47
    sub-long/2addr v2, v4

    .line 48
    add-long/2addr v2, v0

    .line 49
    iget-object v0, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    .line 50
    .line 51
    invoke-static {v0}, Landroid/widget/DigitalClock;->access$200(Landroid/widget/DigitalClock;)Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    .line 56
    .line 57
    invoke-static {v1}, Landroid/widget/DigitalClock;->access$100(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method
