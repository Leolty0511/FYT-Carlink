.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string/jumbo v0, "sans-serif"

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const-string/jumbo v2, "sans-serif-light"

    const/4 v3, 0x0

    .line 5
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 6
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/app/PlatLogoActivity;->a:Landroid/widget/FrameLayout;

    const/high16 v5, -0x40000000    # -2.0f

    .line 7
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 9
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v6, 0x10804a6

    .line 11
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v6, 0x4

    .line 13
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v7, -0x12e2dc

    .line 15
    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v7, 0x0

    .line 16
    invoke-virtual {v9, v7}, Landroid/view/View;->setAlpha(F)V

    .line 17
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x43960000    # 300.0f

    .line 19
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, -0x1

    .line 20
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 24
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    const/high16 v1, 0x41f00000    # 30.0f

    .line 26
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 27
    invoke-virtual {v11, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 28
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 30
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-direct {v0, p0}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    const/16 v1, 0x51

    .line 37
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    mul-int/lit8 p1, p1, 0xa

    .line 38
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 39
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->a:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$a;

    invoke-direct {v0, p0, v10}, Lcom/android/internal/app/PlatLogoActivity$a;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->a:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$b;

    move-object v6, v0

    move-object v7, p0

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/app/PlatLogoActivity$b;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 42
    new-instance p1, Lcom/android/internal/app/PlatLogoActivity$c;

    invoke-direct {p1, p0}, Lcom/android/internal/app/PlatLogoActivity$c;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v12, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 43
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method
