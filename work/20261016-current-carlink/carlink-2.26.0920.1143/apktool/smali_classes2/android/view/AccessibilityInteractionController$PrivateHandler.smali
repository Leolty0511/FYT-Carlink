.class Landroid/view/AccessibilityInteractionController$PrivateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateHandler"
.end annotation


# static fields
.field private static final MSG_APP_PREPARATION_FINISHED:I = 0x8

.field private static final MSG_APP_PREPARATION_TIMEOUT:I = 0x9

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID:I = 0x3

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x2

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT:I = 0x4

.field private static final MSG_FIND_FOCUS:I = 0x5

.field private static final MSG_FOCUS_SEARCH:I = 0x6

.field private static final MSG_PERFORM_ACCESSIBILITY_ACTION:I = 0x1

.field private static final MSG_PREPARE_FOR_EXTRA_DATA_REQUEST:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method public constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "Unknown message type: "

    .line 9
    .line 10
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    const-string p1, "MSG_APP_PREPARATION_TIMEOUT"

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_1
    const-string p1, "MSG_APP_PREPARATION_FINISHED"

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_2
    const-string p1, "MSG_PREPARE_FOR_EXTRA_DATA_REQUEST"

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_3
    const-string p1, "MSG_FOCUS_SEARCH"

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_4
    const-string p1, "MSG_FIND_FOCUS"

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_5
    const-string p1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT"

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_6
    const-string p1, "MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID"

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_7
    const-string p1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_8
    const-string p1, "MSG_PERFORM_ACCESSIBILITY_ACTION"

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "Unknown message type: "

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :pswitch_0
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/view/AccessibilityInteractionController;->access$1200(Landroid/view/AccessibilityInteractionController;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->access$1100(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->access$1000(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_3
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 37
    .line 38
    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->access$900(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_4
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 43
    .line 44
    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_5
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 49
    .line 50
    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_6
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 55
    .line 56
    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_7
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 61
    .line 62
    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_8
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 67
    .line 68
    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
