.class public Landroid/text/method/ScrollingMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "SourceFile"


# static fields
.field private static sInstance:Landroid/text/method/ScrollingMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    .line 3
    :cond_0
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    return-object v0
.end method


# virtual methods
.method public bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method

.method public end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method

.method public lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-eqz p2, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    if-eqz p2, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v0

    add-int/2addr p3, v0

    .line 4
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    sub-int/2addr p2, v0

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method

.method public top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method
