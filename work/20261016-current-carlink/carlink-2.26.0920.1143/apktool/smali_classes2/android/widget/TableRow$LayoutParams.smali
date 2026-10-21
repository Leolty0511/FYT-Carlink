.class public Landroid/widget/TableRow$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final LOCATION:I = 0x0

.field private static final LOCATION_NEXT:I = 0x1


# instance fields
.field public column:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mOffset:[I

.field public span:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 17
    invoke-direct {p0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 18
    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 19
    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 22
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 14
    iput-object p1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    const/4 p1, 0x1

    .line 16
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 3
    sget-object v0, Lcom/android/internal/R$styleable;->TableRow_Cell:[I

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    if-gt v0, p2, :cond_0

    .line 7
    iput p2, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 24
    iput-object p1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 26
    iput-object p1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    return-void
.end method

.method public static synthetic access$200(Landroid/widget/TableRow$LayoutParams;)[I
    .locals 0

    iget-object p0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    return-object p0
.end method


# virtual methods
.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "layout:column"

    .line 5
    .line 6
    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "layout:span"

    .line 12
    .line 13
    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "layout_width"

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, -0x1

    .line 17
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    const-string p2, "layout_height"

    .line 26
    .line 27
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p1, -0x2

    .line 35
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    .line 37
    :goto_1
    return-void
.end method
