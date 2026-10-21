.class public final Landroid/view/textclassifier/TextClassification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassification$Builder;
    }
.end annotation


# static fields
.field static final EMPTY:Landroid/view/textclassifier/TextClassification;


# instance fields
.field private final mEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/EntityConfidence<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIntent:Landroid/content/Intent;

.field private final mLabel:Ljava/lang/String;

.field private mLogType:I

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mText:Ljava/lang/String;

.field private final mVersionInfo:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/textclassifier/EntityConfidence<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroid/view/textclassifier/TextClassification;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object p3, p0, Landroid/view/textclassifier/TextClassification;->mLabel:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Landroid/view/textclassifier/TextClassification;->mIntent:Landroid/content/Intent;

    .line 7
    iput-object p5, p0, Landroid/view/textclassifier/TextClassification;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 8
    new-instance p1, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {p1, p6}, Landroid/view/textclassifier/EntityConfidence;-><init>(Landroid/view/textclassifier/EntityConfidence;)V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 9
    invoke-virtual {p1}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification;->mEntities:Ljava/util/List;

    .line 10
    iput p7, p0, Landroid/view/textclassifier/TextClassification;->mLogType:I

    .line 11
    iput-object p8, p0, Landroid/view/textclassifier/TextClassification;->mVersionInfo:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;Landroid/view/textclassifier/TextClassification$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroid/view/textclassifier/TextClassification;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/textclassifier/TextClassification;->lambda$createStartActivityOnClickListener$0(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static createStartActivityOnClickListener(Landroid/content/Context;Landroid/content/Intent;)Landroid/view/View$OnClickListener;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/view/textclassifier/d;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, v1}, Landroid/view/textclassifier/d;-><init>(Landroid/content/Context;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private static synthetic lambda$createStartActivityOnClickListener$0(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getConfidenceScore(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public getEntity(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getEntityCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextClassification;->mLogType:I

    return v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mVersionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mLabel:Ljava/lang/String;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mIntent:Landroid/content/Intent;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const-string v1, "TextClassification {text=%s, entities=%s, label=%s, intent=%s}"

    .line 25
    .line 26
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
