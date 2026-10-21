.class Landroid/widget/TabHost$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$LabelIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "layout_inflater"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/LayoutInflater;

    .line 14
    .line 15
    iget-object v2, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    .line 16
    .line 17
    invoke-static {v2}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    .line 22
    .line 23
    invoke-static {v3}, Landroid/widget/TabHost;->access$1000(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v2, 0x1020016

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object v3, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 51
    .line 52
    const/4 v4, 0x4

    .line 53
    if-gt v3, v4, :cond_0

    .line 54
    .line 55
    const v3, 0x108081c

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    .line 60
    .line 61
    const v3, 0x1060152

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-object v1
.end method
