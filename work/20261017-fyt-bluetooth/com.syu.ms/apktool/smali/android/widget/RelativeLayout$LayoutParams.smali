.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mEnd:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mStart:I

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 p1, 0x16

    new-array p2, p1, [I

    .line 42
    iput-object p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array p1, p1, [I

    .line 43
    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/high16 p1, -0x80000000

    .line 44
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    .line 45
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 47
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x16

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/high16 v1, -0x80000000

    .line 4
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    .line 5
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 7
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 8
    sget-object v2, Li/a;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    :goto_1
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 11
    iget-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 12
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_b

    .line 14
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    const/4 v8, -0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    const/16 v9, 0x15

    .line 15
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v8, v1

    :goto_3
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_1
    const/16 v9, 0x14

    .line 16
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    move v8, v1

    :goto_4
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_2
    const/16 v8, 0x13

    .line 17
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_c

    :pswitch_3
    const/16 v8, 0x12

    .line 18
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_c

    .line 19
    :pswitch_4
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v3

    goto/16 :goto_c

    :pswitch_5
    const/16 v8, 0x10

    .line 20
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_c

    .line 21
    :pswitch_6
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto/16 :goto_c

    :pswitch_7
    const/16 v9, 0xf

    .line 22
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_5

    :cond_4
    move v8, v1

    :goto_5
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_8
    const/16 v9, 0xe

    .line 23
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_6

    :cond_5
    move v8, v1

    :goto_6
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_9
    const/16 v9, 0xd

    .line 24
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_7

    :cond_6
    move v8, v1

    :goto_7
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_a
    const/16 v9, 0xc

    .line 25
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_8

    :cond_7
    move v8, v1

    :goto_8
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_b
    const/16 v9, 0xb

    .line 26
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_9

    :cond_8
    move v8, v1

    :goto_9
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_c
    const/16 v9, 0xa

    .line 27
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_a

    :cond_9
    move v8, v1

    :goto_a
    aput v8, p1, v9

    goto :goto_c

    :pswitch_d
    const/16 v9, 0x9

    .line 28
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_b

    :cond_a
    move v8, v1

    :goto_b
    aput v8, p1, v9

    goto :goto_c

    :pswitch_e
    const/16 v8, 0x8

    .line 29
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_f
    const/4 v8, 0x7

    .line 30
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_10
    const/4 v8, 0x6

    .line 31
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_11
    const/4 v8, 0x5

    .line 32
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_12
    const/4 v8, 0x4

    .line 33
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_13
    const/4 v8, 0x3

    .line 34
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_14
    const/4 v8, 0x2

    .line 35
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    .line 36
    :pswitch_15
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v4

    goto :goto_c

    .line 37
    :pswitch_16
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v1

    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 38
    :cond_b
    iput-boolean v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 39
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x16

    new-array v0, p1, [I

    .line 49
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array p1, p1, [I

    .line 50
    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/high16 p1, -0x80000000

    .line 51
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    .line 52
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 54
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 p1, 0x16

    new-array v0, p1, [I

    .line 56
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array p1, p1, [I

    .line 57
    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/high16 p1, -0x80000000

    .line 58
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    .line 59
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 61
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    .line 62
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v0, 0x16

    new-array v1, v0, [I

    .line 63
    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v2, v0, [I

    .line 64
    iput-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/high16 v2, -0x80000000

    .line 65
    iput v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    .line 66
    iput v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    const/4 v2, 0x0

    .line 67
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 68
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 69
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 70
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 71
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 72
    iget-object v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p0
.end method

.method public static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method public static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method public static synthetic access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method public static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p0
.end method

.method public static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method public static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method public static synthetic access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method public static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p0
.end method

.method public static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method public static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method public static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p0
.end method

.method public static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method public static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method public static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p0
.end method

.method private hasRelativeRules()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x11

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x12

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x13

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x14

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private resolveRules(I)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move/from16 v3, p1

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1
    :goto_0
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x16

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-boolean v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    const/16 v5, 0x15

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x5

    const/16 v9, 0xb

    const/16 v10, 0x14

    const/16 v11, 0x11

    const/16 v12, 0x10

    const/16 v13, 0x13

    const/16 v14, 0x12

    if-eqz v4, :cond_c

    .line 3
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v3, v14

    if-eqz v4, :cond_2

    .line 4
    aget v4, v3, v8

    if-nez v4, :cond_1

    .line 5
    aget v4, v3, v14

    aput v4, v3, v8

    .line 6
    :cond_1
    aput v2, v3, v14

    .line 7
    :cond_2
    aget v4, v3, v13

    if-eqz v4, :cond_4

    .line 8
    aget v4, v3, v7

    if-nez v4, :cond_3

    .line 9
    aget v4, v3, v13

    aput v4, v3, v7

    .line 10
    :cond_3
    aput v2, v3, v13

    .line 11
    :cond_4
    aget v4, v3, v12

    if-eqz v4, :cond_6

    .line 12
    aget v4, v3, v2

    if-nez v4, :cond_5

    .line 13
    aget v4, v3, v12

    aput v4, v3, v2

    .line 14
    :cond_5
    aput v2, v3, v12

    .line 15
    :cond_6
    aget v4, v3, v11

    if-eqz v4, :cond_8

    .line 16
    aget v4, v3, v1

    if-nez v4, :cond_7

    .line 17
    aget v4, v3, v11

    aput v4, v3, v1

    .line 18
    :cond_7
    aput v2, v3, v11

    .line 19
    :cond_8
    aget v1, v3, v10

    if-eqz v1, :cond_a

    .line 20
    aget v1, v3, v6

    if-nez v1, :cond_9

    .line 21
    aget v1, v3, v10

    aput v1, v3, v6

    .line 22
    :cond_9
    aput v2, v3, v10

    .line 23
    :cond_a
    aget v1, v3, v9

    if-nez v1, :cond_1f

    .line 24
    aget v1, v3, v9

    if-nez v1, :cond_b

    .line 25
    aget v1, v3, v5

    aput v1, v3, v9

    .line 26
    :cond_b
    aput v2, v3, v5

    goto/16 :goto_4

    .line 27
    :cond_c
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v15, v4, v14

    if-nez v15, :cond_d

    aget v15, v4, v13

    if-eqz v15, :cond_f

    :cond_d
    aget v15, v4, v8

    if-nez v15, :cond_e

    aget v15, v4, v7

    if-eqz v15, :cond_f

    .line 28
    :cond_e
    aput v2, v4, v8

    .line 29
    aput v2, v4, v7

    .line 30
    :cond_f
    aget v15, v4, v14

    if-eqz v15, :cond_11

    if-eqz v3, :cond_10

    move v15, v7

    goto :goto_1

    :cond_10
    move v15, v8

    .line 31
    :goto_1
    aget v16, v4, v14

    aput v16, v4, v15

    .line 32
    aput v2, v4, v14

    .line 33
    :cond_11
    aget v14, v4, v13

    if-eqz v14, :cond_13

    if-eqz v3, :cond_12

    move v7, v8

    .line 34
    :cond_12
    aget v8, v4, v13

    aput v8, v4, v7

    .line 35
    aput v2, v4, v13

    .line 36
    :cond_13
    aget v7, v4, v12

    if-nez v7, :cond_14

    aget v7, v4, v11

    if-eqz v7, :cond_16

    :cond_14
    aget v7, v4, v2

    if-nez v7, :cond_15

    aget v7, v4, v1

    if-eqz v7, :cond_16

    .line 37
    :cond_15
    aput v2, v4, v2

    .line 38
    aput v2, v4, v1

    .line 39
    :cond_16
    aget v1, v4, v12

    if-eqz v1, :cond_17

    .line 40
    aget v1, v4, v12

    aput v1, v4, v3

    .line 41
    aput v2, v4, v12

    .line 42
    :cond_17
    aget v1, v4, v11

    if-eqz v1, :cond_18

    xor-int/lit8 v1, v3, 0x1

    .line 43
    aget v7, v4, v11

    aput v7, v4, v1

    .line 44
    aput v2, v4, v11

    .line 45
    :cond_18
    aget v1, v4, v10

    if-nez v1, :cond_19

    aget v1, v4, v5

    if-eqz v1, :cond_1b

    :cond_19
    aget v1, v4, v6

    if-nez v1, :cond_1a

    aget v1, v4, v9

    if-eqz v1, :cond_1b

    .line 46
    :cond_1a
    aput v2, v4, v6

    .line 47
    aput v2, v4, v9

    .line 48
    :cond_1b
    aget v1, v4, v10

    if-eqz v1, :cond_1d

    if-eqz v3, :cond_1c

    move v1, v9

    goto :goto_2

    :cond_1c
    move v1, v6

    .line 49
    :goto_2
    aget v7, v4, v10

    aput v7, v4, v1

    .line 50
    aput v2, v4, v10

    .line 51
    :cond_1d
    aget v1, v4, v5

    if-eqz v1, :cond_1f

    if-eqz v3, :cond_1e

    goto :goto_3

    :cond_1e
    move v6, v9

    .line 52
    :goto_3
    aget v1, v4, v5

    aput v1, v4, v6

    .line 53
    aput v2, v4, v5

    .line 54
    :cond_1f
    :goto_4
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    return-void
.end method


# virtual methods
.method public addRule(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput v1, v0, p1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    return-void
.end method

.method public addRule(II)V
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 5
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", height="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p1}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " }"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRules()[I
    .locals 1

    .line 6
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p1
.end method

.method public removeRule(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput v1, v0, p1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isLayoutRtl()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    .line 3
    :cond_0
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    .line 5
    :cond_2
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    .line 6
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 8
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    return-void
.end method
