.class public Landroid/text/method/ScrollingMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "SourceFile"


# static fields
.field private static sInstance:Landroid/text/method/ScrollingMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method

.method public end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method

.method public lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineTop(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    and-int/lit8 p3, p3, 0x1

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, p3

    .line 38
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    add-int/lit8 p3, p3, -0x1

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/lit8 p3, p3, 0x1

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineTop(I)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    sub-int/2addr p3, v0

    .line 59
    sub-int/2addr p2, p3

    .line 60
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method

.method public top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method
