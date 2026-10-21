.class Landroid/widget/Editor$SuggestionsPopupWindow$1;
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

    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 2
    .line 3
    iget-object v0, p1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$2800(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 17
    .line 18
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/text/Editable;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ltz v1, :cond_2

    .line 39
    .line 40
    if-gt p1, v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Landroid/content/Intent;

    .line 48
    .line 49
    const-string v4, "com.android.settings.USER_DICTIONARY_INSERT"

    .line 50
    .line 51
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v4, "word"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 61
    .line 62
    iget-object v2, v2, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 63
    .line 64
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v4, "locale"

    .line 77
    .line 78
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/high16 v4, 0x10000000

    .line 86
    .line 87
    or-int/2addr v2, v4

    .line 88
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 92
    .line 93
    iget-object v2, v2, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 94
    .line 95
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 107
    .line 108
    invoke-static {v2}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$2800(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-object v2, v2, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 113
    .line 114
    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 121
    .line 122
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-static {v0, v1, p1, v2}, Landroid/widget/Editor;->access$3000(Landroid/widget/Editor;IIZ)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 129
    .line 130
    invoke-static {p1}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$3100(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    :goto_0
    return-void
.end method
