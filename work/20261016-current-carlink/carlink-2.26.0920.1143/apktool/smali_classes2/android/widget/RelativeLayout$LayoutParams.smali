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

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mNeedsLayoutResolution:Z

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

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 p1, 0x16

    new-array p2, p1, [I

    .line 40
    iput-object p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array p1, p1, [I

    .line 41
    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 43
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x16

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 5
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 6
    sget-object v2, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x1

    const/16 v4, 0x11

    if-lt v2, v4, :cond_1

    .line 8
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
    move p1, v3

    :goto_1
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 9
    iget-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 10
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 11
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_b

    .line 12
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    const/4 v8, -0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_c

    .line 13
    :pswitch_0
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v8, v1

    :goto_3
    const/16 v7, 0x15

    aput v8, p1, v7

    goto/16 :goto_c

    .line 14
    :pswitch_1
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    move v8, v1

    :goto_4
    const/16 v7, 0x14

    aput v8, p1, v7

    goto/16 :goto_c

    :pswitch_2
    const/16 v8, 0x13

    .line 15
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_c

    :pswitch_3
    const/16 v8, 0x12

    .line 16
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_c

    .line 17
    :pswitch_4
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v4

    goto/16 :goto_c

    :pswitch_5
    const/16 v8, 0x10

    .line 18
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_c

    .line 19
    :pswitch_6
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto/16 :goto_c

    .line 20
    :pswitch_7
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_5

    :cond_4
    move v8, v1

    :goto_5
    const/16 v7, 0xf

    aput v8, p1, v7

    goto/16 :goto_c

    .line 21
    :pswitch_8
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_6

    :cond_5
    move v8, v1

    :goto_6
    const/16 v7, 0xe

    aput v8, p1, v7

    goto/16 :goto_c

    .line 22
    :pswitch_9
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_7

    :cond_6
    move v8, v1

    :goto_7
    const/16 v7, 0xd

    aput v8, p1, v7

    goto/16 :goto_c

    .line 23
    :pswitch_a
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_8

    :cond_7
    move v8, v1

    :goto_8
    const/16 v7, 0xc

    aput v8, p1, v7

    goto/16 :goto_c

    .line 24
    :pswitch_b
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_9

    :cond_8
    move v8, v1

    :goto_9
    const/16 v7, 0xb

    aput v8, p1, v7

    goto/16 :goto_c

    .line 25
    :pswitch_c
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_a

    :cond_9
    move v8, v1

    :goto_a
    const/16 v7, 0xa

    aput v8, p1, v7

    goto :goto_c

    .line 26
    :pswitch_d
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_b

    :cond_a
    move v8, v1

    :goto_b
    const/16 v7, 0x9

    aput v8, p1, v7

    goto :goto_c

    :pswitch_e
    const/16 v8, 0x8

    .line 27
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_f
    const/4 v8, 0x7

    .line 28
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_10
    const/4 v8, 0x6

    .line 29
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_11
    const/4 v8, 0x5

    .line 30
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_12
    const/4 v8, 0x4

    .line 31
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_13
    const/4 v8, 0x3

    .line 32
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_14
    const/4 v8, 0x2

    .line 33
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    .line 34
    :pswitch_15
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v3

    goto :goto_c

    .line 35
    :pswitch_16
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v1

    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 36
    :cond_b
    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 37
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 38
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

    .line 44
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x16

    new-array v0, p1, [I

    .line 45
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array p1, p1, [I

    .line 46
    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 48
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 p1, 0x16

    new-array v0, p1, [I

    .line 50
    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array p1, p1, [I

    .line 51
    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 53
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    .line 54
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v0, 0x16

    new-array v1, v0, [I

    .line 55
    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v2, v0, [I

    .line 56
    iput-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 v2, 0x0

    .line 57
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 58
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 59
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 60
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 61
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 62
    iget-object v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 63
    iget-object p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([II[III)V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p0
.end method

.method public static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method public static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p0
.end method

.method public static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method public static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p0
.end method

.method public static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method public static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p0
.end method

.method public static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method public static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .locals 0

    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p0
.end method

.method private hasRelativeRules()Z
    .locals 2

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

.method private isRelativeRule(I)Z
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private resolveRules(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    move/from16 v3, p1

    .line 6
    .line 7
    if-ne v3, v2, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 13
    .line 14
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 15
    .line 16
    const/16 v6, 0x16

    .line 17
    .line 18
    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 19
    .line 20
    .line 21
    iget-boolean v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 22
    .line 23
    const/16 v5, 0x14

    .line 24
    .line 25
    const/16 v6, 0x10

    .line 26
    .line 27
    const/16 v7, 0x12

    .line 28
    .line 29
    const/16 v8, 0x15

    .line 30
    .line 31
    const/16 v9, 0x11

    .line 32
    .line 33
    const/16 v10, 0x13

    .line 34
    .line 35
    const/16 v11, 0xb

    .line 36
    .line 37
    const/16 v12, 0x9

    .line 38
    .line 39
    const/4 v13, 0x7

    .line 40
    const/4 v14, 0x5

    .line 41
    if-eqz v4, :cond_c

    .line 42
    .line 43
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 44
    .line 45
    aget v4, v3, v7

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    aget v15, v3, v14

    .line 50
    .line 51
    if-nez v15, :cond_1

    .line 52
    .line 53
    aput v4, v3, v14

    .line 54
    .line 55
    :cond_1
    aput v1, v3, v7

    .line 56
    .line 57
    :cond_2
    aget v4, v3, v10

    .line 58
    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    aget v7, v3, v13

    .line 62
    .line 63
    if-nez v7, :cond_3

    .line 64
    .line 65
    aput v4, v3, v13

    .line 66
    .line 67
    :cond_3
    aput v1, v3, v10

    .line 68
    .line 69
    :cond_4
    aget v4, v3, v6

    .line 70
    .line 71
    if-eqz v4, :cond_6

    .line 72
    .line 73
    aget v7, v3, v1

    .line 74
    .line 75
    if-nez v7, :cond_5

    .line 76
    .line 77
    aput v4, v3, v1

    .line 78
    .line 79
    :cond_5
    aput v1, v3, v6

    .line 80
    .line 81
    :cond_6
    aget v4, v3, v9

    .line 82
    .line 83
    if-eqz v4, :cond_8

    .line 84
    .line 85
    aget v6, v3, v2

    .line 86
    .line 87
    if-nez v6, :cond_7

    .line 88
    .line 89
    aput v4, v3, v2

    .line 90
    .line 91
    :cond_7
    aput v1, v3, v9

    .line 92
    .line 93
    :cond_8
    aget v2, v3, v5

    .line 94
    .line 95
    if-eqz v2, :cond_a

    .line 96
    .line 97
    aget v4, v3, v12

    .line 98
    .line 99
    if-nez v4, :cond_9

    .line 100
    .line 101
    aput v2, v3, v12

    .line 102
    .line 103
    :cond_9
    aput v1, v3, v5

    .line 104
    .line 105
    :cond_a
    aget v2, v3, v8

    .line 106
    .line 107
    if-eqz v2, :cond_1f

    .line 108
    .line 109
    aget v4, v3, v11

    .line 110
    .line 111
    if-nez v4, :cond_b

    .line 112
    .line 113
    aput v2, v3, v11

    .line 114
    .line 115
    :cond_b
    aput v1, v3, v8

    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :cond_c
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 120
    .line 121
    aget v15, v4, v7

    .line 122
    .line 123
    if-nez v15, :cond_d

    .line 124
    .line 125
    aget v16, v4, v10

    .line 126
    .line 127
    if-eqz v16, :cond_f

    .line 128
    .line 129
    :cond_d
    aget v16, v4, v14

    .line 130
    .line 131
    if-nez v16, :cond_e

    .line 132
    .line 133
    aget v16, v4, v13

    .line 134
    .line 135
    if-eqz v16, :cond_f

    .line 136
    .line 137
    :cond_e
    aput v1, v4, v14

    .line 138
    .line 139
    aput v1, v4, v13

    .line 140
    .line 141
    :cond_f
    if-eqz v15, :cond_11

    .line 142
    .line 143
    if-eqz v3, :cond_10

    .line 144
    .line 145
    move/from16 v16, v13

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_10
    move/from16 v16, v14

    .line 149
    .line 150
    :goto_1
    aput v15, v4, v16

    .line 151
    .line 152
    aput v1, v4, v7

    .line 153
    .line 154
    :cond_11
    aget v7, v4, v10

    .line 155
    .line 156
    if-eqz v7, :cond_13

    .line 157
    .line 158
    if-eqz v3, :cond_12

    .line 159
    .line 160
    move v13, v14

    .line 161
    :cond_12
    aput v7, v4, v13

    .line 162
    .line 163
    aput v1, v4, v10

    .line 164
    .line 165
    :cond_13
    aget v7, v4, v6

    .line 166
    .line 167
    if-nez v7, :cond_14

    .line 168
    .line 169
    aget v10, v4, v9

    .line 170
    .line 171
    if-eqz v10, :cond_16

    .line 172
    .line 173
    :cond_14
    aget v10, v4, v1

    .line 174
    .line 175
    if-nez v10, :cond_15

    .line 176
    .line 177
    aget v10, v4, v2

    .line 178
    .line 179
    if-eqz v10, :cond_16

    .line 180
    .line 181
    :cond_15
    aput v1, v4, v1

    .line 182
    .line 183
    aput v1, v4, v2

    .line 184
    .line 185
    :cond_16
    if-eqz v7, :cond_17

    .line 186
    .line 187
    aput v7, v4, v3

    .line 188
    .line 189
    aput v1, v4, v6

    .line 190
    .line 191
    :cond_17
    aget v2, v4, v9

    .line 192
    .line 193
    if-eqz v2, :cond_18

    .line 194
    .line 195
    xor-int/lit8 v6, v3, 0x1

    .line 196
    .line 197
    aput v2, v4, v6

    .line 198
    .line 199
    aput v1, v4, v9

    .line 200
    .line 201
    :cond_18
    aget v2, v4, v5

    .line 202
    .line 203
    if-nez v2, :cond_19

    .line 204
    .line 205
    aget v6, v4, v8

    .line 206
    .line 207
    if-eqz v6, :cond_1b

    .line 208
    .line 209
    :cond_19
    aget v6, v4, v12

    .line 210
    .line 211
    if-nez v6, :cond_1a

    .line 212
    .line 213
    aget v6, v4, v11

    .line 214
    .line 215
    if-eqz v6, :cond_1b

    .line 216
    .line 217
    :cond_1a
    aput v1, v4, v12

    .line 218
    .line 219
    aput v1, v4, v11

    .line 220
    .line 221
    :cond_1b
    if-eqz v2, :cond_1d

    .line 222
    .line 223
    if-eqz v3, :cond_1c

    .line 224
    .line 225
    move v6, v11

    .line 226
    goto :goto_2

    .line 227
    :cond_1c
    move v6, v12

    .line 228
    :goto_2
    aput v2, v4, v6

    .line 229
    .line 230
    aput v1, v4, v5

    .line 231
    .line 232
    :cond_1d
    aget v2, v4, v8

    .line 233
    .line 234
    if-eqz v2, :cond_1f

    .line 235
    .line 236
    if-eqz v3, :cond_1e

    .line 237
    .line 238
    move v11, v12

    .line 239
    :cond_1e
    aput v2, v4, v11

    .line 240
    .line 241
    aput v1, v4, v8

    .line 242
    .line 243
    :cond_1f
    :goto_3
    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 244
    .line 245
    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 246
    .line 247
    return-void
.end method

.method private shouldResolveLayoutDirection(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
.end method


# virtual methods
.method public addRule(I)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method public addRule(II)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->isRelativeRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 3
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 5
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 6
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ViewGroup.LayoutParams={ width="

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ", height="

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    .line 23
    invoke-static {v0}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " }"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "layout:alignWithParent"

    .line 5
    .line 6
    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getRule(I)I
    .locals 1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget p1, v0, p1

    return p1
.end method

.method public getRules()[I
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 2
    iget-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p1
.end method

.method public removeRule(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->shouldResolveLayoutDirection(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
