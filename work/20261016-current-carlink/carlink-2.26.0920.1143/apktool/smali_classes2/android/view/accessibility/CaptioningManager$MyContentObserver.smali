.class Landroid/view/accessibility/CaptioningManager$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyContentObserver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 p2, 0x2f

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    add-int/lit8 p2, p2, 0x1

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "accessibility_captioning_enabled"

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    .line 26
    .line 27
    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->access$000(Landroid/view/accessibility/CaptioningManager;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p2, "accessibility_captioning_locale"

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->access$100(Landroid/view/accessibility/CaptioningManager;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p2, "accessibility_captioning_font_scale"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    .line 54
    .line 55
    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->access$200(Landroid/view/accessibility/CaptioningManager;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    iget-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    .line 62
    .line 63
    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager;->access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    .line 71
    .line 72
    iget-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    .line 73
    .line 74
    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager;->access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method
