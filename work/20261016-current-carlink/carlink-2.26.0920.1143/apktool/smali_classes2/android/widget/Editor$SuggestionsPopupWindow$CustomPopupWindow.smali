.class Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomPopupWindow"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 12
    .line 13
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 25
    .line 26
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/text/Spannable;

    .line 37
    .line 38
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 39
    .line 40
    iget-object v1, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 41
    .line 42
    iget-object v1, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 48
    .line 49
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 50
    .line 51
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 56
    .line 57
    invoke-static {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$2400(Landroid/widget/Editor$SuggestionsPopupWindow;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 65
    .line 66
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/widget/Editor;->hasInsertionController()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 75
    .line 76
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 77
    .line 78
    invoke-static {v0}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 85
    .line 86
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 87
    .line 88
    invoke-static {v0}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$InsertionPointCursorController;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 93
    .line 94
    .line 95
    :cond_1
    return-void
.end method
