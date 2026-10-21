.class Landroid/widget/Editor$SuggestionsPopupWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/text/Editable;

    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 16
    .line 17
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 26
    .line 27
    iget-object v1, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 28
    .line 29
    iget-object v1, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 30
    .line 31
    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ltz v0, :cond_2

    .line 36
    .line 37
    if-le v1, v0, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ge v1, v2, :cond_1

    .line 44
    .line 45
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    add-int/lit8 v2, v0, -0x1

    .line 58
    .line 59
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    :cond_1
    iget-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 72
    .line 73
    iget-object p1, p1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 74
    .line 75
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 83
    .line 84
    invoke-static {p1}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$3100(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
