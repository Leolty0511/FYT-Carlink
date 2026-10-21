.class public Lcom/syu/bt/ctrl/SlideBarView;
.super Landroid/view/View;
.source "SlideBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/ctrl/SlideBarView$OnTouchLettersChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchLettersChangedListener:Lcom/syu/bt/ctrl/SlideBarView$OnTouchLettersChangedListener;

.field private paint:Landroid/graphics/Paint;

.field public rec_Letterbar:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 16
    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    .line 15
    sput-object v0, Lcom/syu/bt/ctrl/SlideBarView;->b:[Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 26
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/syu/bt/ctrl/SlideBarView;->choose:I

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/SlideBarView;->paint:Landroid/graphics/Paint;

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    .line 31
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SlideBarView;->getHeight()I

    move-result v0

    .line 34
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SlideBarView;->getWidth()I

    move-result v3

    .line 35
    .local v3, "w":I
    sget-object v6, Lcom/syu/bt/ctrl/SlideBarView;->b:[Ljava/lang/String;

    array-length v6, v6

    div-int v2, v0, v6

    .line 36
    .local v2, "singleHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/syu/bt/ctrl/SlideBarView;->b:[Ljava/lang/String;

    array-length v6, v6

    if-lt v1, v6, :cond_0

    .line 51
    return-void

    .line 37
    :cond_0
    iget-object v6, p0, Lcom/syu/bt/ctrl/SlideBarView;->paint:Landroid/graphics/Paint;

    const-string v7, "#474747"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v6, p0, Lcom/syu/bt/ctrl/SlideBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object v6, p0, Lcom/syu/bt/ctrl/SlideBarView;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    iget v6, p0, Lcom/syu/bt/ctrl/SlideBarView;->choose:I

    if-ne v1, v6, :cond_1

    .line 42
    iget-object v6, p0, Lcom/syu/bt/ctrl/SlideBarView;->paint:Landroid/graphics/Paint;

    const-string v7, "#0308ff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v6, p0, Lcom/syu/bt/ctrl/SlideBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 46
    :cond_1
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/syu/bt/ctrl/SlideBarView;->paint:Landroid/graphics/Paint;

    sget-object v8, Lcom/syu/bt/ctrl/SlideBarView;->b:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 47
    .local v4, "xPos":F
    mul-int v6, v2, v1

    add-int/2addr v6, v2

    int-to-float v5, v6

    .line 48
    .local v5, "yPos":F
    sget-object v6, Lcom/syu/bt/ctrl/SlideBarView;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/syu/bt/ctrl/SlideBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 49
    iget-object v6, p0, Lcom/syu/bt/ctrl/SlideBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 61
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 62
    .local v4, "y":F
    iget v3, p0, Lcom/syu/bt/ctrl/SlideBarView;->choose:I

    .line 63
    .local v3, "oldChoose":I
    iget-object v2, p0, Lcom/syu/bt/ctrl/SlideBarView;->onTouchLettersChangedListener:Lcom/syu/bt/ctrl/SlideBarView$OnTouchLettersChangedListener;

    .line 64
    .local v2, "listener":Lcom/syu/bt/ctrl/SlideBarView$OnTouchLettersChangedListener;
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SlideBarView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    sget-object v6, Lcom/syu/bt/ctrl/SlideBarView;->b:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 65
    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    .line 74
    if-eq v3, v1, :cond_2

    sget-object v5, Lcom/syu/bt/ctrl/SlideBarView;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    if-ltz v1, :cond_2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    sget-object v5, Lcom/syu/bt/ctrl/SlideBarView;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/syu/bt/ctrl/SlideBarView$OnTouchLettersChangedListener;->onTouchLettersChanged(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v5, p0, Lcom/syu/bt/ctrl/SlideBarView;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 79
    iget-object v5, p0, Lcom/syu/bt/ctrl/SlideBarView;->mTextDialog:Landroid/widget/TextView;

    const-string v6, "#0000ff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 80
    iget-object v5, p0, Lcom/syu/bt/ctrl/SlideBarView;->mTextDialog:Landroid/widget/TextView;

    sget-object v6, Lcom/syu/bt/ctrl/SlideBarView;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v5, p0, Lcom/syu/bt/ctrl/SlideBarView;->mTextDialog:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :cond_1
    iput v1, p0, Lcom/syu/bt/ctrl/SlideBarView;->choose:I

    .line 85
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SlideBarView;->invalidate()V

    .line 90
    :cond_2
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 67
    :pswitch_0
    const/4 v5, -0x1

    iput v5, p0, Lcom/syu/bt/ctrl/SlideBarView;->choose:I

    .line 68
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SlideBarView;->invalidate()V

    .line 69
    iget-object v5, p0, Lcom/syu/bt/ctrl/SlideBarView;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 70
    iget-object v5, p0, Lcom/syu/bt/ctrl/SlideBarView;->mTextDialog:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnTouchLettersChangedListener(Lcom/syu/bt/ctrl/SlideBarView$OnTouchLettersChangedListener;)V
    .locals 0
    .param p1, "onTouchLettersChangedListener"    # Lcom/syu/bt/ctrl/SlideBarView$OnTouchLettersChangedListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/syu/bt/ctrl/SlideBarView;->onTouchLettersChangedListener:Lcom/syu/bt/ctrl/SlideBarView$OnTouchLettersChangedListener;

    .line 95
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "mTextDialog"    # Landroid/widget/TextView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/syu/bt/ctrl/SlideBarView;->mTextDialog:Landroid/widget/TextView;

    .line 55
    return-void
.end method
