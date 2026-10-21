.class final Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanSpec"
.end annotation


# instance fields
.field private final mEnd:I

.field private final mSpan:Landroid/text/style/ClickableSpan;

.field private final mStart:I


# direct methods
.method public constructor <init>(IILandroid/text/style/ClickableSpan;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mStart:I

    .line 5
    .line 6
    iput p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mEnd:I

    .line 7
    .line 8
    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mSpan:Landroid/text/style/ClickableSpan;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$200(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mStart:I

    return p0
.end method

.method public static synthetic access$300(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mEnd:I

    return p0
.end method

.method public static synthetic access$400(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)Landroid/text/style/ClickableSpan;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->mSpan:Landroid/text/style/ClickableSpan;

    return-object p0
.end method
