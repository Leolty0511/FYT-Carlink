.class public Lcom/android/internal/widget/g$d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/app/ActionBar$Tab;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public final synthetic e:Lcom/android/internal/widget/g;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/g;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/g$d;->e:Lcom/android/internal/widget/g;

    const/4 p1, 0x0

    const v0, 0x10102f3

    .line 2
    invoke-direct {p0, p2, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-object p3, p0, Lcom/android/internal/widget/g$d;->a:Landroid/app/ActionBar$Tab;

    if-eqz p4, :cond_0

    const p1, 0x800013

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/g$d;->update()V

    return-void
.end method


# virtual methods
.method public h(Landroid/app/ActionBar$Tab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/g$d;->a:Landroid/app/ActionBar$Tab;

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/widget/g$d;->update()V

    return-void
.end method

.method public i()Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g$d;->a:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    iget-object v5, p0, Lcom/android/internal/widget/g$d;->a:Landroid/app/ActionBar$Tab;

    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 7
    aget v0, v0, v6

    div-int/2addr v2, p1

    add-int/2addr v0, v2

    div-int/2addr v4, p1

    sub-int/2addr v0, v4

    const/16 p1, 0x31

    invoke-virtual {v1, p1, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 8
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/android/internal/widget/g$d;->e:Lcom/android/internal/widget/g;

    iget p1, p1, Lcom/android/internal/widget/g;->f:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/widget/g$d;->e:Lcom/android/internal/widget/g;

    iget v0, v0, Lcom/android/internal/widget/g;->f:I

    if-le p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 3
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public update()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g$d;->a:Landroid/app/ActionBar$Tab;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    :cond_1
    iput-object v1, p0, Lcom/android/internal/widget/g$d;->d:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/g$d;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/g$d;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/android/internal/widget/g$d;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/g$d;->d:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    iput-object v3, p0, Lcom/android/internal/widget/g$d;->d:Landroid/view/View;

    .line 14
    :cond_4
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    .line 16
    iget-object v8, p0, Lcom/android/internal/widget/g$d;->c:Landroid/widget/ImageView;

    if-nez v8, :cond_5

    .line 17
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 19
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 20
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {p0, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 22
    iput-object v8, p0, Lcom/android/internal/widget/g$d;->c:Landroid/widget/ImageView;

    .line 23
    :cond_5
    iget-object v8, p0, Lcom/android/internal/widget/g$d;->c:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v1, p0, Lcom/android/internal/widget/g$d;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 25
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/g$d;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object v1, p0, Lcom/android/internal/widget/g$d;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_7
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    .line 29
    iget-object v2, p0, Lcom/android/internal/widget/g$d;->b:Landroid/widget/TextView;

    if-nez v2, :cond_8

    .line 30
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10102f5

    invoke-direct {v2, v8, v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 32
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 33
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 34
    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    iput-object v2, p0, Lcom/android/internal/widget/g$d;->b:Landroid/widget/TextView;

    .line 37
    :cond_8
    iget-object v2, p0, Lcom/android/internal/widget/g$d;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, p0, Lcom/android/internal/widget/g$d;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 39
    :cond_9
    iget-object v4, p0, Lcom/android/internal/widget/g$d;->b:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    .line 40
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v2, p0, Lcom/android/internal/widget/g$d;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/g$d;->c:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    .line 43
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    if-nez v1, :cond_c

    .line 44
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 45
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 46
    :cond_c
    invoke-virtual {p0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 47
    invoke-virtual {p0, v7}, Landroid/view/View;->setLongClickable(Z)V

    :cond_d
    :goto_2
    return-void
.end method
