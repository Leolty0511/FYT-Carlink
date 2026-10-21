.class final Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/textclassifier/LinksInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinksInfoImpl"
.end annotation


# instance fields
.field private final mOriginalText:Ljava/lang/CharSequence;

.field private final mSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mOriginalText:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mSpans:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 9
    .line 10
    .line 11
    instance-of v2, p1, Landroid/text/Spannable;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mOriginalText:Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    check-cast p1, Landroid/text/Spannable;

    .line 32
    .line 33
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mSpans:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    move v3, v1

    .line 40
    :goto_1
    if-ge v3, v2, :cond_1

    .line 41
    .line 42
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mSpans:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    .line 49
    .line 50
    invoke-static {v4}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$400(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)Landroid/text/style/ClickableSpan;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v4}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$200(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-static {v4}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$300(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-interface {p1, v5, v6, v4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    return v0

    .line 69
    :cond_2
    return v1
.end method
