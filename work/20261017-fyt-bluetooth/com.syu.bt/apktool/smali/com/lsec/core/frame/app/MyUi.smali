.class public Lcom/lsec/core/frame/app/MyUi;
.super Ljava/lang/Object;
.source "MyUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/app/MyUi$Interface_TintDrawable;,
        Lcom/lsec/core/frame/app/MyUi$MyOnChildClickListener;,
        Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;,
        Lcom/lsec/core/frame/app/MyUi$MyOnItemClickListener;,
        Lcom/lsec/core/frame/app/MyUi$MyOnItemLongClickListener;
    }
.end annotation


# static fields
.field public static bEditPaddingZero:Z

.field public static mInterface_tintDrawable:Lcom/lsec/core/frame/app/MyUi$Interface_TintDrawable;

.field public static mPkgName:Ljava/lang/String;

.field public static mResources:Landroid/content/res/Resources;

.field public static mStrHeadDrawable:Ljava/lang/String;

.field public static mStrHeadXml:Ljava/lang/String;


# instance fields
.field public bIsInListItem:Z

.field public mActivity:Landroid/app/Activity;

.field public mContext:Landroid/content/Context;

.field public mCtrlId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCtrlType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDlgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceUi:Lcom/lsec/core/frame/app/InterfaceUi;

.field public mMapPage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMapString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMapStringArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMapString_Common:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMultText:F

.field public mPageUiItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lsec/core/frame/app/MyUiItem;",
            ">;"
        }
    .end annotation
.end field

.field public mPages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lsec/core/frame/ctrl/JPage;",
            ">;"
        }
    .end annotation
.end field

.field public mScale:F

.field public mStatusHeight:I

.field public mStrLangXml:Ljava/lang/String;

.field public mStrZip:Ljava/lang/String;

