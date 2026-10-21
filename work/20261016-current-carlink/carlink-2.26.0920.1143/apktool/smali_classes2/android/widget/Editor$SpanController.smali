.class Landroid/widget/Editor$SpanController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpanController"
.end annotation


# static fields
.field private static final DISPLAY_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private mHidePopup:Ljava/lang/Runnable;

.field private mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method public static synthetic access$1600(Landroid/widget/Editor$SpanController;ILandroid/text/style/EasyEditSpan;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V

    return-void
.end method

.method private isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    .line 6
    .line 7
    if-ne v0, p2, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    and-int/lit16 p1, p1, 0x200

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/text/style/EasyEditSpan;->getPendingIntent()Landroid/app/PendingIntent;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "android.text.style.EXTRA_TEXT_CHANGED_TYPE"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p2, p1, v1, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    const-string p2, "Editor"

    .line 34
    .line 35
    const-string v0, "PendingIntent for notification cannot be sent"

    .line 36
    .line 37
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->hide()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    instance-of p1, p2, Landroid/text/style/EasyEditSpan;

    .line 15
    .line 16
    if-eqz p1, :cond_6

    .line 17
    .line 18
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Landroid/widget/Editor$EasyEditPopupWindow;

    .line 23
    .line 24
    iget-object p3, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 25
    .line 26
    const/4 p4, 0x0

    .line 27
    invoke-direct {p1, p3, p4}, Landroid/widget/Editor$EasyEditPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 31
    .line 32
    new-instance p1, Landroid/widget/Editor$SpanController$1;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroid/widget/Editor$SpanController$1;-><init>(Landroid/widget/Editor$SpanController;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/widget/Editor$EasyEditPopupWindow;->access$1500(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 48
    .line 49
    invoke-static {p1}, Landroid/widget/Editor$EasyEditPopupWindow;->access$1500(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 p3, 0x0

    .line 54
    invoke-virtual {p1, p3}, Landroid/text/style/EasyEditSpan;->setDeleteEnabled(Z)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 58
    .line 59
    check-cast p2, Landroid/text/style/EasyEditSpan;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/widget/Editor$EasyEditPopupWindow;->setEasyEditSpan(Landroid/text/style/EasyEditSpan;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 65
    .line 66
    new-instance p2, Landroid/widget/Editor$SpanController$2;

    .line 67
    .line 68
    invoke-direct {p2, p0}, Landroid/widget/Editor$SpanController$2;-><init>(Landroid/widget/Editor$SpanController;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Landroid/widget/Editor$EasyEditPopupWindow;->access$1700(Landroid/widget/Editor$EasyEditPopupWindow;Landroid/widget/Editor$EasyEditDeleteListener;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 75
    .line 76
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 88
    .line 89
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 101
    .line 102
    invoke-static {p1}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    return-void

    .line 109
    :cond_5
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 115
    .line 116
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 126
    .line 127
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object p2, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    .line 132
    .line 133
    const-wide/16 p3, 0xbb8

    .line 134
    .line 135
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_0
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p3, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    instance-of p3, p2, Landroid/text/style/EasyEditSpan;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    check-cast p2, Landroid/text/style/EasyEditSpan;

    .line 22
    .line 23
    const/4 p3, 0x2

    .line 24
    invoke-direct {p0, p3, p2}, Landroid/widget/Editor$SpanController;->sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Landroid/widget/Editor$EasyEditPopupWindow;->access$1500(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-ne p2, p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
