.class final Landroid/widget/Editor$SuggestionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuggestionInfo"
.end annotation


# instance fields
.field mSuggestionEnd:I

.field mSuggestionIndex:I

.field final mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

.field mSuggestionStart:I

.field final mText:Landroid/text/SpannableStringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/widget/Editor$SuggestionSpanInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/Editor$SuggestionSpanInfo;-><init>(Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Editor$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionSpanInfo;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setSpanInfo(Landroid/text/style/SuggestionSpan;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 4
    .line 5
    iput p2, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 6
    .line 7
    iput p3, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 8
    .line 9
    return-void
.end method