.field public mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lsec/core/frame/app/MyUi;->bEditPaddingZero:Z

    .line 132
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    .line 133
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/frame/app/MyUi;->mStrHeadDrawable:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/frame/app/MyUi;->mInterface_tintDrawable:Lcom/lsec/core/frame/app/MyUi$Interface_TintDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lsec/core/frame/app/InterfaceUi;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interfaceUi"    # Lcom/lsec/core/frame/app/InterfaceUi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lsec/core/frame/app/InterfaceUi;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p3, "cType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "cId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/high16 v0, 0x3f800000    # 1.0f

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v0, p0, Lcom/lsec/core/frame/app/MyUi;->mMultText:F

    .line 110
    iput v0, p0, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    .line 111
    const/16 v0, 0x3c

    iput v0, p0, Lcom/lsec/core/frame/app/MyUi;->mStatusHeight:I

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mPageUiItems:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mDlgs:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mCtrlType:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mStrLangXml:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mMapString:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mMapString_Common:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mMapStringArray:Ljava/util/HashMap;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/app/MyUi;->bIsInListItem:Z

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    .line 280
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 281
    iput-object p2, p0, Lcom/lsec/core/frame/app/MyUi;->mInterfaceUi:Lcom/lsec/core/frame/app/InterfaceUi;

    .line 282
    new-instance v0, Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    invoke-direct {v0, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    .line 283
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mInterfaceUi:Lcom/lsec/core/frame/app/InterfaceUi;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mInterfaceUi:Lcom/lsec/core/frame/app/InterfaceUi;

    invoke-interface {v0, p0}, Lcom/lsec/core/frame/app/InterfaceUi;->InitMapPage(Lcom/lsec/core/frame/app/MyUi;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    .line 288
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lsec/core/frame/app/MyUi;->mPkgName:Ljava/lang/String;

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mActivity:Landroid/app/Activity;

    .line 294
    :cond_2
    if-eqz p4, :cond_3

    .line 295
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    invoke-static {v0, p4}, Lcom/lsec/core/frame/app/MyUi;->PutHashMap(Ljava/util/HashMap;Ljava/lang/Class;)V

    .line 296
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mCtrlType:Ljava/util/HashMap;

    const-class v1, Lcom/lsec/core/frame/data/FinalType;

    invoke-static {v0, v1}, Lcom/lsec/core/frame/app/MyUi;->PutHashMap(Ljava/util/HashMap;Ljava/lang/Class;)V

    .line 297
    if-eqz p3, :cond_3

    .line 298
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mCtrlType:Ljava/util/HashMap;

    invoke-static {v0, p3}, Lcom/lsec/core/frame/app/MyUi;->PutHashMap(Ljava/util/HashMap;Ljava/lang/Class;)V

    .line 301
    :cond_3
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyUi;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/app/MyUi;->mStatusHeight:I

    .line 302
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyUi;->InitScreen()V

    .line 303
    return-void
.end method

.method public static PutHashMap(Ljava/util/HashMap;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_0

    .line 307
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 308
    .local v2, "fs":[Ljava/lang/reflect/Field;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 316
    .end local v2    # "fs":[Ljava/lang/reflect/Field;
    :cond_0
    return-void

    .line 308
    .restart local v2    # "fs":[Ljava/lang/reflect/Field;
    :cond_1
    aget-object v1, v2, v3

    .line 310
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .locals 41
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/animation/AnimationSet;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2484
    const/4 v4, 0x0

    .line 2486
    .local v4, "anim":Landroid/view/animation/Animation;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v26

    .line 2487
    .local v26, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v39

    .local v39, "type":I
    const/4 v13, 0x3

    move/from16 v0, v39

    if-ne v0, v13, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    move/from16 v0, v26

    if-le v13, v0, :cond_2

    .line 2488
    :cond_1
    const/4 v13, 0x1

    move/from16 v0, v39

    if-ne v0, v13, :cond_3

    .line 2745
    :cond_2
    return-object v4

    .line 2489
    :cond_3
    const/4 v13, 0x2

    move/from16 v0, v39

    if-ne v0, v13, :cond_0

    .line 2492
    const-string v33, ""

    .line 2493
    .local v33, "strInterpolator":Ljava/lang/String;
    const-wide/16 v28, 0x64

    .line 2494
    .local v28, "durationMillis":J
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    .line 2495
    .local v32, "name":Ljava/lang/String;
    const-string v13, "set"

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2496
    new-instance v4, Landroid/view/animation/AnimationSet;

    .end local v4    # "anim":Landroid/view/animation/Animation;
    const/4 v13, 0x0

    invoke-direct {v4, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .restart local v4    # "anim":Landroid/view/animation/Animation;
    move-object v13, v4

    .line 2497
    check-cast v13, Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v13, v2}, Lcom/lsec/core/frame/app/MyUi;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    .line 2717
    :goto_1
    if-eqz v4, :cond_0

    .line 2718
    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2719
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 2720
    const-string v13, "accelerate_decelerate_interpolator"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3e

    .line 2721
    new-instance v13, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2740
    :cond_4
    :goto_2
    if-eqz p2, :cond_0

    .line 2741
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2498
    :cond_5
    const-string v13, "alpha"

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2499
    const/high16 v27, 0x3f800000    # 1.0f

    .line 2500
    .local v27, "fromAlpha":F
    const/high16 v38, 0x3f800000    # 1.0f

    .line 2501
    .local v38, "toAlpha":F
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v25

    .line 2502
    .local v25, "cnt":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_3
    move/from16 v0, v30

    move/from16 v1, v25

    if-lt v0, v1, :cond_6

    .line 2515
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    .end local v4    # "anim":Landroid/view/animation/Animation;
    move/from16 v0, v27

    move/from16 v1, v38

    invoke-direct {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2516
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 2503
    :cond_6
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v34

    .line 2504
    .local v34, "strName":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v35

    .line 2505
    .local v35, "strVal":Ljava/lang/String;
    const-string v13, "duration"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2506
    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 2502
    :cond_7
    :goto_4
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 2507
    :cond_8
    const-string v13, "interpolator"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2508
    move-object/from16 v33, v35

    goto :goto_4

    .line 2509
    :cond_9
    const-string v13, "fromAlpha"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2510
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    goto :goto_4

    .line 2511
    :cond_a
    const-string v13, "toAlpha"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2512
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v38

    goto :goto_4

    .line 2516
    .end local v25    # "cnt":I
    .end local v27    # "fromAlpha":F
    .end local v30    # "i":I
    .end local v34    # "strName":Ljava/lang/String;
    .end local v35    # "strVal":Ljava/lang/String;
    .end local v38    # "toAlpha":F
    :cond_b
    const-string v13, "scale"

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 2517
    const/4 v5, 0x0

    .line 2518
    .local v5, "fromX":F
    const/4 v6, 0x0

    .line 2519
    .local v6, "toX":F
    const/4 v7, 0x0

    .line 2520
    .local v7, "fromY":F
    const/4 v8, 0x0

    .line 2521
    .local v8, "toY":F
    const/4 v9, 0x0

    .line 2522
    .local v9, "pivotXType":I
    const/4 v11, 0x0

    .line 2523
    .local v11, "pivotYType":I
    const/4 v10, 0x0

    .line 2524
    .local v10, "pivotXValue":F
    const/4 v12, 0x0

    .line 2525
    .local v12, "pivotYValue":F
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v25

    .line 2526
    .restart local v25    # "cnt":I
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v25

    if-lt v0, v1, :cond_c

    .line 2590
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4    # "anim":Landroid/view/animation/Animation;
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2591
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2527
    :cond_c
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v34

    .line 2528
    .restart local v34    # "strName":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v35

    .line 2529
    .restart local v35    # "strVal":Ljava/lang/String;
    const-string v13, "duration"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 2530
    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 2526
    :cond_d
    :goto_6
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 2531
    :cond_e
    const-string v13, "interpolator"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 2532
    move-object/from16 v33, v35

    goto :goto_6

    .line 2533
    :cond_f
    const-string v13, "fromXScale"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 2534
    move-object/from16 v36, v35

    .line 2535
    .local v36, "strX":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2536
    .local v31, "index":I
    if-ltz v31, :cond_d

    .line 2537
    const/4 v13, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 2538
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v5, v13, v16

    .line 2540
    goto :goto_6

    .end local v31    # "index":I
    .end local v36    # "strX":Ljava/lang/String;
    :cond_10
    const-string v13, "toXScale"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 2541
    move-object/from16 v36, v35

    .line 2542
    .restart local v36    # "strX":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2543
    .restart local v31    # "index":I
    if-ltz v31, :cond_d

    .line 2544
    const/4 v13, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 2545
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v6, v13, v16

    .line 2547
    goto :goto_6

    .end local v31    # "index":I
    .end local v36    # "strX":Ljava/lang/String;
    :cond_11
    const-string v13, "fromYScale"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 2548
    move-object/from16 v37, v35

    .line 2549
    .local v37, "strY":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2550
    .restart local v31    # "index":I
    if-ltz v31, :cond_d

    .line 2551
    const/4 v13, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 2552
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v7, v13, v16

    .line 2554
    goto/16 :goto_6

    .end local v31    # "index":I
    .end local v37    # "strY":Ljava/lang/String;
    :cond_12
    const-string v13, "toYScale"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 2555
    move-object/from16 v37, v35

    .line 2556
    .restart local v37    # "strY":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2557
    .restart local v31    # "index":I
    if-ltz v31, :cond_d

    .line 2558
    const/4 v13, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 2559
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v8, v13, v16

    .line 2561
    goto/16 :goto_6

    .end local v31    # "index":I
    .end local v37    # "strY":Ljava/lang/String;
    :cond_13
    const-string v13, "pivotX"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 2562
    const-string v13, "%p"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 2563
    const/4 v9, 0x2

    .line 2567
    :cond_14
    :goto_7
    move-object/from16 v36, v35

    .line 2568
    .restart local v36    # "strX":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2569
    .restart local v31    # "index":I
    if-ltz v31, :cond_16

    .line 2570
    const/4 v13, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 2571
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v10, v13, v16

    .line 2572
    goto/16 :goto_6

    .line 2564
    .end local v31    # "index":I
    .end local v36    # "strX":Ljava/lang/String;
    :cond_15
    const-string v13, "%"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 2565
    const/4 v9, 0x1

    goto :goto_7

    .line 2573
    .restart local v31    # "index":I
    .restart local v36    # "strX":Ljava/lang/String;
    :cond_16
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 2574
    goto/16 :goto_6

    .end local v31    # "index":I
    .end local v36    # "strX":Ljava/lang/String;
    :cond_17
    const-string v13, "pivotY"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 2575
    const-string v13, "%p"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 2576
    const/4 v11, 0x2

    .line 2580
    :cond_18
    :goto_8
    move-object/from16 v37, v35

    .line 2581
    .restart local v37    # "strY":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2582
    .restart local v31    # "index":I
    if-ltz v31, :cond_1a

    .line 2583
    const/4 v13, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 2584
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v12, v13, v16

    .line 2585
    goto/16 :goto_6

    .line 2577
    .end local v31    # "index":I
    .end local v37    # "strY":Ljava/lang/String;
    :cond_19
    const-string v13, "%"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 2578
    const/4 v11, 0x1

    goto :goto_8

    .line 2586
    .restart local v31    # "index":I
    .restart local v37    # "strY":Ljava/lang/String;
    :cond_1a
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    goto/16 :goto_6

    .line 2591
    .end local v5    # "fromX":F
    .end local v6    # "toX":F
    .end local v7    # "fromY":F
    .end local v8    # "toY":F
    .end local v9    # "pivotXType":I
    .end local v10    # "pivotXValue":F
    .end local v11    # "pivotYType":I
    .end local v12    # "pivotYValue":F
    .end local v25    # "cnt":I
    .end local v30    # "i":I
    .end local v31    # "index":I
    .end local v34    # "strName":Ljava/lang/String;
    .end local v35    # "strVal":Ljava/lang/String;
    .end local v37    # "strY":Ljava/lang/String;
    :cond_1b
    const-string v13, "rotate"

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 2592
    const/4 v14, 0x0

    .line 2593
    .local v14, "fromDegrees":F
    const/4 v15, 0x0

    .line 2594
    .local v15, "toDegrees":F
    const/4 v9, 0x0

    .line 2595
    .restart local v9    # "pivotXType":I
    const/4 v11, 0x0

    .line 2596
    .restart local v11    # "pivotYType":I
    const/4 v10, 0x0

    .line 2597
    .restart local v10    # "pivotXValue":F
    const/4 v12, 0x0

    .line 2598
    .restart local v12    # "pivotYValue":F
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v25

    .line 2599
    .restart local v25    # "cnt":I
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_9
    move/from16 v0, v30

    move/from16 v1, v25

    if-lt v0, v1, :cond_1c

    .line 2639
    new-instance v4, Landroid/view/animation/RotateAnimation;

    .end local v4    # "anim":Landroid/view/animation/Animation;
    move-object v13, v4

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2640
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2600
    :cond_1c
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v34

    .line 2601
    .restart local v34    # "strName":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v35

    .line 2602
    .restart local v35    # "strVal":Ljava/lang/String;
    const-string v13, "duration"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 2603
    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 2599
    :cond_1d
    :goto_a
    add-int/lit8 v30, v30, 0x1

    goto :goto_9

    .line 2604
    :cond_1e
    const-string v13, "interpolator"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 2605
    move-object/from16 v33, v35

    goto :goto_a

    .line 2606
    :cond_1f
    const-string v13, "fromDegrees"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 2607
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    goto :goto_a

    .line 2608
    :cond_20
    const-string v13, "toDegrees"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 2609
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    goto :goto_a

    .line 2610
    :cond_21
    const-string v13, "pivotX"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 2611
    const-string v13, "%p"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 2612
    const/4 v9, 0x2

    .line 2616
    :cond_22
    :goto_b
    move-object/from16 v36, v35

    .line 2617
    .restart local v36    # "strX":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2618
    .restart local v31    # "index":I
    if-ltz v31, :cond_24

    .line 2619
    const/4 v13, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 2620
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v10, v13, v16

    .line 2621
    goto :goto_a

    .line 2613
    .end local v31    # "index":I
    .end local v36    # "strX":Ljava/lang/String;
    :cond_23
    const-string v13, "%"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 2614
    const/4 v9, 0x1

    goto :goto_b

    .line 2622
    .restart local v31    # "index":I
    .restart local v36    # "strX":Ljava/lang/String;
    :cond_24
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 2623
    goto :goto_a

    .end local v31    # "index":I
    .end local v36    # "strX":Ljava/lang/String;
    :cond_25
    const-string v13, "pivotY"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 2624
    const-string v13, "%p"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 2625
    const/4 v11, 0x2

    .line 2629
    :cond_26
    :goto_c
    move-object/from16 v37, v35

    .line 2630
    .restart local v37    # "strY":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2631
    .restart local v31    # "index":I
    if-ltz v31, :cond_28

    .line 2632
    const/4 v13, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 2633
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v12, v13, v16

    .line 2634
    goto/16 :goto_a

    .line 2626
    .end local v31    # "index":I
    .end local v37    # "strY":Ljava/lang/String;
    :cond_27
    const-string v13, "%"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 2627
    const/4 v11, 0x1

    goto :goto_c

    .line 2635
    .restart local v31    # "index":I
    .restart local v37    # "strY":Ljava/lang/String;
    :cond_28
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    goto/16 :goto_a

    .line 2640
    .end local v9    # "pivotXType":I
    .end local v10    # "pivotXValue":F
    .end local v11    # "pivotYType":I
    .end local v12    # "pivotYValue":F
    .end local v14    # "fromDegrees":F
    .end local v15    # "toDegrees":F
    .end local v25    # "cnt":I
    .end local v30    # "i":I
    .end local v31    # "index":I
    .end local v34    # "strName":Ljava/lang/String;
    .end local v35    # "strVal":Ljava/lang/String;
    .end local v37    # "strY":Ljava/lang/String;
    :cond_29
    const-string v13, "translate"

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 2641
    const/16 v17, 0x0

    .line 2642
    .local v17, "fromXType":I
    const/16 v19, 0x0

    .line 2643
    .local v19, "toXType":I
    const/16 v21, 0x0

    .line 2644
    .local v21, "fromYType":I
    const/16 v23, 0x0

    .line 2645
    .local v23, "toYType":I
    const/16 v18, 0x0

    .line 2646
    .local v18, "fromXValue":F
    const/16 v20, 0x0

    .line 2647
    .local v20, "toXValue":F
    const/16 v22, 0x0

    .line 2648
    .local v22, "fromYValue":F
    const/16 v24, 0x0

    .line 2649
    .local v24, "toYValue":F
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v25

    .line 2650
    .restart local v25    # "cnt":I
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_d
    move/from16 v0, v30

    move/from16 v1, v25

    if-lt v0, v1, :cond_2a

    .line 2712
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4    # "anim":Landroid/view/animation/Animation;
    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v24}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2714
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2651
    :cond_2a
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v34

    .line 2652
    .restart local v34    # "strName":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v35

    .line 2653
    .restart local v35    # "strVal":Ljava/lang/String;
    const-string v13, "duration"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 2654
    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 2650
    :cond_2b
    :goto_e
    add-int/lit8 v30, v30, 0x1

    goto :goto_d

    .line 2655
    :cond_2c
    const-string v13, "interpolator"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 2656
    move-object/from16 v33, v35

    goto :goto_e

    .line 2657
    :cond_2d
    const-string v13, "fromXDelta"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    .line 2658
    const-string v13, "%p"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 2659
    const/16 v17, 0x2

    .line 2663
    :cond_2e
    :goto_f
    move-object/from16 v36, v35

    .line 2664
    .restart local v36    # "strX":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2665
    .restart local v31    # "index":I
    if-ltz v31, :cond_30

    .line 2666
    const/4 v13, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 2667
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v18, v13, v16

    .line 2668
    goto :goto_e

    .line 2660
    .end local v31    # "index":I
    .end local v36    # "strX":Ljava/lang/String;
    :cond_2f
    const-string v13, "%"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2e

    .line 2661
    const/16 v17, 0x1

    goto :goto_f

    .line 2669
    .restart local v31    # "index":I
    .restart local v36    # "strX":Ljava/lang/String;
    :cond_30
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 2670
    goto :goto_e

    .end local v31    # "index":I
    .end local v36    # "strX":Ljava/lang/String;
    :cond_31
    const-string v13, "toXDelta"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    .line 2671
    const-string v13, "%p"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 2672
    const/16 v19, 0x2

    .line 2676
    :cond_32
    :goto_10
    move-object/from16 v36, v35

    .line 2677
    .restart local v36    # "strX":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2678
    .restart local v31    # "index":I
    if-ltz v31, :cond_34

    .line 2679
    const/4 v13, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 2680
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v20, v13, v16

    .line 2681
    goto/16 :goto_e

    .line 2673
    .end local v31    # "index":I
    .end local v36    # "strX":Ljava/lang/String;
    :cond_33
    const-string v13, "%"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_32

    .line 2674
    const/16 v19, 0x1

    goto :goto_10

    .line 2682
    .restart local v31    # "index":I
    .restart local v36    # "strX":Ljava/lang/String;
    :cond_34
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    .line 2683
    goto/16 :goto_e

    .end local v31    # "index":I
    .end local v36    # "strX":Ljava/lang/String;
    :cond_35
    const-string v13, "fromYDelta"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_39

    .line 2684
    const-string v13, "%p"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_37

    .line 2685
    const/16 v21, 0x2

    .line 2689
    :cond_36
    :goto_11
    move-object/from16 v37, v35

    .line 2690
    .restart local v37    # "strY":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2691
    .restart local v31    # "index":I
    if-ltz v31, :cond_38

    .line 2692
    const/4 v13, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 2693
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v22, v13, v16

    .line 2694
    goto/16 :goto_e

    .line 2686
    .end local v31    # "index":I
    .end local v37    # "strY":Ljava/lang/String;
    :cond_37
    const-string v13, "%"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_36

    .line 2687
    const/16 v21, 0x1

    goto :goto_11

    .line 2695
    .restart local v31    # "index":I
    .restart local v37    # "strY":Ljava/lang/String;
    :cond_38
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    .line 2696
    goto/16 :goto_e

    .end local v31    # "index":I
    .end local v37    # "strY":Ljava/lang/String;
    :cond_39
    const-string v13, "toYDelta"

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 2697
    const-string v13, "%p"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 2698
    const/16 v23, 0x2

    .line 2702
    :cond_3a
    :goto_12
    move-object/from16 v37, v35

    .line 2703
    .restart local v37    # "strY":Ljava/lang/String;
    const-string v13, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 2704
    .restart local v31    # "index":I
    if-ltz v31, :cond_3c

    .line 2705
    const/4 v13, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 2706
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v24, v13, v16

    .line 2707
    goto/16 :goto_e

    .line 2699
    .end local v31    # "index":I
    .end local v37    # "strY":Ljava/lang/String;
    :cond_3b
    const-string v13, "%"

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 2700
    const/16 v23, 0x1

    goto :goto_12

    .line 2708
    .restart local v31    # "index":I
    .restart local v37    # "strY":Ljava/lang/String;
    :cond_3c
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    goto/16 :goto_e

    .line 2715
    .end local v17    # "fromXType":I
    .end local v18    # "fromXValue":F
    .end local v19    # "toXType":I
    .end local v20    # "toXValue":F
    .end local v21    # "fromYType":I
    .end local v22    # "fromYValue":F
    .end local v23    # "toYType":I
    .end local v24    # "toYValue":F
    .end local v25    # "cnt":I
    .end local v30    # "i":I
    .end local v31    # "index":I
    .end local v34    # "strName":Ljava/lang/String;
    .end local v35    # "strVal":Ljava/lang/String;
    .end local v37    # "strY":Ljava/lang/String;
    :cond_3d
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v40, "Unknown animation name: "

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2722
    :cond_3e
    const-string v13, "accelerate_interpolator"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 2723
    new-instance v13, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_2

    .line 2724
    :cond_3f
    const-string v13, "anticipate_interpolator"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_40

    .line 2725
    new-instance v13, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v4, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_2

    .line 2726
    :cond_40
    const-string v13, "anticipate_overshoot_interpolator"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_41

    .line 2727
    new-instance v13, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v4, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_2

    .line 2728
    :cond_41
    const-string v13, "bounce_interpolator"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_42

    .line 2729
    new-instance v13, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v13}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v4, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_2

    .line 2730
    :cond_42
    const-string v13, "cycle_interpolator"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_43

    .line 2731
    new-instance v13, Landroid/view/animation/CycleInterpolator;

    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v4, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_2

    .line 2732
    :cond_43
    const-string v13, "decelerate_interpolator"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_44

    .line 2733
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_2

    .line 2734
    :cond_44
    const-string v13, "linear_interpolator"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_45

    .line 2735
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_2

    .line 2736
    :cond_45
    const-string v13, "overshoot_interpolator"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2737
    new-instance v13, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v13}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v4, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_2
.end method

.method private createGroup(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "item"    # Lcom/lsec/core/frame/app/MyUiItem;
    .param p3, "group"    # Landroid/view/ViewGroup;
    .param p4, "groupParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 860
    if-eqz p3, :cond_5

    .line 861
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getChildCount()I

    move-result v1

    .line 862
    .local v1, "childCount":I
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 863
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_6

    .line 873
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 874
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 875
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->setId(I)V

    .line 877
    :cond_1
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getAnim()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 878
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getAnim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lsec/core/frame/app/MyUi;->loadAnimation(Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 879
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    .line 880
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 883
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    invoke-virtual {p1, p3, p2}, Lcom/lsec/core/frame/ctrl/JPage;->addChildView(Landroid/view/View;Lcom/lsec/core/frame/app/MyUiItem;)V

    .line 884
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getVisible()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 886
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 887
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v3, :cond_4

    .line 888
    instance-of v5, p4, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_9

    .line 889
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 890
    .local v4, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 891
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 892
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 893
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getWeight()I

    move-result v5

    if-lez v5, :cond_3

    .line 894
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getWeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 896
    :cond_3
    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    .end local v4    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :goto_1
    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 903
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    return-void

    .line 864
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {p2, v2}, Lcom/lsec/core/frame/app/MyUiItem;->getChildAt(I)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v6

    move-object v5, p3

    check-cast v5, Lcom/lsec/core/frame/ctrl/JScrollView;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JScrollView;->getLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {p0, p1, v6, v5}, Lcom/lsec/core/frame/app/MyUi;->CreateViewByItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V

    .line 863
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 866
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 867
    invoke-virtual {p2, v2}, Lcom/lsec/core/frame/app/MyUiItem;->getChildAt(I)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v6

    move-object v5, p3

    check-cast v5, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->getLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {p0, p1, v6, v5}, Lcom/lsec/core/frame/app/MyUi;->CreateViewByItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V

    .line 866
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 869
    .end local v2    # "i":I
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_0

    .line 870
    invoke-virtual {p2, v2}, Lcom/lsec/core/frame/app/MyUiItem;->getChildAt(I)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v5

    invoke-virtual {p0, p1, v5, p3}, Lcom/lsec/core/frame/app/MyUi;->CreateViewByItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V

    .line 869
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 898
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private createLayout(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "item"    # Lcom/lsec/core/frame/app/MyUiItem;
    .param p3, "groupParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 906
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 907
    new-instance v0, Lcom/lsec/core/frame/ctrl/JLinearLayout;

    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/lsec/core/frame/ctrl/JLinearLayout;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 908
    .local v0, "group":Lcom/lsec/core/frame/ctrl/JLinearLayout;
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 909
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/lsec/core/frame/ctrl/JLinearLayout;->setStrDrawable(Ljava/lang/String;Z)V

    .line 911
    :cond_0
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 912
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 913
    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JLinearLayout;->setOrientation(I)V

    .line 917
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lsec/core/frame/app/MyUi;->createGroup(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 925
    .end local v0    # "group":Lcom/lsec/core/frame/ctrl/JLinearLayout;
    :goto_1
    return-void

    .line 915
    .restart local v0    # "group":Lcom/lsec/core/frame/ctrl/JLinearLayout;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 919
    .end local v0    # "group":Lcom/lsec/core/frame/ctrl/JLinearLayout;
    :cond_3
    new-instance v0, Lcom/lsec/core/frame/ctrl/JFrameLayout;

    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/lsec/core/frame/ctrl/JFrameLayout;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 920
    .local v0, "group":Lcom/lsec/core/frame/ctrl/JFrameLayout;
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 921
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/lsec/core/frame/ctrl/JFrameLayout;->setStrDrawable(Ljava/lang/String;Z)V

    .line 923
    :cond_4
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lsec/core/frame/app/MyUi;->createGroup(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method private createPage(Lcom/lsec/core/frame/app/MyUiItem;Lcom/lsec/core/frame/ctrl/JPage;)Lcom/lsec/core/frame/ctrl/JPage;
    .locals 7
    .param p1, "item"    # Lcom/lsec/core/frame/app/MyUiItem;
    .param p2, "pageExist"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 1717
    move-object v3, p2

    .line 1718
    .local v3, "group":Lcom/lsec/core/frame/ctrl/JPage;
    if-nez v3, :cond_0

    .line 1719
    new-instance v3, Lcom/lsec/core/frame/ctrl/JPage;

    .end local v3    # "group":Lcom/lsec/core/frame/ctrl/JPage;
    iget-object v5, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, p0}, Lcom/lsec/core/frame/ctrl/JPage;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/app/MyUi;)V

    .line 1720
    .restart local v3    # "group":Lcom/lsec/core/frame/ctrl/JPage;
    invoke-virtual {v3, p1}, Lcom/lsec/core/frame/ctrl/JPage;->setTag(Ljava/lang/Object;)V

    .line 1721
    invoke-virtual {p1}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1722
    invoke-virtual {p1}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/ctrl/JPage;->setId(I)V

    .line 1725
    :cond_0
    if-eqz v3, :cond_1

    .line 1726
    invoke-virtual {p1}, Lcom/lsec/core/frame/app/MyUiItem;->getChildCount()I

    move-result v2

    .line 1727
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_2

    .line 1732
    invoke-virtual {p1}, Lcom/lsec/core/frame/app/MyUiItem;->getAnim()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1733
    invoke-virtual {p1}, Lcom/lsec/core/frame/app/MyUiItem;->getAnim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lsec/core/frame/app/MyUi;->loadAnimation(Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1734
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1735
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1739
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v2    # "childCount":I
    .end local v4    # "i":I
    :cond_1
    return-object v3

    .line 1728
    .restart local v2    # "childCount":I
    .restart local v4    # "i":I
    :cond_2
    invoke-virtual {p1, v4}, Lcom/lsec/core/frame/app/MyUiItem;->getChildAt(I)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v1

    .line 1729
    .local v1, "child":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {p0, v3, v1, v3}, Lcom/lsec/core/frame/app/MyUi;->CreateViewByItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V

    .line 1727
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private createScrollView(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "item"    # Lcom/lsec/core/frame/app/MyUiItem;
    .param p3, "groupParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 928
    new-instance v0, Lcom/lsec/core/frame/ctrl/JScrollView;

    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/lsec/core/frame/ctrl/JScrollView;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 929
    .local v0, "group":Lcom/lsec/core/frame/ctrl/JScrollView;
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 930
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/lsec/core/frame/ctrl/JScrollView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 932
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 933
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JScrollView;->setLayout(Landroid/widget/LinearLayout;)V

    .line 934
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 935
    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 934
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 937
    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 938
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lsec/core/frame/app/MyUi;->createGroup(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 939
    return-void
.end method

.method private createScrollViewHorizontal(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "item"    # Lcom/lsec/core/frame/app/MyUiItem;
    .param p3, "groupParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 942
    new-instance v0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;

    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 943
    .local v0, "group":Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 944
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->setStrDrawable(Ljava/lang/String;Z)V

    .line 946
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 947
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->setLayout(Landroid/widget/LinearLayout;)V

    .line 948
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    .line 949
    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 948
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 951
    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->setHorizontalScrollBarEnabled(Z)V

    .line 952
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lsec/core/frame/app/MyUi;->createGroup(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 953
    return-void
.end method

.method public static getCurrentLang()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1747
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1748
    .local v0, "localeDefault":Ljava/util/Locale;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 1749
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 1751
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIntArray(Ljava/lang/String;)[I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v2, 0x0

    .line 389
    .local v2, "intArray":[I
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "strArray":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 391
    array-length v1, v3

    .line 392
    .local v1, "iLenArray":I
    if-lez v1, :cond_0

    .line 393
    new-array v2, v1, [I

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 399
    .end local v0    # "i":I
    .end local v1    # "iLenArray":I
    :cond_0
    return-object v2

    .line 395
    .restart local v0    # "i":I
    .restart local v1    # "iLenArray":I
    :cond_1
    aget-object v4, v3, v0

    invoke-static {v4}, Lcom/lsec/core/util/FuncUtils;->myParseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getItem(Lcom/lsec/core/util/Markup;Ljava/lang/String;Lcom/lsec/core/frame/app/MyUiItem;)Lcom/lsec/core/frame/app/MyUiItem;
    .locals 30
    .param p1, "xml"    # Lcom/lsec/core/util/Markup;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "itemParent"    # Lcom/lsec/core/frame/app/MyUiItem;

    .prologue
    .line 490
    const/16 v16, 0x0

    .line 491
    .local v16, "item":Lcom/lsec/core/frame/app/MyUiItem;
    const/4 v13, -0x1

    .line 492
    .local v13, "iType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlType:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlType:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 495
    :cond_0
    new-instance v16, Lcom/lsec/core/frame/app/MyUiItem;

    .end local v16    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/lsec/core/frame/app/MyUiItem;-><init>(Lcom/lsec/core/frame/app/MyUi;I)V

    .line 496
    .restart local v16    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setParentItem(Lcom/lsec/core/frame/app/MyUiItem;)V

    .line 497
    const-string v25, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setId(I)V

    .line 504
    :cond_1
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v13, v0, :cond_2

    .line 505
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v14

    .line 506
    .local v14, "idPage":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v14, v0, :cond_2

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v25

    if-gez v25, :cond_2

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mPageUiItems:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v25

    if-gez v25, :cond_2

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mPageUiItems:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 514
    .end local v14    # "idPage":I
    :cond_2
    const-string v25, "visible"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 515
    const-string v25, "GONE"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 516
    const/16 v25, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setVisible(I)V

    .line 519
    :cond_3
    const-string v25, "anim"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 520
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setAnim(Ljava/lang/String;)V

    .line 522
    :cond_4
    const-string v25, "size"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 523
    const-string v25, ";"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 524
    .local v22, "strArraySize":[Ljava/lang/String;
    if-eqz v22, :cond_6

    .line 525
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v11, v25, -0x1

    .line 526
    .local v11, "iSumSize":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-lt v11, v0, :cond_5

    .line 527
    new-array v0, v11, [Lcom/lsec/core/util/MySize;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/lsec/core/frame/app/MyUiItem;->mSize:[Lcom/lsec/core/util/MySize;

    .line 528
    const/4 v12, 0x0

    .local v12, "iTmp":I
    :goto_0
    if-lt v12, v11, :cond_21

    .line 533
    .end local v12    # "iTmp":I
    :cond_5
    const/16 v25, 0x0

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Lcom/lsec/core/frame/app/MyUi;->getIntArray(Ljava/lang/String;)[I

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setSize([I)V

    .line 536
    .end local v11    # "iSumSize":I
    :cond_6
    const-string v25, "pos"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 537
    invoke-static/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUi;->getIntArray(Ljava/lang/String;)[I

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setPos([I)V

    .line 571
    .end local v22    # "strArraySize":[Ljava/lang/String;
    :cond_7
    :goto_1
    const/16 v19, 0x0

    .line 572
    .local v19, "ptBase":Landroid/graphics/Point;
    if-eqz p3, :cond_8

    .line 573
    invoke-virtual/range {p3 .. p3}, Lcom/lsec/core/frame/app/MyUiItem;->getPtConfig()Landroid/graphics/Point;

    move-result-object v19

    .line 575
    :cond_8
    const-string v25, "paraStr"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 576
    const-string v25, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 577
    .local v20, "strArray":[Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setParaStr([Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/app/MyUiItem;->isPadding()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lsec/core/frame/app/MyUi;->mStatusHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lsec/core/frame/app/MyUiItem;->mPlusPadding:I

    .line 582
    .end local v20    # "strArray":[Ljava/lang/String;
    :cond_9
    const-string v25, "dirs"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 583
    const-string v25, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 584
    .restart local v20    # "strArray":[Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUiItem;->setDirStr(Lcom/lsec/core/frame/app/MyUi;[Ljava/lang/String;)V

    .line 587
    .end local v20    # "strArray":[Ljava/lang/String;
    :cond_a
    const-string v25, "prevnext"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 588
    const-string v25, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 589
    .restart local v20    # "strArray":[Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUiItem;->setPrevNextStr(Lcom/lsec/core/frame/app/MyUi;[Ljava/lang/String;)V

    .line 592
    .end local v20    # "strArray":[Ljava/lang/String;
    :cond_b
    const-string v25, "gravity"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 593
    const/16 v24, -0x2

    .line 594
    .local v24, "wParam":I
    const/4 v9, -0x2

    .line 595
    .local v9, "hParam":I
    const-string v25, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 596
    .restart local v20    # "strArray":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_e

    .line 597
    const/16 v25, 0x0

    aget-object v25, v20, v25

    const-string v26, "wrap_content"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_24

    .line 598
    const/16 v24, -0x2

    .line 604
    :goto_2
    const/16 v25, 0x1

    aget-object v25, v20, v25

    const-string v26, "wrap_content"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_26

    .line 605
    const/4 v9, -0x2

    .line 611
    :goto_3
    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-direct {v0, v1, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 612
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_d

    .line 613
    const/4 v5, 0x0

    .line 614
    .local v5, "bSetGravity":Z
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Left"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2a

    .line 615
    const/4 v5, 0x1

    .line 616
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Top"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_28

    .line 617
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x33

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 647
    :cond_c
    :goto_4
    if-nez v5, :cond_d

    .line 648
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x11

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 651
    .end local v5    # "bSetGravity":Z
    :cond_d
    const-string v25, "pos"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 652
    invoke-static/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUi;->getIntArray(Ljava/lang/String;)[I

    move-result-object v15

    .line 653
    .local v15, "intArray":[I
    if-eqz v15, :cond_e

    .line 654
    array-length v0, v15

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 655
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v26, v15, v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 656
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mPlusPadding:I

    move/from16 v26, v0

    const/16 v27, 0x1

    aget v27, v15, v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 663
    .end local v9    # "hParam":I
    .end local v15    # "intArray":[I
    .end local v20    # "strArray":[Ljava/lang/String;
    .end local v24    # "wParam":I
    :cond_e
    const-string v25, "rect"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 664
    const-string v25, ";"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 665
    .local v21, "strArrayRec":[Ljava/lang/String;
    if-eqz v21, :cond_10

    .line 666
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v10, v25, -0x1

    .line 667
    .local v10, "iSumRec":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-lt v10, v0, :cond_f

    .line 668
    new-array v0, v10, [Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/lsec/core/frame/app/MyUiItem;->mRect:[Landroid/graphics/Rect;

    .line 669
    const/4 v12, 0x0

    .restart local v12    # "iTmp":I
    :goto_5
    if-lt v12, v10, :cond_32

    .line 675
    .end local v12    # "iTmp":I
    :cond_f
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    if-nez v25, :cond_10

    .line 676
    const/16 v25, 0x0

    aget-object v25, v21, v25

    invoke-static/range {v25 .. v25}, Lcom/lsec/core/frame/app/MyUi;->getIntArray(Ljava/lang/String;)[I

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUiItem;->setRect(Landroid/graphics/Point;[I)V

    .line 680
    .end local v10    # "iSumRec":I
    .end local v21    # "strArrayRec":[Ljava/lang/String;
    :cond_10
    const-string v25, "posIco"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 681
    invoke-static/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUi;->getIntArray(Ljava/lang/String;)[I

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setPosIcon([I)V

    .line 683
    :cond_11
    const-string v25, "icon"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 684
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setIcon(Ljava/lang/String;)V

    .line 686
    :cond_12
    const-string v25, "padding"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 687
    invoke-static/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUi;->getIntArray(Ljava/lang/String;)[I

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setPadding([I)V

    .line 689
    :cond_13
    const-string v25, "para"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 690
    invoke-static/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUi;->getIntArray(Ljava/lang/String;)[I

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setPara([I)V

    .line 692
    :cond_14
    const-string v25, "weight"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 693
    invoke-static/range {p2 .. p2}, Lcom/lsec/core/util/FuncUtils;->myParseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setWeight(I)V

    .line 695
    :cond_15
    const-string v25, "recMark"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 696
    invoke-static/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUi;->getIntArray(Ljava/lang/String;)[I

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setRecMark([I)V

    .line 698
    :cond_16
    const-string v25, "drawable"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 699
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setStrDrawable(Ljava/lang/String;)V

    .line 701
    :cond_17
    const-string v25, "drawableExtra"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 702
    const-string v25, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 703
    .restart local v20    # "strArray":[Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setStrDrawableExtra([Ljava/lang/String;)V

    .line 706
    .end local v20    # "strArray":[Ljava/lang/String;
    :cond_18
    const-string v25, "longclick"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 707
    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x31

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 708
    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setLongClick(Z)V

    .line 711
    :cond_19
    const-string v25, "text"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 712
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 713
    .local v23, "strRes":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setTextConf(Ljava/lang/String;)V

    .line 714
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_33

    .end local v23    # "strRes":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setText(Ljava/lang/String;)V

    .line 717
    :cond_1a
    const-string v25, "color"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 718
    const-string v25, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 719
    .restart local v20    # "strArray":[Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setColor([Ljava/lang/String;)V

    .line 722
    .end local v20    # "strArray":[Ljava/lang/String;
    :cond_1b
    const-string v25, "colorBK"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 723
    const-string v25, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 724
    .restart local v20    # "strArray":[Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setColorBk([Ljava/lang/String;)V

    .line 727
    .end local v20    # "strArray":[Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v25

    if-eqz v25, :cond_20

    .line 728
    const/16 v18, 0x0

    .line 729
    .local v18, "key":I
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 731
    .local v17, "items":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lsec/core/frame/app/MyUiItem;>;"
    :cond_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mStrBuff:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mPosEnd:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mPosStart:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/Markup;->FindToken(Ljava/lang/String;II[I)Ljava/lang/String;

    move-result-object p2

    .line 733
    const/4 v6, 0x0

    .line 734
    .local v6, "child":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v25

    const/16 v26, 0xb

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_34

    .line 735
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/app/MyUiItem;->getParentItem()Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getItem(Lcom/lsec/core/util/Markup;Ljava/lang/String;Lcom/lsec/core/frame/app/MyUiItem;)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v6

    .line 739
    :goto_7
    if-eqz v6, :cond_1e

    .line 740
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 741
    add-int/lit8 v18, v18, 0x1

    .line 743
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v25

    if-nez v25, :cond_1d

    .line 745
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v25

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f

    .line 746
    const/16 v25, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUiItem;->setType(I)V

    .line 748
    :cond_1f
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/app/MyUiItem;->setUiItems(Landroid/util/SparseArray;)V

    .line 749
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/util/Markup;->ExitItem()V

    .line 752
    .end local v6    # "child":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v17    # "items":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lsec/core/frame/app/MyUiItem;>;"
    .end local v18    # "key":I
    :cond_20
    return-object v16

    .line 529
    .end local v19    # "ptBase":Landroid/graphics/Point;
    .restart local v11    # "iSumSize":I
    .restart local v12    # "iTmp":I
    .restart local v22    # "strArraySize":[Ljava/lang/String;
    :cond_21
    add-int/lit8 v25, v12, 0x1

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Lcom/lsec/core/frame/app/MyUi;->getIntArray(Ljava/lang/String;)[I

    move-result-object v15

    .line 530
    .restart local v15    # "intArray":[I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mSize:[Lcom/lsec/core/util/MySize;

    move-object/from16 v25, v0

    new-instance v26, Lcom/lsec/core/util/MySize;

    const/16 v27, 0x0

    aget v27, v15, v27

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v27

    const/16 v28, 0x1

    aget v28, v15, v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v28

    invoke-direct/range {v26 .. v28}, Lcom/lsec/core/util/MySize;-><init>(II)V

    aput-object v26, v25, v12

    .line 528
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 539
    .end local v11    # "iSumSize":I
    .end local v12    # "iTmp":I
    .end local v15    # "intArray":[I
    .end local v22    # "strArraySize":[Ljava/lang/String;
    :cond_22
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v8

    .line 540
    .local v8, "h":I
    packed-switch v13, :pswitch_data_0

    .line 546
    :goto_8
    const-string v25, "h"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 548
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 560
    :cond_23
    :goto_9
    packed-switch v13, :pswitch_data_1

    .line 564
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v8

    .line 568
    :pswitch_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/app/MyUiItem;->setHeight(I)V

    goto/16 :goto_1

    .line 542
    :pswitch_1
    const/4 v8, 0x0

    goto :goto_8

    .line 549
    :catch_0
    move-exception v7

    .line 550
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    if-eqz v25, :cond_23

    .line 552
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const-string v27, "dimen"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 552
    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    goto :goto_9

    .line 599
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "h":I
    .restart local v9    # "hParam":I
    .restart local v19    # "ptBase":Landroid/graphics/Point;
    .restart local v20    # "strArray":[Ljava/lang/String;
    .restart local v24    # "wParam":I
    :cond_24
    const/16 v25, 0x0

    aget-object v25, v20, v25

    const-string v26, "match_parent"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_25

    .line 600
    const/16 v24, -0x1

    goto/16 :goto_2

    .line 602
    :cond_25
    const/16 v25, 0x0

    aget-object v25, v20, v25

    invoke-static/range {v25 .. v25}, Lcom/lsec/core/util/FuncUtils;->myParseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v24

    goto/16 :goto_2

    .line 606
    :cond_26
    const/16 v25, 0x1

    aget-object v25, v20, v25

    const-string v26, "match_parent"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_27

    .line 607
    const/4 v9, -0x1

    goto/16 :goto_3

    .line 609
    :cond_27
    const/16 v25, 0x1

    aget-object v25, v20, v25

    invoke-static/range {v25 .. v25}, Lcom/lsec/core/util/FuncUtils;->myParseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v9

    goto/16 :goto_3

    .line 618
    .restart local v5    # "bSetGravity":Z
    :cond_28
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Bottom"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_29

    .line 619
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x53

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 621
    :cond_29
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x13

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 622
    :cond_2a
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Right"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2d

    .line 623
    const/4 v5, 0x1

    .line 624
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Top"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 625
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x35

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 626
    :cond_2b
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Bottom"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 627
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x55

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 629
    :cond_2c
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x15

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 630
    :cond_2d
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Bottom"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2e

    .line 631
    const/4 v5, 0x1

    .line 632
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x51

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 633
    :cond_2e
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Top"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2f

    .line 634
    const/4 v5, 0x1

    .line 635
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x31

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 636
    :cond_2f
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Center_H"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_30

    .line 637
    const/4 v5, 0x1

    .line 638
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 639
    :cond_30
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Center_V"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_31

    .line 640
    const/4 v5, 0x1

    .line 641
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 642
    :cond_31
    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string v26, "Center"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 643
    const/4 v5, 0x1

    .line 644
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v26, 0x11

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 670
    .end local v5    # "bSetGravity":Z
    .end local v9    # "hParam":I
    .end local v20    # "strArray":[Ljava/lang/String;
    .end local v24    # "wParam":I
    .restart local v10    # "iSumRec":I
    .restart local v12    # "iTmp":I
    .restart local v21    # "strArrayRec":[Ljava/lang/String;
    :cond_32
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    aput-object v26, v25, v12

    .line 671
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUiItem;->mRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    aget-object v25, v25, v12

    add-int/lit8 v26, v12, 0x1

    aget-object v26, v21, v26

    invoke-static/range {v26 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getIntArray(Ljava/lang/String;)[I

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUiItem;->setRect(Landroid/graphics/Rect;[I)V

    .line 669
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .end local v10    # "iSumRec":I
    .end local v12    # "iTmp":I
    .end local v21    # "strArrayRec":[Ljava/lang/String;
    .restart local v23    # "strRes":Ljava/lang/String;
    :cond_33
    move-object/from16 v23, p2

    .line 714
    goto/16 :goto_6

    .line 737
    .end local v23    # "strRes":Ljava/lang/String;
    .restart local v6    # "child":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v17    # "items":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lsec/core/frame/app/MyUiItem;>;"
    .restart local v18    # "key":I
    :cond_34
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getItem(Lcom/lsec/core/util/Markup;Ljava/lang/String;Lcom/lsec/core/frame/app/MyUiItem;)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v6

    goto/16 :goto_7

    .line 554
    .end local v6    # "child":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v17    # "items":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lsec/core/frame/app/MyUiItem;>;"
    .end local v18    # "key":I
    .end local v19    # "ptBase":Landroid/graphics/Point;
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "h":I
    :catch_1
    move-exception v25

    goto/16 :goto_9

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch

    .line 560
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public static getXmlAnimationDrawable(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/util/Markup;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p1, "xml"    # Lcom/lsec/core/util/Markup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/app/MyUi;",
            "Lcom/lsec/core/util/Markup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 2224
    .local p2, "mapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .local p3, "tmpMapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 2225
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const-string v5, "android:oneshot"

    invoke-virtual {p1, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2226
    .local v4, "strTemp":Ljava/lang/String;
    const-string v5, "false"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2227
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 2229
    :cond_0
    invoke-virtual {p1}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2231
    :cond_1
    const/4 v1, 0x0

    .line 2232
    .local v1, "duration":I
    const/4 v2, 0x0

    .line 2233
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    const-string v5, "android:duration"

    invoke-virtual {p1, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2234
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2235
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2237
    :cond_2
    const-string v5, "android:drawable"

    invoke-virtual {p1, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2238
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2239
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 2240
    .local v3, "indexLast":I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2247
    .end local v3    # "indexLast":I
    :cond_3
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 2248
    invoke-virtual {p1}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2249
    invoke-virtual {p1}, Lcom/lsec/core/util/Markup;->ExitItem()V

    .line 2252
    .end local v1    # "duration":I
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-object v0

    .line 2242
    .restart local v1    # "duration":I
    .restart local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v5, "android:color"

    invoke-virtual {p1, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2243
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2244
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v2    # "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getXmlBitmapDrawable(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/util/Markup;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p1, "xml"    # Lcom/lsec/core/util/Markup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/app/MyUi;",
            "Lcom/lsec/core/util/Markup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 2257
    .local p2, "mapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .local p3, "tmpMapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const/4 v1, 0x0

    .line 2258
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 2259
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const-string v8, "android:src"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2260
    .local v7, "strTemp":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2261
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 2262
    .local v4, "indexLast":I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2263
    .local v5, "resName":Ljava/lang/String;
    invoke-virtual {p0, v5, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2264
    instance-of v8, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_0

    move-object v0, v1

    .line 2265
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2268
    .end local v4    # "indexLast":I
    .end local v5    # "resName":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_f

    .line 2269
    const-string v8, "android:antialias"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2270
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2271
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 2273
    :cond_1
    const-string v8, "android:dither"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2274
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2275
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 2277
    :cond_2
    const-string v8, "android:filter"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2278
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2279
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 2281
    :cond_3
    const-string v8, "android:mipMap"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2282
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2283
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setMipMap(Z)V

    .line 2285
    :cond_4
    const-string v8, "android:gravity"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2286
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2287
    const/4 v2, 0x0

    .line 2288
    .local v2, "gravity":I
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2289
    .local v6, "strArray":[Ljava/lang/String;
    if-eqz v6, :cond_5

    array-length v8, v6

    if-lez v8, :cond_5

    .line 2290
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v6

    if-lt v3, v8, :cond_10

    .line 2317
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 2320
    .end local v2    # "gravity":I
    .end local v6    # "strArray":[Ljava/lang/String;
    :cond_6
    const-string v8, "android:tileModeX"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2321
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2322
    const-string v8, "clamp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2323
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 2325
    :cond_7
    const-string v8, "repeat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2326
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 2328
    :cond_8
    const-string v8, "mirror"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2329
    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 2332
    :cond_9
    const-string v8, "android:tileModeY"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2333
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 2334
    const-string v8, "clamp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2335
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 2337
    :cond_a
    const-string v8, "repeat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2338
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 2340
    :cond_b
    const-string v8, "mirror"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2341
    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 2344
    :cond_c
    const-string v8, "android:tileMode"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2345
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 2346
    const-string v8, "clamp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2347
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 2349
    :cond_d
    const-string v8, "repeat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2350
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 2352
    :cond_e
    const-string v8, "mirror"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2353
    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 2357
    :cond_f
    return-object v1

    .line 2291
    .restart local v2    # "gravity":I
    .restart local v3    # "i":I
    .restart local v6    # "strArray":[Ljava/lang/String;
    :cond_10
    aget-object v8, v6, v3

    const-string v9, "top"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2292
    or-int/lit8 v2, v2, 0x30

    .line 2290
    :cond_11
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2293
    :cond_12
    aget-object v8, v6, v3

    const-string v9, "bottom"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2294
    or-int/lit8 v2, v2, 0x50

    goto :goto_1

    .line 2295
    :cond_13
    aget-object v8, v6, v3

    const-string v9, "left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 2296
    or-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 2297
    :cond_14
    aget-object v8, v6, v3

    const-string v9, "right"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 2298
    or-int/lit8 v2, v2, 0x5

    goto :goto_1

    .line 2299
    :cond_15
    aget-object v8, v6, v3

    const-string v9, "center_vertical"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 2300
    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 2301
    :cond_16
    aget-object v8, v6, v3

    const-string v9, "fill_vertical"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2302
    or-int/lit8 v2, v2, 0x70

    goto :goto_1

    .line 2303
    :cond_17
    aget-object v8, v6, v3

    const-string v9, "center_horizontal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 2304
    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2305
    :cond_18
    aget-object v8, v6, v3

    const-string v9, "fill_horizontal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2306
    or-int/lit8 v2, v2, 0x7

    goto :goto_1

    .line 2307
    :cond_19
    aget-object v8, v6, v3

    const-string v9, "center"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 2308
    or-int/lit8 v2, v2, 0x11

    goto :goto_1

    .line 2309
    :cond_1a
    aget-object v8, v6, v3

    const-string v9, "fill"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 2310
    or-int/lit8 v2, v2, 0x77

    goto :goto_1

    .line 2311
    :cond_1b
    aget-object v8, v6, v3

    const-string v9, "clip_vertical"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 2312
    or-int/lit16 v2, v2, 0x80

    goto/16 :goto_1

    .line 2313
    :cond_1c
    aget-object v8, v6, v3

    const-string v9, "clip_horizontal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2314
    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_1
.end method

.method public static getXmlColorDrawable(Lcom/lsec/core/util/Markup;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "xml"    # Lcom/lsec/core/util/Markup;

    .prologue
    .line 2396
    const/4 v0, 0x0

    .line 2397
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    const-string v2, "android:color"

    invoke-virtual {p0, v2}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2398
    .local v1, "strTemp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2399
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2400
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2403
    .restart local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    return-object v0
.end method

.method public static getXmlGradientDrawable(Landroid/content/Context;Lcom/lsec/core/util/Markup;)Landroid/graphics/drawable/Drawable;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Lcom/lsec/core/util/Markup;

    .prologue
    .line 1962
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1963
    .local v13, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    const-string v27, "android:shape"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1964
    .local v22, "strTemp":Ljava/lang/String;
    if-nez v22, :cond_3

    .line 1965
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1986
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 1988
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mStrBuff:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mPosEnd:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mPosStart:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/Markup;->FindToken(Ljava/lang/String;II[I)Ljava/lang/String;

    move-result-object v22

    .line 1989
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v27

    sparse-switch v27, :sswitch_data_0

    .line 2214
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v27

    if-nez v27, :cond_0

    .line 2215
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/util/Markup;->ExitItem()V

    .line 2218
    :cond_2
    return-object v13

    .line 1967
    :cond_3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v27

    sparse-switch v27, :sswitch_data_1

    .line 1981
    :cond_4
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_0

    .line 1967
    :sswitch_0
    const-string v27, "line"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1975
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_0

    .line 1967
    :sswitch_1
    const-string v27, "oval"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1972
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto/16 :goto_0

    .line 1967
    :sswitch_2
    const-string v27, "ring"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1978
    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto/16 :goto_0

    .line 1967
    :sswitch_3
    const-string v27, "rectangle"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1969
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto/16 :goto_0

    .line 1989
    :sswitch_4
    const-string v27, "stroke"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2179
    const/16 v24, 0x0

    .line 2180
    .local v24, "width":I
    const/4 v7, 0x0

    .line 2181
    .local v7, "color":I
    const/4 v12, 0x0

    .line 2182
    .local v12, "dashWidth":F
    const/4 v11, 0x0

    .line 2183
    .local v11, "dashGap":F
    const-string v27, "android:width"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2184
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 2185
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 2186
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 2187
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v24

    .line 2190
    :cond_5
    const-string v27, "android:color"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2191
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 2192
    const-string v27, "#"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 2193
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 2196
    :cond_6
    const-string v27, "android:dashWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2197
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_7

    .line 2198
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v12, v0

    .line 2199
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 2200
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v12, v0

    .line 2203
    :cond_7
    const-string v27, "android:dashGap"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2204
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 2205
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v11, v0

    .line 2206
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 2207
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v11, v0

    .line 2210
    :cond_8
    move/from16 v0, v24

    invoke-virtual {v13, v0, v7, v12, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    goto/16 :goto_1

    .line 1989
    .end local v7    # "color":I
    .end local v11    # "dashGap":F
    .end local v12    # "dashWidth":F
    .end local v24    # "width":I
    :sswitch_5
    const-string v27, "padding"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1991
    const/16 v16, 0x0

    .line 1992
    .local v16, "left":I
    const/16 v23, 0x0

    .line 1993
    .local v23, "top":I
    const/16 v21, 0x0

    .line 1994
    .local v21, "right":I
    const/4 v6, 0x0

    .line 1995
    .local v6, "bottom":I
    const-string v27, "android:left"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1996
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 1997
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1998
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 1999
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v16

    .line 2002
    :cond_9
    const-string v27, "android:top"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2003
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_a

    .line 2004
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2005
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 2006
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v23

    .line 2009
    :cond_a
    const-string v27, "android:right"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2010
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 2011
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2012
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 2013
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v21

    .line 2016
    :cond_b
    const-string v27, "android:bottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2017
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 2018
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2019
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 2020
    int-to-float v0, v6

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v6

    .line 2023
    :cond_c
    new-instance v20, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2024
    .local v20, "rec":Landroid/graphics/Rect;
    const-string v27, "mPadding"

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v13, v0, v1}, Lcom/lsec/core/util/ReflectionUtil;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2025
    const-string v27, "mGradientState"

    move-object/from16 v0, v27

    invoke-static {v13, v0}, Lcom/lsec/core/util/ReflectionUtil;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 2026
    .local v17, "obj":Ljava/lang/Object;
    const-string v27, "mPadding"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/lsec/core/util/ReflectionUtil;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1989
    .end local v6    # "bottom":I
    .end local v16    # "left":I
    .end local v17    # "obj":Ljava/lang/Object;
    .end local v20    # "rec":Landroid/graphics/Rect;
    .end local v21    # "right":I
    .end local v23    # "top":I
    :sswitch_6
    const-string v27, "size"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2150
    const/16 v24, 0x0

    .line 2151
    .restart local v24    # "width":I
    const/4 v15, 0x0

    .line 2152
    .local v15, "height":I
    const-string v27, "android:width"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2153
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 2154
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 2155
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 2156
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v24

    .line 2159
    :cond_d
    const-string v27, "android:height"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2160
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_e

    .line 2161
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2162
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 2163
    int-to-float v0, v15

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v15

    .line 2166
    :cond_e
    if-lez v24, :cond_1

    if-lez v15, :cond_1

    .line 2167
    move/from16 v0, v24

    invoke-virtual {v13, v0, v15}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    goto/16 :goto_1

    .line 1989
    .end local v15    # "height":I
    .end local v24    # "width":I
    :sswitch_7
    const-string v27, "gradient"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2080
    const/high16 v25, 0x3f000000    # 0.5f

    .line 2081
    .local v25, "x":F
    const/high16 v26, 0x3f000000    # 0.5f

    .line 2082
    .local v26, "y":F
    const-string v27, "android:centerX"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2083
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_f

    .line 2084
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    .line 2086
    :cond_f
    const-string v27, "android:centerY"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2087
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_10

    .line 2088
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v26

    .line 2090
    :cond_10
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 2092
    const/4 v10, -0x1

    .line 2093
    .local v10, "colorStart":I
    const/4 v9, -0x1

    .line 2094
    .local v9, "colorEnd":I
    const/4 v8, -0x1

    .line 2095
    .local v8, "colorCenter":I
    const-string v27, "android:startColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2096
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 2097
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 2099
    :cond_11
    const-string v27, "android:endColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2100
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_12

    .line 2101
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 2103
    :cond_12
    const-string v27, "android:centerColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2104
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_13

    .line 2105
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 2107
    :cond_13
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v8, v0, :cond_1d

    .line 2108
    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v10, v27, v28

    const/16 v28, 0x1

    aput v8, v27, v28

    const/16 v28, 0x2

    aput v9, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 2112
    :goto_2
    const-string v27, "android:gradientRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2113
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_15

    .line 2114
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 2115
    .local v14, "gradientRadius":F
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 2116
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v14, v0

    .line 2118
    :cond_14
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 2121
    .end local v14    # "gradientRadius":F
    :cond_15
    const-string v27, "android:type"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2122
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_16

    .line 2123
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v27

    sparse-switch v27, :sswitch_data_2

    .line 2136
    :cond_16
    :goto_3
    const-string v27, "android:useLevel"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2137
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 2138
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v27

    sparse-switch v27, :sswitch_data_3

    goto/16 :goto_1

    :sswitch_8
    const-string v27, "true"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2140
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_1

    .line 1989
    .end local v8    # "colorCenter":I
    .end local v9    # "colorEnd":I
    .end local v10    # "colorStart":I
    .end local v25    # "x":F
    .end local v26    # "y":F
    :sswitch_9
    const-string v27, "solid"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2171
    const-string v27, "android:color"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2172
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 2173
    const-string v27, "#"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2174
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_1

    .line 1989
    :sswitch_a
    const-string v27, "corners"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2030
    const-string v27, "android:radius"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2031
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_18

    .line 2032
    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 2033
    .local v19, "radius":F
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 2034
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v19, v0

    .line 2036
    :cond_17
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto/16 :goto_1

    .line 2038
    .end local v19    # "radius":F
    :cond_18
    const/4 v5, 0x0

    .line 2040
    .local v5, "bNeedSetRadius":Z
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 2041
    .local v18, "radii":[F
    const-string v27, "android:topLeftRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2042
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_19

    .line 2043
    const/4 v5, 0x1

    .line 2044
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    aput v28, v18, v27

    .line 2045
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_19

    .line 2046
    const/16 v27, 0x0

    const/16 v28, 0x0

    aget v28, v18, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v18, v27

    .line 2049
    :cond_19
    const-string v27, "android:topRightRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2050
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1a

    .line 2051
    const/4 v5, 0x1

    .line 2052
    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    aput v28, v18, v27

    .line 2053
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 2054
    const/16 v27, 0x1

    const/16 v28, 0x1

    aget v28, v18, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v18, v27

    .line 2057
    :cond_1a
    const-string v27, "android:bottomRightRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2058
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1b

    .line 2059
    const/4 v5, 0x1

    .line 2060
    const/16 v27, 0x2

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    aput v28, v18, v27

    .line 2061
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 2062
    const/16 v27, 0x2

    const/16 v28, 0x2

    aget v28, v18, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v18, v27

    .line 2065
    :cond_1b
    const-string v27, "android:bottomLeftRadiu"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2066
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1c

    .line 2067
    const/4 v5, 0x1

    .line 2068
    const/16 v27, 0x3

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    aput v28, v18, v27

    .line 2069
    const-string v27, "dp"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 2070
    const/16 v27, 0x3

    const/16 v28, 0x3

    aget v28, v18, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/lsec/core/util/FuncUtils;->dp2px(Landroid/content/Context;F)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v18, v27

    .line 2073
    :cond_1c
    if-eqz v5, :cond_1

    .line 2074
    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aget v29, v18, v29

    aput v29, v27, v28

    const/16 v28, 0x1

    const/16 v29, 0x0

    aget v29, v18, v29

    aput v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x1

    aget v29, v18, v29

    aput v29, v27, v28

    const/16 v28, 0x3

    const/16 v29, 0x1

    aget v29, v18, v29

    aput v29, v27, v28

    const/16 v28, 0x4

    .line 2075
    const/16 v29, 0x2

    aget v29, v18, v29

    aput v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, 0x2

    aget v29, v18, v29

    aput v29, v27, v28

    const/16 v28, 0x6

    const/16 v29, 0x3

    aget v29, v18, v29

    aput v29, v27, v28

    const/16 v28, 0x7

    const/16 v29, 0x3

    aget v29, v18, v29

    aput v29, v27, v28

    .line 2074
    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto/16 :goto_1

    .line 2110
    .end local v5    # "bNeedSetRadius":Z
    .end local v18    # "radii":[F
    .restart local v8    # "colorCenter":I
    .restart local v9    # "colorEnd":I
    .restart local v10    # "colorStart":I
    .restart local v25    # "x":F
    .restart local v26    # "y":F
    :cond_1d
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v10, v27, v28

    const/16 v28, 0x1

    aput v9, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto/16 :goto_2

    .line 2123
    :sswitch_b
    const-string v27, "linear"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 2125
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    goto/16 :goto_3

    .line 2123
    :sswitch_c
    const-string v27, "radial"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 2128
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    goto/16 :goto_3

    .line 2123
    :sswitch_d
    const-string v27, "sweep"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 2131
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    goto/16 :goto_3

    .line 2138
    :sswitch_e
    const-string v27, "false"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2143
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_1

    .line 1989
    :sswitch_data_0
    .sparse-switch
        -0x352a89c8 -> :sswitch_4
        -0x300fc3ef -> :sswitch_5
        0x35e001 -> :sswitch_6
        0x557f730 -> :sswitch_7
        0x688a6ab -> :sswitch_9
        0x38ecd8be -> :sswitch_a
    .end sparse-switch

    .line 1967
    :sswitch_data_1
    .sparse-switch
        0x32aff4 -> :sswitch_0
        0x343c52 -> :sswitch_1
        0x356a30 -> :sswitch_2
        0x42d5ad6f -> :sswitch_3
    .end sparse-switch

    .line 2123
    :sswitch_data_2
    .sparse-switch
        -0x41b970db -> :sswitch_b
        -0x37f195e1 -> :sswitch_c
        0x68c2eec -> :sswitch_d
    .end sparse-switch

    .line 2138
    :sswitch_data_3
    .sparse-switch
        0x36758e -> :sswitch_8
        0x5cb1923 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getXmlLevelListDrawable(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/util/Markup;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p1, "xml"    # Lcom/lsec/core/util/Markup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/app/MyUi;",
            "Lcom/lsec/core/util/Markup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 2363
    .local p2, "mapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .local p3, "tmpMapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    new-instance v3, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 2364
    .local v3, "levelListDrawable":Landroid/graphics/drawable/LevelListDrawable;
    invoke-virtual {p1}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2366
    :cond_0
    const/4 v4, 0x0

    .line 2367
    .local v4, "low":I
    const/4 v1, 0x0

    .line 2368
    .local v1, "high":I
    const/4 v0, 0x0

    .line 2369
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v6, "android:minLevel"

    invoke-virtual {p1, v6}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2370
    .local v5, "strTemp":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2371
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2373
    :cond_1
    const-string v6, "android:maxLevel"

    invoke-virtual {p1, v6}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2374
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2375
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2377
    :cond_2
    const-string v6, "android:drawable"

    invoke-virtual {p1, v6}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2378
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2379
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2380
    .local v2, "indexLast":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2387
    .end local v2    # "indexLast":I
    :cond_3
    :goto_0
    invoke-virtual {v3, v4, v1, v0}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 2388
    invoke-virtual {p1}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2389
    invoke-virtual {p1}, Lcom/lsec/core/util/Markup;->ExitItem()V

    .line 2392
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "high":I
    .end local v4    # "low":I
    .end local v5    # "strTemp":Ljava/lang/String;
    :cond_4
    return-object v3

    .line 2382
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "high":I
    .restart local v4    # "low":I
    .restart local v5    # "strTemp":Ljava/lang/String;
    :cond_5
    const-string v6, "android:color"

    invoke-virtual {p1, v6}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2383
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2384
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getXmlRotateDrawable(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/util/Markup;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .param p0, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p1, "xml"    # Lcom/lsec/core/util/Markup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/app/MyUi;",
            "Lcom/lsec/core/util/Markup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 2408
    .local p2, "mapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .local p3, "tmpMapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    new-instance v12, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    .line 2410
    .local v12, "rotateDrawable":Landroid/graphics/drawable/RotateDrawable;
    const/4 v6, 0x0

    .line 2411
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v17, "android:drawable"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2412
    .local v13, "strTemp":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 2413
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 2414
    .local v9, "indexLast":I
    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2421
    .end local v9    # "indexLast":I
    :cond_0
    :goto_0
    invoke-virtual {v12, v6}, Landroid/graphics/drawable/RotateDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2423
    const-string v17, "android:pivotX"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2424
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2425
    const/4 v4, 0x0

    .line 2426
    .local v4, "bRelative":Z
    const/4 v10, 0x0

    .line 2427
    .local v10, "pivotX":F
    const-string v17, "%"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2428
    const/4 v4, 0x1

    .line 2430
    :cond_1
    move-object v14, v13

    .line 2431
    .local v14, "strX":Ljava/lang/String;
    const-string v17, "%"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 2432
    .local v8, "index":I
    if-ltz v8, :cond_9

    .line 2433
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 2434
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v10, v17, v18

    .line 2438
    :goto_1
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/RotateDrawable;->setPivotXRelative(Z)V

    .line 2439
    invoke-virtual {v12, v10}, Landroid/graphics/drawable/RotateDrawable;->setPivotX(F)V

    .line 2442
    .end local v4    # "bRelative":Z
    .end local v8    # "index":I
    .end local v10    # "pivotX":F
    .end local v14    # "strX":Ljava/lang/String;
    :cond_2
    const-string v17, "android:pivotY"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2443
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 2444
    const/4 v4, 0x0

    .line 2445
    .restart local v4    # "bRelative":Z
    const/4 v11, 0x0

    .line 2446
    .local v11, "pivotY":F
    const-string v17, "%"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2447
    const/4 v4, 0x1

    .line 2449
    :cond_3
    move-object v15, v13

    .line 2450
    .local v15, "strY":Ljava/lang/String;
    const-string v17, "%"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 2451
    .restart local v8    # "index":I
    if-ltz v8, :cond_a

    .line 2452
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 2453
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v11, v17, v18

    .line 2457
    :goto_2
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/RotateDrawable;->setPivotYRelative(Z)V

    .line 2458
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/RotateDrawable;->setPivotY(F)V

    .line 2461
    .end local v4    # "bRelative":Z
    .end local v8    # "index":I
    .end local v11    # "pivotY":F
    .end local v15    # "strY":Ljava/lang/String;
    :cond_4
    const-string v17, "android:fromDegrees"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2462
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 2463
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 2464
    .local v7, "fromDegrees":F
    invoke-virtual {v12, v7}, Landroid/graphics/drawable/RotateDrawable;->setFromDegrees(F)V

    .line 2467
    .end local v7    # "fromDegrees":F
    :cond_5
    const-string v17, "android:toDegrees"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2468
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 2469
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 2470
    .local v16, "toDegrees":F
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/RotateDrawable;->setToDegrees(F)V

    .line 2473
    .end local v16    # "toDegrees":F
    :cond_6
    const-string v17, "android:visible"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2474
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 2475
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2476
    .local v5, "bVisible":Z
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v5, v0}, Landroid/graphics/drawable/RotateDrawable;->setVisible(ZZ)Z

    .line 2479
    .end local v5    # "bVisible":Z
    :cond_7
    return-object v12

    .line 2416
    :cond_8
    const-string v17, "android:color"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2417
    const-string v17, "#"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2418
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 2436
    .restart local v4    # "bRelative":Z
    .restart local v8    # "index":I
    .restart local v10    # "pivotX":F
    .restart local v14    # "strX":Ljava/lang/String;
    :cond_9
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    goto/16 :goto_1

    .line 2455
    .end local v10    # "pivotX":F
    .end local v14    # "strX":Ljava/lang/String;
    .restart local v11    # "pivotY":F
    .restart local v15    # "strY":Ljava/lang/String;
    :cond_a
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    goto :goto_2
.end method

.method public static getXmlStateListDrawable(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/util/Markup;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p1, "xml"    # Lcom/lsec/core/util/Markup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/app/MyUi;",
            "Lcom/lsec/core/util/Markup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 1872
    .local p2, "mapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .local p3, "tmpMapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1873
    .local v5, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p1}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1875
    :cond_0
    const-string v8, "android:drawable"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1876
    .local v7, "strTemp":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1877
    const/4 v1, 0x0

    .line 1879
    .local v1, "drawableTmp":Landroid/graphics/drawable/Drawable;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v8, "android:state_pressed"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1881
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1882
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1883
    .local v0, "bTmp":Z
    if-eqz v0, :cond_d

    const v8, 0x10100a7

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
    .end local v0    # "bTmp":Z
    :cond_1
    const-string v8, "android:state_focused"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1887
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1888
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1889
    .restart local v0    # "bTmp":Z
    if-eqz v0, :cond_e

    const v8, 0x101009c

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1892
    .end local v0    # "bTmp":Z
    :cond_2
    const-string v8, "android:state_selected"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1893
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1894
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1895
    .restart local v0    # "bTmp":Z
    if-eqz v0, :cond_f

    const v8, 0x10100a1

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1898
    .end local v0    # "bTmp":Z
    :cond_3
    const-string v8, "android:state_checked"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1899
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1900
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1901
    .restart local v0    # "bTmp":Z
    if-eqz v0, :cond_10

    const v8, 0x10100a0

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1904
    .end local v0    # "bTmp":Z
    :cond_4
    const-string v8, "android:state_enabled"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1905
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1906
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1907
    .restart local v0    # "bTmp":Z
    if-eqz v0, :cond_11

    const v8, 0x101009e

    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1910
    .end local v0    # "bTmp":Z
    :cond_5
    const-string v8, "android:state_hovered"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1911
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1912
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1913
    .restart local v0    # "bTmp":Z
    if-eqz v0, :cond_12

    const v8, 0x1010367

    :goto_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1916
    .end local v0    # "bTmp":Z
    :cond_6
    const-string v8, "android:state_checkable"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1917
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1918
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1919
    .restart local v0    # "bTmp":Z
    if-eqz v0, :cond_13

    const v8, 0x101009f

    :goto_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1922
    .end local v0    # "bTmp":Z
    :cond_7
    const-string v8, "android:state_activated"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1923
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1924
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1925
    .restart local v0    # "bTmp":Z
    if-eqz v0, :cond_14

    const v8, 0x10102fe

    :goto_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    .end local v0    # "bTmp":Z
    :cond_8
    const-string v8, "android:state_window_focused"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1929
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1930
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1931
    .restart local v0    # "bTmp":Z
    if-eqz v0, :cond_15

    const v8, 0x101009d

    :goto_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1934
    .end local v0    # "bTmp":Z
    :cond_9
    const-string v8, "android:drawable"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1935
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 1936
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1937
    .local v3, "indexLast":I
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1945
    .end local v3    # "indexLast":I
    :cond_a
    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_18

    .line 1946
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [I

    .line 1947
    .local v6, "stateSet":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_17

    .line 1950
    invoke-virtual {v5, v6, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1954
    .end local v1    # "drawableTmp":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "stateSet":[I
    :cond_b
    :goto_b
    invoke-virtual {p1}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1955
    invoke-virtual {p1}, Lcom/lsec/core/util/Markup;->ExitItem()V

    .line 1958
    .end local v7    # "strTemp":Ljava/lang/String;
    :cond_c
    return-object v5

    .line 1883
    .restart local v0    # "bTmp":Z
    .restart local v1    # "drawableTmp":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "strTemp":Ljava/lang/String;
    :cond_d
    const v8, -0x10100a7

    goto/16 :goto_0

    .line 1889
    :cond_e
    const v8, -0x101009c

    goto/16 :goto_1

    .line 1895
    :cond_f
    const v8, -0x10100a1

    goto/16 :goto_2

    .line 1901
    :cond_10
    const v8, -0x10100a0

    goto/16 :goto_3

    .line 1907
    :cond_11
    const v8, -0x101009e

    goto/16 :goto_4

    .line 1913
    :cond_12
    const v8, -0x1010367

    goto/16 :goto_5

    .line 1919
    :cond_13
    const v8, -0x101009f

    goto/16 :goto_6

    .line 1925
    :cond_14
    const v8, -0x10102fe

    goto/16 :goto_7

    .line 1931
    :cond_15
    const v8, -0x101009d

    goto :goto_8

    .line 1940
    .end local v0    # "bTmp":Z
    :cond_16
    const-string v8, "android:color"

    invoke-virtual {p1, v8}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1941
    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1942
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "drawableTmp":Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v1    # "drawableTmp":Landroid/graphics/drawable/Drawable;
    goto :goto_9

    .line 1948
    .restart local v2    # "i":I
    .restart local v6    # "stateSet":[I
    :cond_17
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v2

    .line 1947
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1952
    .end local v2    # "i":I
    .end local v6    # "stateSet":[I
    :cond_18
    const/4 v8, 0x0

    new-array v8, v8, [I

    invoke-virtual {v5, v8, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_b
.end method


# virtual methods
.method public CreateViewByItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "item"    # Lcom/lsec/core/frame/app/MyUiItem;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 1677
    if-eqz p2, :cond_0

    .line 1678
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_3

    .line 1679
    invoke-virtual {p0, p1, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->createUiItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1680
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_0

    .line 1681
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getChildCount()I

    move-result v2

    .line 1682
    .local v2, "childCount":I
    if-lez v2, :cond_0

    .line 1683
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/lsec/core/frame/ctrl/JButton;->mPartnerViews:Ljava/util/List;

    .line 1684
    iget-object v5, v0, Lcom/lsec/core/frame/ctrl/JButton;->mPartnerViews:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 1685
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 1714
    .end local v0    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 1686
    .restart local v0    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v2    # "childCount":I
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {p2, v3}, Lcom/lsec/core/frame/app/MyUiItem;->getChildAt(I)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v4

    .line 1687
    .local v4, "itemChild":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {p0, p1, v4, p3}, Lcom/lsec/core/frame/app/MyUi;->createUiItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1688
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1689
    iget-object v5, v0, Lcom/lsec/core/frame/ctrl/JButton;->mPartnerViews:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1685
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1695
    .end local v0    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "itemChild":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_3
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getChildCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 1696
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 1697
    invoke-direct {p0, p1, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->createScrollView(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 1698
    :cond_4
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 1699
    invoke-direct {p0, p1, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->createScrollViewHorizontal(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 1701
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->createLayout(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 1703
    :cond_6
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 1704
    invoke-direct {p0, p1, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->createScrollView(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 1705
    :cond_7
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 1706
    invoke-direct {p0, p1, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->createScrollViewHorizontal(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 1707
    :cond_8
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    .line 1708
    invoke-direct {p0, p1, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->createLayout(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 1710
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->createUiItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1
.end method

.method public InitScreen()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 144
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/lsec/core/util/FuncUtils;->getDisplayMetrics(Landroid/content/Context;)V

    .line 145
    sget-object v7, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v8, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v7, v8, :cond_1

    .line 146
    iput v9, p0, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/4 v0, 0x1

    .line 150
    .local v0, "bChangeScale":Z
    const/16 v2, 0x400

    .line 151
    .local v2, "iScreenMax":I
    :try_start_0
    const-string v7, "conf_screen"

    invoke-virtual {p0, v7}, Lcom/lsec/core/frame/app/MyUi;->getRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "strXml":Ljava/lang/String;
    new-instance v6, Lcom/lsec/core/util/Markup;

    invoke-direct {v6}, Lcom/lsec/core/util/Markup;-><init>()V

    .line 153
    .local v6, "xml":Lcom/lsec/core/util/Markup;
    invoke-virtual {v6, v5}, Lcom/lsec/core/util/Markup;->ReadXML(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v6}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 157
    :cond_2
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "strTemp":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 158
    const-string v7, "screen_max"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 159
    const-string v7, "value"

    invoke-virtual {v6, v7}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 160
    invoke-static {v4}, Lcom/lsec/core/util/FuncUtils;->myParseInt(Ljava/lang/String;)I

    move-result v3

    .line 161
    .local v3, "screenMax":I
    if-lez v3, :cond_3

    .line 162
    move v2, v3

    .line 168
    .end local v3    # "screenMax":I
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v7

    if-nez v7, :cond_2

    .line 170
    if-eqz v0, :cond_4

    .line 171
    sget-object v7, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    int-to-float v8, v2

    div-float/2addr v7, v8

    iput v7, p0, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    .line 173
    :cond_4
    invoke-virtual {v6}, Lcom/lsec/core/util/Markup;->ExitItem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v4    # "strTemp":Ljava/lang/String;
    .end local v5    # "strXml":Ljava/lang/String;
    .end local v6    # "xml":Lcom/lsec/core/util/Markup;
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "strTemp":Ljava/lang/String;
    .restart local v5    # "strXml":Ljava/lang/String;
    .restart local v6    # "xml":Lcom/lsec/core/util/Markup;
    :cond_5
    :try_start_1
    const-string v7, "screen_set"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 165
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public ParseXml(Ljava/lang/String;)V
    .locals 9
    .param p1, "strRaw"    # Ljava/lang/String;

    .prologue
    .line 824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 826
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/MyUi;->getRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "strXml":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 829
    new-instance v4, Lcom/lsec/core/util/Markup;

    invoke-direct {v4}, Lcom/lsec/core/util/Markup;-><init>()V

    .line 830
    .local v4, "xml":Lcom/lsec/core/util/Markup;
    invoke-virtual {v4, v3}, Lcom/lsec/core/util/Markup;->ReadXML(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 834
    :cond_0
    iget-object v5, v4, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v5, v5, Lcom/lsec/core/util/Markup$XmlItem;->mStrBuff:Ljava/lang/String;

    iget-object v6, v4, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget v6, v6, Lcom/lsec/core/util/Markup$XmlItem;->mPosEnd:I

    iget-object v7, v4, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget v7, v7, Lcom/lsec/core/util/Markup$XmlItem;->mPosStart:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lsec/core/util/Markup;->FindToken(Ljava/lang/String;II[I)Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, "strTemp":Ljava/lang/String;
    const-string v5, "Page"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 837
    const/4 v5, 0x0

    invoke-direct {p0, v4, v2, v5}, Lcom/lsec/core/frame/app/MyUi;->getItem(Lcom/lsec/core/util/Markup;Ljava/lang/String;Lcom/lsec/core/frame/app/MyUiItem;)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v1

    .line 838
    .local v1, "page":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 841
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "page id can\'t be -1!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v1    # "page":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v2    # "strTemp":Ljava/lang/String;
    .end local v3    # "strXml":Ljava/lang/String;
    .end local v4    # "xml":Lcom/lsec/core/util/Markup;
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 857
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 846
    .restart local v1    # "page":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v2    # "strTemp":Ljava/lang/String;
    .restart local v3    # "strXml":Ljava/lang/String;
    .restart local v4    # "xml":Lcom/lsec/core/util/Markup;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/lsec/core/frame/app/MyUi;->mPageUiItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 849
    .end local v1    # "page":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_3
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v5

    if-nez v5, :cond_0

    .line 850
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->ExitItem()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public createUiItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 43
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "item"    # Lcom/lsec/core/frame/app/MyUiItem;
    .param p3, "groupParent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 957
    const/4 v14, 0x0

    .line 958
    .local v14, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mInterfaceUi:Lcom/lsec/core/frame/app/InterfaceUi;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mInterfaceUi:Lcom/lsec/core/frame/app/InterfaceUi;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/lsec/core/frame/app/InterfaceUi;->createUiItemOtherWay(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;)Landroid/view/View;

    move-result-object v14

    .line 961
    :cond_0
    if-nez v14, :cond_1

    .line 962
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v37

    .line 963
    .local v37, "type":I
    packed-switch v37, :pswitch_data_0

    .line 1621
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v39

    const/16 v40, 0x5

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_8c

    .line 1622
    new-instance v38, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1623
    .local v38, "view":Landroid/widget/FrameLayout;
    move-object/from16 v14, v38

    .line 1639
    .end local v37    # "type":I
    .end local v38    # "view":Landroid/widget/FrameLayout;
    :cond_1
    :goto_0
    if-eqz v14, :cond_6

    .line 1640
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v39

    const/16 v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_2

    .line 1641
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v39

    move/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/view/View;->setId(I)V

    .line 1643
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lcom/lsec/core/frame/ctrl/JPage;->addChildView(Landroid/view/View;Lcom/lsec/core/frame/app/MyUiItem;)V

    .line 1644
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getVisible()I

    move-result v39

    move/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1646
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v23

    .line 1647
    .local v23, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v23, :cond_4

    .line 1648
    move-object/from16 v0, p3

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v39, v0

    if-eqz v39, :cond_8f

    .line 1649
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v39, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v40, v0

    move-object/from16 v0, v24

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1650
    .local v24, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1651
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1652
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1653
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getWeight()I

    move-result v39

    if-lez v39, :cond_3

    .line 1654
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getWeight()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1656
    :cond_3
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1661
    .end local v24    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPadding()[I

    move-result-object v26

    .line 1662
    .local v26, "padding":[I
    if-eqz v26, :cond_5

    .line 1663
    const/16 v39, 0x0

    aget v39, v26, v39

    const/16 v40, 0x1

    aget v40, v26, v40

    const/16 v41, 0x2

    aget v41, v26, v41

    const/16 v42, 0x3

    aget v42, v26, v42

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1665
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1668
    .end local v23    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v26    # "padding":[I
    :cond_6
    if-eqz v14, :cond_7

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mInterfaceUi:Lcom/lsec/core/frame/app/InterfaceUi;

    move-object/from16 v39, v0

    if-eqz v39, :cond_7

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mInterfaceUi:Lcom/lsec/core/frame/app/InterfaceUi;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-interface {v0, v14}, Lcom/lsec/core/frame/app/InterfaceUi;->setProperty(Landroid/view/View;)V

    .line 1673
    :cond_7
    return-object v14

    .line 965
    .restart local v37    # "type":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    if-eqz v39, :cond_8

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/util/SparseArray;->remove(I)V

    .line 968
    :cond_8
    const/4 v4, 0x0

    .line 969
    .local v4, "bAddChild2Parent":Z
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v34

    .line 970
    .local v34, "strPara":[Ljava/lang/String;
    if-eqz v34, :cond_9

    .line 971
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v40, v0

    const/16 v39, 0x0

    :goto_2
    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_a

    .line 977
    :cond_9
    const/16 v25, 0x0

    .line 978
    .local v25, "p":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v4, :cond_c

    .line 979
    const/16 v39, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZILcom/lsec/core/frame/ctrl/JPage;)Lcom/lsec/core/frame/ctrl/JPage;

    .line 983
    :goto_3
    move-object/from16 v14, v25

    .line 985
    goto/16 :goto_0

    .line 971
    .end local v25    # "p":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_a
    aget-object v35, v34, v39

    .line 972
    .local v35, "strTmp":Ljava/lang/String;
    const-string v41, "AddChild2Parent"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 973
    const/4 v4, 0x1

    .line 971
    :cond_b
    add-int/lit8 v39, v39, 0x1

    goto :goto_2

    .line 981
    .end local v35    # "strTmp":Ljava/lang/String;
    .restart local v25    # "p":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_c
    const/16 v39, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    goto :goto_3

    .line 987
    .end local v4    # "bAddChild2Parent":Z
    .end local v25    # "p":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v34    # "strPara":[Ljava/lang/String;
    :pswitch_2
    new-instance v12, Lcom/lsec/core/frame/ctrl/JButton;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 988
    .local v12, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPosIcon()[I

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getIcon()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setIcon([ILjava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_d

    .line 990
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 992
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColorBk()[I

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setColorBk([I)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getText()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setText(Ljava/lang/CharSequence;)V

    .line 995
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    .line 996
    .local v22, "localeDefault":Ljava/util/Locale;
    sget v39, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v40, 0x18

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_e

    .line 997
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v22

    .line 999
    :cond_e
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1000
    .local v33, "strLanguage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getText()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setTextBak(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isLongLang()Z

    move-result v39

    if-eqz v39, :cond_13

    .line 1002
    const/16 v39, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v40

    add-int/lit8 v40, v40, -0x2

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setTextSize(IF)V

    .line 1006
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    if-eqz v39, :cond_10

    .line 1007
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v19, v0

    .line 1008
    .local v19, "iLen":I
    const/16 v39, 0x1

    move/from16 v0, v19

    move/from16 v1, v39

    if-lt v0, v1, :cond_f

    .line 1009
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    const/16 v40, 0x0

    aget v39, v39, v40

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 1011
    :cond_f
    const/16 v39, 0x1

    move/from16 v0, v19

    move/from16 v1, v39

    if-le v0, v1, :cond_10

    .line 1012
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setColor([I)V

    .line 1015
    .end local v19    # "iLen":I
    :cond_10
    const/16 v18, 0x0

    .line 1016
    .local v18, "iBoldItalic":I
    const/4 v9, 0x0

    .line 1017
    .local v9, "bSetGravity":Z
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v34

    .line 1018
    .restart local v34    # "strPara":[Ljava/lang/String;
    if-eqz v34, :cond_11

    .line 1019
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v40, v0

    const/16 v39, 0x0

    :goto_5
    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_14

    .line 1070
    :cond_11
    sparse-switch v18, :sswitch_data_0

    .line 1082
    :goto_6
    if-nez v9, :cond_12

    .line 1083
    const/16 v39, 0x11

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setGravity(I)V

    .line 1085
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lsec/core/frame/app/MyUi;->bIsInListItem:Z

    move/from16 v39, v0

    if-eqz v39, :cond_25

    .line 1086
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocusable(Z)V

    .line 1090
    :goto_7
    move-object v14, v12

    .line 1092
    goto/16 :goto_0

    .line 1004
    .end local v9    # "bSetGravity":Z
    .end local v18    # "iBoldItalic":I
    .end local v34    # "strPara":[Ljava/lang/String;
    :cond_13
    const/16 v39, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setTextSize(IF)V

    goto :goto_4

    .line 1019
    .restart local v9    # "bSetGravity":Z
    .restart local v18    # "iBoldItalic":I
    .restart local v34    # "strPara":[Ljava/lang/String;
    :cond_14
    aget-object v35, v34, v39

    .line 1020
    .restart local v35    # "strTmp":Ljava/lang/String;
    if-nez v9, :cond_15

    .line 1021
    const-string v41, "Left"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_1b

    .line 1022
    const/4 v9, 0x1

    .line 1023
    const-string v41, "Top"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_19

    .line 1024
    const/16 v41, 0x33

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setGravity(I)V

    .line 1046
    :cond_15
    :goto_8
    const-string v41, "TruncateAtEnd"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_20

    .line 1047
    sget-object v41, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1061
    :cond_16
    :goto_9
    const-string v41, "SingleLine"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_17

    .line 1062
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setSingleLine(Z)V

    .line 1064
    :cond_17
    const-string v41, "PartnerDependent"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_18

    .line 1065
    const/16 v41, 0x1

    move/from16 v0, v41

    iput-boolean v0, v12, Lcom/lsec/core/frame/ctrl/JButton;->bPartnerDependent:Z

    .line 1019
    :cond_18
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_5

    .line 1025
    :cond_19
    const-string v41, "Bottom"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_1a

    .line 1026
    const/16 v41, 0x53

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setGravity(I)V

    goto :goto_8

    .line 1028
    :cond_1a
    const/16 v41, 0x13

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setGravity(I)V

    goto :goto_8

    .line 1029
    :cond_1b
    const-string v41, "Right"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_1e

    .line 1030
    const/4 v9, 0x1

    .line 1031
    const-string v41, "Top"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_1c

    .line 1032
    const/16 v41, 0x35

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setGravity(I)V

    goto :goto_8

    .line 1033
    :cond_1c
    const-string v41, "Bottom"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_1d

    .line 1034
    const/16 v41, 0x55

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setGravity(I)V

    goto/16 :goto_8

    .line 1036
    :cond_1d
    const/16 v41, 0x15

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setGravity(I)V

    goto/16 :goto_8

    .line 1037
    :cond_1e
    const-string v41, "Bottom"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_1f

    .line 1038
    const/4 v9, 0x1

    .line 1039
    const/16 v41, 0x51

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setGravity(I)V

    goto/16 :goto_8

    .line 1040
    :cond_1f
    const-string v41, "Top"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_15

    .line 1041
    const/4 v9, 0x1

    .line 1042
    const/16 v41, 0x31

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setGravity(I)V

    goto/16 :goto_8

    .line 1048
    :cond_20
    const-string v41, "TruncateAtMiddle"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_21

    .line 1049
    sget-object v41, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1050
    :cond_21
    const-string v41, "TruncateAtStart"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_22

    .line 1051
    sget-object v41, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1052
    :cond_22
    const-string v41, "TruncateAtMarQuee"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_23

    .line 1053
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 1054
    sget-object v41, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1055
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_9

    .line 1056
    :cond_23
    const-string v41, "Bold"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_24

    .line 1057
    const/16 v18, 0x1

    goto/16 :goto_9

    .line 1058
    :cond_24
    const-string v41, "Italic"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_16

    .line 1059
    or-int/lit8 v18, v18, 0x10

    goto/16 :goto_9

    .line 1072
    .end local v35    # "strTmp":Ljava/lang/String;
    :sswitch_0
    sget-object v39, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_6

    .line 1075
    :sswitch_1
    sget-object v39, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/16 v40, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_6

    .line 1078
    :sswitch_2
    sget-object v39, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/16 v40, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_6

    .line 1088
    :cond_25
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocusable(Z)V

    goto/16 :goto_7

    .line 1095
    .end local v9    # "bSetGravity":Z
    .end local v12    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v18    # "iBoldItalic":I
    .end local v22    # "localeDefault":Ljava/util/Locale;
    .end local v33    # "strLanguage":Ljava/lang/String;
    .end local v34    # "strPara":[Ljava/lang/String;
    :pswitch_3
    new-instance v36, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1096
    .local v36, "txt":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_26

    .line 1097
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1099
    :cond_26
    move-object/from16 v14, v36

    .line 1100
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getText()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lsec/core/frame/app/MyUi;->mMultText:F

    move/from16 v40, v0

    move-object/from16 v0, v36

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setLineSpacing(FF)V

    .line 1103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    .line 1104
    .restart local v22    # "localeDefault":Ljava/util/Locale;
    sget v39, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v40, 0x18

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_27

    .line 1105
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v22

    .line 1107
    :cond_27
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1108
    .restart local v33    # "strLanguage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getText()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTextBak(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const/4 v10, 0x1

    .line 1111
    .local v10, "bSingleLine":Z
    const/4 v9, 0x0

    .line 1112
    .restart local v9    # "bSetGravity":Z
    const/16 v18, 0x0

    .line 1113
    .restart local v18    # "iBoldItalic":I
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v34

    .line 1114
    .restart local v34    # "strPara":[Ljava/lang/String;
    if-eqz v34, :cond_28

    .line 1115
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v40, v0

    const/16 v39, 0x0

    :goto_a
    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_2d

    .line 1159
    :cond_28
    sparse-switch v18, :sswitch_data_1

    .line 1171
    :goto_b
    if-nez v9, :cond_29

    .line 1172
    const/16 v39, 0x11

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setGravity(I)V

    .line 1174
    :cond_29
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isLongLang()Z

    move-result v39

    if-eqz v39, :cond_3d

    .line 1175
    const/16 v39, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v40

    add-int/lit8 v40, v40, -0x2

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v36

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTextSize(IF)V

    .line 1179
    :goto_c
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    if-eqz v39, :cond_2b

    .line 1180
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v19, v0

    .line 1181
    .restart local v19    # "iLen":I
    const/16 v39, 0x1

    move/from16 v0, v19

    move/from16 v1, v39

    if-lt v0, v1, :cond_2a

    .line 1182
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    const/16 v40, 0x0

    aget v39, v39, v40

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1184
    :cond_2a
    const/16 v39, 0x1

    move/from16 v0, v19

    move/from16 v1, v39

    if-le v0, v1, :cond_2b

    .line 1185
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setColor([I)V

    .line 1188
    .end local v19    # "iLen":I
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-nez v39, :cond_2c

    .line 1189
    const/high16 v39, 0x1000000

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setBackgroundColor(I)V

    .line 1191
    :cond_2c
    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Lcom/lsec/core/frame/ctrl/JText;->setSingleLine(Z)V

    goto/16 :goto_0

    .line 1115
    :cond_2d
    aget-object v35, v34, v39

    .line 1116
    .restart local v35    # "strTmp":Ljava/lang/String;
    if-nez v9, :cond_2e

    .line 1117
    const-string v41, "Left"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_32

    .line 1118
    const/4 v9, 0x1

    .line 1119
    const-string v41, "Top"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_30

    .line 1120
    const/16 v41, 0x33

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setGravity(I)V

    .line 1142
    :cond_2e
    :goto_d
    const-string v41, "TruncateAtEnd"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_37

    .line 1143
    sget-object v41, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1115
    :cond_2f
    :goto_e
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_a

    .line 1121
    :cond_30
    const-string v41, "Bottom"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_31

    .line 1122
    const/16 v41, 0x53

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setGravity(I)V

    goto :goto_d

    .line 1124
    :cond_31
    const/16 v41, 0x13

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setGravity(I)V

    goto :goto_d

    .line 1125
    :cond_32
    const-string v41, "Right"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_35

    .line 1126
    const/4 v9, 0x1

    .line 1127
    const-string v41, "Top"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_33

    .line 1128
    const/16 v41, 0x35

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setGravity(I)V

    goto :goto_d

    .line 1129
    :cond_33
    const-string v41, "Bottom"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_34

    .line 1130
    const/16 v41, 0x55

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setGravity(I)V

    goto :goto_d

    .line 1132
    :cond_34
    const/16 v41, 0x15

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setGravity(I)V

    goto :goto_d

    .line 1133
    :cond_35
    const-string v41, "Bottom"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_36

    .line 1134
    const/4 v9, 0x1

    .line 1135
    const/16 v41, 0x51

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setGravity(I)V

    goto/16 :goto_d

    .line 1136
    :cond_36
    const-string v41, "Top"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_2e

    .line 1137
    const/4 v9, 0x1

    .line 1138
    const/16 v41, 0x31

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setGravity(I)V

    goto/16 :goto_d

    .line 1144
    :cond_37
    const-string v41, "TruncateAtMiddle"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_38

    .line 1145
    sget-object v41, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_e

    .line 1146
    :cond_38
    const-string v41, "TruncateAtStart"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_39

    .line 1147
    sget-object v41, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_e

    .line 1148
    :cond_39
    const-string v41, "TruncateAtMarQuee"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_3a

    .line 1149
    const/16 v41, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setMarQuee(Z)V

    goto/16 :goto_e

    .line 1150
    :cond_3a
    const-string v41, "Bold"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_3b

    .line 1151
    const/16 v18, 0x1

    goto/16 :goto_e

    .line 1152
    :cond_3b
    const-string v41, "Italic"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_3c

    .line 1153
    or-int/lit8 v18, v18, 0x10

    goto/16 :goto_e

    .line 1154
    :cond_3c
    const-string v41, "Multiline"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_2f

    .line 1155
    const/4 v10, 0x0

    goto/16 :goto_e

    .line 1161
    .end local v35    # "strTmp":Ljava/lang/String;
    :sswitch_3
    sget-object v39, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/16 v40, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_b

    .line 1164
    :sswitch_4
    sget-object v39, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/16 v40, 0x2

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_b

    .line 1167
    :sswitch_5
    sget-object v39, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/16 v40, 0x3

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_b

    .line 1177
    :cond_3d
    const/16 v39, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v36

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTextSize(IF)V

    goto/16 :goto_c

    .line 1196
    .end local v9    # "bSetGravity":Z
    .end local v10    # "bSingleLine":Z
    .end local v18    # "iBoldItalic":I
    .end local v22    # "localeDefault":Ljava/util/Locale;
    .end local v33    # "strLanguage":Ljava/lang/String;
    .end local v34    # "strPara":[Ljava/lang/String;
    .end local v36    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    :pswitch_4
    new-instance v27, Lcom/lsec/core/frame/ctrl/JViewPager;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lsec/core/frame/ctrl/JViewPager;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1197
    .local v27, "pager":Lcom/lsec/core/frame/ctrl/JViewPager;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_3e

    .line 1198
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JViewPager;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1200
    :cond_3e
    move-object/from16 v14, v27

    .line 1202
    const/16 v21, 0x0

    .line 1203
    .local v21, "intArray":[I
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v31

    .line 1204
    .local v31, "strArray":[Ljava/lang/String;
    if-eqz v31, :cond_1

    .line 1205
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v20, v0

    .line 1206
    .local v20, "iLenArray":I
    if-lez v20, :cond_1

    .line 1207
    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    if-eqz v39, :cond_3f

    .line 1209
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_f
    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_40

    .line 1214
    .end local v17    # "i":I
    :cond_3f
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JViewPager;->setUiLoader([I)V

    goto/16 :goto_0

    .line 1210
    .restart local v17    # "i":I
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    aget-object v40, v31, v17

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_41

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    aget-object v40, v31, v17

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    aput v39, v21, v17

    .line 1209
    :cond_41
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 1221
    .end local v17    # "i":I
    .end local v20    # "iLenArray":I
    .end local v21    # "intArray":[I
    .end local v27    # "pager":Lcom/lsec/core/frame/ctrl/JViewPager;
    .end local v31    # "strArray":[Ljava/lang/String;
    :pswitch_5
    new-instance v27, Lcom/lsec/core/frame/ctrl/JViewPagerVertical;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lsec/core/frame/ctrl/JViewPagerVertical;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1222
    .local v27, "pager":Lcom/lsec/core/frame/ctrl/JViewPagerVertical;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_42

    .line 1223
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JViewPagerVertical;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1225
    :cond_42
    move-object/from16 v14, v27

    .line 1227
    const/16 v21, 0x0

    .line 1228
    .restart local v21    # "intArray":[I
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v31

    .line 1229
    .restart local v31    # "strArray":[Ljava/lang/String;
    if-eqz v31, :cond_1

    .line 1230
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v20, v0

    .line 1231
    .restart local v20    # "iLenArray":I
    if-lez v20, :cond_1

    .line 1232
    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    if-eqz v39, :cond_43

    .line 1234
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_10
    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_44

    .line 1239
    .end local v17    # "i":I
    :cond_43
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JViewPagerVertical;->setUiLoader([I)V

    goto/16 :goto_0

    .line 1235
    .restart local v17    # "i":I
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    aget-object v40, v31, v17

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_45

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    aget-object v40, v31, v17

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    aput v39, v21, v17

    .line 1234
    :cond_45
    add-int/lit8 v17, v17, 0x1

    goto :goto_10

    .line 1245
    .end local v17    # "i":I
    .end local v20    # "iLenArray":I
    .end local v21    # "intArray":[I
    .end local v27    # "pager":Lcom/lsec/core/frame/ctrl/JViewPagerVertical;
    .end local v31    # "strArray":[Ljava/lang/String;
    :pswitch_6
    new-instance v38, Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lsec/core/frame/ctrl/JListViewEx;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1246
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JListViewEx;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_46

    .line 1247
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1249
    :cond_46
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setDividerHeight(I)V

    .line 1250
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1252
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setCacheColorHint(I)V

    .line 1253
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setBackgroundColor(I)V

    .line 1254
    new-instance v39, Landroid/graphics/drawable/ColorDrawable;

    const/16 v40, 0x0

    invoke-direct/range {v39 .. v40}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1255
    new-instance v39, Lcom/lsec/core/frame/app/MyUi$MyOnChildClickListener;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi$MyOnChildClickListener;-><init>(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/frame/ctrl/JListViewEx;)V

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 1257
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v28

    .line 1258
    .local v28, "para":[I
    if-eqz v28, :cond_47

    .line 1259
    const/16 v39, 0x0

    aget v39, v28, v39

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JListViewEx;->initSwipePara(I)V

    .line 1261
    :cond_47
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v31

    .line 1262
    .restart local v31    # "strArray":[Ljava/lang/String;
    if-eqz v31, :cond_48

    .line 1263
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v20, v0

    .line 1264
    .restart local v20    # "iLenArray":I
    if-lez v20, :cond_48

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    if-eqz v39, :cond_48

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-object v40, v31, v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    aget-object v40, v31, v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_48

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-object v40, v31, v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    const/16 v41, 0x1

    aget-object v41, v31, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setPageRow(II)V

    .line 1271
    .end local v20    # "iLenArray":I
    :cond_48
    move-object/from16 v14, v38

    .line 1273
    goto/16 :goto_0

    .line 1275
    .end local v28    # "para":[I
    .end local v31    # "strArray":[Ljava/lang/String;
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JListViewEx;
    :pswitch_7
    new-instance v38, Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1276
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JGridView;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_49

    .line 1277
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JGridView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1279
    :cond_49
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->setMaxRowDisp(I)V

    .line 1280
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->setCacheColorHint(I)V

    .line 1281
    new-instance v39, Landroid/graphics/drawable/ColorDrawable;

    const/16 v40, 0x0

    invoke-direct/range {v39 .. v40}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1283
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v28

    .line 1284
    .restart local v28    # "para":[I
    if-eqz v28, :cond_50

    .line 1285
    const/16 v39, 0x0

    aget v39, v28, v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->setNumColumns(I)V

    .line 1286
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_4a

    .line 1287
    const/16 v39, 0x1

    aget v39, v28, v39

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->setHorizontalSpacing(I)V

    .line 1289
    :cond_4a
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_4b

    .line 1290
    const/16 v39, 0x2

    aget v39, v28, v39

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->setVerticalSpacing(I)V

    .line 1292
    :cond_4b
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x3

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_4c

    .line 1293
    const/16 v39, 0x3

    aget v39, v28, v39

    if-lez v39, :cond_4c

    .line 1294
    const/16 v39, 0x3

    aget v39, v28, v39

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->initSwipePara(I)V

    .line 1299
    :cond_4c
    :goto_11
    new-instance v39, Lcom/lsec/core/frame/app/MyUi$MyOnItemClickListener;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi$MyOnItemClickListener;-><init>(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/frame/ctrl/JGridView;)V

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1300
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->isLongClick()Z

    move-result v39

    if-eqz v39, :cond_4d

    .line 1301
    new-instance v39, Lcom/lsec/core/frame/app/MyUi$MyOnItemLongClickListener;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi$MyOnItemLongClickListener;-><init>(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/frame/ctrl/JGridView;)V

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1303
    :cond_4d
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v31

    .line 1304
    .restart local v31    # "strArray":[Ljava/lang/String;
    if-eqz v31, :cond_4f

    .line 1305
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v20, v0

    .line 1306
    .restart local v20    # "iLenArray":I
    if-lez v20, :cond_4e

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    if-eqz v39, :cond_4e

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-object v40, v31, v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4e

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-object v40, v31, v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->setPageRow(I)V

    .line 1313
    :cond_4e
    const/16 v39, 0x1

    move/from16 v0, v20

    move/from16 v1, v39

    if-le v0, v1, :cond_4f

    .line 1314
    const/16 v17, 0x1

    .restart local v17    # "i":I
    :goto_12
    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_51

    .line 1323
    .end local v17    # "i":I
    .end local v20    # "iLenArray":I
    :cond_4f
    :goto_13
    move-object/from16 v14, v38

    .line 1325
    goto/16 :goto_0

    .line 1297
    .end local v31    # "strArray":[Ljava/lang/String;
    :cond_50
    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JGridView;->setNumColumns(I)V

    goto :goto_11

    .line 1315
    .restart local v17    # "i":I
    .restart local v20    # "iLenArray":I
    .restart local v31    # "strArray":[Ljava/lang/String;
    :cond_51
    aget-object v39, v31, v17

    const-string v40, "InScrollView"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_52

    .line 1316
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/lsec/core/frame/ctrl/JGridView;->mInScrollView:Z

    goto :goto_13

    .line 1314
    :cond_52
    add-int/lit8 v17, v17, 0x1

    goto :goto_12

    .line 1327
    .end local v17    # "i":I
    .end local v20    # "iLenArray":I
    .end local v28    # "para":[I
    .end local v31    # "strArray":[Ljava/lang/String;
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JGridView;
    :pswitch_8
    new-instance v38, Lcom/lsec/core/frame/ctrl/JEditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JEditText;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1328
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JEditText;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_53

    .line 1329
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JEditText;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1331
    :cond_53
    const/4 v8, 0x1

    .line 1332
    .local v8, "bSetBackground_Null":Z
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v34

    .line 1333
    .restart local v34    # "strPara":[Ljava/lang/String;
    if-eqz v34, :cond_54

    .line 1334
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v40, v0

    const/16 v39, 0x0

    :goto_14
    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_5a

    .line 1340
    :cond_54
    if-eqz v8, :cond_55

    .line 1341
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1343
    :cond_55
    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JEditText;->setFocusable(Z)V

    .line 1344
    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JEditText;->setFocusableInTouchMode(Z)V

    .line 1345
    invoke-virtual/range {v38 .. v38}, Lcom/lsec/core/frame/ctrl/JEditText;->setSingleLine()V

    .line 1346
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isLongLang()Z

    move-result v39

    if-eqz v39, :cond_5c

    .line 1347
    const/16 v39, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v40

    add-int/lit8 v40, v40, -0x2

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JEditText;->setTextSize(IF)V

    .line 1351
    :goto_15
    sget-boolean v39, Lcom/lsec/core/frame/app/MyUi;->bEditPaddingZero:Z

    if-eqz v39, :cond_56

    .line 1352
    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v38 .. v42}, Lcom/lsec/core/frame/ctrl/JEditText;->setPadding(IIII)V

    .line 1354
    :cond_56
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    if-eqz v39, :cond_57

    .line 1355
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    const/16 v40, 0x0

    aget v39, v39, v40

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JEditText;->setTextColor(I)V

    .line 1357
    :cond_57
    const/4 v9, 0x0

    .line 1358
    .restart local v9    # "bSetGravity":Z
    if-eqz v34, :cond_58

    .line 1359
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v40, v0

    const/16 v39, 0x0

    :goto_16
    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_5d

    .line 1370
    :cond_58
    if-nez v9, :cond_59

    .line 1371
    const/16 v39, 0x11

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JEditText;->setGravity(I)V

    .line 1373
    :cond_59
    move-object/from16 v14, v38

    .line 1375
    goto/16 :goto_0

    .line 1334
    .end local v9    # "bSetGravity":Z
    :cond_5a
    aget-object v35, v34, v39

    .line 1335
    .restart local v35    # "strTmp":Ljava/lang/String;
    const-string v41, "KeepBk"

    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5b

    .line 1336
    const/4 v8, 0x0

    .line 1334
    :cond_5b
    add-int/lit8 v39, v39, 0x1

    goto :goto_14

    .line 1349
    .end local v35    # "strTmp":Ljava/lang/String;
    :cond_5c
    const/16 v39, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JEditText;->setTextSize(IF)V

    goto :goto_15

    .line 1359
    .restart local v9    # "bSetGravity":Z
    :cond_5d
    aget-object v35, v34, v39

    .line 1360
    .restart local v35    # "strTmp":Ljava/lang/String;
    const-string v41, "Left"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5f

    .line 1361
    const/4 v9, 0x1

    .line 1362
    const/16 v41, 0x13

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JEditText;->setGravity(I)V

    .line 1359
    :cond_5e
    :goto_17
    add-int/lit8 v39, v39, 0x1

    goto :goto_16

    .line 1363
    :cond_5f
    const-string v41, "Right"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5e

    .line 1364
    const/4 v9, 0x1

    .line 1365
    const/16 v41, 0x15

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JEditText;->setGravity(I)V

    goto :goto_17

    .line 1377
    .end local v8    # "bSetBackground_Null":Z
    .end local v9    # "bSetGravity":Z
    .end local v34    # "strPara":[Ljava/lang/String;
    .end local v35    # "strTmp":Ljava/lang/String;
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JEditText;
    :pswitch_9
    new-instance v38, Lcom/lsec/core/frame/ctrl/JImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JImageView;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1378
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JImageView;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_60

    .line 1379
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JImageView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1381
    :cond_60
    move-object/from16 v14, v38

    .line 1383
    goto/16 :goto_0

    .line 1385
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JImageView;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v32

    .line 1387
    .local v32, "strDrawableExtra":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v29

    .line 1388
    .local v29, "paras":[I
    const/4 v6, 0x0

    .line 1389
    .local v6, "bIsCheckBox":Z
    if-eqz v32, :cond_61

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_61

    .line 1390
    const/4 v6, 0x1

    .line 1392
    :cond_61
    new-instance v38, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/lsec/core/frame/ctrl/JSwitchButton;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Z)V

    .line 1393
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_62

    .line 1394
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1396
    :cond_62
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setIconName([Ljava/lang/String;)V

    .line 1397
    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setParas([I)V

    .line 1398
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v34

    .line 1399
    .restart local v34    # "strPara":[Ljava/lang/String;
    if-eqz v34, :cond_63

    .line 1400
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v40, v0

    const/16 v39, 0x0

    :goto_18
    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_64

    .line 1406
    :cond_63
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lsec/core/frame/app/MyUi;->bIsInListItem:Z

    move/from16 v39, v0

    if-eqz v39, :cond_66

    .line 1407
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setFocusable(Z)V

    .line 1411
    :goto_19
    move-object/from16 v14, v38

    .line 1413
    goto/16 :goto_0

    .line 1400
    :cond_64
    aget-object v35, v34, v39

    .line 1401
    .restart local v35    # "strTmp":Ljava/lang/String;
    const-string v41, "condition"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_65

    .line 1402
    const/16 v41, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setCondition(Z)V

    .line 1400
    :cond_65
    add-int/lit8 v39, v39, 0x1

    goto :goto_18

    .line 1409
    .end local v35    # "strTmp":Ljava/lang/String;
    :cond_66
    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setFocusable(Z)V

    goto :goto_19

    .line 1415
    .end local v6    # "bIsCheckBox":Z
    .end local v29    # "paras":[I
    .end local v32    # "strDrawableExtra":[Ljava/lang/String;
    .end local v34    # "strPara":[Ljava/lang/String;
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    :pswitch_b
    new-instance v38, Lcom/lsec/core/frame/ctrl/JCheckBox;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lsec/core/frame/ctrl/JCheckBox;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1416
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JCheckBox;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_67

    .line 1417
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1419
    :cond_67
    move-object/from16 v14, v38

    .line 1420
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getText()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setText(Ljava/lang/String;)V

    .line 1422
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    .line 1423
    .restart local v22    # "localeDefault":Ljava/util/Locale;
    sget v39, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v40, 0x18

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_68

    .line 1424
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v22

    .line 1426
    :cond_68
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1427
    .restart local v33    # "strLanguage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getText()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setTextBak(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isLongLang()Z

    move-result v39

    if-eqz v39, :cond_6a

    .line 1429
    const/16 v39, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v40

    add-int/lit8 v40, v40, -0x2

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setTextSize(IF)V

    .line 1433
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    if-eqz v39, :cond_69

    .line 1434
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    const/16 v40, 0x0

    aget v39, v39, v40

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setTextColor(I)V

    .line 1436
    :cond_69
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setIconName([Ljava/lang/String;)V

    .line 1437
    const/16 v39, 0x13

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setGravity(I)V

    goto/16 :goto_0

    .line 1431
    :cond_6a
    const/16 v39, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setTextSize(IF)V

    goto :goto_1a

    .line 1441
    .end local v22    # "localeDefault":Ljava/util/Locale;
    .end local v33    # "strLanguage":Ljava/lang/String;
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JCheckBox;
    :pswitch_c
    new-instance v38, Lcom/lsec/core/frame/ctrl/JSurfaceView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JSurfaceView;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1442
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JSurfaceView;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_6b

    .line 1443
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JSurfaceView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1445
    :cond_6b
    move-object/from16 v14, v38

    .line 1447
    goto/16 :goto_0

    .line 1449
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JSurfaceView;
    :pswitch_d
    const/4 v11, 0x0

    .line 1450
    .local v11, "bUseCameraTextureView":Z
    sget v39, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v39, :pswitch_data_1

    .line 1457
    :goto_1b
    if-eqz v11, :cond_6d

    .line 1458
    new-instance v38, Lcom/lsec/core/frame/ctrl/JCameraTextureView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1459
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JCameraTextureView;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_6c

    .line 1460
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1462
    :cond_6c
    move-object/from16 v14, v38

    .line 1463
    goto/16 :goto_0

    .line 1453
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JCameraTextureView;
    :pswitch_e
    const/4 v11, 0x1

    goto :goto_1b

    .line 1464
    :cond_6d
    new-instance v38, Lcom/lsec/core/frame/ctrl/JCameraTexture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JCameraTexture;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1465
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JCameraTexture;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_6e

    .line 1466
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JCameraTexture;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1468
    :cond_6e
    move-object/from16 v14, v38

    .line 1471
    goto/16 :goto_0

    .line 1473
    .end local v11    # "bUseCameraTextureView":Z
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JCameraTexture;
    :pswitch_f
    new-instance v38, Lcom/lsec/core/frame/ctrl/JCameraTextureView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1474
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JCameraTextureView;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_6f

    .line 1475
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1477
    :cond_6f
    move-object/from16 v14, v38

    .line 1479
    goto/16 :goto_0

    .line 1481
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JCameraTextureView;
    :pswitch_10
    const v15, 0x1010077

    .line 1482
    .local v15, "defStyle":I
    const/4 v7, 0x0

    .line 1484
    .local v7, "bProgressDrawable":Z
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v28

    .line 1485
    .restart local v28    # "para":[I
    if-eqz v28, :cond_70

    .line 1486
    const/16 v39, 0x0

    aget v39, v28, v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_74

    const/4 v7, 0x1

    .line 1488
    :cond_70
    :goto_1c
    if-eqz v7, :cond_71

    .line 1489
    const v15, 0x1010078

    .line 1491
    :cond_71
    new-instance v38, Lcom/lsec/core/frame/ctrl/JProgressBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/lsec/core/frame/ctrl/JProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/lsec/core/frame/ctrl/JPage;)V

    .line 1492
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JProgressBar;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_72

    .line 1493
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JProgressBar;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1495
    :cond_72
    if-eqz v7, :cond_75

    .line 1496
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_73

    .line 1497
    invoke-virtual/range {v38 .. v38}, Lcom/lsec/core/frame/ctrl/JProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/LayerDrawable;

    .line 1498
    .local v16, "drawable":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v39, 0x1020000

    .line 1499
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    aget-object v40, v40, v41

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v40

    .line 1498
    move-object/from16 v0, v16

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1500
    new-instance v13, Landroid/graphics/drawable/ClipDrawable;

    .line 1501
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x1

    aget-object v39, v39, v40

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v39

    const/16 v40, 0x3

    .line 1502
    const/16 v41, 0x1

    .line 1500
    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v13, v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 1503
    .local v13, "cd":Landroid/graphics/drawable/ClipDrawable;
    const v39, 0x102000d

    move-object/from16 v0, v16

    move/from16 v1, v39

    invoke-virtual {v0, v1, v13}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1504
    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1509
    .end local v13    # "cd":Landroid/graphics/drawable/ClipDrawable;
    .end local v16    # "drawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_73
    :goto_1d
    move-object/from16 v14, v38

    .line 1511
    goto/16 :goto_0

    .line 1486
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JProgressBar;
    :cond_74
    const/4 v7, 0x0

    goto/16 :goto_1c

    .line 1507
    .restart local v38    # "view":Lcom/lsec/core/frame/ctrl/JProgressBar;
    :cond_75
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    aget-object v39, v39, v40

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 1513
    .end local v7    # "bProgressDrawable":Z
    .end local v15    # "defStyle":I
    .end local v28    # "para":[I
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JProgressBar;
    :pswitch_11
    new-instance v38, Lcom/lsec/core/frame/ctrl/JSeekBar;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lsec/core/frame/ctrl/JSeekBar;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1514
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JSeekBar;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_76

    .line 1515
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1517
    :cond_76
    move-object/from16 v14, v38

    .line 1518
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setIconName([Ljava/lang/String;)V

    .line 1519
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isLongLang()Z

    move-result v39

    if-eqz v39, :cond_80

    .line 1520
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v39

    add-int/lit8 v39, v39, -0x2

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setTextSize(F)V

    .line 1524
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    if-eqz v39, :cond_77

    .line 1525
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    const/16 v40, 0x0

    aget v39, v39, v40

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setTextColor(I)V

    .line 1527
    :cond_77
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v28

    .line 1528
    .restart local v28    # "para":[I
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v34

    .line 1529
    .restart local v34    # "strPara":[Ljava/lang/String;
    if-eqz v34, :cond_78

    .line 1530
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v40, v0

    const/16 v39, 0x0

    :goto_1f
    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_81

    .line 1538
    :cond_78
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getRect()[Landroid/graphics/Rect;

    move-result-object v30

    .line 1539
    .local v30, "rec":[Landroid/graphics/Rect;
    const/16 v39, 0x0

    aget-object v39, v30, v39

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    .line 1540
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_79

    .line 1541
    const/16 v39, 0x1

    aget-object v39, v30, v39

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_thumb:Landroid/graphics/Rect;

    .line 1543
    :cond_79
    const/4 v5, 0x0

    .line 1544
    .local v5, "bDispTxt":Z
    if-eqz v28, :cond_7e

    .line 1545
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_7a

    .line 1546
    const/16 v39, 0x0

    aget v39, v28, v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setProgressMax(I)V

    .line 1548
    :cond_7a
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_7b

    .line 1549
    const/16 v39, 0x1

    aget v39, v28, v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_84

    const/4 v5, 0x1

    .line 1551
    :cond_7b
    :goto_20
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x3

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_7c

    .line 1552
    const/16 v39, 0x2

    aget v39, v28, v39

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Lcom/lsec/core/frame/ctrl/JSeekBar;->hExtraTxt:I

    .line 1554
    :cond_7c
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x4

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_7d

    .line 1555
    const/16 v39, 0x3

    aget v39, v28, v39

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Lcom/lsec/core/frame/ctrl/JSeekBar;->hExtraTxtBk:I

    .line 1557
    :cond_7d
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x5

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_7e

    .line 1558
    const/16 v39, 0x4

    aget v39, v28, v39

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Lcom/lsec/core/frame/ctrl/JSeekBar;->hLine:I

    .line 1561
    :cond_7e
    if-eqz v5, :cond_1

    .line 1562
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_7f

    .line 1563
    const/16 v39, 0x2

    aget-object v39, v30, v39

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    .line 1565
    :cond_7f
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x3

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_1

    .line 1566
    const/16 v39, 0x3

    aget-object v39, v30, v39

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 1522
    .end local v5    # "bDispTxt":Z
    .end local v28    # "para":[I
    .end local v30    # "rec":[Landroid/graphics/Rect;
    .end local v34    # "strPara":[Ljava/lang/String;
    :cond_80
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setTextSize(F)V

    goto/16 :goto_1e

    .line 1530
    .restart local v28    # "para":[I
    .restart local v34    # "strPara":[Ljava/lang/String;
    :cond_81
    aget-object v35, v34, v39

    .line 1531
    .restart local v35    # "strTmp":Ljava/lang/String;
    const-string v41, "unSeekAble"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_83

    .line 1532
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/lsec/core/frame/ctrl/JSeekBar;->bCanSeekAble:Z

    .line 1530
    :cond_82
    :goto_21
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_1f

    .line 1533
    :cond_83
    const-string v41, "DrawMidTxt"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_82

    .line 1534
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/lsec/core/frame/ctrl/JSeekBar;->bDrawMidTxt:Z

    goto :goto_21

    .line 1549
    .end local v35    # "strTmp":Ljava/lang/String;
    .restart local v5    # "bDispTxt":Z
    .restart local v30    # "rec":[Landroid/graphics/Rect;
    :cond_84
    const/4 v5, 0x0

    goto/16 :goto_20

    .line 1571
    .end local v5    # "bDispTxt":Z
    .end local v28    # "para":[I
    .end local v30    # "rec":[Landroid/graphics/Rect;
    .end local v34    # "strPara":[Ljava/lang/String;
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JSeekBar;
    :pswitch_12
    new-instance v38, Lcom/lsec/core/frame/ctrl/JIndicator;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lsec/core/frame/ctrl/JIndicator;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1572
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JIndicator;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_85

    .line 1573
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JIndicator;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1575
    :cond_85
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JIndicator;->setIconName([Ljava/lang/String;)V

    .line 1576
    move-object/from16 v14, v38

    .line 1578
    goto/16 :goto_0

    .line 1580
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JIndicator;
    :pswitch_13
    new-instance v38, Lcom/lsec/core/frame/ctrl/JListApp;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lsec/core/frame/ctrl/JListApp;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1581
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JListApp;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_86

    .line 1582
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JListApp;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1584
    :cond_86
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v31

    .line 1585
    .restart local v31    # "strArray":[Ljava/lang/String;
    if-eqz v31, :cond_87

    .line 1586
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v20, v0

    .line 1587
    .restart local v20    # "iLenArray":I
    if-lez v20, :cond_87

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    if-eqz v39, :cond_87

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-object v40, v31, v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_87

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-object v40, v31, v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JListApp;->setPageRow(I)V

    .line 1595
    .end local v20    # "iLenArray":I
    :cond_87
    move-object/from16 v14, v38

    .line 1597
    goto/16 :goto_0

    .line 1599
    .end local v31    # "strArray":[Ljava/lang/String;
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JListApp;
    :pswitch_14
    new-instance v38, Lcom/lsec/core/frame/ctrl/JDashLine;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JDashLine;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1600
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JDashLine;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_88

    .line 1601
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JDashLine;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1603
    :cond_88
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    if-eqz v39, :cond_89

    .line 1604
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    const/16 v40, 0x0

    aget v39, v39, v40

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JDashLine;->setColor(I)V

    .line 1606
    :cond_89
    move-object/from16 v14, v38

    .line 1608
    goto/16 :goto_0

    .line 1610
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JDashLine;
    :pswitch_15
    new-instance v38, Lcom/lsec/core/frame/ctrl/JLine;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JLine;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1611
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JLine;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_8a

    .line 1612
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JLine;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1614
    :cond_8a
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    if-eqz v39, :cond_8b

    .line 1615
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v39

    const/16 v40, 0x0

    aget v39, v39, v40

    invoke-virtual/range {v38 .. v39}, Lcom/lsec/core/frame/ctrl/JLine;->setColor(I)V

    .line 1617
    :cond_8b
    move-object/from16 v14, v38

    .line 1619
    goto/16 :goto_0

    .line 1624
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JLine;
    :cond_8c
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v39

    const/16 v40, 0x4

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_8d

    .line 1625
    new-instance v38, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1626
    .local v38, "view":Landroid/widget/LinearLayout;
    move-object/from16 v14, v38

    .line 1627
    goto/16 :goto_0

    .line 1628
    .end local v38    # "view":Landroid/widget/LinearLayout;
    :cond_8d
    new-instance v38, Lcom/lsec/core/frame/ctrl/JView;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1629
    .local v38, "view":Lcom/lsec/core/frame/ctrl/JView;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_8e

    .line 1630
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1632
    :cond_8e
    move-object/from16 v14, v38

    goto/16 :goto_0

    .line 1658
    .end local v37    # "type":I
    .end local v38    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v23    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8f
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 963
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 1070
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch

    .line 1159
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
    .end sparse-switch

    .line 1450
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "mapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .local p3, "tmpMapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const/4 v6, 0x0

    .line 326
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v6, Landroid/graphics/drawable/Drawable;

    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    move-object v7, v6

    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v6

    .line 374
    :goto_1
    return-object v0

    .line 329
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 367
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 368
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 370
    :cond_3
    if-eqz p3, :cond_0

    .line 371
    invoke-virtual {p3, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 332
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    const/4 v0, 0x0

    move-object v7, v6

    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 335
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mStrHeadDrawable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lsec/core/frame/app/MyUi;->mStrHeadDrawable:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 338
    :cond_6
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const-string v1, "drawable"

    sget-object v2, Lcom/lsec/core/frame/app/MyUi;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 339
    .local v8, "resId":I
    if-lez v8, :cond_a

    .line 340
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 347
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    if-eqz v0, :cond_8

    .line 348
    if-nez v6, :cond_8

    .line 349
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 350
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getDrawableFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 358
    :cond_8
    :goto_4
    if-eqz v6, :cond_9

    .line 359
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mInterface_tintDrawable:Lcom/lsec/core/frame/app/MyUi$Interface_TintDrawable;

    if-eqz v0, :cond_9

    .line 360
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mInterface_tintDrawable:Lcom/lsec/core/frame/app/MyUi$Interface_TintDrawable;

    invoke-interface {v0, p1, v6}, Lcom/lsec/core/frame/app/MyUi$Interface_TintDrawable;->tintDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_9
    if-eqz p2, :cond_2

    .line 364
    invoke-virtual {p2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 342
    :cond_a
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const-string v1, "anim"

    sget-object v2, Lcom/lsec/core/frame/app/MyUi;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 343
    if-lez v8, :cond_7

    .line 344
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_3

    .line 353
    :cond_b
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getDrawableFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_4
.end method

.method public getFixValue(IZ)I
    .locals 3
    .param p1, "val"    # I
    .param p2, "bPositive"    # Z

    .prologue
    .line 249
    if-nez p1, :cond_1

    .line 250
    const/4 v0, 0x0

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 253
    .local v0, "ret":I
    if-eqz p2, :cond_0

    if-gtz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPage(I)Lcom/lsec/core/frame/ctrl/JPage;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    return-object v0
.end method

.method public getPageFromXml(Ljava/lang/String;)Lcom/lsec/core/frame/ctrl/JPage;
    .locals 10
    .param p1, "strXml"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "page":Lcom/lsec/core/frame/ctrl/JPage;
    const/4 v1, 0x0

    .line 799
    .local v1, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 801
    :try_start_0
    new-instance v4, Lcom/lsec/core/util/Markup;

    invoke-direct {v4}, Lcom/lsec/core/util/Markup;-><init>()V

    .line 802
    .local v4, "xml":Lcom/lsec/core/util/Markup;
    invoke-virtual {v4, p1}, Lcom/lsec/core/util/Markup;->ReadXML(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 805
    :cond_0
    iget-object v5, v4, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v5, v5, Lcom/lsec/core/util/Markup$XmlItem;->mStrBuff:Ljava/lang/String;

    .line 806
    iget-object v6, v4, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget v6, v6, Lcom/lsec/core/util/Markup$XmlItem;->mPosEnd:I

    iget-object v7, v4, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget v7, v7, Lcom/lsec/core/util/Markup$XmlItem;->mPosStart:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 805
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lsec/core/util/Markup;->FindToken(Ljava/lang/String;II[I)Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, "strTemp":Ljava/lang/String;
    const-string v5, "Page"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 808
    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Lcom/lsec/core/frame/app/MyUi;->getItem(Lcom/lsec/core/util/Markup;Ljava/lang/String;Lcom/lsec/core/frame/app/MyUiItem;)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v1

    .line 809
    :cond_1
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v5

    if-nez v5, :cond_0

    .line 810
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->ExitItem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    .end local v3    # "strTemp":Ljava/lang/String;
    .end local v4    # "xml":Lcom/lsec/core/util/Markup;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 818
    invoke-direct {p0, v1, v9}, Lcom/lsec/core/frame/app/MyUi;->createPage(Lcom/lsec/core/frame/app/MyUiItem;Lcom/lsec/core/frame/ctrl/JPage;)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 820
    :cond_3
    return-object v2

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;
    .locals 1
    .param p1, "idPage"    # I
    .param p2, "strAnim"    # Ljava/lang/String;
    .param p3, "bCanelTouchOutSide"    # Z

    .prologue
    .line 1811
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;ZI)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getPopDlg(ILjava/lang/String;ZI)Landroid/app/Dialog;
    .locals 10
    .param p1, "idPage"    # I
    .param p2, "strAnim"    # Ljava/lang/String;
    .param p3, "bCanelTouchOutSide"    # Z
    .param p4, "idThemeDlg"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1815
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUi;->mActivity:Landroid/app/Activity;

    if-nez v7, :cond_1

    .line 1816
    const/4 v0, 0x0

    .line 1861
    :cond_0
    :goto_0
    return-object v0

    .line 1818
    :cond_1
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUi;->mDlgs:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 1819
    .local v0, "dlg":Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 1820
    invoke-virtual {p0, v8, p1}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    .line 1821
    .local v4, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v4, :cond_2

    .line 1822
    if-nez p4, :cond_3

    .line 1823
    new-instance v0, Landroid/app/Dialog;

    .end local v0    # "dlg":Landroid/app/Dialog;
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1827
    .restart local v0    # "dlg":Landroid/app/Dialog;
    :goto_1
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1828
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1829
    invoke-virtual {v0, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1830
    invoke-virtual {v4, v0}, Lcom/lsec/core/frame/ctrl/JPage;->setDialog(Landroid/app/Dialog;)V

    .line 1832
    new-instance v7, Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;

    invoke-direct {v7, p0, v4}, Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;-><init>(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/frame/ctrl/JPage;)V

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1834
    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1835
    .local v2, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 1836
    .local v6, "window":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1837
    .local v3, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1838
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1839
    const/4 v7, 0x0

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1840
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1841
    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyUiItem;->getPos()[I

    move-result-object v5

    .line 1842
    .local v5, "pos":[I
    const/4 v7, 0x2

    invoke-static {v5, v7}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1843
    aget v7, v5, v9

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1844
    aget v7, v5, v8

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1845
    const/16 v7, 0x33

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 1849
    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1850
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1851
    sget-object v7, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const-string v8, "style"

    sget-object v9, Lcom/lsec/core/frame/app/MyUi;->mPkgName:Ljava/lang/String;

    invoke-virtual {v7, p2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1852
    .local v1, "idAnim":I
    if-lez v1, :cond_2

    .line 1853
    invoke-virtual {v6, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1857
    .end local v1    # "idAnim":I
    .end local v2    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v3    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "pos":[I
    .end local v6    # "window":Landroid/view/Window;
    :cond_2
    if-eqz v0, :cond_0

    .line 1858
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUi;->mDlgs:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1825
    :cond_3
    new-instance v0, Landroid/app/Dialog;

    .end local v0    # "dlg":Landroid/app/Dialog;
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v7, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "dlg":Landroid/app/Dialog;
    goto :goto_1

    .line 1847
    .restart local v2    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v3    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "pos":[I
    .restart local v6    # "window":Landroid/view/Window;
    :cond_4
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    goto :goto_2
.end method

.method public getRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "strRaw"    # Ljava/lang/String;

    .prologue
    .line 756
    const-string v2, ""

    .line 758
    .local v2, "strXml":Ljava/lang/String;
    const/4 v1, -0x1

    .line 759
    .local v1, "id":I
    :try_start_0
    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 760
    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "raw"

    sget-object v6, Lcom/lsec/core/frame/app/MyUi;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 763
    :cond_0
    if-gtz v1, :cond_1

    .line 764
    sget-object v3, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v4, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_1

    .line 766
    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "port_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "raw"

    sget-object v6, Lcom/lsec/core/frame/app/MyUi;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 770
    :cond_1
    if-gtz v1, :cond_2

    .line 772
    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const-string v4, "raw"

    sget-object v5, Lcom/lsec/core/frame/app/MyUi;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 775
    :cond_2
    if-lez v1, :cond_3

    .line 777
    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/lsec/core/util/FuncUtils;->readStrFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 785
    :cond_3
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 786
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    if-eqz v3, :cond_4

    .line 787
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 788
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getRawFromZip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 793
    :cond_4
    :goto_1
    return-object v2

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 790
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    sget-object v4, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getRawFromZip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getStatusBarHeight()I
    .locals 7

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 262
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 264
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .line 265
    .local v5, "x":I
    const/16 v4, 0x3c

    .line 267
    .local v4, "sbar":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 269
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lsec/core/util/FuncUtils;->myParseInt(Ljava/lang/String;)I

    move-result v5

    .line 271
    sget-object v6, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 276
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    const-string v1, ""

    .line 440
    :cond_0
    :goto_0
    return-object v1

    .line 424
    :cond_1
    sget-object v2, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const-string v3, "string"

    sget-object v4, Lcom/lsec/core/frame/app/MyUi;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, "id":I
    if-nez v0, :cond_4

    .line 426
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    if-eqz v2, :cond_2

    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, "strRet":Ljava/lang/String;
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 429
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getStringFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "strRet":Ljava/lang/String;
    :cond_2
    move-object v1, p1

    .line 437
    goto :goto_0

    .line 431
    .restart local v1    # "strRet":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getStringFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 440
    .end local v1    # "strRet":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/app/MyUi;->myString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 474
    :cond_0
    :goto_0
    return-object v1

    .line 459
    :cond_1
    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const-string v4, "array"

    sget-object v5, Lcom/lsec/core/frame/app/MyUi;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, "id":I
    if-lez v0, :cond_2

    .line 461
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/app/MyUi;->myStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 463
    :cond_2
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    if-eqz v3, :cond_3

    .line 464
    const/4 v1, 0x0

    .line 465
    .local v1, "strRet":[Ljava/lang/String;
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 466
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    invoke-virtual {v3, p0, v4, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getStringArrayFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 470
    :goto_1
    if-nez v1, :cond_0

    .end local v1    # "strRet":[Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .line 474
    goto :goto_0

    .line 468
    .restart local v1    # "strRet":[Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    sget-object v4, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-virtual {v3, p0, v4, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getStringArrayFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getUiItemAt(I)Lcom/lsec/core/frame/app/MyUiItem;
    .locals 2
    .param p1, "idPage"    # I

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi;->mPageUiItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi;->mPageUiItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi;->mPageUiItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 384
    .restart local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_0
    return-object v0
.end method

.method public loadAnimation(Ljava/lang/String;)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "animation":Landroid/view/animation/Animation;
    sget-object v2, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const-string v3, "anim"

    sget-object v4, Lcom/lsec/core/frame/app/MyUi;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 405
    .local v1, "id":I
    if-lez v1, :cond_0

    .line 406
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    if-eqz v2, :cond_1

    .line 409
    if-nez v0, :cond_1

    .line 410
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 411
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUi;->mStrZip:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->loadAnimation(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 417
    :cond_1
    :goto_0
    return-object v0

    .line 413
    :cond_2
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi;->mZip4jUtilFunc:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->loadAnimation(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method public loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;
    .locals 1
    .param p1, "bNotListItem"    # Z
    .param p2, "idPage"    # I

    .prologue
    .line 1743
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZILcom/lsec/core/frame/ctrl/JPage;)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    return-object v0
.end method

.method public loadPage(ZILcom/lsec/core/frame/ctrl/JPage;)Lcom/lsec/core/frame/ctrl/JPage;
    .locals 7
    .param p1, "bNotListItem"    # Z
    .param p2, "idPage"    # I
    .param p3, "pageExist"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v5, 0x0

    .line 1755
    if-eqz p1, :cond_6

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/lsec/core/frame/app/MyUi;->bIsInListItem:Z

    .line 1757
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JPage;

    .line 1758
    .local v2, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_0

    .line 1759
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->isNeedReload()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1760
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUi;->mPageUiItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 1761
    const/4 v2, 0x0

    .line 1765
    :cond_0
    if-nez v2, :cond_5

    .line 1766
    invoke-virtual {p0, p2}, Lcom/lsec/core/frame/app/MyUi;->getUiItemAt(I)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v0

    .line 1768
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    if-nez v0, :cond_1

    .line 1770
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 1772
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/lsec/core/frame/app/MyUi;->ParseXml(Ljava/lang/String;)V

    .line 1773
    invoke-virtual {p0, p2}, Lcom/lsec/core/frame/app/MyUi;->getUiItemAt(I)Lcom/lsec/core/frame/app/MyUiItem;

    move-result-object v0

    .line 1777
    :cond_1
    if-eqz v0, :cond_5

    .line 1778
    invoke-direct {p0, v0, p3}, Lcom/lsec/core/frame/app/MyUi;->createPage(Lcom/lsec/core/frame/app/MyUiItem;Lcom/lsec/core/frame/ctrl/JPage;)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1780
    if-eqz v2, :cond_5

    .line 1782
    invoke-static {}, Lcom/lsec/core/frame/app/MyUi;->getCurrentLang()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lsec/core/frame/ctrl/JPage;->mLanguage:Ljava/lang/String;

    .line 1783
    sget-object v4, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    iput-object v4, v2, Lcom/lsec/core/frame/ctrl/JPage;->mStrHeadXml:Ljava/lang/String;

    .line 1784
    if-nez p3, :cond_5

    .line 1785
    iget v4, v0, Lcom/lsec/core/frame/app/MyUiItem;->mPlusPadding:I

    invoke-virtual {v2, v5, v4, v5, v5}, Lcom/lsec/core/frame/ctrl/JPage;->setPadding(IIII)V

    .line 1787
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 1788
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_2

    .line 1789
    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1791
    :cond_2
    if-eqz p1, :cond_3

    .line 1792
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1793
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1796
    :cond_3
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUi;->mInterfaceUi:Lcom/lsec/core/frame/app/InterfaceUi;

    if-eqz v4, :cond_4

    .line 1797
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUi;->mInterfaceUi:Lcom/lsec/core/frame/app/InterfaceUi;

    invoke-interface {v4, v2}, Lcom/lsec/core/frame/app/InterfaceUi;->InitPage(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1799
    :cond_4
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v3

    .line 1800
    .local v3, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v3, :cond_5

    .line 1801
    invoke-interface {v3}, Lcom/lsec/core/frame/page/IPageNotify;->init()V

    .line 1807
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_5
    return-object v2

    .line 1755
    .end local v2    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_6
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public myString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 444
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 446
    :try_start_0
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    .line 447
    :catch_0
    move-exception v0

    .line 452
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public myStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 478
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 480
    :try_start_0
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    .line 481
    :catch_0
    move-exception v0

    .line 486
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePage(I)V
    .locals 1
    .param p1, "idPage"    # I

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mPageUiItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1866
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1867
    return-void
.end method
