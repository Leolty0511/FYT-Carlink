.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z = false


# instance fields
.field private final mNative:I

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field public mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 13
    iput p1, p0, Landroid/content/res/StringBlock;->mNative:I

    .line 14
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 8
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)I

    move-result p1

    iput p1, p0, Landroid/content/res/StringBlock;->mNative:I

    .line 9
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/StringBlock;->nativeCreate([BII)I

    move-result p1

    iput p1, p0, Landroid/content/res/StringBlock;->mNative:I

    .line 4
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    add-int/lit8 v2, p2, -0x1

    .line 2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1

    add-int/lit8 v2, p2, -0x1

    .line 3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    :cond_1
    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_3

    add-int/lit8 v2, p3, -0x1

    .line 4
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ge p3, v0, :cond_3

    add-int/lit8 v2, p3, -0x1

    .line 5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    :cond_3
    const/16 v0, 0x33

    .line 6
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .locals 11

    .line 1
    array-length v0, p2

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    move v1, p1

    .line 3
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 4
    aget v2, p2, v1

    .line 5
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    const/16 v4, 0x21

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    .line 6
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 7
    :cond_1
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 8
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 9
    :cond_2
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 10
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 11
    :cond_3
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 12
    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 13
    :cond_4
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 14
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 15
    :cond_5
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 16
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 17
    :cond_6
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 18
    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 19
    :cond_7
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 20
    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 21
    :cond_8
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 22
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 23
    :cond_9
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 24
    new-instance v2, Landroid/text/style/BulletSpan;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, p2, v4

    add-int/2addr v4, v5

    invoke-static {v0, v2, v3, v4}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 25
    :cond_a
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 26
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, p2, v4

    add-int/2addr v4, v5

    const/16 v5, 0x12

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 27
    :cond_b
    iget v3, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v3, v2}, Landroid/content/res/StringBlock;->nativeGetString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "font;"

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, ";height="

    .line 29
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 31
    new-instance v6, Landroid/content/res/StringBlock$Height;

    invoke-direct {v6, v3}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v7, v1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v5

    invoke-static {v0, v6, v3, v7}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    :cond_c
    const-string v3, ";size="

    .line 32
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 34
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v6, v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v7, v1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v6, v3, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    const-string v3, ";fgcolor="

    .line 35
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 36
    invoke-static {v3, v5}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_e
    const-string v3, ";color="

    .line 37
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 38
    invoke-static {v3, v5}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    const-string v3, ";bgcolor="

    .line 39
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 40
    invoke-static {v3, p1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    const-string v3, ";face="

    .line 41
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 42
    new-instance v3, Landroid/text/style/TypefaceSpan;

    invoke-direct {v3, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_11
    const-string v3, "a;"

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, ";href="

    .line 44
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 45
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_12
    const-string v3, "annotation;"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x3b

    .line 48
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    :goto_1
    if-ge v7, v3, :cond_15

    const/16 v8, 0x3d

    .line 49
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-gez v8, :cond_13

    goto :goto_2

    .line 50
    :cond_13
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-gez v9, :cond_14

    move v9, v3

    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 51
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v8, 0x1

    .line 52
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 53
    new-instance v10, Landroid/text/Annotation;

    invoke-direct {v10, v7, v8}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v1, 0x1

    aget v7, p2, v7

    add-int/lit8 v8, v1, 0x2

    aget v8, p2, v8

    add-int/2addr v8, v5

    invoke-virtual {v0, v10, v7, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v7, v9

    goto :goto_1

    :cond_15
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 54
    :cond_16
    new-instance p1, Landroid/text/SpannedString;

    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-nez v0, :cond_2

    const-string v0, "@"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "color"

    const-string v3, "android"

    .line 5
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz p1, :cond_0

    .line 7
    new-instance p0, Landroid/text/style/TextAppearanceSpan;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    move v1, p0

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->getHtmlColor(Ljava/lang/String;)I

    move-result v1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 10
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object p0

    .line 11
    :cond_3
    new-instance p0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object p0
.end method

.method private static native nativeCreate([BII)I
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeGetSize(I)I
.end method

.method private static native nativeGetString(II)Ljava/lang/String;
.end method

.method private static native nativeGetStyle(II)[I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    const/16 p1, 0x3b

    .line 3
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-gez p1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v0}, Landroid/content/res/StringBlock;->nativeDestroy(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 4
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v1, :cond_1

    .line 5
    iget v1, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v1}, Landroid/content/res/StringBlock;->nativeDestroy(I)V

    :cond_1
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 3
    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 7
    monitor-exit p0

    return-object v0

    .line 8
    :cond_1
    iget v0, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v0}, Landroid/content/res/StringBlock;->nativeGetSize(I)I

    move-result v0

    .line 9
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xfa

    if-le v0, v1, :cond_2

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    goto :goto_0

    .line 11
    :cond_2
    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    .line 12
    :cond_3
    :goto_0
    iget v0, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v0, p1}, Landroid/content/res/StringBlock;->nativeGetString(II)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget v1, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v1, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(II)[I

    move-result-object v1

    if-eqz v1, :cond_12

    .line 14
    iget-object v2, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v2, :cond_4

    .line 15
    new-instance v2, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v2}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v2, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    :cond_4
    const/4 v2, 0x0

    .line 16
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_11

    .line 17
    aget v3, v1, v2

    .line 18
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-eq v3, v4, :cond_10

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-eq v3, v4, :cond_10

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-eq v3, v4, :cond_10

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-eq v3, v4, :cond_10

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-eq v3, v4, :cond_10

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-eq v3, v4, :cond_10

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-eq v3, v4, :cond_10

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-eq v3, v4, :cond_10

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-eq v3, v4, :cond_10

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-eq v3, v4, :cond_10

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v4

    if-ne v3, v4, :cond_5

    goto/16 :goto_2

    .line 19
    :cond_5
    iget v4, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v4, v3}, Landroid/content/res/StringBlock;->nativeGetString(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "b"

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 21
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$002(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_6
    const-string v5, "i"

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 23
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$102(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v5, "u"

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 25
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$202(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v5, "tt"

    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 27
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$302(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_9
    const-string v5, "big"

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 29
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$402(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_a
    const-string/jumbo v5, "small"

    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 31
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$502(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_b
    const-string/jumbo v5, "sup"

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 33
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$702(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_c
    const-string/jumbo v5, "sub"

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 35
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$602(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_d
    const-string/jumbo v5, "strike"

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 37
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$802(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_e
    const-string v5, "li"

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 39
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$902(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_f
    const-string v5, "marquee"

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 41
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$1002(Landroid/content/res/StringBlock$StyleIDs;I)I

    :cond_10
    :goto_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_1

    .line 42
    :cond_11
    iget-object v2, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 43
    :cond_12
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_13

    aput-object v0, v1, p1

    goto :goto_3

    .line 44
    :cond_13
    iget-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    :goto_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
